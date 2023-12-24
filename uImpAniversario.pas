unit uImpAniversario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfImpAniversario = class(TForm)
    rpAniversario: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand5: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText19: TRLDBText;
    RLBand6: TRLBand;
    RLLabel3: TRLLabel;
    lTitulo: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel1: TRLLabel;
    Q: TZQuery;
    D: TDataSource;
    QNome: TWideStringField;
    Qdtnasc: TDateTimeField;
    Qtel1: TWideStringField;
    Qcontato: TWideStringField;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLBand63: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLLabel143: TRLLabel;
    procedure RLDBText10AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pTotal : Real;
  end;

var
  fImpAniversario: TfImpAniversario;

implementation

uses uDM ;

{$R *.dfm}

procedure TfImpAniversario.RLDBText10AfterPrint(Sender: TObject);
begin
   rldbtext10.DataField := dm.qParametropesqproduto.Text;
end;

end.
