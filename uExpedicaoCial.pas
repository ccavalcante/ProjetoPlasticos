unit uExpedicaoCial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls;

type
  TfExpedicaoCial = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    Label1: TLabel;
    XiButton5: TXiButton;
    acConfirma: TAction;
    cbCial: TDBLookupComboBox;
    qCial: TZQuery;
    qCialid: TIntegerField;
    qCialdescricao: TWideStringField;
    qCialporcentagem: TFloatField;
    qCialtipo: TWideStringField;
    dCial: TDataSource;
    Label3: TLabel;
    Label4: TLabel;
    lPedido: TLabel;
    lNome: TLabel;
    XiButton1: TXiButton;
    Bevel1: TBevel;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fExpedicaoCial: TfExpedicaoCial;
  nCial : integer;
  conf_ex_cial :String;

implementation

uses uDM;

{$R *.dfm}

procedure TfExpedicaoCial.acConfirmaExecute(Sender: TObject);
begin
  nCial := cbCial.KeyValue;
  conf_ex_cial := 'S';
  Close;

end;

procedure TfExpedicaoCial.acSairExecute(Sender: TObject);
begin
  nCial   := 0;
  conf_ex_cial := 'N';
  Close;

end;

procedure TfExpedicaoCial.FormCreate(Sender: TObject);
begin
   qCial.Open;
end;

procedure TfExpedicaoCial.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      SelectNext(ActiveControl, True, True);
      Key := #0;
   end;
end;

end.
