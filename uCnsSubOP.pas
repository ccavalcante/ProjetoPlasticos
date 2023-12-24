unit uCnsSubOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, jpeg, ExtCtrls,
  ImgList, ComCtrls, XiButton, Mask, Grids, DBGrids, Buttons, ActnList, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Actions, CheckDBGrid;

type
  TfCnsSubOP = class(TForm)
    XiButton1: TXiButton;
    Label1: TLabel;
    ActionListEx: TActionList;
    XiButton4: TXiButton;
    acFechar: TAction;
    Image3: TImage;
    XiButton3: TXiButton;
    cbStatus: TComboBox;
    acIniciar: TAction;
    acLancar: TAction;
    acImprimir: TAction;
    CheckDBGrid2: TCheckDBGrid;
    Label6: TLabel;
    edSemi: TEdit;
    Label7: TLabel;
    qSub: TZQuery;
    dSub: TDataSource;
    qSubId: TIntegerField;
    qSubIdProcesso: TIntegerField;
    qSubdesc_SA: TWideStringField;
    qSubdesc_PR: TWideStringField;
    Shape1: TShape;
    Shape2: TShape;
    Label8: TLabel;
    Label9: TLabel;
    Shape3: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Shape4: TShape;
    Shape5: TShape;
    Label12: TLabel;
    qSubquantidade: TFloatField;
    qSubEnviada: TFloatField;
    qSubProduzida: TFloatField;
    qSubSALDO: TFloatField;
    qSub2: TZQuery;
    Label4: TLabel;
    edOP: TEdit;
    qSubdesUltimo: TWideStringField;
    XiButton2: TXiButton;
    qSubIdProduto: TIntegerField;
    qSubData: TDateTimeField;
    qSubhora: TWideStringField;
    qSubIdUsuario: TIntegerField;
    qSubObs: TWideStringField;
    qSubStatusOp: TWideStringField;
    qSubtipo: TWideStringField;
    qSubidOpP: TIntegerField;
    qSub2StatusOp: TWideStringField;
    qSubordem: TIntegerField;
    qSubdepende: TWideStringField;
    qSubstatusOk: TWideStringField;
    qProc2: TZQuery;
    qProc2Id: TIntegerField;
    qProc2Descricao: TWideStringField;
    dProc2: TDataSource;
    lkPro: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure acIniciarExecute(Sender: TObject);
    procedure acLancarExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure AtivaSubOP;
    procedure cbStatusClick(Sender: TObject);
    procedure edSemiChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edOPChange(Sender: TObject);
    procedure CheckDBGrid2TitleClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure lkProClick(Sender: TObject);
    procedure qSubAfterScroll(DataSet: TDataSet);
  private
    FUNCTION VerificaAnterior(pIdsub, pIdSA, pOrdem :integer) : boolean;
    procedure verificaStatusSub(ptipo : string; pIdsub:integer);
  public
    { Public declarations }
    vTpOrdem : string;
  end;

var
  fCnsSubOP: TfCnsSubOP;
  procedure ImprimirRomaneio(cod:integer);

implementation

uses uDM, uFuncao, uIniciaProducao, uLancaProducao, uImpOp;

{$R *.dfm}
procedure TfCnsSubOP.verificaStatusSub(ptipo : string; pIdsub:integer);
var
  vAltera : boolean;
begin
  vAltera := true;
  if Dm.ConsultaIdLocal('select idprocesso from processo_sa where IdSemiAcabado  = ' + qSubIdProduto.asstring +
                          ' and idprocesso not in (select idprocesso from subop_producao ' +
                          ' where idsubop = '+inttostr(pIdsub)+')')= '' then //pode não ter todos os processos lançados ainda;
    if ptipo = 'I' then
    begin
      if qSubstatusop.asstring <> 'INICIADA' then
        Execsql(' update op set statusop = ''INICIADA'' where id = ' + inttostr(pIdsub) +
                ' And idProduto= ' + qSubidproduto.asstring );   //mudo status da op, senão ainda fica no anterior


    end
    else
    begin
     if Dm.ConsultaIdLocal(' select id from subop_producao where IdSubOP = ' + inttostr(pIdsub) + ' and statusp in( ''PARCIALMENTE PRODUZIDA'' , ''INICIADA'' )' ) = '' then
       Execsql(' update op set statusop = ''PRODUÇÃO FINALIZADA'' where id = ' + inttostr(pIdsub) +
               ' And idProduto= ' + qSubidproduto.asstring );   //mudo status da op, senão ainda fica no anterior
    end;
