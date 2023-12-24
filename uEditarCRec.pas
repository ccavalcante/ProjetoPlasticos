unit uEditarCRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XiButton, Mask, DBCtrls,
  ActnList, System.Actions;

type
  TfEditarCRec = class(TForm)
    XiButton4: TXiButton;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    XiButton1: TXiButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    ActionList1: TActionList;
    salvar: TAction;
    sair: TAction;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Image2: TImage;
    cbEmp: TDBLookupComboBox;
    Label41: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    cbFormas: TDBComboBox;
    Label9: TLabel;
    procedure sairExecute(Sender: TObject);
    procedure salvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEditarCRec: TfEditarCRec;

implementation

uses uDM, uCReceber2;

{$R *.dfm}

procedure TfEditarCRec.sairExecute(Sender: TObject);
begin
close;
end;

procedure TfEditarCRec.salvarExecute(Sender: TObject);
begin
  selectnext(activecontrol, true, true);
 //fCReceber2.TTOTAL.Value := fCReceber2.TVALOR.Value;//Pega juros e desconto Nilton 18/03/2022
 fCReceber2.T.Post;
 fCReceber2.T.ApplyUpdates;

 sair.Execute;

end;

procedure TfEditarCRec.FormCreate(Sender: TObject);
begin
  FormasDBComboBox(cbFormas, false);

 cbFormas.ItemIndex := cbFormas.Items.IndexOf(fCReceber2.TFpgto1.text);

end;

procedure TfEditarCRec.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #13 THEN
 BEGIN
  SelectNext(ActiveControl, True, True);
  Key := #0;
 END;
end;

end.
