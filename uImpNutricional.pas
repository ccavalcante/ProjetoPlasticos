unit uImpNutricional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, RLReport;

type
  TfImpNutricional = class(TForm)
    qNutricional: TZQuery;
    qNutricionaldias_validade: TIntegerField;
    qNutricionalficha_tecnica: TWideMemoField;
    dsNutricional: TDataSource;
    rlNutricional_old: TRLReport;
    RLBand1: TRLBand;
    RLDBMemo1: TRLDBMemo;
    lFabricacaotxt: TLabel;
    lValidadetxt: TLabel;
    lLotetxt: TLabel;
    lFabricacao_: TLabel;
    lValidade_: TLabel;
    lLote_: TLabel;
    qNutricionalComposicaoQuali: TWideMemoField;
    qNutricionalSubstituto: TWideMemoField;
    qNutricionalgarantia: TWideStringField;
    qNutricionalIndicacaoUso: TWideStringField;
    qNutricionalModoUso: TWideMemoField;
    qNutricionalPrazovalidade: TWideStringField;
    qNutricionalConservacao: TWideMemoField;
    qNutricionalrestricao: TWideStringField;
    rlNutricional: TRLReport;
    RLBand2: TRLBand;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lFabricacao: TLabel;
    lValidade: TLabel;
    lLote: TLabel;
    RLDBMemo2: TRLDBMemo;
    Label4: TLabel;
    RLDBText1: TRLDBText;
    Label5: TLabel;
    Label6: TLabel;
    RLDBText2: TRLDBText;
    Label7: TLabel;
    RLDBMemo3: TRLDBMemo;
    Label8: TLabel;
    RLDBText3: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    qGarantia: TZQuery;
    dsGarantia: TDataSource;
    qGarantiagarantia: TWideStringField;
    qGarantiavalor: TFloatField;
    qGarantiaunidade: TWideStringField;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    Label12: TLabel;
    RLDBText7: TRLDBText;
    Label13: TLabel;
    RLDBMemo4: TRLDBMemo;
    Label14: TLabel;
    RLDBMemo5: TRLDBMemo;
    RLDBText8: TRLDBText;
    qNutricionaldescricao: TWideStringField;
    RLDBText70: TRLDBText;
    RLBand6: TRLBand;
    RLDBText11: TRLDBText;
    Label15: TLabel;
    Label16: TLabel;
    RLDBText9: TRLDBText;
    Label17: TLabel;
    RLDBText10: TRLDBText;
    Label18: TLabel;
    RLDBText12: TRLDBText;
    Label19: TLabel;
    RLDBText13: TRLDBText;
    Label20: TLabel;
    RLDBText14: TRLDBText;
    Label21: TLabel;
    RLDBText15: TRLDBText;
    Label22: TLabel;
    RLDBText16: TRLDBText;
    Label23: TLabel;
    RLDBText17: TRLDBText;
    Label24: TLabel;
    RLDBText18: TRLDBText;
    Label25: TLabel;
    Label26: TLabel;
    RLDBText19: TRLDBText;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    rlNovo: TRLReport;
    RLBand7: TRLBand;
    Label35: TLabel;
    RLDBText21: TRLDBText;
    RLBand8: TRLBand;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand9: TRLBand;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLBand10: TRLBand;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLBand11: TRLBand;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLBand12: TRLBand;
    Label27: TLabel;
    lFabricacao2: TLabel;
    Label28: TLabel;
    lValidade2: TLabel;
    Label29: TLabel;
    lLote2: TLabel;
    RLBand13: TRLBand;
    RLDBMemo10: TRLDBMemo;
    Label33: TLabel;
    RLBand14: TRLBand;
    RLDBMemo6: TRLDBMemo;
    Label34: TLabel;
    RLBand15: TRLBand;
    Label37: TLabel;
    RLDBText22: TRLDBText;
    RLBand16: TRLBand;
    Label36: TLabel;
    RLDBMemo7: TRLDBMemo;
    RLBand17: TRLBand;
    RLBand18: TRLBand;
    RLDBText23: TRLDBText;
    Label38: TLabel;
    Label40: TLabel;
    RLDBMemo9: TRLDBMemo;
    Label39: TLabel;
    RLDBMemo8: TRLDBMemo;
    rlNovoHorizontal: TRLReport;
    RLBand23: TRLBand;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLBand19: TRLBand;
    Label30: TLabel;
    RLDBText20: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBMemo11: TRLDBMemo;
    RLBand20: TRLBand;
    Label31: TLabel;
    RLDBMemo12: TRLDBMemo;
    RLBand21: TRLBand;
    Label32: TLabel;
    RLBand22: TRLBand;
    Label56: TLabel;
    RLDBText42: TRLDBText;
    RLBand24: TRLBand;
    Label57: TLabel;
    RLDBMemo13: TRLDBMemo;
    RLBand25: TRLBand;
    Label70: TLabel;
    RLDBText43: TRLDBText;
    RLBand26: TRLBand;
    Label71: TLabel;
    RLDBMemo14: TRLDBMemo;
    RLBand27: TRLBand;
    Label72: TLabel;
    RLDBMemo15: TRLDBMemo;
    qGarantia2: TZQuery;
    dsGarantia2: TDataSource;
    RLMemo1: TRLMemo;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlNovoHorizontalBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    vDataFabri : TDate;
    vLote : String;
  end;

var
  fImpNutricional: TfImpNutricional;

implementation

{$R *.dfm}

uses uDM;

procedure TfImpNutricional.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  lFabricacao_.Caption := {'Data de Fabricação: '+} formatDateTime('dd/MM/yyyy', vDataFabri);
  lValidade_.Caption   := {'Data de Validade:   '+} formatDateTime('dd/MM/yyyy', vDataFabri + qNutricionaldias_validade.asInteger);
  lLote_.Caption       := {'Lote:               '+}vLote;
end;

procedure TfImpNutricional.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  qNutricional.Prior;
  lFabricacao.Caption := formatDateTime('dd/MM/yyyy', vDataFabri);
  lValidade.Caption   := formatDateTime('dd/MM/yyyy', vDataFabri + qNutricionaldias_validade.asInteger);
  lLote.Caption       := vLote;

  label78.Caption := formatDateTime('dd/MM/yyyy', vDataFabri);
  label77.Caption   := formatDateTime('dd/MM/yyyy', vDataFabri + qNutricionaldias_validade.asInteger);
  label76.Caption       := vLote;
end;


procedure TfImpNutricional.RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  qNutricional.Prior;
  lFabricacao2.Caption := formatDateTime('dd/MM/yyyy', vDataFabri);
  lValidade2.Caption   := formatDateTime('dd/MM/yyyy', vDataFabri + qNutricionaldias_validade.asInteger);
  lLote2.Caption       := vLote;


end;

procedure TfImpNutricional.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  qNutricional.Prior;
end;

procedure TfImpNutricional.rlNovoHorizontalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  label73.Caption := formatDateTime('dd/MM/yyyy', vDataFabri);
  label74.Caption   := formatDateTime('dd/MM/yyyy', vDataFabri + qNutricionaldias_validade.asInteger);
  label75.Caption       := vLote;
end;

end.
