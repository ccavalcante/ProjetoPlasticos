{
  status
  'D' = 'Digitado            '
  'G' = 'Aprovado Comercial  '
  'H' = 'Aprovado Financeiro '
  'J' = 'Reprovado           '
  'X' = 'Expedido            '
  'N' = 'NFe Emitida         '
  'C' = 'Cancelado           '
}

unit uGridVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, jpeg, ExtCtrls,
  ImgList, ComCtrls, XiButton, Mask, Grids, DBGrids, Buttons, ActnList, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Actions, CheckDBGrid,
  ZSqlUpdate, pcnConversao, RLReport, acbrutil;

type
  TfGridVenda = class(TForm)
    Label2: TLabel;
    ActionListEx: TActionList;
    Label5: TLabel;
    acFechar: TAction;
    Image3: TImage;
    qVenda: TZQuery;
    dVenda: TDataSource;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    edVen: TEdit;
    acCancel: TAction;
    acEdit: TAction;
    acImprimir: TAction;
    acNovo: TAction;
    Shape11: TShape;
    Label19: TLabel;
    qPro: TZQuery;
    CheckDBGrid2: TCheckDBGrid;
    edCli: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    edPro: TEdit;
    dPro: TDataSource;
    qVendaid: TIntegerField;
    qVendaidcliente: TIntegerField;
    qVendaidvendedor: TIntegerField;
    qVendaidcondpgto: TIntegerField;
    qVendadata: TDateTimeField;
    qVendavalor: TFloatField;
    qVendadesconto: TFloatField;
    qVendatotal: TFloatField;
    qVendaprazoentrega: TWideStringField;
    qVendanomeCli: TWideStringField;
    qVendanomeVend: TWideStringField;
    qVendadescond: TWideStringField;
    qProId: TIntegerField;
    qProIdVenda: TIntegerField;
    qProIdProduto: TIntegerField;
    qProTipo: TWideStringField;
    qProQtd: TFloatField;
    qProUnit: TFloatField;
    qProDesconto: TFloatField;
    qProTotal: TFloatField;
    qProx: TWideStringField;
    qProdescricao: TWideStringField;
    qVendaex: TIntegerField;
    ckTodas: TCheckBox;
    acNfe: TAction;
    acMinuta: TAction;
    acExpedir: TAction;
    L: TZQuery;
    LId: TIntegerField;
    LIdVenda: TIntegerField;
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
    qVendaexpedido: TWideStringField;
    qVendageradonfe: TWideStringField;
    Shape1: TShape;
    Label4: TLabel;
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
    ITNovaIdVenda: TIntegerField;
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
    ITIdVenda: TIntegerField;
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
    qVendat_nf: TFloatField;
    qVendadesStatus: TWideStringField;
    Label6: TLabel;
    edVenda: TEdit;
    acSepara: TAction;
    Lqtd_cx: TFloatField;
    Lcubagem: TFloatField;
    qPropComissao: TFloatField;
    qProordemcompra: TWideStringField;
    qProcubagem: TFloatField;
    qProqtd_cx: TFloatField;
    qProreferencia: TWideStringField;
    qProbarras: TWideStringField;
    qVendapcomissao: TFloatField;
    acComissao: TAction;
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
    Shape2: TShape;
    Label8: TLabel;
    qCon_i: TZQuery;
    qCon_iId: TIntegerField;
    qCon_iIDCond: TIntegerField;
    qCon_iPorc: TFloatField;
    qCon_iDias: TIntegerField;
    Lidcxmaster: TIntegerField;
    Label9: TLabel;
    Shape3: TShape;
    qVendastatus: TWideStringField;
    Vestatus: TWideStringField;
    VeNovastatus: TWideStringField;
    Vesincronizado: TWideStringField;
    VeNovasincronizado: TWideStringField;
    ITNovasincronizado: TWideStringField;
    ITNovaidWeb: TIntegerField;
    Veidweb: TIntegerField;
    VeNovaidweb: TIntegerField;
    qVendadesComercial: TWideStringField;
    qVendadesc_especial: TFloatField;
    qVendanf: TIntegerField;
    Shape4: TShape;
    Label10: TLabel;
    qVendaidweb: TIntegerField;
    Label11: TLabel;
    cbEmp: TComboBox;
    qVendaidemp: TIntegerField;
    qVendafantasia: TWideStringField;
    qPromultiplo: TFloatField;
    Lmultiplo: TFloatField;
    CheckDBGrid1: TCheckDBGrid;
    ITsincronizado: TWideStringField;
    ITidWeb: TIntegerField;
    ITvCusto: TFloatField;
    ITvMargem: TFloatField;
    ITvUnitLiq: TFloatField;
    ITvTotLiq: TFloatField;
    ITpDesconto: TFloatField;
    ITNovavCusto: TFloatField;
    ITNovavMargem: TFloatField;
    ITNovavUnitLiq: TFloatField;
    ITNovavTotLiq: TFloatField;
    ITNovapDesconto: TFloatField;
    VeNovaidcomercial: TIntegerField;
    VeNovaidemp: TIntegerField;
    VeNovaidorc: TIntegerField;
    LRoyalties: TFloatField;
    Lunit2: TFloatField;
    Lunitst: TFloatField;
    LpComissao: TFloatField;
    Lordemcompra: TWideStringField;
    Lsincronizado: TWideStringField;
    LidWeb: TIntegerField;
    LvCusto: TFloatField;
    LvMargem: TFloatField;
    LvUnitLiq: TFloatField;
    LvTotLiq: TFloatField;
    LpDesconto: TFloatField;
    Veidcomercial: TIntegerField;
    Veidemp: TIntegerField;
    Veidorc: TIntegerField;
    qProvCusto: TFloatField;
    qProvMargem: TFloatField;
    qProvUnitLiq: TFloatField;
    qProvTotLiq: TFloatField;
    qPropDesconto: TFloatField;
    acLiberar: TAction;
    Shape5: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Shape6: TShape;
    qVendatipofrete: TWideStringField;
    qVendatransp_vendedor: TWideStringField;
    qVendaiduserR: TIntegerField;
    qVendanomeR: TWideStringField;
    qVendamotivor: TWideStringField;
    qVendadataR: TDateTimeField;
    qVendatelTransp: TWideStringField;
    qVendaidcomercial: TIntegerField;
    qCial: TZQuery;
    qCialId: TIntegerField;
    qCialDescricao: TWideStringField;
    qCialPorcentagem: TFloatField;
    qCialsincronizado: TWideStringField;
    qCialidweb: TIntegerField;
    qCialex: TIntegerField;
    qCialtipo: TWideStringField;
    qVendaantecipado: TWideStringField;
    qRec: TZQuery;
    qRectot: TFloatField;
    qFicha: TZQuery;
    dFicha: TDataSource;
    qFichaiditem: TIntegerField;
    qFichaquantidade: TFloatField;
    qFichamateria_prima: TWideStringField;
    qFichatipo: TWideStringField;
    qVendaquantidade: TWideStringField;
    qVendaidNF: TIntegerField;
    acVoltar: TAction;
    pBar: TProgressBar;
    qProvolume: TIntegerField;
    qPropesoProd: TFloatField;
    qVendax: TWideStringField;
    ckSel: TCheckBox;
    Shape7: TShape;
    Label14: TLabel;
    uVendas: TZUpdateSQL;
    qVendanomefunc: TWideStringField;
    qVendapcomissaoG: TFloatField;
    qVendaporcentagem: TFloatField;
    qVendanomeTab: TWideStringField;
    acRel: TAction;
    qVendaemail: TWideStringField;
    qVendatotipi: TFloatField;
    qProvalipi: TFloatField;
    ITNovadevolvido: TWideStringField;
    ITNovavolume: TIntegerField;
    ITNovapComissaoG: TFloatField;
    ITNovavalipi: TFloatField;
    ITdevolvido: TWideStringField;
    ITvolume: TIntegerField;
    ITpComissaoG: TFloatField;
    ITvalipi: TFloatField;
    qVendanomeTransp: TWideStringField;
    qVendanomeRedes: TWideStringField;
    qVendav_adicional: TFloatField;
    qVendaDTExpedicao: TDateTimeField;
    Label15: TLabel;
    ckTodasExp: TCheckBox;
    edDtExp1: TDateTimePicker;
    edDtExp2: TDateTimePicker;
    qVendajustif_cancel: TWideStringField;
    acDescancelar: TAction;
    ckCanceladas: TCheckBox;
    SaveDialog1: TSaveDialog;
    acSat: TAction;
    Panel1: TPanel;
    XiButton15: TXiButton;
    XiButton14: TXiButton;
    XiButton7: TXiButton;
    XiButton6: TXiButton;
    XiButton4: TXiButton;
    XiButton3: TXiButton;
    XiButton5: TXiButton;
    XiButton12: TXiButton;
    Panel2: TPanel;
    XiButton8: TXiButton;
    XiButton9: TXiButton;
    XiButton2: TXiButton;
    XiButton10: TXiButton;
    XiButton11: TXiButton;
    XiButton13: TXiButton;
    pEfetiva: TPanel;
    qVendacupom: TIntegerField;
    G: TZQuery;
    GId: TIntegerField;
    GIdVenda: TIntegerField;
    GIdProduto: TIntegerField;
    GTipo: TWideStringField;
    GQtd: TFloatField;
    GUnit: TFloatField;
    GDesconto: TFloatField;
    GTotal: TFloatField;
    Gx: TWideStringField;
    GUnidade: TWideStringField;
    Gdescricao: TWideStringField;
    GpAliqNac: TFloatField;
    GpAliqEst: TFloatField;
    Gncm: TWideStringField;
    Gcfop: TWideStringField;
    GCSOSN: TWideStringField;
    Gcest: TWideStringField;
    Greferencia: TWideStringField;
    Gcpf: TWideStringField;
    Gtotvenda: TFloatField;
    GdesVenda: TFloatField;
    qFormas: TZQuery;
    qFormasfpgto: TWideStringField;
    qFormasval: TFloatField;
    Gbarras: TWideStringField;
    GICMS_UF: TFloatField;
    Gidemp: TIntegerField;
    mVenda: TMemo;
    acCancelarSat: TAction;
    mCancelaSat: TMemo;
    qVendaxml: TWideStringField;
    qVendaxml_can: TWideStringField;
    acImpSat: TAction;
    XiButton18: TXiButton;
    XiButton17: TXiButton;
    XiButton1: TXiButton;
    XiButton16: TXiButton;
    qProidcxmaster: TIntegerField;
    cbSat: TComboBox;
    Label16: TLabel;
    Lbx_item_ficha_venda: TWideStringField;
    qVendarazaoCli: TWideStringField;
    qVendanomecliente: TWideStringField;
    ITmultiplo: TFloatField;
    ITNovamultiplo: TFloatField;
    qProcor: TWideStringField;
    qProtamanho: TWideStringField;
    qVendanomeGer: TWideStringField;
    qProqtddev: TFloatField;
    qProqtd_cxdev: TFloatField;
    Shape8: TShape;
    Label17: TLabel;
    Shape9: TShape;
    Label18: TLabel;
    PopupMenu1: TPopupMenu;
    Comdevoluo1: TMenuItem;
    Semdvoluo1: TMenuItem;
    qVendaEmUso: TWideStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure AtivaV;
    procedure qVendaAfterScroll(DataSet: TDataSet);
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
    procedure acNfeExecute(Sender: TObject);
    procedure acMinutaExecute(Sender: TObject);
    procedure acExpedirExecute(Sender: TObject);
    procedure acCopiarExecute(Sender: TObject);
    procedure acSeparaExecute(Sender: TObject);
    procedure edDt1KeyPress(Sender: TObject; var Key: Char);
    procedure edDt2KeyPress(Sender: TObject; var Key: Char);
    procedure edDt2Exit(Sender: TObject);
    procedure edDt1Exit(Sender: TObject);
    procedure acComissaoExecute(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure acLiberarExecute(Sender: TObject);
    procedure acVoltarExecute(Sender: TObject);
    procedure ckSelClick(Sender: TObject);
    procedure qVendaNewRecord(DataSet: TDataSet);
    procedure acRelExecute(Sender: TObject);
    procedure ckTodasExpClick(Sender: TObject);
    procedure acDescancelarExecute(Sender: TObject);
    procedure acSatExecute(Sender: TObject);
    procedure acCancelarSatExecute(Sender: TObject);
    procedure acImpSatExecute(Sender: TObject);
    procedure cbSatClick(Sender: TObject);
    procedure CheckDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Comdevoluo1Click(Sender: TObject);
    procedure Semdvoluo1Click(Sender: TObject);
    procedure XiButton2Click(Sender: TObject);

  private
    vIdnf, ti: Integer;
    procedure MensagemSAT(texto: String; tipo: boolean);
    function GerarVendaSat: boolean;
  public
    { Public declarations }

    procedure GerarSat(codVenda: Integer);
  end;

var
  separacao: String;
  vimpPDF: String;
  vNomePDF: String;
  vDevolucao : boolean;
  fGridVenda: TfGridVenda;
procedure ImprimirPedido(cod: Integer);
procedure ImprimirPedidoDZ(cod: Integer);
procedure ImprimirSeparacao(cod: Integer);
procedure ImprimirSeparacaoSemValor(cod: Integer);
procedure ImprimirPedidoMatricial(cod: Integer; ImpPDF: String;
  NomePDF: String);
procedure ImprimirExpedicao(cod: Integer);
procedure ImprimirSeparacaoModelo5(cod: Integer);
procedure ImprimirPedidoModelo5(cod: Integer);
procedure email_financeiro(cR, cli: Integer; nR, nC, pD, mT: String);
procedure ImprimirPedidoRefBase(cod: Integer);

implementation

uses uDM, uFuncao, uNovaOP, uIniciaMontagem, uLancaMontagem, uVenda, uMenu,
  uImpressoes, uNF, uEscolheComissao, System.Math, uEscolheStatusPedido,
  uSenhaCad, uExpedicao, uEscolheEmail, uImpCC, uVenda_Justificativa,
  uExpedicaoCial, uImpRefBase, Classe.Venda;

{$R *.dfm}

procedure TfGridVenda.FormCreate(Sender: TObject);
begin

  Execsql('update venda set x = ''F'' where x = ''T'' ');
  edDt1.DateTime := Date - 30;
  edDt2.DateTime := Date;

  edDtExp1.DateTime := Date - 30;
  edDtExp2.DateTime := Date;

  vIdnf := 0;
  ti := 0;

  // pesq produto
  if dm.qParametropesqproduto.text = 'ID' then
  begin
    CheckDBGrid2.Columns[0].title.caption := 'Código';
    CheckDBGrid2.Columns[0].FieldName := 'IDPRODUTO';
  end
  else
  begin
    CheckDBGrid2.Columns[0].FieldName := trim(dm.qParametropesqproduto.text);
    if dm.qParametropesqproduto.text = 'BARRAS' then
      CheckDBGrid2.Columns[0].title.caption := 'Cód.Barras'
    else
      CheckDBGrid2.Columns[0].title.caption := 'Referência';
  end;

  if dm.qParametrovenda_frete.text = 'S' then
  begin
    CheckDBGrid1.Columns[13].Visible := true;
  end;

  if dm.qParametromod_pedidosWeb.text = 'N' then
  begin
    CheckDBGrid1.Columns[4].Visible := false;
    Shape4.Visible := false;
    Label10.Visible := false;
    Shape5.Visible := false;
    Label12.Visible := false;
    Shape6.Visible := false;
    Label13.Visible := false;
    acLiberar.Enabled := false;
    acLiberar.Visible := false;
    XiButton5.Left := XiButton8.Left;
    XiButton3.Left := XiButton9.Left;
    XiButton4.Left := XiButton2.Left;
    XiButton6.Left := XiButton10.Left;
    XiButton7.Left := XiButton11.Left;
    XiButton14.Left := XiButton13.Left;
    XiButton15.Left := XiButton1.Left;

    Shape1.Left := Shape1.Left - 296;
    Shape2.Left := Shape2.Left - 296;
    Shape11.Left := Shape11.Left - 296;
    Label4.Left := Label4.Left - 296;
    Label8.Left := Label8.Left - 296;
    Label19.Left := Label19.Left - 296;
    //CheckDBGrid1.Columns[24].Visible := false;
    //CheckDBGrid1.Columns[25].Visible := false;
  end
  else
  begin
    //CheckDBGrid1.Columns[30].Visible := false;
    //CheckDBGrid1.Columns[31].Visible := false;
  end;

  EmpresaComboZero(cbEmp);

  if dm.qParametrovenda_desc_margem.text = 'S' then // itu aço
  begin
    CheckDBGrid2.Columns[5].title.caption := 'Qtde Item';   //3
    CheckDBGrid2.Columns[7].title.caption := 'Qtde Kg';     //5
    CheckDBGrid2.Columns[20].title.caption := 'Qtde Item Devolvido';   //3
    CheckDBGrid2.Columns[21].title.caption := 'Qtde Kg Devolvido';     //5
    XiButton4.Enabled := false;
    acCancel.Enabled := false;
  end
  else
  begin
    CheckDBGrid2.Columns[9].Visible := false;  //7
    CheckDBGrid2.Columns[10].Visible := false;  //8
    CheckDBGrid2.Columns[11].Visible := false;  //9
    CheckDBGrid2.Columns[14].Visible := false; //12
    CheckDBGrid2.Columns[15].Visible := false; //13
  end;

  if dm.qParametrofolha_separacao_mod_3.text = 'S' then // bruba lar
  begin
    CheckDBGrid2.Columns[5].title.caption := 'Qtde Dz';   //3
    CheckDBGrid2.Columns[7].title.caption := 'Qtde Pçs';  //5
    CheckDBGrid2.Columns[6].Visible := false;             //4
    CheckDBGrid2.Columns[13].Visible := false;            //11
    CheckDBGrid2.Columns[16].Visible := true;             //14
  end;

  if dm.qParametrobloq_alterar_venda.text = 'S' then
    acEdit.Enabled := false;

  if dm.qParametrofolha_separacao_mod_3.text = 'S' then
    XiButton10.caption := 'F10-Folha Expedição';

  if dm.qParametroimp_minuta.text = 'N' then
  begin
    acMinuta.Enabled := false;
    acMinuta.Visible := false;
  end;

  if dm.qParametromostrar_cubagem.text = 'N' then // cubagem
  begin
    CheckDBGrid2.Columns[18].Visible := false; //16
  end;

  if dm.qParametromostrar_multiplo.text = 'N' then // granelli
  begin
    CheckDBGrid2.Columns[5].Visible := false;  //3
    CheckDBGrid2.Columns[6].Visible := false;  //4
    CheckDBGrid2.Columns[7].title.caption := 'Qtde'; //5
  end;

  if dm.qParametrovenda_justificar_cancel.text = 'S' then
    CheckDBGrid1.Columns[35].Visible := true
  else
    CheckDBGrid1.Columns[35].Visible := false;

  acSat.Visible := (dm.qParametroSAT.asString = 'S');
  acCancelarSat.Visible := (dm.qParametroSAT.asString = 'S');
  acImpSat.Visible := (dm.qParametroSAT.asString = 'S');

  if dm.qParametroSAT.asString = 'S' then
  begin
    cbSat.Visible := true;
    Label16.Visible := true;
  end
  else
  begin
    cbSat.Visible := false;
    Label16.Visible := false;
  end;

  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    CheckDBGrid2.Columns[3].Visible := true; //cor
    CheckDBGrid2.Columns[4].Visible := true; //Tamanho
  end
  else
  begin
    CheckDBGrid2.Columns[3].Visible := false; //cor
    CheckDBGrid2.Columns[4].Visible := false; //Tamanho
  end;


  if dm.qParametrosat.asString = 'S' then
    CheckDBGrid1.Columns[2].Visible := true
  else
    CheckDBGrid1.Columns[2].Visible := false;

  vDevolucao := false;

end;

procedure TfGridVenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) and not((ActiveControl is TDBMemo) or
    (ActiveControl is TDBGrid) or (ActiveControl = edDt1) or
    (ActiveControl = edDt2)) THEN
  BEGIN
    SelectNext(ActiveControl, true, true);
    Key := #0;
  END;

