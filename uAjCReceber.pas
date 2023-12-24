unit uAjCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, DBGrids, StdCtrls, ActnList, DB, DBCtrls, jpeg, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate, System.Actions,
  Vcl.Grids;

type
  TfAjCReceber = class(TForm)
    DBGrid1: TDBGrid;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    ActionList1: TActionList;
    acConfirmar: TAction;
    acSair: TAction;
    Label2: TLabel;
    edTotal: TEdit;
    edParcelas: TEdit;
    Label4: TLabel;
    edDiferenca: TEdit;
    Label5: TLabel;
    D: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    Label6: TLabel;
    dPgto: TDataSource;
    Image1: TImage;
    lPrazoMed: TLabel;
    U: TZUpdateSQL;
    T: TZQuery;
    qPgto: TZReadOnlyQuery;
    qPgtoID: TIntegerField;
    qPgtoPARCELAS: TIntegerField;
    qPgtoNUMPARC: TIntegerField;
    qPgtoINTERVALO: TIntegerField;
    qPgtoDESCRICAO: TWideStringField;
    qPgtoCREDITO: TWideStringField;
    qPgtoJuros: TFloatField;
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
    Tidnf: TIntegerField;
    qPg_i: TZReadOnlyQuery;
    qPg_iId: TIntegerField;
    qPg_iIDCond: TIntegerField;
    qPg_iPorc: TFloatField;
    qPg_iDias: TIntegerField;
    Tdoc_bx_parcial: TWideStringField;
    Tgerado_boleto: TWideStringField;
    Tidemp: TIntegerField;
    Tsincronizado: TWideStringField;
    Temail_vencidas: TWideStringField;
    Tidretorno: TIntegerField;
    Tbenviando: TWideStringField;
    Tbimpresso: TWideStringField;
    Tnn_sicred: TWideStringField;
    Tbconta: TIntegerField;
    TgeradoBol: TWideStringField;
    TidVendaOriginal: TIntegerField;
    Tusuario_baixa: TIntegerField;
    TidBaixa2: TIntegerField;
    TnParc: TIntegerField;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure XiButton3Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure TAfterPost(DataSet: TDataSet);
    procedure TNewRecord(DataSet: TDataSet);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlteraVenci;
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure TVENCIValidate(Sender: TField);
    procedure qPgtoAfterScroll(DataSet: TDataSet);
  private
    procedure geraPorCondicao;
    procedure geraPorPorcentagem;
    { Private declarations }
  public
    { Public declarations }
    DataNF : TDate;
    Inserindo, tipoalteracao, vIdVenda : String;
    PrazoMedio, ValorTotal,  Diferenca, Parcelado: Real;
    nCusto, IdNF, vidEmpresa : integer;
  end;

var
  fAjCReceber: TfAjCReceber;
  conf_finanCR : String;

implementation

uses uDM;

{$R *.dfm}

procedure TfAjCReceber.acSairExecute(Sender: TObject);
begin
 conf_finanCR := 'N';
 Close;
end;

procedure TfAjCReceber.acConfirmarExecute(Sender: TObject);
var I : Integer;
begin

 if T.IsEmpty then
   begin
    ShowMessage('Voce precisa gerar as parcelas antes');
    exit;
   end
 else
  Begin
   T.First;
   while T.Eof = false do
    begin
     I := T.RecNo;
     T.Edit;
     TTOTAL.Value := TVALOR.Value;
     T.Post;
     T.RecNo := I;
     T.Next;
    end;
    Application.MessageBox('Parcelas Geradas com Sucesso!','Aviso');
    conf_finanCR := 'S';
    Close;
  end;


end;

procedure TfAjCReceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;

fAjCReceber := nil;
end;

procedure TfAjCReceber.FormActivate(Sender: TObject);
begin
 qPgto.Open;
 Parcelado := 0;
 Diferenca := 0;

 edTotal.Text     := FormatFloat('##,###,###,##0.00', ValorTotal);
 edParcelas.Text  := FormatFloat('##,###,###,##0.00', Parcelado);
 edDiferenca.Text := FormatFloat('##,###,###,##0.00', Diferenca);
end;

procedure TfAjCReceber.XiButton3Click(Sender: TObject);
begin
  if dm.qParametrousa_cond_porcentagem.Text = 'S' then
     geraPorPorcentagem
  else
     geraPorCondicao;
end;

procedure TfAjCReceber.geraPorPorcentagem;
var
  Parcelas, I , NumNF, vIdVd: integer;
  ValorTotal, ValorParcelado, vResto : real;
  vIdCliente : string;
