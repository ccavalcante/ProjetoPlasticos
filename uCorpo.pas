unit uCorpo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList;

type
  TfCorpo = class(TForm)
    pCorpo: TPanel;
    Label6: TLabel;
    mCorpo: TMemo;
    Button1: TButton;
    ActionList1: TActionList;
    esc: TAction;
    acCOnf: TAction;
    procedure escExecute(Sender: TObject);
    procedure acCOnfExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCorpo: TfCorpo;
  conf_cp : String;

implementation

{$R *.dfm}

procedure TfCorpo.acCOnfExecute(Sender: TObject);
begin
   conf_cp := 'S';
   close;

end;

procedure TfCorpo.escExecute(Sender: TObject);
begin
  conf_cp := 'N';
  close;
end;

end.