end;

procedure TfGridVenda.GerarSat(codVenda: Integer);
var
  X: Integer;

begin

  if qVendaex.Value = 1 then
  begin
    Application.MessageBox('Venda cancelada!', 'Atenção');
    Exit;
  end;

  if qVendacupom.Value > 0 then
  begin
    Application.MessageBox('SAT já gerado!', 'Atenção');
  end
  else
  begin
    if Application.MessageBox('Deseja gerar SAT?', 'Confirmação', MB_YESNO) = idno
    then
      Exit;

    X := qVenda.RecNo;

    MensagemSAT('Incializando SAT...', true);

    Sleep(100);
    try
      dm.AjustaACBrSAT(qVendaidemp.asInteger);
    except
      MouseShowCursor(true);
      Application.MessageBox
        ('Erro ao carregar parâmetros da empresa. Por favor, verifique!', 'Atenção');
      pEfetiva.caption := '';
      Exit;
    end;

    try
      dm.ACBrSAT1.Inicializar;
      if not dm.ACBrSAT1.Inicializado then
      begin
        MouseShowCursor(true);
        Application.MessageBox('Erro ao inicializar o SAT. Por favor, verifique!',
          'Atenção');
        pEfetiva.caption := '';
        Exit;
      end;

      MensagemSAT('Gerando CFe...', true);
      if GerarVendaSat = false then
      begin
        MouseShowCursor(true);
        Application.MessageBox('Erro ao gerar o SAT. Por favor, verifique!', 'Atenção');
        pEfetiva.caption := '';
        Exit;
      end;
    except
      MouseShowCursor(true);
      Application.MessageBox('Erro ao gerar o SAT. Por favor, verifique!', 'Atenção');
      pEfetiva.caption := '';
      Exit;
    end;
    MensagemSAT('', false);
    AtivaV;
    qVenda.RecNo := X;

  end;

end;

function TfGridVenda.GerarVendaSat: boolean;
var
  TotalItem, vDescAcres: real;
  A: Integer;
  Ok: boolean;
  // nDoc: Integer;
  ret, cXml: String;
  tot: real;
  cod: Integer;
