unit uAjPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, Grids, DBGrids, StdCtrls, ActnList, DB,
    DBCtrls, jpeg, ExtCtrls,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate, System.Actions;

type
  TfAjCPagar = class(TForm)
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
    TID: TIntegerField;
    TIDFORNECEDOR: TIntegerField;
    TVALOR: TFloatField;
    TVALPAGO: TFloatField;
    TJUROS: TFloatField;
    TEx: TIntegerField;
    TTOTAL: TFloatField;
    TDESCONTO: TFloatField;
    TIDCOMPRA: TIntegerField;
    TIDUSUARIO: TIntegerField;
    qPgto: TZReadOnlyQuery;
    qPgtoID: TIntegerField;
    qPgtoPARCELAS: TIntegerField;
    qPgtoNUMPARC: TIntegerField;
    qPgtoINTERVALO: TIntegerField;
    qPgtoDESCRICAO: TWideStringField;
    qPgtoCREDITO: TWideStringField;
    TDOCUMENTO: TWideStringField;
    TBAIXA: TWideStringField;
    TX: TWideStringField;
    TTIPO: TWideStringField;
    qPgtoJuros: TFloatField;
    TEmissao: TDateTimeField;
    TVenci: TDateTimeField;
    TidBaixa: TIntegerField;
    TDtPagto: TDateTimeField;
    TidSubOP_P: TIntegerField;
    TidOP_M: TIntegerField;
    Tidcondpgto: TIntegerField;
    Tobs: TWideMemoField;
    TValorfpgto: TFloatField;
    TValorfpgto2: TFloatField;
    TFpgto: TWideStringField;
    TFpgto2: TWideStringField;
    Tidcusto: TIntegerField;
    Tidnf: TIntegerField;
    qPg_i: TZReadOnlyQuery;
    qPg_iId: TIntegerField;
    qPg_iIDCond: TIntegerField;
    qPg_iPorc: TFloatField;
    qPg_iDias: TIntegerField;
    Tidemp: TIntegerField;
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
    procedure TVALORChange(Sender: TField);
    procedure TBeforePost(DataSet: TDataSet);
    procedure TVenciSetText(Sender: TField; const Text: string);
  private
    vSoma : boolean;
    procedure SomaVal;
    procedure finanCompras;
    procedure finanNF;
    procedure finanComprasPorc;
    procedure finanNFPorc;
  public
    { Public declarations }
    DataCompra : TDate;
    Inserindo, tipoNF : String;
    tipoalteracao, vIdVenda : string;
    idnf, idforn : integer;
  end;

var
  fAjCPagar: TfAjCPagar;
  PrazoMedio, ValorTotal,  Diferenca, Parcelado, valorNF_ref: Real;
  nCusto, vIdconPg : integer;
  conf_cpagar: String;

implementation

uses uDM, uCompra, uNF, uFuncao;

{$R *.dfm}

procedure TfAjCPagar.SomaVal;
var
  vTot : real;
begin
  vTot := 0;
  vSoma := true;
  T.first;
  while not T.Eof do
  begin
    vTot := vTot +TVALOR.asfloat;
    T.next;
  end;
  //edTotal.Text := FormatFloat('###,###,###,##0.00', vTot);
  vSoma := false;
end;

procedure TfAjCPagar.acSairExecute(Sender: TObject);
begin

 conf_cpagar := 'N';
 Close;
end;

procedure TfAjCPagar.acConfirmarExecute(Sender: TObject);
var I : Integer;
begin

 if T.IsEmpty then
 begin
  application.Messagebox('Por favor, gere as parcelas antes de confirmar.', 'Atenção');
  exit;
 end;

 if strtoFloat(edDiferenca.text) <> 0 then
 begin
  application.Messagebox('Prcelas com diferença. Por favor, verifique!', 'Atenção');
  exit;
 end;

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
 conf_cpagar := 'S';
 Close;


end;

procedure TfAjCPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;

fAjCPagar := nil;
end;

procedure TfAjCPagar.FormActivate(Sender: TObject);
begin
 Parcelado := 0;
 Diferenca := 0;

 edTotal.Text     := FormatFloat('##,###,###,##0.00', ValorTotal);
 edParcelas.Text  := FormatFloat('##,###,###,##0.00', Parcelado);
 edDiferenca.Text := FormatFloat('##,###,###,##0.00', Diferenca);
end;



