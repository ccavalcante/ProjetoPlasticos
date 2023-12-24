
unit uImpressoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, jpeg,
   RLPrintDialog, printers, ZAbstractRODataset, ZDataset, RLBarcode,
  ZAbstractDataset, Vcl.ExtCtrls, Data.DB, RLPDFFilter;

type
  TfImpressoes = class(TForm)
    rpImpPedido: TRLReport;
    RLBand16: TRLBand;
    RLDBText54: TRLDBText;
    RLBand17: TRLBand;
    RLLabel45: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLBand19: TRLBand;
    RLLabel46: TRLLabel;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLBand20: TRLBand;
    RLSystemInfo8: TRLSystemInfo;
    RLDBText67: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText68: TRLDBText;
    RLLabel59: TRLLabel;
    RLLabel62: TRLLabel;
    RLMemo1: TRLMemo;
    RLDBText74: TRLDBText;
    RLLabel90: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lTitulo: TRLLabel;
    Q: TZQuery;
    D: TDataSource;
    QId: TIntegerField;
    QData: TDateTimeField;
    QIdVendedor: TIntegerField;
    QIdCliente: TIntegerField;
    QIdCondPgto: TIntegerField;
    QValor: TFloatField;
    QDesconto: TFloatField;
    QTotal: TFloatField;
    QPrazoEntrega: TWideStringField;
    QNotaFiscal: TIntegerField;
    QIdProduto: TIntegerField;
    QQtd: TFloatField;
    QUnit: TFloatField;
    QNome: TWideStringField;
    QEndereco: TWideStringField;
    QNum: TWideStringField;
    QBairro: TWideStringField;
    QCEP: TWideStringField;
    QCidade: TWideStringField;
    QUF: TWideStringField;
    Qtel1: TWideStringField;
    Qdescricao: TWideStringField;
    Qcod_manual: TIntegerField;
    Qtotprod: TFloatField;
    Qcomple: TWideStringField;
    QnomeVend: TWideStringField;
    QdesCond: TWideStringField;
    RLLabel3: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel4: TRLLabel;
    RLPanel1: TRLPanel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLPanel2: TRLPanel;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLPanel3: TRLPanel;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel2: TRLLabel;
    RLDBResult2: TRLDBResult;
    lCancelada: TRLAngleLabel;
    QEx: TIntegerField;
    RpCompra: TRLReport;
    RLBand1: TRLBand;
    RLDBText2: TRLDBText;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLBand2: TRLBand;
    RLLabel14: TRLLabel;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    RLLabel15: TRLLabel;
    RLMemo2: TRLMemo;
    RLDBMemo5: TRLDBMemo;
    RLLabel84: TRLLabel;
    RLBand3: TRLBand;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLBand4: TRLBand;
    RLLabel16: TRLLabel;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText69: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText25: TRLDBText;
    RLBand5: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    QObs: TWideMemoField;
    RLPanel5: TRLPanel;
    RLPanel4: TRLPanel;
    RLLabel28: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    rpIMpCliente: TRLReport;
    RLBand6: TRLBand;
    RLDBText26: TRLDBText;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel29: TRLLabel;
    RLBand9: TRLBand;
    RLLabel35: TRLLabel;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel47: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel48: TRLLabel;
    RLPanel8: TRLPanel;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLDBText41: TRLDBText;
    RLLabel61: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel63: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel64: TRLLabel;
    RLDBText44: TRLDBText;
    RLPanel9: TRLPanel;
    RLDBText46: TRLDBText;
    lRG: TRLLabel;
    RLPanel10: TRLPanel;
    RLDBText48: TRLDBText;
    RLBand10: TRLBand;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel44: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel68: TRLLabel;
    RLDBText49: TRLDBText;
    RLLabel69: TRLLabel;
    RLDBText50: TRLDBText;
    RLLabel65: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel70: TRLLabel;
    RLDBText51: TRLDBText;
    lCpf: TRLLabel;
    RLDBText47: TRLDBText;
    RLLabel71: TRLLabel;
    RLDBText52: TRLDBText;
    RLLabel72: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel73: TRLLabel;
    RLDBText58: TRLDBText;
    RLLabel74: TRLLabel;
    RLDBText70: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    qCli: TZQuery;
    dsCli: TDataSource;
    RLPanel6: TRLPanel;
    RLLabel31: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel41: TRLLabel;
    RLDBText72: TRLDBText;
    RLLabel40: TRLLabel;
    RLDBText71: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel38: TRLLabel;
    RLLabel33: TRLLabel;
    RLDBText28: TRLDBText;
    qCliid: TIntegerField;
    qClinome: TWideStringField;
    qCliEndereco: TWideStringField;
    qCliNum: TWideStringField;
    qCliBairro: TWideStringField;
    qCliCEP: TWideStringField;
    qCliCidade: TWideStringField;
    qCliuf: TWideStringField;
    qCliemail: TWideStringField;
    qClirg: TWideStringField;
    qClicpf: TWideStringField;
    qClidtnasc: TDateTimeField;
    qClidtcadastro: TDateTimeField;
    qClitel1: TWideStringField;
    qClitel2: TWideStringField;
    qClitel3: TWideStringField;
    qCliobs: TWideMemoField;
    qClilimiteCredito: TFloatField;
    qClitppessoa: TWideStringField;
    qClirazao: TWideStringField;
    qClicomple: TWideStringField;
    qCliEnd_entrega: TWideStringField;
    qCliNum_entrega: TWideStringField;
    qCliBairro_entrega: TWideStringField;
    qCliCep_entrega: TWideStringField;
    qClicidade_entrega: TWideStringField;
    qCliUF_entrega: TWideStringField;
    qCliComple_entrega: TWideStringField;
    qCliativo: TWideStringField;
    qClipais: TWideStringField;
    qClipais_entrega: TWideStringField;
    qClicontribuinte: TWideStringField;
    RLBand7: TRLBand;
    RLDBText75: TRLDBText;
    RLDBText76: TRLDBText;
    RLDBText77: TRLDBText;
    RLDBText78: TRLDBText;
    rpImpPedido2vias: TRLReport;
    RLAngleLabel1: TRLAngleLabel;
    RLBand8: TRLBand;
    RLDBText55: TRLDBText;
    RLSystemInfo6: TRLSystemInfo;
    lTelefone1: TRLLabel;
    RLBand11: TRLBand;
    RLLabel67: TRLLabel;
    RLDBResult5: TRLDBResult;
    RLDBResult6: TRLDBResult;
    RLLabel75: TRLLabel;
    RLDBResult7: TRLDBResult;
    RLLabel76: TRLLabel;
    RLDBResult8: TRLDBResult;
    RLPanel7: TRLPanel;
    RLLabel77: TRLLabel;
    RLMemo3: TRLMemo;
    RLPanel11: TRLPanel;
    RLLabel78: TRLLabel;
    RLDBMemo3: TRLDBMemo;
    RLBand12: TRLBand;
    RLLabel79: TRLLabel;
    RLDBText57: TRLDBText;
    RLDBText59: TRLDBText;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLDBText73: TRLDBText;
    RLLabel88: TRLLabel;
    RLDBText79: TRLDBText;
    RLLabel89: TRLLabel;
    RLLabel91: TRLLabel;
    RLDBText80: TRLDBText;
    RLLabel92: TRLLabel;
    RLPanel12: TRLPanel;
    RLDBText81: TRLDBText;
    RLDBText82: TRLDBText;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    RLDBText83: TRLDBText;
    RLLabel95: TRLLabel;
    RLDBText84: TRLDBText;
    RLLabel96: TRLLabel;
    RLDBText85: TRLDBText;
    RLLabel97: TRLLabel;
    RLDBText86: TRLDBText;
    RLPanel13: TRLPanel;
    RLDBText87: TRLDBText;
    RLDBText88: TRLDBText;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLPanel14: TRLPanel;
    RLDBText89: TRLDBText;
    RLDBText90: TRLDBText;
    RLLabel100: TRLLabel;
    RLBand14: TRLBand;
    RLDBText91: TRLDBText;
    RLDBText92: TRLDBText;
    RLDBText93: TRLDBText;
    RLDBText94: TRLDBText;
    sub1: TRLSubDetail;
    Sub2: TRLSubDetail;
    RLAngleLabel2: TRLAngleLabel;
    RLBand15: TRLBand;
    RLLabel101: TRLLabel;
    RLDBResult9: TRLDBResult;
    RLDBResult10: TRLDBResult;
    RLLabel102: TRLLabel;
    RLDBResult13: TRLDBResult;
    RLLabel103: TRLLabel;
    RLDBResult14: TRLDBResult;
    RLPanel15: TRLPanel;
    RLLabel104: TRLLabel;
    RLMemo4: TRLMemo;
    RLPanel16: TRLPanel;
    RLLabel105: TRLLabel;
    RLDBMemo4: TRLDBMemo;
    RLBand18: TRLBand;
    RLLabel106: TRLLabel;
    RLDBText97: TRLDBText;
    RLDBText98: TRLDBText;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel112: TRLLabel;
    RLLabel113: TRLLabel;
    RLDBText100: TRLDBText;
    RLLabel114: TRLLabel;
    RLDBText101: TRLDBText;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLDBText102: TRLDBText;
    RLLabel117: TRLLabel;
    RLPanel17: TRLPanel;
    RLDBText103: TRLDBText;
    RLDBText104: TRLDBText;
    RLLabel118: TRLLabel;
    RLLabel119: TRLLabel;
    RLDBText105: TRLDBText;
    RLLabel120: TRLLabel;
    RLDBText106: TRLDBText;
    RLLabel121: TRLLabel;
    RLDBText107: TRLDBText;
    RLLabel122: TRLLabel;
    RLDBText108: TRLDBText;
    RLPanel18: TRLPanel;
    RLDBText109: TRLDBText;
    RLDBText110: TRLDBText;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLPanel19: TRLPanel;
    RLDBText111: TRLDBText;
    RLDBText112: TRLDBText;
    RLLabel125: TRLLabel;
    RLBand22: TRLBand;
    RLDBText113: TRLDBText;
    RLDBText114: TRLDBText;
    RLDBText115: TRLDBText;
    RLDBText116: TRLDBText;
    RLBand23: TRLBand;
    RLSystemInfo10: TRLSystemInfo;
    RLLabel126: TRLLabel;
    RLBand13: TRLBand;
    rlPanelMeio: TRLPanel;
    RLDBText120: TRLDBText;
    RLDBText119: TRLDBText;
    RLDBText122: TRLDBText;
    RLLabel127: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel129: TRLLabel;
    RLLabel130: TRLLabel;
    RLPanel20: TRLPanel;
    RLLabel131: TRLLabel;
    RLLabel132: TRLLabel;
    RLLabel133: TRLLabel;
    RLLabel134: TRLLabel;
    RLPanel21: TRLPanel;
    RLDBText121: TRLDBText;
    RLDBText124: TRLDBText;
    RLLabel135: TRLLabel;
    RLLabel136: TRLLabel;
    RLDBText125: TRLDBText;
    RLLabel137: TRLLabel;
    RLDBText126: TRLDBText;
    RLLabel138: TRLLabel;
    RLDBText127: TRLDBText;
    RLLabel139: TRLLabel;
    RLDBText128: TRLDBText;
    RLPanel22: TRLPanel;
    RLDBText129: TRLDBText;
    RLDBText130: TRLDBText;
    RLLabel140: TRLLabel;
    RLLabel141: TRLLabel;
    RLDBText131: TRLDBText;
    RLLabel142: TRLLabel;
    RLDBText132: TRLDBText;
    RLLabel143: TRLLabel;
    RLDBText133: TRLDBText;
    RLLabel144: TRLLabel;
    RLDBText134: TRLDBText;
    RLLabel145: TRLLabel;
    lTelefone2: TRLLabel;
    RLPanel23: TRLPanel;
    RLDBText123: TRLDBText;
    RLLabel146: TRLLabel;
    RLDBText135: TRLDBText;
    Qtel2: TWideStringField;
    Qtel3: TWideStringField;
    RLDBText136: TRLDBText;
    RLLabel66: TRLLabel;
    RLLabel147: TRLLabel;
    RLLabel148: TRLLabel;
    RLPanel24: TRLPanel;
    RLDBText137: TRLDBText;
    RLDBText138: TRLDBText;
    RLDBText139: TRLDBText;
    RLLabel149: TRLLabel;
    RLLabel150: TRLLabel;
    RLBand21: TRLBand;
    rpImpPedido2vias_reduzido: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLAngleLabel3: TRLAngleLabel;
    RLBand24: TRLBand;
    RLLabel151: TRLLabel;
    RLDBResult15: TRLDBResult;
    RLDBResult16: TRLDBResult;
    RLLabel152: TRLLabel;
    RLDBResult17: TRLDBResult;
    RLLabel153: TRLLabel;
    RLDBResult18: TRLDBResult;
    RLPanel25: TRLPanel;
    RLLabel154: TRLLabel;
    RLMemo5: TRLMemo;
    RLPanel26: TRLPanel;
    RLLabel155: TRLLabel;
    RLDBMemo6: TRLDBMemo;
    RLBand25: TRLBand;
    RLLabel156: TRLLabel;
    RLDBText140: TRLDBText;
    RLDBText141: TRLDBText;
    RLLabel157: TRLLabel;
    RLLabel158: TRLLabel;
    RLLabel159: TRLLabel;
    RLLabel160: TRLLabel;
    RLLabel161: TRLLabel;
    RLLabel162: TRLLabel;
    RLDBText142: TRLDBText;
    RLLabel163: TRLLabel;
    RLDBText143: TRLDBText;
    RLLabel164: TRLLabel;
    RLDBText144: TRLDBText;
    RLLabel165: TRLLabel;
    RLLabel166: TRLLabel;
    RLDBText145: TRLDBText;
    RLLabel167: TRLLabel;
    RLPanel27: TRLPanel;
    RLDBText146: TRLDBText;
    RLDBText147: TRLDBText;
    RLLabel168: TRLLabel;
    RLLabel169: TRLLabel;
    RLDBText148: TRLDBText;
    RLLabel170: TRLLabel;
    RLDBText149: TRLDBText;
    RLLabel171: TRLLabel;
    RLDBText150: TRLDBText;
    RLLabel172: TRLLabel;
    RLDBText151: TRLDBText;
    RLPanel28: TRLPanel;
    RLDBText152: TRLDBText;
    RLDBText153: TRLDBText;
    RLLabel173: TRLLabel;
    RLLabel174: TRLLabel;
    RLPanel29: TRLPanel;
    RLDBText154: TRLDBText;
    RLDBText155: TRLDBText;
    RLLabel175: TRLLabel;
    RLPanel30: TRLPanel;
    RLDBText156: TRLDBText;
    RLDBText157: TRLDBText;
    RLDBText158: TRLDBText;
    RLLabel176: TRLLabel;
    RLLabel177: TRLLabel;
    RLLabel178: TRLLabel;
    RLBand26: TRLBand;
    RLDBText159: TRLDBText;
    RLDBText160: TRLDBText;
    RLDBText161: TRLDBText;
    RLDBText162: TRLDBText;
    RLDBText163: TRLDBText;
    RLDBText164: TRLDBText;
    RLBand27: TRLBand;
    RLDBText165: TRLDBText;
    RLSystemInfo7: TRLSystemInfo;
    RLPanel31: TRLPanel;
    RLDBText167: TRLDBText;
    RLDBText168: TRLDBText;
    RLLabel180: TRLLabel;
    RLLabel181: TRLLabel;
    RLDBText169: TRLDBText;
    RLLabel182: TRLLabel;
    RLDBText170: TRLDBText;
    RLLabel183: TRLLabel;
    RLDBText171: TRLDBText;
    RLLabel184: TRLLabel;
    RLDBText172: TRLDBText;
    RLLabel185: TRLLabel;
    RLBand28: TRLBand;
    RLPanel32: TRLPanel;
    RLLabel186: TRLLabel;
    RLLabel187: TRLLabel;
    RLLabel188: TRLLabel;
    RLLabel189: TRLLabel;
    RLSubDetail2: TRLSubDetail;
    RLAngleLabel4: TRLAngleLabel;
    RLBand29: TRLBand;
    RLLabel190: TRLLabel;
    RLDBResult19: TRLDBResult;
    RLDBResult20: TRLDBResult;
    RLLabel191: TRLLabel;
    RLDBResult21: TRLDBResult;
    RLLabel192: TRLLabel;
    RLDBResult22: TRLDBResult;
    RLPanel33: TRLPanel;
    RLLabel193: TRLLabel;
    RLMemo6: TRLMemo;
    RLPanel34: TRLPanel;
    RLLabel194: TRLLabel;
    RLDBMemo7: TRLDBMemo;
    RLPanel35: TRLPanel;
    RLLabel195: TRLLabel;
    RLLabel196: TRLLabel;
    RLLabel197: TRLLabel;
    RLLabel198: TRLLabel;
    RLBand30: TRLBand;
    RLLabel199: TRLLabel;
    RLDBText173: TRLDBText;
    RLDBText174: TRLDBText;
    RLLabel200: TRLLabel;
    RLLabel201: TRLLabel;
    RLLabel202: TRLLabel;
    RLLabel203: TRLLabel;
    RLLabel204: TRLLabel;
    RLLabel205: TRLLabel;
    RLDBText175: TRLDBText;
    RLLabel206: TRLLabel;
    RLDBText176: TRLDBText;
    RLLabel207: TRLLabel;
    RLDBText177: TRLDBText;
    RLLabel208: TRLLabel;
    RLLabel209: TRLLabel;
    RLDBText178: TRLDBText;
    RLLabel210: TRLLabel;
    RLPanel36: TRLPanel;
    RLDBText179: TRLDBText;
    RLDBText180: TRLDBText;
    RLLabel211: TRLLabel;
    RLLabel212: TRLLabel;
    RLDBText181: TRLDBText;
    RLLabel213: TRLLabel;
    RLDBText182: TRLDBText;
    RLLabel214: TRLLabel;
    RLDBText183: TRLDBText;
    RLLabel215: TRLLabel;
    RLDBText184: TRLDBText;
    RLPanel37: TRLPanel;
    RLDBText185: TRLDBText;
    RLDBText186: TRLDBText;
    RLLabel216: TRLLabel;
    RLLabel217: TRLLabel;
    RLPanel38: TRLPanel;
    RLDBText187: TRLDBText;
    RLDBText188: TRLDBText;
    RLLabel218: TRLLabel;
    RLLabel219: TRLLabel;
    RLPanel39: TRLPanel;
    RLDBText189: TRLDBText;
    RLDBText190: TRLDBText;
    RLDBText191: TRLDBText;
    RLLabel220: TRLLabel;
    RLLabel221: TRLLabel;
    RLBand31: TRLBand;
    RLDBText192: TRLDBText;
    RLDBText193: TRLDBText;
    RLDBText194: TRLDBText;
    RLDBText195: TRLDBText;
    RLDBText196: TRLDBText;
    RLDBText197: TRLDBText;
    RLBand32: TRLBand;
    RLSystemInfo9: TRLSystemInfo;
    RLLabel222: TRLLabel;
    RLDBText198: TRLDBText;
    RLPanel40: TRLPanel;
    RLDBText200: TRLDBText;
    RLDBText201: TRLDBText;
    RLLabel223: TRLLabel;
    RLLabel224: TRLLabel;
    RLDBText202: TRLDBText;
    RLLabel225: TRLLabel;
    RLDBText203: TRLDBText;
    RLLabel226: TRLLabel;
    RLDBText204: TRLDBText;
    RLLabel227: TRLLabel;
    RLDBText205: TRLDBText;
    RLBand33: TRLBand;
    RLPanel41: TRLPanel;
    RLDBText166: TRLDBText;
    ltelefone1R: TRLLabel;
    RLPanel42: TRLPanel;
    RLDBText199: TRLDBText;
    lTelefone2R: TRLLabel;
    Qpacote: TWideStringField;
    RLLabel228: TRLLabel;
    RLDBText207: TRLDBText;
    RLLabel179: TRLLabel;
    RLDBText206: TRLDBText;
    RLLabel229: TRLLabel;
    RLDBText208: TRLDBText;
    RLLabel230: TRLLabel;
    RLDBText209: TRLDBText;
    RLLabel231: TRLLabel;
    RLDBText210: TRLDBText;
    Qbarras: TWideStringField;
    Qreferencia: TWideStringField;
    RLLabel232: TRLLabel;
    RLDBText211: TRLDBText;
    RLDBResult23: TRLDBResult;
    RLLabel233: TRLLabel;
    RLDBText212: TRLDBText;
    RLDBResult24: TRLDBResult;
    RLLabel234: TRLLabel;
    RLDBText213: TRLDBText;
    RLDBResult25: TRLDBResult;
    Qtotcubagem: TFloatField;
    Qcubagem: TFloatField;
    RLDBMemo8: TRLDBMemo;
    RLDBText56: TRLDBText;
    Qdescprod: TFloatField;
    Qqtd_cx: TFloatField;
    RLDBText214: TRLDBText;
    RLLabel235: TRLLabel;
    RLLabel236: TRLLabel;
    RLDBMemo9: TRLDBMemo;
    RLDBText96: TRLDBText;
    RLDBText215: TRLDBText;
    RLLabel237: TRLLabel;
    RLLabel238: TRLLabel;
    RLDBResult26: TRLDBResult;
    RLDBMemo10: TRLDBMemo;
    RLDBText118: TRLDBText;
    RLDBText216: TRLDBText;
    RLLabel239: TRLLabel;
    RLLabel240: TRLLabel;
    RLDBResult27: TRLDBResult;
    RLDBResult28: TRLDBResult;
    RLLabel241: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel242: TRLLabel;
    RLDBText95: TRLDBText;
    RLLabel243: TRLLabel;
    RLDBText117: TRLDBText;
    rpImpOrcamento: TRLReport;
    RLBand34: TRLBand;
    RLDBText217: TRLDBText;
    RLSystemInfo11: TRLSystemInfo;
    RLLabel244: TRLLabel;
    RLBand35: TRLBand;
    RLLabel245: TRLLabel;
    RLDBResult29: TRLDBResult;
    RLDBResult30: TRLDBResult;
    RLLabel246: TRLLabel;
    RLDBResult31: TRLDBResult;
    RLLabel247: TRLLabel;
    RLDBResult32: TRLDBResult;
    RLDBResult33: TRLDBResult;
    RLDBResult34: TRLDBResult;
    RLBand36: TRLBand;
    RLLabel252: TRLLabel;
    RLDBText220: TRLDBText;
    RLLabel257: TRLLabel;
    RLLabel261: TRLLabel;
    RLPanel45: TRLPanel;
    RLDBText224: TRLDBText;
    RLDBText225: TRLDBText;
    RLLabel262: TRLLabel;
    RLLabel263: TRLLabel;
    RLDBText226: TRLDBText;
    RLLabel264: TRLLabel;
    RLDBText227: TRLDBText;
    RLLabel265: TRLLabel;
    RLDBText228: TRLDBText;
    RLLabel266: TRLLabel;
    RLDBText229: TRLDBText;
    RLPanel46: TRLPanel;
    RLDBText230: TRLDBText;
    RLDBText231: TRLDBText;
    RLLabel267: TRLLabel;
    RLLabel268: TRLLabel;
    RLPanel47: TRLPanel;
    RLDBText232: TRLDBText;
    RLDBText233: TRLDBText;
    RLLabel269: TRLLabel;
    RLLabel270: TRLLabel;
    RLDBText234: TRLDBText;
    RLBand37: TRLBand;
    RLSystemInfo12: TRLSystemInfo;
    RLBand38: TRLBand;
    RLDBText235: TRLDBText;
    RLDBText236: TRLDBText;
    RLDBText237: TRLDBText;
    RLDBText238: TRLDBText;
    RLDBText239: TRLDBText;
    RLDBMemo12: TRLDBMemo;
    RLDBText240: TRLDBText;
    RLDBText241: TRLDBText;
    RLDBText242: TRLDBText;
    dOrc: TDataSource;
    qOrc: TZQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    WideStringField1: TWideStringField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    WideStringField3: TWideStringField;
    WideStringField4: TWideStringField;
    WideStringField5: TWideStringField;
    WideStringField6: TWideStringField;
    WideStringField7: TWideStringField;
    WideStringField8: TWideStringField;
    WideStringField9: TWideStringField;
    WideStringField10: TWideStringField;
    IntegerField7: TIntegerField;
    FloatField6: TFloatField;
    WideStringField11: TWideStringField;
    WideStringField12: TWideStringField;
    WideStringField13: TWideStringField;
    IntegerField8: TIntegerField;
    WideMemoField1: TWideMemoField;
    WideStringField16: TWideStringField;
    WideStringField17: TWideStringField;
    WideStringField18: TWideStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    qOrcdesStatus: TWideStringField;
    Qmultiplo: TFloatField;
    qOrcmultiplo: TFloatField;
    RLLabel260: TRLLabel;
    RLDBText243: TRLDBText;
    Qtransp_vendedor: TWideStringField;
    QtipoFrete: TWideStringField;
    RLDBText244: TRLDBText;
    RLLabel275: TRLLabel;
    RLLabel276: TRLLabel;
    RLDBText245: TRLDBText;
    RLLabel277: TRLLabel;
    RLDBText246: TRLDBText;
    RLLabel278: TRLLabel;
    RLDBText247: TRLDBText;
    RLLabel279: TRLLabel;
    RLDBText248: TRLDBText;
    RLLabel250: TRLLabel;
    RLDBText218: TRLDBText;
    ImgOrc: TImage;
    qOrce_fantasia: TWideStringField;
    qOrce_end: TWideStringField;
    qOrce_num: TWideStringField;
    qOrce_bai: TWideStringField;
    qOrce_cid: TWideStringField;
    qOrce_uf: TWideStringField;
    qOrce_tel: TWideStringField;
    qOrce_logo: TWideStringField;
    lEndOrc: TRLLabel;
    ltelOrc: TRLLabel;
    RLLabel251: TRLLabel;
    RLDBText219: TRLDBText;
    RLDraw1: TRLDraw;
    RLPanel48: TRLPanel;
    lCli: TRLLabel;
    lemp: TRLLabel;
    lclicpf: TRLLabel;
    lEmpCpf: TRLLabel;
    qOrce_cnpj: TWideStringField;
    qOrccpf: TWideStringField;
    RLPanel49: TRLPanel;
    RLLabel253: TRLLabel;
    RLLabel271: TRLLabel;
    RLLabel272: TRLLabel;
    RLLabel273: TRLLabel;
    RLLabel254: TRLLabel;
    RLLabel255: TRLLabel;
    RLLabel274: TRLLabel;
    RLLabel256: TRLLabel;
    Qforma_pgto: TWideStringField;
    RLLabel248: TRLLabel;
    RLDBText222: TRLDBText;
    RLLabel259: TRLLabel;
    RLLabel280: TRLLabel;
    RLDraw2: TRLDraw;
    rpImpSeparacao: TRLReport;
    RLBand39: TRLBand;
    RLDBText250: TRLDBText;
    RLSystemInfo13: TRLSystemInfo;
    RLBand40: TRLBand;
    RLDBResult36: TRLDBResult;
    RLLabel284: TRLLabel;
    RLDBResult39: TRLDBResult;
    RLDBResult40: TRLDBResult;
    RLBand41: TRLBand;
    RLLabel287: TRLLabel;
    RLDBText251: TRLDBText;
    RLDBText252: TRLDBText;
    RLLabel288: TRLLabel;
    RLLabel289: TRLLabel;
    RLLabel290: TRLLabel;
    RLLabel291: TRLLabel;
    RLDBText254: TRLDBText;
    RLLabel295: TRLLabel;
    RLLabel297: TRLLabel;
    RLDBText256: TRLDBText;
    RLLabel298: TRLLabel;
    RLPanel52: TRLPanel;
    RLDBText257: TRLDBText;
    RLDBText258: TRLDBText;
    RLLabel299: TRLLabel;
    RLLabel300: TRLLabel;
    RLDBText259: TRLDBText;
    RLPanel53: TRLPanel;
    RLDBText263: TRLDBText;
    RLDBText264: TRLDBText;
    RLLabel304: TRLLabel;
    RLLabel309: TRLLabel;
    RLLabel310: TRLLabel;
    RLDBText269: TRLDBText;
    RLLabel313: TRLLabel;
    RLBand43: TRLBand;
    RLDBText271: TRLDBText;
    RLDBText275: TRLDBText;
    RLDBText276: TRLDBText;
    RLDBText277: TRLDBText;
    RLDBText267: TRLDBText;
    RLLabel307: TRLLabel;
    RLPanel54: TRLPanel;
    RLDBText266: TRLDBText;
    RLLabel305: TRLLabel;
    RLDBText268: TRLDBText;
    RLLabel308: TRLLabel;
    RLLabel281: TRLLabel;
    RLDBText253: TRLDBText;
    RLDraw4: TRLDraw;
    RLLabel294: TRLLabel;
    RLLabel296: TRLLabel;
    RLLabel301: TRLLabel;
    RLLabel302: TRLLabel;
    RLPanel55: TRLPanel;
    RLDBText255: TRLDBText;
    RLLabel303: TRLLabel;
    RLDBText260: TRLDBText;
    RLLabel314: TRLLabel;
    RLDBText261: TRLDBText;
    RLLabel306: TRLLabel;
    RLDBText262: TRLDBText;
    RLLabel292: TRLLabel;
    RLLabel282: TRLLabel;
    RLDBResult35: TRLDBResult;
    QtotPesoBruto: TFloatField;
    lTotCx: TRLLabel;
    RLLabel283: TRLLabel;
    RLLabel285: TRLLabel;
    RLLabel286: TRLLabel;
    RLDBText265: TRLDBText;
    qOrcnome: TWideStringField;
    qOrcnomeCli: TWideStringField;
    qMt: TZQuery;
    dMt: TDataSource;
    rpImpPedidoMatricial: TRLReport;
    RLBand42: TRLBand;
    RLDBText270: TRLDBText;
    RLSystemInfo15: TRLSystemInfo;
    RLLabel293: TRLLabel;
    RLBand44: TRLBand;
    RLLabel311: TRLLabel;
    RLDBResult37: TRLDBResult;
    RLDBResult38: TRLDBResult;
    RLLabel312: TRLLabel;
    RLDBResult41: TRLDBResult;
    RLLabel315: TRLLabel;
    RLDBResult42: TRLDBResult;
    RLPanel50: TRLPanel;
    RLLabel316: TRLLabel;
    RLMemo7: TRLMemo;
    RLPanel51: TRLPanel;
    RLLabel317: TRLLabel;
    RLDBMemo13: TRLDBMemo;
    RLDBResult44: TRLDBResult;
    RLBand45: TRLBand;
    RLLabel318: TRLLabel;
    RLDBText272: TRLDBText;
    RLDBText273: TRLDBText;
    RLLabel319: TRLLabel;
    RLLabel321: TRLLabel;
    RLLabel322: TRLLabel;
    RLLabel323: TRLLabel;
    RLLabel324: TRLLabel;
    RLLabel328: TRLLabel;
    RLDBText280: TRLDBText;
    RLPanel56: TRLPanel;
    RLDBText281: TRLDBText;
    RLDBText282: TRLDBText;
    RLLabel330: TRLLabel;
    RLLabel331: TRLLabel;
    RLDBText283: TRLDBText;
    RLLabel332: TRLLabel;
    RLDBText284: TRLDBText;
    RLLabel333: TRLLabel;
    RLDBText285: TRLDBText;
    RLLabel334: TRLLabel;
    RLDBText286: TRLDBText;
    RLPanel57: TRLPanel;
    RLDBText287: TRLDBText;
    RLDBText288: TRLDBText;
    RLLabel335: TRLLabel;
    RLPanel58: TRLPanel;
    RLDBText289: TRLDBText;
    RLDBText290: TRLDBText;
    RLLabel337: TRLLabel;
    RLLabel341: TRLLabel;
    RLLabel342: TRLLabel;
    RLLabel343: TRLLabel;
    RLBand47: TRLBand;
    RLDBText295: TRLDBText;
    RLDBText296: TRLDBText;
    RLDBText297: TRLDBText;
    RLDBText298: TRLDBText;
    RLDBMemo14: TRLDBMemo;
    RLDBText300: TRLDBText;
    RLDBText301: TRLDBText;
    RLDBText302: TRLDBText;
    RLLabel325: TRLLabel;
    RLDBText274: TRLDBText;
    RLLabel345: TRLLabel;
    RLDBText294: TRLDBText;
    RLLabel336: TRLLabel;
    qMtId: TIntegerField;
    qMtData: TDateTimeField;
    qMtIdVendedor: TIntegerField;
    qMtIdCliente: TIntegerField;
    qMtIdCondPgto: TIntegerField;
    qMtValor: TFloatField;
    qMtDesconto: TFloatField;
    qMtTotal: TFloatField;
    qMtPrazoEntrega: TWideStringField;
    qMtNotaFiscal: TIntegerField;
    qMtIdUsuario: TIntegerField;
    qMtx: TWideStringField;
    qMtEx: TIntegerField;
    qMtExpedido: TWideStringField;
    qMtGeradoNFe: TWideStringField;
    qMtpComissao: TFloatField;
    qMtObs: TWideMemoField;
    qMtboleto: TWideStringField;
    qMtpacote: TWideStringField;
    qMttotcubagem: TFloatField;
    qMtdesc_especial: TFloatField;
    qMtidtabela: TIntegerField;
    qMtstatus: TWideStringField;
    qMtsincronizado: TWideStringField;
    qMtidweb: TIntegerField;
    qMtidcomercial: TIntegerField;
    qMtidemp: TIntegerField;
    qMtidorc: TIntegerField;
    qMtpDesconto: TFloatField;
    qMtmotivoR: TWideStringField;
    qMtidUserR: TIntegerField;
    qMtDataR: TDateTimeField;
    qMttipoFrete: TWideStringField;
    qMttransp_vendedor: TWideStringField;
    qMtidtransp: TIntegerField;
    qMtforma_pgto: TWideStringField;
    qMttelTransp: TWideStringField;
    qMtidcondpgto2: TIntegerField;
    qMtidtranspotadora: TIntegerField;
    qMtfoma_pgto2: TWideStringField;
    qMtId_1: TIntegerField;
    qMtIdVenda: TIntegerField;
    qMtIdProduto: TIntegerField;
    qMtTipo: TWideStringField;
    qMtQtd: TFloatField;
    qMtUnit: TFloatField;
    qMtDesconto_1: TFloatField;
    qMtTotal_1: TFloatField;
    qMtx_1: TWideStringField;
    qMtRoyalties: TFloatField;
    qMtunit2: TFloatField;
    qMtunitst: TFloatField;
    qMtpComissao_1: TFloatField;
    qMtordemcompra: TWideStringField;
    qMtcubagem: TFloatField;
    qMtqtd_cx: TFloatField;
    qMtsincronizado_1: TWideStringField;
    qMtidWeb_1: TIntegerField;
    qMtpDesconto_1: TFloatField;
    qMtvCusto: TFloatField;
    qMtvMargem: TFloatField;
    qMtvUnitLiq: TFloatField;
    qMtvTotLiq: TFloatField;
    qMttotprod: TFloatField;
    qMtdescprod: TFloatField;
    qMtId_2: TIntegerField;
    qMtNome: TWideStringField;
    qMtEndereco: TWideStringField;
    qMtNum: TWideStringField;
    qMtBairro: TWideStringField;
    qMtCEP: TWideStringField;
    qMtCidade: TWideStringField;
    qMtUF: TWideStringField;
    qMtemail: TWideStringField;
    qMtrg: TWideStringField;
    qMtcpf: TWideStringField;
    qMtdtnasc: TDateTimeField;
    qMtdtcadastro: TDateTimeField;
    qMttel1: TWideStringField;
    qMttel2: TWideStringField;
    qMttel3: TWideStringField;
    qMtobs_1: TWideMemoField;
    qMtex_1: TIntegerField;
    qMtlimiteCredito: TFloatField;
    qMtidcidade: TIntegerField;
    qMttppessoa: TWideStringField;
    qMtrazao: TWideStringField;
    qMtcomple: TWideStringField;
    qMtEnd_entrega: TWideStringField;
    qMtNum_entrega: TWideStringField;
    qMtBairro_entrega: TWideStringField;
    qMtCep_entrega: TWideStringField;
    qMtidCidade_entrega: TIntegerField;
    qMtUF_entrega: TWideStringField;
    qMtComple_entrega: TWideStringField;
    qMtativo: TWideStringField;
    qMtpais: TIntegerField;
    qMtpais_entrega: TIntegerField;
    qMtcontribuinte: TWideStringField;
    qMtprodutorR: TWideStringField;
    qMtidtabela_1: TIntegerField;
    qMtdia_fecha: TIntegerField;
    qMtinadimplente: TWideStringField;
    qMtimagem_serasa: TWideStringField;
    qMtidvendedor_1: TIntegerField;
    qMtidweb_1_1: TIntegerField;
    qMtsincronizado_2: TWideStringField;
    qMtcidade_entrega: TWideStringField;
    qMtidcomercial_1: TIntegerField;
    qMtidemp_1: TIntegerField;
    qMtforma_pgto_1: TWideStringField;
    qMtidcond1: TIntegerField;
    qMtidcond2: TIntegerField;
    qMtidTrans: TIntegerField;
    qMtidRedes: TIntegerField;
    qMtfoma_pgto2_1: TWideStringField;
    qMtdescricao: TWideStringField;
    qMtcod_manual: TIntegerField;
    qMtnomeVend: TWideStringField;
    qMtdesCond: TWideStringField;
    qMtobs_venda: TWideMemoField;
    qMtbarras: TWideStringField;
    qMtreferencia: TWideStringField;
    qMtmultiplo: TFloatField;
    qMttotPesoBruto: TFloatField;
    qMtQtd_peso: TFloatField;
    RLLabel320: TRLLabel;
    RLLabel329: TRLLabel;
    RLLabel326: TRLLabel;
    RLDBText278: TRLDBText;
    RLDBResult43: TRLDBResult;
    RLDBResult45: TRLDBResult;
    RLDBResult46: TRLDBResult;
    RLLabel327: TRLLabel;
    RLDraw3: TRLDraw;
    QTotalBrutoProd: TFloatField;
    RLLabel338: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel339: TRLLabel;
    RLDBText279: TRLDBText;
    RLDBResult47: TRLDBResult;
    RLDBResult48: TRLDBResult;
    RLDBResult49: TRLDBResult;
    RLLabel340: TRLLabel;
    RLDraw6: TRLDraw;
    RLDBResult50: TRLDBResult;
    RLDBResult51: TRLDBResult;
    RLDBResult52: TRLDBResult;
    RLDBText291: TRLDBText;
    RLLabel344: TRLLabel;
    RLLabel258: TRLLabel;
    RLDBText221: TRLDBText;
    RLLabel346: TRLLabel;
    RLDBText292: TRLDBText;
    qOrcforma_pgto: TWideStringField;
    qOrcemail: TWideStringField;
    Qemail: TWideStringField;
    Qnf: TIntegerField;
    Qdt_nf: TDateTimeField;
    Qcpf: TWideStringField;
    RLLabel347: TRLLabel;
    RLDBText293: TRLDBText;
    RLLabel348: TRLLabel;
    RLDBText299: TRLDBText;
    RLLabel349: TRLLabel;
    RLDBText303: TRLDBText;
    RLLabel350: TRLLabel;
    RLDBText304: TRLDBText;
    RLLabel351: TRLLabel;
    RLDBText305: TRLDBText;
    RLLabel352: TRLLabel;
    RLDBText306: TRLDBText;
    RLLabel353: TRLLabel;
    RLDBText307: TRLDBText;
    RLLabel354: TRLLabel;
    RLDBText308: TRLDBText;
    rpImpExpedicao_sem_usuo: TRLReport;
    RLBand46: TRLBand;
    RLBand48: TRLBand;
    RLBand49: TRLBand;
    RLDBText311: TRLDBText;
    RLLabel358: TRLLabel;
    RLPanel60: TRLPanel;
    RLDBText317: TRLDBText;
    RLDBText318: TRLDBText;
    RLLabel367: TRLLabel;
    RLLabel374: TRLLabel;
    RLDBText323: TRLDBText;
    RLBand50: TRLBand;
    RLLabel387: TRLLabel;
    RLPanel59: TRLPanel;
    RLDBText314: TRLDBText;
    RLLabel366: TRLLabel;
    RLDBText315: TRLDBText;
    RLLabel380: TRLLabel;
    RLDBText325: TRLDBText;
    RLLabel359: TRLLabel;
    RLPanel62: TRLPanel;
    RLLabel363: TRLLabel;
    RLDBText313: TRLDBText;
    RLDBText326: TRLDBText;
    RLLabel373: TRLLabel;
    RLDBText333: TRLDBText;
    RLLabel383: TRLLabel;
    RLPanel63: TRLPanel;
    RLLabel378: TRLLabel;
    RLLabel364: TRLLabel;
    RLDBText309: TRLDBText;
    RLDBText321: TRLDBText;
    RLDBText322: TRLDBText;
    RLLabel372: TRLLabel;
    RLPanel61: TRLPanel;
    RLLabel362: TRLLabel;
    RLDBText312: TRLDBText;
    RLLabel370: TRLLabel;
    RLDBText319: TRLDBText;
    QNomeT: TWideStringField;
    QNomeD: TWideStringField;
    RLPanel64: TRLPanel;
    RLLabel377: TRLLabel;
    RLDBText310: TRLDBText;
    RLLabel357: TRLLabel;
    RLLabel371: TRLLabel;
    RLPanel65: TRLPanel;
    RLLabel360: TRLLabel;
    RLLabel382: TRLLabel;
    RLLabel361: TRLLabel;
    RLLabel369: TRLLabel;
    RLLabel368: TRLLabel;
    RLLabel379: TRLLabel;
    RLLabel381: TRLLabel;
    RLLabel384: TRLLabel;
    RLLabel388: TRLLabel;
    RLPanel66: TRLPanel;
    RLLabel390: TRLLabel;
    RLDBText328: TRLDBText;
    RLDBText332: TRLDBText;
    RLDBText331: TRLDBText;
    RLDBText329: TRLDBText;
    RLDBText316: TRLDBText;
    RLDBText320: TRLDBText;
    RLLabel389: TRLLabel;
    QpesoBrCx: TFloatField;
    RLLabel391: TRLLabel;
    RLPanel67: TRLPanel;
    RLLabel355: TRLLabel;
    RLLabel356: TRLLabel;
    RLLabel376: TRLLabel;
    RLLabel375: TRLLabel;
    RLPanel68: TRLPanel;
    qPro: TZQuery;
    dPro: TDataSource;
    qProid: TIntegerField;
    qProreferencia: TWideStringField;
    qProbarras: TWideStringField;
    qProdescricao: TWideStringField;
    RLSubDetail3: TRLSubDetail;
    RLBand51: TRLBand;
    RLLabel385: TRLLabel;
    RLDBText324: TRLDBText;
    RLDBText327: TRLDBText;
    RLLabel386: TRLLabel;
    RLLabel396: TRLLabel;
    RLLabel399: TRLLabel;
    RLBand52: TRLBand;
    RLPanel69: TRLPanel;
    RLLabel392: TRLLabel;
    RLLabel393: TRLLabel;
    RLLabel394: TRLLabel;
    RLLabel395: TRLLabel;
    RLLabel397: TRLLabel;
    RLLabel398: TRLLabel;
    RLBand53: TRLBand;
    RLPanel71: TRLPanel;
    RLLabel400: TRLLabel;
    RLLabel401: TRLLabel;
    RLLabel402: TRLLabel;
    RLLabel403: TRLLabel;
    RLLabel404: TRLLabel;
    RLPanel70: TRLPanel;
    RLLabel407: TRLLabel;
    RLLabel410: TRLLabel;
    RLLabel408: TRLLabel;
    RLLabel409: TRLLabel;
    RLLabel405: TRLLabel;
    RLLabel406: TRLLabel;
    RLPanel43: TRLPanel;
    RLPanel44: TRLPanel;
    RLLabel249: TRLLabel;
    RLDBMemo11: TRLDBMemo;
    rpImpDev: TRLReport;
    RLBand54: TRLBand;
    RLDBText330: TRLDBText;
    RLSystemInfo16: TRLSystemInfo;
    RLLabel411: TRLLabel;
    RLBand55: TRLBand;
    RLLabel412: TRLLabel;
    RLDBResult56: TRLDBResult;
    RLBand56: TRLBand;
    RLLabel417: TRLLabel;
    RLDBText334: TRLDBText;
    RLDBText335: TRLDBText;
    RLLabel418: TRLLabel;
    RLLabel419: TRLLabel;
    RLLabel420: TRLLabel;
    RLLabel421: TRLLabel;
    RLLabel422: TRLLabel;
    RLPanel74: TRLPanel;
    RLDBText337: TRLDBText;
    RLDBText338: TRLDBText;
    RLLabel424: TRLLabel;
    RLLabel425: TRLLabel;
    RLDBText339: TRLDBText;
    RLLabel426: TRLLabel;
    RLDBText340: TRLDBText;
    RLLabel427: TRLLabel;
    RLDBText341: TRLDBText;
    RLLabel428: TRLLabel;
    RLDBText342: TRLDBText;
    RLLabel429: TRLLabel;
    RLPanel75: TRLPanel;
    RLDBText343: TRLDBText;
    RLDBText344: TRLDBText;
    RLLabel430: TRLLabel;
    RLLabel431: TRLLabel;
    RLPanel76: TRLPanel;
    RLDBText345: TRLDBText;
    RLDBText346: TRLDBText;
    RLLabel432: TRLLabel;
    RLLabel435: TRLLabel;
    RLLabel436: TRLLabel;
    RLLabel437: TRLLabel;
    RLLabel438: TRLLabel;
    RLBand57: TRLBand;
    RLDBText349: TRLDBText;
    RLDBText350: TRLDBText;
    RLDBText351: TRLDBText;
    RLDBText352: TRLDBText;
    RLDBMemo16: TRLDBMemo;
    RLDBText353: TRLDBText;
    RLDBText354: TRLDBText;
    RLDBText355: TRLDBText;
    qDev: TZQuery;
    dDev: TDataSource;
    qDevId: TIntegerField;
    qDevData: TDateTimeField;
    qDevIdVendedor: TIntegerField;
    qDevIdCliente: TIntegerField;
    qDevIdvenda: TIntegerField;
    qDevnome: TWideStringField;
    qDevValor: TFloatField;
    qDevObs: TWideMemoField;
    qDevchave: TWideStringField;
    qDevIdUsuario: TIntegerField;
    qDevidemp: TIntegerField;
    qDevStatus: TWideStringField;
    qDevx: TWideStringField;
    qDevEx: TIntegerField;
    qDevidnf_dev: TIntegerField;
    qDevId_1: TIntegerField;
    qDevIdDev: TIntegerField;
    qDevIdProduto: TIntegerField;
    qDevTipo: TWideStringField;
    qDevQtd: TFloatField;
    qDevUnit: TFloatField;
    qDevTotal: TFloatField;
    qDevx_1: TWideStringField;
    qDevqtd_cx: TFloatField;
    qDevidvenda_i: TIntegerField;
    qDevqtd_dev: TFloatField;
    qDevtotal_dev: TFloatField;
    qDevqtd_cx_dev: TFloatField;
    qDevtotprod: TFloatField;
    qDevId_2: TIntegerField;
    qDevNome_1: TWideStringField;
    qDevEndereco: TWideStringField;
    qDevNum: TWideStringField;
    qDevBairro: TWideStringField;
    qDevCEP: TWideStringField;
    qDevCidade: TWideStringField;
    qDevUF: TWideStringField;
    qDevemail: TWideStringField;
    qDevrg: TWideStringField;
    qDevcpf: TWideStringField;
    qDevdtnasc: TDateTimeField;
    qDevdtcadastro: TDateTimeField;
    qDevtel1: TWideStringField;
    qDevtel2: TWideStringField;
    qDevtel3: TWideStringField;
    qDevobs_1: TWideMemoField;
    qDevex_1: TIntegerField;
    qDevlimiteCredito: TFloatField;
    qDevidcidade: TIntegerField;
    qDevtppessoa: TWideStringField;
    qDevrazao: TWideStringField;
    qDevcomple: TWideStringField;
    qDevEnd_entrega: TWideStringField;
    qDevNum_entrega: TWideStringField;
    qDevBairro_entrega: TWideStringField;
    qDevCep_entrega: TWideStringField;
    qDevidCidade_entrega: TIntegerField;
    qDevUF_entrega: TWideStringField;
    qDevComple_entrega: TWideStringField;
    qDevativo: TWideStringField;
    qDevpais: TIntegerField;
    qDevpais_entrega: TIntegerField;
    qDevcontribuinte: TWideStringField;
    qDevprodutorR: TWideStringField;
    qDevidtabela: TIntegerField;
    qDevdia_fecha: TIntegerField;
    qDevinadimplente: TWideStringField;
    qDevimagem_serasa: TWideStringField;
    qDevidvendedor_1: TIntegerField;
    qDevidweb: TIntegerField;
    qDevsincronizado: TWideStringField;
    qDevcidade_entrega: TWideStringField;
    qDevidcomercial: TIntegerField;
    qDevidemp_1: TIntegerField;
    qDevforma_pgto: TWideStringField;
    qDevidcond1: TIntegerField;
    qDevidcond2: TIntegerField;
    qDevidTrans: TIntegerField;
    qDevidRedes: TIntegerField;
    qDevfoma_pgto2: TWideStringField;
    qDevdescricao: TWideStringField;
    qDevnomeVend: TWideStringField;
    qDevbarras: TWideStringField;
    qDevreferencia: TWideStringField;
    qDevmultiplo: TFloatField;
    qDevidvenda_IT: TIntegerField;
    qDevunit_dev: TFloatField;
    QqtdDivisor: TFloatField;
    Qidve_i: TIntegerField;
    RLPanel73: TRLPanel;
    RLPanel77: TRLPanel;
    lVazia1: TRLLabel;
    RLLabel440: TRLLabel;
    RLLabel441: TRLLabel;
    RLLabel442: TRLLabel;
    RLLabel443: TRLLabel;
    RLLabel444: TRLLabel;
    RLPanel78: TRLPanel;
    lVazia2: TRLLabel;
    RLLabel446: TRLLabel;
    RLLabel447: TRLLabel;
    RLLabel448: TRLLabel;
    RLLabel449: TRLLabel;
    RLLabel450: TRLLabel;
    RLPanel79: TRLPanel;
    lVazia3: TRLLabel;
    RLLabel452: TRLLabel;
    RLLabel453: TRLLabel;
    RLLabel454: TRLLabel;
    RLLabel455: TRLLabel;
    RLLabel456: TRLLabel;
    QdesCond2: TWideStringField;
    Qfoma_pgto2: TWideStringField;
    RLPanel72: TRLPanel;
    RLDBText60: TRLDBText;
    RLDBText347: TRLDBText;
    RLPanel80: TRLPanel;
    RLDBText348: TRLDBText;
    RLDBText223: TRLDBText;
    RLLabel414: TRLLabel;
    RLLabel415: TRLLabel;
    RLPanel81: TRLPanel;
    RLDBText99: TRLDBText;
    RLDBText249: TRLDBText;
    RLLabel416: TRLLabel;
    RLPanel82: TRLPanel;
    RLDBText356: TRLDBText;
    RLDBText357: TRLDBText;
    RLLabel423: TRLLabel;
    rpImpPedido2vias_2: TRLReport;
    RLSubDetail4: TRLSubDetail;
    RLAngleLabel5: TRLAngleLabel;
    RLBand58: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel433: TRLLabel;
    RLDBResult58: TRLDBResult;
    RLDBResult59: TRLDBResult;
    RLLabel434: TRLLabel;
    RLDBResult60: TRLDBResult;
    RLLabel439: TRLLabel;
    RLDBResult61: TRLDBResult;
    RLPanel83: TRLPanel;
    RLLabel445: TRLLabel;
    RLMemo8: TRLMemo;
    RLPanel84: TRLPanel;
    RLLabel451: TRLLabel;
    RLDBMemo15: TRLDBMemo;
    RLDBResult62: TRLDBResult;
    RLDBResult63: TRLDBResult;
    RLLabel457: TRLLabel;
    RLDBResult64: TRLDBResult;
    RLDBResult65: TRLDBResult;
    RLDBResult66: TRLDBResult;
    RLBand59: TRLBand;
    RLLabel458: TRLLabel;
    RLDBText358: TRLDBText;
    RLDBText359: TRLDBText;
    RLLabel459: TRLLabel;
    RLLabel460: TRLLabel;
    RLLabel461: TRLLabel;
    RLLabel462: TRLLabel;
    RLLabel463: TRLLabel;
    RLLabel464: TRLLabel;
    RLLabel465: TRLLabel;
    RLDBText360: TRLDBText;
    RLLabel466: TRLLabel;
    RLDBText361: TRLDBText;
    RLLabel467: TRLLabel;
    RLLabel468: TRLLabel;
    RLDBText362: TRLDBText;
    RLLabel469: TRLLabel;
    RLPanel85: TRLPanel;
    RLDBText363: TRLDBText;
    RLDBText364: TRLDBText;
    RLLabel470: TRLLabel;
    RLLabel471: TRLLabel;
    RLDBText365: TRLDBText;
    RLLabel472: TRLLabel;
    RLDBText366: TRLDBText;
    RLLabel473: TRLLabel;
    RLDBText367: TRLDBText;
    RLLabel474: TRLLabel;
    RLDBText368: TRLDBText;
    RLPanel86: TRLPanel;
    RLDBText369: TRLDBText;
    RLDBText370: TRLDBText;
    RLLabel475: TRLLabel;
    RLLabel476: TRLLabel;
    RLDBText371: TRLDBText;
    RLLabel477: TRLLabel;
    RLPanel87: TRLPanel;
    RLDBText372: TRLDBText;
    RLDBText373: TRLDBText;
    RLLabel478: TRLLabel;
    RLLabel479: TRLLabel;
    RLDBText374: TRLDBText;
    RLLabel480: TRLLabel;
    RLDBText375: TRLDBText;
    RLPanel88: TRLPanel;
    RLDBText376: TRLDBText;
    RLDBText377: TRLDBText;
    RLDBText378: TRLDBText;
    RLLabel481: TRLLabel;
    RLLabel482: TRLLabel;
    RLLabel483: TRLLabel;
    RLDBText379: TRLDBText;
    RLLabel484: TRLLabel;
    RLLabel485: TRLLabel;
    RLLabel486: TRLLabel;
    RLLabel487: TRLLabel;
    RLLabel488: TRLLabel;
    RLLabel489: TRLLabel;
    RLDBText380: TRLDBText;
    RLLabel490: TRLLabel;
    RLLabel491: TRLLabel;
    RLLabel492: TRLLabel;
    RLDBText381: TRLDBText;
    RLPanel89: TRLPanel;
    RLDBText382: TRLDBText;
    RLDBText383: TRLDBText;
    RLLabel493: TRLLabel;
    RLPanel90: TRLPanel;
    RLDBText384: TRLDBText;
    RLDBText385: TRLDBText;
    RLLabel494: TRLLabel;
    RLBand60: TRLBand;
    RLDBText386: TRLDBText;
    RLDBText387: TRLDBText;
    RLDBText388: TRLDBText;
    RLDBText389: TRLDBText;
    RLDBText390: TRLDBText;
    RLDBMemo17: TRLDBMemo;
    RLDBText391: TRLDBText;
    RLDBText392: TRLDBText;
    RLDBText393: TRLDBText;
    RLDBText394: TRLDBText;
    RLBand61: TRLBand;
    RLDBText395: TRLDBText;
    RLSystemInfo17: TRLSystemInfo;
    lTelefone3: TRLLabel;
    RLDBText396: TRLDBText;
    RLPanel91: TRLPanel;
    RLDBText397: TRLDBText;
    RLDBText398: TRLDBText;
    RLLabel496: TRLLabel;
    RLLabel497: TRLLabel;
    RLDBText399: TRLDBText;
    RLLabel498: TRLLabel;
    RLDBText400: TRLDBText;
    RLLabel499: TRLLabel;
    RLDBText401: TRLDBText;
    RLLabel500: TRLLabel;
    RLDBText402: TRLDBText;
    RLLabel501: TRLLabel;
    RLBand62: TRLBand;
    RLPanel92: TRLPanel;
    RLLabel502: TRLLabel;
    RLLabel503: TRLLabel;
    RLLabel504: TRLLabel;
    RLLabel505: TRLLabel;
    RLSubDetail5: TRLSubDetail;
    RLAngleLabel6: TRLAngleLabel;
    RLBand63: TRLBand;
    RLDraw8: TRLDraw;
    RLLabel506: TRLLabel;
    RLDBResult67: TRLDBResult;
    RLDBResult68: TRLDBResult;
    RLLabel507: TRLLabel;
    RLDBResult69: TRLDBResult;
    RLLabel508: TRLLabel;
    RLDBResult70: TRLDBResult;
    RLPanel93: TRLPanel;
    RLLabel509: TRLLabel;
    RLMemo9: TRLMemo;
    RLPanel94: TRLPanel;
    RLLabel510: TRLLabel;
    RLDBMemo18: TRLDBMemo;
    RLPanel95: TRLPanel;
    RLLabel511: TRLLabel;
    RLLabel512: TRLLabel;
    RLLabel513: TRLLabel;
    RLLabel514: TRLLabel;
    RLDBResult71: TRLDBResult;
    RLDBResult72: TRLDBResult;
    RLLabel515: TRLLabel;
    RLDBResult73: TRLDBResult;
    RLDBResult74: TRLDBResult;
    RLDBResult75: TRLDBResult;
    RLBand64: TRLBand;
    RLLabel516: TRLLabel;
    RLDBText403: TRLDBText;
    RLDBText404: TRLDBText;
    RLLabel517: TRLLabel;
    RLLabel518: TRLLabel;
    RLLabel523: TRLLabel;
    RLDBText405: TRLDBText;
    RLLabel524: TRLLabel;
    RLDBText406: TRLDBText;
    RLLabel525: TRLLabel;
    RLLabel526: TRLLabel;
    RLDBText407: TRLDBText;
    RLLabel527: TRLLabel;
    RLPanel96: TRLPanel;
    RLDBText408: TRLDBText;
    RLDBText409: TRLDBText;
    RLLabel528: TRLLabel;
    RLLabel529: TRLLabel;
    RLDBText410: TRLDBText;
    RLLabel530: TRLLabel;
    RLDBText411: TRLDBText;
    RLLabel531: TRLLabel;
    RLDBText412: TRLDBText;
    RLLabel532: TRLLabel;
    RLDBText413: TRLDBText;
    RLPanel97: TRLPanel;
    RLDBText414: TRLDBText;
    RLDBText415: TRLDBText;
    RLLabel533: TRLLabel;
    RLLabel534: TRLLabel;
    RLDBText416: TRLDBText;
    RLLabel535: TRLLabel;
    RLPanel98: TRLPanel;
    RLDBText417: TRLDBText;
    RLDBText418: TRLDBText;
    RLLabel536: TRLLabel;
    RLLabel537: TRLLabel;
    RLDBText419: TRLDBText;
    RLLabel538: TRLLabel;
    RLDBText420: TRLDBText;
    RLLabel539: TRLLabel;
    RLPanel99: TRLPanel;
    RLDBText421: TRLDBText;
    RLDBText422: TRLDBText;
    RLDBText423: TRLDBText;
    RLLabel540: TRLLabel;
    RLLabel541: TRLLabel;
    RLLabel542: TRLLabel;
    RLDBText424: TRLDBText;
    RLLabel547: TRLLabel;
    RLDBText425: TRLDBText;
    RLLabel548: TRLLabel;
    RLLabel550: TRLLabel;
    RLDBText426: TRLDBText;
    RLPanel100: TRLPanel;
    RLDBText427: TRLDBText;
    RLDBText428: TRLDBText;
    RLLabel551: TRLLabel;
    RLPanel101: TRLPanel;
    RLDBText429: TRLDBText;
    RLDBText430: TRLDBText;
    RLLabel552: TRLLabel;
    RLBand65: TRLBand;
    RLDBText431: TRLDBText;
    RLDBText432: TRLDBText;
    RLDBText433: TRLDBText;
    RLDBText434: TRLDBText;
    RLDBText435: TRLDBText;
    RLDBMemo19: TRLDBMemo;
    RLDBText436: TRLDBText;
    RLDBText437: TRLDBText;
    RLDBText438: TRLDBText;
    RLDBText439: TRLDBText;
    RLBand66: TRLBand;
    RLSystemInfo18: TRLSystemInfo;
    RLLabel553: TRLLabel;
    RLDBText440: TRLDBText;
    RLDBText441: TRLDBText;
    RLPanel102: TRLPanel;
    RLDBText442: TRLDBText;
    RLDBText443: TRLDBText;
    RLLabel554: TRLLabel;
    RLLabel555: TRLLabel;
    RLDBText444: TRLDBText;
    RLLabel556: TRLLabel;
    RLDBText445: TRLDBText;
    RLLabel557: TRLLabel;
    RLDBText446: TRLDBText;
    RLLabel558: TRLLabel;
    RLDBText447: TRLDBText;
    lTelefone4: TRLLabel;
    RLBand67: TRLBand;
    RLLabel495: TRLLabel;
    RLLabel519: TRLLabel;
    RLLabel520: TRLLabel;
    RLLabel521: TRLLabel;
    RLLabel522: TRLLabel;
    RLLabel543: TRLLabel;
    RLLabel544: TRLLabel;
    RLLabel545: TRLLabel;
    RLLabel546: TRLLabel;
    RLLabel549: TRLLabel;
    RLLabel559: TRLLabel;
    qOrcqtdDivisor: TFloatField;
    rpImpOrcamento2: TRLReport;
    RLBand68: TRLBand;
    imgOrc2: TImage;
    RLDBText448: TRLDBText;
    RLSystemInfo19: TRLSystemInfo;
    RLLabel560: TRLLabel;
    RLLabel561: TRLLabel;
    RLDBText449: TRLDBText;
    lEndOrc2: TRLLabel;
    lTelOrc2: TRLLabel;
    RLLabel564: TRLLabel;
    RLDBText450: TRLDBText;
    RLBand69: TRLBand;
    RLDraw9: TRLDraw;
    RLLabel565: TRLLabel;
    RLDBResult76: TRLDBResult;
    RLDBResult77: TRLDBResult;
    RLLabel566: TRLLabel;
    RLDBResult78: TRLDBResult;
    RLLabel567: TRLLabel;
    RLDBResult79: TRLDBResult;
    RLDBResult80: TRLDBResult;
    RLDBResult81: TRLDBResult;
    RLPanel103: TRLPanel;
    lCli2: TRLLabel;
    lEmp2: TRLLabel;
    lCliCpf2: TRLLabel;
    lEmpCpf2: TRLLabel;
    RLPanel104: TRLPanel;
    RLPanel105: TRLPanel;
    RLLabel572: TRLLabel;
    RLDBMemo20: TRLDBMemo;
    RLBand70: TRLBand;
    RLLabel573: TRLLabel;
    RLDBText451: TRLDBText;
    RLLabel574: TRLLabel;
    RLLabel575: TRLLabel;
    RLPanel106: TRLPanel;
    RLDBText452: TRLDBText;
    RLDBText453: TRLDBText;
    RLLabel576: TRLLabel;
    RLLabel577: TRLLabel;
    RLDBText454: TRLDBText;
    RLLabel578: TRLLabel;
    RLDBText455: TRLDBText;
    RLLabel579: TRLLabel;
    RLDBText456: TRLDBText;
    RLLabel580: TRLLabel;
    RLDBText457: TRLDBText;
    RLPanel107: TRLPanel;
    RLDBText458: TRLDBText;
    RLDBText459: TRLDBText;
    RLLabel581: TRLLabel;
    RLLabel582: TRLLabel;
    RLPanel108: TRLPanel;
    RLDBText460: TRLDBText;
    RLDBText461: TRLDBText;
    RLLabel583: TRLLabel;
    RLPanel109: TRLPanel;
    RLLabel586: TRLLabel;
    RLLabel587: TRLLabel;
    RLLabel588: TRLLabel;
    RLLabel589: TRLLabel;
    RLLabel590: TRLLabel;
    RLLabel591: TRLLabel;
    RLLabel593: TRLLabel;
    RLLabel594: TRLLabel;
    RLDBText464: TRLDBText;
    RLBand71: TRLBand;
    RLSystemInfo20: TRLSystemInfo;
    RLBand72: TRLBand;
    RLDBText465: TRLDBText;
    RLDBText466: TRLDBText;
    RLDBText467: TRLDBText;
    RLDBText468: TRLDBText;
    RLDBText469: TRLDBText;
    RLDBMemo21: TRLDBMemo;
    RLDBText470: TRLDBText;
    RLDBText471: TRLDBText;
    RLLabel595: TRLLabel;
    RLLabel596: TRLLabel;
    RLDBText473: TRLDBText;
    qOrctotPesoBruto: TFloatField;
    RLDBResult82: TRLDBResult;
    Qusa_codigo: TWideStringField;
    Qvolume: TIntegerField;
    rpImpPedidoDZ: TRLReport;
    RLAngleLabel7: TRLAngleLabel;
    RLBand73: TRLBand;
    RLDraw10: TRLDraw;
    RLLabel413: TRLLabel;
    RLDBResult83: TRLDBResult;
    RLDBResult84: TRLDBResult;
    RLLabel562: TRLLabel;
    RLDBResult85: TRLDBResult;
    RLLabel563: TRLLabel;
    RLDBResult86: TRLDBResult;
    RLPanel110: TRLPanel;
    RLLabel568: TRLLabel;
    RLMemo10: TRLMemo;
    RLPanel111: TRLPanel;
    RLLabel569: TRLLabel;
    RLDBMemo22: TRLDBMemo;
    RLDBResult87: TRLDBResult;
    RLDBResult88: TRLDBResult;
    RLLabel570: TRLLabel;
    RLDBResult89: TRLDBResult;
    RLDBResult90: TRLDBResult;
    RLDBResult91: TRLDBResult;
    RLBand74: TRLBand;
    RLLabel571: TRLLabel;
    RLDBText336: TRLDBText;
    RLDBText474: TRLDBText;
    RLLabel597: TRLLabel;
    RLLabel598: TRLLabel;
    RLLabel599: TRLLabel;
    RLLabel600: TRLLabel;
    RLLabel601: TRLLabel;
    RLLabel602: TRLLabel;
    RLDBText475: TRLDBText;
    RLLabel604: TRLLabel;
    RLDBText476: TRLDBText;
    RLLabel605: TRLLabel;
    RLLabel606: TRLLabel;
    RLDBText477: TRLDBText;
    RLLabel607: TRLLabel;
    RLPanel112: TRLPanel;
    RLDBText478: TRLDBText;
    RLDBText479: TRLDBText;
    RLLabel608: TRLLabel;
    RLLabel609: TRLLabel;
    RLDBText480: TRLDBText;
    RLLabel610: TRLLabel;
    RLDBText481: TRLDBText;
    RLLabel611: TRLLabel;
    RLDBText482: TRLDBText;
    RLLabel612: TRLLabel;
    RLDBText483: TRLDBText;
    RLPanel113: TRLPanel;
    RLDBText484: TRLDBText;
    RLDBText485: TRLDBText;
    RLLabel613: TRLLabel;
    RLLabel614: TRLLabel;
    RLDBText486: TRLDBText;
    RLLabel615: TRLLabel;
    RLPanel114: TRLPanel;
    RLDBText487: TRLDBText;
    RLDBText488: TRLDBText;
    RLLabel616: TRLLabel;
    RLPanel115: TRLPanel;
    RLDBText491: TRLDBText;
    RLDBText492: TRLDBText;
    RLDBText493: TRLDBText;
    RLLabel619: TRLLabel;
    RLLabel620: TRLLabel;
    RLLabel621: TRLLabel;
    RLDBText494: TRLDBText;
    RLLabel622: TRLLabel;
    RLLabel623: TRLLabel;
    RLLabel624: TRLLabel;
    RLLabel625: TRLLabel;
    RLLabel627: TRLLabel;
    RLDBText495: TRLDBText;
    RLLabel629: TRLLabel;
    RLLabel630: TRLLabel;
    RLDBText496: TRLDBText;
    RLPanel116: TRLPanel;
    RLDBText497: TRLDBText;
    RLDBText498: TRLDBText;
    RLLabel631: TRLLabel;
    RLPanel117: TRLPanel;
    RLDBText499: TRLDBText;
    RLDBText500: TRLDBText;
    RLLabel632: TRLLabel;
    RLBand75: TRLBand;
    RLDBText501: TRLDBText;
    RLDBText502: TRLDBText;
    RLDBText503: TRLDBText;
    RLDBText504: TRLDBText;
    RLDBText505: TRLDBText;
    RLDBMemo23: TRLDBMemo;
    RLDBText506: TRLDBText;
    RLDBText507: TRLDBText;
    RLDBText509: TRLDBText;
    RLBand76: TRLBand;
    RLDBText510: TRLDBText;
    RLSystemInfo21: TRLSystemInfo;
    RLLabel633: TRLLabel;
    RLDBText511: TRLDBText;
    RLPanel118: TRLPanel;
    RLDBText512: TRLDBText;
    RLDBText513: TRLDBText;
    RLLabel634: TRLLabel;
    RLLabel635: TRLLabel;
    RLDBText514: TRLDBText;
    RLLabel636: TRLLabel;
    RLDBText515: TRLDBText;
    RLLabel637: TRLLabel;
    RLDBText516: TRLDBText;
    RLLabel638: TRLLabel;
    RLDBText517: TRLDBText;
    RLLabel639: TRLLabel;
    RLBand77: TRLBand;
    RLPanel119: TRLPanel;
    RLLabel640: TRLLabel;
    RLLabel641: TRLLabel;
    RLLabel642: TRLLabel;
    RLLabel643: TRLLabel;
    RLLabel644: TRLLabel;
    RLLabel626: TRLLabel;
    lSeq: TRLLabel;
    RLPanel120: TRLPanel;
    RLDBResult57: TRLDBResult;
    RLLabel645: TRLLabel;
    RLDBResult53: TRLDBResult;
    RLDBResult55: TRLDBResult;
    RLDBResult54: TRLDBResult;
    RLLabel592: TRLLabel;
    lseqOrc: TRLLabel;
    qOrcvolume: TIntegerField;
    RLDBResult92: TRLDBResult;
    RLDBResult93: TRLDBResult;
    qOrcvUnitLiq: TFloatField;
    qOrcvTotLiq: TFloatField;
    RLPanel121: TRLPanel;
    RLDBText526: TRLDBText;
    RLDBText527: TRLDBText;
    RLLabel648: TRLLabel;
    RLLabel649: TRLLabel;
    RLDBText528: TRLDBText;
    RLLabel658: TRLLabel;
    RLDBText529: TRLDBText;
    RLLabel659: TRLLabel;
    RLDBText530: TRLDBText;
    RLLabel660: TRLLabel;
    RLDBText534: TRLDBText;
    RLLabel664: TRLLabel;
    RLLabel365: TRLLabel;
    RLLabel665: TRLLabel;
    RLDBText535: TRLDBText;
    RLLabel666: TRLLabel;
    RLDBText536: TRLDBText;
    Qidgerente: TIntegerField;
    QnomeGer: TWideStringField;
    RLLabel667: TRLLabel;
    RLDBText537: TRLDBText;
    RLLabel668: TRLLabel;
    RLDBText538: TRLDBText;
    qOrcidgerente: TIntegerField;
    qOrcnomeger: TWideStringField;
    RLLabel584: TRLLabel;
    RLDBText462: TRLDBText;
    RLLabel585: TRLLabel;
    RLDBText463: TRLDBText;
    RLLabel669: TRLLabel;
    RLDBText539: TRLDBText;
    RLLabel670: TRLLabel;
    RLDBText540: TRLDBText;
    RLLabel671: TRLLabel;
    RLLabel673: TRLLabel;
    RLLabel674: TRLLabel;
    RLLabel675: TRLLabel;
    RLLabel603: TRLLabel;
    RLLabel628: TRLLabel;
    Qnomefunc: TWideStringField;
    RLLabel617: TRLLabel;
    RLDBText489: TRLDBText;
    qMtunidade_nfe: TWideStringField;
    qOrcidemp: TIntegerField;
    RLBand83: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLLabel676: TRLLabel;
    RLBand84: TRLBand;
    RLSystemInfo14: TRLSystemInfo;
    RLLabel677: TRLLabel;
    RLLabel678: TRLLabel;
    RLBand85: TRLBand;
    RLSystemInfo24: TRLSystemInfo;
    RLLabel679: TRLLabel;
    rpImpSepSemValor: TRLReport;
    RLBand86: TRLBand;
    RLDBText541: TRLDBText;
    RLSystemInfo25: TRLSystemInfo;
    RLLabel680: TRLLabel;
    RLBand87: TRLBand;
    RLDBResult97: TRLDBResult;
    RLPanel122: TRLPanel;
    RLPanel123: TRLPanel;
    RLLabel685: TRLLabel;
    RLDBResult100: TRLDBResult;
    RLLabel686: TRLLabel;
    RLBand88: TRLBand;
    RLDraw12: TRLDraw;
    RLLabel687: TRLLabel;
    RLDBText542: TRLDBText;
    RLDBText543: TRLDBText;
    RLLabel688: TRLLabel;
    RLLabel689: TRLLabel;
    RLLabel690: TRLLabel;
    RLLabel691: TRLLabel;
    RLDBText544: TRLDBText;
    RLLabel694: TRLLabel;
    RLDBText545: TRLDBText;
    RLLabel695: TRLLabel;
    RLLabel697: TRLLabel;
    RLDBText547: TRLDBText;
    RLLabel698: TRLLabel;
    RLPanel124: TRLPanel;
    RLDBText548: TRLDBText;
    RLDBText549: TRLDBText;
    RLLabel699: TRLLabel;
    RLLabel700: TRLLabel;
    RLDBText550: TRLDBText;
    RLLabel701: TRLLabel;
    RLDBText551: TRLDBText;
    RLLabel702: TRLLabel;
    RLDBText552: TRLDBText;
    RLLabel703: TRLLabel;
    RLDBText553: TRLDBText;
    RLPanel125: TRLPanel;
    RLDBText554: TRLDBText;
    RLDBText555: TRLDBText;
    RLLabel704: TRLLabel;
    RLLabel705: TRLLabel;
    RLDBText556: TRLDBText;
    RLLabel706: TRLLabel;
    RLPanel126: TRLPanel;
    RLDBText557: TRLDBText;
    RLDBText558: TRLDBText;
    RLLabel707: TRLLabel;
    RLLabel708: TRLLabel;
    RLDBText559: TRLDBText;
    RLLabel709: TRLLabel;
    RLDBText560: TRLDBText;
    RLDBText561: TRLDBText;
    RLLabel714: TRLLabel;
    RLLabel715: TRLLabel;
    RLDBText562: TRLDBText;
    RLLabel717: TRLLabel;
    RLDBText563: TRLDBText;
    RLBand89: TRLBand;
    RLSystemInfo26: TRLSystemInfo;
    RLLabel718: TRLLabel;
    RLBand90: TRLBand;
    RLDBText564: TRLDBText;
    RLDBText565: TRLDBText;
    RLDBMemo26: TRLDBMemo;
    RLDBMemo24: TRLDBMemo;
    RLLabel681: TRLLabel;
    RLDBText566: TRLDBText;
    QIdUsuario: TIntegerField;
    Qx: TWideStringField;
    QExpedido: TWideStringField;
    QGeradoNFe: TWideStringField;
    QpComissao: TFloatField;
    Qboleto: TWideStringField;
    Qdesc_especial: TFloatField;
    Qidtabela: TIntegerField;
    Qstatus: TWideStringField;
    Qsincronizado: TWideStringField;
    Qidweb: TIntegerField;
    Qidcomercial: TIntegerField;
    Qidemp: TIntegerField;
    Qidorc: TIntegerField;
    QmotivoR: TWideStringField;
    QidUserR: TIntegerField;
    QDataR: TDateTimeField;
    Qidtransp: TIntegerField;
    QtelTransp: TWideStringField;
    QpDesconto: TFloatField;
    Qidcondpgto2: TIntegerField;
    Qidtranspotadora: TIntegerField;
    QLinhaDigitavel: TWideStringField;
    QLinkBoleto: TWideStringField;
    QLinkDanfe: TWideStringField;
    QpComissaoG: TFloatField;
    QId_1: TIntegerField;
    QIdVenda: TIntegerField;
    QTipo: TWideStringField;
    QDesconto_1: TFloatField;
    QTotal_1: TFloatField;
    Qx_1: TWideStringField;
    QRoyalties: TFloatField;
    Qunit2: TFloatField;
    Qunitst: TFloatField;
    QpComissao_1: TFloatField;
    Qordemcompra: TWideStringField;
    Qsincronizado_1: TWideStringField;
    QidWeb_1: TIntegerField;
    QvCusto: TFloatField;
    QvMargem: TFloatField;
    QvUnitLiq: TFloatField;
    QvTotLiq: TFloatField;
    QpDesconto_1: TFloatField;
    Qdevolvido: TWideStringField;
    QpComissaoG_1: TFloatField;
    QId_2: TIntegerField;
    Qrg: TWideStringField;
    Qdtnasc: TDateTimeField;
    Qdtcadastro: TDateTimeField;
    Qobs_1: TWideMemoField;
    Qex_1: TIntegerField;
    QlimiteCredito: TFloatField;
    Qidcidade: TIntegerField;
    Qtppessoa: TWideStringField;
    Qrazao: TWideStringField;
    QEnd_entrega: TWideStringField;
    QNum_entrega: TWideStringField;
    QBairro_entrega: TWideStringField;
    QCep_entrega: TWideStringField;
    QidCidade_entrega: TIntegerField;
    QUF_entrega: TWideStringField;
    QComple_entrega: TWideStringField;
    Qativo: TWideStringField;
    Qpais: TIntegerField;
    Qpais_entrega: TIntegerField;
    Qcontribuinte: TWideStringField;
    QprodutorR: TWideStringField;
    Qdia_fecha: TIntegerField;
    Qinadimplente: TWideStringField;
    Qimagem_serasa: TWideStringField;
    Qcidade_entrega: TWideStringField;
    Qidcond1: TIntegerField;
    Qidcond2: TIntegerField;
    QidTrans: TIntegerField;
    QidRedes: TIntegerField;
    RLLabel682: TRLLabel;
    Qunidade_nfe: TWideStringField;
    RLLabel683: TRLLabel;
    rpImpOrcamento3: TRLReport;
    RLBand91: TRLBand;
    imgOrc3: TImage;
    RLDBText546: TRLDBText;
    RLSystemInfo27: TRLSystemInfo;
    RLLabel684: TRLLabel;
    RLLabel692: TRLLabel;
    RLDBText567: TRLDBText;
    lendorc3: TRLLabel;
    ltelorc3: TRLLabel;
    RLLabel710: TRLLabel;
    RLDBText568: TRLDBText;
    RLBand92: TRLBand;
    RLDraw11: TRLDraw;
    RLLabel711: TRLLabel;
    RLDBResult96: TRLDBResult;
    RLDBResult98: TRLDBResult;
    RLLabel712: TRLLabel;
    RLDBResult99: TRLDBResult;
    RLLabel713: TRLLabel;
    RLDBResult101: TRLDBResult;
    RLPanel127: TRLPanel;
    lCli3: TRLLabel;
    lemp3: TRLLabel;
    lClicpf3: TRLLabel;
    lEmpCpf3: TRLLabel;
    RLPanel128: TRLPanel;
    RLPanel129: TRLPanel;
    RLLabel722: TRLLabel;
    RLDBMemo27: TRLDBMemo;
    RLBand93: TRLBand;
    RLLabel723: TRLLabel;
    RLDBText569: TRLDBText;
    RLLabel724: TRLLabel;
    RLLabel725: TRLLabel;
    RLPanel130: TRLPanel;
    RLDBText570: TRLDBText;
    RLDBText571: TRLDBText;
    RLLabel726: TRLLabel;
    RLLabel727: TRLLabel;
    RLDBText572: TRLDBText;
    RLLabel728: TRLLabel;
    RLDBText573: TRLDBText;
    RLLabel729: TRLLabel;
    RLDBText574: TRLDBText;
    RLLabel730: TRLLabel;
    RLDBText575: TRLDBText;
    RLPanel131: TRLPanel;
    RLDBText576: TRLDBText;
    RLDBText577: TRLDBText;
    RLLabel731: TRLLabel;
    RLLabel732: TRLLabel;
    RLPanel132: TRLPanel;
    RLDBText578: TRLDBText;
    RLDBText579: TRLDBText;
    RLLabel733: TRLLabel;
    RLLabel734: TRLLabel;
    RLDBText580: TRLDBText;
    RLLabel735: TRLLabel;
    RLDBText581: TRLDBText;
    RLPanel133: TRLPanel;
    RLLabel736: TRLLabel;
    RLLabel740: TRLLabel;
    RLLabel741: TRLLabel;
    RLLabel742: TRLLabel;
    RLLabel743: TRLLabel;
    RLLabel744: TRLLabel;
    RLDBText582: TRLDBText;
    RLBand94: TRLBand;
    RLSystemInfo28: TRLSystemInfo;
    RLLabel745: TRLLabel;
    RLBand95: TRLBand;
    RLDBText583: TRLDBText;
    RLDBText584: TRLDBText;
    RLDBText585: TRLDBText;
    RLDBText586: TRLDBText;
    RLDBMemo28: TRLDBMemo;
    RLDBText590: TRLDBText;
    qOrcunidade_nfe: TWideStringField;
    rpImpTela: TRLReport;
    RLBand96: TRLBand;
    RLDBText587: TRLDBText;
    RLSystemInfo29: TRLSystemInfo;
    RLLabel693: TRLLabel;
    RLBand97: TRLBand;
    RLDBText588: TRLDBText;
    RLDBText589: TRLDBText;
    RLDBText593: TRLDBText;
    RLDBText604: TRLDBText;
    RLBand98: TRLBand;
    RLSystemInfo30: TRLSystemInfo;
    RLLabel770: TRLLabel;
    RLBand99: TRLBand;
    RLLabel719: TRLLabel;
    RLLabel738: TRLLabel;
    lPeriodo: TRLLabel;
    RLLabel746: TRLLabel;
    RLLabel749: TRLLabel;
    RLLabel750: TRLLabel;
    lEmpresa: TRLLabel;
    lSt: TRLLabel;
    lFiltro: TRLLabel;
    RLBand100: TRLBand;
    RLDBResult102: TRLDBResult;
    RLDBResult103: TRLDBResult;
    RLLabel716: TRLLabel;
    RLLabel720: TRLLabel;
    Qtotipi: TFloatField;
    RLLabel696: TRLLabel;
    RLDBResult104: TRLDBResult;
    RLLabel721: TRLLabel;
    RLDBText591: TRLDBText;
    RLDraw13: TRLDraw;
    rpImpExpedicaoNova: TRLReport;
    RLBand101: TRLBand;
    RLLabel737: TRLLabel;
    RLBand102: TRLBand;
    RLBand103: TRLBand;
    RLPanel142: TRLPanel;
    RLLabel771: TRLLabel;
    RLPanel143: TRLPanel;
    RLLabel774: TRLLabel;
    RLLabel775: TRLLabel;
    RLLabel776: TRLLabel;
    RLLabel777: TRLLabel;
    RLLabel779: TRLLabel;
    RLLabel780: TRLLabel;
    RLLabel781: TRLLabel;
    RLLabel782: TRLLabel;
    RLBand104: TRLBand;
    RLPanel144: TRLPanel;
    RLLabel783: TRLLabel;
    RLDBText613: TRLDBText;
    RLDBText614: TRLDBText;
    RLDBText615: TRLDBText;
    RLDBText616: TRLDBText;
    RLLabel784: TRLLabel;
    RLBand108: TRLBand;
    RLSystemInfo31: TRLSystemInfo;
    RLLabel825: TRLLabel;
    RLLabel757: TRLLabel;
    RLLabel758: TRLLabel;
    RLPanel149: TRLPanel;
    lvaz1: TRLLabel;
    RLLabel808: TRLLabel;
    RLLabel809: TRLLabel;
    RLLabel810: TRLLabel;
    RLLabel811: TRLLabel;
    RLLabel812: TRLLabel;
    RLPanel150: TRLPanel;
    lvaz2: TRLLabel;
    RLLabel814: TRLLabel;
    RLLabel815: TRLLabel;
    RLLabel816: TRLLabel;
    RLLabel817: TRLLabel;
    RLLabel818: TRLLabel;
    RLPanel151: TRLPanel;
    lvaz3: TRLLabel;
    RLLabel820: TRLLabel;
    RLLabel821: TRLLabel;
    RLLabel822: TRLLabel;
    RLLabel823: TRLLabel;
    RLLabel824: TRLLabel;
    RLBand107: TRLBand;
    RLPanel147: TRLPanel;
    RLLabel801: TRLLabel;
    RLLabel806: TRLLabel;
    RLLabel739: TRLLabel;
    RLLabel747: TRLLabel;
    RLLabel748: TRLLabel;
    RLLabel751: TRLLabel;
    RLLabel759: TRLLabel;
    RLLabel760: TRLLabel;
    RLPanel134: TRLPanel;
    RLLabel762: TRLLabel;
    RLPanel146: TRLPanel;
    RLPanel139: TRLPanel;
    RLPanel140: TRLPanel;
    RLLabel763: TRLLabel;
    RLDBResult110: TRLDBResult;
    RLPanel152: TRLPanel;
    RLPanel155: TRLPanel;
    RLPanel157: TRLPanel;
    RLDBResult112: TRLDBResult;
    RLLabel764: TRLLabel;
    Qobs_venda: TWideMemoField;
    RLPanel135: TRLPanel;
    RLLabel752: TRLLabel;
    RLLabel765: TRLLabel;
    RLLabel766: TRLLabel;
    RLLabel767: TRLLabel;
    RLLabel769: TRLLabel;
    RLLabel772: TRLLabel;
    RLDBMemo29: TRLDBMemo;
    RLDBMemo30: TRLDBMemo;
    RLPanel136: TRLPanel;
    RLPanel145: TRLPanel;
    RLPanel141: TRLPanel;
    RLLabel768: TRLLabel;
    RLDBText610: TRLDBText;
    RLPanel137: TRLPanel;
    RLDBText594: TRLDBText;
    RLDBText595: TRLDBText;
    RLLabel754: TRLLabel;
    RLLabel755: TRLLabel;
    RLLabel761: TRLLabel;
    RLDBText601: TRLDBText;
    RLPanel138: TRLPanel;
    RLLabel756: TRLLabel;
    RLLabel753: TRLLabel;
    RLDBText592: TRLDBText;
    RLDBText596: TRLDBText;
    Qv_adicional: TFloatField;
    RLLabel773: TRLLabel;
    RLDBResult105: TRLDBResult;
    RLPanel148: TRLPanel;
    RLPanel153: TRLPanel;
    RLPanel154: TRLPanel;
    RLDBResult106: TRLDBResult;
    RLLabel778: TRLLabel;
    rpFolhaSepracao5: TRLReport;
    RLBand105: TRLBand;
    RLDBText597: TRLDBText;
    RLSystemInfo32: TRLSystemInfo;
    RLLabel785: TRLLabel;
    RLBand106: TRLBand;
    RLDBResult107: TRLDBResult;
    RLPanel156: TRLPanel;
    RLPanel158: TRLPanel;
    RLLabel786: TRLLabel;
    RLDBMemo31: TRLDBMemo;
    RLDBResult108: TRLDBResult;
    RLLabel787: TRLLabel;
    RLLabel788: TRLLabel;
    RLBand109: TRLBand;
    RLDraw14: TRLDraw;
    RLLabel789: TRLLabel;
    RLDBText598: TRLDBText;
    RLDBText599: TRLDBText;
    RLLabel790: TRLLabel;
    RLLabel792: TRLLabel;
    RLLabel793: TRLLabel;
    RLPanel159: TRLPanel;
    RLDBText609: TRLDBText;
    RLLabel802: TRLLabel;
    RLDBText611: TRLDBText;
    RLPanel160: TRLPanel;
    RLDBText617: TRLDBText;
    RLDBText618: TRLDBText;
    RLLabel804: TRLLabel;
    RLLabel830: TRLLabel;
    RLLabel831: TRLLabel;
    RLBand110: TRLBand;
    RLSystemInfo34: TRLSystemInfo;
    RLLabel832: TRLLabel;
    RLBand111: TRLBand;
    RLDBText627: TRLDBText;
    RLDBText628: TRLDBText;
    RLDBMemo32: TRLDBMemo;
    RLDBText629: TRLDBText;
    RLLabel797: TRLLabel;
    RLLabel791: TRLLabel;
    RLLabel794: TRLLabel;
    RLDBText600: TRLDBText;
    RLDBResult109: TRLDBResult;
    RLDBResult111: TRLDBResult;
    RLLabel795: TRLLabel;
    rpImpPedidoModelo5: TRLReport;
    RLBand112: TRLBand;
    RLDBResult114: TRLDBResult;
    RLPanel161: TRLPanel;
    RLPanel162: TRLPanel;
    RLLabel803: TRLLabel;
    RLDBMemo33: TRLDBMemo;
    RLDBResult117: TRLDBResult;
    RLLabel805: TRLLabel;
    RLDBResult119: TRLDBResult;
    RLDBResult121: TRLDBResult;
    RLBand114: TRLBand;
    RLDBText647: TRLDBText;
    RLDBText648: TRLDBText;
    RLDBText649: TRLDBText;
    RLDBText650: TRLDBText;
    RLDBText651: TRLDBText;
    RLDBMemo34: TRLDBMemo;
    RLDBText653: TRLDBText;
    RLBand115: TRLBand;
    RLDBText655: TRLDBText;
    RLSystemInfo35: TRLSystemInfo;
    RLBand116: TRLBand;
    RLBand113: TRLBand;
    RLDraw16: TRLDraw;
    RLLabel819: TRLLabel;
    RLDBText602: TRLDBText;
    RLDBText603: TRLDBText;
    RLLabel826: TRLLabel;
    RLLabel827: TRLLabel;
    RLLabel833: TRLLabel;
    RLLabel834: TRLLabel;
    RLDBText605: TRLDBText;
    RLLabel835: TRLLabel;
    RLLabel838: TRLLabel;
    RLPanel163: TRLPanel;
    RLDBText612: TRLDBText;
    RLDBText619: TRLDBText;
    RLLabel839: TRLLabel;
    RLLabel840: TRLLabel;
    RLDBText620: TRLDBText;
    RLLabel841: TRLLabel;
    RLDBText621: TRLDBText;
    RLLabel842: TRLLabel;
    RLDBText622: TRLDBText;
    RLLabel843: TRLLabel;
    RLDBText623: TRLDBText;
    RLPanel164: TRLPanel;
    RLDBText625: TRLDBText;
    RLDBText626: TRLDBText;
    RLLabel845: TRLLabel;
    RLLabel846: TRLLabel;
    RLDBText630: TRLDBText;
    RLPanel165: TRLPanel;
    RLDBText631: TRLDBText;
    RLDBText632: TRLDBText;
    RLLabel848: TRLLabel;
    RLPanel166: TRLPanel;
    RLDBText635: TRLDBText;
    RLDBText636: TRLDBText;
    RLDBText637: TRLDBText;
    RLLabel851: TRLLabel;
    RLLabel852: TRLLabel;
    RLLabel856: TRLLabel;
    RLLabel857: TRLLabel;
    RLLabel859: TRLLabel;
    RLLabel866: TRLLabel;
    RLLabel847: TRLLabel;
    Qtipo_entrega: TWideStringField;
    RLLabel796: TRLLabel;
    RLLabel854: TRLLabel;
    RLSubDetail6: TRLSubDetail;
    RLSubDetail7: TRLSubDetail;
    RLBand117: TRLBand;
    RLDBResult113: TRLDBResult;
    RLPanel167: TRLPanel;
    RLPanel168: TRLPanel;
    RLDBResult115: TRLDBResult;
    RLLabel836: TRLLabel;
    RLDBResult116: TRLDBResult;
    RLDBResult118: TRLDBResult;
    RLBand118: TRLBand;
    RLDraw15: TRLDraw;
    RLLabel837: TRLLabel;
    RLDBText634: TRLDBText;
    RLDBText638: TRLDBText;
    RLLabel844: TRLLabel;
    RLLabel849: TRLLabel;
    RLLabel850: TRLLabel;
    RLLabel853: TRLLabel;
    RLDBText639: TRLDBText;
    RLLabel855: TRLLabel;
    RLLabel858: TRLLabel;
    RLPanel169: TRLPanel;
    RLDBText640: TRLDBText;
    RLDBText642: TRLDBText;
    RLLabel860: TRLLabel;
    RLLabel861: TRLLabel;
    RLDBText643: TRLDBText;
    RLLabel863: TRLLabel;
    RLDBText645: TRLDBText;
    RLLabel865: TRLLabel;
    RLDBText646: TRLDBText;
    RLLabel867: TRLLabel;
    RLDBText652: TRLDBText;
    RLPanel170: TRLPanel;
    RLDBText654: TRLDBText;
    RLDBText656: TRLDBText;
    RLLabel868: TRLLabel;
    RLLabel869: TRLLabel;
    RLDBText657: TRLDBText;
    RLPanel171: TRLPanel;
    RLDBText658: TRLDBText;
    RLDBText659: TRLDBText;
    RLLabel870: TRLLabel;
    RLLabel871: TRLLabel;
    RLPanel172: TRLPanel;
    RLDBText660: TRLDBText;
    RLDBText661: TRLDBText;
    RLDBText662: TRLDBText;
    RLLabel872: TRLLabel;
    RLLabel873: TRLLabel;
    RLLabel874: TRLLabel;
    RLLabel875: TRLLabel;
    RLLabel876: TRLLabel;
    RLLabel877: TRLLabel;
    RLLabel878: TRLLabel;
    RLBand119: TRLBand;
    RLDBText663: TRLDBText;
    RLDBText664: TRLDBText;
    RLDBText665: TRLDBText;
    RLDBText666: TRLDBText;
    RLDBText667: TRLDBText;
    RLDBMemo36: TRLDBMemo;
    RLDBText668: TRLDBText;
    RLBand120: TRLBand;
    RLDBText669: TRLDBText;
    RLSystemInfo37: TRLSystemInfo;
    RLBand121: TRLBand;
    RLLabel881: TRLLabel;
    RLBand122: TRLBand;
    RLPanel173: TRLPanel;
    RLAngleLabel8: TRLAngleLabel;
    rpImpOrcamento5: TRLReport;
    RLBand123: TRLBand;
    Image1: TImage;
    RLSystemInfo36: TRLSystemInfo;
    RLLabel882: TRLLabel;
    RLLabel883: TRLLabel;
    RLDBText671: TRLDBText;
    RLLabel886: TRLLabel;
    RLDBText672: TRLDBText;
    RLBand124: TRLBand;
    RLDraw17: TRLDraw;
    RLLabel887: TRLLabel;
    RLDBResult120: TRLDBResult;
    RLDBResult122: TRLDBResult;
    RLLabel888: TRLLabel;
    RLDBResult123: TRLDBResult;
    RLLabel889: TRLLabel;
    RLDBResult124: TRLDBResult;
    RLPanel174: TRLPanel;
    lCli5: TRLLabel;
    lEmp5: TRLLabel;
    lCliCpf5: TRLLabel;
    lempcpf5: TRLLabel;
    RLPanel175: TRLPanel;
    RLPanel176: TRLPanel;
    RLLabel894: TRLLabel;
    RLDBMemo37: TRLDBMemo;
    RLBand125: TRLBand;
    RLLabel895: TRLLabel;
    RLLabel897: TRLLabel;
    RLPanel177: TRLPanel;
    RLDBText674: TRLDBText;
    RLDBText675: TRLDBText;
    RLLabel898: TRLLabel;
    RLLabel899: TRLLabel;
    RLDBText676: TRLDBText;
    RLLabel900: TRLLabel;
    RLDBText677: TRLDBText;
    RLLabel901: TRLLabel;
    RLDBText678: TRLDBText;
    RLLabel902: TRLLabel;
    RLDBText679: TRLDBText;
    RLPanel178: TRLPanel;
    RLDBText680: TRLDBText;
    RLDBText681: TRLDBText;
    RLLabel903: TRLLabel;
    RLLabel904: TRLLabel;
    RLPanel179: TRLPanel;
    RLDBText682: TRLDBText;
    RLDBText683: TRLDBText;
    RLLabel905: TRLLabel;
    RLLabel906: TRLLabel;
    RLDBText684: TRLDBText;
    RLLabel907: TRLLabel;
    RLDBText685: TRLDBText;
    RLPanel180: TRLPanel;
    RLLabel908: TRLLabel;
    RLLabel912: TRLLabel;
    RLLabel913: TRLLabel;
    RLLabel914: TRLLabel;
    RLLabel915: TRLLabel;
    RLLabel916: TRLLabel;
    RLDBText686: TRLDBText;
    RLBand126: TRLBand;
    RLSystemInfo38: TRLSystemInfo;
    RLLabel917: TRLLabel;
    RLBand127: TRLBand;
    RLDBText687: TRLDBText;
    RLDBText688: TRLDBText;
    RLDBText689: TRLDBText;
    RLDBText690: TRLDBText;
    RLDBMemo38: TRLDBMemo;
    RLDBText694: TRLDBText;
    RLDBText673: TRLDBText;
    RLLabel884: TRLLabel;
    RLLabel885: TRLLabel;
    RLDBText670: TRLDBText;
    Qdestabela: TWideStringField;
    qOrcobs_venda: TWideMemoField;
    RLPanel181: TRLPanel;
    RLLabel800: TRLLabel;
    RLMemo11: TRLMemo;
    RLLabel862: TRLLabel;
    RLLabel864: TRLLabel;
    RLDBText644: TRLDBText;
    RLDBText641: TRLDBText;
    RLLabel879: TRLLabel;
    RLLabel880: TRLLabel;
    RLDBText606: TRLDBText;
    RLPanel182: TRLPanel;
    RLLabel799: TRLLabel;
    RLDBMemo35: TRLDBMemo;
    RLPanel183: TRLPanel;
    RLDBText608: TRLDBText;
    RLLabel798: TRLLabel;
    RLLabel807: TRLLabel;
    RLDBText624: TRLDBText;
    RLLabel813: TRLLabel;
    RLMemo12: TRLMemo;
    RLLabel828: TRLLabel;
    RLDBText633: TRLDBText;
    RLLabel829: TRLLabel;
    RLLabel890: TRLLabel;
    RLDBText691: TRLDBText;
    qMtg: TIntegerField;
    RLPanel184: TRLPanel;
    RLDBText692: TRLDBText;
    RLDBText693: TRLDBText;
    RLLabel891: TRLLabel;
    RLLabel892: TRLLabel;
    RLLabel893: TRLLabel;
    RLDBText695: TRLDBText;
    qOrctel3: TWideStringField;
    qOrctel2: TWideStringField;
    RLLabel896: TRLLabel;
    RLDBText696: TRLDBText;
    RLLabel909: TRLLabel;
    RLLabel910: TRLLabel;
    RLLabel911: TRLLabel;
    RLDBText697: TRLDBText;
    RLDBText698: TRLDBText;
    RLDBText699: TRLDBText;
    RLDraw18: TRLDraw;
    RLLabel646: TRLLabel;
    ltpFrete: TRLLabel;
    RLDBMemo25: TRLDBMemo;
    RLLabel647: TRLLabel;
    RLDBText472: TRLDBText;
    RLLabel650: TRLLabel;
    RLPanel185: TRLPanel;
    RLDBText508: TRLDBText;
    RLDBText518: TRLDBText;
    RLLabel651: TRLLabel;
    RLPanel186: TRLPanel;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLLabel652: TRLLabel;
    RLPanel187: TRLPanel;
    RLDBText519: TRLDBText;
    RLDBText520: TRLDBText;
    RLLabel653: TRLLabel;
    lEmail: TRLLabel;
    qOrcemailtel: TWideStringField;
    RLLabel654: TRLLabel;
    lTel1: TRLLabel;
    lTel2: TRLLabel;
    RLLabel655: TRLLabel;
    qOrctotFre: TFloatField;
    qOrctotIPI: TFloatField;
    RLLabel656: TRLLabel;
    RLDBResult94: TRLDBResult;
    RLLabel657: TRLLabel;
    RLDBResult95: TRLDBResult;
    RLLabel661: TRLLabel;
    RLDBText65: TRLDBText;
    Qcor: TWideStringField;
    Qtamanho: TWideStringField;
    Qreferencia_base: TWideStringField;
    pDoisVolumes: TRLPanel;
    RLDBText525: TRLDBText;
    RLLabel924: TRLLabel;
    RLLabel925: TRLLabel;
    RLLabel926: TRLLabel;
    RLLabel927: TRLLabel;
    QDvolume2: TWideStringField;
    QDvolume1: TWideStringField;
    RLLabel662: TRLLabel;
    RLDBText66: TRLDBText;
    Qseq_cliente: TIntegerField;
    RLLabel618: TRLLabel;
    RLDBText490: TRLDBText;
    RLLabel663: TRLLabel;
    RLDBText521: TRLDBText;
    qOrcobs_venda_up: TWideMemoField;
    qMtqtddev: TFloatField;
    qMtqtd_cxdev: TFloatField;
    lQtdDev: TRLLabel;
    lQtdKgDev: TRLLabel;
    rldbQtdDev: TRLDBText;
    rlDBQtdKgDev: TRLDBText;
    RLLabel672: TRLLabel;
    RLDBText522: TRLDBText;
    procedure RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand17AfterPrint(Sender: TObject);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure Sub2AfterPrint(Sender: TObject);
    procedure RLBand15BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand23BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand24BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand24AfterPrint(Sender: TObject);
    procedure RLBand27BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand29BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand29AfterPrint(Sender: TObject);
    procedure RLBand32BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure rpImpPedidoBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rpImpPedido2viasBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand34BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand44BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand44AfterPrint(Sender: TObject);
    procedure RLPanel67BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand51BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel66BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand35BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand35AfterPrint(Sender: TObject);
    procedure RLBand53BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand58BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand59BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand61BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand60BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand63BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand66BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand68BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand69BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand69AfterPrint(Sender: TObject);
    procedure RLBand50BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand73BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand76BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand75BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand72BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel114BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel108BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand91BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand92BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand92AfterPrint(Sender: TObject);
    procedure RLBand104BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel144BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel151BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel11AfterPrint(Sender: TObject);
    procedure RLPanel16BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel16AfterPrint(Sender: TObject);
    procedure RLBand73AfterPrint(Sender: TObject);
    procedure RLBand112BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand112AfterPrint(Sender: TObject);
    procedure RLBand106BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand117AfterPrint(Sender: TObject);
    procedure RLBand117BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand123BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand124BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand124AfterPrint(Sender: TObject);
    procedure RLPanel184BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2AfterPrint(Sender: TObject);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel57BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand74BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rpImpOrcamento3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vValband : integer;
  public
    { Public declarations }
    nProd : String;
  end;