begin

  cod := qVendaid.asInteger;
  Result := false;

  G.Close;
  G.ParamByName('Id').Value := cod;
  G.Open;

  dm.ACBrSAT1.CFe.IdentarXML := true;
  dm.ACBrSAT1.CFe.TamanhoIdentacao := 3;

  // MensagemSAT('Inserindo Itens ...', True);
  dm.ACBrSAT1.InicializaCFe;

  with dm.ACBrSAT1.CFe do
  begin
    ide.numeroCaixa := 1;
    // ide.nCFe        := nDoc;

    if (length(trim(Gcpf.text)) = 11) and (length(trim(Gcpf.text)) = 14) then
      Dest.CNPJCPF := Gcpf.Value;
    Dest.xNome := 'AO Consumidor';

    dm.qEmp.Close;
    dm.qEmp.ParamByName('emp').asInteger := Gidemp.asInteger;
    dm.qEmp.Open;

    emit.xNome := dm.qEmpRazao.text;
    emit.xFant := dm.qEmpFantasia.text;
    emit.EnderEmit.xLgr := dm.qEmpEndereco.text;
    emit.EnderEmit.nro := dm.qEmpNum.text;
    emit.EnderEmit.xBairro := dm.qEmpBairro.text;
    emit.EnderEmit.xMun := dm.qEmpCidade.text;
    emit.EnderEmit.CEP := strtoint(dm.qEmpCEP.Value);

    Entrega.xLgr := ''; // 'logradouro';
    Entrega.nro := ''; // '112233';
    Entrega.xCpl := ''; // 'complemento';
    Entrega.xBairro := ''; // 'bairro';
    Entrega.xMun := ''; // 'municipio';
    Entrega.UF := ''; // 'RJ';

    // teste agrupamento sat
    G.First;
    For A := 0 to G.RecordCount - 1 do
    begin
      with Det.New do
      begin
        nItem := A + 1;
        Prod.cProd := GIdProduto.text;
        if length(Gbarras.text) = 13 then
          Prod.cEAN := Gbarras.Value
        else
          Prod.cEAN := '';
        Prod.xProd := Gdescricao.Value;
        Prod.NCM := Gncm.Value;
        Prod.CFOP := Gcfop.Value;
        if trim(GUnidade.Value) = '' then
          Prod.uCom := 'UN'
        else
          Prod.uCom := trim(GUnidade.Value);
        Prod.qCom := GQtd.AsFloat;
        Prod.vUnCom := GUnit.AsFloat;
        Prod.vDesc := GDesconto.asFloat;//0;
        if Gcest.text = '' then
          Prod.CEST := '0000000'
        else
          Prod.CEST := Gcest.text;

        // Prod.vProd := pTot;
        Prod.indRegra := irTruncamento;
        // StrToindRegra(Ok, 'T'); // 'A'-irArredondamento, 'T'-irTruncamento]);
        // Prod.vItem := pTot;
        {
          with Prod.obsFiscoDet.Add do begin
          xCampoDet := '';
          xTextoDet := '';
          end;
        }

        MensagemSAT('Item: ' + GIdProduto.text, true);
        TotalItem := Gtotvenda.Value;

        with Imposto do
        begin

          vItem12741 := TotalItem * (GpAliqNac.AsFloat + GpAliqEst.AsFloat) /
            100; // ibpt

          ICMS.orig := oeNacional;
          ICMS.CSOSN := StrToCSOSNIcms(Ok, GCSOSN.Value);
          // Empresas Simples Nacional
          if GCSOSN.Value = '101' then // Tributada com permissão de Crédito
            //
          else if GCSOSN.Value = '102' then
            // Tributada SEM permissão de Crédito
            //
          else if GCSOSN.Value = '103' then
            // Tributada SEM permissão de Crédito
            //
          else if GCSOSN.Value = '300' then
            // Tributada SEM permissão de Crédito
            //
          else if GCSOSN.Value = '400' then
            // Tributada SEM permissão de Crédito
            //
          else if GCSOSN.Value = '500' then // ICMS Cobrado anteriormente
            //
          else if GCSOSN.Value = '900' then // Outros
            //
          else if GCSOSN.Value = '201' then
          begin
            ICMS.pICMS := GICMS_UF.Value;
            ICMS.vICMS := Gtotvenda.Value * GICMS_UF.Value / 100;
          end
          else if GCSOSN.Value = '202' then
          begin
            ICMS.pICMS := GICMS_UF.Value;
            ICMS.vICMS := Gtotvenda.Value * GICMS_UF.Value / 100;
          end
          else if GCSOSN.Value = '203' then
          begin
            ICMS.pICMS := GICMS_UF.Value;
            ICMS.vICMS := Gtotvenda.Value * GICMS_UF.Value / 100;
          end;

          PIS.CST := pis49;
          COFINS.CST := cof49;

        end; // imposto

        infAdProd := '';

      end; // det
      G.Next;
      // showmessage(floattostr(totalitem) + '  -  '  + floattostr(vtot));

    end;

    Total.vCFe := Gtotvenda.Value;
    vDescAcres := GdesVenda.AsFloat;
    {if (vDescAcres) > 0 then
      Total.DescAcrEntr.vAcresSubtot := vDescAcres
    else }
      Total.DescAcrEntr.vDescSubtot := vDescAcres * (-1);

    Total.vCFeLei12741 := (vImp + vImp2);

    // formas
    tot := 0;
    qFormas.Close;
    qFormas.ParamByName('id').Value := cod;
    qFormas.Open;
    qFormas.First;
    while qFormas.Eof = false do
    begin
      if (trim(qFormasfpgto.text) = 'DINHEIRO') then
      begin
        with Pagto.New do
        begin
          cMP := mpDinheiro;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end
      else if (trim(qFormasfpgto.text) = 'CHEQUE') then
      begin
        with Pagto.New do
        begin
          cMP := mpCheque;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end
      else if copy(trim(qFormasfpgto.text), 1, 8) = 'FATURADO' then
      begin
        with Pagto.New do
        begin
          cMP := mpCreditoLoja;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end
      else if (pos('CRE', qFormasfpgto.text) <> 0) then
      // (copy(trim(qFormasfpgto.Text), 1, 3) = 'CRE')
      begin
        with Pagto.New do
        begin
          cMP := mpCartaodeCredito;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end
      else if (pos('DEB', qFormasfpgto.text) <> 0) then
      // copy(trim(qFormasfpgto.Text), 1, 3) = 'DEB'
      begin
        with Pagto.New do
        begin
          cMP := mpCartaodeDebito;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end
      else if (pos('BOLETO', qFormasfpgto.text) <> 0) then
      // copy(trim(qFormasfpgto.Text), 1, 3) = 'DEB'
      begin
        with Pagto.New do
        begin
          cMP := mpCreditoLoja;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end
      else if (pos('PIX', qFormasfpgto.text) <> 0) then
      // copy(trim(qFormasfpgto.Text), 1, 3) = 'DEB'
      begin
        with Pagto.New do
        begin
          cMP := mpOutros;
          vMP := RoundABNT(qFormasval.Value,2);
        end;
      end;
      tot := tot + RoundABNT(qFormasval.AsFloat,2);
      qFormas.Next;
    end;

    if (Gtotvenda.AsFloat - tot) > 0 then
    begin
      with Pagto.New do
      begin
        cMP := mpCreditoLoja;//mpDinheiro;
        //  //Não vai ter mais Fiannceiro Granelli  //11/08/2021 Retirado o gerarsat da venda
        vMP := RoundABNT(Gtotvenda.AsFloat,2) - tot;
      end;
    end;

    InfAdic.infCpl := '';
    { with InfAdic.obsFisco.Add do begin // automatico
      xCampo := '';
      xTexto := '';
      end;
    }
  end;

  mVenda.Clear;
  mVenda.Lines.text := string(dm.ACBrSAT1.CFe.GerarXML(true));
  // True = Gera apenas as TAGs da aplicação
  Sleep(100);

  MensagemSAT('Enviando XML ...', true);
  dm.ACBrSAT1.EnviarDadosVenda(ansiString(mVenda.text));
  Sleep(100);

  if dm.ACBrSAT1.Resposta.codigoDeRetorno = 6000 then
  begin
    // mVenda.Lines.Add(ACBrSAT1.Resposta.RetornoLst.Text);
    // mVenda.Lines.Add(ACBrSAT1.Resposta.RetornoStr);
    MensagemSAT('Salvando Retorno XML', true);

    cXml := 'CFe' + dm.ACBrSAT1.CFe.infCFe.Id + '.xml';
    Execsql(' update venda set cupom = ' + inttostr(dm.ACBrSAT1.CFe.ide.nCFe) +
      ' , xml = ' + quotedstr(cXml) +
      ' , data_efetiva = '+ quotedStr(formatdatetime('dd/mm/yyyy', date))+
      ' where id = ' + qVendaid.text);

    MensagemSAT('Imprimindo Extrato...', true);
    MouseShowCursor(true);

    dm.ACBrSAT1.CFe.LoadFromFile(pchar(dm.ACBrSAT1.configArquivos.PastaCFeVenda
      + '\' + formatdatetime('yyyymm', qVendadata.Value) + '\' + cXml));

    MensagemSAT('Finalizando SAT', true);
    Result := true;

    if dm.qEmpCFe_visualiza.text = 'S' then
    begin
      if Application.MessageBox('Deseja imprimir o extrato?', 'Confirmação',
        MB_YESNO + MB_DEFBUTTON2) = idYes then
      begin
        dm.ACBrSAT1.ImprimirExtrato;
      end;
    end
    else
      dm.ACBrSAT1.ImprimirExtrato;
    Sleep(100);

  end
  else if dm.ACBrSAT1.Resposta.codigoDeRetorno > 0 then
  begin
    ret := Retorno_SAT(dm.ACBrSAT1.Resposta.codigoDeRetorno);
    Application.MessageBox(pchar(ret), 'Atenção');
  end;
  G.Close;
  qFormas.Close;

  AtivaV;

end;

procedure TfGridVenda.MensagemSAT(texto: String; tipo: boolean);
begin
  pEfetiva.caption := texto;
  pEfetiva.Visible := tipo;
  pEfetiva.refresh;
end;

procedure TfGridVenda.qVendaAfterScroll(DataSet: TDataSet);
begin
  qPro.Close;
  qPro.ParamByName('id').Value := qVendaid.Value;
  qPro.Open;

end;

procedure TfGridVenda.qVendaNewRecord(DataSet: TDataSet);
begin
  qVenda.Cancel;
end;

procedure TfGridVenda.Semdvoluo1Click(Sender: TObject);
begin
  vDevolucao := false;
  acImprimir.execute;
end;

procedure TfGridVenda.XiButton2Click(Sender: TObject);
var
   P1, P2: TPoint;
begin
 if dm.qParametropd_imp_matricial.text = 'S' then
 begin

  P1.X := panel2.Left + XiButton2.Left;
  P1.Y := {XiButton2.Top} panel2.Top;// - 65;
  P2 := ClientToScreen(P1);
  PopupMenu1.Popup(P2.X, P2.Y);
 end
 else
  acImprimir.Execute;
end;

procedure TfGridVenda.FormActivate(Sender: TObject);
begin
  AtivaV;
end;

procedure TfGridVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fGridVenda := nil;
end;

procedure TfGridVenda.acMinutaExecute(Sender: TObject);
var
  nfSql, vSql: String;
  I, nqt, cnf: Integer;
begin
  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda cancelada. Não é possivel emitir Boletos.',
      'Atenção');
    Exit;
  end;

  if not(qVendaidNF.asInteger > 0) then
  begin
    Application.MessageBox('Venda não gerada NFE. Por favor, verifique!', 'Atenção');
    Exit;
  end;

  if Application.MessageBox('Deseja imprimir a minuta + etiquetas?',
    'Confirmação', MB_YESNO) = idYes then
  begin
    // minuta
    cnf := qVendaidNF.asInteger;
    nqt := qVendaquantidade.asInteger;

    nfSql := ' select distinct nf.nf,  cast( nf.quantidade as numeric ) quantidade, venda.totcubagem, nf.idtransred , '
      + ' nf.idtransportadora, t.nome t_nome, t.endereco t_end, upper(t.cidade+''/''+t.uf) t_cid, '
      + ' t.cep t_cep, t.bairro t_bai, t.telefone t_tel, t.cnpj t_cnpj, t.ie t_ie, '
      + ' r.nome r_nome, r.endereco r_end, upper(r.cidade+''/''+r.uf) r_cid, r.cep r_cep, r.bairro r_bai, '
      + ' r.telefone r_tel, nf.nome c_nome, nf.endereco+nf.numero c_end, upper(nf.cidade+''/''+nf.uf) c_cid, '
      + ' nf.cep c_cep, nf.bairro c_bai, nf.fone c_tel, nf.email c_email, ' +
      ' e.razao e_nome, e.endereco+e.num e_end, upper( e.cidade+''/''+e.uf) e_cid, '
      + ' e.cep e_cep, e.bairro e_bai, e.telefone e_tel, e.email e_email, ' +
      ' e.cnpj e_cnpj, e.ie e_ie, NF.frete, NF.t_nf, NF.especie, NF.pliquido, NF.pbruto, nf.emissao '
      + ' from NF ' + ' left join venda on venda.notafiscal = nf.id ' +
      ' left join transportadora r on r.id = nf.idtransred ' +
      ' left join transportadora t on t.id = nf.idtransportadora ' +
      ' left join empresa e on e.id = nf.idemp ' + ' where NF.ID = :id';

    Application.CreateForm(TfImpCC, fImpCC);

    if dm.qParametrominuta_des_mold_2.text = 'N' then
    begin
      fImpCC.qMin.Close;
      fImpCC.qMin.SQL.Clear;
      fImpCC.qMin.SQL.Add(nfSql);
      fImpCC.qMin.ParamByName('id').Value := cnf;
      fImpCC.qMin.Open;
      fImpCC.qMin.First;

      vEnv_EmailDest := fImpCC.qMinc_email.text;
      vEnv_Report := fImpCC.rpMinuta;
      fImpCC.rpMinuta.PreviewModal;

      if nqt > 1 then
      begin
        for I := 1 to nqt do
        begin
          if I = 1 then
            vSql := nfSql
          else
            vSql := vSql + ' union all ' + nfSql;
        end;
      end
      else
        vSql := nfSql;

      fImpCC.qMin.Close;
      fImpCC.qMin.SQL.Clear;
      fImpCC.qMin.SQL.Add(vSql);
      fImpCC.qMin.ParamByName('id').Value := cnf;
      fImpCC.qMin.Open;
      fImpCC.qMin.First;

      Sleep(200);
      fImpCC.qMin.First;
      vEnv_EmailDest := fImpCC.qMinc_email.text;
      vEnv_Report := fImpCC.rpEtiq;
      fImpCC.rpEtiq.PreviewModal;

    end
    else // brubalar
    begin

      fImpCC.qMin.Close;
      fImpCC.qMin.SQL.Clear;
      fImpCC.qMin.SQL.Add(nfSql);
      fImpCC.qMin.ParamByName('id').Value := cnf;
      fImpCC.qMin.Open;
      fImpCC.qMin.First;

      vEnv_EmailDest := fImpCC.qMinc_email.text;
      vEnv_Report := fImpCC.rpMinuta2;
      fImpCC.rpMinuta2.PreviewModal;

      //
      dm.qPesq.Close;
      dm.qPesq.SQL.Clear;
      dm.qPesq.SQL.Add('select nf.quantidade qt from nf where nf.id = ' +
        inttostr(cnf));
      dm.qPesq.Open;
      nqt := dm.qPesq.FieldByName('qt').asInteger;

      // etiqueta
      fImpCC.qMin.Close;
      fImpCC.qMin.SQL.Clear;
      fImpCC.qMin.SQL.Add(nfSql); // vSql);
      fImpCC.qMin.ParamByName('id').Value := cnf;
      fImpCC.qMin.Open;
      fImpCC.qMin.First;

      Sleep(200);
      fImpCC.qMin.First;

      fImpCC.RLBand10.CarbonCopies := nqt;

      vEnv_EmailDest := fImpCC.qMinc_email.text;
      vEnv_Report := fImpCC.rpEtiq2;
      fImpCC.rpEtiq2.PreviewModal;

    end;
    fImpCC.Free;
  end;

end;

procedure TfGridVenda.acCancelarSatExecute(Sender: TObject);
var
  nXml, caminho, ret, exc, ms, vJust, vStatusVenda: String;
begin

  if (qVendaex.Value = 1) or ((trim(qVendaxml.text) <> '') and
    (trim(qVendaxml_can.text) <> '')) then
  begin
    Application.MessageBox('Lançamento já está cancelado!', 'Atenção');
    Exit;
  end
  else if (trim(qVendaxml.text) = '') and (trim(qVendaxml_can.text) = '') then
  begin
    Application.MessageBox('XML não informado.', 'Atenção');
    Exit;
  end;

  if (trim(qVendaxml.text) <> '') and (trim(qVendaxml_can.text) = '') then
  begin
    nXml := trim(qVendaxml.text);
  end;

  IF Application.MessageBox('Confirma cancelamento?', 'Confirmação', MB_YESNO) = idno
  then
    Exit;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then
    Exit;

  caminho := ExtractFilePath(Application.ExeName) + 'SAT\CFeVenda\' +
    formatdatetime('yyyymm', qVendadata.Value) + '\' + nXml;

  if not FileExists(pchar(caminho)) then
  begin
    Application.MessageBox('XML não encontrado.', 'Atenção');
    Exit;
  end;

  dm.AjustaACBrSAT(qVendaidemp.asInteger);

  dm.ACBrSAT1.Inicializar;
  if not dm.ACBrSAT1.Inicializado then
  begin
    Application.MessageBox('Erro ao inicializar o SAT. Por favor, verifique!', 'Atenção');
    Exit;
  end;

  dm.ACBrSAT1.CFe.LoadFromFile(caminho);
  dm.ACBrSAT1.CFe2CFeCanc;
  mCancelaSat.Lines.text := string(dm.ACBrSAT1.CFeCanc.GerarXML(true));

  dm.ACBrSAT1.CancelarUltimaVenda(ansiString(dm.ACBrSAT1.CFeCanc.infCFe.chCanc),
    ansiString(mCancelaSat.Lines.text));
  if dm.ACBrSAT1.Resposta.codigoDeRetorno = 7000 then
  begin

    IF Application.MessageBox('Deseja cancelar a venda?', 'Confirmação',
      MB_YESNO) = idno then
    begin
      exc := '0';
      vStatusVenda := '';
    end
    else
    begin
      exc := '1';
      vStatusVenda := ', status = ''C'''
    end;

    if exc = '1' then
    begin
      if dm.qParametrovenda_justificar_cancel.text = 'S' then
      begin
        Application.CreateForm(TfVenda_Justificativa, fVenda_Justificativa);
        fVenda_Justificativa.vSat := 'S';

        fVenda_Justificativa.lPergunta.caption := 'Cancelamento de venda: ' +
          qVendaid.text + ' - ' + qVendanomeCli.text;

        fVenda_Justificativa.ShowModal;

        vJust := ', justif_cancel = ' +
          quotedstr(fVenda_Justificativa.vJustificativa);
        fVenda_Justificativa.Free;

      end
      else
        vJust := '';
    end;

    Execsql('update venda set xml_can = ' +
      quotedstr(dm.ACBrSAT1.CFeCanc.infCFe.chCanc + '-can.xml') + ', ex = ' +
      exc + ', sat_canc = ''S'' ' + vJust + vStatusVenda + ' where id = ' + qVendaid.text);

    Sleep(100);

    if exc = '1' then
    begin
      // apaga
      if (qVendaexpedido.Value = 'S') or
        (dm.qParametronao_usar_expedicao.text = 'S') then
      begin
        // apaga emp. 1
        Execsql(' Delete from estoque where idemp = 1 and idVenda = ' +
          qVendaid.text);

        // atualiza emp. 1
        Execsql(' update produto set produto.qtdestoque = coalesce((select sum(estoque.quantidade) from Estoque '
          + ' where Estoque.idemp = 1 and Estoque.idproduto = produto.id),0) where produto.id in (select venda_i.idproduto from venda_i '
          + ' where venda_i.idvenda = ' + qVendaid.text +
          ' group by  venda_i.idproduto) ');
      end;
      // financeiro
      Execsql(' Update creceber set ex = 1 where idcliente = ' +
        qVendaidcliente.text + ' and idvenda = ' + qVendaid.text);

      //Grava Log
      GravaLogVenda(dm.qUserId.asInteger, qVendaid.asInteger, 0, 'CANCELAR',
                    'Cancelamento da Venda', qVendaidCliente.asInteger);

      ms := 'SAT e Venda Cancelado Com Sucesso! Deseja Imprimir Cancelamento?'
    end
    else
      ms := 'SAT Cancelado Com Sucesso! Deseja Imprimir Cancelamento?';

    IF Application.MessageBox(pchar(ms), 'Confirmação',
      MB_YESNO + MB_DEFBUTTON2) = idYes then
      dm.ACBrSAT1.ImprimirExtratoCancelamento;

  end
  else
  begin
    if dm.ACBrSAT1.Resposta.codigoDeRetorno > 0 then
    begin
      ret := Retorno_SAT(dm.ACBrSAT1.Resposta.codigoDeRetorno);
      Application.MessageBox(pchar(ret), 'Atenção');
    end;

    mCancelaSat.Lines.Clear;
    mCancelaSat.Lines.text := dm.ACBrSAT1.Resposta.RetornoStr;
    Application.MessageBox(pchar('Erro ao cancelar o SAT. Por favor, verifique!' + #13 +
      #10 + mCancelaSat.Lines.text), 'Atenção');
  end;

  AtivaV;
end;

procedure TfGridVenda.acCancelExecute(Sender: TObject);
var
  rg: Integer;
  vJust: string;
begin

  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendaex.Value = 1) then
  begin
    Application.MessageBox('Venda já esta cancelada.', 'Atenção');
    Exit;
  end;

  //Verifica se existe baixa, se sim, solicita fazer o estorno da baixa
  dm.qPesq.close;
  dm.qPesq.SQL.clear;
  dm.qPesq.SQL.add('select * from creceber where baixa = ''S'' and ex = 0 and idvenda = ' + qVendaid.text +
                   ' and idcliente = ' + inttostr(qVendaidcliente.asInteger));
  dm.qPesq.open;
  if not dm.qPesq.IsEmpty then
  begin
    Application.MessageBox('Venda com parcelas já baixadas. Por favor, estorne a baixa para fazer o cancelamento.', 'Atenção');
    exit;
  end;


  if Application.MessageBox('Deseja realmente cancelar esta venda?', 'Atenção',
    MB_YESNO) = idno then
    Exit;

  if dm.qParametrovenda_justificar_cancel.text = 'S' then
  begin
    Application.CreateForm(TfVenda_Justificativa, fVenda_Justificativa);
    fVenda_Justificativa.lPergunta.caption := 'Cancelamento de venda: ' +
      qVendaid.text + ' - ' + qVendanomeCli.text;
    fVenda_Justificativa.ShowModal;

    if fVenda_Justificativa.vJustificativa = '' then
    begin
      Application.MessageBox('Justificativa não informada!', 'Verifique');
      fVenda_Justificativa.Free;
      Exit;
    end;

    vJust := ', justif_cancel = ' +
      quotedstr(fVenda_Justificativa.vJustificativa);
    fVenda_Justificativa.Free;

  end
  else
    vJust := '';

  rg := qVenda.RecNo;
  Execsql(' Update venda set sincronizado = ''N'',  ex = 1, status = ''C''  ' +
    vJust + '  where id = ' + qVendaid.text);
  GravaLogVenda(dm.qUserId.asInteger, qVendaid.asInteger, 0, 'CANCELAR',
    'Cancelamento da Venda', qVendaidCliente.asInteger);

  if (qVendaexpedido.Value = 'S') or (dm.qParametronao_usar_expedicao.text = 'S')
  then
  begin
    // apaga emp. 1
    Execsql(' Delete from estoque where idemp = 1 and idVenda = ' +
      qVendaid.text);

    // atualiza emp. 1
    Execsql(' update produto set produto.qtdestoque = coalesce((select sum(estoque.quantidade) from Estoque '
      + ' where Estoque.idemp = 1 and Estoque.idproduto = produto.id),0) where produto.id in (select venda_i.idproduto from venda_i '
      + ' where venda_i.idvenda = ' + qVendaid.text +
      ' group by  venda_i.idproduto) ');
  end;
  // financeiro
  Execsql(' Update creceber set ex = 1 where idcliente = ' +
    qVendaidcliente.text + ' and idvenda = ' + qVendaid.text);

  L.Close;
  L.ParamByName('Id').Value := qVendaid.Value;
  L.Open;
  L.First;
  while L.Eof = false do
  begin
    AtualizaQtdDisponivel(LIdProduto.asInteger, false);
    L.Next;
  end;

  AtivaV;
  qVenda.RecNo := rg;

  try
    acFechar.Enabled := false;
    atualizaWeb;
  finally
    acFechar.Enabled := true;
  end;

end;

procedure TfGridVenda.acComissaoExecute(Sender: TObject);
var
  idv, nPar, I: Integer;
  nC, nCG, tot, resto, parcela: real;
  dataold, venci: TDate;
  comiGer: String;

begin
  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendadesStatus.text = 'Cancelado') and (qVendadesStatus.text = 'Aberto')
  then
    Exit;

  idv := qVendaid.asInteger;

  // verifica se comissao ja paga
  dm.qPesq.Close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add
    ('select idvenda, total from comi_pagar where ex = 0 and baixa = ''S'' and idvenda = '
    + inttostr(idv));
  dm.qPesq.Open;
  if dm.qPesq.RecordCount > 0 then
  begin
    Application.MessageBox('Comissão já paga! Não será possivel alterar.',
      'Atenção');
    Exit;
  end;

  Application.CreateForm(TfEscolheComissao, fEscolheComissao);

  fEscolheComissao.edComi.text := formatfloat('#0.00', qVendapcomissao.AsFloat);
  if dm.qParametromod_gerente_cial.text = 'S' then
    fEscolheComissao.edComiG.text :=
      formatfloat('#0.00', qVendapcomissaoG.AsFloat)
  else
  begin
    fEscolheComissao.pGer.Visible := false;
    fEscolheComissao.pVen.Align := alClient;
  end;
  fEscolheComissao.edComi.SelectAll;
  fEscolheComissao.ShowModal;
  fEscolheComissao.Free;
  if conf_comi = 'S' then
  begin
    nC := fEscolheComissao.nComis;
    nCG := fEscolheComissao.nComisG;
  end
  else if conf_comi = 'N' then
    Exit;

  if Application.MessageBox('Confirma alteração da comissão?', 'Atenção',
    MB_YESNO + MB_DEFBUTTON2) = idno then
    Exit;

  if dm.qParametromod_gerente_cial.text = 'S' then
    comiGer := ', pcomissaoG = ' + pontoVirgula(formatfloat('#0.00', nCG));

  // ajusta comissao % venda, valor comissao_pagar
  Execsql('update venda set pcomissao = ' + pontoVirgula(formatfloat('#0.00',
    nC)) + comiGer + ' where id = ' + inttostr(idv));
  Execsql('update venda_i set pcomissao = ' + pontoVirgula(formatfloat('#0.00',
    nC)) + comiGer + ' where idvenda = ' + inttostr(idv));

  { gera so quando paga
    Execsql('update comi_pagar set ex = 1 where tipo = ''V'' and idvenda = ' + inttostr(idv) );
    qVenda.Locate('id', idv, []);
    if nC > 0 then
    begin
    qCon_i.close;
    qCon_i.ParamByName('id').value := qVendaidcondpgto.Value;
    qCon_i.open;

    if qVendaData.Value < date then
    dataOld := qVendaData.value
    else
    dataOld := Date;

    tot     := qVendatotal.AsFloat;
    nPar    := qCon_I.RecordCount;
    if nPar = 0 then
    nPar := 1;

    resto   := 0;
    qCon_i.first;
    for I := 1 to nPar do
    begin
    parcela := tot * qCon_iPorc.asfloat / 100;
    venci   := dataOld + qCon_idias.AsInteger;
    if I = nPar then
    parcela   := tot - resto
    else
    parcela   := roundto(parcela, -2);

    addComissao('CR:'+trim(qVendaID.text)+'.1/1', qVendaId.asinteger, 0, 0, (parcela * nC / 100 ) );
    resto := resto + roundto(parcela, -2);
    qCon_i.next;
    end;
    sleep(100);
    end; }

  AtivaV;

end;

procedure TfGridVenda.acCopiarExecute(Sender: TObject);
var
  codNovo: Integer;
begin
  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if Application.MessageBox('Deseja copiar esta venda?', 'Confirmação',
    MB_YESNO) = idno then
    Exit;

  Ve.Close;
  Ve.ParamByName('ID').Value := qVendaid.text;
  Ve.Open;

  IT.Close;
  IT.ParamByName('ID').Value := qVendaid.text;
  IT.Open;

  VeNova.Close;
  VeNova.Open;

  ITNova.Close;
  ITNova.Open;

  VeNova.Insert;
  VeNovaId.Value := InsereCodigo('Venda', 'Id');
  VeNovaData.Value := Date;
  VeNovaIdVendedor.Value := VeIdVendedor.Value;
  VeNovaIdCliente.Value := VeIdCliente.Value;
  VeNovaIdCondPgto.Value := VeIdCondPgto.Value;
  VeNovaValor.AsFloat := VeValor.AsFloat;
  VeNovaDesconto.AsFloat := VeDesconto.AsFloat;
  VeNovaTotal.AsFloat := VeTotal.AsFloat;
  VeNovaPrazoEntrega.text := '';
  VeNovaNotaFiscal.text := '';
  VeNovaIdUsuario.Value := VeIdUsuario.Value;
  VeNovax.Value := 'Z'; // Z indica venda foi copiada, apos salvar muda para x
  VeNovaEx.Value := 0;
  VeNovaExpedido.Value := 'N';
  VeNovaGeradoNFe.Value := 'N';
  VeNovapComissao.AsFloat := VepComissao.AsFloat;
  VeNovaboleto.Value := 'N';
  VeNovatotcubagem.Value := Vetotcubagem.Value;
  VeNovadesc_especial.Value := Vedesc_especial.Value;
  VeNovaidtabela.Value := Veidtabela.Value;
  VeNovapComissao.Value := VepComissao.Value;
  VeNovastatus.Value := 'D';
  VeNovasincronizado.Value := 'S';
  VeNovaidweb.Value := 0;
  VeNovaidcomercial.Value := Veidcomercial.Value;
  VeNovaidemp.Value := Veidemp.Value;

  codNovo := VeNovaId.Value;
  VeNova.Post;
  VeNova.ApplyUpdates;

  while IT.Eof = false do
  begin
    Application.ProcessMessages;

    ITNova.Insert;
    ITNovaId.Value := InsereCodigo('Venda_I', 'Id');
    ITNovaIdVenda.Value := codNovo;
    ITNovaIdProduto.Value := ITIdProduto.Value;
    ITNovaTipo.text := ITTipo.text;
    ITNovaQtd.AsFloat := ITQtd.AsFloat;
    ITNovaUnit.AsFloat := ITUnit.AsFloat;
    ITNovaDesconto.AsFloat := ITDesconto.AsFloat;
    ITNovaTotal.AsFloat := ITTotal.AsFloat;
    ITNovax.Value := ITx.Value;
    ITNovaRoyalties.AsFloat := ITRoyalties.AsFloat;
    ITNovaunit2.AsFloat := ITunit2.AsFloat;
    ITNovaunitst.AsFloat := ITunitst.AsFloat;
    ITNovapComissao.AsFloat := ITpComissao.AsFloat;
    ITNovaordemcompra.text := ITordemcompra.text;
    ITNovacubagem.AsFloat := ITcubagem.AsFloat;
    ITNovaqtd_cx.AsFloat := ITqtd_cx.AsFloat;
    ITNovapComissao.Value := ITpComissao.Value;
    ITNovasincronizado.Value := 'N';
    ITNovaidWeb.Value := 0;
    ITNovavCusto.Value := ITvCusto.Value;
    ITNovavMargem.Value := ITvMargem.Value;
    ITNovavUnitLiq.Value := ITvUnitLiq.Value;
    ITNovavTotLiq.Value := ITvTotLiq.Value;
    ITNovadevolvido.Value := ITdevolvido.Value;

    ITNovavolume.asInteger := ITvolume.asInteger;
    ITNovapComissaoG.AsFloat := ITpComissaoG.AsFloat;
    ITNovavalipi.AsFloat := ITvalipi.AsFloat;
    ITNovaMultiplo.asFloat := ITMultiplo.asFloat;
    ITNova.Post;
    Sleep(100);
    IT.Next;
  end;
  ITNova.ApplyUpdates;

  if not FormEstaCriado(TfVenda) then
  begin
    if StatusVenda = '' then
    begin
      StatusVenda := 'E';
      codVenda := codNovo;
      vCopiar := true;
    end;
  end;
  fMenu.CriarForm(TfVenda);

end;

procedure TfGridVenda.acDescancelarExecute(Sender: TObject);
var
  rg: Integer;
begin
  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendaex.Value <> 1) then
  begin
    Application.MessageBox('Venda não esta cancelada!', 'Atenção');
    Exit;
  end;

  if Application.MessageBox('Deseja realmente descancelar esta venda?',
    'Atenção', MB_YESNO) = idno then
    Exit;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then
    Exit;

  if temPermissao(IdUsuario, 'DESCANCEL_VENDA') = false then
    Exit;

  rg := qVenda.RecNo;
  Execsql(' Update venda set sincronizado = ''N'',  ex = 0, status = ''D'' ' +
    ' , geradonfe = ''N'', expedido = ''N'', dtexpedicao = null ' +
    '  where id = ' + qVendaid.text);
  GravaLogVenda(dm.qUserId.asInteger, qVendaid.asInteger, 0, 'DESCANCELAR',
    'Descancelamento da Venda', qVendaidCliente.asInteger);

  AtivaV;
  qVenda.RecNo := rg;
  try
    acFechar.Enabled := false;
    atualizaWeb;
  finally
    acFechar.Enabled := true;
  end;

