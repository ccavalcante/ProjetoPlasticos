unit uEscolheComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions;

type
  TfEscolheComissao = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    XiButton5: TXiButton;
    acConfirma: TAction;
    Panel1: TPanel;
    pVen: TPanel;
    edComi: TEdit;
    Label1: TLabel;
    pGer: TPanel;
    Label2: TLabel;
    edComiG: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    procedure acSairExecute(Sender: TObject);
    procedure acConfirmaExecute(Sender: TObject);
    procedure edComiKeyPress(Sender: TObject; var Key: Char);
    procedure edComiGKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    nComis, nComisG: real;
  end;

var
  fEscolheComissao: TfEscolheComissao;
  conf_comi :String;

implementation

uses uDM;

{$R *.dfm}

procedure TfEscolheComissao.acConfirmaExecute(Sender: TObject);
begin
  try
    nComis := strtofloat(edComi.text);
  except
    edComi.clear;
    exit;
  end;

  if dm.qParametromod_gerente_cial.Text = 'S' then
  begin
    try
      nComisG := strtofloat(edComiG.text);
    except
      edComiG.clear;
      exit;
    end;
  end;
  conf_comi := 'S';

  Close;

end;

procedure TfEscolheComissao.acSairExecute(Sender: TObject);
begin
  nComis    := -1;
  nComisG   := -1;
  conf_comi := 'N';
  Close;

end;

procedure TfEscolheComissao.edComiGKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     key := #0;
     XiButton5.SetFocus;
  end;

end;

procedure TfEscolheComissao.edComiKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     key := #0;
     if pGer.Visible then
        edComiG.SetFocus
     else
        XiButton5.SetFocus;
  end;
end;

end.