procedure TfAjCPagar.finanCompras;
var Parcelas, Primeira, Demais, I, nEmp : integer;
    {ValorTotal,} ValorParcelado : real;

begin
     Inserindo := 'S';        // PAGAMENTO = CONDICAO_PGTO.ID

     ExecSQL('UPDATE COMPRA SET idcondpgto = '+qPgtoID.AsString+ ' WHERE ID = '+ inttostr(CodCompra) );

     DM.qSelect.Close;
     DM.qSelect.SQL.Clear;
     DM.qSelect.SQL.Add('Select * From compra where ID = '+ IntToStr(CodCompra));
     DM.qSelect.Open;

     ValorTotal := DM.qSelect.FIELDBYNAME('VALOR').Value -  valorNF_ref;
     DataCompra := DM.qSelect.FIELDBYNAME('data').Value;
     nEmp       := DM.qSelect.FIELDBYNAME('idemp').asinteger;

  Parcelas := qPgtoPARCELAS.Value;
  Primeira := qPgtoNUMPARC.Value;
  Demais   := qPgtoINTERVALO.Value;

 if Parcelas <> 0 then
  ValorParcelado := ValorTotal / Parcelas
 else
  ValorParcelado := ValorTotal;

  //Limpa as anteriores
  ExecSql('update cpagar set ex = 1 where idemp = '+ inttostr(nEmp) +' and tipo = ''C'' and idcompra = ' + inttostr(CodCompra));
  sleep(100);

  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := CodCompra;
  T.Open;

  PrazoMedio := 0;

 for I:=1 to Parcelas do
  begin
   if I = 1 then
    PrazoMedio := PrazoMedio + Primeira
   else
    PrazoMedio := PrazoMedio + Demais;

   T.Insert;
   if nEmp > 1 then
      TDOCUMENTO.Value    := 'NF_'+IntToStr(DM.qSelect.FieldByName('ID').Value)+'/'+IntToStr(I)
   else
      TDOCUMENTO.Value    := IntToStr(DM.qSelect.FieldByName('ID').Value)+'/'+IntToStr(I);

   TIDCOMPRA.Value     := DM.qSelect.FieldByName('ID').Value;
   TIDFORNECEDOR.Value := DM.qSelect.FieldByName('IDFORNECEDOR').Value;
   TEMISSAO.Value      := Date;
   Tidcondpgto.Value   := DM.qSelect.FieldByName('idcondpgto').Value;
   TVALOR.Value        := ValorParcelado;
   TTOTAL.Value        := ValorParcelado;
   if I = 1 then
    TVENCI.Value       := Date + Primeira
   else
    TVENCI.Value       := Date + ((Demais*(I-1))+Primeira);
   TBAIXA.Value        := 'N';
   TTIPO.Value         := 'C';   //  C - Compras
   TEx.Value           := 0;
   TIDUSUARIO.Value    := DM.qUserId.Value;
   Tidcusto.Value      := nCusto;
   Tidemp.Value        := nEmp;
   T.Post;
  end;

  //Atualiza a T para respeitar a ordem
  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := CodCompra;
  T.Open;

   Inserindo := 'N';
   TAfterPost(T);
end;

procedure TfAjCPagar.finanNF;
var Parcelas, Primeira, Demais, I : integer;
    ValorParcelado : real;

begin
  Inserindo := 'S';        // PAGAMENTO = CONDICAO_PGTO.ID
  Parcelas := qPgtoPARCELAS.Value;
  Primeira := qPgtoNUMPARC.Value;
  Demais   := qPgtoINTERVALO.Value;

  if Parcelas <> 0 then
    ValorParcelado := ValorTotal / Parcelas
  else
    ValorParcelado := ValorTotal;

  //Limpa as anteriores
  ExecSql('update cpagar set ex = 1 where tipo = ''C'' and idnf = ' + inttostr(idnf));
  sleep(100);

  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := idnf;
  T.Open;

  PrazoMedio := 0;

  for I:=1 to Parcelas do
  begin
   if I = 1 then
    PrazoMedio := PrazoMedio + Primeira
   else
    PrazoMedio := PrazoMedio + Demais;

   T.Insert;
   TDOCUMENTO.Value    := IntToStr(idnf)+'/'+IntToStr(I);
   TIDCOMPRA.Value     := 0;
   TIDFORNECEDOR.Value := idforn;
   TEMISSAO.Value      := Date;
   Tidcondpgto.Value   := qPgtoID.AsInteger;
   TVALOR.Value        := ValorParcelado;
   TTOTAL.Value        := ValorParcelado;
   if I = 1 then
    TVENCI.Value       := Date + Primeira
   else
    TVENCI.Value       := Date + ((Demais*(I-1))+Primeira);
   TBAIXA.Value        := 'N';
   TTIPO.Value         := 'C';   //  C - Compras
   TEx.Value           := 0;
   TIDUSUARIO.Value    := DM.qUserId.Value;
   Tidcusto.Value      := nCusto;
   Tidnf.Value         := IDNF;
   TidEmp.Value        := dm.qUseridemp.AsInteger;
   T.Post;
  end;

  //Atualiza a T para respeitar a ordem
  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := CodCompra;
  T.Open;

  Inserindo := 'N';
  TAfterPost(T);
