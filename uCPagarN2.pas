unit uCPagarN2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, CheckDBGrid, System.Actions, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfCPagarN2 = class(TForm)
    Image1: TImage;
    EdTotal: TEdit;
    EdValTot: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label1: TLabel;
    EdCod: TEdit;
    EdNom: TEdit;
    ckTodas: TCheckBox;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape2: TShape;
    DBGrid1: TCheckDBGrid;
    ActionList1: TActionList;
    acNovo: TAction;
    Excluir: TAction;
    Baixa: TAction;
    sair: TAction;
    acCompras: TAction;
    XiButton5: TXiButton;
    acEditar: TAction;
    XiButton6: TXiButton;
    Shape3: TShape;
    Label7: TLabel;
    Label8: TLabel;
    cbEmp: TComboBox;
    btnBxParcial: TXiButton;
    acbxParcial: TAction;
    T: TZQuery;
    upT: TZUpdateSQL;
    D: TDataSource;
    TId: TIntegerField;
    TEmissao: TDateTimeField;
    TIdFornecedor: TIntegerField;
    TDocumento: TWideStringField;
    TVenci: TDateTimeField;
    TValor: TFloatField;
    TBaixa: TWideStringField;
    TidBaixa: TIntegerField;
    TDtPagto: TDateTimeField;
    TValPago: TFloatField;
    TidSubOP_P: TIntegerField;
    TIdUsuario: TIntegerField;
    TEx: TIntegerField;
    TidOP_M: TIntegerField;
    TValorfpgto: TFloatField;
    TValorfpgto2: TFloatField;
    Tidcondpgto: TIntegerField;
    Tobs: TWideMemoField;
    TTipo: TWideStringField;
    Tx: TWideStringField;
    TIdCompra: TIntegerField;
    TFpgto: TWideStringField;
    TFpgto2: TWideStringField;
    Tjuros: TFloatField;
    Tdesconto: TFloatField;
    Ttotal: TFloatField;
    Tidcusto: TIntegerField;
    Tidnf: TIntegerField;
    Tidemp: TIntegerField;
    Tped_nota: TIntegerField;
    Tdoc_bx_parcial: TWideStringField;
    Tvalorfixo: TFloatField;
    Tdescricao: TWideStringField;
    Tfantasia: TWideStringField;
    Tnumnota: TIntegerField;
    TtipoFinan: TWideStringField;
    procedure acNovoExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure BaixaExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ckTodasClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure acComprasExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure acbxParcialExecute(Sender: TObject);
    procedure TAfterPost(DataSet: TDataSet);
    procedure TValorValidate(Sender: TField);
    procedure TjurosValidate(Sender: TField);
    procedure TdescontoValidate(Sender: TField);
    procedure FormShow(Sender: TObject);
  private
    vDocsB : string;
    SN, SP : real;
    procedure somaselecao;
    procedure BaixaNegativa;
    function verificaMesmaEmpresa: boolean;
    { Private declarations }
  public
    { Public declarations }
    tpFin : String;
    TotalBaixa : Real;
    MenorVenci : TDate;
    procedure ativaQ;
    Procedure Seleciona;
    Procedure Total;
  end;

var
  fCPagarN2: TfCPagarN2;
  TotCli, TotalBaixaParcial : real;
  Codcli, NomCli : String;
  IdPagamentos : Integer;
  //NovoCPag : Integer;
  nDocuBx   : String;

implementation

uses uDM, uBaixa, uFuncao, uValoresPagar  , uSenhaCad, uNovoCPagar2, uCompra,
  uNovoCPagar, uBxParcial, uRenegociacaoPg;

{$R *.dfm}

procedure TfCPagarN2.BaixaNegativa;
var
  gerado, idseq : String;