begin
  vIdCliente := '';
  Inserindo := 'S';        // PAGAMENTO = CONDICAO_PGTO.ID

  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('Select * From nf where id = '+ IntToStr(IdNF));
  DM.qSelect.Open;

  Parcelas := qPg_i.RecordCount;
  if Parcelas = 0 then Parcelas := 1 ;// a vista parcela = 0 não entra no for

  ValorTotal := DM.qSelect.FIELDBYNAME('T_NF').Value;
  DataNF     := DM.qSelect.FIELDBYNAME('EMISSAO').AsDateTime;
  NumNF      := DM.qSelect.FIELDBYNAME('ID').AsInteger;

  if DM.qSelect.FIELDBYNAME('idprodutor').AsInteger > 0 then
    vIdCliente := 'and idcliente = ' +DM.qSelect.FIELDBYNAME('idprodutor').AsString;


  //Limpa as anteriores
  //ExecSql('delete from creceber where idvenda = ' + inttostr(IdNF)+' and idnf = '+IntToStr(NumNF));
  if vIdVenda <> '' then
  begin
    ExecSql('update [CReceber] set  ex = 1 '+
            ' where baixa = ''N'' '+ vIdCliente +' and tipo = ''V'' and idVenda in ( ' + vIdVenda + ' ) ');   //vIdVenda uNF
    sleep(100);
  end
  else
  begin // quando gerado pela nf
    ExecSql('update [CReceber] set  ex = 1 '+  ' where tipo = ''N'' and baixa = ''N'' '+
             vIdCliente +' and  idnf in ( ' + inttostr(NumNF) + ' ) ');
    sleep(100);
  end;

  if trim(vIdVenda) <> '' then
  begin
    if pos(',', vIdVenda) > 0 then
      vIdVd := strtoIntdef(( Copy(vIdVenda, 1, pos(',', vIdVenda) -1 )), 0 )
    else
      vIdVd := strtoIntdef(vIdVenda, 0);
  end
  else
    vIdVd := NumNF;

  T.Close;
  T.ParamByName('cod').Value := vIdVd;
  T.Open;

  PrazoMedio := 0;

  qPg_i.first;
  for I:=1 to Parcelas do
  begin

   ValorParcelado := strtofloat(formatfloat('#0.00', ValorTotal * qPg_iPorc.asfloat / 100));
   if trim(vIdVenda) = '' then
      vidVenda := 'NFA_'+ inttostr(NumNF);

   T.Insert;
   TDOCUMENTO.Value  := vidVenda +'.'+IntToStr(I)+'/'+IntToStr(Parcelas);
   TnParc.AsInteger := I;
   TidVenda.Value    := vIdVd;
   TIdCliente.Value  := DM.qSelect.FieldByName('IDPRODUTOR').Value;
   TEMISSAO.Value    := Date;
   Tidcondpgto.Value := qPgtoID.Value;

   if Parcelas = I then
     ValorParcelado := ValorTotal - vResto;

   TVALOR.Value      := ValorParcelado;
   TTOTAL.Value      := ValorParcelado;
   TVENCI.Value      := Date + qPg_iDias.asinteger;
   TBAIXA.Value      := 'N';
   TTIPO.Value       := 'N';   //  NF
   TEx.Value         := 0;
   TIDUSUARIO.Value  := DM.qUserId.Value;
   Tidnf.Value       := NumNF;
   T.Post;

   vResto := vResto + ValorParcelado;

   qPg_i.next;
  end;
  Inserindo := 'N';
  TAfterPost(T);

end;


procedure TfAjCReceber.qPgtoAfterScroll(DataSet: TDataSet);
begin
  if dm.qParametrousa_cond_porcentagem.text = 'S' then
  begin
     qPg_i.close;
     qPg_i.ParamByName('id').value := qPgtoID.Value;
     qPg_i.open;
  end;
end;

procedure TfAjCReceber.geraPorCondicao;
var
  Parcelas, Primeira, Demais, I , NumNF, vIdVd: integer;
  ValorTotal, ValorParcelado, vResto : real;
  vIdCliente : string;
