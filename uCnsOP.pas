unit uCnsOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   DBCtrls, StdCtrls, jpeg, ExtCtrls,
  ImgList, ComCtrls, XiButton, Mask, Grids, DBGrids, Buttons, ActnList, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Actions, CheckDBGrid;

type
  TfCnsOP = class(TForm)
    XiButton1: TXiButton;
    Label1: TLabel;
    Label2: TLabel;
    ActionListEx: TActionList;
    Label5: TLabel;
    acFechar: TAction;
    Image3: TImage;
    qOP: TZQuery;
    dOP: TDataSource;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    edCod: TEdit;
    cbStatusOp: TComboBox;
    qOPId: TIntegerField;
    qOPIdProduto: TIntegerField;
    qOPQuantidade: TFloatField;
    qOPData: TDateTimeField;
    qOPhora: TWideStringField;
    qOPIdUsuario: TIntegerField;
    qOPObs: TWideStringField;
    qOPStatusOp: TWideStringField;
    qOPdescricao: TWideStringField;
    qOPnome: TWideStringField;
    CheckDBGrid1: TCheckDBGrid;
    acCancel: TAction;
    acMontagem: TAction;
    acImprimir: TAction;
    grFicha: TCheckDBGrid;
    Label4: TLabel;
    Bevel1: TBevel;
    dFicha: TDataSource;
    qOPTotal: TFloatField;
    qOPSALDO: TFloatField;
    acNovo: TAction;
    Shape6: TShape;
    Shape7: TShape;
    Label14: TLabel;
    Label15: TLabel;
    Shape8: TShape;
    Label16: TLabel;
    Label17: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    Label18: TLabel;
    Shape11: TShape;
    Label19: TLabel;
    qOPsoData: TWideStringField;
    acRetorno: TAction;
    qOPMontada: TFloatField;
    rdTipo: TRadioGroup;
    qFicha: TZQuery;
    qFichaId: TIntegerField;
    qFichaIdProduto: TIntegerField;
    qFichaQuantidade: TFloatField;
    qFichadescr: TWideStringField;
    qFichaTipo2: TWideStringField;
    qFichaIdItem: TIntegerField;
    qFichaTipo: TWideStringField;
    qFichaUnidade: TWideStringField;
    qFichatotprocesso: TFloatField;
    qOpSA: TZQuery;
    qOpSAStatusOp: TWideStringField;
    qFichaqtde: TFloatField;
    qOPtipo: TWideStringField;
    qFichaestoque: TFloatField;
    qFichaSA: TZQuery;
    qFichaSAid: TIntegerField;
    qFichaSAdescr: TWideStringField;
    qFichaSAtempo: TWideStringField;
    qFichaSAidp: TIntegerField;
    qFichaSAdescrp: TWideStringField;
    qFichaSAtipo: TWideStringField;
    qFichaSAqtde: TFloatField;
    qFichaSAqtdestoque: TFloatField;
    dFichaSA: TDataSource;
    grFichaSA: TCheckDBGrid;
    acRomaneio: TAction;
    qOPidOpP: TIntegerField;
    qFichaSAordem: TIntegerField;
    qFichaSAult: TWideStringField;
    qOPDescor: TWideStringField;
    qOPtamanho: TWideStringField;
    qOPreferencia: TWideStringField;
    qFichaSAreferencia: TWideStringField;
    qFichareferencia: TWideStringField;
    acNutri: TAction;
    Panel1: TPanel;
    XiButton5: TXiButton;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    XiButton6: TXiButton;
    btnRomaneio: TXiButton;
    XiButton2: TXiButton;
    btnNutri: TXiButton;
    qOPLote: TIntegerField;
    qOPLoteL: TWideStringField;
    qFichaminlote: TWideStringField;
    qFichaforn: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acMontagemExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure AtivaOP;
    procedure qOPAfterScroll(DataSet: TDataSet);
    procedure edDt1Change(Sender: TObject);
    procedure edDt2Change(Sender: TObject);
    procedure edCodChange(Sender: TObject);
    procedure cbStatusOpClick(Sender: TObject);
    procedure acNovoExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerificaMontagem;
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grFichaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acRetornoExecute(Sender: TObject);
    procedure rdTipoClick(Sender: TObject);
    procedure acRomaneioExecute(Sender: TObject);
    procedure CheckDBGrid1TitleClick(Column: TColumn);
    procedure grFichaSATitleClick(Column: TColumn);
    procedure grFichaTitleClick(Column: TColumn);
    procedure grFichaSADrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure grFichaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edRefChange(Sender: TObject);
    procedure acNutriExecute(Sender: TObject);

  private
    procedure VerificaTipo;
    procedure ImprimirEtiquetaM2;
  public
    { Public declarations }
    vTpOrdem : string;
  end;

