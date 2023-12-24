unit uImpProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfImpProduto = class(TForm)
    rpLista: TRLReport;
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
    rpTabela: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLBand2: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLBand3: TRLBand;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand63: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLLabel143: TRLLabel;
    RLBand7: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel8: TRLLabel;
    procedure RLDBText10AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    pTotal : Real;
  end;

var
  fImpProduto: TfImpProduto;

implementation

uses uDM, uCADProduto, uCadTabela;

{$R *.dfm}

procedure TfImpProduto.RLDBText10AfterPrint(Sender: TObject);
begin
   rldbtext10.DataField := dm.qParametropesqproduto.Text;
end;

end.
