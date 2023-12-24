unit uimpOc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   RLReport, RLBarcode,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfimpOc = class(TForm)
    rpOC: TRLReport;
    RLBand78: TRLBand;
    RLDBText472: TRLDBText;
    RLSystemInfo22: TRLSystemInfo;
    RLLabel646: TRLLabel;
    RLBand79: TRLBand;
    RLLabel647: TRLLabel;
    RLDBResult94: TRLDBResult;
    RLDBResult95: TRLDBResult;
    RLBand80: TRLBand;
    RLDBText508: TRLDBText;
    RLDBText518: TRLDBText;
    RLDBText519: TRLDBText;
    RLDBText520: TRLDBText;
    RLDBText521: TRLDBText;
    RLBand81: TRLBand;
    RLLabel650: TRLLabel;
    RLDBText522: TRLDBText;
    RLDBText523: TRLDBText;
    RLLabel651: TRLLabel;
    RLLabel652: TRLLabel;
    RLDBText524: TRLDBText;
    RLLabel653: TRLLabel;
    RLLabel654: TRLLabel;
    RLLabel655: TRLLabel;
    RLLabel656: TRLLabel;
    RLDBText525: TRLDBText;
    RLDBText531: TRLDBText;
    RLLabel661: TRLLabel;
    RLLabel662: TRLLabel;
    RLDBText532: TRLDBText;
    RLLabel663: TRLLabel;
    RLDBText533: TRLDBText;
    RLLabel657: TRLLabel;
    RLDBMemo25: TRLDBMemo;
    RLBand82: TRLBand;
    RLSystemInfo23: TRLSystemInfo;
    RLLabel672: TRLLabel;
    rpOC_mod2: TRLReport;
    RLBand1: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand2: TRLBand;
    RLLabel2: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand4: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLBand5: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel14: TRLLabel;
    RLPanel1: TRLPanel;
    RLPanel2: TRLPanel;
    RLPanel3: TRLPanel;
    RLLabel3: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText14: TRLDBText;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText29: TRLDBText;
    RLPanel4: TRLPanel;
    RLDBText31: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText35: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText36: TRLDBText;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText40: TRLDBText;
    RLLabel39: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText10: TRLDBText;
    RLPanel5: TRLPanel;
    RLDBText32: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel38: TRLLabel;
    RLLabel40: TRLLabel;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLLabel41: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText46: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLDBText47: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLLabel46: TRLLabel;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLLabel47: TRLLabel;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLLabel30: TRLLabel;
    RLLabel48: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBText30: TRLDBText;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText41: TRLDBText;
    RLDBText54: TRLDBText;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLPanel6: TRLPanel;
    RLLabel13: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel60: TRLLabel;
    procedure FormCreate(Sender: TObject);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLPanel2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    qt:integer;
  public
    { Public declarations }
  end;

var
  fimpOc: TfimpOc;

implementation

uses uDM, uFuncao, tbExtenso;

{$R *.dfm}

procedure TfimpOc.FormCreate(Sender: TObject);
var
  pp : String;
begin

  if trim(dm.qParametropesqproduto.text) = 'ID' then
     pp := 'IDPRODUTO'
  else
     pp := trim(dm.qParametropesqproduto.text);

  rldbtext519.DataField := pp;

end;

procedure TfimpOc.RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  dm.qImpOC.prior;
end;

procedure TfimpOc.RLPanel2BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  case dm.qImpOCtpfrete.AsInteger of
    1: RLLabel60.Caption := 'CIF';
    2: RLLabel60.Caption := 'FOB';
  end;

end;

end.