var
  fImpressoes: TfImpressoes;

implementation

uses  uDM, uFuncao, StrUtils, uGridVenda;

{$R *.dfm}

procedure TfImpressoes.FormCreate(Sender: TObject);
var
  pp : String;
begin
  if dm.qParametrousa_referencia_base.asString = 'S' then
     pp := 'referencia_base'
  else
  if trim(dm.qParametropesqproduto.text) = 'ID' then
     pp := 'IDPRODUTO'
  else
     pp := trim(dm.qParametropesqproduto.text);
  fImpressoes.rldbtext75.DataField  := PP;
  fImpressoes.rldbtext159.DataField := pp;
  fImpressoes.rldbtext192.DataField := pp;
  fImpressoes.rldbtext91.DataField  := pp;
  fImpressoes.rldbtext113.DataField := pp;
  fImpressoes.rldbtext564.DataField := pp;
  fImpressoes.rldbtext583.DataField := pp;
  fImpressoes.rldbtext349.DataField := pp;

  if DM.qParametromod_gerente_cial.Text = 'N' then
  begin
     RLLabel667.Visible  := false;
     RLLabel668.Visible  := false;
     RLDBText537.Visible := false;
     RLDBText538.Visible := false;

     RLLabel669.Visible  := false;
     RLLabel670.Visible  := false;
     RLDBText539.Visible := false;
     RLDBText540.Visible := false;
  end;


  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    //Venda
    RLDBMemo23.left := 82;
    rllabel644.left := 82;
    RLDBMemo23.Width := 264;

    //orçamento
    rldbtext465.width := 50;
    rllabel586.width  := 50;

    //Separação
    rllabel779.width  := 64;
    rldbtext613.width := 64;
    rllabel811.width  := 64;
    rllabel817.width  := 64;
    rllabel823.width  := 64;

    rllabel775.left   := 93;
    rllabel775.width  := 374;

    rldbtext614.left   := 93;
    rldbtext614.width  := 374;

    rllabel808.width  := 374;
    rllabel814.width  := 374;
    rllabel820.width  := 374;


  end;

