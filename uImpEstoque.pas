unit uImpEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, jpeg, DB, Math;

type
  TfImpEstoque = class(TForm)
    rpEstoque: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLBand6: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    lTitulo: TRLLabel;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel2: TRLLabel;
    lLote: TRLLabel;
    lData: TRLLabel;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    lTipoE: TRLLabel;
    RLLabel143: TRLLabel;
    RLPanel1: TRLPanel;
    lPeriodo: TRLLabel;
    lempresa: TRLLabel;
    lEstoque: TRLLabel;
    lTipo: TRLLabel;
    lproduto: TRLLabel;
    lgrupo: TRLLabel;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDraw1: TRLDraw;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText2: TRLDBText;
    dbLote: TRLDBText;
    dbData: TRLDBText;
    dbTipoE: TRLDBText;
    bdSomaGrupo: TRLBand;
    RLDBResult2: TRLDBResult;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpEstoque: TfImpEstoque;

implementation

uses uDM, uEstoque;

{$R *.dfm}

{ TfImpOP }



end.