end;

procedure TfGridVenda.acFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TfGridVenda.acImprimirExecute(Sender: TObject);
begin
  if qVenda.IsEmpty then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda cancelada, não é possível emitir NFe.',
      'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'J') then
  begin
    Application.MessageBox('Venda com cliente reprovado. Por favor, verifique!',
      'Atenção');
    Exit;
  end;

  separacao := 'N';
  if dm.qParametrofolhaSeparacao_mod_5.text = 'S' then // GRANELLI
    ImprimirPedidoModelo5(qVendaid.Value)
  else
  if dm.qParametrofolha_separacao_mod_3.text = 'S' then // brubalar
    ImprimirPedidoDZ(qVendaid.Value)
  else
  if dm.qParametropd_imp_matricial.text = 'S' then
  begin
    visualiza := 'S';
    // Add por Nilton
    if Application.MessageBox
      ('Emitir matricial ou PDF? (Sim) = Matricial, (Não) = PDF', 'Aviso',
      MB_YESNO + MB_ICONQUESTION) = idYes then
      vimpPDF := 'N'
    else
    begin
      vimpPDF := 'S';
      //SaveDialog1.InitialDir := ExtractFileDir(GetCurrentDir);
      //SaveDialog1.Execute;
      //vNomePDF := LowerCase(trim(SaveDialog1.FileName));
      vNomePDF := ''; //agora mostra na tela Nilton 02/06/2023
    end;

    ImprimirPedidoMatricial(qVendaid.Value, vimpPDF, vNomePDF); // itu acos

  end
  else
  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
     ImprimirPedidoRefBase(qVendaid.Value);
  end
  else
    ImprimirPedido(qVendaid.Value);

end;

procedure TfGridVenda.acImpSatExecute(Sender: TObject);
var
  caminho: String;
  nXml, pasta: String;
begin
  //

  if (trim(qVendaxml.text) = '') and (trim(qVendaxml_can.text) = '') then
  begin
    Application.MessageBox('XML não informado!', 'Atenção');
    Exit;
  end;
  if (trim(qVendaxml.text) <> '') and (trim(qVendaxml_can.text) <> '') then
  begin
    nXml := trim(qVendaxml_can.text);
    pasta := 'SAT\CFeCancelamento\';
  end
  else if (trim(qVendaxml.text) <> '') and (trim(qVendaxml_can.text) = '') then
  begin
    nXml := trim(qVendaxml.text);
    pasta := 'SAT\CFeVenda\';
  end;
  dm.AjustaACBrSAT(qVendaidemp.asInteger);
  caminho := ExtractFilePath(Application.ExeName) + pasta +
    formatdatetime('yyyy', qVendadata.Value) + formatdatetime('mm',
    qVendadata.Value) + '\' + nXml;

  if not FileExists(pchar(caminho)) then
  begin
    Application.MessageBox('XML não encontrado!', 'Atenção');
    Exit;
  end;
  dm.ACBrSAT1.CFe.LoadFromFile(pchar(caminho));
  dm.ACBrSAT1.ImprimirExtrato;
  Sleep(100);
end;

procedure TfGridVenda.acLiberarExecute(Sender: TObject);
var
  novoSt, oldSt, novoMot, nSql, txt, nomeCli, nomeRep: String;
  idrep, idcli, codPed, codPedWeb: Integer;