end;

function TfCnsSubOP.VerificaAnterior(pIdsub, pIdSA, pOrdem :integer): boolean;
var
  vDepende : boolean;
begin
  vDepende := true;
  if Dm.ConsultaIdLocal(' select sp.statusp from processo_sa pa ' +
                        ' inner join subop_producao sp on sp.idProcesso = pa.IdProcesso ' +
                        ' where  pa.IdSemiAcabado = ' +inttostr(pIdSA) + ' and sp.IdSubOP = ' +
                        inttostr(pIdsub) + ' and pa.Ordem < ' + inttostr(pOrdem) ) = 'PRODUÇÃO FINALIZADA' then
    vDepende := false;

  result := vDepende;
end;

procedure TfCnsSubOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fCnsSubOP := nil;
end;

procedure TfCnsSubOP.FormCreate(Sender: TObject);
begin
 qProc2.Close;
 qProc2.Open;

 lkPro.KeyValue := qProc2Id.Value;


   AtivaSubOP;
end;

procedure TfCnsSubOP.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and not (ActiveControl is TDBGrid) THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;

end;

procedure TfCnsSubOP.lkProClick(Sender: TObject);
begin
 AtivaSubOP;
end;

procedure TfCnsSubOP.qSubAfterScroll(DataSet: TDataSet);
begin

  if (qSubstatusOk.Text = 'PRODUÇÃO FINALIZADA') OR
     (qSubStatusOp.Text = 'CANCELADA') or
     (qSubquantidade.AsFloat <= qSubEnviada.AsFloat) then
   acIniciar.Enabled := false
  else
   acIniciar.Enabled := true;


end;

procedure TfCnsSubOP.acIniciarExecute(Sender: TObject);
begin
  if qSub.IsEmpty then
     Exit;

  if (qSubstatusOk.Text = 'PRODUÇÃO FINALIZADA') OR (qSubStatusOp.Text = 'CANCELADA') then
     Exit;


  if qSubdepende.asstring = 'Sim' then
    if VerificaAnterior(qSubId.asinteger, qSubIdProduto.asinteger, qSubordem.asinteger) then
    begin
      Application.MessageBox('Processo depende do anterior finalizado','Atenção');
      exit;
    end;

  Application.CreateForm(TfIniciaProducao, fIniciaProducao);

  fIniciaProducao.qSubP.Close;
  fIniciaProducao.qSubP.ParamByName('id').asinteger    := qSubId.asinteger;
  fIniciaProducao.qSubP.ParamByName('idPro').asinteger := qSubIdProcesso.asinteger;
  fIniciaProducao.qSubP.open;

  fIniciaProducao.ShowModal;
  fIniciaProducao.Free;

  verificaStatusSub('I', qSubId.asinteger );

  ativaSubOp;
end;


procedure TfCnsSubOP.acFecharExecute(Sender: TObject);
begin
  close;

end;

procedure TfCnsSubOP.acImprimirExecute(Sender: TObject);
begin
  if qSub.IsEmpty then
     Exit;

  if (qSubStatusOp.Text = 'PRODUÇÃO FINALIZADA') OR (qSubStatusOp.Text = 'CANCELADA') then
     Exit;

  ImprimirRomaneio(qSubId.AsInteger);

end;

procedure TfCnsSubOP.acLancarExecute(Sender: TObject);
var
  nF, nR : integer;
