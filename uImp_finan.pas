
unit uImp_finan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLDraftFilter, jpeg, DB,
   RLPrintDialog, printers, ZAbstractRODataset, ZDataset, RLBarcode;

type
  TfImp_finan = class(TForm)
    rpSangria: TRLReport;
    RLBand3: TRLBand;
    RLDBMemo3: TRLDBMemo;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLLabel4: TRLLabel;
    qS: TZReadOnlyQuery;
    dS: TDataSource;
    RLBand4: TRLBand;
    RLLabel8: TRLLabel;
    RLDBMemo2: TRLDBMemo;
    RLPanel1: TRLPanel;
    RLLabel5: TRLLabel;
    RLDBText7: TRLDBText;
    rpPag: TRLReport;
    RLBand1: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel6: TRLLabel;
    RLBand2: TRLBand;
    RLLabel7: TRLLabel;
    RLPanel2: TRLPanel;
    RLLabel12: TRLLabel;
    RLDBText21: TRLDBText;
    qP: TZReadOnlyQuery;
    dP: TDataSource;
    RLDBMemo4: TRLDBMemo;
    RLPanel3: TRLPanel;
    RLLabel11: TRLLabel;
    RLDBText20: TRLDBText;
    rpEnt: TRLReport;
    RLBand5: TRLBand;
    RLDBMemo5: TRLDBMemo;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLBand6: TRLBand;
    RLLabel10: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBMemo6: TRLDBMemo;
    RLLabel13: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLDBText13: TRLDBText;
    RLPanel4: TRLPanel;
    RLLabel16: TRLLabel;
    RLDBText14: TRLDBText;
    qE: TZReadOnlyQuery;
    dE: TDataSource;
    RLLabel17: TRLLabel;
    lFornec: TRLLabel;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText22: TRLDBText;
    RLPanel5: TRLPanel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    rpRecibo: TRLReport;
    RLBand7: TRLBand;
    RLPanel6: TRLPanel;
    RLPanel7: TRLPanel;
    RLPanel8: TRLPanel;
    RLLabel24: TRLLabel;
    lValor: TRLLabel;
    mTexto: TRLMemo;
    lData: TRLLabel;
    RLPanel9: TRLPanel;
    RLDBMemo7: TRLDBMemo;
    mFornec: TRLMemo;
    RLLabel18: TRLLabel;
    RLDBText23: TRLDBText;
    qSId: TIntegerField;
    qSData: TDateTimeField;
    qSIdConta: TIntegerField;
    qSidMov: TIntegerField;
    qSIdUsuario: TIntegerField;
    qSValor: TFloatField;
    qSFpgto: TWideStringField;
    qSValorFpgto: TFloatField;
    qSDesconto: TFloatField;
    qSTotal: TFloatField;
    qSJuros: TFloatField;
    qSTPMov: TWideStringField;
    qSSegundaForma: TWideStringField;
    qSDescri: TWideStringField;
    qSTroco: TFloatField;
    qSF_dinheiro: TFloatField;
    qSF_cheque: TFloatField;
    qSF_debito: TFloatField;
    qSF_credito: TFloatField;
    qSPendente: TWideStringField;
    qSnomeUsu: TWideStringField;
    qStitular: TWideStringField;
    qPId: TIntegerField;
    qPData: TDateTimeField;
    qPIdConta: TIntegerField;
    qPidMov: TIntegerField;
    qPIdUsuario: TIntegerField;
    qPValor: TFloatField;
    qPFpgto: TWideStringField;
    qPValorFpgto: TFloatField;
    qPDesconto: TFloatField;
    qPTotal: TFloatField;
    qPJuros: TFloatField;
    qPTPMov: TWideStringField;
    qPSegundaForma: TWideStringField;
    qPDescri: TWideStringField;
    qPTroco: TFloatField;
    qPF_dinheiro: TFloatField;
    qPF_cheque: TFloatField;
    qPF_debito: TFloatField;
    qPF_credito: TFloatField;
    qPPendente: TWideStringField;
    qPnomeUsu: TWideStringField;
    qPtitular: TWideStringField;
    qEId: TIntegerField;
    qEData: TDateTimeField;
    qEIdConta: TIntegerField;
    qEidMov: TIntegerField;
    qEIdUsuario: TIntegerField;
    qEValor: TFloatField;
    qEFpgto: TWideStringField;
    qEValorFpgto: TFloatField;
    qEDesconto: TFloatField;
    qETotal: TFloatField;
    qEJuros: TFloatField;
    qETPMov: TWideStringField;
    qESegundaForma: TWideStringField;
    qEDescri: TWideStringField;
    qETroco: TFloatField;
    qEF_dinheiro: TFloatField;
    qEF_cheque: TFloatField;
    qEF_debito: TFloatField;
    qEF_credito: TFloatField;
    qEPendente: TWideStringField;
    qEnomeUsu: TWideStringField;
    qEtitular: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fImp_finan: TfImp_finan;


implementation

uses uDM;

{$R *.dfm}


end.