begin
  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendaex.Value = 1) or (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda já está cancelada.', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'X') then
  begin
    Application.MessageBox('Venda já expedida.', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'N') then
  begin
    Application.MessageBox('Venda já emitida NFe', 'Atenção');
    Exit;
  end;

  if qVendaidweb.asInteger > 0 then
    codPedWeb := qVendaidweb.asInteger;
  codPed := qVendaid.asInteger;
  oldSt := qVendastatus.Value;
  nomeCli := trim(qVendanomeCli.text);
  nomeRep := trim(qVendanomeVend.text);
  idrep := qVendaidvendedor.asInteger;
  idcli := qVendaidcliente.asInteger;

  if (qVendastatus.Value = 'H') then
  begin
    if Application.MessageBox(pchar('Venda já aprovado comercial e financeiro' +
      #13 + #10 + #13 + #10 + 'Deseja reenviar o email para o representante?'),
      'Atenção', MB_YESNO + MB_DEFBUTTON2) = idYes then
      if codPedWeb > 0 then
        email_financeiro(idrep, idcli, nomeRep, nomeCli,
          inttostr(codPedWeb), '')
      else
        email_financeiro(idrep, idcli, nomeRep, nomeCli, inttostr(codPed), '');

    Exit;
  end;

  Application.CreateForm(TfEscolheStatusPedido, fEscolheStatusPedido);

  fEscolheStatusPedido.cbSt.Items.Clear;
  if oldSt = 'D' then
  begin
    fEscolheStatusPedido.cbSt.Items.Add('Digitado');
    fEscolheStatusPedido.cbSt.Items.Add('Aprovado Comercial');
    fEscolheStatusPedido.cbSt.Items.Add('Reprovado');
  end
  else if oldSt = 'G' then
  begin
    fEscolheStatusPedido.cbSt.Items.Add('Aprovado Comercial');
    fEscolheStatusPedido.cbSt.Items.Add('Aprovado Financeiro');
    fEscolheStatusPedido.cbSt.Items.Add('Reprovado');
  end
  else if oldSt = 'J' then
  begin
    fEscolheStatusPedido.cbSt.Items.Add('Digitado');
    fEscolheStatusPedido.cbSt.Items.Add('Reprovado');
  end;

  fEscolheStatusPedido.cbSt.Update;
  fEscolheStatusPedido.cbSt.ItemIndex := 1;

  fEscolheStatusPedido.ShowModal;
  novoSt := fEscolheStatusPedido.nSt;
  novoMot := fEscolheStatusPedido.mot;
  fEscolheStatusPedido.Free;

  if novoSt <> '' then
  begin
    Application.CreateForm(TfSenhaCad, fSenhaCad);
    fSenhaCad.ShowModal;
    fSenhaCad.Free;
    if RespCad = 'N' then
      Exit;

    if trim(novoMot) <> '' then
      nSql := ' , motivor = ' + quotedstr(novoMot) + ' , iduserr = ' +
        inttostr(IdUsuario) + ' , datar   = ' +
        quotedstr(formatdatetime('yyyy.mm.dd', Date))
    else
      nSql := '';

    Execsql(' update venda set sincronizado = ''N'', status = ' +
      quotedstr(novoSt) + nSql + ' where id = ' + inttostr(codPed));
    Sleep(100);

    // enviar email
    if novoSt = 'H' then
      if codPedWeb > 0 then
        email_financeiro(idrep, idcli, nomeRep, nomeCli,
          inttostr(codPedWeb), '')
      else
        email_financeiro(idrep, idcli, nomeRep, nomeCli, inttostr(codPed), '');

    if novoSt = 'J' then
    begin
      Execsql('update creceber set ex = 1 where idvenda = ' + inttostr(codPed));
      email_financeiro(idrep, idcli, nomeRep, nomeCli,
        inttostr(codPed), novoMot);
    end;

    AtivaV;

    try
      acFechar.Enabled := false;
      atualizaWeb;
    finally
      acFechar.Enabled := true;
    end;

  end;

end;

procedure email_financeiro(cR, cli: Integer; nR, nC, pD, mT: String);
var
  txt, mot, tp, nEmail, nEmailC: string;
begin
  dm.qPesq.Close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add(' select vendedor.email from vendedor ' + ' where id = ' +
    inttostr(cR));
  dm.qPesq.Open;

  dm.qSelPesq.Close;
  dm.qSelPesq.SQL.Clear;
  dm.qSelPesq.SQL.Add(' select cliente.email from cliente ' + ' where id = ' +
    inttostr(cli));
  dm.qSelPesq.Open;

  Application.CreateForm(TfEscolheEmail, fEscolheEmail);
  fEscolheEmail.lPedido.caption := formatfloat('000000', strtoint(pD));
  fEscolheEmail.lNome.caption := nC;
  fEscolheEmail.edEmail.text := trim(dm.qPesq.FieldByName('email').text);
  fEscolheEmail.edEmaiC.text := trim(dm.qSelPesq.FieldByName('email').text);
  fEscolheEmail.ShowModal;
  nEmail := trim(fEscolheEmail.conf_Email);
  nEmailC := trim(fEscolheEmail.conf_EmailC);
  Sleep(100);
  // email representante
  if trim(nEmail) <> '' then
  begin
    fGridVenda.pBar.Visible := true;
    fGridVenda.pBar.Max := 4;
    if mT <> '' then
    begin
      mot := 'Motivo: ' + mT + '<br>';
      tp := '<font color="red">REPROVADO</font color="black">';
    end
    else
      tp := 'APROVADO FINANCEIRO';

    dm.qEmpresa.locate('id', '1', []); // envia somente pela matriz
    txt := '<html>' + '  <body>' + '    <h4>Prezado(a) Representante ' + nR +
      '</h4>' + '     <font>' + '      <hr>' + '        <font><BR>' +
      '           <div>Pedido..: ' + pD + '</div><BR>' +
      '           <div>Cliente.: ' + nC + '</div><BR>' +
      '           <div>Status..: <b>' + tp + '</b> para vendas.</div><BR>' + mot
      + '        </font>' + '        <BR>' + '        <hr>' + '         <b>' +
      dm.qEmpresafantasia.text + '</b><BR>' + '         <font>' +
      dm.qEmpresaENDERECO.text + ',' + dm.qEmpresanum.text + ' - ' +
      dm.qEmpresaBAIRRO.text + '-' + dm.qEmpresaCIDADE.text + '/' +
      dm.qEmpresaUF.text + '<BR>' + '           Fone:' +
      formatatelefone(dm.qEmpresaTELEFONE.text) + '<BR>' + '        </font>' +
      '    </body>' + '</html>';
    fGridVenda.pBar.Position := 1;
    fGridVenda.pBar.refresh;

    EnviaEmailRep(txt, nEmail, 'Status Pedido: ' + pD + ' Cliente: ' +
      nC, true);

    fGridVenda.pBar.Position := 2;
    fGridVenda.pBar.refresh;

  end;

  // email cliente
  if trim(nEmailC) <> '' then
  begin
    if mT <> '' then
    begin
      mot := 'Motivo: ' + mT + '<br>';
      tp := '<font color="red">REPROVADO</font color="black">';
    end
    else
      tp := 'APROVADO FINANCEIRO';

    dm.qEmpresa.locate('id', '1', []); // envia somente pela matriz
    txt := '<html>' + '  <body>' + '    <h4>Prezado(a) Cliente ' + nC + '</h4>'
      + '     <font>' + '      <hr>' + '        <font><BR>' +
      '           <div>Pedido.......: ' + pD + '</div><BR>' +
      '           <div>Cliente......: ' + nC + '</div><BR>' +
      '           <div>Representante: ' + nR + '</div><BR>' +
      '           <div>Status.......: <b>' + tp + '</b> para vendas.</div><BR>'
      + mot + '        </font>' + '        <BR>' + '        <hr>' +
      '         <b>' + dm.qEmpresafantasia.text + '</b><BR>' + '         <font>'
      + dm.qEmpresaENDERECO.text + ',' + dm.qEmpresanum.text + ' - ' +
      dm.qEmpresaBAIRRO.text + '-' + dm.qEmpresaCIDADE.text + '/' +
      dm.qEmpresaUF.text + '<BR>' + '           Fone:' +
      formatatelefone(dm.qEmpresaTELEFONE.text) + '<BR>' + '        </font>' +
      '    </body>' + '</html>';
    fGridVenda.pBar.Position := 3;
    fGridVenda.pBar.refresh;
    EnviaEmailRep(txt, nEmailC, 'Status Pedido: ' + pD + ' Cliente: ' +
      nC, true);

    fGridVenda.pBar.Position := 4;
    fGridVenda.pBar.refresh;
  end;

  if fGridVenda <> nil then
    fGridVenda.pBar.Visible := false;
  fEscolheEmail.Free;

  if trim(nEmail + nEmailC) = '' then
    Application.MessageBox('Email não enviado, verifique!', 'Atenção');

end;

procedure ImprimirPedido(cod: Integer);
var
  tam: Integer;
Begin
  Application.CreateForm(TfImpressoes, fImpressoes);

  if dm.qParametrovenda_desc_margem.text = 'S' then
  begin
    fImpressoes.RLLabel235.caption := 'Qtde';
    fImpressoes.RLLabel237.caption := 'Qtde';
    fImpressoes.RLLabel239.caption := 'Qtde';
    fImpressoes.RLLabel54.caption := 'Qtde Kg';
    fImpressoes.RLLabel83.caption := 'Qtde Kg';
    fImpressoes.RLLabel10.caption := 'Qtde Kg';
  end;

  if dm.qParametromostrar_multiplo.text = 'N' then // granelli
  begin
    fImpressoes.RLLabel235.Visible := false;
    fImpressoes.RLLabel236.Visible := false;
    fImpressoes.RLDBText56.Visible := false;
    fImpressoes.RLDBText214.Visible := false;
    fImpressoes.RLDBMemo8.Width := 390;
    fImpressoes.RLLabel54.caption := 'Qtde';
    fImpressoes.RLDBResult26.Visible := false;

    fImpressoes.RLLabel237.Visible := false;
    fImpressoes.RLLabel238.Visible := false;
    fImpressoes.RLDBText96.Visible := false;
    fImpressoes.RLDBText215.Visible := false;
    fImpressoes.RLLabel83.caption := 'Qtde';
    fImpressoes.RLDBResult27.Visible := false;
    fImpressoes.RLDBMemo9.Width := 390;

    fImpressoes.RLLabel239.Visible := false;
    fImpressoes.RLLabel240.Visible := false;
    fImpressoes.RLDBText118.Visible := false;
    fImpressoes.RLDBText216.Visible := false;
    fImpressoes.RLDBResult28.Visible := false;
    fImpressoes.RLDBMemo10.Width := 390;
    fImpressoes.RLLabel110.caption := 'Qtde';

  end;

  if separacao = 'S' then
  begin
    // imppedido
    fImpressoes.lTitulo.caption := 'Folha de Separação';
    fImpressoes.RLLabel56.Visible := false;
    fImpressoes.RLLabel55.Visible := false;
    fImpressoes.RLDBText77.Visible := false;
    fImpressoes.RLDBText78.Visible := false;
    fImpressoes.RLLabel45.Visible := false;
    fImpressoes.RLLabel1.Visible := false;
    fImpressoes.RLLabel2.Visible := false;
    fImpressoes.RLDBResult11.Visible := false;
    fImpressoes.RLDBResult1.Visible := false;
    fImpressoes.RLDBResult2.Visible := false;
    fImpressoes.RLPanel5.Visible := false;
    fImpressoes.RLLabel90.Visible := false;
    fImpressoes.RLDBText74.Visible := false;
    fImpressoes.RLLabel236.Visible := false;
    fImpressoes.RLDBText214.Visible := false;
    fImpressoes.RLLabel58.Visible := false;
    fImpressoes.RLDBText67.Visible := false;

    // imppedido2vias
    fImpressoes.ltelefone1.Visible := false;
    fImpressoes.ltelefone2.Visible := false;
    fImpressoes.RLDBText120.Visible := false;
    fImpressoes.RLDBText122.Visible := false;
    fImpressoes.RLPanel21.Visible := false;
    fImpressoes.RLPanel22.Visible := false;

    fImpressoes.RLLabel145.caption := 'Folha de Separação';
    fImpressoes.RLLabel126.caption := 'Folha de Separação';
    fImpressoes.RLLabel85.Visible := false;
    fImpressoes.RLLabel86.Visible := false;
    fImpressoes.RLDBText93.Visible := false;
    fImpressoes.RLDBText94.Visible := false;
    fImpressoes.RLLabel67.Visible := false;
    fImpressoes.RLLabel75.Visible := false;
    fImpressoes.RLLabel76.Visible := false;
    fImpressoes.RLDBResult5.Visible := false;
    fImpressoes.RLDBResult7.Visible := false;
    fImpressoes.RLDBResult8.Visible := false;
    fImpressoes.RLPanel7.Visible := false;
    fImpressoes.RLLabel89.Visible := false;
    fImpressoes.RLDBText79.Visible := false;

    fImpressoes.RLLabel111.Visible := false;
    fImpressoes.RLLabel112.Visible := false;
    fImpressoes.RLDBText115.Visible := false;
    fImpressoes.RLDBText116.Visible := false;
    fImpressoes.RLLabel101.Visible := false;
    fImpressoes.RLLabel102.Visible := false;
    fImpressoes.RLLabel103.Visible := false;
    fImpressoes.RLDBResult9.Visible := false;
    fImpressoes.RLDBResult13.Visible := false;
    fImpressoes.RLDBResult14.Visible := false;
    fImpressoes.RLPanel15.Visible := false;
    fImpressoes.RLLabel115.Visible := false;
    fImpressoes.RLDBText101.Visible := false;

    fImpressoes.RLLabel238.Visible := false;
    fImpressoes.RLDBText215.Visible := false;
    fImpressoes.RLLabel240.Visible := false;
    fImpressoes.RLDBText216.Visible := false;
    fImpressoes.RLLabel148.Visible := false;
    fImpressoes.RLPanel24.Visible := false;
    fImpressoes.RLLabel146.Visible := false;
    fImpressoes.RLPanel23.Visible := false;
    fImpressoes.RLLabel87.Visible := false;
    fImpressoes.RLDBText60.Visible := false;
    fImpressoes.RLLabel113.Visible := false;
    fImpressoes.RLDBText99.Visible := false;

    // imppedido2vias_reduzido
    fImpressoes.RLLabel185.caption := 'Folha de Separação';
    fImpressoes.RLLabel122.caption := 'Folha de Separação';
    fImpressoes.RLLabel161.Visible := false;
    fImpressoes.RLLabel162.Visible := false;
    fImpressoes.RLDBText161.Visible := false;
    fImpressoes.RLDBText162.Visible := false;
    fImpressoes.RLLabel151.Visible := false;
    fImpressoes.RLLabel152.Visible := false;
    fImpressoes.RLLabel153.Visible := false;
    fImpressoes.RLDBResult15.Visible := false;
    fImpressoes.RLDBResult17.Visible := false;
    fImpressoes.RLDBResult18.Visible := false;
    fImpressoes.RLPanel25.Visible := false;
    fImpressoes.RLLabel165.Visible := false;

    fImpressoes.RLLabel204.Visible := false;
    fImpressoes.RLLabel205.Visible := false;
    fImpressoes.RLDBText194.Visible := false;
    fImpressoes.RLDBText195.Visible := false;
    fImpressoes.RLLabel190.Visible := false;
    fImpressoes.RLLabel191.Visible := false;
    fImpressoes.RLLabel192.Visible := false;
    fImpressoes.RLDBResult19.Visible := false;
    fImpressoes.RLDBResult21.Visible := false;
    fImpressoes.RLDBResult22.Visible := false;
    fImpressoes.RLPanel33.Visible := false;
    fImpressoes.RLLabel208.Visible := false;
    fImpressoes.RLDBText117.Visible := false;
  end;


  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    fImpressoes.rllabel237.visible    := true;
    fImpressoes.rllabel237.Caption    := 'Cor';
    fImpressoes.rllabel238.visible    := true;
    fImpressoes.rllabel238.Caption    := 'Tam.';
    fImpressoes.rldbtext96.visible    := true;
    fImpressoes.rldbtext96.datafield  := 'cor';
    fImpressoes.rldbtext96.Alignment  :=  taLeftJustify;
    fImpressoes.rldbtext215.visible   := true;
    fImpressoes.rldbtext215.datafield := 'tamanho';

    fImpressoes.rllabel239.visible    := true;
    fImpressoes.rllabel239.Caption    := 'Cor';
    fImpressoes.rllabel240.visible    := true;
    fImpressoes.rllabel240.Caption    := 'Tam.';
    fImpressoes.rldbtext118.visible   := true;
    fImpressoes.rldbtext118.datafield := 'cor';
    fImpressoes.rldbtext118.Alignment := taLeftJustify;
    fImpressoes.rldbtext216.visible   := true;
    fImpressoes.rldbtext216.datafield := 'tamanho';
  end;

  Sleep(100);
  fImpressoes.Q.Close;
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;
  if fImpressoes.QEx.Value = 1 then
    fImpressoes.lCancelada.Visible := true;

  if dm.qParametroimpPedido_2vias.Value = 'S' then
  begin
    if dm.qParametroreduzir_romaneio.text = 'N' then
    begin
      case fImpressoes.Q.RecordCount of
        0, 1:
          fImpressoes.RLBand21.Height := 150;
        2:
          fImpressoes.RLBand21.Height := 140;
        3:
          fImpressoes.RLBand21.Height := 100;
        4:
          fImpressoes.RLBand21.Height := 50;
      end;

      vEnv_EmailDest := fImpressoes.Qemail.text;
      if dm.qParametrofolha_separacao_mod_3.text = 'S' then // brubalar
      begin
        vEnv_Report := fImpressoes.rpImpPedido2vias_2;
        fImpressoes.rpImpPedido2vias_2.PreviewModal;
      end
      else
      begin
        vEnv_Report := fImpressoes.rpImpPedido2vias;
        fImpressoes.rpImpPedido2vias.PreviewModal;
      end;

    end
    else
    begin // paramentro
      fImpressoes.rpImpPedido2vias_reduzido.Prepare;
      case fImpressoes.Q.RecordCount of
        0, 1:
          fImpressoes.RLBand33.Height := 150;
        2:
          fImpressoes.RLBand33.Height := 140;
        3:
          fImpressoes.RLBand33.Height := 130;
        4:
          fImpressoes.RLBand33.Height := 120;
        5:
          fImpressoes.RLBand33.Height := 110;
        6:
          fImpressoes.RLBand33.Height := 100;
        7:
          fImpressoes.RLBand33.Height := 90;
        8:
          fImpressoes.RLBand33.Height := 80;
        9:
          fImpressoes.RLBand33.Height := 60;
        10:
          fImpressoes.RLBand33.Height := 50;
        11:
          fImpressoes.RLBand33.Height := 40;
        12:
          fImpressoes.RLBand33.Height := 30;
        13:
          fImpressoes.RLBand33.Height := 20;
      else
        fImpressoes.RLBand33.Height := 10;
      end;
      vEnv_EmailDest := fImpressoes.Qemail.text;
      vEnv_Report := fImpressoes.rpImpPedido2vias_reduzido;
      fImpressoes.rpImpPedido2vias_reduzido.PreviewModal;
    end;
  end
  else
  begin
    vEnv_EmailDest := fImpressoes.Qemail.text;
    vEnv_Report := fImpressoes.rpImpPedido;
    fImpressoes.rpImpPedido.PreviewModal;
  end;
  fImpressoes.Free;

end;

procedure ImprimirPedidoMatricial(cod: Integer; ImpPDF: String;
  NomePDF: String);
var
  ll, tl, colu, vz: Integer;
  tq, tqx: real;

Begin

  if ImpPDF = 'N' then
  begin

    tl := 35; // 36  meia folha
    colu := 96;
    Application.CreateForm(TfImpressoes, fImpressoes);
    fImpressoes.qMt.Close;
    fImpressoes.qMt.ParamByName('id').Value := cod;
    fImpressoes.qMt.Open;

    // if fImpressoes.qMt.RecordCount < 10 then
    // fImpressoes.rpImpPedidoMatricial.PageSetup.PaperHeight := 119;   //tamanho carta/razao

    // vEnv_EmailDest := fImpressoes.qMTemail.text;
    // vEnv_Report    := fImpressoes.rpImpPedidoMatricial;
    // fImpressoes.rpImpPedidoMatricial.PreviewModal;

    // teste matricial
    if visualiza = 'S' then
      dm.VDODmPrinter1.ShowPreview := true;

    dm.VDODmPrinter1.BeginDoc; // Inicia o Documento

    dm.VDODmPrinter1.Paper.Columns := colu; // 80; // Inicia o Documento
    dm.VDODmPrinter1.Paper.Lines := 36; //

    AjusteMatricial('FONTE_ESTILO', '', 'D', '12');
    AjusteMatricial('ESPACO', '8', 'D', '12');

    // Imprime o título e avança para linha seguinte
    ll := 0;
    with dm.VDODmPrinter1 do
    begin
      Print(00, Completa(dm.qParametrofantasia.text, 46), false);
      Print(47, AlignRigth('Impresso em: ' +
        formatdatetime('dd/mm/yyyy hh:mm:ss', now), 32), true);
      inc(ll);

      AjusteMatricial('FONTE_ESTILO', 'B', 'LC', '12');
      Print(00, Completa('EXTRATO DA VENDA', colu), true);
      AjusteMatricial('FONTE_ESTILO', '', 'D', '12');
      inc(ll);

      Replicate(00, colu); // Imprime um traço e avança para linha seguinte
      inc(ll);

      Print(00, Completa('VENDA: ', 07), false);
      AjusteMatricial('FONTE_ESTILO', 'B', 'D', '12');
      Print(08, Completa(fImpressoes.qMtId.text, 10), false);
      AjusteMatricial('FONTE_ESTILO', '', 'D', '12');
      Print(20, Completa('DATA: ' + formatdatetime('dd/mm/yyyy',
        fImpressoes.qMtData.Value), 15), false);
      Print(40, Completa('NF: ' + fImpressoes.qMtNotaFiscal.text, 14), true);
      inc(ll);

      AjusteMatricial('FONTE_ESTILO', 'B', 'D', '12');
      Print(00, Completa('CLIENTE: ' + trim(fImpressoes.qMtIdCliente.text) + '-'
        + trim(fImpressoes.qMtNome.text), 50), false); //55
      Print(51, AlignRigth(' TELEFONE:' +    //60
        formatatelefone(fImpressoes.qMttel1.text)+'/'+formatatelefone(fImpressoes.qMttel2.text), 41), true);  //25
      AjusteMatricial('FONTE_ESTILO', '', 'D', '12');
      inc(ll);

      AjusteMatricial('ESPACO', '6', 'C', '10');
      Print(00, Completa('ENDEREÇO: ' + trim(fImpressoes.qMtEndereco.text) + ','
        + trim(fImpressoes.qMtNum.text) + '-' + trim(fImpressoes.qMtBairro.text)
        + '-' + trim(fImpressoes.qMtcidade.text) + '/' +
        trim(fImpressoes.qMtUF.text) + '- Cep:' +
        formataCEP(fImpressoes.qMtCEP.text), 80), true);
      inc(ll);

      AjusteMatricial('ESPACO', '8', 'D', '12');
      Print(00, Completa('VENDEDOR: ' + trim(fImpressoes.qMtIdVendedor.text) +
        '-' + trim(fImpressoes.qMtnomeVend.text), 40), false);
      AjusteMatricial('FONTE_ESTILO', 'B', 'C', '10');
      Print(41, Completa('COND: ' + fImpressoes.qMtdesCond.text, 19), false);
      Print(61, Completa('FORMA: ' + fImpressoes.qMtforma_pgto.text, 19), true);
      inc(ll);

      AjusteMatricial('ESPACO', '8', 'D', '12');
      Replicate(00, colu); // Imprime um traço e avança para linha seguinte
      inc(ll);

      AjusteMatricial('FONTE_ESTILO', 'B', 'C', '10');
      Print(00, 'END.ENTREGA: ' + trim(fImpressoes.qMtEnd_entrega.text) + ',' +
        trim(fImpressoes.qMtNum_entrega.text) + '-' +
        trim(fImpressoes.qMtBairro_entrega.text) + '-' +
        trim(fImpressoes.qMtcidade_entrega.text) + '/' +
        trim(fImpressoes.qMtUF_entrega.text) + '- Cep:' +
        formataCEP(fImpressoes.qMtCep_entrega.text), true);
      inc(ll);
      AjusteMatricial('FONTE_ESTILO', '', 'C', '10');

      NewLine(1); // Avança linhas
      ll := ll + 1;

      AjusteMatricial('ESPACO', '6', 'C', '10');
      if vDevolucao then
        Print(00, Completa
          ('Cod  Qtde Descrição Produto                        Qtde Un Dev    Qtde Kg Dev    Un     Qtde           Unit           Total',
          140), true)
      else
        Print(00, Completa
          ('Cod  Qtde Descrição Produto                                                      Un     Qtde           Unit           Total',
          140), true);
      inc(ll);

      AjusteMatricial('ESPACO', '8', 'D', '12');
      Replicate(00, colu); // Imprime um traço e avança para linha seguinte
      inc(ll);
    end;

    vz := 0;
    tq := 0;
    tqx := 0;
    While fImpressoes.qMt.Eof = false do
    begin
      AjusteMatricial('ESPACO', '6', 'C', '10');

      // Imprime o título e avança para linha seguinte
      with dm.VDODmPrinter1 do
      begin
        if vDevolucao then
        begin
          Print(00, Completa(fImpressoes.qMtIdProduto.text, 05) +
            AlignRigth(formatfloat('#0.#', fImpressoes.qMtqtd_cx.AsFloat), 4) +
            ' ' + Completa(trim(fImpressoes.qMtdescricao.text), 41) +

            AlignRigth(formatfloat('#0.000#', fImpressoes.qMtqtd_cxdev.AsFloat), 11) +
            AlignRigth(formatfloat('#0.000#', fImpressoes.qMtqtddev.AsFloat), 15) +

            AlignRigth(fImpressoes.qMtunidade_nfe.text, 6) +
            // AlignRigth(formatfloat('#0.000#',fImpressoes.qMtmultiplo.AsFloat), 8) +
            AlignRigth(formatfloat('#0.000#', fImpressoes.qMtQtd.AsFloat), 10) +
            AlignRigth(formatfloat('###,##0.00',
            fImpressoes.qMtvUnitLiq.AsFloat), 14) +
            // AlignRigth(formatfloat('###,##0.00',fImpressoes.qMtDesconto_1.AsFloat),09) +
            AlignRigth(formatfloat('###,##0.00', fImpressoes.qMttotprod.AsFloat),
            16), true);
        end
        else
        begin
          Print(00, Completa(fImpressoes.qMtIdProduto.text, 05) +
            AlignRigth(formatfloat('#0.#', fImpressoes.qMtqtd_cx.AsFloat), 4) +
            ' ' + Completa(trim(fImpressoes.qMtdescricao.text), 71) +
            Completa(fImpressoes.qMtunidade_nfe.text, 4) +
            // AlignRigth(formatfloat('#0.000#',fImpressoes.qMtmultiplo.AsFloat), 8) +
            AlignRigth(formatfloat('#0.000#', fImpressoes.qMtQtd.AsFloat), 10) +
            AlignRigth(formatfloat('###,##0.00',
            fImpressoes.qMtvUnitLiq.AsFloat), 12) +
            // AlignRigth(formatfloat('###,##0.00',fImpressoes.qMtDesconto_1.AsFloat),09) +
            AlignRigth(formatfloat('###,##0.00', fImpressoes.qMttotprod.AsFloat),
            16), true);
        end;

        tq := tq + fImpressoes.qMtQtd.AsFloat;
        tqx := tqx + fImpressoes.qMtqtd_cx.AsFloat;
        inc(ll);
      end;
      fImpressoes.qMt.Next;

      // acrescentas linha para separar acessorios de outros grupos
      if (vz = 0) and (fImpressoes.qMtg.asInteger = 1) then
      begin
        AjusteMatricial('ESPACO', '8', 'D', '12');
        dm.VDODmPrinter1.Replicate(00, colu);
        // Imprime um traço e avança para linha seguinte
        inc(ll);
        vz := 1;
      end;

      // Vz := Vz + 1;
      // if Vz > 12 then begin
      // Vz := 1;
      // dm.VDODmPrinter1.NewPage;
      // end;
    end;
    AjusteMatricial('ESPACO', '8', 'D', '12');
    dm.VDODmPrinter1.Replicate(00, colu);
    // Imprime um traço e avança para linha seguinte
    inc(ll);

    // total
    AjusteMatricial('ESPACO', '6', 'C', '10');
    dm.VDODmPrinter1.Print(03, AlignRigth(formatfloat('#0.###', tqx),
      6), false);
    dm.VDODmPrinter1.Print(85, AlignRigth(formatfloat('#0.000#', tq),
      10), false);
    dm.VDODmPrinter1.Print(113, AlignRigth(formatfloat('###,###,##0.00',
      fImpressoes.qMtValor.Value), 10), true);
    inc(ll);
    // dm.VDODmPrinter1.Print(47, completa( '         Descontos:', 20), false);
    // dm.VDODmPrinter1.Print(68, AlignRigth( formatfloat('###,###,##0.00', fImpressoes.qMtDesconto.Value )  , 10), true);
    dm.VDODmPrinter1.Print(00, ' ', true);
    inc(ll);
    AjusteMatricial('FONTE_ESTILO', 'B', 'D', '12');
    dm.VDODmPrinter1.Print(55, Completa('       Total Venda:', 20), false);
    dm.VDODmPrinter1.Print(77, AlignRigth(formatfloat('###,###,##0.00',
      fImpressoes.qMtTotal.Value), 10), true);
    AjusteMatricial('FONTE_ESTILO', '', 'D', '12');
    inc(ll);

    AjusteMatricial('ESPACO', '8', 'D', '12');
    dm.VDODmPrinter1.Replicate(00, colu);
    // Imprime um traço e avança para linha seguinte
    inc(ll);

    // financeiro
    fImpressoes.qMt.First;
    if trim(fImpressoes.qMtobs_venda.asString) <> '' then
    begin
      AjusteMatricial('ESPACO', '6', 'C', '10');
      dm.VDODmPrinter1.Print(00,
        'OBS: ' + fImpressoes.qMtobs_venda.asString, true);
      inc(ll);
    end;
    AjusteMatricial('ESPACO', '8', 'D', '12');

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total from creceber c '
      + ' where c.ex = 0 and  c.idvenda = ' + fImpressoes.qMtId.asString +
      ' order by c.venci');
    dm.qSelect.Open;
    if dm.qSelect.IsEmpty = false then
    begin
      AjusteMatricial('FONTE_ESTILO', 'B', 'D', '12');
      dm.VDODmPrinter1.Print(00,
        'Documento           Vencimento          Valor', true);
      AjusteMatricial('FONTE_ESTILO', '', 'D', '12');
      inc(ll);
      dm.qSelect.First;
      while not dm.qSelect.Eof do
      begin
        dm.VDODmPrinter1.Print(00, Completa(dm.qSelect.Fields[0].asString, 20) +
          Completa(dm.qSelect.Fields[1].asString, 20) +
          formatfloat('###,###,###,##0.00',
          dm.qSelect.Fields[2].AsFloat), true);
        inc(ll);
        dm.qSelect.Next;
      end;
    end;

    // frase
    dm.VDODmPrinter1.NewLine(4); // Avança linhas
    inc(ll);
    AjusteMatricial('FONTE_ESTILO', 'B', 'D', '12');
    dm.VDODmPrinter1.Print(00,
      'CONFIRA A MERCADORIA! NÃO ACEITAMOS RECLAMAÇÕES APÓS A ENTREGA.      ASS:_______________________',
      true);
    inc(ll);
    AjusteMatricial('ESPACO', '8', 'D', '12');

    if ll > 31 then // 31
    begin
      tl := 71; // 72
      dm.VDODmPrinter1.Paper.Lines := 72; //
    end;
    inc(ll);
    dm.VDODmPrinter1.NewLine(tl - ll); // Avança linhas

    AjusteMatricial('ESPACO', '8', 'D', '12');
    dm.VDODmPrinter1.Replicate(00, colu);
    // Imprime um traço e avança para linha seguinte
    AjusteMatricial('ESPACO', '6', 'C', '10');
    dm.VDODmPrinter1.Print(00, Completa('thrsolftwares.com.br', 60), true);
    AjusteMatricial('ESPACO', '8', 'D', '12');

    dm.VDODmPrinter1.NewLine(1); // Avança linhas

    dm.VDODmPrinter1.EndDoc(false); // Finalizo o Documento, ejetando a página

    fImpressoes.Free;
    visualiza := 'N';
  end
  else
  begin
    Application.CreateForm(TfImpressoes, fImpressoes);
    fImpressoes.qMt.Close;
    fImpressoes.qMt.ParamByName('id').Value := cod;
    fImpressoes.qMt.Open;

    if fImpressoes.qMt.RecordCount < 10 then
      fImpressoes.rpImpPedidoMatricial.PageSetup.PaperHeight := 119;
    // tamanho carta/razao


    fImpressoes.lQtdDev.Visible      :=  vDevolucao;
    fImpressoes.lQtdKgDev.Visible    :=  vDevolucao;
    fImpressoes.rldbQtdDev.Visible   :=  vDevolucao;
    fImpressoes.rlDBQtdKgDev.Visible :=  vDevolucao;

    if vDevolucao = false then
      fImpressoes.RLDBMemo14.Width := 314;


    vEnv_EmailDest := fImpressoes.qMTemail.text;
    vEnv_Report := fImpressoes.rpImpPedidoMatricial;
    fImpressoes.rpImpPedidoMatricial.PreviewModal;
    //fImpressoes.rpImpPedidoMatricial.SaveToFile(NomePDF);
    //fImpressoes.rpImpPedidoMatricial.Prepare;

    fImpressoes.Free;
    visualiza := 'N';
  end;

end;

procedure TfGridVenda.acEditExecute(Sender: TObject);
var
  rg: Integer;
begin
  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendaex.Value = 1) or (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda cancelada, não é possivel alterar.',
      'Atenção');
    Exit;
  end;

  if dm.qParametropd_perm_alt_exp.text = 'N' then
  begin
    if (qVendastatus.Value = 'X') or (qVendastatus.Value = 'N') then
    begin
      Application.MessageBox('Venda já expedida. Por favor, verifique!', 'Atenção');
      Exit;
    end;
  end
  else
  begin
    if (qVendastatus.Value = 'N') then
    begin
      Application.MessageBox('Venda com NFE emitida. Por favor, verifique!', 'Atenção');
      Exit;
    end;
  end;

  if qVendacupom.asInteger > 0 then
  begin
    Application.MessageBox('Venda com SAT já emitido. Por favor, verifique!', 'Atenção');
    Exit;
  end;

  // Verifica se Financeiro Já Baixado
  if dm.qParametrousa_abertura_cx.asString = 'S' then
  begin
    dm.qSelPesq.Close;
    dm.qSelPesq.SQL.Clear;
    dm.qSelPesq.SQL.Add
      ('select * from creceber where  baixa = ''S'' and ex = 0 and ' +
      ' idvenda = ' + inttostr(qVendaid.asInteger) + ' and idcliente = ' +
      inttostr(qVendaidcliente.asInteger));
    dm.qSelPesq.Open;

    if not dm.qSelPesq.IsEmpty then
    begin
      Application.MessageBox('Venda com parcelas já baixadas. Por favor, verifique!',
        'Atenção');
      Exit;
    end;
  end;

  rg := qVenda.RecNo;
  if not FormEstaCriado(TfVenda) then
  begin
    if StatusVenda = '' then
    begin
      StatusVenda := 'E';
      codVenda := qVendaid.Value;
    end;
    vCopiar := true; // pra alterar qunatidade e preço
    Application.CreateForm(TfVenda, fVenda);
    // fVenda.show;
  end
  else
  begin
    Application.MessageBox('Tela da venda já está aberta. Por favor, verifique!',
      'Atenção');
    Exit;
  end;
  // fMenu.CriarForm(TfVenda);

  qVenda.RecNo := rg;

  try
    acFechar.Enabled := false;
    atualizaWeb;
  finally
    acFechar.Enabled := true;
  end;

