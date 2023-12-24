unit uEscolheRelCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions;

type
  TfEscolheRelCliente = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    XiButton5: TXiButton;
    acConfirma: TAction;
    RadioGroup1: TRadioGroup;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nOp : integer;
  end;

var
  fEscolheRelCliente: TfEscolheRelCliente;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheRelCliente.acConfirmaExecute(Sender: TObject);
begin

  nOp := RadioGroup1.ItemIndex;
  Close;

end;

procedure TfEscolheRelCliente.acSairExecute(Sender: TObject);
begin
  nOp := 0;
  Close;

end;

end.