begin
  vIdCliente := '';
  Inserindo := 'S';        // PAGAMENTO = CONDICAO_PGTO.ID

  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('Select * From nf where nf = '+ IntToStr(IdNF));
  DM.qSelect.Open;

  Parcelas := qPgtoPARCELAS.Value;
  Primeira := qPgtoNUMPARC.Value;
  Demais   := qPgtoINTERVALO.Value;

  if not qPgto.IsEmpty then
    if Parcelas = 0 then   Parcelas := 1 ;// a vista parcela = 0 não entra no for

  ValorTotal := DM.qSelect.FIELDBYNAME('T_NF').Value;
  DataNF     := DM.qSelect.FIELDBYNAME('EMISSAO').AsDateTime;
  NumNF      := DM.qSelect.FIELDBYNAME('NF').AsInteger;

  ValorParcelado := strtofloat(formatfloat('#0.00', ValorTotal / Parcelas));

  if DM.qSelect.FIELDBYNAME('idprodutor').AsInteger > 0 then
    vIdCliente := 'and idcliente = ' +DM.qSelect.FIELDBYNAME('idprodutor').AsString;


  //Limpa as anteriores
  //ExecSql('delete from creceber where idvenda = ' + inttostr(IdNF)+' and idnf = '+IntToStr(NumNF));
  if vIdVenda <> '' then
  begin
    ExecSql('update [CReceber] set  ex = 1 '+  ' where baixa = ''N'' '+ vIdCliente +' and  tipo = ''V'' and idVenda in ( ' + vIdVenda + ' ) ');   //vIdVenda uNF
    sleep(100);
  end
  else
  begin // quando gerado pela nf
    ExecSql('update [CReceber] set  ex = 1 '+  ' where tipo = ''N'' and baixa = ''N'' '+
             vIdCliente +' and  idnf in ( ' + inttostr(NumNF) + ' ) ');
    sleep(100);
  end;

  if trim(vIdVenda) <> '' then
  begin
    if pos(',', vIdVenda) > 0 then
      vIdVd := strtoIntdef(( Copy(vIdVenda, 1, pos(',', vIdVenda) -1 )), 0 )
    else
      vIdVd := strtoIntdef(vIdVenda, 0);
  end
  else
    vIdVd := NumNF;

  T.Close;
  T.ParamByName('cod').Value := vIdVd;
  T.Open;

  PrazoMedio := 0;

  for I:=1 to Parcelas do
  begin
   if I = 1 then
    PrazoMedio := PrazoMedio + Primeira
   else
    PrazoMedio := PrazoMedio + Demais;

   if trim(vIdVenda) = '' then
      vidVenda := inttostr(NumNF);

   T.Insert;
   TDOCUMENTO.Value  := vIdVenda +'.'+IntToStr(I)+'/'+IntToStr(Parcelas); //IntToStr(DM.qSelect.FieldByName('ID').Value)+'/'+IntToStr(I);
   TnParc.AsInteger := I;
   TidVenda.Value    := vIdVd;//DM.qSelect.FieldByName('ID').Value;
   TIdCliente.Value  := DM.qSelect.FieldByName('IDPRODUTOR').Value;
   TEMISSAO.Value    := Date;
   Tidcondpgto.Value := qPgtoID.Value;

   if Parcelas = I then
     ValorParcelado := ValorTotal - vResto;

   TVALOR.Value      := ValorParcelado;
   TTOTAL.Value      := ValorParcelado;
   if I = 1 then
    TVENCI.Value     := Date + Primeira
   else
    TVENCI.Value     := Date + ((Demais*(I-1))+Primeira);
   TBAIXA.Value      := 'N';
   TTIPO.Value       := 'N';   //  NF
   TEx.Value         := 0;
   TIDUSUARIO.Value  := DM.qUserId.Value;
   Tidnf.Value       := NumNF;
   T.Post;

   vResto := vResto + ValorParcelado;
  end;

   Inserindo := 'N';
   TAfterPost(T);
end;

procedure TfAjCReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not ( ActiveControl is TDBgrid ) then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;
end;

procedure TfAjCReceber.FormCreate(Sender: TObject);
begin
 Inserindo := 'N';

end;

procedure TfAjCReceber.TAfterPost(DataSet: TDataSet);
var I : Integer;

begin
 if Inserindo = 'S' then Exit;

Parcelado := 0;
//PrazoMedio := 0;

 I := T.RecNo;
 T.First;
 while T.Eof = false do
  begin
   Parcelado := Parcelado + TVALOR.Value;
   // PrazoMedio := TVENCI.Value - DataCompra;
   T.Next;
  end;
 T.RecNo          := I;
 Diferenca        := Parcelado - ValorTotal;
 edParcelas.Text  := FormatFloat('##,###,###,##0.00', Parcelado);
 edDiferenca.Text := FormatFloat('##,###,###,##0.00', Diferenca);

end;

procedure TfAjCReceber.TNewRecord(DataSet: TDataSet);
begin
  TID.Value := InsereCodigo('CReceber', 'id');
  Tx.Value  := 'F';
  Tex.Value := 0;
  Temail_vencidas.Value := 'N';
  Tsincronizado.Value   := 'N';
  Tidemp.AsInteger := vidEmpresa;
end;

procedure TfAjCReceber.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((Shift = [ssCtrl]) and (key = vk_delete)) THEN
Abort;
end;


procedure TfAjCReceber.AlteraVenci;
 var dia, mes, ano : Word;
begin

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

end;


procedure TfAjCReceber.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
  begin
   Key := #0;
   if dbgrid1.SelectedIndex = 1 then
      begin
         if TipoAlteracao = 'D' then
            if Application.MessageBox('Deseja alterar demais vencimentos?','Confirmação',MB_YESNO) = IDYES then
              AlteraVenci;
      end;
  end;
end;

procedure TfAjCReceber.TVENCIValidate(Sender: TField);
begin
 TipoAlteracao := 'D';
end;

end.
