unit uImpCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB;

type
  TfImpCaixa = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    lTitulo: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    lConta: TRLLabel;
    lUsuario: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    lSaidas: TRLLabel;
    lEntradas: TRLLabel;
    lSaldoTotal: TRLLabel;
    RLBand5: TRLBand;
    RLLabel3: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    lDinE: TRLLabel;
    lCheE: TRLLabel;
    lCreE: TRLLabel;
    lDebE: TRLLabel;
    RLLabel16: TRLLabel;
    lDinS: TRLLabel;
    lCheS: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    lCreS: TRLLabel;
    RLLabel22: TRLLabel;
    lDebS: TRLLabel;
    RLLabel24: TRLLabel;
    lDinT: TRLLabel;
    lcheT: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    lCreT: TRLLabel;
    RLLabel30: TRLLabel;
    lDebT: TRLLabel;
    RLLabel17: TRLLabel;
    lTotE: TRLLabel;
    lTotS: TRLLabel;
    RLLabel21: TRLLabel;
    lTotT: TRLLabel;
    RLLabel25: TRLLabel;
    RLBand63: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLLabel143: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand6: TRLBand;
    RLLabel18: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText3: TRLDBText;
    RLBand7: TRLBand;
    RLDBResult2: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpCaixa: TfImpCaixa;

implementation

uses uDM, uMovCaixa;

{$R *.dfm}

end.