end;

procedure TfGridVenda.acExpedirExecute(Sender: TObject);
var
  rg: Integer;
  vX: Char;
  vinculo, podeNF, novoCial: String;
  oldCial, nvCial: real;
begin
  vinculo := 'N';
  if (qVenda.IsEmpty) then
    Exit;

  if (qVendastatus.Value = 'X') or (qVendastatus.Value = 'N') then
  begin
    Application.MessageBox('Venda já expedida. Por favor, verifique!', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda Cancelada. Não é possivel gerar expedição.',
      'Atenção');
    Exit;
  end;

  if acLiberar.Enabled then
  begin
    if (qVendastatus.Value <> 'H') then
    begin
      Application.MessageBox('Venda não diberada para expedir. Por favor, verifique!',
        'Atenção');
      Exit;
    end;

    if (qVendastatus.Value = 'J') then
    begin
      Application.MessageBox('Venda com cliente reprovado. Por favor, verifique!',
        'Atenção');
      Exit;
    end;
  end;

  // verifica financeiro antecipado
  if dm.qParametrofinan_expedicao.text = 'S' then
  begin
    if qVendaantecipado.text = 'S' then
    begin
      qRec.Close;
      qRec.ParamByName('cli').Value := qVendaidcliente.asInteger;
      qRec.ParamByName('ve').Value := qVendaid.asInteger;
      qRec.Open;
      if qRectot.AsFloat > 0 then
      begin
        Application.MessageBox('FINANCEIRO ANTECIPADO EM ABERTO. Por favor, verifique!',
          'Atenção');
        Exit;
      end;
    end;
  end;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;


  if dm.qParametrobloqueia_exped_cli_inadimp.asString = 'S' then //Não faz expedicao se cliente inadimplente
  begin
    dm.qPesq.close;
    dm.qPesq.SQL.clear;
    if dm.qParametrodias_carencia_bloqueio.asInteger > 0 then
    begin
      dm.qPesq.SQL.add('select * from CReceber where baixa = ''N'' and ex = 0 and idcliente = '+qVendaidcliente.text+
                       ' and venci <= '+QuotedStr(FormatDateTime('dd-MM-yyyy', date - dm.qParametrodias_carencia_bloqueio.asInteger)))
    end
    else
    begin
      dm.qPesq.SQL.add('select * from CReceber where baixa = ''N'' and ex = 0 and idcliente = '+qVendaidcliente.text+
                       ' and venci < '+QuotedStr(FormatDateTime('dd-MM-yyyy', date)));
    end;

    dm.qPesq.open;
    if dm.qPesq.RecordCount > 0 then   //Tem inadimplencia, pede senha
    begin
       application.messagebox('Cliente com inadimplência, é necessário solicitar liberação.', 'Atenção');

       application.CreateForm(TfSenhaCad, fSenhaCad);
       fSenhaCad.ShowModal;
       fSenhaCad.Free;
       if RespCad = 'N' then
       begin
         exit;
       end;


      if temPermissao(IdUsuario, 'AUT_EXPED_VENDA') = false then
      begin
        exit;
      end
      else
      begin
        GravaLogVenda(IdUsuario, qVendaid.asInteger, 0, 'EXPEDIÇÃO',
          'Autorizado Expedição Cliente inadimplente ', qVendaidCliente.asInteger);
      end;
    end;
  end;

  // verifica limite credito
  if dm.qParametrobloqueia_exped_lim_exedido.asString = 'S' then //Não faz expedicao se cliente inadimplente
  begin
    dm.qSelPesq.Close;
    dm.qSelPesq.SQL.clear;
    {dm.qSelPesq.SQL.add   //Nilton 19/03/2022 alterado select para pegar limite de credito sem financeiro
      (' Select max(cliente.limitecredito) limitecredito, sum(coalesce(creceber.total,0)) tot from creceber '
      + ' left join cliente on cliente.id = creceber.idcliente ' +
      ' where creceber.EX = 0 AND creceber.baixa = ''N'' and creceber.idcliente= ' + trim(qVendaidcliente.Text));}
    dm.qSelPesq.SQL.add('Select max(cliente.limitecredito) limitecredito, sum(coalesce(creceber.total,0)) tot from cliente '+
                        ' left join creceber on creceber.idcliente =  cliente.id and creceber.EX = 0 AND creceber.baixa = ''N'' '+
                        ' where  cliente.id = '+ trim(qVendaidcliente.Text));
    dm.qSelPesq.Open;

    if (dm.qSelPesq.FieldByName('limitecredito').AsFloat > 0) and
      ((dm.qSelPesq.FieldByName('tot').AsFloat + qVendatotal.AsFloat) >
      dm.qSelPesq.FieldByName('limiteCredito').AsFloat) then
    begin
         application.MessageBox('Limite do cliente excedido, é necessário solicitar liberação.', 'Atenção');

         application.CreateForm(TfSenhaCad, fSenhaCad);
         fSenhaCad.ShowModal;
         fSenhaCad.Free;
         if RespCad = 'N' then
         begin
           exit;
         end;


        if temPermissao(IdUsuario, 'AUT_EXPED_VENDA_LIM') = false then
        begin
          exit;
        end
        else
        begin
          GravaLogVenda(IdUsuario, qVendaid.asInteger, 0, 'EXPEDIÇÃO',
            'Autorizado Limite de Crédito Excedido', qVendaidCliente.asInteger);
        end;

    end;
  end;

  rg := qVenda.RecNo;
  if Application.MessageBox('Confirma expedição do pedido?', 'confirmação',
    MB_YESNO) = idno then
    Exit;

  if dm.qParametromudar_cial_exp.Value = 'S' then // brubalar
  begin
    oldCial := qVendadesc_especial.AsFloat;
    nvCial := 0;
    Application.CreateForm(TfExpedicaoCial, fExpedicaoCial);
    fExpedicaoCial.lPedido.caption := formatfloat('000000', qVendaid.Value);
    fExpedicaoCial.lNome.caption := qVendanomeCli.text;
    fExpedicaoCial.cbCial.KeyValue := qVendaidcomercial.asInteger;
    fExpedicaoCial.ShowModal;
    if conf_ex_cial = 'S' then
    begin
      novoCial := '';
      if nCial > 0 then
      begin
        qCial.Close;
        qCial.ParamByName('id').Value := nCial;
        qCial.Open;
        novoCial := ' , idcomercial = ' + inttostr(nCial) +
          ' , desc_especial = ' +
          pontoVirgula(formatfloat('#0.00', qCialPorcentagem.AsFloat));
        nvCial := qCialPorcentagem.AsFloat;
      end;

      Execsql('update venda set sincronizado = ''N'', status = ''N'' ' +
        ', geradonfe = ''S'', expedido = ''S'', dtexpedicao = ' +
        quotedstr(formatdatetime('dd/mm/yyyy', Date)) + novoCial +
        '  where id = ' + qVendaid.text);
      fExpedicaoCial.Free;

    end
    else
    begin
      fExpedicaoCial.Free;
      AtivaV;
      qVenda.RecNo := rg;
      Exit;
    end;
  end
  else
  if dm.qParametropd_vincular_nf.Value = 'S' then
  begin
    oldCial := qVendadesc_especial.AsFloat;
    nvCial := 0;
    Application.CreateForm(TfExpedicao, fExpedicao);
    fExpedicao.lPedido.caption := formatfloat('000000', qVendaid.Value);
    fExpedicao.lNome.caption := qVendanomeCli.text;
    fExpedicao.cbCial.KeyValue := qVendaidcomercial.asInteger;
    fExpedicao.edNF.text := trim(qVendanf.text);
    fExpedicao.ShowModal;
    if conf_ex = 'S' then
    begin
      if nNFVinculadaExpedicao > 0 then
      begin
        dm.qPesq.Close;
        dm.qPesq.SQL.Clear;
        dm.qPesq.SQL.Add('select id from nf where nf = ' +
          inttostr(nNFVinculadaExpedicao));
        dm.qPesq.Open;
        if dm.qPesq.FieldByName('id').asInteger > 0 then
        begin
          if BuscarSQL('select notafiscal from venda where ex = 0 and ' +
            ' status <> ''C'' and notafiscal = ' + dm.qPesq.FieldByName('id')
            .text) > 0 then
          begin
            Application.MessageBox
              ('Nota fiscal já usada para outro pedido. Por favor, verifique!', 'Atenção');
            fExpedicao.Free;
            AtivaV;
            qVenda.RecNo := rg;
            Exit;
          end;
        end
        else
        begin
          Application.MessageBox('Nota fiscal não localizada. Por favor, verifique!',
            'Atenção');
          fExpedicao.Free;
          AtivaV;
          qVenda.RecNo := rg;
          Exit;
        end;

        Execsql('update venda set sincronizado = ''N'', status = ''N'', notafiscal = '
          + dm.qPesq.FieldByName('id').text +
          ', geradonfe = ''S'', expedido = ''S'', dtexpedicao = ' +
          quotedstr(formatdatetime('dd/mm/yyyy', Date)) + '  where id = ' +
          qVendaid.text);
        vinculo := 'S';
      end;

      if nCial > 0 then
      begin
        qCial.Close;
        qCial.ParamByName('id').Value := nCial;
        qCial.Open;
        Execsql(' update venda set idcomercial = ' + inttostr(nCial) +
          ' , desc_especial = ' + pontoVirgula(formatfloat('#0.00',
          qCialPorcentagem.AsFloat)) + ' where id = ' + qVendaid.text);
        nvCial := qCialPorcentagem.AsFloat;
      end;

      fExpedicao.Free;
    end
    else
    begin
      fExpedicao.Free;
      AtivaV;
      qVenda.RecNo := rg;
      Exit;
    end;
  end;

  if (dm.qParametrofinan_expedicao.text = 'S') or
    ((dm.qParametropd_vincular_nf.Value = 'S') and (nvCial <> oldCial)) or
    ((dm.qParametromudar_cial_exp.Value = 'S') and (nvCial <> oldCial)) then
  begin
    if dm.qParametrousa_cond_porcentagem.text = 'S' then
      FinanceiroPorc(qVendaid.Value)
    else
      Financeiro(qVendaid.Value);
  end;

  if dm.qParametronao_usar_expedicao.text = 'N' then
  begin
    L.Close;
    L.ParamByName('Id').Value := qVendaid.Value;
    L.Open;

    Execsql('delete from estoque where idemp = 1 and idvenda = ' +
      inttostr(qVendaid.Value));
    while L.Eof = false do
    begin
      // baixa somente no empresa 1
      Estoque(1, 0, 0, 0, 0, qVendaid.Value, LIdProduto.Value, 0, 0,
        LTipo.Value, 'S', LQtd.Value, 0);

      // baixa produto marcado: usar como materia prima;
      // não baixar - mudado 19/08/21 - Baixa somente na produção - Tha
      // Agora baixa se no produto tiver marcado bx_item_ficha_venda
      if Lbx_item_ficha_venda.asString = 'S' then
      begin
        qFicha.Close;
        qFicha.ParamByName('pro').Value := LIdProduto.asInteger;
        qFicha.Open;
        while qFicha.Eof = false do
        begin
          Estoque(1, 0, 0, 0, 0, qVendaid.Value, qFichaiditem.Value, 0, 0,
            qFichatipo.text, 'S', LQtd.Value * qFichaquantidade.Value, 0);
          qFicha.Next;
        end;
      end;
      L.Next;
    end;

    if vinculo = 'N' then
      Execsql('update venda set sincronizado = ''N'', status = ''X'', expedido = ''S'', '
        + ' dtexpedicao = ' + quotedstr(formatdatetime('dd/mm/yyyy', Date)) +
        ' where id =  ' + inttostr(qVendaid.Value));
    Sleep(100);

    // baixa caixa master
    L.First;
    while L.Eof = false do
    begin
      if Lidcxmaster.asInteger > 0 then // baixa somente no empresa 1
        Estoque(1, 0, 0, 0, 0, qVendaid.Value, Lidcxmaster.Value, 0, 0,
          LTipo.text, 'S', Lqtd_cx.Value, 0);
      AtualizaQtdDisponivel(LIdProduto.asInteger, false);
      L.Next;
    end;
  end;

  if vinculo = 'S' then
  begin
    AtivaV;
    qVenda.RecNo := rg;
    try
      acFechar.Enabled := false;
      atualizaWeb;
    finally
      acFechar.Enabled := true;
    end;

    Exit;
  end;

  podeNF := 'S';
  // 01/07/2020 - pedido para nao permitir gerar nota com comercial = 0 - bruba lar
  if (dm.qParametrofolha_separacao_mod_3.text = 'S') and
    (qVendaporcentagem.AsFloat = 0.00) then
    podeNF := 'N';
  Sleep(100);

  if (podeNF = 'S') then
  begin
    if Application.MessageBox('Emitir NFe?', 'confirmação', MB_YESNO) = idYes
    then
    begin
      qVenda.RecNo := rg;
      // chama NFe
      vX := #13;
      StatusNF := 'I';
      CodNF := 0;
      try
        Application.CreateForm(TfNf, fNF);
        fNF.edPedido.text := qVendaid.asString;
        fNF.edPedidoKeyPress(Application, vX);
        fNF.Show;
      finally
        // Execsql('update venda set geradonfe = ''S'' where id =  ' + inttostr(qVendaid.Value) );
        Sleep(100);
        vIdnf := qVendaid.asInteger;
      end;
    end;
  end;

  Execsql('update venda set sincronizado = ''N'', status = ''X'' ' +
    ', expedido = ''S'' , dtexpedicao =  ' +
    quotedstr(formatdatetime('dd/mm/yyyy', Date)) + ' where id = ' +
    qVendaid.text);

  AtivaV;
  qVenda.RecNo := rg;
  try
    acFechar.Enabled := false;
    atualizaWeb;
  finally
    acFechar.Enabled := true;
  end;