var
  fCnsOP: TfCnsOP;

implementation

uses uDM, uFuncao, uNovaOP, uIniciaMontagem, uLancaMontagem, uImpOp,
     uIniciaProducao, uLancaProducao, uImpNutricional, uImpNutricional_M2, strUtils;

{$R *.dfm}
procedure TfCnsOP.VerificaMontagem;
var
  nFinal, nRec : integer;
begin
  qOpSA.close;
  qOpSA.Params[0].asinteger := qOPId.AsInteger;
  qOpSA.open;

  if qOpSA.IsEmpty then
  begin
      acMontagem.Enabled := true;
      exit;
  end;

   nFinal := 0;
   nRec   := qOpSA.RecordCount;
   qOpSA.First;
   while qOpSA.Eof = false do begin
     if (qOpSAStatusOp.Value = 'FINALIZADA') then
           nFinal := nFinal + 1;
     qOpSA.Next;
   end;
   qOpSA.First;
   if nFinal = nRec then
     acMontagem.Enabled := true
   else
     acMontagem.Enabled := false;

end;

procedure TfCnsOP.VerificaTipo;
begin
  grFicha.visible     := (rdTipo.ItemIndex=0);
  grFichaSA.visible   := (rdTipo.ItemIndex=1);
  btnRomaneio.visible := (rdTipo.ItemIndex=1);


  if (rdTipo.ItemIndex=1) then   //SA
  begin

    acMontagem.Visible := False;
    acRetorno.Visible  := False;

    acNutri.visible    := false;

   if (dm.qParametroprod_com_romaneio.asstring = 'N')  then
     acRomaneio.Visible := False;



    XiButton5.Left := xibutton6.left;;//485;
    XiButton3.Left := btnNutri.left;//616;

  end
  else
  begin


    acMontagem.Visible := True;
    acRetorno.Visible  := True;

    acNutri.Visible := (dm.qParametroimprimir_desc_ficha.AsString = 'S');
    acRomaneio.Visible := False;


    XiButton5.Left := 1;//354;
    XiButton3.Left := 131;//485;
    //XiButton4.Left := 616;
    //XiButton6.Left := 747;


  end;

end;

procedure TfCnsOP.FormCreate(Sender: TObject);
begin
    edDt1.DateTime := Date- 30;
    edDt2.DateTime := Date ;

    if dm.qParametroprod_sem_montagem.Text = 'S' then
     rdTipo.visible := false;

  vTpOrdem := 'desc';
  ativaOP;
  VerificaTipo;

  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    Checkdbgrid1.Columns[1].Visible := true;
    Checkdbgrid1.Columns[3].Visible := true;
    Checkdbgrid1.Columns[4].Visible := true;
    grFicha.Columns[1].Visible      := true;
    grFichaSA.Columns[1].visible    := true;
  end
  else
  begin
    Checkdbgrid1.Columns[1].Visible := false;
    Checkdbgrid1.Columns[3].Visible := false;
    Checkdbgrid1.Columns[4].Visible := false;
    grFicha.Columns[1].Visible      := false;
    grFichaSA.Columns[1].visible    := false;
  end;

  acNutri.Visible := (dm.qParametroimprimir_desc_ficha.AsString = 'S');

  case rdTipo.itemIndex of
    0: checkdbgrid1.Columns[11].Visible := (dm.qParametroimprimir_desc_ficha.AsString = 'S');
    1: checkdbgrid1.Columns[11].Visible := false;
  end;

  if dm.qParametroloteLetra.AsString = 'S' then
    checkdbgrid1.Columns[11].Field := qOPLoteL;

