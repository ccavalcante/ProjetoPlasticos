unit uEscolheOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids, CheckDBGrid;

type
  TfEscolheOC = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    Label1: TLabel;
    XiButton5: TXiButton;
    acConfirma: TAction;
    edPesq: TEdit;
    CheckDBGrid1: TCheckDBGrid;
    dOc: TDataSource;
    qOc: TZQuery;
    XiButton1: TXiButton;
    qOcId: TIntegerField;
    qOcDATA: TDateTimeField;
    qOcidFornecedor: TIntegerField;
    qOcnomecli: TWideStringField;
    qOcTotal: TFloatField;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
    procedure CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPesqChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nOc: integer;
  end;

var
  fEscolheOC: TfEscolheOC;
  conf_oc :String;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheOC.acConfirmaExecute(Sender: TObject);
begin

  nOc      := qOcId.AsInteger;
  conf_oc  := 'S';
  Close;

end;

procedure TfEscolheOC.acSairExecute(Sender: TObject);
begin
  nOc      := 0;
  conf_oc  := 'N';
  Close;

end;

procedure TfEscolheOC.CheckDBGrid1DblClick(Sender: TObject);
begin
  acConfirma.Execute;

end;

procedure TfEscolheOC.CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key := #0;
      acConfirma.Execute;
   end;

end;

procedure TfEscolheOC.edPesqChange(Sender: TObject);
begin
   qOc.close;
   qOc.ParamByName('pesq').Value  := '%' + trim(edPesq.Text) + '%';
   qOc.Open;

end;

procedure TfEscolheOC.FormCreate(Sender: TObject);
begin
   qOc.close;
   qOc.ParamByName('pesq').Value  := '%' + trim(edPesq.Text) + '%';
   qOc.Open;
end;

end.