begin
   gerado := 'N';
   T.First;
   while T.Eof = false do
   begin
     if TX.Text = 'T' then
     begin
        if (TTotal.AsFloat >= 0) or
           ( (TTotal.AsFloat < 0) and ((TTotal.AsFloat*(-1)) <= (TotalBaixa*(-1)) ) ) then
        begin
           T.Edit;
           TBaixa.Value     := 'S';
           TDtPagto.Value   := date;
           TValPago.AsFloat := TTotal.AsFloat;
           T.Post;
        end
        else
        if (TTotal.AsFloat < 0) and ((TTotal.AsFloat*(-1)) > (TotalBaixa*(-1)) ) then
        begin
           T.Edit;
           TBaixa.Value     := 'S';
           TDtPagto.Value   := date;
           TValPago.AsFloat := TTotal.AsFloat;
           T.Post;
              // gera novo
           if (gerado = 'N') and (TotalBaixa <> 0) then
           begin
             DM.qCPagar.Open;
             DM.qCPagar.Insert;
             DM.qCPagarDOCUMENTO.Value    := 'CR_ '+TDocumento.AsString;
             DM.qCPagarIdFornecedor.Value := TIdFornecedor.value;
             DM.qCPagarEMISSAO.Value      := Date;
             DM.qCPagarIDCompra.Value     := TIdCompra.Value;;
             DM.qCPagarIDUsuario.Value    := dm.qUserId.Value;
             DM.qCPagarTipo.Value         := TTipo.Value;
             DM.qCPagartipoFinan.Value    := TtipoFinan.Value;
             DM.qCPagaridcusto.Value      := Tidcusto.Value;
             if dm.qParametrogerar_cred_emp_origem.Text = 'S' then //brubalar
               dm.qCPagaridemp.Value      := Tidemp.AsInteger
             else
               dm.qCPagaridemp.Value      := 1;
             DM.qCPagarped_nota.Value   := Tped_nota.AsInteger;
             DM.qCPagarVALOR.Value      := TotalBaixa;
             DM.qCPagartotal.Value      := TotalBaixa;
             DM.qCPagarVENCI.Value      := date;
             dm.qCPagar.Post;
             idseq := dm.qCPagarId.Text;
             dm.qCPagar.Close;
             gerado := 'S';
           end;
        end;

     end;
     T.Next;

   end;

   if gerado = 'S' then
      Application.MessageBox('Baixado e gerado crédito da diferença com sucesso!','Atenção')
   else
      Application.MessageBox('Baixado crédito com sucesso!','Atenção');

   AtivaQ;

   TotalBaixa        := 0;
   TotalBaixaParcial := 0;
   EdTotal.Clear;

   TOTAL;
end;

procedure TfCPagarN2.acNovoExecute(Sender: TObject);
var
  nTp : String;
begin

   Application.CreateForm(TfNovoCPagar2, fNovoCPagar2);
   if edCod.Text <> '' then
   begin
      IdForNovo := strtoint(edCod.text);
      nTp       := tpFin;//TtipoFinan.Text;
   end
   else
      exit;

   if nTp = 'F' then
     fNovoCPagar2.ckFor.Checked := true
   else
   if nTp = 'T' then
     fNovoCPagar2.ckTra.Checked := true;

   fNovoCPagar2.T.Close;
   fNovoCPagar2.T.ParamByName('Cli').Value := IdForNovo;
   fNovoCPagar2.T.ParamByName('cod').Value := 9999999;
   fNovoCPagar2.T.ParamByName('tp').Value  := nTp;
   fNovoCPagar2.T.Open;

   fNovoCPagar2.EdCod.Enabled := false;
   fNovoCPagar2.EdNom.Enabled := false;
   fNovoCPagar2.ckfor.Enabled := false;
   fNovoCPagar2.ckTra.Enabled := false;

   fNovoCPagar2.ShowModal;
   fNovoCPagar2.Free;

   ativaQ;
   somaSelecao;
   Total; //Nilton 19/03/2022


end;

procedure TfCPagarN2.ExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma cancelamento?','Confirmação',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idno then
     exit;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then begin
     Exit;
  end;