end;

procedure TfCnsOP.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and not (ActiveControl is TDBMemo) and not (ActiveControl is TDBGrid) THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;

end;

procedure TfCnsOP.qOPAfterScroll(DataSet: TDataSet);
begin
   if(dm.qParametroprod_sem_montagem.Text = 'N') and (qOptipo.asstring = 'P') then
     VerificaMontagem;

   if ((trim(qOPStatusOp.Text) = 'PRODUÇÃO FINALIZADA') or
      ((trim(qOPStatusOp.Text) = 'EM PRODUÇÃO') and (dm.qParametroprod_por_pedido.asstring = 'S'))) then
      acMontagem.Enabled := true
   else
      acMontagem.Enabled := false;

   if trim(qOPStatusOp.Text) = 'MONTAGEM' then
      acRetorno.Enabled := true
   else
      acRetorno.Enabled := false;

  if qOptipo.asstring = 'P' then
  begin
    qFichaSA.Close;

    qFicha.Close;
    qficha.ParamByName('qt').AsFloat := qOPQuantidade.asfloat;
    qficha.ParamByName('id').AsInteger := qOPIdProduto.AsInteger;
    qFicha.open;
  end
  else
  begin
    qFicha.Close;

    qFichaSA.Close;
    qFichaSA.ParamByName('qt').AsFloat := qOPQuantidade.asfloat;
    qFichaSA.ParamByName('IDsa').AsInteger := qOPIdProduto.AsInteger;
    qFichaSA.open;
  end;
end;

procedure TfCnsOP.rdTipoClick(Sender: TObject);
begin
  AtivaOP;
  VerificaTipo;

  case rdTipo.itemIndex of
    0: checkdbgrid1.Columns[11].Visible := (dm.qParametroimprimir_desc_ficha.AsString = 'S');
    1: checkdbgrid1.Columns[11].Visible := false;
  end;




end;

procedure TfCnsOP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fCnsOP := nil;
end;

