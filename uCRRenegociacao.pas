unit uCRRenegociacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, Grids, DBGrids, StdCtrls, ActnList, DB,
   jpeg, ExtCtrls, DBCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZSqlUpdate, Mask, System.Actions;

type
  TFCRRenegociacao = class(TForm)
    Label1: TLabel;
    edParc: TEdit;
    DBGrid1: TDBGrid;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    ActionList1: TActionList;
    acConfirmar: TAction;
    acSair: TAction;
    edTotal: TEdit;
    Label4: TLabel;
    D: TDataSource;
    Image1: TImage;
    edSenha: TEdit;
    Label14: TLabel;
    lSenha: TLabel;
    T: TZQuery;
    up: TZUpdateSQL;
    Label7: TLabel;
    edDT: TMaskEdit;
    TId: TIntegerField;
    TEmissao: TDateTimeField;
    TIdCliente: TIntegerField;
    TDocumento: TWideStringField;
    TVenci: TDateTimeField;
    TValor: TFloatField;
    TJuros: TFloatField;
    TDesconto: TFloatField;
    TTotal: TFloatField;
    TBaixa: TWideStringField;
    TidBaixa: TIntegerField;
    TDtPagto: TDateTimeField;
    TValPago: TFloatField;
    TFpgto1: TWideStringField;
    TValor1: TFloatField;
    TFpgto2: TWideStringField;
    TValor2: TFloatField;
    TidVenda: TIntegerField;
    TIdUsuario: TIntegerField;
    TEx: TIntegerField;
    Tx: TWideStringField;
    Tidcondpgto: TIntegerField;
    Tobs: TWideMemoField;
    TTipo: TWideStringField;
    Label2: TLabel;
    edParcela: TEdit;
    edDiferenca: TEdit;
    Label3: TLabel;
    Bevel1: TBevel;
    Tidemp: TIntegerField;
    TidVendaOriginal: TIntegerField;
    Tidnf: TIntegerField;
    cbFormas: TComboBox;
    Label10: TLabel;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure XiButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure TVALORValidate(Sender: TField);
    procedure TVENCIValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure edSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure TNewRecord(DataSet: TDataSet);
    procedure TBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ValorUsado, TotCorr, NovaParc, resto : Real;
    Parc, ParcAlterada : Integer;
    Ajustar, AlterarData, AlterarValor : String;
    txD, txP : String;
    nvEmpresa, vIdVendaReneg, vIdNFOrig : integer;
    Procedure SomarParcelas;
    Procedure AlterarParcelas;
    Procedure AlterarValores;
  end;

var
  FCRRenegociacao: TFCRRenegociacao;
  TotalReneg : Real;
  IdCli : Integer;
  RenegConfirmada : String;
  seqq: integer;

implementation

uses uDM, Math, DateUtils, StrUtils, uFuncao;

{$R *.dfm}

procedure TFCRRenegociacao.acSairExecute(Sender: TObject);
begin
 RenegConfirmada := 'N';
 Close;
end;

procedure TFCRRenegociacao.acConfirmarExecute(Sender: TObject);
begin

 if (TotalReneg - TotCorr) <> 0 then
 begin
    Application.MessageBox('Valor das Parcelas diferem do valor Renegociado, Verifique!','Aviso');
    Exit;
 end;

 RenegConfirmada := 'S';
 if T.State in [dsedit, dsinsert] then
  T.Post;

  T.ApplyUpdates;

 Application.MessageBox('Parcelas Geradas com Sucesso!','Aviso');
 Close;

end;

procedure TFCRRenegociacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;

FCRRenegociacao := nil;
end;

procedure TFCRRenegociacao.FormActivate(Sender: TObject);
begin
 ParcAlterada := 0;
 Ajustar := 'N';
 ValorUsado := TotalReneg;
 edTotal.Text := FormatFloat('##,###,###,##0.00', ValorUsado);
 edDt.Text    := datetostr(Date);
end;

procedure TFCRRenegociacao.XiButton3Click(Sender: TObject);
var ValorParc : Real;
    I : Integer;
    dia, mes, ano : Word;
    dd : TDate;
    sql : String;