if T.Active then
 begin
  if (TTIPO.Value <> 'C') then
   begin
    GravaLogFinan(IdUsuario, Tid.Value, TIdFornecedor.asInteger, 'Contas a Pagar', 'CANCELAR', 'Cancelar lançamento', tpFin);
    ExecSQL('update cpagar set ex = 1 where id = '+ IntToStr(TID.Value));
    T.ApplyUpdates;
    ativaQ;
    Total;
   end
  else
   Application.MessageBox('Conta gerada de compra. Não é possível cancelar!','Aviso');
 end
else
 begin
  Application.MessageBox('Não há contas para excluir! Escolha um fornecedor!','Aviso');
  EdCod.SetFocus;
 end;


end;

function TfCPagarN2.verificaMesmaEmpresa:boolean;
var
  empi:integer;
begin
 empi := 0;
 T.first;
 sP := 0;  SN := 0;
 while T.Eof = false do
 begin
    if TX.Text = 'T' then
    begin
       if empi = 0 then
       begin
          vIdEm := Tidemp.asinteger;
          empi := Tidemp.AsInteger;
       end;

       if empi <> Tidemp.AsInteger then
          empi := -1;

        if TTotal.AsFloat > 0 then
          sP := Sp +  TTotal.AsFloat
       else
       if TTotal.AsFloat < 0 then
          sN := SN +  TTotal.AsFloat;
    end;
    T.Next;
 end;

 if empi = -1 then
 begin
    Application.MessageBox('Por favor, selecione EMPRESAS iguais para continuar.', 'Atenção', 48);
    Result := false;
    Exit;
 end;

 Result := true;

end;

procedure TfCPagarN2.BaixaExecute(Sender: TObject);
begin
  if verificaMesmaEmpresa = false then
    Exit;

//  vIdEm := Tidemp.asinteger;
  vIdcC := Tidcusto.asinteger;
                        // quando valor positivo e igual ao negativo
  if (((sP > 0) and (sN < 0)) and ((sP = (sN * (-1))) or (TotalBaixa < 0) ))  then  //alimenta a variavel no verificamesmaempresa
  begin
    if (dm.qParametronao_baixar_negativo.Text = 'S') then
    begin
      Application.messageBox('Baixa não permitida.', 'Atenção' );
      exit;
    end;
    baixaNegativa;
    exit;
  end;

 if TotalBaixa <> 0 then
 begin
   Application.CreateForm(TfBaixa, fBaixa);
   cCodCompra := TIDCOMPRA.Value;
   dm.Cx.Open;
   dm.Cx.Insert;
   DM.CxData.Value := now; //Date;
   DM.CxTpMov.Value := 'Z';
   DM.CxIdUsuario.Value := dm.qUserId.Value;
   DM.CxIdMov.Value := TID.Value;
   DM.CxDescri.Value := 'PAGAMENTO DE FORNECEDOR';
   DM.CxValor.Value  := TotalBaixa ;
   DM.CxTotal.Value  := TotalBaixa;
   DM.CxDesconto.Value  := 0;
   DM.Cxjuros.Value     := 0;

   origem  := 'B';
   cCodCli :=  TIdFornecedor.AsInteger;
   vTpFin := tpFin;

   fbaixa.ValorPago := totalbaixa;
   fBaixa.vDocsbaixa := vDocsB;
   fBaixa.ShowModal;
   fBaixa.Free;
   if conf_bx = 'N' then
   begin
      //if NovoCPag > 0 then
      //   ExecSql('update cpagar set ex = 1 where id = ' + inttostr(NovoCPag) );

      ExecSql('delete from chemitido where idthr050 = ' + DM.CxId.Text );

      if idcheqTerc <> '' then
      Begin
         ExecSql('delete from repasse where idcheque in ('+ idcheqTerc +') ');
         ExecSQl('update cheques set idthr050 = 0,  st = 0 where id in ('+ idcheqTerc +') ');
         idcheqTerc := '';
      End;
   end;

   if DM.Cx.State in [dsEdit, dsInsert] then
      DM.Cx.Cancel;


   ativaQ;
   Total; //Nilton 19/03/2022
    {
   // Recalcular Valor Total a Receber do Cliente
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select SUM(total) AS TOT  '+
           'from cpagar '+
           'where tipofinan = '+QuotedStr(tpFin) +' and  idfornecedor = '+trim(EdCod.Text)+' and baixa = '+QuotedStr('N')+' and ex = 0  ');
   DM.qSelect.Open;
   EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);
   TotalBaixa := 0;
   EdTotal.Clear;  }

 end
