unit uBaixaArquivo_I;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   RLReport, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfBaixaArquivo_I = class(TForm)
    rp: TRLReport;
    RLBand7: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLBand8: TRLBand;
    RLSystemInfo4: TRLSystemInfo;
    RLDBText21: TRLDBText;
    RLLabel17: TRLLabel;
    RLBand1: TRLBand;
    RLLabel12: TRLLabel;
    RLBand2: TRLBand;
    RLDBResult1: TRLDBResult;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText3: TRLDBText;
    D: TDataSource;
    RLLabel8: TRLLabel;
    Q: TZQuery;
    Qnossonum: TIntegerField;
    Qvalor: TFloatField;
    Qidretorno: TIntegerField;
    Qcod: TIntegerField;
    Qtipo: TWideStringField;
    Qemissao: TDateTimeField;
    Qvenci: TDateTimeField;
    Qnome: TWideStringField;
    Qdocumento: TWideStringField;
    Qbaixa: TWideStringField;
    QJuros: TFloatField;
    QDesconto: TFloatField;
    QDtPagto: TDateTimeField;
    RLLabel7: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLDBResult4: TRLDBResult;
    QValPago: TFloatField;
    RLLabel9: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBaixaArquivo_I: TfBaixaArquivo_I;

implementation

uses  uDM;

{$R *.dfm}

end.