end;

procedure TfGridVenda.acNfeExecute(Sender: TObject);
var
  vX: Char;
  nPed, Erro: String;
  idcl: Integer;
  Venda : TVenda;
begin
  if (qVenda.IsEmpty) then
    Exit;

  nPed := '';
  Erro := '';
  idcl := 0;
  CheckDBGrid1.DataSource := nil;
  CheckDBGrid2.DataSource := nil;

  qVenda.First;
  while qVenda.Eof = false do
  begin
    if qVendax.text = 'T' then
    begin
      if idcl = 0 then
        idcl := qVendaidcliente.asInteger;
      if idcl = qVendaidcliente.asInteger then
      begin

        Venda := TVenda.Create;
        try
          Venda.ID := qVendaid.AsInteger;

          if (qVendastatus.Value = 'C') then
            Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
              'Venda cancelada, não é possível emitir NFe' + #13 + #10
          else if (qVendastatus.Value = 'D') or (qVendastatus.Value = 'G') or
            (qVendastatus.Value = 'H') then
            Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
              'Venda não expedida. Por favor, verifique!' + #13 + #10
          else if (qVendastatus.Value = 'N') then
            Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
              'Venda já emitido NFe. Por favor, verifique!' + #13 + #10
          else if (qVendastatus.Value = 'J') then
            Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
              'Venda com cliente reprovado. Por favor, verifique!' + #13 + #10
          else if Venda.VerificaEmUso then  // Estavam abrindo a mesma venda em dois computados.
            Erro := Erro + 'Venda:' + IntToStr(Venda.ID) + ' -> ' +
              'Venda já aberta em outro computador. Por favor, verifique!' + #13 + #10
          else if Venda.NFEmitida then
            Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
              'Venda já emitido NFe. Por favor, verifique!' + #13 + #10
          else
            // 01/07/2020 - pedido para nao permitir gerar nota com comercial = 0 - bruba lar
            if (dm.qParametrofolha_separacao_mod_3.text = 'S') and
              (qVendaporcentagem.AsFloat = 0.00) then
              Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
                'Venda com Comercialização Zero, Verifique!' + #13 + #10
            else
            begin
              if nPed = '' then
                nPed := qVendaid.text
              else
                nPed := nPed + ',' + qVendaid.text;
            end;

        finally
          Venda.Free;
        end;
      end
      else
        Erro := Erro + 'Venda:' + qVendaid.text + ' -> ' +
          'Venda com Cliente Diferente, Verifique!' + #13 + #10
    end;
    qVenda.Next;
  end;
  CheckDBGrid2.DataSource := dPro;
  CheckDBGrid1.DataSource := dVenda;
  qVenda.First;
  if trim(Erro) <> '' then
    Application.MessageBox(pchar('Não foi possivel selecionar as vendas abaixo:'
      + #13 + #10 + '---------------------------------------------' + #13 + #10
      + Erro), 'Atenção');

  if trim(nPed) = '' then
  begin
    Application.MessageBox('Selecione pelo menos uma venda para continuar',
      'Atenção');
    Exit;
  end;

  vX := #13;
  StatusNF := 'I';
  CodNF := 0;
  Application.CreateForm(TfNf, fNF);
  fNF.ConsVenda := 'S';
  // fNF.edPedido.Text := qVendaid.AsString;
  fNF.edPedido.text := nPed;
  Pedidos := nPed;

  ExecSQL('update venda set EmUso = ''S'' where id in (' + QuotedStr(nPed) + '); ');

  fNF.edPedidoKeyPress(Application, vX);
  fNF.Show;

end;

procedure TfGridVenda.acNovoExecute(Sender: TObject);
begin
  if not FormEstaCriado(TfVenda) then
  begin
    if StatusVenda = '' then
    begin
      StatusVenda := 'I';
      codVenda := 0;
    end;
    Application.CreateForm(TfVenda, fVenda);
  end
  else
    Application.MessageBox('Tela de venda já aberta. Por favor, verifique!', 'Atenção');
  // fMenu.CriarForm(TfVenda );
  // application.createForm(TfVenda, fVenda);

end;

procedure TfGridVenda.acRelExecute(Sender: TObject);
var
  fil: String;
begin

  if qVenda.IsEmpty then
    Exit;

  Application.CreateForm(TfImpressoes, fImpressoes);
  if ckTodas.Checked then
    fImpressoes.lPeriodo.caption := 'Período: Todas'
  else
    fImpressoes.lPeriodo.caption := 'Período: ' + formatdatetime('dd/mm/yyyy',
      edDt1.Date) + ' até ' + formatdatetime('dd/mm/yyyy', edDt2.Date);
  fImpressoes.lEmpresa.caption := cbEmp.text;
  fImpressoes.lSt.caption := cbStatus.text;

  fil := '';
  if trim(edVenda.text) <> '' then
    fil := fil + 'Nº Venda: ' + trim(edVenda.text);
  if trim(edVen.text) <> '' then
    fil := fil + 'Representante: ' + trim(edVen.text);
  if trim(edCli.text) <> '' then
    fil := fil + 'Cliente: ' + trim(edCli.text);
  if trim(edPro.text) <> '' then
    fil := fil + 'Produto: ' + trim(edPro.text);
  fImpressoes.lFiltro.caption := fil;

  vEnv_EmailDest := qVendaemail.text;
  vEnv_Report := fImpressoes.rpImpTela;
  fImpressoes.rpImpTela.PreviewModal;
  fImpressoes.Free;

end;

procedure TfGridVenda.acSatExecute(Sender: TObject);
Var
  vEmp, vCodVenda : Integer;
begin
  // adSat
  GerarSat(qVendaid.asInteger);

  // Refaz o Estoque de Acordo com a Empresa Selecionada na venda   Granelli 12/07/2021
  vEmp := qVendaidemp.asInteger;
  vCodVenda := qVendaid.asInteger;

  L.Close;
  L.ParamByName('Id').Value := vCodVenda;
  L.Open;

  Execsql('delete from estoque where idvenda = ' + inttostr(vCodVenda)+ ' and idemp = '+inttoStr(vemp));
  while L.Eof = false do
  begin
    // baixa somente no empresa 1 Se efetivar, baixa da empresa do combo
    Estoque(vEmp, 0, 0, 0, 0, vCodVenda, LIdProduto.Value, 0, 0, LTipo.Value,
      'S', LQtd.Value, qVendaCupom.asInteger);

    // baixa produto marcado: usar como materia prima;
    qFicha.Close;
    qFicha.ParamByName('pro').Value := LIdProduto.asInteger;
    qFicha.Open;
    while qFicha.Eof = false do
    begin
      Estoque(vEmp, 0, 0, 0, 0, vCodVenda, qFichaiditem.Value, 0, 0,
        qFichatipo.text, 'S', LQtd.Value * qFichaquantidade.Value,
        qVendaCupom.asInteger);
      qFicha.Next;
    end;

    L.Next;
  end;

  // baixa caixa master
  L.First;
  while L.Eof = false do
  begin
    if Lidcxmaster.asInteger > 0 then // baixa somente no empresa 1
      Estoque(vEmp, 0, 0, 0, 0, codVenda, Lidcxmaster.Value, 0, 0, LTipo.text,
        'S', Lqtd_cx.Value, 0);
    L.Next;
  end;
end;

procedure TfGridVenda.acSeparaExecute(Sender: TObject);
begin
  if qVenda.IsEmpty then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda cancelada. Não é possível emitir NFe',
      'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'J') then
  begin
    Application.MessageBox('Venda com cliente reprovado. Por favor, verifique!',
      'Atenção');
    Exit;
  end;

  if dm.qParametrofolhaSeparacao_mod_5.text = 'S' then // granelli
    ImprimirSeparacaoModelo5(qVendaid.Value)
  else if dm.qParametrofolha_separacao_mod_3.text = 'S' then // brubalar
    ImprimirExpedicao(qVendaid.Value)
  else if dm.qParametronovafolhasep.text = 'S' then
    ImprimirSeparacao(qVendaid.Value)
  else if dm.qParametrofolhasepSemValor.text = 'S' then
    ImprimirSeparacaoSemValor(qVendaid.Value)
  else
  begin
    separacao := 'S';
    ImprimirPedido(qVendaid.Value);
  end;

end;

procedure TfGridVenda.acVoltarExecute(Sender: TObject);
var
  novoSt, oldSt, novoMot, nSql, txt, nomeCli, nomeRep, exped: String;
  idrep, codPed, codPedWeb: Integer;
begin

  if (qVenda.IsEmpty) then
    Exit;

  if not(qVenda.locate('x', 'T', [])) then
  begin
    Application.MessageBox('Selecione um item para continuar!', 'Atenção');
    Exit;
  end;

  if (qVendaex.Value = 1) or (qVendastatus.Value = 'C') then
  begin
    Application.MessageBox('Venda já está cancelada.', 'Atenção');
    Exit;
  end;

  if (qVendastatus.Value = 'N') then
  begin
    Application.MessageBox('Venda com NFe já emitida.', 'Atenção');
    Exit;
  end;

  if acLiberar.Visible = false then
    if (qVendastatus.Value = 'D') then
      Exit;

  if qVendaidweb.asInteger > 0 then
    codPedWeb := qVendaidweb.asInteger;
  codPed := qVendaid.asInteger;
  oldSt := qVendastatus.Value;
  nomeCli := trim(qVendanomeCli.text);
  nomeRep := trim(qVendanomeVend.text);
  idrep := qVendaidvendedor.asInteger;

  {
    status
    'D' = 'Digitado            '
    'G' = 'Aprovado Comercial  '
    'H' = 'Aprovado Financeiro '
    'J' = 'Reprovado           '
    'X' = 'Expedido            '
    'N' = 'NFe Emitida         '
    'C' = 'Cancelado           '
  }
  exped := '';
  Application.CreateForm(TfEscolheStatusPedido, fEscolheStatusPedido);

  fEscolheStatusPedido.cbSt.Items.Clear;

  if oldSt = 'X' then
  begin
    if acLiberar.Visible then
    begin
      fEscolheStatusPedido.cbSt.Items.Add('Aprovado Financeiro');
      fEscolheStatusPedido.cbSt.Items.Add('Aprovado Comercial');
      fEscolheStatusPedido.cbSt.Items.Add('Digitado');
      fEscolheStatusPedido.cbSt.Items.Add('Reprovado');
    end
    else
      fEscolheStatusPedido.cbSt.Items.Add('Digitado');
    exped := ', expedido = ''N'' ';
  end
  else if oldSt = 'H' then
  begin
    fEscolheStatusPedido.cbSt.Items.Add('Aprovado Comercial');
    fEscolheStatusPedido.cbSt.Items.Add('Digitado');
    fEscolheStatusPedido.cbSt.Items.Add('Reprovado');
  end
  else if oldSt = 'G' then
  begin
    fEscolheStatusPedido.cbSt.Items.Add('Digitado');
    fEscolheStatusPedido.cbSt.Items.Add('Reprovado');
  end
  else if oldSt = 'D' then
    fEscolheStatusPedido.cbSt.Items.Add('Reprovado')
  else if oldSt = 'J' then
    fEscolheStatusPedido.cbSt.Items.Add('Digitado');

  fEscolheStatusPedido.cbSt.Update;
  fEscolheStatusPedido.cbSt.ItemIndex := 0;

  fEscolheStatusPedido.ShowModal;
  novoSt := fEscolheStatusPedido.nSt;
  novoMot := fEscolheStatusPedido.mot;
  fEscolheStatusPedido.Free;

  if novoSt <> '' then
  begin
    Application.CreateForm(TfSenhaCad, fSenhaCad);
    fSenhaCad.ShowModal;
    fSenhaCad.Free;
    if RespCad = 'N' then
      Exit;

    if temPermissao(IdUsuario, 'VOLTA_STATUS') = false then
      Exit;

    if trim(novoMot) <> '' then
      nSql := ' , motivor = ' + quotedstr(novoMot) + ' , iduserr = ' +
        inttostr(IdUsuario) + ' , datar   = ' +
        quotedstr(formatdatetime('yyyy.mm.dd', Date))
    else
      nSql := '';

    Execsql(' update venda set sincronizado = ''N'', status = ' +
      quotedstr(novoSt) + nSql + exped + ' where id = ' + inttostr(codPed));
    Sleep(100);

    if (oldSt = 'X') or (novoSt = 'J') then
      Execsql('update creceber set ex = 1 where tipo = ''V'' and idvenda = ' + inttostr(codPed));

    // revome estoque
    if (oldSt = 'X') and (novoSt <> 'X') then
    begin
      if dm.qParametronao_usar_expedicao.text = 'N' then
      begin
        Execsql('delete from estoque where idemp = 1 and idvenda = ' +
          inttostr(qVendaid.Value));
        Sleep(100);

        // atualiza emp. 1
        Execsql(' update produto set produto.qtdestoque = coalesce((select sum(estoque.quantidade) from Estoque '
          + ' where Estoque.idemp = 1 and Estoque.idproduto = produto.id),0) where produto.id in (select venda_i.idproduto from venda_i '
          + ' where venda_i.idvenda = ' + qVendaid.text +
          ' group by  venda_i.idproduto) ');
        Sleep(100);
      end;
    end;

    GravaLogVenda(dm.qUserId.asInteger, qVendaid.asInteger, 0, 'Mudas Status',
      'Mudar Status da Venda ', qVendaidCliente.asInteger);

    Sleep(100);
    AtivaV;

    try
      acFechar.Enabled := false;
      atualizaWeb;
    finally
      acFechar.Enabled := true;
    end;
  end;

end;

procedure TfGridVenda.AtivaV;
var
  Emp: Integer;