end;


procedure TfImpressoes.RLBand104BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Qusa_codigo.Text = 'N' then
     RLLabel784.Caption := '(   )'
  else
     RLLabel784.Caption := '( X )' ;
  RLLabel784.Width := 30;

  if QDvolume2.Text  = '' then
   pDoisVolumes.Visible := False
  else
   pDoisVolumes.Visible := True;
end;

procedure TfImpressoes.RLBand106BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if trim(Qobs_venda.Text) = '' then
     rllabel786.Visible := false;
end;

procedure TfImpressoes.RLBand112AfterPrint(Sender: TObject);
begin
 Q.Next;
end;

procedure TfImpressoes.RLBand112BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  temPg:String;
begin
  Q.Prior;
  if QId.AsInteger > 0 then
  begin
    if trim(QOBS.AsString) = '' then
       rllabel803.Visible := false;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total, c.dtpagto, c.valpago from creceber c '+
                       ' where c.ex = 0 and  (c.idvenda = ' + QId.AsString  +
                       ' or c.idVendaOriginal = ' + QId.AsString +') '+
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci' );
    dm.qSelect.Open;
    if dm.qSelect.RecordCount = 0 then
    begin
       RLLabel800.Visible := false;
       Exit;
    end;
    dm.qSelect.First;

    RLMemo11.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qSelect.Fields[4].AsFloat > 0 then
         temPg := Completa(dm.qSelect.Fields[3].asstring, 12) +
                  AlignRigth(FormatFloat('###,##0.00', dm.qSelect.Fields[4].AsFloat), 10)
      else
         temPg := '';

      RLMemo11.Lines.Add(' ' + Completa(dm.qSelect.Fields[0].asstring, 14) +
                            Completa(dm.qSelect.Fields[1].asstring, 14) +
                            AlignRigth(formatfloat('###,##0.00', dm.qSelect.Fields[2].AsFloat), 10) + '  '+
                            temPg ) ;

      dm.qSelect.Next;
    end;
  end;