procedure TfCnsOP.acCancelExecute(Sender: TObject);
begin
 if (qOp.IsEmpty) or (trim(qOPStatusOp.Value) = 'CANCELADA') or (trim(qOPStatusOp.Value) = 'FINALIZADA') then
    Exit;

 dm.qPesq.Close;
 dm.qPesq.SQL.Clear;
 dm.qPesq.SQL.Add('select * from op where idOpP = '+qOPID.text+' and statusop <> ''EM ESPERA'' and statusop <> ''CANCELADA''');
 dm.qPesq.Open;
 if dm.qPesq.RecordCount > 0 then
 begin
   application.MessageBox('Existem op de semiacabados com produção iniciada e vinculados a esta OP. Não é possível calcelar.', 'Atenção');
   exit;
 end;

 if Application.MessageBox( 'Deseja realmente cancelar esta OP?', 'Atenção', mb_yesno ) = idNo then
    Exit;

 ExecSql(' Update op    set statusop  = ''CANCELADA'' where id = ' + qOPID.Text );
 //cancela as subop
 EXECsql(' update op    set statusop  = ''CANCELADA'' where idOpP = '+qOPID.text);


 if dm.qParametroprod_sem_montagem.asString = 'S' then  //add Nilton 25/08/2022
 begin
   //apaga  verificar quando vai baixar estoque - pra voltar depois //Descomentado Nilton 25/08/2022
   ExecSql(' Delete from estoque where idop = ' + qOPID.Text );

   //atualiza verificar quando vai baixar estoque - pra voltar depois  //Descomentado Nilton 25/08/2022
   Execsql(' update produto set produto.qtdestoque = coalesce((select sum(estoque.quantidade) from Estoque '+
           ' where Estoque.idproduto = produto.id and estoque.idemp = 1 ),0) where produto.id in (select processo_sa_i.idproduto from processo_sa_i '+
           ' left join processo_sa on processo_sa.id = processo_sa_i.idprocesso_sa '+
           ' left join subop on subop.idprocesso = processo_sa.idprocesso and subop.idsemiacabado = processo_sa.idsemiacabado '+
           ' left join subop_producao on subop_producao.idsubop = subop.id '+
           ' where subop.idop = '+ qOPID.Text +' group by  processo_sa_i.idproduto) ' );

   //Atualiza estoque das Mp do produto //Adicionado Nilton 25/08/2022
   ExecSQL(' update produto set produto.qtdestoque = coalesce((select sum(estoque.quantidade) from Estoque '+
           ' where Estoque.idproduto = produto.id and estoque.idemp = 1 ),0) where produto.id in '+
		       ' (select ficha_tecnica.iditem from ficha_tecnica '+
           ' left join produto on produto.id = ficha_tecnica.idproduto  '+
           ' left join op on op.IdProduto = produto.id '+
           ' where op.id = '+ qOPID.Text +' group by  ficha_tecnica.iditem)');

   //Atualiza estoque do produto da OP  //Adicionado Nilton 25/08/2022
   ExecSQL('update produto set produto.qtdestoque = coalesce((select sum(estoque.quantidade) from Estoque  '+
           ' where Estoque.idproduto = produto.id and estoque.idemp = 1  ),0) where produto.id in   '+
		       '(select op.IdProduto from op   '+
           ' where op.id = 5 group by  op.IdProduto)');

 end;
 AtivaOp;

end;


procedure TfCnsOP.acFecharExecute(Sender: TObject);
begin
  close;

end;

procedure TfCnsOP.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm( TfImpOp, fImpop);
  vEnv_EmailDest := '';
  vEnv_Report    := fImpOp.rp;
  fImpOp.rp.PreviewModal;
  fImpOp.Free;
end;

procedure TfCnsOP.acMontagemExecute(Sender: TObject);
begin
  if qOp.IsEmpty then
     Exit;

  if dm.qParametroprod_sem_montagem.Text = 'N' then
  begin
    if (qOPStatusOP.Text <> 'PRODUÇÃO FINALIZADA') and (qOPStatusOP.Text <> 'MONTAGEM') and (qOPStatusOP.Text <> 'EM PRODUÇÃO') then
        Exit;
  end
  else
  begin
    if (qOPStatusOP.Text = 'FINALIZADA') and (qOPStatusOP.Text = 'CANCELADA') then
        Exit;

  end;


  Application.CreateForm(TfIniciaMontagem, fIniciaMontagem);

  fIniciaMontagem.qOP.Close;
  fIniciaMontagem.qOP.ParamByName('id').Value := qOPId.Value;
  fIniciaMontagem.qOP.open;

  fIniciaMontagem.ShowModal;
  fIniciaMontagem.Free;

  ativaOp;

end;


procedure TfCnsOP.acNovoExecute(Sender: TObject);
begin
  vTipoP := copy(rdTipo.Items[rdTipo.ItemIndex],1,1);
  Application.CreateForm( TfNovaOp, fNovaOP);
  fNovaOP.ShowModal;
  fNovaOP.Free;

  AtivaOp;

end;

procedure TfCnsOP.acNutriExecute(Sender: TObject);
begin

  ImprimirEtiquetaM2;