begin

  if qSub.IsEmpty then
     Exit;

  if (trim(qSubstatusOk.Text) <> 'INICIADA') and (trim(qSubstatusOk.Text) <> 'PARCIALMENTE PRODUZIDA') then
     Exit;

  if qSubdepende.asstring = 'Sim' then
    if VerificaAnterior(qSubId.asinteger, qSubIdProduto.asinteger, qSubordem.asinteger) then
    begin
      Application.MessageBox('Processo depende do anterior finalizado','Atenção');
      exit;
    end;

  Application.CreateForm(TfLancaProducao, fLancaProducao);

  fLancaProducao.qSubP.Close;
  fLancaProducao.qSubP.ParamByName('id').Value := qSubId.Value;
  fLancaProducao.qSubP.ParamByName('idPro').asinteger := qSubIdProcesso.asinteger;
  fLancaProducao.qSubP.open;

  fLancaProducao.ShowModal;
  fLancaProducao.Free;

  verificaStatusSub('L', qSubId.asinteger );

  // verifica se todas finalizados
  if qSubidOpP.AsInteger > 0 then
   begin
     qSub2.Close;
     qSub2.ParamByName('idop').Value := qSubidOpP.Value;
     qSub2.Open;

     nF := 0;
     nR := qSub2.RecordCount;
     qSub2.First;
     while qSub2.Eof = false do begin
       if (qSub2StatusOp.Value = 'PRODUÇÃO FINALIZADA') then
             nF := nF + 1;
       qSub2.Next;
     end;
     if nF = nR then
      begin
       ExecSql('update op set statusop = ''PRODUÇÃO FINALIZADA'' where id = ' + qSubIdOPp.Text );
       sleep(100);
      end;
     qSub2.Close;
   end;

  ativaSubOp;

end;

procedure TfCnsSubOP.AtivaSubOP;
begin
  qSub.close;
  qSub.ParamByName('pesq2').value   := '%' + trim(edSemi.Text) + '%';

  qSub.ParamByName('pro').AsInteger   := lkPro.KeyValue;

  case cbStatus.ItemIndex of
     0 : qSub.ParamByName('ss').value   := 0;
     1 : qSub.ParamByName('ss').value   := 1;
  else
    begin
        qSub.ParamByName('ss').value   := 2;
        qSub.ParamByName('st').value   := trim(cbStatus.Text);
    end;
  end;

  {EM ABERTO
TODOS
INICIADA
EM ESPERA
PARCIALMENTE PRODUZIDA
PRODUÇÃO FINALIZADA
CANCELADA
}
  if trim(edOp.Text) = '' then
     qSub.ParamByName('op').AsInteger   := 0
   else
     qSub.ParamByName('op').AsInteger   := strtoint(edop.text);

  qSub.Open;

end;


procedure TfCnsSubOP.cbStatusClick(Sender: TObject);
begin
   ativaSubOp;

end;

procedure TfCnsSubOP.CheckDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if (gdSelected in State) then
  begin
     checkdbGrid2.Canvas.Brush.Color := $00FCA258;
     checkdbGrid2.Canvas.Font.Color  := clBlack;
  end
  else
 if trim(qSubstatusOk.Value) = 'INICIADA' then begin
    checkdbGrid2.Canvas.Brush.Color := $00A6FFFF; // LAR
 end
 else
 if trim(qSubstatusOk.Value) = 'PARCIALMENTE PRODUZIDA' then begin
    checkdbGrid2.Canvas.Brush.Color := $00FFFF9D; // LAR
 end
 else
 if trim(qSubstatusOk.Value) = 'PRODUÇÃO FINALIZADA' then begin
    checkdbGrid2.Canvas.Brush.Color := $0080FF00; // LAR
 end
 else
 if trim(qSubstatusOk.Value) = 'CANCELADA' then begin
    checkdbGrid2.Canvas.Brush.Color := $009F9FFF; // LAR
 end;
 checkdbGrid2.DefaultDrawDataCell(Rect, checkdbGrid2.Columns[DataCol].Field ,state);

end;

procedure TfCnsSubOP.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCnsSubOP.CheckDBGrid2TitleClick(Column: TColumn);
begin
 if vTpOrdem = 'desc' then
  vTpOrdem := 'asc'
 else
  vTpOrdem := 'desc';


 qSub.IndexFieldNames := Column.FieldName+' '+vTpOrdem;

 qSub.First;
end;

procedure TfCnsSubOP.edOPChange(Sender: TObject);
begin
 ativaSubOp;
end;

procedure TfCnsSubOP.edSemiChange(Sender: TObject);
begin
   ativaSubOP;

end;

procedure ImprimirRomaneio(cod:integer);
var
 sql:String;
begin

   Application.CreateForm( TfImpOp, fImpop);
   fImpOp.qRom.Close;
   fImpOp.qRom.ParamByName('id').value := cod;
   fImpOp.qRom.ParamByName('idP').value := 0;
   fImpOp.qRom.Open;

   vEnv_EmailDest := '';
   vEnv_Report    := fImpOp.rpRomaneioSubOp;
   fImpOp.rpRomaneioSubOp.PreviewModal;
   fImpOp.Free;

end;


end.
