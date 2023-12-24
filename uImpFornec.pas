unit uImpFornec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfImpFornec = class(TForm)
    rpListaFor: TRLReport;
    RLBand96: TRLBand;
    RLDBText587: TRLDBText;
    RLSystemInfo29: TRLSystemInfo;
    RLLabel693: TRLLabel;
    RLBand97: TRLBand;
    RLDBText588: TRLDBText;
    RLDBText589: TRLDBText;
    RLDBText593: TRLDBText;
    RLDBText604: TRLDBText;
    RLDBText607: TRLDBText;
    RLBand98: TRLBand;
    RLSystemInfo30: TRLSystemInfo;
    RLLabel770: TRLLabel;
    RLBand99: TRLBand;
    RLLabel719: TRLLabel;
    RLLabel738: TRLLabel;
    RLLabel746: TRLLabel;
    RLLabel750: TRLLabel;
    RLBand100: TRLBand;
    RLDBResult103: TRLDBResult;
    RLLabel716: TRLLabel;
    RLLabel1: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpFornec: TfImpFornec;

implementation

uses uDM, UCadFornecedor;

{$R *.dfm}

end.