end;


procedure TfAjCPagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not ( ActiveControl is TDBgrid ) then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;
end;

procedure TfAjCPagar.qPgtoAfterScroll(DataSet: TDataSet);
begin
  if dm.qParametrousa_cond_porcentagem.text = 'S' then
  begin
     qPg_i.close;
     qPg_i.ParamByName('id').value := qPgtoID.Value;
     qPg_i.open;
  end;

end;

procedure TfAjCPagar.FormCreate(Sender: TObject);
begin
  Inserindo := 'N';
  tipoNF    := 'C';

  qPgto.Open;

  if (vIdconPg > 0) and (qPgto.RecordCount > 0) then
    DBLookupComboBox1.KeyValue := vIdconPg
end;

procedure TfAjCPagar.TAfterPost(DataSet: TDataSet);
var I : Integer;

begin
 if Inserindo = 'S' then Exit;

 Parcelado := 0;
 //PrazoMedio := 0;

 I := T.RecNo;
 T.First;
 while T.Eof = false do
  begin
   Parcelado := Parcelado + Ttotal.Value;
   // PrazoMedio := TVENCI.Value - DataCompra;
   T.Next;
  end;
 T.RecNo          := I;
 Diferenca        := Parcelado - ValorTotal;
 edParcelas.Text  := FormatFloat('##,###,###,##0.00', Parcelado);
 edDiferenca.Text := FormatFloat('##,###,###,##0.00', Diferenca);
 T.ApplyUpdates;


end;

procedure TfAjCPagar.TBeforePost(DataSet: TDataSet);
begin
  TTotal.asFloat := TValor.asFloat;
end;

procedure TfAjCPagar.TNewRecord(DataSet: TDataSet);
begin
  TID.Value := InsereCodigo('cpagar', 'ID');
  Tx.Value  := 'F';
  Tex.Value := 0;
end;

procedure TfAjCPagar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((Shift = [ssCtrl]) and (key = vk_delete)) THEN
Abort;
end;


procedure TfAjCPagar.AlteraVenci;
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


procedure TfAjCPagar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
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

procedure TfAjCPagar.TVALORChange(Sender: TField);
begin
  if (T.state <> dsInsert) and not vSoma then
    SomaVal;
end;

procedure TfAjCPagar.TVenciSetText(Sender: TField; const Text: string);
begin
 if not ( ValidaData(Sender,Text) ) then
  Abort;
end;

procedure TfAjCPagar.TVENCIValidate(Sender: TField);
begin
 TipoAlteracao := 'D';
end;

procedure TfAjCPagar.XiButton3Click(Sender: TObject);
begin
  if tipoNF = 'C' then
  begin
     if dm.qParametrousa_cond_porcentagem.text = 'S' then
       finanComprasPorc
     else
       finanCompras;
  end
  else
  if tipoNF = 'N' then
  begin
     if dm.qParametrousa_cond_porcentagem.text = 'S' then
        finanNFPorc
     else
        finanNF;
  end;
end;


procedure TfAjCPagar.finanComprasPorc;
var Parcelas, I, nEmp : integer;
    {ValorTotal,} ValorParcelado, vResto, pPg : real;

