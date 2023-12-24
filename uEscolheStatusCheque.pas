unit uEscolheStatusCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions;

type
  TfEscolheStatusCheque = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    Label1: TLabel;
    cbSt: TComboBox;
    XiButton5: TXiButton;
    acConfirma: TAction;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nStatus: Integer;
  end;

var
  fEscolheStatusCheque: TfEscolheStatusCheque;
  conf_em_st :String;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheStatusCheque.acConfirmaExecute(Sender: TObject);
begin

{ case
          when (THR024.st = 0) AND ((CONTA.tipo = 'N') or (THR024.IDCONTA = 0)) then
      0     'ABERTO               '
          when (THR024.st = 0) AND (CONTA.tipo = 'B') then
      1     'DEPOSITADO           '
          WHEN THR024.st = 1 THEN
      2     'COMPENSADO           '
          when THR024.st = 2 THEN
      3     'DEVOLVIDO            '
          when THR024.ST = 3 THEN
      4     'REPASSADO            '
          when THR024.ST = 4 THEN
      5     'DESCONTADO           '
          when THR024.ST = 5 THEN
      6     'DEVOLVIDO (SEM FUNDO)'
}
  case cbSt.ItemIndex of
    0,1 : nStatus := 0;
    2   : nStatus := 1;
    3   : nStatus := 2;
    4   : nStatus := 3;
    5   : nStatus := 4;
    6   : nStatus := 5;
  end;

  conf_em_st := 'S';

  Close;

end;

procedure TfEscolheStatusCheque.acSairExecute(Sender: TObject);
begin
  nStatus := 99;
  conf_em_st := 'N';
  Close;

end;

end.