end;

procedure TfImpressoes.RLBand117AfterPrint(Sender: TObject);
begin
 Q.Next;
end;

procedure TfImpressoes.RLBand117BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Q.Prior;
  if QId.AsInteger > 0 then
  begin
    rllabel799.Visible := rllabel803.Visible;
    rllabel798.Visible := RLLabel800.Visible;
    RLMemo12.Lines.text := RLMemo11.lines.text;
  end;

end;

procedure TfImpressoes.RLBand11BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
  //Q.Prior;
  if QId.AsInteger > 0 then
  begin
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString);
    dm.qSelect.Open;

    dm.qSelect.First;

    RLMemo3.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel77.Caption := 'Docto                        Valor';
         RLMemo3.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo3.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                          FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo3.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;
  end;
  Q.Next;

end;

procedure TfImpressoes.RLBand123BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   Image1.Picture := nil;
   if qOrce_logo.Text <> '' then
      if FileExists(trim(qOrce_logo.Text)) then
         Image1.Picture.LoadFromFile(trim(qOrce_logo.Text));
   Image1.Refresh;

   lCli5.Caption     := qOrcnomeCli.Text;
   lClicpf5.Caption  := formatacpf_cnpj(qOrccpf.Text);
   lemp5.Caption     := qOrce_fantasia.Text;
   lEmpCpf5.Caption  := formatacpf_cnpj(qOrce_cnpj.Text);