begin

 seqq := DM.qParametroSeq_Reneg.asInteger;
 sql := ' delete from creceber where Idcliente = ' + inttostr(idcli) +
        ' and tipo = ''R'' and IdVenda = '+ inttostr(seqq) + ' and substring(documento, 1, 1) = ''R'' ';
 ExecSql( sql );

 if edParc.Text <> '' then
  Parc := StrToInt(edParc.Text)
 else
  Parc := 0;

  if Parc > 0 then
   ValorParc := strtofloat(formatfloat('#0.00', ValorUsado / Parc))
  else
   ValorParc := ValorUsado;

 if edDt.text = '  /  /    ' then
    dd := Date
 else
    dd := strtodate(edDt.Text);

 DecodeDate(dd, ano, mes, dia);

 mes := mes + 1;

 if mes > 12 then
    begin
     mes := mes - 12;
     ano := ano + 1;
    end;

 T.Close;
 T.ParamByName('cod').Value := IdCli;
 T.ParamByName('seq').Value := DM.qParametroSeq_Reneg.Value;
 T.Open;

  ajustar := 'A';
  if not T.IsEmpty then
  begin
   T.First;
   while T.Eof = false do
    begin
     T.Edit;
     TEx.Value := 1;
     T.Post;

     T.Next;
    end;

  T.Close;;
  T.ParamByName('cod').Value := IdCli;
  T.ParamByName('seq').Value := DM.qParametroSeq_Reneg.Value;
  T.Open;

  end;

  resto := 0;
  for I := 1 to Parc do
  begin
   T.Append;
   TDOCUMENTO.Value  := 'R' + IntToStr(IdCli) + '/'+IntToStr(I)+'.'+IntToStr(Parc);
   TIDVenda.Value    := DM.qParametroSeq_Reneg.Value;
   TidVendaOriginal.Value := vIdVendaReneg;
   if vIdNFOrig > 0 then
     Tidnf.AsInteger := vIdNFOrig; // 12/11/20 salvar idnf nos creceber
   TIDCliente.Value  := IdCli;
   TEMISSAO.Value    := Date;
   TidcondPgto.Value := 1;

   if I = Parc then
     ValorParc := ValorUsado - resto;

   TVALOR.Value      := ValorParc;
   TTOTAL.Value      := ValorParc;

   if (dia > 28) and (mes = 2) then
       TVENCI.Value := StrToDate('28/'+IntToStr(mes)+'/'+IntToStr(ano))
   else
   if (dia = 31) and (mes in [4,6,9,11]) then
       TVENCI.Value := StrToDate('30/'+IntToStr(mes)+'/'+IntToStr(ano))
   else
       TVENCI.Value := StrToDate(IntToStr(dia)+'/'+IntToStr(mes)+'/'+IntToStr(ano));

   TBAIXA.Value     := 'N';
   TTIPO.Value      := 'R';
   TEx.Value        := 0;

   if (trim(txD) <> '') or (trim(txP) <> '') then
     if trim(TObs.asString) <> '' then
        Tobs.AsString := trim(TObs.asString) + ' | Renegociação => Doc:['+ txD +'] => Ped:['+txP+']'
     else
        Tobs.AsString := trim(TObs.asString) + 'Renegociação => Doc:['+ txD +'] => Ped:['+txP+']';
   Tidemp.AsInteger := nvEmpresa;
   TFpgto1.asString := cbFormas.text;
   T.Post;

   resto := resto + ValorParc;
   mes := mes + 1;
   if mes > 12 then begin
     mes := mes - 12;
     ano := ano + 1;
   end;

  end;
  ajustar := 'N';
  SomarParcelas;
  edSenha.SetFocus;


end;

procedure TFCRRenegociacao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not ((ActiveControl is TDBGrid) or
                         (ActiveControl = edTotal)  or
                         (ActiveControl = edSenha)) then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;

end;

procedure TFCRRenegociacao.TVALORValidate(Sender: TField);
begin
 AlterarValor := 'S';
end;

procedure TFCRRenegociacao.alterarValores;
 var ValAlterado : Real;
   prc : integer;
begin
    if (T.RecNo = T.RecordCount) and (T.RecordCount = 1) then
    begin
        T.Edit;
        TVALOR.Value := TotalReneg;
        T.Post;
        SomarParcelas;
        exit;
    end;


    if Application.MessageBox('Reajustar Demais Parcelas?','Confirmação', MB_YESNO)= idyes then
    begin
     Ajustar := 'S';

     if (T.RecNo = T.RecordCount) then
        ParcAlterada := T.RecNo - 1
     else
        ParcAlterada := T.RecNo;
     ValAlterado := 0;

     T.First;
     while (T.RecNo <= ParcAlterada) do
     begin
       ValAlterado := ValAlterado + TVALOR.Value;

       T.Next;
       if T.eof then
          Break;
     end;

     if (T.RecordCount - ParcAlterada) > 0 then
       prc := T.RecordCount - ParcAlterada
     else
       prc := 1;

     NovaParc := strtofloat(formatfloat('#0.00', (TotalReneg - ValAlterado) / prc )) ;

     resto := 0;
     //T.Next;
     while T.Eof = false do
      begin
         if T.RecNo = T.RecordCount then
         begin
            NovaParc := TotalReneg - ValAlterado - resto;
            if NovaParc < 0 then
               NovaParc := 0;
         end;

         T.Edit;
         TVALOR.Value := NovaParc;
         T.Post;
         resto :=  resto + NovaParc;
         T.Next;
      end;

     Ajustar := 'N';
     T.Close;;
     T.ParamByName('cod').Value := IdCli;
     T.ParamByName('seq').Value := DM.qParametroSeq_Reneg.Value;
     T.Open;

     SomarParcelas;
     AlterarValor := 'N';

    end;


