unit uImpCC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   RLReport, RLBarcode,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfImpCC = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    D: TDataSource;
    lData: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand2: TRLBand;
    RLLabel6: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLBand3: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    rpNovoCCe: TRLReport;
    RLBand4: TRLBand;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLPanel3: TRLPanel;
    RLLabel16: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    RLPanel4: TRLPanel;
    RLLabel17: TRLLabel;
    RLDBText3: TRLDBText;
    RLPanel5: TRLPanel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLPanel6: TRLPanel;
    RLPanel7: TRLPanel;
    RLPanel8: TRLPanel;
    RLDraw2: TRLDraw;
    RLLabel22: TRLLabel;
    lCNPJEmitente: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText5: TRLDBText;
    RLPanel9: TRLPanel;
    RLLabel23: TRLLabel;
    lDataHora: TRLLabel;
    RLPanel10: TRLPanel;
    RLLabel24: TRLLabel;
    RLDBText6: TRLDBText;
    RLPanel12: TRLPanel;
    RLLabel25: TRLLabel;
    RLDBText7: TRLDBText;
    RLPanel13: TRLPanel;
    RLLabel36: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLPanel15: TRLPanel;
    RLLabel27: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel26: TRLLabel;
    lOrgao: TRLLabel;
    RLDraw3: TRLDraw;
    RLPanel16: TRLPanel;
    RLLabel28: TRLLabel;
    RLLabel33: TRLLabel;
    RLPanel17: TRLPanel;
    RLDraw1: TRLDraw;
    RLLabel30: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel34: TRLLabel;
    RLPanel11: TRLPanel;
    RLLabel31: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLPanel18: TRLPanel;
    RLMemo1: TRLMemo;
    Q: TZQuery;
    QID: TIntegerField;
    QNF: TIntegerField;
    QHORA: TWideStringField;
    QTIPO: TWideStringField;
    QCFOP: TWideStringField;
    QNATOPER: TWideStringField;
    QIDPRODUTOR: TIntegerField;
    QNOME: TWideStringField;
    QCNPJ: TWideStringField;
    QIE: TWideStringField;
    QENDERECO: TWideStringField;
    QBAIRRO: TWideStringField;
    QCEP: TWideStringField;
    QCIDADE: TWideStringField;
    QFONE: TWideStringField;
    QUF: TWideStringField;
    QBASE_ICMS: TFloatField;
    QVAL_ICMS: TFloatField;
    QBASE_IPI: TFloatField;
    QVAL_IPI: TFloatField;
    QT_PROD: TFloatField;
    QT_NF: TFloatField;
    QFRETE: TFloatField;
    QIDTRANSPORTADORA: TIntegerField;
    QTRANS_NOME: TWideStringField;
    QTRANS_CNPJ: TWideStringField;
    QTRANS_IE: TWideStringField;
    QTRANS_PLACA: TWideStringField;
    QTRANS_UFPLACA: TWideStringField;
    QTRANS_ENDE: TWideStringField;
    QTRANS_CIDADE: TWideStringField;
    QTRANS_UF: TWideStringField;
    QQUANTIDADE: TWideStringField;
    QESPECIE: TWideStringField;
    QMARCA: TWideStringField;
    QNUMERO: TWideStringField;
    QPBRUTO: TFloatField;
    QPLIQUIDO: TFloatField;
    QOBS: TWideMemoField;
    QTPFRETE: TWideStringField;
    QTPNF: TWideStringField;
    QST: TWideStringField;
    QT_SERV: TFloatField;
    QVAL_ISS: TFloatField;
    QNUM: TWideStringField;
    QVALSERV1: TFloatField;
    QSERV1: TWideStringField;
    QIDPEDIDO: TIntegerField;
    QMARGEMST: TFloatField;
    QBASEST: TFloatField;
    QVALICMSST: TFloatField;
    QGERACREDITO: TWideStringField;
    QDESCONTO: TFloatField;
    QTP_CF: TWideStringField;
    QXML: TWideStringField;
    QSTATUSNFE: TWideStringField;
    QRECIBO: TWideMemoField;
    QPROTOCOLO: TWideMemoField;
    QRETORNO: TWideMemoField;
    QCHAVE: TWideStringField;
    QCCORECAO: TWideStringField;
    QCC_MOTIVO: TWideMemoField;
    QXML_CANCEL: TWideStringField;
    QCANCEL_DATA: TWideStringField;
    QCANCEL_MOTIVO: TWideMemoField;
    QCANCEL_PROTOCOLO: TWideStringField;
    QDESPESAS: TFloatField;
    QTABELAAB: TWideStringField;
    QIDCIDADE: TIntegerField;
    QTPPESSOA: TWideStringField;
    QEMAIL: TWideStringField;
    QPAIS: TIntegerField;
    QEX_UFEMBARQUE: TWideStringField;
    QEX_LOCALEMBARQUE: TWideStringField;
    QEX_LOCADESPACHO: TWideStringField;
    QCODEMP: TIntegerField;
    QIDEMITENTE: TIntegerField;
    QEM_NOME: TWideStringField;
    QEM_CNPJ: TWideStringField;
    QEM_IE: TWideStringField;
    QEM_ENDERECO: TWideStringField;
    QEM_BAIRRO: TWideStringField;
    QEM_CEP: TWideStringField;
    QEM_CIDADE: TWideStringField;
    QEM_FONE: TWideStringField;
    QEM_UF: TWideStringField;
    QEM_IDCIDADE: TIntegerField;
    QEM_TPPESSOA: TWideStringField;
    QEM_EMAIL: TWideStringField;
    QEM_PAIS: TIntegerField;
    QEM_NUM: TWideStringField;
    QIDFINALIDADE: TIntegerField;
    QIDTIPOEMISSAO: TIntegerField;
    QEMISSAO: TDateTimeField;
    QSAIDA: TDateTimeField;
    rpMinuta: TRLReport;
    RLBand5: TRLBand;
    RLBand6: TRLBand;
    RLPanel24: TRLPanel;
    RLPanel25: TRLPanel;
    RLPanel26: TRLPanel;
    RLPanel27: TRLPanel;
    RLPanel28: TRLPanel;
    RLPanel29: TRLPanel;
    RLPanel30: TRLPanel;
    RLPanel14: TRLPanel;
    RLPanel19: TRLPanel;
    RLPanel20: TRLPanel;
    RLPanel21: TRLPanel;
    RLPanel22: TRLPanel;
    RLPanel23: TRLPanel;
    RLPanel31: TRLPanel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel52: TRLLabel;
    RLAngleLabel1: TRLAngleLabel;
    RLDBText4: TRLDBText;
    qMin: TZQuery;
    dMin: TDataSource;
    qMinnf: TIntegerField;
    qMintotcubagem: TFloatField;
    qMinidtransred: TIntegerField;
    qMinr_nome: TWideStringField;
    qMinr_end: TWideStringField;
    qMinr_cid: TWideStringField;
    qMinr_cep: TWideStringField;
    qMinr_bai: TWideStringField;
    qMinr_tel: TWideStringField;
    qMinc_nome: TWideStringField;
    qMinc_end: TWideStringField;
    qMinc_cid: TWideStringField;
    qMinc_cep: TWideStringField;
    qMinc_bai: TWideStringField;
    qMinc_tel: TWideStringField;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel53: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel51: TRLLabel;
    RLLabel54: TRLLabel;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    rpEtiq: TRLReport;
    RLBand7: TRLBand;
    RLPanel45: TRLPanel;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBText38: TRLDBText;
    lVol: TRLLabel;
    RLLabel56: TRLLabel;
    RLDBText23: TRLDBText;
    rpMinuta2: TRLReport;
    RLBand8: TRLBand;
    RLBand9: TRLBand;
    rpEtiq2: TRLReport;
    RLBand10: TRLBand;
    RLPanel47: TRLPanel;
    RLDBText47: TRLDBText;
    lVol2: TRLLabel;
    RLDBText50: TRLDBText;
    RLPanel46: TRLPanel;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLLabel74: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLPanel44: TRLPanel;
    RLLabel69: TRLLabel;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    qMinidtransportadora: TIntegerField;
    qMint_nome: TWideStringField;
    qMint_end: TWideStringField;
    qMint_cid: TWideStringField;
    qMint_cep: TWideStringField;
    qMint_bai: TWideStringField;
    qMint_tel: TWideStringField;
    qMinc_email: TWideStringField;
    qMine_nome: TWideStringField;
    qMine_end: TWideStringField;
    qMine_cid: TWideStringField;
    qMine_cep: TWideStringField;
    qMine_bai: TWideStringField;
    qMine_tel: TWideStringField;
    qMine_email: TWideStringField;
    qMine_cnpj: TWideStringField;
    qMine_ie: TWideStringField;
    RLPanel40: TRLPanel;
    RLPanel38: TRLPanel;
    RLLabel60: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText51: TRLDBText;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLMemo2: TRLMemo;
    RLLabel80: TRLLabel;
    RLDBText53: TRLDBText;
    qMint_cnpj: TWideStringField;
    qMint_ie: TWideStringField;
    RLLabel81: TRLLabel;
    RLDBText54: TRLDBText;
    RLPanel39: TRLPanel;
    RLPanel41: TRLPanel;
    RLPanel42: TRLPanel;
    RLPanel43: TRLPanel;
    RLLabel75: TRLLabel;
    RLDBText52: TRLDBText;
    RLLabel82: TRLLabel;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLLabel83: TRLLabel;
    RLDBText59: TRLDBText;
    RLLabel84: TRLLabel;
    RLDBText60: TRLDBText;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLDBText61: TRLDBText;
    RLLabel85: TRLLabel;
    qMinfrete: TFloatField;
    qMint_nf: TFloatField;
    qMinespecie: TWideStringField;
    qMinpliquido: TFloatField;
    qMinpbruto: TFloatField;
    RLPanel48: TRLPanel;
    RLLabel55: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel88: TRLLabel;
    RLDBText62: TRLDBText;
    RLLabel89: TRLLabel;
    RLDBText63: TRLDBText;
    RLPanel37: TRLPanel;
    RLLabel59: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLPanel32: TRLPanel;
    RLPanel34: TRLPanel;
    RLLabel57: TRLLabel;
    RLDBText25: TRLDBText;
    RLPanel35: TRLPanel;
    RLLabel58: TRLLabel;
    RLDBText26: TRLDBText;
    RLPanel36: TRLPanel;
    RLLabel94: TRLLabel;
    RLDBText64: TRLDBText;
    RLPanel51: TRLPanel;
    RLLabel95: TRLLabel;
    RLDBText65: TRLDBText;
    RLPanel52: TRLPanel;
    RLLabel96: TRLLabel;
    RLDBText66: TRLDBText;
    RLPanel54: TRLPanel;
    RLPanel55: TRLPanel;
    RLLabel97: TRLLabel;
    RLDBText67: TRLDBText;
    RLPanel56: TRLPanel;
    RLLabel98: TRLLabel;
    RLDBText68: TRLDBText;
    RLLabel72: TRLLabel;
    RLPanel33: TRLPanel;
    RLPanel49: TRLPanel;
    RLPanel50: TRLPanel;
    RLPanel53: TRLPanel;
    RLPanel58: TRLPanel;
    RLPanel60: TRLPanel;
    RLPanel57: TRLPanel;
    RLPanel59: TRLPanel;
    RLDBText37: TRLDBText;
    RLPanel61: TRLPanel;
    qMinquantidade: TFloatField;
    RLDBMemo4: TRLDBMemo;
    qMinemissao: TDateTimeField;
    RLLabel73: TRLLabel;
    RLDBText44: TRLDBText;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel45BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLPanel47BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    qt:integer;
  public
    { Public declarations }
  end;

var
  fImpCC: TfImpCC;

implementation

uses uDM, uFuncao, tbExtenso;

{$R *.dfm}

procedure TfImpCC.FormCreate(Sender: TObject);
begin
   qt:= 0;
end;

procedure TfImpCC.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 lData.Caption := DM.qParametroCIDADE.Text+ ', '+DataExtenso(Date, 'N', 'N');
end;

procedure TfImpCC.RLPanel45BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  qt := qt + 1;
  lVol.Caption := formatfloat('######0000', qt);
end;

procedure TfImpCC.RLPanel47BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  qd:integer;
begin
  qt := qt + 1;
  qd := qMinquantidade.AsInteger;
  if qd = 0 then
     qd := 1;

  lVol2.Caption := formatfloat('#####0000', qt) + ' / '  + formatfloat('#####0000', qd ) +
                   ' Volumes ';

end;

end.