end;

procedure TfImpressoes.RLBand124AfterPrint(Sender: TObject);
begin
  qOrc.next;
end;

procedure TfImpressoes.RLBand124BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 qOrc.Prior;

 if trim(qOrcobs_venda.AsString) = '' then
    RLLabel894.Visible := false;

end;

procedure TfImpressoes.RLBand12BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   if dm.qParametropd_duas_cond.Text = 'N' then
   begin
      RLDBText347.Visible := false;
      RLDBText348.Visible := false;
      RLLabel414.Visible  := false;
      RLLabel415.Visible  := false;

      RLDBText249.Visible := false;
      RLDBText356.Visible := false;
      RLLabel416.Visible  := false;
      RLLabel423.Visible  := false;
   end;

end;

procedure TfImpressoes.RLBand15BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
  //Q.Prior;
  if QId.AsInteger > 0 then
  begin
    RLMemo1.Lines.Clear;
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci');
    dm.qSelect.Open;

    dm.qSelect.First;
    RLMemo4.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel104.Caption := 'Docto                        Valor';
         RLMemo4.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo4.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                        FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo4.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;
  end;
  Q.Next;
end;

procedure TfImpressoes.RLBand17AfterPrint(Sender: TObject);
begin
  Q.Next;
end;

procedure TfImpressoes.RLBand17BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  Q.Prior;
  if QId.AsInteger > 0 then
  begin
    RLMemo1.Lines.Clear;
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total, c.dtpagto, c.valpago from creceber c '+
                       ' where c.ex = 0 and  ((c.tipo = ''V'' and c.idvenda = ' + QId.AsString  +
                       ' ) or (c.idVendaOriginal = ' + QId.AsString +') ) '+
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and c.idcliente = '+ QIdCliente.Text +
                       ' order by c.venci' );
                       {  ' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString  +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci'  }
    dm.qSelect.Open;

    dm.qSelect.First;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel62.Caption := 'Docto                        Valor';
         RLMemo1.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo1.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                          FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

  end;