else
 Application.MessageBox('Não há conta selecionada para baixar!','Aviso');


end;

procedure TfCPagarN2.sairExecute(Sender: TObject);
begin
  if tpfin = 'T' then
    execSQL('update TRANSPORTADORA set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text)
  else
    execSQL('update fornecedor set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text);

  close;
end;

procedure TfCPagarN2.Seleciona;
var Cod : integer;
begin
  Cod := T.fieldbyname('ID').AsInteger;
  ativaQ;
  somaSelecao;
  Total;   //Nilton 19/03/2022
  T.Locate('ID', Cod , []);
  {
  // Somar valor total de debito do cliente
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('select SUM(total) AS TOT  from cpagar '+
       ' where tipofinan = '+QuotedStr(tpFin) +' and  idfornecedor = '+trim(EdCod.Text)+' and baixa = '+QuotedStr('N')+
       ' and ex = 0 ');
  DM.qSelect.Open;
  EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat); }

end;

procedure TfCPagarN2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
 var Cod : integer;
begin  {
if (Key = #13) or (key = #32) then
 if key = #13 then begin
    if Tx.Value = 'T' then begin
       Application.CreateForm(TfValoresPagar, fValoresPagar);
       fValoresPagar.ShowModal;
       fValoresPagar.Free;
    end;
 end;

 Seleciona; }







end;

procedure TfCPagarN2.TAfterPost(DataSet: TDataSet);
begin
 T.ApplyUpdates;
end;

procedure TfCPagarN2.TdescontoValidate(Sender: TField);
begin
Ttotal.AsFloat := TValor.AsFloat + Tjuros.AsFloat - Tdesconto.AsFloat;
end;

procedure TfCPagarN2.TjurosValidate(Sender: TField);
begin
Ttotal.AsFloat := TValor.AsFloat + Tjuros.AsFloat - Tdesconto.AsFloat;
end;

procedure TfCPagarN2.Total;
begin

  dbgrid1.DataSource := nil;
  T.First;
  TotCli := 0;
  while T.Eof = False do
   begin
    TotCli := TotCli + TTOTAL.AsFloat;
    T.Next;
   end;
 T.First;
 dbgrid1.DataSource := D;

 EdValTot.Text := FormatFloat('##,###,###,##0.00', TotCli);

end;

procedure TfCPagarN2.TValorValidate(Sender: TField);
begin
 Ttotal.AsFloat := TValor.AsFloat + Tjuros.AsFloat - Tdesconto.AsFloat;
end;

procedure TfCPagarN2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if T.State in [dsedit] then
  T.Post;

 T.Close;

 Action := caFree;
 fCPagarN2 := nil;
end;

procedure TfCPagarN2.FormCreate(Sender: TObject);
begin
   EmpresaComboZero( cbEmp );
   idcheqTerc := '';


end;

procedure TfCPagarN2.FormShow(Sender: TObject);
begin
// ativaQ;
// somaSelecao;

end;

procedure TfCPagarN2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (TVENCI.Value < Date) and
    (column.FieldName = 'Venci')   then
  begin
   DBGrid1.Canvas.Brush.Color := $00B5FBF5;
  end;

 if (TVENCI.Value < Date) and
    (column.FieldName = 'Valor')   then
  begin
   DBGrid1.Canvas.Brush.Color := $00B5FBF5;
  end;

 if (TTipo.Value = 'D') and
    (POS( TObs.text, 'DESPESA FIXA') > 0)  and
    (column.FieldName = 'Venci') and
    (TValor.Value = TValor.Value) then
  begin
   DBGrid1.Canvas.Brush.Color := $009D9DFF;
  end;

 if (TTipo.Value = 'D') and
    (POS( TObs.text, 'DESPESA FIXA') > 0)  and
    (column.FieldName = 'Valor')  and
    (TValor.Value = TValor.Value) then
  begin
   DBGrid1.Canvas.Brush.Color := $009D9DFF;
  end;


 if TX.Value = 'T'  then
  DBGrid1.Canvas.Brush.Color := $00D8FFB0; //verde     // $009D9DFF; Vermelho


 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);


 //Cor campos em edição $00C8F9FD
end;

procedure TfCPagarN2.cbEmpClick(Sender: TObject);
begin
   ativaQ;
end;

procedure TfCPagarN2.ckTodasClick(Sender: TObject);
var tp:String;

begin
  if ckTodas.Checked then
     tp := 'T' else tp := 'F';

  dbgrid1.DataSource := nil;
  T.First;
  while T.Eof = False do
  begin
     T.Edit;
     TX.Value := tp;
     T.Post;
     T.Next;
  END;
  dbgrid1.DataSource := D;

  ativaQ;

  somaSelecao;

end;



procedure TfCPagarN2.DBGrid1CellClick(Column: TColumn);
var Cod : Integer;
begin
 if DBGrid1.SelectedIndex = 7 then
  begin
    Cod := TID.Value;
    somaselecao;
    T.Locate('id', Cod , []);
  end;


end;

procedure TfCPagarN2.acbxParcialExecute(Sender: TObject);
 var NovoValor, testeValor : Real;
     CodRec, vNumNota, vIdEmp, nReg : Integer;
     txDoc, txPed : String;
begin

  if verificaMesmaEmpresa = false then
     Exit;


  T.First;
  nReg := 0;
  MenorVenci := DAte+365;
  while T.Eof = False do begin
    if TX.Value =  'T' then
    begin
       nReg    := nReg + 1;
       CodRec  := TIdCompra.AsInteger;
       vNumNota := Tnumnota.AsInteger;
       vIdEmp := Tidemp.AsInteger;

       txDoc   := txDoc + trim(TDocumento.Text) + ',' ;
       txPed   := txPed + trim(TIdCompra.Text) + ',' ;
       if Tvenci.value < menorVenci then
       begin
          MenorVenci := TVenci.value;
       end;
    end;
    T.Next;
  end;
  if copy(txDoc, Length(txDoc), 1) = ',' then
     txDoc := copy(txDoc, 1, Length(txDoc) - 1);
  if copy(txPed, Length(txPed), 1) = ',' then
     txPed := copy(txPed, 1, Length(txPed) - 1);


  Application.CreateForm(TfBxParcial, fBxParcial);
  fBxParcial.ShowModal;
  fBxParcial.Free;

  if ConfirmadoBP = 'N' then
  begin
    ExecSql(' update cpagar set x = ''F'' where x = ''T'' ');

    ativaQ;
    somaselecao;
    total;

    Exit;
  end;

  if TotalBaixa > ValorBaixado then
  begin
     DM.qCPagar.Open;
     NovoValor := TotalBaixa - ValorBaixado;

     DM.qCPagar.Insert;
     DM.qCPagarDOCUMENTO.Value    := 'BP '+IntToStr(CodRec);
     DM.qCPagarIdFornecedor.Value := TIdFornecedor.value;
     DM.qCPagarEMISSAO.Value      := Date;
     DM.qCPagarIDCompra.Value     := CodRec;
     DM.qCPagarIDUsuario.Value    := dm.qUserId.Value;
     DM.qCPagarTipo.Value         := TTipo.Value;
     DM.qCPagartipoFinan.Value    := TtipoFinan.Value;
     DM.qCPagaridcusto.Value      := Tidcusto.Value;
     DM.qCPagaridemp.Value        := vIdEmp;
     DM.qCPagarped_nota.Value      := vNumNota;

     nDocuBx := trim('BP '+IntToStr(CodRec));

     DM.qCPagarVALOR.Value      := NovoValor;
     DM.qCPagarVENCI.Value      := MenorVenci;

     if (trim(txDoc) <> '') or (trim(txPed) <> '') then
       if trim(dm.qCPagarObs.asString) <> '' then
           DM.qCPagarobs.AsString := trim(DM.qCPagarObs.asString) + ' | Baixa Parcial => Doc:['+ txDoc +'] => Compra:['+txPed+']'
       else
           DM.qCPagarobs.AsString := trim(DM.qCPagarObs.asString) + 'Baixa Parcial => Doc:['+ txDoc +'] => Compra:['+txPed+']';

     //novoCPag := Dm.qCPagarId.Value;

     Application.CreateForm(TfRenegociacaoPg, fRenegociacaoPg);
     ConfirmadoRNpg := 'S';

     fRenegociacaoPg.ShowModal;
     fRenegociacaoPg.Free;

     if confirmadoRNpg = 'N' then
     begin
        DM.qCPagar.Cancel;
        DM.qCPagar.ApplyUpdates;

        TotalBaixaParcial := 0;
        TotalBaixa        := 0;
        ckTodas.Checked := false;
        ckTodasClick(Application);
     end
     else
     begin
       T.First;
       while T.Eof = false do
       begin
         if TX.Value = 'T' then
         begin
           T.edit;
           Tdoc_bx_parcial.Value := nDocuBx;
           T.post;
        end;
        T.Next;
       end;

       TotalBaixaParcial := TotalBaixa;
       TotalBaixa        := ValorBaixado;
       BxParcialPg       := 'S';
       if ConfirmadoRNPg = 'S' then
          Baixa.Execute;
     end;
  end
  else
      Application.MessageBox('Valor da baixa parcial não pode ser maior que o selecionado!', 'Atenção');
end;

procedure TfCPagarN2.acComprasExecute(Sender: TObject);
begin
  if (TTIPO.Value = 'C') and (TIDCOMPRA.AsInteger > 0) then
   fCompra.Imprimir(TIDCOMPRA.AsInteger)
  else
   ShowMessage('Este Lançamento não foi gerado pelo Compras ');
end;

procedure TfCPagarN2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

  Key := NaoInsereDBGrid( TDBGrid(Sender), TDBGrid(Sender).DataSource.DataSet, Key );
end;

procedure TfCPagarN2.acEditarExecute(Sender: TObject);
begin

if EdCod.Text = '' then
 begin
  Application.MessageBox('Fornecedor não preenchido!','Atenção');
  EdCod.SetFocus;
 end
else
 begin
  T.Edit;
  {
  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if IdUsuario = 0 then Exit;
  }
  GravaLogFinan(dm.qUserID.Value, Tid.Value, TIdFornecedor.asInteger, 'Contas a Pagar', 'EDITAR', 'Editar lançamento', tpFin);
  Application.CreateForm(TfNovoCPagar, fNovoCPagar);
  // fNovoCPagar.cbcusto.Enabled := False;
  fNovoCPagar.DBEdit3.Enabled := False;
  // fNovoCPagar.DBMemo1.Enabled := False;

  fNovoCPagar.ShowModal;
  fNovoCPagar.Free;

  ativaQ;
  somaSelecao;
  Total; //Nilton 19/03/2022

 end;

end;

procedure TfCPagarN2.ativaQ;
begin
  T.Close;
  T.ParamByName('bx').Value  := 'N';
  T.ParamByName('cli').Value := trim(edCod.text);
  T.ParamByName('emp').Value := cbEmp.ItemIndex;
  T.ParamByName('tp').Value  := tpFin;
  T.Open;

  if T.RecordCount = 0 then
    dbgrid1.enabled := false
  else
    dbgrid1.enabled := true;
end;


procedure TfCPagarN2.somaselecao;
begin
  vDocsB := '';
  TotalBaixa := 0;
  dbgrid1.DataSource := nil;
  T.First;
  while T.Eof = False do
   begin
       if TX.Value =  'T' then
       begin
          TotalBaixa := TotalBaixa + TTOTAL.AsFloat;
          vDocsB := vDocsB + ' ' +TDocumento.AsString
       end;
       T.Next;
   end;
   dbgrid1.DataSource := D;
   Dbgrid1.Refresh;
   EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);


end;


end.
