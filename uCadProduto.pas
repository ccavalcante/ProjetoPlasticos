unit uCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, CheckDBGrid, XiButton,
  System.Actions, System.ImageList, Vcl.Samples.Gauges;

type
  TfCadProduto = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    dFicha: TDataSource;
    qFicha: TZQuery;
    TId: TIntegerField;
    Test_seguranca: TFloatField;
    Test_minimo: TFloatField;
    Tft_conv_qtde: TFloatField;
    TabSheet3: TTabSheet;
    DBCheckBox1: TDBCheckBox;
    lCPFCNPJ: TLabel;
    CheckDBGrid1: TCheckDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    ckSA: TCheckBox;
    upF: TZUpdateSQL;
    Bevel1: TBevel;
    btExcluirF: TXiButton;
    rdTipo: TRadioGroup;
    gdPesq: TDBGrid;
    EdNom: TEdit;
    edCod: TEdit;
    qFichaId: TIntegerField;
    qFichaIdProduto: TIntegerField;
    qFichaQuantidade: TFloatField;
    Label6: TLabel;
    btAddP: TXiButton;
    Label7: TLabel;
    DBText1: TDBText;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    lvalor: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Tvalor: TFloatField;
    Tqtdestoque: TFloatField;
    Bevel2: TBevel;
    acTipo: TAction;
    edQtd: TMaskEdit;
    Tdescricao: TWideStringField;
    Ttipo: TWideStringField;
    Tproduzido: TWideStringField;
    Tbarras: TWideStringField;
    Treferencia: TWideStringField;
    Tft_conv_un: TWideStringField;
    Tft_conv_2un: TWideStringField;
    qFichadescr: TWideStringField;
    qFichaTipo2: TWideStringField;
    qFichaIdItem: TIntegerField;
    qFichaTipo: TWideStringField;
    qFichaUnidade: TWideStringField;
    TCusto_montagem: TFloatField;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    Tcod_Manual: TIntegerField;
    Tcest: TWideStringField;
    TNCM: TWideStringField;
    TeIPI: TWideStringField;
    Tobs: TWideMemoField;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    TPrecoCompra: TFloatField;
    TIcms: TFloatField;
    TPIS: TWideStringField;
    TpPIS: TFloatField;
    TCOFINS: TWideStringField;
    TpCOFINS: TFloatField;
    TIPI: TWideStringField;
    TpIPI: TFloatField;
    Tcsosn: TWideStringField;
    Tcfop: TWideStringField;
    Tcfop_fora: TWideStringField;
    Tmargem: TFloatField;
    Tex: TIntegerField;
    Tidfornecedor: TIntegerField;
    TRoyalties: TFloatField;
    Tnomefor: TWideStringField;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit14: TDBEdit;
    gdFor: TDBGrid;
    TabSheet4: TTabSheet;
    qComi: TZQuery;
    uComi: TZUpdateSQL;
    dComi: TDataSource;
    qComiID: TIntegerField;
    qComiIDproduto: TIntegerField;
    qComiIDvendedor: TIntegerField;
    qComipComissao: TFloatField;
    qCominome: TWideStringField;
    CheckDBGrid2: TCheckDBGrid;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    Bevel3: TBevel;
    Label20: TLabel;
    DBText2: TDBText;
    acZerar: TAction;
    qVend: TZQuery;
    qVendid: TIntegerField;
    qVendnome: TWideStringField;
    qVendcomissao: TFloatField;
    TIDSTRIB: TIntegerField;
    TREDUCAO: TFloatField;
    TST: TFloatField;
    TST2: TFloatField;
    TCSOSN2: TWideStringField;
    TMVA: TFloatField;
    TCODIPI: TWideStringField;
    TIDTIPO_TRIBUTACAO: TIntegerField;
    TIDORIGEM: TIntegerField;
    dCF: TDataSource;
    dCFOP: TDataSource;
    qCF: TZQuery;
    qCFOP: TZQuery;
    qTipoTribu: TZQuery;
    qCFcodigo: TWideStringField;
    qCFOPCFOP: TWideStringField;
    qTipoTribuID: TIntegerField;
    qTipoTribuTIPO: TWideStringField;
    qNCM: TZQuery;
    dNCM: TDataSource;
    qNCMID: TIntegerField;
    qNCMNCM: TWideStringField;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Gauge1: TGauge;
    Tunidade_nfe: TWideStringField;
    Label25: TLabel;
    DBEdit10: TDBEdit;
    TMARGEMST: TFloatField;
    DBEdit18: TDBEdit;
    lValor2: TLabel;
    Tvalor2: TFloatField;
    Label10: TLabel;
    Label29: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    TpesoLiq: TFloatField;
    Tpesobru: TFloatField;
    Label28: TLabel;
    DBEdit21: TDBEdit;
    Label30: TLabel;
    DBEdit22: TDBEdit;
    TDUN14: TWideStringField;
    Label31: TLabel;
    DBEdit23: TDBEdit;
    Tcubagem: TFloatField;
    qFichatotmp: TFloatField;
    qFichatotprocesso: TFloatField;
    TCustoProcesso: TFloatField;
    TCustoMP: TFloatField;
    Label32: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    Label33: TLabel;
    Bevel4: TBevel;
    Label34: TLabel;
    DBEdit26: TDBEdit;
    Label35: TLabel;
    DBEdit27: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    Label39: TLabel;
    Label38: TLabel;
    DBEdit28: TDBEdit;
    TCustoproducao: TFloatField;
    TCustoOperacional: TFloatField;
    TCustoFinal: TFloatField;
    Label40: TLabel;
    DBEdit29: TDBEdit;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit30: TDBEdit;
    Bevel5: TBevel;
    Label44: TLabel;
    DBEdit31: TDBEdit;
    TVendaSugerido: TFloatField;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit32: TDBEdit;
    Label48: TLabel;
    DBEdit33: TDBEdit;
    Label50: TLabel;
    bt_atualF: TXiButton;
    btAtualPreco: TXiButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label51: TLabel;
    TIdCxMaster: TIntegerField;
    qMP: TZQuery;
    dMP: TDataSource;
    qMPid: TIntegerField;
    qMPdescricao: TWideStringField;
    TEmbalagem: TWideStringField;
    Tidweb: TIntegerField;
    Tsincronizado: TWideStringField;
    Bevel6: TBevel;
    Label55: TLabel;
    lFator: TLabel;
    Shape1: TShape;
    btCubagem: TXiButton;
    Taltura: TFloatField;
    Tlargura: TFloatField;
    Tcomprimento: TFloatField;
    Label64: TLabel;
    qMPprecocompra: TFloatField;
    TcustoCxMaster: TFloatField;
    DBEdit37: TDBEdit;
    TabSheet5: TTabSheet;
    Label15: TLabel;
    cbCF: TDBLookupComboBox;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label107: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label65: TLabel;
    DBText3: TDBText;
    cbNCM: TDBLookupComboBox;
    Label24: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label22: TLabel;
    Label49: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBGrid2: TDBGrid;
    qForPro: TZQuery;
    qForProID: TIntegerField;
    qForProIDPRODUTO: TIntegerField;
    qForProIDFORNECEDOR: TIntegerField;
    qForProtipo: TWideStringField;
    qForProcod_for: TWideStringField;
    qForProqtd_conversao: TFloatField;
    uForPro: TZUpdateSQL;
    dForPro: TDataSource;
    qForProfantasia: TWideStringField;
    Tmultiplo: TFloatField;
    Label66: TLabel;
    DBEdit38: TDBEdit;
    TmaxDesconto: TFloatField;
    Tcst: TWideStringField;
    dsTipoTribu: TDataSource;
    Label67: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Tidgrupo: TIntegerField;
    qGrupo: TZQuery;
    dGrupo: TDataSource;
    qGrupoid: TIntegerField;
    qGrupodescricao: TWideStringField;
    DBComboBox3: TDBComboBox;
    DBGrid3: TDBGrid;
    qNcmUf: TZQuery;
    dNcmUf: TDataSource;
    qNcmUfID: TIntegerField;
    qNcmUfIDCF: TIntegerField;
    qNcmUfUF: TWideStringField;
    qNcmUfIDSTRIB: TIntegerField;
    qNcmUfCFOP: TWideStringField;
    qNcmUfCSOSN: TWideStringField;
    qNcmUfCSOSN2: TWideStringField;
    qNcmUfPIS: TWideStringField;
    qNcmUfPPIS: TFloatField;
    qNcmUfCONFINS: TWideStringField;
    qNcmUfPCOFINS: TFloatField;
    qNcmUfREDUCAO: TFloatField;
    qNcmUfCODIPI: TWideStringField;
    qNcmUfIPI: TFloatField;
    qNcmUfMARGEMST: TFloatField;
    qNcmUfMVA: TFloatField;
    qNcmUfICMS_UF: TFloatField;
    Label68: TLabel;
    cbUnid: TComboBox;
    DBEdit39: TDBEdit;
    Label69: TLabel;
    DBCheckBox2: TDBCheckBox;
    Tmateria_prima: TWideStringField;
    Tdivisor: TFloatField;
    Label70: TLabel;
    DBEdit40: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    Tnao_vender_web: TWideStringField;
    qEst: TZQuery;
    qEstidproduto: TIntegerField;
    qEstQtd: TFloatField;
    Label71: TLabel;
    DBEdit41: TDBEdit;
    DBText4: TDBText;
    Shape2: TShape;
    Panel1: TPanel;
    Label72: TLabel;
    cbGru: TComboBox;
    Tdesgrupo: TWideStringField;
    pMedPro: TPanel;
    Label52: TLabel;
    DBEdit34: TDBEdit;
    Label53: TLabel;
    DBEdit35: TDBEdit;
    Label54: TLabel;
    DBEdit36: TDBEdit;
    pMedCx: TPanel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    DBEdit6: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    TalturaCx: TFloatField;
    TlarguraCx: TFloatField;
    TcomprimentoCx: TFloatField;
    qCM: TZQuery;
    qCMalturaCX: TFloatField;
    qCMlarguraCx: TFloatField;
    qCMcomprimentoCx: TFloatField;
    Tbx_item_ficha_venda: TWideStringField;
    DBCheckBox4: TDBCheckBox;
    TabSheet6: TTabSheet;
    DBText5: TDBText;
    Bevel7: TBevel;
    Label76: TLabel;
    cbProcesso: TComboBox;
    ckUltimo: TCheckBox;
    ckAnt: TCheckBox;
    edOrdem: TMaskEdit;
    Label78: TLabel;
    edTempo: TMaskEdit;
    Label79: TLabel;
    edCusto: TMaskEdit;
    btnAddP2: TXiButton;
    btExcluirP: TXiButton;
    gridProc: TCheckDBGrid;
    Label80: TLabel;
    DBEdit44: TDBEdit;
    Label81: TLabel;
    DBEdit45: TDBEdit;
    Bevel8: TBevel;
    edCod2: TEdit;
    ednom2: TEdit;
    Label82: TLabel;
    cbUn: TComboBox;
    Label83: TLabel;
    edQtd2: TMaskEdit;
    BtAddPi: TXiButton;
    btExcluirI: TXiButton;
    CheckDBGrid4: TCheckDBGrid;
    Label84: TLabel;
    DBEdit46: TDBEdit;
    qProc: TZQuery;
    upProc: TZUpdateSQL;
    dProc: TDataSource;
    qProcItem: TZQuery;
    upProcItem: TZUpdateSQL;
    dProcItem: TDataSource;
    qProcItemId: TIntegerField;
    qProcItemIdProcesso_fase: TIntegerField;
    qProcItemIdProduto: TIntegerField;
    qProcItemQtde: TFloatField;
    qProcItemUn: TWideStringField;
    qProcItemtipo: TWideStringField;
    qProcItemdescricao: TWideStringField;
    qProcItemprecocompra: TFloatField;
    qProcItemtot: TFloatField;
    gdPesq2: TDBGrid;
    Ttotprocesso: TFloatField;
    Ttotmp: TFloatField;
    Tcusto_total: TFloatField;
    DBCheckBox5: TDBCheckBox;
    Tativo: TWideStringField;
    rdAtivo: TRadioGroup;
    qProc2: TZQuery;
    qProc2Id: TIntegerField;
    qProc2Descricao: TWideStringField;
    dProc2: TDataSource;
    Label85: TLabel;
    qProcId: TIntegerField;
    qProcIdProcesso: TIntegerField;
    qProcDescricao: TWideStringField;
    qProcIdProduto: TIntegerField;
    qProcUltimo: TWideStringField;
    qProcOrdem: TIntegerField;
    qProcTempo: TWideStringField;
    qProcCusto: TFloatField;
    qProcDepende_Ant: TWideStringField;
    qPr: TZQuery;
    qPrId: TIntegerField;
    qPrIdProcesso: TIntegerField;
    qPrDescricao: TWideStringField;
    qPrIdProduto: TIntegerField;
    qPrUltimo: TWideStringField;
    qPrOrdem: TIntegerField;
    qPrTempo: TWideStringField;
    qPrCusto: TFloatField;
    qPrDepende_Ant: TWideStringField;
    Label86: TLabel;
    DBEdit47: TDBEdit;
    qProc2ordem: TIntegerField;
    TtotTempo: TWideStringField;
    qCor: TZQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dCor: TDataSource;
    Tidcor: TIntegerField;
    Ttamanho: TWideStringField;
    Treferencia_base: TWideStringField;
    pAdicionais: TPanel;
    Label77: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    btnref: TXiButton;
    Tdescor: TWideStringField;
    Label89: TLabel;
    edRef: TEdit;
    Tvolume1: TWideStringField;
    Tvolume2: TWideStringField;
    Label90: TLabel;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    TabSheet7: TTabSheet;
    Tficha_tecnica: TWideMemoField;
    Tdias_validade: TIntegerField;
    PageControl2: TPageControl;
    tabFicha: TTabSheet;
    tabGarantia: TTabSheet;
    Label93: TLabel;
    DBEdit59: TDBEdit;
    Label92: TLabel;
    Label94: TLabel;
    DBMemo3: TDBMemo;
    Label95: TLabel;
    DBMemo4: TDBMemo;
    Label91: TLabel;
    DBMemo2: TDBMemo;
    Label96: TLabel;
    DBGrid4: TDBGrid;
    Label97: TLabel;
    DBMemo5: TDBMemo;
    Label98: TLabel;
    Label99: TLabel;
    DBEdit62: TDBEdit;
    Label100: TLabel;
    DBMemo6: TDBMemo;
    Label101: TLabel;
    DBEdit63: TDBEdit;
    qGarantia: TZQuery;
    upGarantia: TZUpdateSQL;
    dsGarantia: TDataSource;
    qGarantiaid: TIntegerField;
    qGarantiaidProduto: TIntegerField;
    qGarantiagarantia: TWideStringField;
    qGarantiavalor: TFloatField;
    qGarantiaunidade: TWideStringField;
    TComposicaoQuali: TWideMemoField;
    TSubstituto: TWideMemoField;
    Tgarantia: TWideStringField;
    TModoUso: TWideMemoField;
    TPrazovalidade: TWideStringField;
    TConservacao: TWideMemoField;
    Trestricao: TWideStringField;
    TIndicacaoUso: TWideMemoField;
    dbmmoIndicacaoUso: TDBMemo;
    TCLASSIFICACAO: TWideMemoField;
    Label102: TLabel;
    dbmmoClassificacao: TDBMemo;
    TPROTEINADOOUMINERAL: TWideStringField;
    DBCheckBox6: TDBCheckBox;
    tsTabelaReferencia: TTabSheet;
    gbxTabelaReferenciaMicrominerais_dia: TGroupBox;
    gbxTabelaReferenciaVitaminas: TGroupBox;
    gbxTabelaReferenciaMicrominerais_mg: TGroupBox;
    gbxTabelaReferenciaConsumo: TGroupBox;
    dbgTabelaReferenciaConsumo: TDBGrid;
    QTabelaReferenciaConsumo: TZQuery;
    upTabelaReferenciaConsumo: TZUpdateSQL;
    dsTabelaReferenciaConsumo: TDataSource;
    QTabelaReferenciaConsumoID: TIntegerField;
    QTabelaReferenciaConsumoIDPRODUTO: TIntegerField;
    QTabelaReferenciaConsumoTIPOTABELA: TIntegerField;
    QTabelaReferenciaConsumoGARANTIA: TWideStringField;
    QTabelaReferenciaConsumoVALORREFERENCIA: TFloatField;
    QTabelaReferenciaConsumoQTDFORNECIDA_100G: TFloatField;
    QTabelaReferenciaConsumoQTDPERCFORNECIDA_100G: TFloatField;
    dsTabelaReferenciaMicromineraisMgDia: TDataSource;
    upTabelaReferenciaMicromineraisMgDia: TZUpdateSQL;
    QTabelaReferenciaMicromineraisMgDia: TZQuery;
    dbgTabelaReferenciaMicromineraisMg: TDBGrid;
    QTabelaReferenciaMicromineraisMgDiaID: TIntegerField;
    QTabelaReferenciaMicromineraisMgDiaIDPRODUTO: TIntegerField;
    QTabelaReferenciaMicromineraisMgDiaTIPOTABELA: TIntegerField;
    QTabelaReferenciaMicromineraisMgDiaGARANTIA: TWideStringField;
    QTabelaReferenciaMicromineraisMgDiaVALORREFERENCIA: TFloatField;
    QTabelaReferenciaMicromineraisMgDiaQTDFORNECIDA_100G: TFloatField;
    QTabelaReferenciaMicromineraisMgDiaQTDPERCFORNECIDA_100G: TFloatField;
    QTabelaReferenciaVitaminas: TZQuery;
    upTabelaReferenciaVitaminas: TZUpdateSQL;
    dsTabelaReferenciaVitaminas: TDataSource;
    QTabelaReferenciaVitaminasID: TIntegerField;
    QTabelaReferenciaVitaminasIDPRODUTO: TIntegerField;
    QTabelaReferenciaVitaminasTIPOTABELA: TIntegerField;
    QTabelaReferenciaVitaminasGARANTIA: TWideStringField;
    QTabelaReferenciaVitaminasVALORREFERENCIA: TFloatField;
    QTabelaReferenciaVitaminasQTDFORNECIDA_100G: TFloatField;
    QTabelaReferenciaVitaminasQTDPERCFORNECIDA_100G: TFloatField;
    dbgTabelaReferenciaVitaminas: TDBGrid;
    QTabelaReferenciaMicromineraisGDia: TZQuery;
    upTabelaReferenciaMicromineraisGDia: TZUpdateSQL;
    dsTabelaReferenciaMicromineraisGDia: TDataSource;
    QTabelaReferenciaMicromineraisGDiaID: TIntegerField;
    QTabelaReferenciaMicromineraisGDiaIDPRODUTO: TIntegerField;
    QTabelaReferenciaMicromineraisGDiaTIPOTABELA: TIntegerField;
    QTabelaReferenciaMicromineraisGDiaGARANTIA: TWideStringField;
    QTabelaReferenciaMicromineraisGDiaVALORREFERENCIA: TFloatField;
    QTabelaReferenciaMicromineraisGDiaQTDFORNECIDA_100G: TFloatField;
    QTabelaReferenciaMicromineraisGDiaQTDPERCFORNECIDA_100G: TFloatField;
    DBGrid5: TDBGrid;
    btnExcluirGarantia: TXiButton;
    btnExcluirTabelaReferenciaConsumo: TXiButton;
    btnExcluirTabelaReferenciaMicrominerais_MgDia: TXiButton;
    btnExcluirTabelaReferenciaMicrominerais_GDia: TXiButton;
    btnExcluirTabelaReferenciaVitaminas: TXiButton;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure EdPesqChange(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure EdNomChange(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure acCancelarExecute(Sender: TObject);
    procedure btExcluirFClick(Sender: TObject);
    procedure rdTipoClick(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure edQtdKeyPress(Sender: TObject; var Key: Char);
    procedure btAddPClick(Sender: TObject);
    procedure qFichaAfterPost(DataSet: TDataSet);
    procedure acTipoExecute(Sender: TObject);
    procedure qFichaNewRecord(DataSet: TDataSet);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure qComiNewRecord(DataSet: TDataSet);
    procedure XiButton2Click(Sender: TObject);
    procedure XiButton1Click(Sender: TObject);
    procedure CheckDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton4Click(Sender: TObject);
    procedure CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PageControl1Change(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure bt_atualFClick(Sender: TObject);
    procedure btAtualPrecoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCubagemClick(Sender: TObject);
    procedure TIdCxMasterValidate(Sender: TField);
    procedure qForProNewRecord(DataSet: TDataSet);
    procedure TmultiploValidate(Sender: TField);
    procedure TvalorValidate(Sender: TField);
    procedure qNCMAfterOpen(DataSet: TDataSet);
    procedure cbGruClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure qProcBeforePost(DataSet: TDataSet);
    procedure btExcluirPClick(Sender: TObject);
    procedure btnAddP2Click(Sender: TObject);
    procedure qProcAfterPost(DataSet: TDataSet);
    procedure gridProcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gridProcKeyPress(Sender: TObject; var Key: Char);
    procedure btExcluirIClick(Sender: TObject);
    procedure BtAddPiClick(Sender: TObject);
    procedure qProcItemAfterPost(DataSet: TDataSet);
    procedure qProcItemNewRecord(DataSet: TDataSet);
    procedure CheckDBGrid4CellClick(Column: TColumn);
    procedure CheckDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure qProcNewRecord(DataSet: TDataSet);
    procedure qProcAfterScroll(DataSet: TDataSet);
    procedure edCod2Exit(Sender: TObject);
    procedure edCod2KeyPress(Sender: TObject; var Key: Char);
    procedure ednom2Change(Sender: TObject);
    procedure gdPesq2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesq2KeyPress(Sender: TObject; var Key: Char);
    procedure rdAtivoClick(Sender: TObject);
    procedure edCustoKeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure edQtd2KeyPress(Sender: TObject; var Key: Char);
    procedure edCustoExit(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure cbProcessoClick(Sender: TObject);
    procedure btnrefClick(Sender: TObject);
    procedure ednom2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edRefChange(Sender: TObject);
    procedure tabGarantiaShow(Sender: TObject);
    procedure qGarantiaNewRecord(DataSet: TDataSet);
    procedure TabSheet7Show(Sender: TObject);
    procedure QTabelaReferenciaConsumoNewRecord(DataSet: TDataSet);
    procedure QTabelaReferenciaMicromineraisMgDiaNewRecord(DataSet: TDataSet);
    procedure QTabelaReferenciaVitaminasNewRecord(DataSet: TDataSet);
    procedure QTabelaReferenciaConsumoAfterOpen(DataSet: TDataSet);
    procedure QTabelaReferenciaMicromineraisMgDiaAfterOpen(DataSet: TDataSet);
    procedure QTabelaReferenciaVitaminasAfterOpen(DataSet: TDataSet);
    procedure QTabelaReferenciaMicromineraisGDiaAfterOpen(DataSet: TDataSet);
    procedure QTabelaReferenciaMicromineraisGDiaNewRecord(DataSet: TDataSet);
    procedure btnExcluirTabelaReferenciaConsumoClick(Sender: TObject);
    procedure btnExcluirTabelaReferenciaMicrominerais_MgDiaClick(Sender: TObject);
    procedure btnExcluirTabelaReferenciaMicrominerais_GDiaClick(Sender: TObject);
    procedure btnExcluirTabelaReferenciaVitaminasClick(Sender: TObject);
    procedure DStateChange(Sender: TObject);
    procedure btnExcluirGarantiaClick(Sender: TObject);
  private
    ordem, campo: string;
    nTipo: String;
    salvando: String;
    procedure calculcaPreco;
    procedure calculcaFicha;
    procedure ativaT;
    procedure mostramedidas;
    procedure calculaTotal;
    procedure verificaUltimo;
    procedure FormatarCamposTabelaReferencia(DataSet : TDataSet);
    { Private declarations }
  public
    { Public declarations }
    vNFicha: string;
    atualizandoVend: string;
    Procedure AddFicha;
    procedure CarregarDadosTabelaReferencia;
    procedure ConfigurarComponentesTabelaReferencia;
    procedure ExcluirRegistroTabelaFilha(DataSource : TDataSource);
  end;

var
  fCadProduto: TfCadProduto;

implementation

uses uDM, uFuncao, uImpProduto;

const SQL_SELECT_TABELAREFERENCIA = 'SELECT ID,                     '+
                              '        IDPRODUTO,             '+
                              '        TIPOTABELA,            '+
                              '        GARANTIA,              '+
                              '        VALORREFERENCIA,       '+
                              '        QTDFORNECIDA_100G,     '+
                              '        QTDPERCFORNECIDA_100G  '+
                              ' from TABELAREFERENCIAPRODUTO  '+
                              ' WHERE IDPRODUTO = :IDPRODUTO  '+
                              ' AND TIPOTABELA = :TIPOTABELA  ';

      SQL_INSERT_TABELAREFERENCIA = 'INSERT INTO TABELAREFERENCIAPRODUTO (  '+
                                    '         IDPRODUTO,                    '+
                                    '       TIPOTABELA,                     '+
                                    '       GARANTIA,                       '+
                                    '       VALORREFERENCIA,                '+
                                    '       QTDFORNECIDA_100G,              '+
                                    '       QTDPERCFORNECIDA_100G           '+
                                    '  )                                    '+
                                    '  VALUES (                             '+
                                    '         :IDPRODUTO,                   '+
                                    '       :TIPOTABELA,                    '+
                                    '       :GARANTIA,                      '+
                                    '       :VALORREFERENCIA,               '+
                                    '       :QTDFORNECIDA_100G,             '+
                                    '       :QTDPERCFORNECIDA_100G)         ';

      SQL_UPDATE_TABELAREFERENCIA = 'UPDATE TABELAREFERENCIAPRODUTO SET           '+
                                    '          GARANTIA = :GARANTIA,              '+
                                    '      VALORREFERENCIA = :VALORREFERENCIA,    '+
                                    '      QTDFORNECIDA_100G = :QTDFORNECIDA_100G,'+
                                    '      QTDPERCFORNECIDA_100G = :QTDPERCFORNECIDA_100G '+
                                    '  WHERE ID = :ID                             ';

      SQL_DELETE_TABELAREFERENCIA = 'DELETE FROM TABELAREFERENCIAPRODUTO ' +
                                    ' WHERE ID = :ID';

      TTR_CONSUMO             = 0;
      TTR_MICROMINERAIS_MGDIA = 1;
      TTR_VITAMINAS           = 2;
      TTR_MICROMINERAIS_GDIA  = 3;

      STR_MASCARA_VALOR = '###,###,##0.00';
      STR_MASCARA_QTD   = '###,##0.00';
      STR_MASCARA_PERC  = '###,##0.00';

{$R *.dfm}

procedure TfCadProduto.AddFicha;
begin

  qFicha.Close;
  qFicha.ParamByName('Id').Value := 0;
  qFicha.Open;
  qFicha.Insert;
  qFichaId.Value := InsereCodigo('ficha_tecnica', 'ID');
  qFichaIdProduto.Value := TId.Value;

end;

procedure TfCadProduto.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm(TfImpproduto, fImpProduto);
  vEnv_EmailDest := '';
  vEnv_Report := fImpProduto.rpLista;
  fImpProduto.rpLista.PreviewModal;
  fImpProduto.free;

end;

procedure TfCadProduto.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;

  if dm.qParametrousa_referencia_base.Text = 'S' then
  begin
    DBEdit4.ReadOnly := True;
    DBEdit4.Color := $00CEFDFC;
  end;

  DBEdit6.ReadOnly := True;
  DBEdit42.ReadOnly := True;
  DBEdit43.ReadOnly := True;

  DBEdit28.ReadOnly := True;
  DBEdit30.ReadOnly := True;
  DBEdit32.ReadOnly := True;
  DBEdit28.Color := $00CEFDFC;
  DBEdit30.Color := $00CEFDFC;
  DBEdit32.Color := $00CEFDFC;

  DBEdit3.SetFocus;

  btExcluirF.Enabled := True;
  btAddP.Enabled := True;
  bt_atualF.Enabled := True;
  btAtualPreco.Enabled := True;
  btnref.Enabled := True;
  btCubagem.Enabled := True;

  edCod.ReadOnly := False;
  EdNom.ReadOnly := False;
  edCod.Color := clWhite;
  EdNom.Color := clWhite;
  cbGru.Enabled := False;
  CheckDBGrid2.ReadOnly := False;

  edCod2.ReadOnly := False;
  ednom2.ReadOnly := False;
  edCod2.Color := clWhite;
  ednom2.Color := clWhite;
  CheckDBGrid4.ReadOnly := False;
  CheckDBGrid4.Columns[2].Color := clWhite;
  CheckDBGrid4.Columns[3].Color := clWhite;

  gridProc.ReadOnly := False;
  gridProc.Columns[1].ReadOnly := False;
  gridProc.Columns[2].ReadOnly := False;
  gridProc.Columns[3].ReadOnly := False;
  gridProc.Columns[4].ReadOnly := False;
  gridProc.Columns[1].Color := clWhite;
  gridProc.Columns[2].Color := clWhite;
  gridProc.Columns[3].Color := clWhite;
  gridProc.Columns[4].Color := clWhite;

  btExcluirP.Enabled := True;
  btnAddP2.Enabled := True;
  btExcluirI.Enabled := True;
  BtAddPi.Enabled := True;

end;

procedure TfCadProduto.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;

  if dm.qParametrousa_referencia_base.Text = 'S' then
  begin
    DBEdit4.ReadOnly := True;
    DBEdit4.Color := $00CEFDFC;
  end;

  DBEdit6.ReadOnly := True;
  DBEdit42.ReadOnly := True;
  DBEdit43.ReadOnly := True;

  DBEdit28.ReadOnly := True;
  DBEdit30.ReadOnly := True;
  DBEdit32.ReadOnly := True;
  DBEdit28.Color := $00CEFDFC;
  DBEdit30.Color := $00CEFDFC;
  DBEdit32.Color := $00CEFDFC;

  DBEdit3.SetFocus;

  btExcluirF.Enabled := True;
  btAddP.Enabled := True;
  bt_atualF.Enabled := True;
  btAtualPreco.Enabled := True;
  btnref.Enabled := True;
  btCubagem.Enabled := True;

  edCod.ReadOnly := False;
  EdNom.ReadOnly := False;
  edCod.Color := clWhite;
  EdNom.Color := clWhite;
  cbGru.Enabled := False;
  CheckDBGrid2.ReadOnly := False;

  edCod2.ReadOnly := False;
  ednom2.ReadOnly := False;
  edCod2.Color := clWhite;
  ednom2.Color := clWhite;
  CheckDBGrid4.ReadOnly := False;
  CheckDBGrid4.Columns[2].Color := clWhite;
  CheckDBGrid4.Columns[3].Color := clWhite;

  gridProc.ReadOnly := False;

  gridProc.Columns[1].ReadOnly := False;
  gridProc.Columns[2].ReadOnly := False;
  gridProc.Columns[3].ReadOnly := False;
  gridProc.Columns[4].ReadOnly := False;

  gridProc.Columns[1].Color := clWhite;
  gridProc.Columns[2].Color := clWhite;
  gridProc.Columns[3].Color := clWhite;
  gridProc.Columns[4].Color := clWhite;

  btExcluirP.Enabled := True;
  btnAddP2.Enabled := True;
  btExcluirI.Enabled := True;
  BtAddPi.Enabled := True;

end;

procedure TfCadProduto.acExcluirExecute(Sender: TObject);
var
  rg: integer;
  x: boolean;
begin
  rg := TId.Value;

  try
    x := (T.FieldByName('EX').AsInteger >= 0);
  except
    Exit;
  end;

  if Application.MessageBox('Deseja Realmente Excluir?', 'Atenção',
    mb_yesno + mb_defbutton2) = idNo then
    Exit;

  if x then
  begin
    T.edit;
    T.FieldByName('EX').AsInteger := 1;
    T.post;
    T.ApplyUpdates;
    sleep(200);

    T.Close;
    T.Open;
    sleep(200);
  end;

  T.ApplyUpdates;
  sleep(100);

  Execsql(' update tabela_i set ' + ' sincronizado = ''N'' ' +
    ' , referencia = ' + dm.textoNulo(trim(Treferencia.Text)) +
    ' , codbarras  = ' + dm.textoNulo(trim(Tbarras.Text)) + ' , descricao = ' +
    quotedstr(trim(Tdescricao.Text)) + ' , ex = 1 ' + ' , qtdecaixa = ' +
    PontoVirgula(formatfloat('#0.000', Tmultiplo.AsFloat)) +
    ' where idproduto = ' + inttostr(rg));
  Execsql(' update vendedor_i set ' + ' sincronizado = ''N'' ' + ' , ex = 1 ' +
    ' where idproduto = ' + inttostr(rg));

  ativaT;

end;

procedure TfCadProduto.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;

  if T.State in [dsEdit, dsInsert] then
    calculcaFicha;

  cbGru.Enabled := True;

end;

procedure TfCadProduto.FormatarCamposTabelaReferencia(DataSet: TDataSet);
begin
  TNumericField(DataSet.FieldByName('ValorReferencia'      )).DisplayFormat := STR_MASCARA_VALOR;
  TNumericField(DataSet.FieldByName('QtdFornecida_100G'    )).DisplayFormat := STR_MASCARA_VALOR;
  TNumericField(DataSet.FieldByName('QtdPercFornecida_100G')).DisplayFormat := STR_MASCARA_PERC;
end;

procedure TfCadProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fCadProduto := nil;

end;

procedure TfCadProduto.FormCreate(Sender: TObject);
begin
  ordem := 'ASC';
  campo := 'produto.descricao ' + ordem;
  qGrupo.Close;
  qGrupo.Open;
  qGrupo.FetchAll;

  qCor.Close;
  qCor.Open;
  qCor.FetchAll;

  cbGru.Items.Clear;
  cbGru.Items.Add('000 - TODOS');
  while qGrupo.Eof = False do
  begin
    cbGru.Items.Add(formatfloat('000', qGrupoid.AsInteger) + ' - ' +
      qGrupodescricao.Text);
    qGrupo.Next;
  end;
  cbGru.Update;
  cbGru.ItemIndex := 0;

  ativaT;

  StatusTela(True);
  PageControl1.TabIndex := 0;

  atualizandoVend := 'N';
  btExcluirF.Enabled := False;
  btAddP.Enabled := False;
  bt_atualF.Enabled := False;
  btAtualPreco.Enabled := False;
  btnref.Enabled := False;
  btCubagem.Enabled := False;

  edCod.ReadOnly := True;
  EdNom.ReadOnly := True;
  edCod.Color := StringToColor('$00CEFDFC');
  EdNom.Color := StringToColor('$00CEFDFC');

  qCF.Close;
  qCF.Open;
  qCF.FetchAll;

  qNCM.Close;
  qNCM.Open;
  qNCM.FetchAll;

  qCFOP.Close;
  qCFOP.Open;
  qCFOP.FetchAll;

  qTipoTribu.Close;
  qTipoTribu.Open;
  qTipoTribu.FetchAll;

  qMP.Close;
  qMP.Open;
  qMP.FetchAll;

  DBLookupComboBox3.ListSource.DataSet.Last;
  DBLookupComboBox5.ListSource.DataSet.Last;
  DBLookupComboBox8.ListSource.DataSet.Last;
  cbCF.ListSource.DataSet.Last;
  cbNCM.ListSource.DataSet.Last;
  DBLookupComboBox2.ListSource.DataSet.Last;

  DBLookupComboBox3.ListSource.DataSet.First;
  DBLookupComboBox5.ListSource.DataSet.First;
  cbCF.ListSource.DataSet.First;
  cbNCM.ListSource.DataSet.First;
  DBLookupComboBox2.ListSource.DataSet.First;

  lFator.Caption := formatfloat('#0.#', dm.qParametrofator_cubagem.AsFloat);

  if dm.qParametroNF_IMPOSTOPORNCM.Text = 'S' then
  begin
    GroupBox1.Visible := False;
    cbCF.Visible := False;
    cbNCM.Visible := True;
    Label68.Visible := True;
    DBGrid3.Visible := True;
  end
  else
  begin
    GroupBox1.Visible := True;
    cbCF.Visible := True;
    cbNCM.Visible := False;
    Label68.Visible := False;
    DBGrid3.Visible := False;
  end;

  if dm.qParametrovenda_escolherpreco.AsString = 'S' then
  begin
    lvalor.Caption := 'A Vista';
    lValor2.Caption := 'A Prazo';
  end;

  if dm.qParametromostrar_royalties.AsString = 'N' then
  begin
    Label19.Visible := False;
    DBEdit14.Visible := False;
  end;

  if dm.qParametromostrar_cubagem.Text = 'N' then
  begin
    Label31.Visible := False;
    DBEdit23.Visible := False;
  end;

  // teste
  PageControl1.Pages[5].TabVisible := False; //comissao

  if dm.qParametromod_pedidosWeb.Text = 'N' then
    DBCheckBox3.Visible := False;

  if dm.qParametrofolha_separacao_mod_3.Text = 'S' then // param. 127 Brubalar
  begin
    Label70.Visible := True;
    DBEdit40.Visible := True;

    Label90.Visible := True;
    DBEdit57.Visible := True;
    DBEdit58.Visible := True;
  end;

  if dm.qParametromostrar_multiplo.Text = 'N' then // param. 139 granelli
  begin
    Label30.Visible := False;
    DBEdit22.Visible := False;
    Label69.Visible := False;
    DBEdit39.Visible := False;
  end;

  if dm.qParametromod_cad_tabela.AsString = 'S' then // Usa tabela de preço
  begin
    Bevel5.Visible := False;
    lvalor.Visible := False;
    lValor2.Visible := False;
    DBEdit5.Visible := False;
    DBEdit18.Visible := False;
  end;

  if dm.qParametrousa_cx_master.AsString = 'N' then
  begin
    Label51.Visible := False;
    Label40.Visible := False;
    Label64.Visible := False;
    DBEdit37.Visible := False;
    DBLookupComboBox1.Visible := False;
  end;

  // ajusta estoque
  Execsql(' update produto set qtdestoque = ' +
    '  (select sum(e.quantidade) Qtd from estoque e ' +
    '  where e.tpmov = produto.tipo and e.idemp = 1 and ' +
    '  produto.id = e.idproduto)');

  PageControl1.Pages[3].TabVisible := True;   //ficha tecnica
  PageControl1.Pages[4].TabVisible := False;  //ficha tecnica
  // producao por fases  //Sylvaz nao vai mais utilizar esse tipo de produção Nilton 26/01/2022
  { PageControl1.Pages[3].TabVisible := (dm.qParametroproducao_fases.Text = 'N'); //ficha tecnica normal
    PageControl1.Pages[4].TabVisible := (dm.qParametroproducao_fases.Text = 'S'); //ficha tecnica fases

    if dm.qParametroproducao_fases.Text = 'S' then
    begin
    edCod2.ReadOnly     := true;
    edNom2.ReadOnly     := true;
    EdCod2.Color        := StringToColor('$00CEFDFC');
    edNom2.Color        := StringToColor('$00CEFDFC');

    qProc2.Open;
    cbProcesso.Items.Clear;
    for i := 0 to qProc2.RecordCount -1 do
    Begin
    cbProcesso.Items.Add(formatfloat( '000', qProc2Id.Value) + ' ' + qProc2Descricao.Text  );
    qProc2.Next;
    end;
    cbProcesso.Update;
    cbProcesso.ItemIndex := -1;
    end; }

  if dm.qParametroimprimir_desc_ficha.AsString = 'N' then
    PageControl1.Pages[6].TabVisible := False;

  if dm.qParametrousa_referencia_base.AsString = 'S' then
  begin
    pAdicionais.Visible := True;

    DBEdit4.ReadOnly := True;
    DBEdit4.Color := $00CEFDFC;

    dbgrid1.Columns[8].Visible := True; // Referencia Base
    dbgrid1.Columns[9].Visible := True; // cor
    dbgrid1.Columns[10].Visible := True; // tamanho

    edRef.Visible := True;
    Label89.Visible := True;
  end
  else
  begin
    dbgrid1.Columns[8].Visible := False; // Referencia Base
    dbgrid1.Columns[9].Visible := False; // cor
    dbgrid1.Columns[10].Visible := False; // tamanho

    edRef.Visible := False; // Pesquisa da referencia base
    Label89.Visible := False;
    edPesq.Width := 729;
  end;

  gridProc.ReadOnly := True;
  gridProc.Columns[1].ReadOnly := True;
  gridProc.Columns[2].ReadOnly := True;
  gridProc.Columns[3].ReadOnly := True;
  gridProc.Columns[4].ReadOnly := True;

  //verifica para habilitar ficha tecnica
  PageControl1.Pages[3].TabVisible :=  (DBCheckBox1.Checked) and (Tproduzido.Text = 'S'); // ficha tecnica

  ConfigurarComponentesTabelaReferencia;
end;

procedure TfCadProduto.acSairExecute(Sender: TObject);
//var
//  vultimo: integer;
begin
 { if T.State in [dsEdit] then
  begin
    if qProc.active then
    begin
      qProc.First;
      while not qProc.Eof do
      begin
        if trim(qProcUltimo.Text) = 'T' then
          vultimo := vultimo + 1;
        qProc.Next;
      end;
    end;
  end; }

  inherited;

end;

procedure TfCadProduto.acSalvarExecute(Sender: TObject);
var
  idp: integer;
  nEx, altera: String;
 // vultimo, vSemQtd: integer;
begin
 // vultimo := 0;
//  vSemQtd := 0;

  SelectNext(ActiveControl, True, True);

  if (Tdescricao.Text = '') then
  begin
    Application.MessageBox('Descrição não preenchida.', 'Atenção');
    DBEdit2.SetFocus;
    Exit;
  end;

  dm.qPesq.Close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from produto where descricao like ' +
    quotedstr(trim(Tdescricao.Text)));
  dm.qPesq.Open;

  if T.State in [dsInsert] then
  begin
    if dm.qPesq.RecordCount >= 1 then
    begin
      Application.MessageBox
        (pchar('Produto ja Cadastrado, Por Favor Tente Novamente' + #13 + #10 +
        'Produto:' + dm.qPesq.FieldByName(dm.qParametropesqproduto.Text).Text +
        '-' + dm.qPesq.FieldByName('descricao').Text), 'Atenção');
      DBEdit2.SetFocus;
      Exit;
    end;
  end;

  if Tmultiplo.AsFloat = 0 then
    Tmultiplo.AsFloat := 1;

  idp := TId.AsInteger;
  // atualiza multiplos
  if dm.qParametromod_pedidosWeb.Text = 'S' then
  begin
    if Tnao_vender_web.Text = 'S' then
      nEx := ', ex = 2 '
    else if Tnao_vender_web.Text = 'N' then
      nEx := ', ex = 0 ';

    Execsql(' update tabela_i set ' + ' sincronizado = ''N'' ' +
      ' , referencia = ' + dm.textoNulo(trim(Treferencia.Text)) +
      ' , codbarras  = ' + dm.textoNulo(trim(Tbarras.Text)) + ' , descricao = '
      + quotedstr(trim(Tdescricao.Text)) + nEx + ' , qtdecaixa = ' +
      PontoVirgula(formatfloat('#0.000', Tmultiplo.AsFloat)) +
      ' where ex <> 1 and idproduto = ' + inttostr(idp));

    Execsql(' update vendedor_i set ' + ' sincronizado = ''N'' ' + nEx +
      ' where ex <> 1 and idproduto = ' + inttostr(idp));

  end;

  // Sylvaz nao vai mais utilizar esse tipo de produção
  { if dm.qParametroproducao_fases.Text = 'S' then
    begin
    //testar se é somente um último
    if qProc.IsEmpty = false then
    begin
    qProc.First;
    while not qProc.Eof do begin
    if trim(qProcUltimo.Text) = 'T' then
    vUltimo := vUltimo +1;
    //testar se existe quantidade sem preencher
    qProcItem.First;
    while not qProcItem.Eof do
    begin
    if not (qProcItemQtde.AsFloat > 0) then
    begin
    vSemQtd := vSemQtd + 1;
    end;
    qProcItem.Next;
    end;
    qProc.Next;
    end;

    if vSemQtd > 0 then
    begin
    Application.MessageBox('Por favor, informe a quantidade para os itens dos processos', 'Atenção');
    PageControl1.ActivePageIndex := 4;
    exit;
    end;

    if (vUltimo = 0) then
    begin
    Application.MessageBox('Por favor, escolha um processo para ser o último', 'Atenção');
    PageControl1.ActivePageIndex := 4;
    exit;
    end
    else
    if (vUltimo > 1) then
    begin
    Application.MessageBox('Por favor, apenas um único processo pode ser o último, Verifique!', 'Atenção');
    PageControl1.ActivePageIndex := 4;
    exit;
    end;

    end;
    end; }

  if dsTabelaReferenciaConsumo.DataSet.State in [dsInsert, dsEdit] then
    dsTabelaReferenciaConsumo.DataSet.Post;

  if dsTabelaReferenciaMicromineraisMgDia.DataSet.State in [dsInsert, dsEdit] then
    dsTabelaReferenciaMicromineraisMgDia.DataSet.Post;

  if dsTabelaReferenciaMicromineraisGDia.DataSet.State in [dsInsert, dsEdit] then
    dsTabelaReferenciaMicromineraisGDia.DataSet.Post;

  if dsTabelaReferenciaVitaminas.DataSet.State in [dsInsert, dsEdit] then
    dsTabelaReferenciaVitaminas.DataSet.Post;

  if T.State in [dsInsert] then
    altera := 'N' // insert
  else
    altera := 'S'; // edit

  inherited;

  if altera = 'N' then
    GravaLogCad(dm.qUserId.AsInteger, TId.AsInteger, 'PRODUTO', 'Cadastro Novo')
  else if altera = 'S' then
    GravaLogCad(dm.qUserId.AsInteger, TId.AsInteger, 'PRODUTO',
      'Alteração do Cadastro');

  CheckDBGrid2.ReadOnly := True;

  btExcluirF.Enabled := False;
  btAddP.Enabled := False;
  bt_atualF.Enabled := False;
  btAtualPreco.Enabled := False;
  btnref.Enabled := False;
  btCubagem.Enabled := False;
  cbGru.Enabled := True;

  DBEdit6.ReadOnly := True;
  DBEdit42.ReadOnly := True;
  DBEdit43.ReadOnly := True;

  edCod.ReadOnly := True;
  EdNom.ReadOnly := True;
  edCod.Color := StringToColor('$00CEFDFC');
  EdNom.Color := StringToColor('$00CEFDFC');

  btExcluirP.Enabled := False;
  btnAddP2.Enabled := False;
  btExcluirI.Enabled := False;
  BtAddPi.Enabled := False;

  edCod2.ReadOnly := True;
  ednom2.ReadOnly := True;
  edCod2.Color := StringToColor('$00CEFDFC');
  ednom2.Color := StringToColor('$00CEFDFC');
  CheckDBGrid4.ReadOnly := False;
  CheckDBGrid4.Columns[2].Color := StringToColor('$00CEFDFC');
  CheckDBGrid4.Columns[3].Color := StringToColor('$00CEFDFC');

  gridProc.ReadOnly := True;
  gridProc.Columns[1].ReadOnly := True;
  gridProc.Columns[2].ReadOnly := True;
  gridProc.Columns[3].ReadOnly := True;
  gridProc.Columns[4].ReadOnly := True;

  gridProc.Columns[1].Color := StringToColor('$00CEFDFC');;
  gridProc.Columns[2].Color := StringToColor('$00CEFDFC');;
  gridProc.Columns[3].Color := StringToColor('$00CEFDFC');;
  gridProc.Columns[4].Color := StringToColor('$00CEFDFC');;

  // atualiza web
  if dm.qParametromod_pedidosWeb.Text = 'S' then
  begin
    try
      acSair.Enabled := False;
      atualizaWeb;
    finally
      acSair.Enabled := True;
    end;
  end;

  atualizacusto(TId.AsInteger, 'P');

  edCod.Clear;
  EdNom.Clear;
  edQtd.Clear;

end;

procedure TfCadProduto.TNewRecord(DataSet: TDataSet);
begin
  TId.Value := InsereCodigo('produto', 'id');
  Ttipo.Value := 'P';
  Tproduzido.Value := 'N';
  Tidfornecedor.Value := 0;
  TRoyalties.Value := 0;
  Tunidade_nfe.Value := 'UN';
  TIDORIGEM.Value := 0;
  TIDTIPO_TRIBUTACAO.Value := 1;
  Tmultiplo.Value := 1;
  Tcubagem.Value := 0;
  TEmbalagem.Value := 'N';
  Tsincronizado.Value := 'N';
  Taltura.Value := 0;
  Tlargura.Value := 0;
  Tcomprimento.Value := 0;
  TmaxDesconto.Value := 0;
  Tmateria_prima.Value := 'N';
  Tbx_item_ficha_venda.Value := 'N';
  Tativo.Value := 'S';

  { if dm.qParametroproducao_fases.Text = 'S' then //Sylvaz nao vai mais utilizar esse tipo de produção
    begin
    qProc.Close;
    qProc.Params[0].Value :=0;
    qProc.Open;

    qProcItem.Close;
    qProcItem.Params[0].Value :=0;
    qProcItem.Open;
    end; }

end;

procedure TfCadProduto.ToolButton4Click(Sender: TObject);
var
  zera: string;
begin

  if T.State in [dsInsert, dsEdit] then
    Exit;

  if Application.MessageBox('Deseja Atualizar conforme o cadastro do vendedor?',
    'Atenção', mb_yesno + mb_defbutton2) = idYes then
    zera := 'S'
  else
    zera := 'N';

  qVend.Close;
  qVend.Open;
  qVend.FetchAll;

  atualizandoVend := 'S';
  Gauge1.Visible := True;
  Gauge1.MaxValue := T.RecordCount;
  T.FetchAll;
  T.First;
  while T.Eof = False do
  begin

    Gauge1.Progress := T.RecNo;

    qComi.Close;
    qComi.ParamByName('pro').Value := TId.Value;
    qComi.Open;

    qVend.First;
    while qVend.Eof = False do
    begin
      if qComi.Locate('idvendedor', qVendid.Value, []) then
      begin
        if zera = 'S' then
        begin
          qComi.edit;
          qComipComissao.AsFloat := qVendcomissao.AsFloat;
          qComi.post;
        end;
      end
      else
      begin
        qComi.Insert;
        qComiIDvendedor.Value := qVendid.Value;
        qComipComissao.AsFloat := qVendcomissao.AsFloat;
        qComi.post;
      end;
      qVend.Next;
    end;

    T.Next;
  end;
  atualizandoVend := 'N';

  T.First;

  Application.MessageBox('Atualizado com Sucesso!', 'Atenção');
  Gauge1.Visible := False;

end;

procedure TfCadProduto.TvalorValidate(Sender: TField);
begin
  if dm.qParametrovenda_desc_margem.Text = 'S' then // TESTE - somente itu acos
  begin

    if (Tvalor.AsFloat > 0) then
      Tmargem.AsFloat := ((Tvalor.AsFloat - TCustoFinal.AsFloat) /
        TCustoFinal.AsFloat * 100);

    TVendaSugerido.AsFloat := Tvalor.AsFloat;
    Tvalor2.AsFloat := Tvalor.AsFloat;

  end;

end;

procedure TfCadProduto.XiButton1Click(Sender: TObject);
begin

  if qComi.active = False then
  begin
    qComi.Close;
    qComi.ParamByName('pro').Value := TId.Value;
    qComi.Open;
  end;

  qComi.First;
  while qComi.Eof = False do
  begin
    qComi.edit;
    qComipComissao.AsFloat := 0;
    qComi.post;
    qComi.Next;
  end;
  qComi.Close;
  qComi.ParamByName('pro').Value := TId.Value;
  qComi.Open;

end;

procedure TfCadProduto.XiButton2Click(Sender: TObject);
begin

  if qComi.active = False then
  begin
    qComi.Close;
    qComi.ParamByName('pro').Value := TId.Value;
    qComi.Open;
  end;

  qVend.Close;
  qVend.Open;
  qVend.FetchAll;
  while qVend.Eof = False do
  begin
    if qComi.Locate('idvendedor', qVendid.Value, []) then
    begin
      if not(qComipComissao.AsFloat > 0) then
      begin
        qComi.edit;
        qComipComissao.AsFloat := qVendcomissao.AsFloat;
        qComi.post;
      end;
    end
    else
    begin
      qComi.Insert;
      qComiIDvendedor.Value := qVendid.Value;
      qComipComissao.AsFloat := qVendcomissao.AsFloat;
      qComi.post;
    end;
    qVend.Next;
  end;
  qComi.Close;
  qComi.ParamByName('pro').Value := TId.Value;
  qComi.Open;

end;

procedure TfCadProduto.btnrefClick(Sender: TObject);
Var
  vRef: String;
begin
  inherited;
  if not(Tidgrupo.AsInteger > 0) then
  begin
    Application.MessageBox('Grupo não informado. Por favor, verifique!',
      'Atenção');
    Exit;
  end;

  if not(Tidcor.AsInteger > 0) then
  begin
    Application.MessageBox('Cor não informada. Por favor, verifique!',
      'Atenção');
    Exit;
  end;

  if trim(Ttamanho.Text) = '' then
  begin
    Application.MessageBox('Tamanho não informado. Por favor, verifique!',
      'Atenção');
    Exit;
  end;

  if trim(Treferencia_base.Text) = '' then
  begin
    Application.MessageBox
      ('Referência base não informada. Por favor, verifique!', 'Atenção');
    Exit;
  end;

  vRef := Tidgrupo.Text + '.' + Treferencia_base.Text + '.' + Tidcor.Text + '.'
    + Ttamanho.Text;

  Treferencia.AsString := vRef;
end;

procedure TfCadProduto.btCubagemClick(Sender: TObject);
var
  m3, kg: real;
begin
  if not(T.State in [dsInsert, dsEdit]) then
    Exit;

  if (Taltura.AsFloat = 0) or (Tlargura.AsFloat = 0) or
    (Tcomprimento.AsFloat = 0) then
    Exit;

  try
    if TIdCxMaster.Value > 0 then
      m3 := TalturaCx.AsFloat * TlarguraCx.AsFloat * TcomprimentoCx.AsFloat
    else
      m3 := Taltura.AsFloat * Tlargura.AsFloat * Tcomprimento.AsFloat;
    kg := m3 * dm.qParametrofator_cubagem.AsFloat;
  except
    Application.MessageBox
      (pchar('Verifique se a altura, largura, comprimento e ' + #13 + #10 +
      'fator de cubagem(parametros) estão preenchidos'), 'Atenção');
    Exit;
  end;
  Tcubagem.AsFloat := kg;

end;

procedure TfCadProduto.bt_atualFClick(Sender: TObject);
begin
  calculcaFicha;

end;

procedure TfCadProduto.EdPesqChange(Sender: TObject);
begin
  ativaT;
end;

procedure TfCadProduto.ativaT;
var
  SQL, vAtivo, vRefBase: String;
begin
  case rdAtivo.ItemIndex of
    0:
      vAtivo := 'T';
    1:
      vAtivo := 'S';
    2:
      vAtivo := 'N';
  end;

  if trim(edRef.Text) <> '' then
    vRefBase := edRef.Text
  else
    vRefBase := 'T';

  SQL := ' select produto.* , fornecedor.nome nomefor, concat(grupo.id, '' - '',grupo.descricao) desgrupo, '
    + ' case when produto.idcor > 0 then  ' +
    ' concat(cor.id , '' - '', cor.descricao) else '''' end descor ' +
    ' from produto ' +
    ' left join fornecedor on fornecedor.id = produto.idfornecedor ' +
    ' left join grupo on grupo.id = produto.idgrupo ' +
    ' left join cor on cor.id = produto.idcor' +
    ' where produto.ex = 0 and produto.tipo = ''P'' ' +
    '   and (( produto.descricao like :pesq ) or (produto.referencia like :pesq)  or ( produto.id like :pesq)  ) '
    + '   and (( :gr = 0) or (produto.idgrupo = :gr )) ' +
    '   and (( :st = ''T'') or (produto.ativo = :st)) ' +
    '   and ((:refB = ''T'') or (produto.referencia_base = :refB)) ' +
    ' order by ' + campo;

  T.Close;
  T.SQL.Clear;
  T.SQL.Add(SQL);
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  T.ParamByName('gr').Value := strtoint(copy(cbGru.Text, 1, 3));
  T.ParamByName('st').Value := vAtivo;
  T.ParamByName('refB').Value := vRefBase;
  T.Open;
end;

procedure TfCadProduto.DBCheckBox1Click(Sender: TObject);
var
  tp: boolean;
begin
  tp := (DBCheckBox1.Checked) and (Tproduzido.Text = 'S');

  // if dm.qParametroproducao_fases.Text = 'N' then  //Sylvaz nao vai mais usar esse tipo de produção
  PageControl1.Pages[3].TabVisible := tp; // ficha tecnica

  Label50.Visible := not tp;
  Label48.Visible := not tp;
  DBEdit33.Visible := not tp;

  Label34.Visible := tp;
  Label35.Visible := tp;
  Label12.Visible := tp;
  Label38.Visible := tp;

  Label36.Visible := tp;
  Label37.Visible := tp;
  Label39.Visible := tp;

  if dm.qParametrousa_cx_master.AsString = 'N' then
    Label40.Visible := False
  else
    Label40.Visible := tp;

  DBEdit26.Visible := tp;
  DBEdit27.Visible := tp;
  DBEdit7.Visible := tp;
  DBEdit28.Visible := tp;

end;

procedure TfCadProduto.DBEdit12Exit(Sender: TObject);
begin
  if (DBEdit12.Text <> '') then
  begin
    dm.qPesq.Close;
    dm.qPesq.SQL.Clear;
    dm.qPesq.SQL.Add
      ('Select fornecedor.id, fornecedor.Nome from fornecedor where fornecedor.id = '
      + DBEdit12.Text);
    dm.qPesq.Open;
    DBEdit13.OnChange := nil;
    if not dm.qPesq.IsEmpty then
    begin
      DBEdit13.Text := dm.qPesq.FieldByName('Nome').AsString;
      gdFor.Visible := False;
      if DBEdit14.Visible then
        DBEdit14.SetFocus;
    end
    else
    begin
      DBEdit12.Clear;
      DBEdit13.Clear;
    end;
  end
  else
  begin
    DBEdit12.Clear;
    DBEdit13.Clear;
  end;
  DBEdit13.OnChange := DBEdit13Change;
  gdFor.Visible := False;

end;

procedure TfCadProduto.DBEdit13Change(Sender: TObject);
begin
  gdFor.Visible := False;
  if (DBEdit13.Text <> '') then
  begin
    posicionagrid(gdFor, DBEdit12);
    gdFor.Visible := True;
    dm.qPesq.Close;
    dm.qPesq.SQL.Clear;
    dm.qPesq.SQL.Add('Select id, nome ' + ' from fornecedor where nome like ' +
      quotedstr('%' + DBEdit13.Text + '%'));
    dm.qPesq.Open;
    if dm.qPesq.IsEmpty then
      gdFor.Visible := False;
  end
  else
    gdFor.Visible := False;
end;

procedure TfCadProduto.DBEdit13KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN THEN
    IF gdFor.Visible THEN
      gdFor.SetFocus;

end;

procedure TfCadProduto.DBEdit26Exit(Sender: TObject);
begin
  calculcaPreco;
end;

procedure TfCadProduto.DBEdit4Exit(Sender: TObject);
begin
  if not(T.State in [dsInsert, dsEdit]) then
    Exit;

  if trim(DBEdit4.Text) <> '' then
  begin
    dm.qPesq.Close;
    dm.qPesq.SQL.Clear;
    dm.qPesq.SQL.Add('select descricao, referencia from produto where id <> ' +
      TId.Text + 'and referencia like ' + quotedstr(trim(DBEdit4.Text)));
    dm.qPesq.Open;
    if dm.qPesq.IsEmpty = False then
    begin
      Application.MessageBox(pchar('Já existe Produto Com Esta Referencia' + #13
        + #10 + 'Produto: ' + trim(dm.qPesq.FieldByName('descricao').Text)),
        'Atenção');
      Treferencia.Value := '';
      DBEdit4.SetFocus;
    end;
  end;

end;

procedure TfCadProduto.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  {
    if ordem = 'ASC' then
    ordem := 'DESC'
    else
    ordem := 'ASC';


    if uppercase(Column.FieldName) = 'NOMEFOR' then
    campo := ' fornecedor.nome '
    else
    if uppercase(Column.FieldName) = 'DESGRUPO' then
    campo := ' grupo.descricao '
    else
    campo := 'produto.'+ Column.FieldName;

    campo := campo  + ' ' + ordem ;

    ativaT; }

end;

procedure TfCadProduto.DStateChange(Sender: TObject);
var
  bEditar : Boolean;
begin
  inherited;
  bEditar := D.DataSet.State in [dsInsert, dsEdit];
  dsTabelaReferenciaConsumo.AutoEdit            := bEditar;
  dsTabelaReferenciaMicromineraisMgDia.AutoEdit := bEditar;
  dsTabelaReferenciaVitaminas.AutoEdit          := bEditar;
  dsTabelaReferenciaMicromineraisGDia.AutoEdit  := bEditar;
end;

procedure TfCadProduto.TabSheet7Show(Sender: TObject);
begin
  inherited;
  PageControl2.ActivePageIndex := 0;
  tsTabelaReferencia.TabVisible := TPROTEINADOOUMINERAL.AsString = 'S';
end;

procedure TfCadProduto.TAfterScroll(DataSet: TDataSet);
begin
  if atualizandoVend = 'S' then
    Exit;

  DBCheckBox1Click(Application);

  if (T.State = dsBrowse) and (Tproduzido.Text = 'S') and
    (PageControl1.Pages[3].TabVisible) then
  begin
    qFicha.Close;
    qFicha.ParamByName('ID').Value := TId.Value;
    qFicha.Open;

    if T.State in [dsEdit, dsInsert] then
      calculcaFicha;

  end;

  if (PageControl1.Pages[5].TabVisible) then
  begin
    qComi.Close;
    qComi.ParamByName('pro').Value := TId.Value;
    qComi.Open;
  end;

  gdFor.Visible := False;
  qForPro.Close;
  qForPro.ParamByName('id').Value := TId.Value;
  qForPro.Open;

  calculcaPreco;
  mostramedidas;

  if (PageControl2.ActivePage = tabGarantia) then
    tabGarantiaShow(Application);

  tsTabelaReferencia.TabVisible := TPROTEINADOOUMINERAL.AsString = 'S';

  CarregarDadosTabelaReferencia;

  { if dm.qParametroproducao_fases.Text = 'S' then
    begin
    qProc.Close;
    qProc.ParamByName('IDs').Text := TId.Text;
    qProc.Open;

    qProcItem.close;
    qProcItem.ParamByName('IDp').AsInteger := qProcId.AsInteger;
    qProcItem.Open;

    calculaTotal;

    end; } // Sylvaz nao vai mais usar esse tipo de produção

end;

procedure TfCadProduto.TIdCxMasterValidate(Sender: TField);
begin

  if TIdCxMaster.AsInteger > 0 then
  begin
    qMP.Locate('id', TIdCxMaster.AsInteger, []);
    if (qMPprecocompra.AsFloat > 0) and (Tmultiplo.AsFloat > 0) then
      TcustoCxMaster.AsFloat := qMPprecocompra.AsFloat / Tmultiplo.AsFloat
    else
      TcustoCxMaster.AsFloat := 0;

    qCM.Close;
    qCM.ParamByName('id').Value := TIdCxMaster.AsInteger;
    qCM.Open;

    TalturaCx.AsFloat := qCMalturaCX.AsFloat;
    TlarguraCx.AsFloat := qCMlarguraCx.AsFloat;
    TcomprimentoCx.AsFloat := qCMcomprimentoCx.AsFloat;

    btCubagemClick(Application);

  end;
  calculcaPreco;
  mostramedidas;

end;

procedure TfCadProduto.TmultiploValidate(Sender: TField);
begin

  if TIdCxMaster.AsInteger > 0 then
  begin
    qMP.Locate('id', TIdCxMaster.AsInteger, []);
    if (qMPprecocompra.AsFloat > 0) and (Tmultiplo.AsFloat > 0) then
      TcustoCxMaster.AsFloat := qMPprecocompra.AsFloat / Tmultiplo.AsFloat
    else
      TcustoCxMaster.AsFloat := 0;
  end;
  calculcaPreco;
  mostramedidas;

end;

procedure TfCadProduto.EdNomChange(Sender: TObject);
begin
  if (EdNom.Text <> '') then
  begin
    dm.qPesq.Close;
    dm.qPesq.SQL.Clear;
    if rdTipo.ItemIndex = 0 then // SA
      dm.qPesq.SQL.Add
        ('select id,  descricao nome, ''S'' tipo, unidade from semi_acabado where ( descricao like '
        + quotedstr('%' + EdNom.Text + '%') + ' or cod_manual like ' +
        quotedstr('%' + EdNom.Text + '%') + ' )')
    else
      dm.qPesq.SQL.Add
        (' select id, descricao nome, ft_conv_un, ft_conv_2un, tipo from produto '
        + ' where ex = 0 and  ((tipo = ''M'') or (tipo = ''P'' and materia_prima = ''S'')) '
        + ' and ( descricao like ' + quotedstr('%' + EdNom.Text + '%') +
        'or cod_manual like ' + quotedstr('%' + EdNom.Text + '%') + ' )');
    dm.qPesq.Open;
    gdPesq.Left := edCod.Left;
    gdPesq.Top := edCod.Top + edCod.Height + 2;
    if dm.qPesq.IsEmpty then
      gdPesq.Visible := False
    else
      gdPesq.Visible := True;
  END
  else
    gdPesq.Visible := False;

end;

procedure TfCadProduto.gdForKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if not dm.qPesq.IsEmpty then
    begin
      DBEdit12.Text := dm.qPesq.FieldByName('ID').Text;
      DBEdit12Exit(Application);
      gdFor.Visible := False;
    end;
  end;

end;

procedure TfCadProduto.gdPesq2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(Key, Shift) then
    abort;

end;

procedure TfCadProduto.gdPesq2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    edCod2.Text := dm.qSel.FieldByName('id').Value;
    edCod2Exit(Application);
  end;

end;

procedure TfCadProduto.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(Key, Shift) then
    abort;

end;

procedure TfCadProduto.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;

    edCod.Text := dm.qPesq.FieldByName('id').Value;
    edCodExit(Application);
  end;

end;

procedure TfCadProduto.gridProcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(Key, Shift) then
    abort;

  if Key = VK_DOWN then
    if qProc.Eof then
      qProc.First;

end;

procedure TfCadProduto.gridProcKeyPress(Sender: TObject; var Key: Char);
var
  col: integer;
begin
  if gridProc.SelectedIndex = 2 then
  begin
    if not CharInSet(Key, ['0' .. '9', #8, #13, ':']) then
      Key := #0;
    Exit;
  end;

  if Key = #13 then
  begin
    if gridProc.SelectedIndex in [1, 2, 4] then
    begin
      col := gridProc.SelectedIndex;
      if col < 4 then
        gridProc.SelectedIndex := col + 1;
      qProc.Next;
      if qProc.Eof = False then
        gridProc.SelectedIndex := col;
    end;
  end;

  if Key = #13 then
  begin
    if T.State in [dsEdit, dsInsert] then
    begin
      calculaTotal;
      sleep(100);

      verificaUltimo;
      sleep(100);
    end;
  end;

end;

procedure TfCadProduto.PageControl1Change(Sender: TObject);
begin
  inherited;

  if PageControl1.Pages[3].TabVisible then
  begin
    if PageControl1.ActivePageIndex = 3 then
      if dm.qParametroprod_sem_montagem.Text = 'S' then
      begin
        rdTipo.ItemIndex := 1;
        rdTipo.Visible := False;
      end;
  end;

end;

procedure TfCadProduto.acCancelarExecute(Sender: TObject);
begin
  inherited;
  btExcluirF.Enabled := False;
  cbGru.Enabled := True;
  edCod.Clear;
  EdNom.Clear;
  edQtd.Clear;
end;

procedure TfCadProduto.btExcluirFClick(Sender: TObject);
begin
  inherited;

  if qFicha.IsEmpty then
    Exit;
  qFicha.Delete;

  sleep(100);
  calculcaFicha;

  calculcaPreco;

end;

procedure TfCadProduto.btExcluirIClick(Sender: TObject);
begin
  if qProcItem.IsEmpty then
    Exit;

  if Application.MessageBox('Deseja realmente Excluir esta Matéria-Prima?',
    'Confirmação', mb_yesno + mb_defbutton2) = idNo then
    Exit;
  qProcItem.Delete;
  qProcItem.ApplyUpdates;

  calculcaPreco;

end;

procedure TfCadProduto.btExcluirPClick(Sender: TObject);
begin

  if qProc.IsEmpty then
    Exit;

  if Application.MessageBox('Deseja realmente Excluir este Processo?',
    'Confirmação', mb_yesno + mb_defbutton2) = idNo then
    Exit;

  Execsql('delete from processo_fase_I where idProcesso_fase = ' +
    qProcId.Text);
  sleep(100);
  qProc.Delete;
  qProc.ApplyUpdates;

  qProc.Close;
  qProc.ParamByName('IDs').Value := TId.Value;
  qProc.Open;

  calculaTotal;

  calculcaPreco;

end;

procedure TfCadProduto.btnAddP2Click(Sender: TObject);
var
  nHr: TTime;
  nOr: integer;
  nCt: real;
begin

  if trim(cbProcesso.Text) = '' then
  begin
    Application.MessageBox('Informe o processo!', 'Atenção');
    cbProcesso.SetFocus;
    Exit;
  end;

  qProc.First;
  if qProc.Locate('idprocesso', strtoint(copy(cbProcesso.Text, 1, 3)), []) then
  begin
    Application.MessageBox('Processo já Cadastrado!', 'Atenção');
    cbProcesso.ItemIndex := -1;
    cbProcesso.SetFocus;
    Exit;
  end;

  try
    nOr := strtoint(edOrdem.Text);
  except
    Application.MessageBox('Informe a Ordem!', 'Atenção');
    edOrdem.SetFocus;
    Exit;
  end;

  try
    nHr := strtotime(edTempo.Text);
  except
    Application.MessageBox('Informe o Tempo!', 'Atenção');
    edTempo.SetFocus;
    Exit;
  end;

  try
    nCt := strtofloat(edCusto.Text);
  except
    Application.MessageBox('Informe o Custo!', 'Atenção');
    edCusto.SetFocus;
    Exit;
  end;

  // verifica seja tem
  if qProc.Locate('ordem', trim(edOrdem.Text), []) then
    nOr := 0;

  qProc.Append;
  qProcId.Value := InsereCodigo('Processo_fase', 'ID');
  qProcIdProduto.Value := TId.Value;
  qProcIdProcesso.Value := strtoint(copy(cbProcesso.Text, 1, 3));
  qProcDescricao.Value :=
    UpperCase(copy(cbProcesso.Text, 5, length(cbProcesso.Text) - 4));
  if ckUltimo.Checked then
    qProcUltimo.Value := 'T'
  else
    qProcUltimo.Value := 'F';
  if ckAnt.Checked then
    qProcDepende_Ant.Value := 'T'
  else
    qProcDepende_Ant.Value := 'F';
  qProcTempo.Value := formatdatetime('hh:mm:ss', nHr);
  qProcOrdem.Value := nOr;
  qProcCusto.Value := nCt;
  qProc.post;

  // mostrar item dos processos
  dm.qSel.Close;
  dm.qSel.SQL.Clear;
  dm.qSel.SQL.Add
    (' select idProduto, unidade from processo_i where idprocesso =  ' +
    qProcIdProcesso.Text);
  dm.qSel.Open;
  while not dm.qSel.Eof do
  begin
    qProcItem.Insert;
    qProcItemIdProcesso_fase.Value := qProcId.Value;
    qProcItemIdProduto.AsInteger := dm.qSel.FieldByName('idProduto').AsInteger;
    qProcItemUn.Text := dm.qSel.FieldByName('unidade').Text;
    qProcItemQtde.AsInteger := 1;
    qProcItem.post;
    dm.qSel.Next;
  end;

  qProc.Close;
  qProc.ParamByName('IDs').Value := TId.Value;
  qProc.Open;

  qProcItem.Close;
  qProcItem.Params[0].Value := qProcId.Value;
  qProcItem.Open;

  cbProcesso.ItemIndex := -1;
  ckUltimo.Checked := False;
  edOrdem.Text := '';
  edTempo.Text := '';
  edCusto.Text := '';

  calculaTotal;

  calculcaPreco;

  cbProcesso.SetFocus;

end;

procedure TfCadProduto.btnExcluirGarantiaClick(Sender: TObject);
begin
  inherited;
  ExcluirRegistroTabelaFilha(dsGarantia);
end;

procedure TfCadProduto.btnExcluirTabelaReferenciaConsumoClick(Sender: TObject);
begin
  inherited;
  ExcluirRegistroTabelaFilha(dsTabelaReferenciaConsumo);
end;

procedure TfCadProduto.btnExcluirTabelaReferenciaMicrominerais_GDiaClick(Sender: TObject);
begin
  inherited;
  ExcluirRegistroTabelaFilha(dsTabelaReferenciaMicromineraisGDia);
end;

procedure TfCadProduto.btnExcluirTabelaReferenciaMicrominerais_MgDiaClick(Sender: TObject);
begin
  inherited;
  ExcluirRegistroTabelaFilha(dsTabelaReferenciaMicromineraisMgDia);
end;

procedure TfCadProduto.btnExcluirTabelaReferenciaVitaminasClick(Sender: TObject);
begin
  inherited;
  ExcluirRegistroTabelaFilha(dsTabelaReferenciaVitaminas);
end;

procedure TfCadProduto.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(Key, Shift) then
    abort;

  Key := NaoInsereDBGrid(TDBGrid(Sender),
    TDBGrid(Sender).DataSource.DataSet, Key);
end;

procedure TfCadProduto.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(Key, Shift) then
    abort;

end;

procedure TfCadProduto.CheckDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    if CheckDBGrid2.SelectedIndex = 2 then
    begin
      if qComi.Eof then
        qComi.First
      else
        qComi.Next;
      CheckDBGrid2.SelectedIndex := 2;
    end;

  end;
end;

procedure TfCadProduto.CheckDBGrid4CellClick(Column: TColumn);
begin
  if not(T.State in [dsEdit, dsInsert]) then
    Exit;

  if (qProcItem.IsEmpty = False) and (CheckDBGrid4.SelectedIndex = 3) then
  begin
    dm.qPesq.Close;
    dm.qPesq.SQL.Clear;
    dm.qPesq.SQL.Add
      (' select ft_conv_un, ft_conv_2un from produto where tipo = ''M'' and ' +
      ' id =  ' + qProcItemIdProduto.Text);
    dm.qPesq.Open;
    CheckDBGrid4.Columns[3].PickList.Clear;
    CheckDBGrid4.Columns[3].PickList.Add
      (dm.qPesq.FieldByName('ft_conv_un').Text);
    CheckDBGrid4.Columns[3].PickList.Add
      (dm.qPesq.FieldByName('ft_conv_2un').Text);
  end;

end;

procedure TfCadProduto.CheckDBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(Key, Shift) then
    abort;

  if Key = VK_DOWN then
    if qProcItem.Eof then
    begin
      qProcItem.Cancel;
      qProcItem.First;
    end;

end;

procedure TfCadProduto.CheckDBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    IF CheckDBGrid4.SelectedIndex = 1 then
    begin
      CheckDBGrid4.SelectedIndex := 2;
      qProcItem.Next;
      if qProcItem.Eof = False then
        CheckDBGrid4.SelectedIndex := 1;
    end;
  end;

end;

procedure TfCadProduto.ConfigurarComponentesTabelaReferencia;
begin
  QTabelaReferenciaConsumo.SQL.Text        := SQL_SELECT_TABELAREFERENCIA;
  upTabelaReferenciaConsumo.ModifySQL.Text := SQL_UPDATE_TABELAREFERENCIA;
  upTabelaReferenciaConsumo.InsertSQL.Text := SQL_INSERT_TABELAREFERENCIA;
  upTabelaReferenciaConsumo.DeleteSQL.Text := SQL_DELETE_TABELAREFERENCIA;

  QTabelaReferenciaMicromineraisMgDia.SQL.Text        := SQL_SELECT_TABELAREFERENCIA;
  upTabelaReferenciaMicromineraisMgDia.ModifySQL.Text := SQL_UPDATE_TABELAREFERENCIA;
  upTabelaReferenciaMicromineraisMgDia.InsertSQL.Text := SQL_INSERT_TABELAREFERENCIA;
  upTabelaReferenciaMicromineraisMgDia.DeleteSQL.Text := SQL_DELETE_TABELAREFERENCIA;

  QTabelaReferenciaMicromineraisGDia.SQL.Text        := SQL_SELECT_TABELAREFERENCIA;
  upTabelaReferenciaMicromineraisGDia.ModifySQL.Text := SQL_UPDATE_TABELAREFERENCIA;
  upTabelaReferenciaMicromineraisGDia.InsertSQL.Text := SQL_INSERT_TABELAREFERENCIA;
  upTabelaReferenciaMicromineraisGDia.DeleteSQL.Text := SQL_DELETE_TABELAREFERENCIA;

  QTabelaReferenciaVitaminas.SQL.Text        := SQL_SELECT_TABELAREFERENCIA;
  upTabelaReferenciaVitaminas.ModifySQL.Text := SQL_UPDATE_TABELAREFERENCIA;
  upTabelaReferenciaVitaminas.InsertSQL.Text := SQL_INSERT_TABELAREFERENCIA;
  upTabelaReferenciaVitaminas.DeleteSQL.Text := SQL_DELETE_TABELAREFERENCIA;
end;

procedure TfCadProduto.rdTipoClick(Sender: TObject);
begin
  inherited;
  edCod.Clear;
  EdNom.Clear;
  edQtd.Clear;

  if EdNom.Visible then
    EdNom.SetFocus;

end;

procedure TfCadProduto.tabGarantiaShow(Sender: TObject);
begin
  inherited;
  qGarantia.Close;
  qGarantia.Params[0].AsInteger := TId.AsInteger;
  qGarantia.Open;
  qGarantia.Insert;
end;

procedure TfCadProduto.edCod2Exit(Sender: TObject);
begin
  cbUn.Items.Clear;
  if edCod2.Text <> '' then
  begin
    dm.qSel.Close;
    dm.qSel.SQL.Clear;
    // if rdTipo.ItemIndex = 0 then  // mp
    dm.qSel.SQL.Add
      (' select case when produto.tipo = ''M'' then ''Matéria-prima'' ' +
      '   when produto.tipo = ''P'' then ''Produto'' end tp,  id, descricao nome, '
      + ' ft_conv_un, ft_conv_2un, tipo ' +
      ' from produto where ativo = ''S'' and ex = 0 and id =  ' + edCod2.Text);
    dm.qSel.Open;

    if not dm.qSel.IsEmpty then
    begin
      ednom2.OnChange := nil;
      ednom2.Text := dm.qSel.FieldByName('nome').Value;
      ednom2.OnChange := ednom2Change;

      nTipo := dm.qSel.FieldByName('tipo').Text;
      gdPesq2.Visible := False;
      cbUn.Items.Add(dm.qSel.FieldByName('ft_conv_un').Text);
      cbUn.Items.Add(dm.qSel.FieldByName('ft_conv_2un').Text);
      cbUn.Update;
      cbUn.ItemIndex := 0;

      cbUn.SetFocus;
    end;
  end;

end;

procedure TfCadProduto.edCod2KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(Key);

end;

procedure TfCadProduto.edCodExit(Sender: TObject);
begin

  if (edCod.Text <> '') then
  begin
    dm.qPesq.Close;
    dm.qPesq.SQL.Clear;
    if rdTipo.ItemIndex = 0 then // SA
      dm.qPesq.SQL.Add
        ('select id,  descricao nome, ''S'' tipo, unidade from semi_acabado where id = '
        + edCod.Text)
    else
      dm.qPesq.SQL.Add
        (' select id, descricao nome, ft_conv_un, ft_conv_2un, tipo ' +
        ' from produto ' +
        ' where ex = 0 and ((tipo = ''M'') or (tipo = ''P'' and materia_prima = ''S'') ) '
        + ' and id = ' + edCod.Text);
    dm.qPesq.Open;
    if not dm.qPesq.IsEmpty then
    begin
      EdNom.Text := dm.qPesq.FieldByName('nome').Text;
      gdPesq.Visible := False;
      if rdTipo.ItemIndex = 0 then
      begin // sa
        cbUnid.Items.Clear;
        cbUnid.Items.Add({'UN'}dm.qPesq.FieldByName('unidade').Text);
        cbUnid.Update;
        cbUnid.ItemIndex := 0;
        cbUnid.Enabled := False;
        edQtd.Text := '1';
        edQtd.SetFocus;
      end
      else
      begin
        cbUnid.Items.Clear;
        cbUnid.Items.Add(dm.qPesq.FieldByName('ft_conv_un').Text);
        cbUnid.Items.Add(dm.qPesq.FieldByName('ft_conv_2un').Text);
        cbUnid.Update;
        cbUnid.ItemIndex := 0;
        cbUnid.Enabled := True;
        cbUnid.SetFocus;
      end;
    END;
  end;

end;

procedure TfCadProduto.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    if gdPesq.Visible then
      gdPesq.SetFocus;

end;

procedure TfCadProduto.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(Key);

end;

procedure TfCadProduto.edCustoExit(Sender: TObject);
begin
  try
    edCusto.Text := (formatfloat('#0.00', strtofloat(edCusto.Text)));
  except
    edCusto.Clear;
  end;

end;

procedure TfCadProduto.edCustoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  somente_numero(Key);

end;

procedure TfCadProduto.ednom2Change(Sender: TObject);
begin
  if (ednom2.Text <> '') then
  begin

    gdPesq2.Left := edCod2.Left;
    gdPesq2.Top := edCod2.Top + edCod2.Height + 2;

    dm.qSel.Close;
    dm.qSel.SQL.Clear;
    // if rdTipo.ItemIndex = 0 then // mp
    dm.qSel.SQL.Add
      (' select case when produto.tipo = ''M'' then ''Matéria-prima'' ' +
      ' when produto.tipo = ''P'' then ''Produto'' end tp, ' +
      ' produto.id, produto.descricao nome, produto.ft_conv_un, ' +
      ' produto.ft_conv_2un, produto.tipo ' +
      ' from produto where ativo = ''S'' and ex = 0 and  ' +
      ' produto.descricao like ' + quotedstr('%' + ednom2.Text + '%'));
    dm.qSel.Open;

    if dm.qSel.IsEmpty then
      gdPesq2.Visible := False
    else
      gdPesq2.Visible := True;
  end
  else
    gdPesq2.Visible := False;

end;

procedure TfCadProduto.ednom2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_DOWN then
    if gdPesq2.Visible then
      gdPesq2.SetFocus;

end;

procedure TfCadProduto.edQtd2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  somente_numero(Key);
end;

procedure TfCadProduto.edQtdKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(Key);

end;

procedure TfCadProduto.edRefChange(Sender: TObject);
begin
  ativaT;
end;

procedure TfCadProduto.ExcluirRegistroTabelaFilha(DataSource : TDataSource);
begin
  if not DataSource.DataSet.Active then
    Exit;

  if DataSource.DataSet.IsEmpty then
  begin
    Application.MessageBox('Nenhum registro selecionado para exclusão.','Atenção',
      MB_OK + MB_ICONWARNING);
    Exit;
  end;

  if Application.MessageBox('Confirma excluir o registro selecionado?','Confirmação',
     MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION) <> IDYES then
    Exit;

  DataSource.DataSet.Delete;
end;

procedure TfCadProduto.btAddPClick(Sender: TObject);
begin
  if trim(edCod.Text) = '' then
  begin
    Application.MessageBox('Informe o Codigo na Ficha Tecnica!', 'Atenção');
    edCod.SetFocus;
    Exit;
  end;

  if trim(EdNom.Text) = '' then
  begin
    Application.MessageBox('Informe a Descrição na Ficha Tecnica!', 'Atenção');
    EdNom.SetFocus;
    Exit;
  end;

  if trim(cbUnid.Text) = '' then
  begin
    Application.MessageBox('Informe a Unidade na Ficha Tecnica!', 'Atenção');
    cbUnid.SetFocus;
    Exit;
  end;

  if trim(edQtd.Text) = '' then
  begin
    Application.MessageBox('Informe a Quantidade na Ficha Tecnica!', 'Atenção');
    edQtd.SetFocus;
    Exit;
  end;

  qFicha.Insert;
  qFichaIdProduto.Value := TId.Value;
  qFichaIdItem.Value := strtoint(edCod.Text);
  if rdTipo.ItemIndex = 0 then
    qFichaTipo.Text := 'S' // Semi-Acabado estava M
  else
    qFichaTipo.Text := dm.qPesq.FieldByName('tipo').AsString; // 'P';
  qFichaUnidade.Text := trim(cbUnid.Text);
  qFichaQuantidade.Value := strtofloat(edQtd.Text);
  qFicha.post;

  qFicha.Close;
  qFicha.Params[0].Value := TId.Value;
  qFicha.Open; // atualizar a descrição dos produtos

  EdNom.Clear;
  edCod.Clear;
  cbUnid.Items.Clear;
  edQtd.Clear;

  calculcaFicha;

  calculcaPreco;

  EdNom.SetFocus;

end;

procedure TfCadProduto.BtAddPiClick(Sender: TObject);
var
  nPr: integer;
  nQt: real;

begin

  if (qProc.IsEmpty) or (qProcId.AsInteger = 0) then
  begin
    Application.MessageBox('Por favor, informe o processo para continuar',
      'Atenção');
    cbProcesso.SetFocus;
    Exit;
  end;

  if trim(ednom2.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe o produto ou matéria-prima!',
      'Atenção');
    ednom2.SetFocus;
    Exit;
  end;

  if trim(cbUn.Text) = '' then
  begin
    Application.MessageBox('Por favor, informe a unidade!', 'Atenção');
    cbUn.SetFocus;
    Exit;
  end;

  try
    nPr := strtoint(edCod2.Text);
  except
    Application.MessageBox
      ('Por favor, informe o codigo do produto ou matéria-prima!', 'Atenção');
    edCod2.SetFocus;
    Exit;
  end;

  try
    nQt := strtofloat(edQtd2.Text);
  except
    Application.MessageBox('Por favor, informe a quantidade!', 'Atenção');
    edQtd2.SetFocus;
    Exit;
  end;

  qProcItem.Insert;
  qProcItemId.Value := InsereCodigo('Processo_fase_i', 'ID');
  qProcItemIdProcesso_fase.Value := qProcId.Value;
  qProcItemIdProduto.Value := nPr;
  qProcItemdescricao.Value := UpperCase(ednom2.Text);
  qProcItemUn.Value := cbUn.Text;
  qProcItemQtde.Value := nQt;
  qProcItemtipo.Value := nTipo;
  qProcItem.post;

  qProcItem.Close;
  qProcItem.Params[0].Value := qProcId.Value;
  qProcItem.Open;

  edCod2.Clear;
  ednom2.Clear;
  cbUn.Items.Clear;
  edQtd2.Clear;
  gdPesq2.Visible := False;

  calculaTotal;

  calculcaPreco;

  CheckDBGrid4.SetFocus;

end;

procedure TfCadProduto.btAtualPrecoClick(Sender: TObject);
begin
  calculcaPreco;
end;

procedure TfCadProduto.qComiNewRecord(DataSet: TDataSet);
begin
  inherited;
  qComiID.Value := InsereCodigo('prod_comi', 'id');
  qComiIDproduto.Value := TId.Value;
end;

procedure TfCadProduto.qFichaAfterPost(DataSet: TDataSet);
begin
  qFicha.ApplyUpdates;
end;

procedure TfCadProduto.qFichaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qFichaId.Value := InsereCodigo('ficha_tecnica', 'id');
end;

procedure TfCadProduto.qForProNewRecord(DataSet: TDataSet);
begin
  inherited;
  qForProID.Value := InsereCodigo('forpro', 'id');
  qForProtipo.Value := Ttipo.Value;
  qForProIDPRODUTO.Value := TId.Value;

end;

procedure TfCadProduto.qGarantiaNewRecord(DataSet: TDataSet);
begin
  inherited;
  qGarantiaidProduto.AsInteger := Tid.AsInteger;
end;

procedure TfCadProduto.qNCMAfterOpen(DataSet: TDataSet);
begin
  qNcmUf.Open;

end;

procedure TfCadProduto.qProcAfterPost(DataSet: TDataSet);
begin

  if salvando = 'S' then
    Exit;

  qProc.ApplyUpdates;
  sleep(100);

  calculaTotal;
  sleep(100);

  verificaUltimo;
  sleep(100);

end;

procedure TfCadProduto.qProcAfterScroll(DataSet: TDataSet);
begin
  qProcItem.Close;
  qProcItem.ParamByName('IDp').AsInteger := qProcId.AsInteger;
  qProcItem.Open;

end;

procedure TfCadProduto.qProcBeforePost(DataSet: TDataSet);
begin
  { try
    strtotime(qProcTempo.Value);
    except
    //qProcTempo.Clear;
    qproc.Cancel
    end; }

  qPr.Close;
  qPr.ParamByName('ids').Value := TId.Value;
  qPr.Open;
  qPr.First;
  while qPr.Eof = False do
  begin
    if (qPrOrdem.AsInteger = qProcOrdem.AsInteger) and
      (qPrId.AsInteger <> qProcId.AsInteger) then
    begin
      qProcOrdem.Text := '';
      Break
    end
    else
      qPr.Next;
  end;

end;

procedure TfCadProduto.qProcItemAfterPost(DataSet: TDataSet);
begin
  qProcItem.ApplyUpdates;
  qProcItem.Refresh;
  calculaTotal;
end;

procedure TfCadProduto.qProcItemNewRecord(DataSet: TDataSet);
begin
  qProcItemId.Value := InsereCodigo('processo_fase_I', 'ID');

end;

procedure TfCadProduto.qProcNewRecord(DataSet: TDataSet);
begin
  qProcId.Value := InsereCodigo('processo_fase', 'ID');

end;

procedure TfCadProduto.QTabelaReferenciaConsumoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FormatarCamposTabelaReferencia(DataSet);
end;

procedure TfCadProduto.QTabelaReferenciaConsumoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QTabelaReferenciaConsumoIDPRODUTO.AsInteger  := TId.AsInteger;
  QTabelaReferenciaConsumoTIPOTABELA.AsInteger := TTR_CONSUMO;
end;

procedure TfCadProduto.QTabelaReferenciaMicromineraisGDiaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FormatarCamposTabelaReferencia(DataSet);
end;

procedure TfCadProduto.QTabelaReferenciaMicromineraisGDiaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QTabelaReferenciaMicromineraisGDiaIDPRODUTO.AsInteger  := TId.AsInteger;
  QTabelaReferenciaMicromineraisGDiaTIPOTABELA.AsInteger := TTR_MICROMINERAIS_GDIA;
end;

procedure TfCadProduto.QTabelaReferenciaMicromineraisMgDiaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FormatarCamposTabelaReferencia(DataSet);
end;

procedure TfCadProduto.QTabelaReferenciaMicromineraisMgDiaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QTabelaReferenciaMicromineraisMgDiaIDPRODUTO.AsInteger  := TId.AsInteger;
  QTabelaReferenciaMicromineraisMgDiaTIPOTABELA.AsInteger := TTR_MICROMINERAIS_MGDIA;
end;

procedure TfCadProduto.QTabelaReferenciaVitaminasAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FormatarCamposTabelaReferencia(DataSet);
end;

procedure TfCadProduto.QTabelaReferenciaVitaminasNewRecord(DataSet: TDataSet);
begin
  inherited;
  QTabelaReferenciaVitaminasIDPRODUTO.AsInteger  := TId.AsInteger;
  QTabelaReferenciaVitaminasTIPOTABELA.AsInteger := TTR_VITAMINAS;
end;

procedure TfCadProduto.rdAtivoClick(Sender: TObject);
begin

  ativaT;
end;

procedure TfCadProduto.acTipoExecute(Sender: TObject);
begin

  if not(T.State in [dsEdit, dsInsert]) then
    Exit;

  if rdTipo.ItemIndex = 0 then
    rdTipo.ItemIndex := 1
  else
    rdTipo.ItemIndex := 0;

end;

procedure TfCadProduto.calculcaPreco;
var
  cusMaster: real;
begin
  if not(T.State in [dsEdit, dsInsert]) then
    Exit;

  if (dm.qParametromargem_minima.AsFloat > 0) and
    (Tmargem.AsFloat < dm.qParametromargem_minima.AsFloat) then
    if dm.qUser.Locate('Nome_1', 'PER_MINIMA', []) then
      if dm.qUserPermitido.Text = 'F' then
        Tmargem.AsFloat := dm.qParametromargem_minima.AsFloat;

  if TIdCxMaster.AsInteger > 0 then
  begin
    qMP.Locate('id', TIdCxMaster.AsInteger, []);
    if (qMPprecocompra.AsFloat > 0) and (Tmultiplo.AsFloat > 0) then
      cusMaster := qMPprecocompra.AsFloat / Tmultiplo.AsFloat
    else
      cusMaster := 0;
  end
  else
    cusMaster := 0;

  TcustoCxMaster.AsFloat := cusMaster;

  if PageControl1.Pages[3].TabVisible = True then // ficha tecnica
  begin
    TCustoproducao.AsFloat := TCustoProcesso.AsFloat + TCustoMP.AsFloat +
      TCusto_montagem.AsFloat;
    if (TCustoproducao.AsFloat > 0) and (dm.qParametroPorCustoOpera.AsFloat > 0)
    then
      TCustoOperacional.AsFloat := TCustoproducao.AsFloat *
        dm.qParametroPorCustoOpera.AsFloat / 100
    else
      TCustoOperacional.AsFloat := 0;
    TCustoFinal.AsFloat := TCustoproducao.AsFloat + TCustoOperacional.AsFloat +
      TcustoCxMaster.AsFloat;

  end
  else
  begin
    TCustoFinal.AsFloat := TPrecoCompra.AsFloat + TCustoOperacional.AsFloat +
      TcustoCxMaster.AsFloat;
  end;

  if (Tmargem.AsFloat > 0) then
    TVendaSugerido.AsFloat := TCustoFinal.AsFloat +
      (TCustoFinal.AsFloat * Tmargem.AsFloat / 100)
  else
    TVendaSugerido.AsFloat := TCustoFinal.AsFloat;

  if dm.qParametrovenda_desc_margem.Text = 'S' then // TESTE - somente itu acos
  begin
    Tvalor.AsFloat := TVendaSugerido.AsFloat;
    Tvalor2.AsFloat := TVendaSugerido.AsFloat;
  end;

end;

procedure TfCadProduto.CarregarDadosTabelaReferencia;
begin
  QTabelaReferenciaConsumo.Close;
  QTabelaReferenciaConsumo.SQL.Text := SQL_SELECT_TABELAREFERENCIA;
  QTabelaReferenciaConsumo.ParamByName('IDPRODUTO').AsInteger  := TId.Value;
  QTabelaReferenciaConsumo.ParamByName('TIPOTABELA').AsInteger := TTR_CONSUMO;
  QTabelaReferenciaConsumo.Open;

  QTabelaReferenciaMicromineraisMgDia.Close;
  QTabelaReferenciaMicromineraisMgDia.SQL.Text := SQL_SELECT_TABELAREFERENCIA;
  QTabelaReferenciaMicromineraisMgDia.ParamByName('IDPRODUTO').AsInteger  := TId.Value;
  QTabelaReferenciaMicromineraisMgDia.ParamByName('TIPOTABELA').AsInteger := TTR_MICROMINERAIS_MGDIA;
  QTabelaReferenciaMicromineraisMgDia.Open;

  QTabelaReferenciaMicromineraisGDia.Close;
  QTabelaReferenciaMicromineraisGDia.SQL.Text := SQL_SELECT_TABELAREFERENCIA;
  QTabelaReferenciaMicromineraisGDia.ParamByName('IDPRODUTO').AsInteger  := TId.Value;
  QTabelaReferenciaMicromineraisGDia.ParamByName('TIPOTABELA').AsInteger := TTR_MICROMINERAIS_GDIA;
  QTabelaReferenciaMicromineraisGDia.Open;

  QTabelaReferenciaVitaminas.Close;
  QTabelaReferenciaVitaminas.SQL.Text := SQL_SELECT_TABELAREFERENCIA;
  QTabelaReferenciaVitaminas.ParamByName('IDPRODUTO').AsInteger  := TId.Value;
  QTabelaReferenciaVitaminas.ParamByName('TIPOTABELA').AsInteger := TTR_VITAMINAS;
  QTabelaReferenciaVitaminas.Open;
end;

procedure TfCadProduto.cbGruClick(Sender: TObject);
begin
  ativaT;

end;

procedure TfCadProduto.cbProcessoClick(Sender: TObject);
begin
  qProc2.Locate('id', inttostr(strtoint(copy(cbProcesso.Text, 1, 3))), []);
  edOrdem.Text := trim(qProc2ordem.Text);
end;

procedure TfCadProduto.calculcaFicha;
var
  vP, vM: real;
begin
  if not(T.State in [dsEdit, dsInsert]) then
    Exit;

  vP := 0;
  vM := 0;

  if not(qFicha.active) then
  begin
    qFicha.Close;
    qFicha.Params[0].Value := TId.Value;
    qFicha.Open;
  end;

  qFicha.First;
  while qFicha.Eof = False do
  begin
    vP := vP + qFichatotprocesso.AsFloat;
    vM := vM + qFichatotmp.AsFloat;
    qFicha.Next;
  end;

  TCustoProcesso.AsFloat := vP;
  TCustoMP.AsFloat := vM;

end;

procedure TfCadProduto.mostramedidas;
begin
  if TIdCxMaster.AsInteger > 0 then
  begin
    pMedPro.Visible := False;
    pMedCx.Visible := True;
  end
  else
  begin
    pMedPro.Visible := True;
    pMedCx.Visible := False;
  end

end;

procedure TfCadProduto.calculaTotal;
var
  vP, vM: real;
  vPosiP, vPosiM: integer;
  vTemp: integer;
begin

  if not(T.State in [dsInsert, dsEdit]) then
    Exit;

  vP := 0;
  vM := 0;
  vTemp := 0;
  vPosiP := qProc.RecNo;
  vPosiM := qProcItem.RecNo;

  qProc.First;
  gridProc.DataSource := nil;

  while qProc.Eof = False do
  begin
    Application.ProcessMessages;

    vP := vP + qProcCusto.AsFloat;
    vTemp := vTemp + HoraParaSegundos(copy(qProcTempo.Text, 1, 8));

    qProcItem.First;
    while qProcItem.Eof = False do
    begin
      Application.ProcessMessages;
      vM := vM + qProcItemtot.AsFloat;

      qProcItem.Next;
    end;

    qProc.Next;
  end;
  gridProc.DataSource := dProc;

  Ttotprocesso.AsFloat := vP;
  Ttotmp.AsFloat := vM;
  TCustoProcesso.AsFloat := vP + vM;
  TtotTempo.Value := SegundosParaHora(vTemp);

  qProc.RecNo := vPosiP;
  qProcItem.RecNo := vPosiM;

end;

procedure TfCadProduto.verificaUltimo;
var
  vultimo: integer;
begin

  // testar se é somente um último
  qPr.Close;
  qPr.ParamByName('ids').Value := TId.AsInteger;
  qPr.Open;

  vultimo := 0;
  if qPr.IsEmpty = False then
  begin
    qPr.First;
    gridProc.DataSource := nil;
    while not qPr.Eof do
    begin
      if trim(qPrUltimo.Text) = 'T' then
        vultimo := vultimo + 1;
      qPr.Next;
    end;
    gridProc.DataSource := dProc;

    if (vultimo > 1) then
    begin
      Application.MessageBox
        ('Por favor, apenas um único processo pode ser o último, Verifique!',
        'Atenção');
      PageControl1.ActivePageIndex := 4;
      Exit;
    end;

  end;

end;

end.
