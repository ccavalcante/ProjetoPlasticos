unit uCnsBoletos_I;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   RLReport;

type
  TfCnsBoletos_I = class(TForm)
    rp: TRLReport;
    RLBand7: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLBand8: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLDBText21: TRLDBText;
    ltitulo: TRLLabel;
    RLBand1: TRLBand;
    RLLabel12: TRLLabel;
    RLBand2: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    lnome: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText8: TRLDBText;
    lPeriodo: TRLLabel;
    lDist: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCnsBoletos_I: TfCnsBoletos_I;

implementation

uses uCnsBoletos;

{$R *.dfm}

end.
