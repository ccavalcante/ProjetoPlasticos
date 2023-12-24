unit uBxParcial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ActnList, XiButton, jpeg, ExtCtrls, System.Actions;

type
  TfBxParcial = class(TForm)
    Image1: TImage;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    ActionList1: TActionList;
    acConfirmar: TAction;
    acSair: TAction;
    edValor: TEdit;
    Label1: TLabel;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBxParcial: TfBxParcial;
  ValorBaixado : real;
  ConfirmadoBP : String;

implementation

uses Math, uDM;

{$R *.dfm}

procedure TfBxParcial.acSairExecute(Sender: TObject);
begin
 ConfirmadoBP := 'N';
 Close;
end;

procedure TfBxParcial.acConfirmarExecute(Sender: TObject);
begin
 ConfirmadoBP := 'N';
 if (edValor.Text <> '') then
  begin
   ValorBaixado := StrToFloat(edValor.Text);

   if ValorBaixado > 0 then
      ConfirmadoBP := 'S';
      
  end;

 Close;
end;

procedure TfBxParcial.FormKeyPress(Sender: TObject; var Key: Char);
begin
 If (Key = #13 ) Then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;

end;

procedure TfBxParcial.FormCreate(Sender: TObject);
begin                   {
DM.Sequenciais.Edit;
DM.SequenciaisRENEGOCIACAO.Value := DM.SequenciaisRENEGOCIACAO.AsInteger + 1;
DM.Sequenciais.Post;
DM.IBTransaction1.CommitRetaining;    }
end;

end.