end;

procedure TfImpressoes.RLBand23BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  lTelefone2.Caption := 'Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);
end;

procedure TfImpressoes.RLBand24AfterPrint(Sender: TObject);
begin
  Q.Next;

end;

procedure TfImpressoes.RLBand24BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
 Q.Prior;

  if QId.AsInteger > 0 then
  begin
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString  +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci' );
    dm.qSelect.Open;

    dm.qSelect.First;

    RLMemo5.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel154.Caption := 'Docto                        Valor';
         RLMemo5.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
        RLMemo5.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                        FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo5.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;

  end;

end;

procedure TfImpressoes.RLBand27BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
 lTelefone1R.Caption := '  -  Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);

end;

procedure TfImpressoes.RLBand29AfterPrint(Sender: TObject);
begin
  Q.Next;

end;

procedure TfImpressoes.RLBand29BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
  Q.Prior;

  if QId.AsInteger > 0 then
  begin
    RLMemo6.Lines.Clear;
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString  +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci' );
    dm.qSelect.Open;

    dm.qSelect.First;
    RLMemo6.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel193.Caption := 'Docto                        Valor';
         RLMemo6.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo6.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                        FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo6.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;


  end;

end;

procedure TfImpressoes.RLBand2AfterPrint(Sender: TObject);
begin
  DM.qImpCompra.next;

