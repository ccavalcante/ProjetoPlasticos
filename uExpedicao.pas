unit uExpedicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls;

type
  TfExpedicao = class(TForm)
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
    Label2: TLabel;
    edNF: TEdit;
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
  fExpedicao: TfExpedicao;
  nNFVinculadaExpedicao, nCial : integer;
  conf_ex :String;

implementation

uses uDM;

{$R *.dfm}

procedure TfExpedicao.acConfirmaExecute(Sender: TObject);
begin
  nCial := cbCial.KeyValue;
  try
    nNFVinculadaExpedicao   := strtoint(edNf.Text);
  except
    nNFVinculadaExpedicao   := 0;
  end;

  conf_ex := 'S';
  Close;

end;

procedure TfExpedicao.acSairExecute(Sender: TObject);
begin
  nCial   := 0;
  nNFVinculadaExpedicao     := 0;

  conf_ex := 'N';
  Close;

end;

procedure TfExpedicao.FormCreate(Sender: TObject);
begin
   qCial.Open;
end;

procedure TfExpedicao.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      SelectNext(ActiveControl, True, True);
      Key := #0;
   end;
end;

end.
