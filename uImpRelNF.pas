unit uImpRelNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  RLReport, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfImpRelNF = class(TForm)
    rp: TRLReport;
    RLBand60: TRLBand;
    RLSystemInfo31: TRLSystemInfo;
    RLDBText74: TRLDBText;
    ltitulo: TRLLabel;
    RLBand63: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLBand64: TRLBand;
    RLLabel119: TRLLabel;
    RLLabel120: TRLLabel;
    RLBand65: TRLBand;
    RLDBText75: TRLDBText;
    RLDBText77: TRLDBText;
    RLDBText78: TRLDBText;
    RLDBText115: TRLDBText;
    RLBand66: TRLBand;
    RLLabel76: TRLLabel;
    RLDBResult46: TRLDBResult;
    RLDBResult47: TRLDBResult;
    D: TDataSource;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBResult1: TRLDBResult;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    Q: TZQuery;
    Qnf: TIntegerField;
    Qemissao: TDateTimeField;
    Qt_prod: TFloatField;
    Qt_nf: TFloatField;
    Qt_serv: TFloatField;
    Qval_icms: TFloatField;
    Qval_iss: TFloatField;
    QnomeDest: TWideStringField;
    QStNF: TWideStringField;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel143: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpRelNF: TfImpRelNF;

implementation

uses uDM;

{$R *.dfm}

end.