end;

procedure TfImpressoes.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  DM.qImpCompra.Prior;

  if trim(dm.qimpcompraObs.asstring) = '' then
     rllabel84.visible := false;

  if trim(rlmemo2.lines.text) = '' then
     rllabel15.visible := false;

end;

procedure TfImpressoes.RLBand32BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  lTelefone2R.Caption := '  -  Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);
end;

procedure TfImpressoes.RLBand34BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
   ImgOrc.Picture := nil;
   if qOrce_logo.Text <> '' then
      if FileExists(trim(qOrce_logo.Text)) then
         imgOrc.Picture.LoadFromFile(trim(qOrce_logo.Text));
   imgOrc.Refresh;
   lendorc.Caption :=  trim(qOrce_end.text)+','+trim(qOrce_num.text)+'-'+trim(qOrce_bai.text) + '-' +
                       trim(qOrce_cid.text)+'/'+trim(qOrce_uf.text);
   ltelorc.Caption :=  formatatelefone(trim(qOrce_tel.text));

   lCli.Caption     := qOrcnomeCli.Text;
   lClicpf.Caption  := formatacpf_cnpj(qOrccpf.Text);
   lemp.Caption     := qOrce_fantasia.Text;
   lEmpCpf.Caption  := formatacpf_cnpj(qOrce_cnpj.Text);