begin

  Emp := strtoint(copy(cbEmp.Items.Strings[cbEmp.ItemIndex], 1, 1));
  // verificar se tem nota emitida pra ficar como expedida ou não
  if vIdnf > 0 then
  begin
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add('select v.NotaFiscal from venda v where v.Id = ' +
      inttostr(vIdnf));
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].asString = '' then
      Execsql('update venda set geradonfe = ''N'' where id =  ' +
        inttostr(vIdnf));

    vIdnf := 0;
  end;

  qPro.Close;
  qVenda.Close;
  if ckTodas.Checked then
    qVenda.ParamByName('dd').asInteger := 0
  else
  begin
    qVenda.ParamByName('dd').asInteger := 1;
    qVenda.ParamByName('di').asDate :=
      strtodate(formatdatetime('dd/mm/yyyy', edDt1.Date));
    qVenda.ParamByName('df').asDate :=
      strtodate(formatdatetime('dd/mm/yyyy', edDt2.Date));
  end;

  if ckTodasExp.Checked then
    qVenda.ParamByName('ddEX').asInteger := 0
  else
  begin
    qVenda.ParamByName('ddEX').asInteger := 1;
    qVenda.ParamByName('diEX').asDate :=
      strtodate(formatdatetime('dd/mm/yyyy', edDtExp1.Date));
    qVenda.ParamByName('dfEX').asDate :=
      strtodate(formatdatetime('dd/mm/yyyy', edDtExp2.Date));
  end;

  if trim(edVen.text) = '' then
    qVenda.ParamByName('vv').asInteger := 0
  else
  begin
    qVenda.ParamByName('vv').asInteger := 1;
    qVenda.ParamByName('pesqV').Value := '%' + trim(edVen.text) + '%';
  end;
  if trim(edCli.text) = '' then
    qVenda.ParamByName('cc').asInteger := 0
  else
  begin
    qVenda.ParamByName('cc').asInteger := 1;
    qVenda.ParamByName('pesqC').Value := '%' + trim(edCli.text) + '%';
  end;
  if trim(edPro.text) = '' then
    qVenda.ParamByName('pp').asInteger := 0
  else
  begin
    qVenda.ParamByName('pp').asInteger := 1;
    qVenda.ParamByName('pesqP').Value := '%' + trim(edPro.text) + '%';
  end;
  if trim(edVenda.text) = '' then
    qVenda.ParamByName('vd').asInteger := 0
  else
  begin
    qVenda.ParamByName('vd').asInteger := 1;
    qVenda.ParamByName('pesqA').Value := trim(edVenda.text);
  end;

  {
    status
    'D' = 'Digitado            '
    'G' = 'Aprovado Comercial  '
    'H' = 'Aprovado Financeiro '
    'J' = 'Reprovado           '
    'X' = 'Expedido            '
    'N' = 'NFe Emitida         '
    'C' = 'Cancelado           '
  }
  case cbStatus.ItemIndex of
    0:
      qVenda.ParamByName('st').Value := 'T';
    1:
      qVenda.ParamByName('st').Value := 'D';
    2:
      qVenda.ParamByName('st').Value := 'G';
    3:
      qVenda.ParamByName('st').Value := 'H';
    4:
      qVenda.ParamByName('st').Value := 'X';
    5:
      qVenda.ParamByName('st').Value := 'N';
    6:
      qVenda.ParamByName('st').Value := 'C';
  end;
  qVenda.ParamByName('emp').asInteger := Emp;

  // Add por Nilton
  if ckCanceladas.Checked = false then
    qVenda.ParamByName('st2').Value := 'C'
  else
    qVenda.ParamByName('st2').Value := '';

  case cbSat.itemIndex of
   0: qVenda.ParamByName('sat').asString := 'T';
   1: qVenda.ParamByName('sat').asString := 'S';
   2: qvenda.ParamByName('sat').asString := 'N';
  end;

  qVenda.Open;
end;

procedure TfGridVenda.cbEmpClick(Sender: TObject);
begin
  AtivaV;
end;

procedure TfGridVenda.cbSatClick(Sender: TObject);
begin
  ativaV;
end;

procedure TfGridVenda.cbStatusClick(Sender: TObject);
begin
  AtivaV;
end;

procedure TfGridVenda.CheckDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
    CheckDBGrid1.Canvas.Brush.Color := $00FCA258;
    CheckDBGrid1.Canvas.Font.Color := clWhite;
  end
  else
  begin
    if qVendastatus.Value = 'C' then // cancelado
      CheckDBGrid1.Canvas.Brush.Color := $009F9FFF
    else if (qVendastatus.Value = 'X') then // expedido
      CheckDBGrid1.Canvas.Brush.Color := $00A5F58D
    else if (qVendastatus.Value = 'N') then // nfe emitida
      CheckDBGrid1.Canvas.Brush.Color := $00FF79BC
    else if (qVendastatus.Value = 'G') then // apr. comercial
      CheckDBGrid1.Canvas.Brush.Color := $00FFFFBB
    else if (qVendastatus.Value = 'H') then // apr. financeiro
      CheckDBGrid1.Canvas.Brush.Color := $00FFCB97
    else if (qVendastatus.Value = 'J') then // reprovado
      CheckDBGrid1.Canvas.Brush.Color := $005151FF;
  end;
  CheckDBGrid1.DefaultDrawDataCell(Rect, CheckDBGrid1.Columns[DataCol]
    .Field, State);

  if (qVendaidweb.asInteger > 0) and (upperCase(Column.FieldName) = 'IDWEB')
  then
  begin
    CheckDBGrid1.Canvas.Brush.Color := $0075BAFF;
    CheckDBGrid1.DefaultDrawDataCell(Rect, CheckDBGrid1.Columns[DataCol]
      .Field, State);
  end;

  if (qVendax.Value = 'T') then // reprovado
  begin
    CheckDBGrid1.Canvas.Brush.Color := $008080FF;
    CheckDBGrid1.DefaultDrawDataCell(Rect, CheckDBGrid1.Columns[DataCol]
      .Field, State);
  end;

end;

procedure TfGridVenda.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(Key, Shift) then
    abort;

end;

procedure TfGridVenda.CheckDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
   if (gdSelected in State) then
  begin
    CheckDBGrid2.Canvas.Brush.Color := $00FCA258;
    CheckDBGrid2.Canvas.Font.Color := clWhite;
  end
  else
  begin

    if (qProqtd_cxdev.asFloat >= qProqtd_cx.asFloat) then // devolução total
    begin
       CheckDBGrid2.Canvas.Brush.Color := $005555FF;
       CheckDBGrid2.Canvas.Font.Color := clBlack;
    end
    else
    if (qProqtd_cx.asFloat > qProqtd_cxdev.asFloat) and (qProqtd_cxdev.asFloat > 0) then //devolvida parcial
    begin
      CheckDBGrid2.Canvas.Brush.Color := $009F9FFF;
       CheckDBGrid2.Canvas.Font.Color := clBlack;
    end;

  end;
  CheckDBGrid2.DefaultDrawDataCell(Rect, CheckDBGrid2.Columns[DataCol].Field, State);


end;

procedure TfGridVenda.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(Key, Shift) then
    abort;

end;

procedure TfGridVenda.ckSelClick(Sender: TObject);
var
  tp: string;
begin
  if ckSel.Checked then
    tp := 'T'
  else
    tp := 'F';
  qVenda.First;
  while qVenda.Eof = false do
  begin
    qVenda.Edit;
    qVendax.text := tp;
    qVenda.Post;

    qVenda.Next;
  end;
  qVenda.First;
  qVenda.locate('X', 'T', []);
end;

procedure TfGridVenda.ckTodasClick(Sender: TObject);
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
  AtivaV;

end;

procedure TfGridVenda.ckTodasExpClick(Sender: TObject);
begin
  if ckTodasExp.Checked then
  begin
    edDtExp1.Enabled := false;
    edDtExp2.Enabled := false;
  end
  else
  begin
    edDtExp1.Enabled := true;
    edDtExp2.Enabled := true;
  end;
  AtivaV;
end;

procedure TfGridVenda.Comdevoluo1Click(Sender: TObject);
begin
  vDevolucao := True;
  acImprimir.Execute;
  vDevolucao := false;
end;

procedure TfGridVenda.edVenChange(Sender: TObject);
begin
  AtivaV;
end;

procedure TfGridVenda.edDt1Change(Sender: TObject);
begin
  edDt2.OnChange := nil;
  edDt2.Date := edDt1.Date;
  edDt2.OnChange := edDt2Change;
  AtivaV;
end;

procedure TfGridVenda.edDt1Exit(Sender: TObject);
begin
  ti := 0;
end;

procedure TfGridVenda.edDt1KeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) THEN
  BEGIN
    ti := ti + 1;
    if ti >= 3 then
      edDt2.SetFocus
    else
      keybd_event(39, 0, 0, 0);
  END;

end;

procedure TfGridVenda.edDt2Change(Sender: TObject);
begin
  if edDt2.Date < edDt1.Date then
  begin
    edDt1.OnChange := nil;
    edDt1.Date := edDt2.Date;
    edDt1.OnChange := edDt1Change;
  end;
  AtivaV;
end;

procedure TfGridVenda.edDt2Exit(Sender: TObject);
begin
  ti := 0;

end;

procedure TfGridVenda.edDt2KeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) THEN
  BEGIN
    ti := ti + 1;
    if ti = 3 then
      edVenda.SetFocus
    else
      keybd_event(39, 0, 0, 0);
  END;

end;

procedure ImprimirSeparacao(cod: Integer);
var
  cx: real;
Begin

  Application.CreateForm(TfImpressoes, fImpressoes);
  fImpressoes.Q.Close;
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;
  fImpressoes.Q.First;
  while fImpressoes.Q.Eof = false do
  begin
    cx := cx + fImpressoes.Qqtd_cx.AsFloat;
    fImpressoes.Q.Next;
  end;
  fImpressoes.Q.First;
  fImpressoes.lTotCx.caption := formatfloat('###,##0.###', cx);

  vEnv_EmailDest := '';
  vEnv_Report := fImpressoes.rpImpSeparacao;

  fImpressoes.rpImpSeparacao.PreviewModal;
  fImpressoes.Free;

end;

procedure ImprimirSeparacaoSemValor(cod: Integer);
var
  cx: real;
Begin

  Application.CreateForm(TfImpressoes, fImpressoes);
  fImpressoes.Q.Close;
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;
  fImpressoes.Q.First;

  vEnv_EmailDest := '';
  vEnv_Report := fImpressoes.rpImpSepSemValor;

  fImpressoes.rpImpSepSemValor.PreviewModal;
  fImpressoes.Free;

end;

procedure ImprimirSeparacaoModelo5(cod: Integer);
var
  cx: real;
Begin

  Application.CreateForm(TfImpressoes, fImpressoes);
  fImpressoes.Q.Close;
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;
  fImpressoes.Q.First;

  vEnv_EmailDest := '';
  vEnv_Report := fImpressoes.rpFolhaSepracao5;

  fImpressoes.rpFolhaSepracao5.PreviewModal;
  fImpressoes.Free;

end;

procedure ImprimirExpedicao(cod: Integer);
var
  nP: String;
  cx: real;
  SQL: String;
Begin

  Application.CreateForm(TfImpressoes, fImpressoes);

  SQL := ' select venda.*, venda_i.*, venda_i.total totprod, ' +
    ' venda_i.desconto  descprod, cliente.*, produto.descricao, ' +
    ' produto.cod_manual, vendedor.nome nomeVend, cond_pgto.descricao desCond, '
    + ' venda.obs obs_venda, produto.barras, produto.referencia, produto.multiplo, '
    + ' coalesce( venda_i.qtd * produto.pesobru,0 ) totPesoBruto, ' +
    ' venda_i.total + venda_i.desconto TotalBrutoProd, nf.nf, nf.emissao dt_nf, '
    + ' tra.nome NomeT, trd.nome NomeD, ' +
    ' (coalesce(produto.pesobru,0.00000) * venda_i.volume ) pesoBrCx, ' +
    ' venda_I.Qtd / COALESCE(produto.divisor, 1) qtdDivisor, venda_i.id idve_i, '
    + ' c2.descricao desCond2, cliente.usa_codigo, ge.nome nomeGer, us.nome nomefunc, produto.unidade_nfe '
    + ' , tabela.descricao destabela ' +
    ' , concat(produto.idcor, '' - '', cor.descricao) cor, produto.tamanho, produto.referencia_base, '+
    ' case when COALESCE(produto.volume2, '''') <> '''' THEN ' +
    '   concat (Venda_I.volume/2 , '' '', produto.volume2) ' +
    ' else '''' end Dvolume2, ' +
    ' case when COALESCE(produto.volume2, '''') <> '''' THEN ' +
    '   concat (Venda_I.volume/2 , '' '', produto.volume1) ' +
    ' else concat (Venda_I.volume, '' '', produto.volume1) ' +
    ' end Dvolume1 ' +
    ' from  venda ' +
    ' left join venda_i  on venda_i.idvenda = venda.id ' +
    ' left join produto on produto.id = venda_I.idproduto ' +
    ' left join cliente on cliente.id = venda.idcliente ' +
    ' left join vendedor on vendedor.id = venda.idvendedor ' +
    ' left join cond_pgto on cond_pgto.id = venda.idcondpgto ' +
    ' left join cond_pgto c2 on c2.id = venda.idcondpgto2 ' +
    ' left join nf on nf.id = venda.notafiscal ' +
    ' left join transportadora tra on tra.id = venda.idtranspotadora ' +
    ' left join transportadora trd on trd.id = venda.idtransp ' +
    ' left join vendedor ge on ge.id = venda.idgerente ' +
    ' left join usuario us on us.id = venda.idusuario ' +
    ' left join tabela on tabela.id = venda.idtabela ' +
    ' left join cor on cor.id = produto.idcor '+
    ' where venda.id = :id ' + ' order by produto.referencia ';

  fImpressoes.Q.Close;
  fImpressoes.Q.SQL.Clear;
  fImpressoes.Q.SQL.Add(SQL);
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;
  fImpressoes.Q.First;
  while fImpressoes.Q.Eof = false do
  begin
    if nP = '' then
      nP := fImpressoes.Qidve_i.text
    else
      nP := nP + ',' + fImpressoes.Qidve_i.text;

    cx := cx + fImpressoes.Qqtd_cx.AsFloat;
    fImpressoes.Q.Next;
  end;
  fImpressoes.nProd := nP;
  fImpressoes.Q.First;
  fImpressoes.lTotCx.caption := formatfloat('###,##0.###', cx);

  vEnv_EmailDest := '';
  vEnv_Report := fImpressoes.rpImpExpedicaoNova;

  fImpressoes.rpImpExpedicaoNova.PreviewModal;
  fImpressoes.Free;

end;

procedure ImprimirPedidoDZ(cod: Integer);
var
  SQL: String;
Begin
  Application.CreateForm(TfImpressoes, fImpressoes);
  Sleep(100);

  SQL := ' select venda.*, venda_i.*, venda_i.total totprod, ' +
    ' venda_i.desconto  descprod, cliente.*, produto.descricao, ' +
    ' produto.cod_manual, vendedor.nome nomeVend, cond_pgto.descricao desCond, '
    + ' venda.obs obs_venda, produto.barras, produto.referencia, produto.multiplo, '
    + ' coalesce( venda_i.qtd * produto.pesobru,0 ) totPesoBruto, ' +
    ' venda_i.total + venda_i.desconto TotalBrutoProd, nf.nf, nf.emissao dt_nf, '
    + ' tra.nome NomeT, trd.nome NomeD, ' +
    ' (coalesce(produto.pesobru,0.00000) * venda_i.volume ) pesoBrCx, ' +
    ' venda_I.Qtd / COALESCE(produto.divisor, 1) qtdDivisor, venda_i.id idve_i, '
    + ' c2.descricao desCond2, cliente.usa_codigo, ge.nome nomeGer, us.nome nomeFunc, '
    + ' produto.unidade_nfe, tabela.descricao destabela ' +
    ' , concat(produto.idcor, '' - '', cor.descricao) cor, produto.tamanho, produto.referencia_base, '  +
    ' case when COALESCE(produto.volume2, '''') <> '''' THEN ' +
    '   concat (Venda_I.volume/2 , '' '', produto.volume2) ' +
    ' else '''' end Dvolume2, ' +
    ' case when COALESCE(produto.volume2, '''') <> '''' THEN ' +
    '   concat (Venda_I.volume/2 , '' '', produto.volume1) ' +
    ' else concat (Venda_I.volume, '' '', produto.volume1) ' +
    ' end Dvolume1 ' +
    ' from  venda ' +
    ' left join venda_i  on venda_i.idvenda = venda.id ' +
    ' left join produto on produto.id = venda_I.idproduto ' +
    ' left join cliente on cliente.id = venda.idcliente ' +
    ' left join vendedor on vendedor.id = venda.idvendedor ' +
    ' left join cond_pgto on cond_pgto.id = venda.idcondpgto ' +
    ' left join cond_pgto c2 on c2.id = venda.idcondpgto2 ' +
    ' left join nf on nf.id = venda.notafiscal ' +
    ' left join transportadora tra on tra.id = venda.idtranspotadora ' +
    ' left join transportadora trd on trd.id = venda.idtransp ' +
    ' left join vendedor ge on ge.id = venda.idgerente ' +
    ' left join usuario us on us.id = venda.idusuario ' +
    ' left join tabela on tabela.id = venda.idtabela ' +
    ' left join cor on cor.id = produto.idcor '+
    ' where venda.id = :id ' + ' order by produto.referencia ';

  fImpressoes.Q.Close;
  fImpressoes.Q.SQL.Clear;
  fImpressoes.Q.SQL.Add(SQL);
  fImpressoes.Q.Close;
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;

  if fImpressoes.QEx.Value = 1 then
    fImpressoes.lCancelada.Visible := true;

  vEnv_EmailDest := fImpressoes.Qemail.text;
  vEnv_Report := fImpressoes.rpImpPedidoDZ;
  fImpressoes.rpImpPedidoDZ.PreviewModal;
  fImpressoes.Free;

end;

procedure ImprimirPedidoModelo5(cod: Integer);
var
  SQL: String;
Begin
  Application.CreateForm(TfImpressoes, fImpressoes);
  Sleep(100);

  fImpressoes.Q.Close;
  fImpressoes.Q.Close;
  fImpressoes.Q.ParamByName('id').Value := cod;
  fImpressoes.Q.Open;
  if fImpressoes.Q.IsEmpty then
    Exit;

  if dm.qParametroimpPedido_2vias.Value = 'N' then
  begin
    fImpressoes.RLSubDetail7.Visible := false;
    fImpressoes.RLPanel173.Visible := false;
  end;

  if fImpressoes.Q.RecordCount > 1 then
    fImpressoes.RLPanel173.Height := fImpressoes.RLPanel173.Height -
      (15 * (fImpressoes.Q.RecordCount - 1));

  vEnv_EmailDest := fImpressoes.Qemail.text;
  vEnv_Report := fImpressoes.rpImpPedidoModelo5;
  fImpressoes.rpImpPedidoModelo5.PreviewModal;
  fImpressoes.Free;

end;


procedure ImprimirPedidoRefBase(cod: Integer);
begin
  Application.CreateForm(TfImpRefBase, fImpRefBase);
  Sleep(100);

  fImpRefBase.Q.Close;
  fImpRefBase.Q.ParamByName('id').Value := cod;
  fImpRefBase.Q.Open;
  if fImpRefBase.Q.IsEmpty then
    Exit;

  vEnv_EmailDest := fImpRefBase.Qemail.text;
  vEnv_Report := fImpRefBase.rpImpPedido;
  fImpRefBase.rpImpPedido.PreviewModal;
  fImpRefBase.Free;

end;

end.
