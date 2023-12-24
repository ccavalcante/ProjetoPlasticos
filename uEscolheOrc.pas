unit uEscolheOrc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids, CheckDBGrid;

type
  TfEscolheOrc = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    Label1: TLabel;
    XiButton5: TXiButton;
    acConfirma: TAction;
    edPesq: TEdit;
    CheckDBGrid1: TCheckDBGrid;
    dOrc: TDataSource;
    qOrc: TZQuery;
    qOrcId: TIntegerField;
    qOrcData: TDateTimeField;
    qOrcTotal: TFloatField;
    qOrcnomecli: TWideStringField;
    XiButton1: TXiButton;
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
    nOrc: integer;
  end;

var
  fEscolheOrc: TfEscolheOrc;
  conf_comi :String;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheOrc.acConfirmaExecute(Sender: TObject);
begin

  nOrc      := qOrcId.AsInteger;
  conf_comi := 'S';
  Close;

end;

procedure TfEscolheOrc.acSairExecute(Sender: TObject);
begin
  nOrc      := 0;
  conf_comi := 'N';
  Close;

end;

procedure TfEscolheOrc.CheckDBGrid1DblClick(Sender: TObject);
begin
  acConfirma.Execute;

end;

procedure TfEscolheOrc.CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      key := #0;
      acConfirma.Execute;
   end;

end;

procedure TfEscolheOrc.edPesqChange(Sender: TObject);
begin
   qOrc.close;
   qOrc.ParamByName('pesq').Value  := '%' + trim(edPesq.Text) + '%';
   qOrc.Open;

end;

procedure TfEscolheOrc.FormCreate(Sender: TObject);
begin
   qOrc.close;
   qOrc.ParamByName('pesq').Value  := '%' + trim(edPesq.Text) + '%';
   qOrc.Open;
end;

end.
