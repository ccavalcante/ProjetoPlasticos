unit uImpCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfImpCliente = class(TForm)
    rpListaCliente: TRLReport;
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
    rpListaTipo: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel2: TRLLabel;
    RLBand3: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    qCli: TZQuery;
    dCli: TDataSource;
    qCliId: TIntegerField;
    qCliNome: TWideStringField;
    qCliCidade: TWideStringField;
    qCliUF: TWideStringField;
    qClitel1: TWideStringField;
    qClitel2: TWideStringField;
    qClitel3: TWideStringField;
    qClitipo: TWideStringField;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLBand5: TRLBand;
    RLDBResult1: TRLDBResult;
    RLLabel9: TRLLabel;
    qClicpfcnpj: TWideStringField;
    rpCPFCNPJ: TRLReport;
    RLBand6: TRLBand;
    RLDBText10: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel10: TRLLabel;
    RLBand7: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand8: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLLabel11: TRLLabel;
    RLBand9: TRLBand;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
    RLBand10: TRLBand;
    RLDBResult2: TRLDBResult;
    RLLabel17: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpCliente: TfImpCliente;

implementation

uses uDM, uCadCli;

{$R *.dfm}

end.
