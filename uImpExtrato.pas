unit uImpExtrato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfImpExtrato = class(TForm)
    rpLista: TRLReport;
    RLBand3: TRLBand;
    RLDBMemo3: TRLDBMemo;
    RLLabel10: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel11: TRLLabel;
    Q: TZQuery;
    D: TDataSource;
    QIdVenda: TIntegerField;
    Qvalor: TFloatField;
    Qidproduto: TIntegerField;
    QValIt: TFloatField;
    RLGroup2: TRLGroup;
    RLBand4: TRLBand;
    RLDBText6: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand2: TRLBand;
    RLDBText10: TRLDBText;
    RLDBMemo2: TRLDBMemo;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel1: TRLLabel;
    RLBand1: TRLBand;
    lTotal: TRLLabel;
    RLDBText5: TRLDBText;
    Qid: TIntegerField;
    rpListaA4: TRLReport;
    RLBand5: TRLBand;
    RLDBMemo1: TRLDBMemo;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel3: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLDBText8: TRLDBText;
    RLLabel4: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand6: TRLBand;
    RLDBText9: TRLDBText;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLBand7: TRLBand;
    RLDBText14: TRLDBText;
    RLDBMemo4: TRLDBMemo;
    RLBand8: TRLBand;
    lTotal2: TRLLabel;
    Qqtd: TFloatField;
    Qunit: TFloatField;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    QNOME: TWideStringField;
    Qdescricao: TWideStringField;
    Qidcx: TIntegerField;
    Qdocumento: TWideStringField;
    Qtt: TWideStringField;
    Qemissao: TDateTimeField;
    Qvenci: TDateTimeField;
    Qdata: TDateTimeField;
    Qemail: TWideStringField;
    RLBand63: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLLabel143: TRLLabel;
    procedure RLGroup2BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpExtrato: TfImpExtrato;

implementation

uses uDM;

{$R *.dfm}

procedure TfImpExtrato.RLGroup2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Qtt.Value = 'V' then begin
     RLDBtext6.Text := 'Venda: ';
     RLDBtext5.Text := 'Dt Venda: ';
     RLDBtext5.DataField := 'data';
  end
  else begin
     RLDBtext6.Text := 'Conta: ' ;
     RLDBtext5.Text := 'Nº Venda: ';
     RLDBtext5.DataField := 'num_venda';
  end;


end;

end.