{  application.CreateForm(TfImpNutricional, fImpNutricional);

  fImpNutricional.vDataFabri := qOPData.AsDateTime;

  if dm.qParametroloteLetra.AsString = 'S' then
    fImpNutricional.vLote := qOPLoteL.text
  else
    fImpNutricional.vLote := qOPLote.text;

   fImpNutricional.qNutricional.Close;
   fImpNutricional.qNutricional.ParamByName('produto').AsInteger := qOPIdProduto.asInteger;
   fImpNutricional.qNutricional.Open;

   fImpNutricional.qGarantia.Close;
   fImpNutricional.qGarantia.ParamByName('produto').AsInteger := qOPIdProduto.asInteger;
   fImpNutricional.qGarantia.Open;

   fImpNutricional.qGarantia2.Close;
   fImpNutricional.qGarantia2.ParamByName('produto').AsInteger := qOPIdProduto.asInteger;
   fImpNutricional.qGarantia2.Open;

   while not fImpNutricional.qGarantia.eof do
   begin
     garantia := garantia + fImpNutricional.qGarantia2.FieldByName('descricao').AsString;
     fImpNutricional.qGarantia.Next;
   end;
   fImpNutricional.RLMemo1.Lines.Text := garantia ;
   //fImpNutricional.rlBand1.CarbonCopies := Trunc(qopMontada.asFloat);

   fImpNutricional.rlNovoHorizontal.PreviewModal;

   fImpNutricional.Free;
   }
end;

procedure TfCnsOP.acRetornoExecute(Sender: TObject);
begin

  if qOp.IsEmpty then
     Exit;

  if (qOPStatusOP.Text <> 'MONTAGEM') then
     Exit;

  Application.CreateForm(TfLancaMontagem, fLancaMontagem);

  fLancaMontagem.qOP.Close;
  fLancaMontagem.qOP.ParamByName('id').Value := qOPId.Value;
  fLancaMontagem.qOP.open;

  fLancaMontagem.ShowModal;
  fLancaMontagem.Free;

  ativaOp;

end;

procedure TfCnsOP.acRomaneioExecute(Sender: TObject);
begin
if qOp.IsEmpty then
     Exit;

  if (qOPStatusOp.Text = 'FINALIZADA') OR (qOPStatusOp.Text = 'CANCELADA') then
     Exit;

  Application.CreateForm( TfImpOp, fImpop);
  fImpOp.qRom.Close;
  fImpOp.qRom.ParamByName('id').value := qOPId.asinteger;
  fImpOp.qRom.ParamByName('idP').value := 0;
  fImpOp.qRom.Open;

  vEnv_EmailDest := '';
  vEnv_Report    := fImpOp.rpRomaneioSubOp;
  fImpOp.rpRomaneioSubOp.PreviewModal;
  fImpOp.Free;
end;

procedure TfCnsOP.AtivaOP;
Var
  vRef : String;
begin
  qOp.close;
  qOp.ParamByName('tipo').asstring := copy(rdTipo.Items[rdTipo.ItemIndex],1,1);
  qOp.ParamByName('di').asDate  := strtodate(formatdatetime('dd/mm/yyyy',eddt1.Date));
  qOp.ParamByName('df').asDate  := strtodate(formatdatetime('dd/mm/yyyy',eddt2.Date));
  qOp.ParamByName('pesq').Value := '%'  + trim(edCod.Text) + '%' ;
  case cbStatusop.ItemIndex of
    0,1: qOp.ParamByName('ss').AsInteger := cbStatusop.ItemIndex;
   else
     begin
       qOp.ParamByName('ss').AsInteger := 2;
       qOp.ParamByName('st').Text      := trim(cbStatusOp.Text);
     end;
  end;

  qOp.Open;

end;

procedure TfCnsOP.cbStatusOpClick(Sender: TObject);
begin
   ativaOp;

end;