end;

procedure TFCRRenegociacao.TVENCIValidate(Sender: TField);
begin
AlterarData := 'S';
end;

procedure TFCRRenegociacao.SomarParcelas;
var I : Integer;
begin
 I := T.RecNo;
 TotCorr := 0;

 T.First;
 while T.Eof = false do
  begin
   TotCorr := TotCorr + TVALOR.Value;

   T.Next;
  end;

 T.RecNo := I;

 edParcela.Text    := FormatFloat('#0.00', TotCorr);
 edDiferenca.Text  := FormatFloat('#0.00', TotalReneg - TotCorr);

end;


procedure TFCRRenegociacao.FormCreate(Sender: TObject);
begin
 RenegConfirmada := 'N';
 AlterarData  := 'N';
 AlterarValor := 'N';

 DM.qParametro.Edit;
 DM.qParametroSeq_Reneg.Value := DM.qParametroSeq_Reneg.AsInteger + 1;
 DM.qParametro.Post;

 T.Close;
 T.ParamByName('cod').Value := IdCli;
 T.ParamByName('seq').Value := DM.qParametroSeq_Reneg.Value;
 T.Open;

 FormasComboBox(cbFormas, false);

end;

procedure TFCRRenegociacao.DBGrid1Enter(Sender: TObject);
begin
   AlterarValor := 'N';
   AlterarData  := 'N';

   {if (T.RecNo = T.RecordCount) and not (T.RecordCount = 1) then
    DBGrid1.ReadOnly := True
   else
    DBGrid1.ReadOnly := False;}

end;

procedure TFCRRenegociacao.TAfterScroll(DataSet: TDataSet);
begin
   {if (T.RecNo = T.RecordCount) and not (T.RecordCount = 1) then
    DBGrid1.ReadOnly := True
   else
    DBGrid1.ReadOnly := False;}
end;

procedure TFCRRenegociacao.TBeforePost(DataSet: TDataSet);
begin
  TTOTAL.Value := TVALOR.Value;

end;

procedure TFCRRenegociacao.TNewRecord(DataSet: TDataSet);
begin
   TID.Value          := InsereCodigo('CReceber', 'id');
   TIdUsuario.Value   := dm.qUserId.Value;
   TEx.Value          := 0;
   TBaixa.Value       := 'N';

end;

procedure TFCRRenegociacao.AlterarParcelas;
 var dia, mes, ano : Word;
begin
if Application.MessageBox('Alterar Data das Demais Parcelas?','Confirmação', MB_YESNO)= idno then
  Exit;

  Ajustar := 'S';

  DecodeDate(TVENCI.Value, ano, mes, dia);

  mes := mes + 1;

  if mes > 12 then
   begin
    mes := mes - 12;
    ano := ano + 1;
   end;

     T.Next;
     while T.Eof = false do
      begin
         T.Edit;
         if (dia > 28) and (mes = 2) then
          TVENCI.Value := StrToDate('28/'+IntToStr(mes)+'/'+IntToStr(ano))
         else
         if (dia = 31) and (mes in [4,6,9,11]) then
          TVENCI.Value := StrToDate('30/'+IntToStr(mes)+'/'+IntToStr(ano))
         else
          TVENCI.Value := StrToDate(IntToStr(dia)+'/'+IntToStr(mes)+'/'+IntToStr(ano));
         T.Post;

         mes := mes + 1;

         if mes > 12 then
          begin
           mes := mes - 12;
           ano := ano + 1;
          end;



       T.Next;
      end;

     Ajustar := 'N';

end;

procedure TFCRRenegociacao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
      abort;

  if (key = VK_DOWN) then
     SomarParcelas;



end;

procedure TFCRRenegociacao.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;

    if AlterarData = 'S' then
       AlterarParcelas
    else
    if AlterarValor = 'S' then
       AlterarValores;

  end;
end;

procedure TFCRRenegociacao.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (key = VK_UP) then
     SomarParcelas;

end;

procedure TFCRRenegociacao.edSenhaKeyPress(Sender: TObject; var Key: Char);
 var IdSenha : Integer;
begin
if key = #13 then begin
 if edSenha.Text <> '' then
  begin
   DM.qPesq.Close;
   DM.qPesq.SQL.Clear;
   DM.qPesq.SQL.Add('select id, nome from usuario where senha = '+QuotedStr(edSenha.Text));
   DM.qPesq.Open;

   if DM.qPesq.IsEmpty then
    begin
     Application.MessageBox('Senha Inválida!','Atenção');
     edSenha.Clear;
     edSenha.SetFocus;
    end
   else
    begin
      IdSenha := DM.qPesq.FieldByName('id').Value;
      lSenha.Caption := DM.qPesq.FieldByName('nome').Value;
      acConfirmar.Execute;
      
    end;
  end;
end;


end;

end.
