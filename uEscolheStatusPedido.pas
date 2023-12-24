unit uEscolheStatusPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions;

type
  TfEscolheStatusPedido = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    Label1: TLabel;
    cbSt: TComboBox;
    XiButton5: TXiButton;
    acConfirma: TAction;
    Label2: TLabel;
    mMotivo: TMemo;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
    procedure cbStClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nSt, mot: String;
  end;

var
  fEscolheStatusPedido: TfEscolheStatusPedido;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheStatusPedido.acConfirmaExecute(Sender: TObject);
begin

  if trim(cbSt.text) = 'Digitado' then nSt := 'D'
  else
  if trim(cbSt.text) = 'Aprovado Comercial'  then nSt := 'G'
  else
  if trim(cbSt.text) = 'Aprovado Financeiro' then nSt := 'H'
  else
  if trim(cbSt.text) = 'Reprovado'           then nSt := 'J';
  mot := trim(mmotivo.text);
  Close;

end;

procedure TfEscolheStatusPedido.acSairExecute(Sender: TObject);
begin
  nSt := '';
  Mot := '';
  Close;

end;

procedure TfEscolheStatusPedido.cbStClick(Sender: TObject);
var
   tp:boolean;
begin
  if pos('Reprovado', trim(cbSt.text)) > 0 then
     tp := true
  else
     tp := false;

  label2.Visible   := tp;
  mMotivo.Visible  := tp;

  if tp then
    Height := 226
  else
    Height := 136;

end;

end.
