unit uEscolheEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.DBCtrls;

type
  TfEscolheEmail = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    XiButton5: TXiButton;
    acConfirma: TAction;
    Label2: TLabel;
    edEmail: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    lPedido: TLabel;
    lNome: TLabel;
    XiButton1: TXiButton;
    Bevel1: TBevel;
    Label1: TLabel;
    edEmaiC: TEdit;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     conf_Email, conf_EmailC :String;
  end;

var
  fEscolheEmail: TfEscolheEmail;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheEmail.acConfirmaExecute(Sender: TObject);
begin
  conf_email  := trim(edemail.text);
  conf_emailc := trim(edemaiC.text);
  Close;

end;

procedure TfEscolheEmail.acSairExecute(Sender: TObject);
begin
  conf_email  := '';
  conf_emailc := '';
  Close;

end;

procedure TfEscolheEmail.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      SelectNext(ActiveControl, True, True);
      Key := #0;
   end;
end;

end.