procedure TfCnsOP.CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (gdSelected in State) then
  begin
     checkdbGrid1.Canvas.Brush.Color := $00FCA258;
     checkdbGrid1.Canvas.Font.Color  := clBlack;
  end
  else
 if trim(qOPStatusOp.Value) = 'EM PRODUÇÃO' then begin
    checkdbGrid1.Canvas.Brush.Color := $00A6FFFF; // LAR
 end
 else
 if trim(qOPStatusOp.Value) = 'PRODUÇÃO FINALIZADA' then begin
    checkdbGrid1.Canvas.Brush.Color := $00FFFF9D; // LAR
 end
 else
 if trim(qOPStatusOp.Value) = 'MONTAGEM' then begin
    checkdbGrid1.Canvas.Brush.Color := $0084ACFF; // LAR
 end
 else
 if trim(qOPStatusOp.Value) = 'FINALIZADA' then begin
    checkdbGrid1.Canvas.Brush.Color := $0080FF00; // LAR
 end
 else
 if trim(qOPStatusOp.Value) = 'CANCELADA' then begin
    checkdbGrid1.Canvas.Brush.Color := $009F9FFF; // LAR
 end;
 checkdbGrid1.DefaultDrawDataCell(Rect, checkdbGrid1.Columns[DataCol].Field ,state);


end;

procedure TfCnsOP.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCnsOP.CheckDBGrid1TitleClick(Column: TColumn);
begin
 if vTpOrdem = 'desc' then
  vTpOrdem := 'asc'
 else
  vTpOrdem := 'desc';


 qOP.IndexFieldNames := Column.FieldName+' '+vTpOrdem;

 qOP.First;
end;

procedure TfCnsOP.grFichaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if qFichaestoque.AsFloat >= qFichaqtde.AsFloat then
    grFicha.Canvas.Brush.Color := $00FCD7C2 // azul
  else
    grFicha.Canvas.Brush.Color := $00CECEFF; // rosa

 grFicha.Canvas.Font.Color := clBlack;
 grFicha.DefaultDrawDataCell(Rect, grFicha.Columns[DataCol].Field ,state);
end;

procedure TfCnsOP.grFichaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCnsOP.grFichaSADrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if qFichaSAqtdestoque.AsFloat >= qFichaSAqtde.AsFloat then
    grFichaSA.Canvas.Brush.Color := $00FCD7C2 // azul
  else
    grFichaSA.Canvas.Brush.Color := $00CECEFF; // rosa

 grFichaSA.Canvas.Font.Color := clBlack;
 grFichaSA.DefaultDrawDataCell(Rect, grFichaSA.Columns[DataCol].Field ,state);

end;

procedure TfCnsOP.grFichaSATitleClick(Column: TColumn);
begin
   if vTpOrdem = 'desc' then
    vTpOrdem := 'asc'
   else
    vTpOrdem := 'desc';

   qFichaSA.IndexFieldNames := Column.FieldName+' '+vTpOrdem;
   qFichaSA.First;

end;

procedure TfCnsOP.grFichaTitleClick(Column: TColumn);
begin
if vTpOrdem = 'desc' then
    vTpOrdem := 'asc'
   else
    vTpOrdem := 'desc';

   qFicha.IndexFieldNames := Column.FieldName+' '+vTpOrdem;
   qFicha.First;
end;

procedure TfCnsOP.ImprimirEtiquetaM2;
var
  FEtiqueta : TFImpNutricionalM2;
  garantia  : String;
  strLote : String;
begin
  FEtiqueta := TFImpNutricionalM2.Create(Self);
  try
    strLote := IfThen(dm.qParametroloteLetra.AsString = 'S', qOPLoteL.AsString, qOPLote.AsString);

    FEtiqueta.ImprimirEtiqueta(qOPIdProduto.asInteger, qOPData.AsDateTime, strLote);
  finally
    FEtiqueta.Release;
    FreeAndNil(FEtiqueta);
  end;
end;

procedure TfCnsOP.edCodChange(Sender: TObject);
begin
   ativaOp;
end;

procedure TfCnsOP.edDt1Change(Sender: TObject);
begin
   ativaOp;
end;

procedure TfCnsOP.edDt2Change(Sender: TObject);
begin
   ativaOp;

end;

procedure TfCnsOP.edRefChange(Sender: TObject);
begin
  ativaOp;
end;

end.
