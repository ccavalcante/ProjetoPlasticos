unit uImpSA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, RLReport;

type
  TfImpSA = class(TForm)
    rpLista: TRLReport;
    RLBand4: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLBand5: TRLBand;
    RLDBText10: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand6: TRLBand;
    RLLabel3: TRLLabel;
    lTitulo: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel1: TRLLabel;
    RLBand7: TRLBand;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel8: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpSA: TfImpSA;

implementation

{$R *.dfm}

uses uCadSemiAcabado;

end.
