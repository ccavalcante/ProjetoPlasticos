unit uGridOrcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   DBCtrls, StdCtrls, jpeg, ExtCtrls,
  ImgList, ComCtrls, XiButton, Mask, Grids, DBGrids, Buttons, ActnList, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Actions, CheckDBGrid,
  ZSqlUpdate;

type
  TfGridOrcamento = class(TForm)
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    Label2: TLabel;
    ActionListEx: TActionList;
    Label5: TLabel;
    acFechar: TAction;
    Image3: TImage;
    qOrc: TZQuery;
    dOrc: TDataSource;
    XiButton3: TXiButton;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    edVen: TEdit;
    CheckDBGrid1: TCheckDBGrid;
    acCancel: TAction;
    acEdit: TAction;
    acImprimir: TAction;
    XiButton5: TXiButton;
    acNovo: TAction;
    Shape11: TShape;
    Label19: TLabel;
    qPro: TZQuery;
    XiButton4: TXiButton;
    CheckDBGrid2: TCheckDBGrid;
    edCli: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    edPro: TEdit;
    dPro: TDataSource;
    qOrcid: TIntegerField;
    qOrcidcliente: TIntegerField;
    qOrcidvendedor: TIntegerField;
    qOrcidcondpgto: TIntegerField;
    qOrcdata: TDateTimeField;
    qOrcvalor: TFloatField;
    qOrcdesconto: TFloatField;
    qOrctotal: TFloatField;
    qOrcprazoentrega: TWideStringField;
    qOrcnomeCli: TWideStringField;
    qOrcnomeVend: TWideStringField;
    qOrcdescond: TWideStringField;
    qProId: TIntegerField;
    qProIdProduto: TIntegerField;
    qProTipo: TWideStringField;
    qProQtd: TFloatField;
    qProUnit: TFloatField;
    qProDesconto: TFloatField;
    qProTotal: TFloatField;
    qProx: TWideStringField;
    qProdescricao: TWideStringField;
    qProcod_manual: TIntegerField;
    qOrcex: TIntegerField;
    ckTodas: TCheckBox;
    L: TZQuery;
    LId: TIntegerField;
    LIdProduto: TIntegerField;
    LTipo: TWideStringField;
    LQtd: TFloatField;
    LUnit: TFloatField;
    LDesconto: TFloatField;
    LTotal: TFloatField;
    Lx: TWideStringField;
    LUnidade: TWideStringField;
    Ldescricao: TWideStringField;
    LtipoProd: TWideStringField;
    Lcod_manual: TIntegerField;
    dL: TDataSource;
    qOrcexpedido: TWideStringField;
    qOrcgeradonfe: TWideStringField;
    Shape1: TShape;
    Label4: TLabel;
    XiButton9: TXiButton;
    acCopiar: TAction;
    IT: TZQuery;
    Ve: TZQuery;
    ITNova: TZQuery;
    VeNova: TZQuery;
    uVeNova: TZUpdateSQL;
    uITNova: TZUpdateSQL;
    VeNovaId: TIntegerField;
    VeNovaData: TDateTimeField;
    VeNovaIdVendedor: TIntegerField;
    VeNovaIdCliente: TIntegerField;
    VeNovaIdCondPgto: TIntegerField;
    VeNovaValor: TFloatField;
    VeNovaDesconto: TFloatField;
    VeNovaTotal: TFloatField;
    VeNovaPrazoEntrega: TWideStringField;
    VeNovaNotaFiscal: TIntegerField;
    VeNovaIdUsuario: TIntegerField;
    VeNovax: TWideStringField;
    VeNovaEx: TIntegerField;
    VeNovaExpedido: TWideStringField;
    VeNovaGeradoNFe: TWideStringField;
    VeNovapComissao: TFloatField;
    ITNovaId: TIntegerField;
    ITNovaIdProduto: TIntegerField;
    ITNovaTipo: TWideStringField;
    ITNovaQtd: TFloatField;
    ITNovaUnit: TFloatField;
    ITNovaDesconto: TFloatField;
    ITNovaTotal: TFloatField;
    ITNovax: TWideStringField;
    ITNovaRoyalties: TFloatField;
    ITNovaunit2: TFloatField;
    ITNovaunitst: TFloatField;
    ITNovapComissao: TFloatField;
    ITNovaordemcompra: TWideStringField;
    ITId: TIntegerField;
    ITIdProduto: TIntegerField;
    ITTipo: TWideStringField;
    ITQtd: TFloatField;
    ITUnit: TFloatField;
    ITDesconto: TFloatField;
    ITTotal: TFloatField;
    ITx: TWideStringField;
    ITRoyalties: TFloatField;
    ITunit2: TFloatField;
    ITunitst: TFloatField;
    ITpComissao: TFloatField;
    ITordemcompra: TWideStringField;
    VeId: TIntegerField;
    VeData: TDateTimeField;
    VeIdVendedor: TIntegerField;
    VeIdCliente: TIntegerField;
    VeIdCondPgto: TIntegerField;
    VeValor: TFloatField;
    VeDesconto: TFloatField;
    VeTotal: TFloatField;
    VePrazoEntrega: TWideStringField;
    VeNotaFiscal: TIntegerField;
    VeIdUsuario: TIntegerField;
    Vex: TWideStringField;
    VeEx: TIntegerField;
    VeExpedido: TWideStringField;
    VeGeradoNFe: TWideStringField;
    VepComissao: TFloatField;
    qOrct_nf: TFloatField;
    qOrcdesStatus: TWideStringField;
    Label6: TLabel;
    edVenda: TEdit;
    Lqtd_cx: TFloatField;
    Lcubagem: TFloatField;
    qPropComissao: TFloatField;
    qProordemcompra: TWideStringField;
    qProcubagem: TFloatField;
    qProqtd_cx: TFloatField;
    qProreferencia: TWideStringField;
    qProbarras: TWideStringField;
    qOrcpcomissao: TFloatField;
    VeObs: TWideMemoField;
    Veboleto: TWideStringField;
    Vepacote: TWideStringField;
    Vetotcubagem: TFloatField;
    Vedesc_especial: TFloatField;
    Veidtabela: TIntegerField;
    ITcubagem: TFloatField;
    ITqtd_cx: TFloatField;
    VeNovaObs: TWideMemoField;
    VeNovaboleto: TWideStringField;
    VeNovapacote: TWideStringField;
    VeNovatotcubagem: TFloatField;
    VeNovadesc_especial: TFloatField;
    VeNovaidtabela: TIntegerField;
    ITNovacubagem: TFloatField;
    ITNovaqtd_cx: TFloatField;
    Label7: TLabel;
    cbStatus: TComboBox;
    qCon_i: TZQuery;
    qCon_iId: TIntegerField;
    qCon_iIDCond: TIntegerField;
    qCon_iPorc: TFloatField;
    qCon_iDias: TIntegerField;
    Lidcxmaster: TIntegerField;
    Label9: TLabel;
    Shape3: TShape;
    qOrcstatus: TWideStringField;
    Vestatus: TWideStringField;
    VeNovastatus: TWideStringField;
    Vesincronizado: TWideStringField;
    VeNovasincronizado: TWideStringField;
    ITNovasincronizado: TWideStringField;
    ITNovaidWeb: TIntegerField;
    Veidweb: TIntegerField;
    VeNovaidweb: TIntegerField;
    qOrcdesComercial: TWideStringField;
    qOrcdesc_especial: TFloatField;
    qOrcnf: TIntegerField;
    qOrcidweb: TIntegerField;
    Label11: TLabel;
    cbEmp: TComboBox;
    qOrcidemp: TIntegerField;
    qOrcfantasia: TWideStringField;
    LIdOrc: TIntegerField;
    ITIdOrc: TIntegerField;
    ITNovaIdOrc: TIntegerField;
    Label24: TLabel;
    Lmultiplo: TFloatField;
    Veidcomercial: TIntegerField;
    Veidemp: TIntegerField;
    ITsincronizado: TWideStringField;
    ITidWeb: TIntegerField;
    ITvCusto: TFloatField;
    ITvMargem: TFloatField;
    ITvUnitLiq: TFloatField;
    ITvTotLiq: TFloatField;
    ITpDesconto: TFloatField;
    VeNovaidcomercial: TIntegerField;
    VeNovaidemp: TIntegerField;
    ITNovavCusto: TFloatField;
    ITNovavMargem: TFloatField;
    ITNovavUnitLiq: TFloatField;
    ITNovavTotLiq: TFloatField;
    ITNovapDesconto: TFloatField;
    qPromultiplo: TFloatField;
    qProRoyalties: TFloatField;
    qProunit2: TFloatField;
    qProunitst: TFloatField;
    qProsincronizado: TWideStringField;
    qProidWeb: TIntegerField;
    qProvCusto: TFloatField;
    qProvMargem: TFloatField;
    qProvUnitLiq: TFloatField;
    qProvTotLiq: TFloatField;
    qPropDesconto: TFloatField;
    qProIdOrc: TIntegerField;
    Venome: TWideStringField;
    VeNovanome: TWideStringField;
    XiButton6: TXiButton;
    acEmail: TAction;
    qProvolume: TIntegerField;
    qPropesoProd: TFloatField;
    qOrctotipi: TFloatField;
    qOrctotfre: TFloatField;
    ITmultiplo: TFloatField;
    ITNovamultiplo: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure AtivaV;
    procedure qOrcAfterScroll(DataSet: TDataSet);
    procedure edDt1Change(Sender: TObject);
    procedure edDt2Change(Sender: TObject);
    procedure edVenChange(Sender: TObject);
    procedure acNovoExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckTodasClick(Sender: TObject);
    procedure acCopiarExecute(Sender: TObject);
    procedure edDt1KeyPress(Sender: TObject; var Key: Char);
    procedure edDt2KeyPress(Sender: TObject; var Key: Char);
    procedure edDt2Exit(Sender: TObject);
    procedure edDt1Exit(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure acEmailExecute(Sender: TObject);

  private
    vIdnf, ti : integer;
    procedure EnviaEmailOrcamento(cod: Integer);
  public
    { Public declarations }
  end;

var
  separacao : String;
  fGridOrcamento: TfGridOrcamento;
  procedure ImprimirOrcamento(cod: Integer);

implementation

uses uDM, uFuncao, uMenu, uImpressoes, System.Math,
  uOrcamento, uEscolheComissao, uEnviar;

{$R *.dfm}

procedure TfGridOrcamento.FormCreate(Sender: TObject);
begin
  edDt1.DateTime := Date- 30;
  edDt2.DateTime := Date ;
  vIdnf :=0;
  ti    := 0;

 //pesq produto
 if dm.qParametropesqproduto.text = 'ID' then
 begin
    CheckDBGrid2.Columns[0].title.caption := 'Código';
    CheckDBGrid2.Columns[0].FieldName     := 'IDPRODUTO';
 end
 else
 begin
   CheckDBGrid2.Columns[0].FieldName     := trim(dm.qParametropesqproduto.text);
   if dm.qParametropesqproduto.text = 'BARRAS' then
      CheckDBGrid2.Columns[0].title.caption := 'Cód.Barras'
   else
      CheckDBGrid2.Columns[0].title.caption := 'Referência';
 end;

 EmpresaComboZero( cbEmp );

 if dm.qParametrovenda_desc_margem.Text = 'S' then //itu aço
 begin
    checkdbgrid2.columns[2].Title.caption := 'Qtde Item';
    checkdbgrid2.columns[4].Title.caption := 'Qtde Kg';
 end
 else
 begin
    checkdbgrid2.columns[6].Visible       := false;
    checkdbgrid2.columns[7].Visible       := false;
    checkdbgrid2.columns[8].Visible       := false;
    checkdbgrid2.columns[11].Visible      := false;
    checkdbgrid2.columns[12].Visible      := false;
 end;

 if dm.qParametrofolha_separacao_mod_3.Text = 'S' then //bruba lar
 begin
    checkdbgrid2.columns[2].Title.caption  := 'Qtde Dz';
    checkdbgrid2.columns[4].Title.caption  := 'Qtde Pçs';
    checkdbgrid2.columns[3].Visible        := false;
    checkdbgrid2.columns[10].Visible       := false;
    checkdbgrid2.columns[13].Visible       := true;
    checkdbgrid2.columns[15].Title.caption := 'm3';
 end;

  if dm.qParametromostrar_cubagem.Text = 'N' then //cubagem
  begin
    checkdbgrid2.columns[15].Visible       := false;
  end;


  if dm.qParametromostrar_multiplo.Text = 'N' then //granelli
  begin
    checkdbgrid2.columns[2].Visible       := false;
    checkdbgrid2.columns[3].Visible       := false;
    checkdbgrid2.columns[4].Title.caption := 'Qtde';
  end;


end;

procedure TfGridOrcamento.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and not ((ActiveControl is TDBMemo) or
                        (ActiveControl is TDBGrid)  or
                        (ActiveControl = eddt1) or
                        (ActiveControl = eddt2 ) )THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;

end;

procedure TfGridOrcamento.qOrcAfterScroll(DataSet: TDataSet);
begin
  qPro.Close;
  qPro.ParamByName('id').Value := qOrcid.Value;
  qPro.Open;

end;

procedure TfGridOrcamento.FormActivate(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fGridOrcamento := nil;
end;


procedure TfGridOrcamento.acCancelExecute(Sender: TObject);
var
  rg : Integer;
begin

  if (qOrc.IsEmpty) then
     exit;

  if (qOrcEx.Value = 1)  then
  begin
     Application.MessageBox('Orçamento Já Esta Cancelada','Atenção');
     Exit;
  end;

 if Application.MessageBox( 'Deseja Realmente Cancelar este orçamento', 'Atenção', mb_yesno ) = idNo then
    Exit;

 rg := qOrc.recno;
 ExecSql(' Update orc set sincronizado = ''N'',  ex = 1, status = ''C'' where id = ' + qOrcID.Text );

 AtivaV;
 qOrc.recno := rg;


end;



procedure TfGridOrcamento.acCopiarExecute(Sender: TObject);
var
 codNovo :Integer;
begin
  if (qOrc.IsEmpty) then
     exit;

  if Application.MessageBox('Deseja Copiar este Orçamento?', 'Confirmação', mb_yesno ) = idNo then
     Exit;

  Ve.Close;
  Ve.ParamByName('ID').Value := qOrcid.Text;
  Ve.Open;

  It.Close;
  It.ParamByName('ID').Value := qOrcID.Text;
  It.Open;

  VeNova.Close;
  VeNova.Open;

  ItNova.Close;
  ItNova.Open;

  VeNova.Insert;
  VeNovaID.value           := InsereCodigo('Orc', 'Id');
  VeNovaData.value         := Date;
  VeNovaIdVendedor.value   := VeIdVendedor.Value;
  VeNovaIdCliente.Value    := VeIdCliente.Value;
  VeNovaIdCondPgto.Value   := VeIdCondPgto.Value;
  VeNovaValor.asfloat      := VeValor.asfloat;
  VeNovaDesconto.asfloat   := VeDesconto.asfloat;
  VeNovaTotal.asfloat      := VeTotal.asfloat;
  VeNovaPrazoEntrega.text  := '';
  VeNovaNotaFiscal.text    := '';
  VeNovaIdUsuario.Value    := VeIdUsuario.Value;
  VeNovax.Value            := 'Z'; //  Z indica venda foi copiada, apos salvar muda para x
  VeNovaEx.Value           := 0;
  VeNovaExpedido.Value     := 'N';
  VeNovaGeradoNFe.Value    := 'N';
  VeNovapComissao.asFloat  := VepComissao.asFloat;
  VeNovaboleto.Value       := 'N';
  VeNovatotcubagem.Value    := Vetotcubagem.Value;
  VeNovadesc_especial.Value := Vedesc_especial.Value;
  VeNovaidtabela.Value      := Veidtabela.Value;
  VeNovapComissao.Value     := VepComissao.Value;
  VeNovastatus.Value        := 'D';
  VeNovasincronizado.Value  := 'S';
  VeNovaidWeb.Value   := 0;
  VeNovaidcomercial.Value   := Veidcomercial.Value;
  VeNovaidemp.Value         := Veidemp.Value;
  VeNovanome.Value          := Venome.Value;
  codNovo                   := VeNovaID.value;
  VeNOva.Post;
  VeNova.ApplyUpdates;

  while IT.Eof = false do
  begin
    application.ProcessMessages;

    itNova.Insert;
    ITNovaId.Value           := InsereCodigo('Orc_I', 'Id');
    ITNovaIdOrc.Value        := codNovo;
    ITNovaIdProduto.Value    := ITIdProduto.Value;
    ITNovaTipo.text          := ITTipo.text;
    ITNovaQtd.asfloat        := ITQtd.asfloat;
    ITNovaUnit.asfloat       := ITUnit.asfloat;
    ITNovaDesconto.asfloat   := ITDesconto.asfloat;
    ITNovaTotal.asfloat      := ITTotal.asfloat;
    ITNovax.Value            := ITx.Value;
    ITNovaRoyalties.asfloat  := ITRoyalties.asfloat;
    ITNovaunit2.asfloat      := ITunit2.asfloat;
    ITNovaunitst.asfloat     := ITunitst.asfloat;
    ITNovapComissao.asfloat  := ITpComissao.asfloat;
    ITNovaordemcompra.text   := ITordemcompra.text;
    ITNovacubagem.asfloat    := ITcubagem.AsFloat;
    ITNovaqtd_cx.asfloat     := ITqtd_cx.AsFloat;
    ITNovapComissao.Value    := ITpComissao.Value;
    ITNovasincronizado.Value := 'N';
    ITNovaidweb.Value        := 0;
    ITNovavCusto.Value       := ITvCusto.Value;
    ITNovavMargem.Value      := ITvMargem.Value;
    ITNovavUnitLiq.Value     := ITvUnitLiq.Value;
    ITNovavTotLiq.Value      := ITvTotLiq.Value;
    ITNovaMultiplo.Value     := ITMultiplo.Value;
    ITNova.Post;
    ITNova.ApplyUpdates;

    IT.Next;
  end;


  if not FormEstaCriado(TfOrcamento) then
  begin
     if StatusOrc = '' then
     begin
        StatusOrc := 'E';
        CodOrc    := codNovo;
        vCopiar   := true;
     end;
  end;
  fMenu.CriarForm(TfOrcamento );


end;

procedure TfGridOrcamento.acFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfGridOrcamento.acImprimirExecute(Sender: TObject);
begin
  if qOrc.IsEmpty then
     Exit;

  if qOrcStatus.text = 'C' then
     Exit;

  ImprimirOrcamento( qOrcId.Value );
end;

procedure ImprimirOrcamento(cod: Integer);
var
  tam : Integer;
Begin
  Application.CreateForm(TfImpressoes, fImpressoes);
  sleep(100);

  if dm.qParametrovenda_desc_margem.Text = 'S' then
  begin
     fImpressoes.RLLabel272.Caption    := 'Qtde';
     fImpressoes.RLLabel254.Caption    := 'Qtde Kg';
     fImpressoes.RLLabel270.Visible    := false;
     fImpressoes.RLDBText234.Visible   := false;
  end;

  if dm.qParametromostrar_cubagem.Text = 'N' then
  begin
     fImpressoes.RLLabel271.Visible    := false;
     fImpressoes.rldbtext239.Visible   := false;
     fImpressoes.RLDBResult33.Visible  := false;
  end;

  fImpressoes.qOrc.Close;
  fImpressoes.qOrc.ParamByName('id').Value := cod;
  fImpressoes.qOrc.open;

  vEnv_EmailDest := fImpressoes.qOrcemail.text;

  if dm.qParametrofolhaSeparacao_mod_5.Text = 'S' then //granelli
  begin
     fImpressoes.lEmail.Caption := fImpressoes.qOrcEmailTel.asString;
     vEnv_Report    := fImpressoes.rpImpOrcamento5;
     fImpressoes.rpImpOrcamento5.PreviewModal;
  end
  else
  if dm.qParametrofolha_separacao_mod_3.Text = 'S' then //brubalar
  begin
     vEnv_Report    := fImpressoes.rpImpOrcamento2;
     fImpressoes.rpImpOrcamento2.PreviewModal;
  end
  else
  if dm.qParametromostrar_multiplo.Text = 'N' then //sem multiplo
  begin
     vEnv_Report    := fImpressoes.rpImpOrcamento3;
     fImpressoes.rpImpOrcamento3.PreviewModal;
  end
  else
  begin
     vEnv_Report    := fImpressoes.rpImpOrcamento;
     fImpressoes.rpImpOrcamento.PreviewModal;
  end;

  fImpressoes.Free;

end;

procedure TfGridOrcamento.acEditExecute(Sender: TObject);
var
  rg : integer;
begin
  if (qOrc.IsEmpty) then
     exit;

  if (qOrcEx.Value = 1) or (qOrcStatus.Value = 'C') then
  begin
     Application.MessageBox('Orçamento Cancelado, Não é possivel alterar','Atenção');
     Exit;
  end;

  if (qOrcStatus.Value = 'F')  then
  begin
     Application.MessageBox('Orçamento já Finalizado, Verifique!','Atenção');
     Exit;
   end;

  rg := qOrc.RecNo;
  if not FormEstaCriado(TfOrcamento) then
  begin
     if StatusOrc = '' then
     begin
        StatusOrc := 'E';
        // Variabel colocada por Uelson para pegar id do vendedor
        idVendedorEDT := qOrc.FieldByName('idvendedor').AsInteger;
        CodOrc    := qOrcid.Value;
     end;
     vCopiar := true; // pra alterar qunatidade e preço
  end;
  fMenu.CriarForm(TfOrcamento );
  qOrc.RecNo := rg;


end;



procedure TfGridOrcamento.acEmailExecute(Sender: TObject);
begin
  if qOrc.IsEmpty then
     Exit;

  if qOrcStatus.text = 'C' then
     Exit;

  EnviaEmailOrcamento( qOrcId.Value );

end;

procedure TfGridOrcamento.acNovoExecute(Sender: TObject);
begin
  if not FormEstaCriado(TfOrcamento) then
  begin
     if StatusOrc = '' then
     begin
        StatusOrc := 'I';
        CodOrc    := 0;
     end;
  end;
  fMenu.CriarForm(TfOrcamento );

end;

procedure TfGridOrcamento.AtivaV;
var
  Emp : integer;
begin

  Emp := strtoint(copy( cbEmp.Items.Strings[cbemp.ItemIndex], 1,1 ));

  qOrc.close;
  if ckTodas.Checked then
     qOrc.ParamByName('dd').asinteger  := 0
  else
  begin
     qOrc.ParamByName('dd').asinteger  := 1;
     qOrc.ParamByName('di').asDate  := strtodate(formatdatetime('dd/mm/yyyy',eddt1.Date));
     qOrc.ParamByName('df').asDate  := strtodate(formatdatetime('dd/mm/yyyy',eddt2.Date));
  end;
  if trim(edVen.text) = '' then
     qOrc.ParamByName('vv').asinteger  := 0
  else
  begin
     qOrc.ParamByName('vv').asinteger  := 1;
     qOrc.ParamByName('pesqV').Value := '%'  + trim(edVen.Text) + '%' ;
  end;
  if trim(edCli.text) = '' then
     qOrc.ParamByName('cc').asinteger  := 0
  else
  begin
     qOrc.ParamByName('cc').asinteger  := 1;
     qOrc.ParamByName('pesqC').Value := '%'  + trim(edCli.Text) + '%' ;
  end;
  if trim(edPro.text) = '' then
     qOrc.ParamByName('pp').asinteger  := 0
  else
  begin
     qOrc.ParamByName('pp').asinteger  := 1;
     qOrc.ParamByName('pesqP').Value := '%'  + trim(edPro.Text) + '%' ;
  end;
  if trim(edVenda.text) = '' then
     qOrc.ParamByName('vd').asinteger  := 0
  else
  begin
     qOrc.ParamByName('vd').asinteger  := 1;
     qOrc.ParamByName('pesqA').Value   := trim(edVenda.Text) ;
  end;

  case cbStatus.ItemIndex of
    0: qOrc.ParamByName('st').value  := 'T';
    1: qOrc.ParamByName('st').value  := 'D';
    2: qOrc.ParamByName('st').value  := 'C';
    3: qOrc.ParamByName('st').value  := 'F';
  end;
  qOrc.ParamByName('emp').asinteger  := Emp;

  qOrc.Open;
end;


procedure TfGridOrcamento.cbEmpClick(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridOrcamento.cbStatusClick(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridOrcamento.CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     checkdbGrid1.Canvas.Brush.Color := $00FCA258;
     checkdbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if qOrcStatus.Value = 'C' then
        checkdbGrid1.Canvas.Brush.Color := $009F9FFF // verc
    else
    if (qOrcStatus.Value = 'F') then
       checkdbGrid1.Canvas.Brush.Color := $00A5F58D;
  end;
  checkdbGrid1.DefaultDrawDataCell(Rect, checkdbGrid1.Columns[DataCol].Field ,state);

end;

procedure TfGridOrcamento.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfGridOrcamento.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfGridOrcamento.ckTodasClick(Sender: TObject);
begin
  if ckTodas.Checked then
  begin
    edDt1.Enabled := false;
    edDt2.Enabled := false;
  end
  else
  begin
    edDt1.Enabled := true;
    edDt2.Enabled := true;
  end;
  ativaV;

end;

procedure TfGridOrcamento.edVenChange(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridOrcamento.edDt1Change(Sender: TObject);
begin
   eddt2.OnChange := nil;
   eddt2.Date     := eddt1.Date;
   eddt2.OnChange := edDt2Change;
   ativaV;
end;

procedure TfGridOrcamento.edDt1Exit(Sender: TObject);
begin
    ti := 0;
end;

procedure TfGridOrcamento.edDt1KeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) THEN
  BEGIN
     ti := ti +1;
     if ti >= 3 then
        eddt2.SetFocus
     else
        keybd_event(39,0,0,0);
  END;

end;

procedure TfGridOrcamento.edDt2Change(Sender: TObject);
begin
   if eddt2.Date < eddt1.Date then
   begin
      eddt1.OnChange := nil;
      eddt1.Date     := eddt2.Date;
      eddt1.OnChange := edDt1Change;
   end;
   ativaV;
end;

procedure TfGridOrcamento.edDt2Exit(Sender: TObject);
begin
   ti := 0;

end;

procedure TfGridOrcamento.edDt2KeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) THEN
  BEGIN
     ti := ti +1;
     if ti = 3 then
        edvenda.SetFocus
     else
        keybd_event(39,0,0,0);
  END;

end;

procedure TfGridOrcamento.EnviaEmailOrcamento(cod: Integer);
var
  tam : Integer;
Begin
  Application.CreateForm(TfImpressoes, fImpressoes);
  sleep(100);

  if dm.qParametrovenda_desc_margem.Text = 'S' then
  begin
     fImpressoes.RLLabel272.Caption    := 'Qtde';
     fImpressoes.RLLabel254.Caption    := 'Qtde Kg';
     fImpressoes.RLLabel270.Visible    := false;
     fImpressoes.RLDBText234.Visible   := false;
  end;

  if dm.qParametromostrar_cubagem.Text = 'N' then
  begin
     fImpressoes.RLLabel271.Visible    := false;
     fImpressoes.rldbtext239.Visible   := false;
     fImpressoes.RLDBResult33.Visible  := false;
  end;

  fImpressoes.qOrc.Close;
  fImpressoes.qOrc.ParamByName('id').Value := cod;
  fImpressoes.qOrc.open;

  dm.qEmpresa.Locate('id', fImpressoes.qOrcidemp.text, [] );

  vEnv_EmailDest := fImpressoes.qOrcemail.text;
  vEnv_Report    := fImpressoes.rpImpOrcamento;
  fImpressoes.rpImpOrcamento.Prepare;


  Application.CreateForm(TfEnviar, fEnviar);
  if vEnv_EmailDest <> '' then
     fEnviar.edDest.Text := vEnv_EmailDest;
  fEnviar.ShowModal;
  fEnviar.Free;

  fImpressoes.Free;

end;



end.