begin
  Inserindo := 'S';        // PAGAMENTO = CONDICAO_PGTO.ID

  ExecSQL('UPDATE COMPRA SET idcondpgto = '+qPgtoID.AsString+ ' WHERE ID = '+ inttostr(CodCompra) );

  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('Select * From compra where ID = '+ IntToStr(CodCompra));
  DM.qSelect.Open;

  nEmp       := DM.qSelect.FIELDBYNAME('idemp').asinteger;
  ValorTotal := DM.qSelect.FIELDBYNAME('total').Value - valorNF_ref;
  DataCompra := DM.qSelect.FIELDBYNAME('data').Value;

  Parcelas := qPg_i.RecordCount;
  if Parcelas = 0 then
     parcelas := 1;

  //Limpa as anteriores
  ExecSql(' update cpagar set ex = 1 where idemp = ' + inttostr(nEmp)   +
          ' and  tipo = ''C'' and idcompra = ' + inttostr(CodCompra));
  sleep(100);

  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := CodCompra;
  T.Open;

  qPg_i.first;
  for I:=1 to Parcelas do
  begin
   pPg := qPg_iPorc.asfloat;
   if pPg = 0.00 then pPg := 1;

   ValorParcelado := strtofloat( formatfloat('#0.00', ValorTotal * pPg / 100 ));

   T.Insert;
   if nEmp > 1 then
      TDOCUMENTO.Value    := 'NF_'+IntToStr(DM.qSelect.FieldByName('ID').Value)+'/'+IntToStr(I)
   else
      TDOCUMENTO.Value    := IntToStr(DM.qSelect.FieldByName('ID').Value)+'/'+IntToStr(I);
   TIDCOMPRA.Value     := DM.qSelect.FieldByName('ID').Value;
   TIDFORNECEDOR.Value := DM.qSelect.FieldByName('IDFORNECEDOR').Value;
   TEMISSAO.Value      := Date;
   Tidcondpgto.Value   := DM.qSelect.FieldByName('idcondpgto').Value;

   if Parcelas = I then
     ValorParcelado := ValorTotal - vResto;

   TVALOR.Value        := ValorParcelado;
   TTOTAL.Value        := ValorParcelado;
   TVENCI.Value        := Date + qPg_iDias.asinteger;
   TBAIXA.Value        := 'N';
   TTIPO.Value         := 'C';   //  C - Compras
   TEx.Value           := 0;
   TIDUSUARIO.Value    := DM.qUserId.Value;
   Tidcusto.Value      := nCusto;
   Tidemp.Value        := nEmp;
   T.Post;

   vResto := vResto + ValorParcelado;
   qPg_i.next;

  end;

  //Atualiza a T para respeitar a ordem
  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := CodCompra;
  T.Open;

   Inserindo := 'N';
   TAfterPost(T);
end;

procedure TfAjCPagar.finanNFPorc;
var Parcelas, I : integer;
    ValorParcelado, vResto : real;

begin
  Inserindo := 'S';        // PAGAMENTO = CONDICAO_PGTO.ID
  Parcelas := qPg_i.RecordCount;

  //Limpa as anteriores
  ExecSql('update cpagar set ex = 1 where tipo = ''C'' and idnf = ' + inttostr(idnf));
  sleep(100);

  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := idnf;
  T.Open;

  qPg_i.first;
  for I:=1 to Parcelas do
  begin

   ValorParcelado := strtofloat( formatfloat('#0.00', ValorTotal * qPg_iPorc.asfloat / 100 ));

   T.Insert;
   TDOCUMENTO.Value    := IntToStr(idnf)+'/'+IntToStr(I);
   TIDCOMPRA.Value     := 0;
   TIDFORNECEDOR.Value := idforn;
   TEMISSAO.Value      := Date;
   Tidcondpgto.Value   := qPgtoID.AsInteger;
   if Parcelas = I then
     ValorParcelado := ValorTotal - vResto;
   TVALOR.Value        := ValorParcelado;
   TTOTAL.Value        := ValorParcelado;
   TVENCI.Value        := Date + qPg_iDias.AsInteger;
   TBAIXA.Value        := 'N';
   TTIPO.Value         := 'C';   //  C - Compras
   TEx.Value           := 0;
   TIDUSUARIO.Value    := DM.qUserId.Value;
   Tidcusto.Value      := nCusto;
   Tidnf.Value         := IDNF;
   TidEmp.Value        := dm.qUseridemp.AsInteger;
   T.Post;
  end;

  //Atualiza a T para respeitar a ordem
  T.Close;
  T.ParamByName('cc').Value  := tipoNF;
  T.ParamByName('cod').Value := CodCompra;
  T.Open;

  Inserindo := 'N';
  TAfterPost(T);
end;


end.