end;

procedure TfImpressoes.RLBand35AfterPrint(Sender: TObject);
begin
   qOrc.next;
end;

procedure TfImpressoes.RLBand35BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qOrc.Prior;
end;

procedure TfImpressoes.RLBand44AfterPrint(Sender: TObject);
begin
  qMt.Next;

end;

procedure TfImpressoes.RLBand44BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
  qMt.Prior;

  if qMtId.AsInteger > 0 then
  begin
    if trim(qMtobs_venda.AsString) = '' then
       RLPanel51.Visible := false;

    RLMemo7.Lines.Clear;
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total, c.dtpagto, c.valpago from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + qMtId.AsString  +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci' );
    dm.qSelect.Open;
    if dm.qSelect.IsEmpty then
    begin
       RLLabel316.Visible := false;
       RLMemo7.Visible    := false;
       exit;
    end;

    dm.qSelect.First;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel316.Caption := 'Docto                        Valor';
         RLMemo7.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo7.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           Completa(dm.qSelect.Fields[1].asstring, 20) +
                           FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) );

      dm.qSelect.Next;
    end;

  end;

end;

procedure TfImpressoes.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  case dm.qImpCompratpfrete.AsInteger of
    0: ltpfrete.Caption := '';
    1: ltpfrete.Caption := '1-CIF';
    2: ltpfrete.Caption := '2-FOB';
  end;

end;

procedure TfImpressoes.RLBand50BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Qusa_codigo.Text = 'N' then
     RLLabel389.Caption := '(   )'
  else
     RLLabel389.Caption := '( X )' ;
  RLLabel389.Width := 52;
end;

procedure TfImpressoes.RLBand51BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel385.Caption := inttostr(qPro.RecNo);

  if Qusa_codigo.Text = 'N' then
     RLLabel386.Caption := '(   )'
  else
     RLLabel386.Caption := '( X )' ;
end;

procedure TfImpressoes.RLBand53BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lVazia1.Caption := inttostr(qPro.RecordCount + 1);
  lVazia2.Caption := inttostr(qPro.RecordCount + 2);
  lVazia3.Caption := inttostr(qPro.RecordCount + 3);
end;

procedure TfImpressoes.RLBand58BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 //Q.Prior;
  if QId.AsInteger > 0 then
  begin
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total, c.dtpagto, c.valpago from creceber c '+
                       ' where c.ex = 0 and  ((c.tipo = ''V'' and c.idvenda = ' + QId.AsString  +
                       ' ) or (c.idVendaOriginal = ' + QId.AsString +') ) '+
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and c.idcliente = '+ QIdCliente.Text +
                       ' order by c.venci');
                       {' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString  +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci' }
    dm.qSelect.Open;

    dm.qSelect.First;

    RLMemo8.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel445.Caption := 'Docto                        Valor';
         RLMemo8.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo8.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                          FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo8.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;
  end;
  Q.Next;
end;

procedure TfImpressoes.RLBand59BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if dm.qParametropd_duas_cond.Text = 'N' then
   begin
      RLDBText383.Visible := false;
      RLDBText384.Visible := false;
      RLLabel493.Visible  := false;
      RLLabel494.Visible  := false;

      RLDBText428.Visible := false;
      RLDBText429.Visible := false;
      RLLabel552.Visible  := false;
      RLLabel551.Visible  := false;
   end;

   if Qtppessoa.asString = 'F' then
   begin
     QCPF.editmask := '###.###.###-##;0;_';
     rllabel476.caption := 'CPF';
     rllabel534.caption := 'CPF';
   end
   else
   begin
     QCPF.editmask := '##.###.###/####-##;0;_';
     rllabel476.caption := 'CNPJ';
     rllabel534.caption := 'CNPJ';
   end;
end;

procedure TfImpressoes.RLBand60BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 lTelefone3.Caption := 'Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);

end;

procedure TfImpressoes.RLBand61BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 lTelefone4.Caption := 'Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);

end;

procedure TfImpressoes.RLBand63BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //Q.Prior;
  if QId.AsInteger > 0 then
  begin
    RLMemo1.Lines.Clear;
    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total from creceber c '+
                       ' where c.ex = 0 and  c.idvenda = ' + QId.AsString  +
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and substring(c.documento, 1, 1) <> ''R'' '+
                       ' order by c.venci' );
    dm.qSelect.Open;

    dm.qSelect.First;
    RLMemo9.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel509.Caption := 'Docto                        Valor';
         RLMemo9.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo9.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 20) + Completa(dm.qSelect.Fields[1].asstring, 20) +
                        FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) ) ;

      dm.qSelect.Next;
    end;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo9.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;
  end;
  Q.Next;

end;

procedure TfImpressoes.RLBand66BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lTelefone4.Caption := 'Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);

end;

procedure TfImpressoes.RLBand68BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   ImgOrc2.Picture := nil;
   if qOrce_logo.Text <> '' then
      if FileExists(trim(qOrce_logo.Text)) then
         imgOrc2.Picture.LoadFromFile(trim(qOrce_logo.Text));
   imgOrc2.Refresh;
   lendorc2.Caption :=  trim(qOrce_end.text)+','+trim(qOrce_num.text)+'-'+trim(qOrce_bai.text) + '-' +
                       trim(qOrce_cid.text)+'/'+trim(qOrce_uf.text);
   ltelorc2.Caption :=  formatatelefone(trim(qOrce_tel.text));

   lCli2.Caption     := qOrcnomeCli.Text;
   lClicpf2.Caption  := formatacpf_cnpj(qOrccpf.Text);
   lemp2.Caption     := qOrce_fantasia.Text;
   lEmpCpf2.Caption  := formatacpf_cnpj(qOrce_cnpj.Text);

end;

procedure TfImpressoes.RLBand69AfterPrint(Sender: TObject);
begin
   qOrc.next;
end;

procedure TfImpressoes.RLBand69BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qOrc.Prior;
end;

procedure TfImpressoes.RLBand72BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lSeqOrc.Caption := formatfloat('000', qOrc.RecNo);
end;

procedure TfImpressoes.RLBand73AfterPrint(Sender: TObject);
begin
 Q.Next;
end;

procedure TfImpressoes.RLBand73BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  temPg:String;
begin
  Q.Prior;
  if QId.AsInteger > 0 then
  begin
    if trim(QOBS.AsString) = '' then
       rllabel569.Visible := false;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select c.documento, c.venci, c.total, c.dtpagto, c.valpago from creceber c '+
                       ' where c.ex = 0 and  ((c.tipo = ''V'' and c.idvenda = ' + QId.AsString  +
                       ' ) or (c.idVendaOriginal = ' + QId.AsString +') ) '+
                       ' and substring(c.documento, 1, 3) <> ''NFA'' '+
                       ' and c.idcliente = '+ QIdCliente.Text +
                       ' order by c.venci' );
    dm.qSelect.Open;
    if dm.qSelect.RecordCount = 0 then
    begin
       RLLabel568.Visible := false;
       Exit;
    end;
    dm.qSelect.First;

    RLMemo10.Lines.Clear;
    while not dm.qSelect.eof do
    begin
      if dm.qSelect.Fields[4].AsFloat > 0 then
         temPg := Completa(dm.qSelect.Fields[3].asstring, 10) +
                  AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[4].AsFloat), 17)
      else
         temPg := '';

      if dm.qParametrovenda_sem_vecto.text = 'S' then
      begin
         RLLabel568.Caption := 'Docto                        Valor';
         RLMemo10.Lines.Add(Completa(dm.qSelect.Fields[0].asstring, 30) +
                           AlignRigth(FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat), 14) );
      end
      else
         RLMemo10.Lines.Add(' ' + Completa(dm.qSelect.Fields[0].asstring, 40) +
                            Completa(dm.qSelect.Fields[1].asstring, 20) +
                            FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[2].AsFloat) + '         '+
                            temPg ) ;

      dm.qSelect.Next;
    end;

    {dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select sum(c.total) tot from creceber c '+
                       ' where c.ex = 0 and c.baixa = ''N'' and '+
                       '       c.IdCliente =  '+QIdCliente.Text+
                       '       and c.idvenda <> ' + QId.AsString);
    dm.qSelect.Open;

    if dm.qSelect.Fields[0].AsFloat > 0 then
     RLMemo10.Lines.Add('Total em Aberto: ' +FormatFloat('###,###,###,##0.00', dm.qSelect.Fields[0].AsFloat) ) ;}

  end;
 // Q.Next;

end;

procedure TfImpressoes.RLBand74BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   if Qtppessoa.asString = 'F' then
   begin
     QCPF.editmask := '###.###.###-##;0;_';
     rllabel614.caption := '  CPF: ';
   end
   else
   begin
     QCPF.editmask := '##.###.###/####-##;0;_';
     rllabel614.caption := '  CNPJ: ';
   end;
end;

procedure TfImpressoes.RLBand75BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lSeq.Caption := formatfloat('000', Q.RecNo);
end;

procedure TfImpressoes.RLBand76BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 rllabel633.Caption := 'Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);

end;

procedure TfImpressoes.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
 lTelefone1.Caption := 'Telefone: ('+MidStr(DM.qParametroTELEFONE.Text,1,2)+')'+MidStr(DM.qParametroTELEFONE.Text,3,10);
end;

procedure TfImpressoes.RLBand91BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   ImgOrc3.Picture := nil;
   if qOrce_logo.Text <> '' then
      if FileExists(trim(qOrce_logo.Text)) then
         imgOrc3.Picture.LoadFromFile(trim(qOrce_logo.Text));
   imgOrc3.Refresh;
   lendorc3.Caption :=  trim(qOrce_end.text)+','+trim(qOrce_num.text)+'-'+trim(qOrce_bai.text) + '-' +
                       trim(qOrce_cid.text)+'/'+trim(qOrce_uf.text);
   ltelorc3.Caption :=  formatatelefone(trim(qOrce_tel.text));

   lCli3.Caption     := qOrcnomeCli.Text;
   lClicpf3.Caption  := formatacpf_cnpj(qOrccpf.Text);
   lemp3.Caption     := qOrce_fantasia.Text;
   lEmpCpf3.Caption  := formatacpf_cnpj(qOrce_cnpj.Text);

end;

procedure TfImpressoes.RLBand92AfterPrint(Sender: TObject);
begin
 qOrc.next;
end;

procedure TfImpressoes.RLBand92BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 qOrc.Prior;
end;

procedure TfImpressoes.RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if qClitppessoa.AsString = 'Jurídica' then
  begin
    lRg.Caption := 'IE:';
    lCpf.Caption := 'CNPJ:'
  end
  else
  begin
    lRg.Caption := 'RG:';
    lCpf.Caption := 'CPF:'
  end

end;

procedure TfImpressoes.RLPanel108BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not (qOrcidgerente.AsInteger > 0) then
  begin
     RLLabel669.Visible  := false;
     RLLabel670.Visible  := false;
     RLDBText539.Visible := false;
     RLDBText540.Visible := false;
  end;

end;

procedure TfImpressoes.RLPanel114BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if not (Qidgerente.AsInteger > 0) then
  begin
     RLLabel667.Visible  := false;
     RLLabel668.Visible  := false;
     RLDBText537.Visible := false;
     RLDBText538.Visible := false;
  end;
end;

procedure TfImpressoes.RLPanel11AfterPrint(Sender: TObject);
begin
  q.Next;
end;

procedure TfImpressoes.RLPanel11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 Q.Prior;

end;

procedure TfImpressoes.RLPanel144BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel783.Caption := inttostr(Q.RecNo);

end;

procedure TfImpressoes.RLPanel151BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lVaz1.Caption := inttostr(Q.RecordCount + 1);
  lVaz2.Caption := inttostr(Q.RecordCount + 2);
  lVaz3.Caption := inttostr(Q.RecordCount + 3);

end;

procedure TfImpressoes.RLPanel16AfterPrint(Sender: TObject);
begin
  Q.Next;
end;

procedure TfImpressoes.RLPanel16BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  q.Prior;
end;

procedure TfImpressoes.RLPanel184BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLDBText695.Visible := (trim(qOrctel3.text) <> '' );
  RLLabel893.Visible  := (trim(qOrctel3.text) <> '' );
  RLDBText693.Visible := (trim(qOrctel2.text) <> '' );
  RLLabel891.Visible  := (trim(qOrctel2.text) <> '' );
end;

procedure TfImpressoes.RLPanel57BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lTel1.Caption := formatatelefone(fImpressoes.qMttel1.text);
  lTel2.Caption := formatatelefone(fImpressoes.qMttel2.text);
end;

procedure TfImpressoes.RLPanel66BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  RLLabel390.Caption := inttostr(Q.RecNo);

end;

procedure TfImpressoes.RLPanel67BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Q.Prior;
  if trim(nprod) = '' then
     Exit;

  qPro.Close;
  qPro.SQL.Clear;
  qPro.SQL.Add(' select v.idproduto id, p.referencia, p.barras, p.descricao '+
               ' from venda_i v '+
               ' left join produto p on p.id = v.idproduto '+
               ' where v.id in (  '+ nProd +'  )' +
               ' order by p.referencia '  );
  qPro.Open;
  qPro.first;

end;

procedure TfImpressoes.rpImpOrcamento3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   if dm.qParametrousa_referencia_base.asString = 'S' then
    rldbtext583.DataField := 'referencia';
end;

procedure TfImpressoes.rpImpPedido2viasBeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin
  if dm.qParametromostrar_cubagem.text = 'N' then
  begin
     RLlabel233.Visible   := false;
     RLDBText212.Visible  := false;
     RLDBResult24.Visible := false;

     RLlabel234.Visible   := false;
     RLDBText213.Visible  := false;
     RLDBResult25.Visible := false;
  end;


  if Q.RecordCount > 5 then    //mais de 5 itens não cabem duas vias na mesma folha Nilton 19/07/2022
  begin
    RLBand21.PageBreaking := pbBeforePrint;
  end;

end;

procedure TfImpressoes.rpImpPedidoBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if dm.qParametromostrar_cubagem.text = 'N' then
  begin
     RLlabel232.Visible   := false;
     RLDBText211.Visible  := false;
     RLDBResult23.Visible := false;
  end;


  if dm.qParametrousa_referencia_base.asString = 'S' then
    rldbtext235.DataField := 'referencia';

end;

procedure TfImpressoes.Sub2AfterPrint(Sender: TObject);
begin
  //Q.First;
end;

end.

