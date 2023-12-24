unit uBuscaProdutoImp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, jpeg, ExtCtrls, ActnList, XiButton, DB,
  Grids, DBGrids, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, System.Actions;

type
  TfBuscaProdutoImp = class(TForm)
    Label3: TLabel;
    EdNome: TEdit;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    ActionList1: TActionList;
    confirmar: TAction;
    Sair: TAction;
    Image3: TImage;
    gdPesq: TDBGrid;
    Bevel1: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    lRef: TLabel;
    lDes: TLabel;
    dP: TDataSource;
    qP: TZQuery;
    rdPro: TRadioButton;
    rdMat: TRadioButton;
    qPId: TIntegerField;
    qPdescricao: TWideStringField;
    qPtipo: TWideStringField;
    qPest_seguranca: TFloatField;
    qPest_minimo: TFloatField;
    qPft_conv_un: TWideStringField;
    qPft_conv_qtde: TFloatField;
    qPft_conv_2un: TWideStringField;
    qPproduzido: TWideStringField;
    qPbarras: TWideStringField;
    qPreferencia: TWideStringField;
    qPvalor: TFloatField;
    qPqtdestoque: TFloatField;
    qPCusto_montagem: TFloatField;
    qPcod_Manual: TIntegerField;
    qPcest: TWideStringField;
    qPNCM: TWideStringField;
    qPeIPI: TWideStringField;
    qPobs: TWideMemoField;
    qPPrecoCompra: TFloatField;
    qPIcms: TFloatField;
    qPPIS: TWideStringField;
    qPpPIS: TFloatField;
    qPCOFINS: TWideStringField;
    qPpCOFINS: TFloatField;
    qPIPI: TWideStringField;
    qPpIPI: TFloatField;
    qPcsosn: TWideStringField;
    qPcfop: TWideStringField;
    qPcfop_fora: TWideStringField;
    qPmargem: TFloatField;
    qPex: TIntegerField;
    qPidfornecedor: TIntegerField;
    qPRoyalties: TFloatField;
    qPIDSTRIB: TIntegerField;
    qPREDUCAO: TFloatField;
    qPMARGEMST: TFloatField;
    qPST: TFloatField;
    qPST2: TFloatField;
    qPCSOSN2: TWideStringField;
    qPMVA: TFloatField;
    qPCODIPI: TWideStringField;
    qPIDTIPO_TRIBUTACAO: TIntegerField;
    qPIDORIGEM: TIntegerField;
    qPunidade_nfe: TWideStringField;
    qPvalor2: TFloatField;
    qPpesoLiq: TFloatField;
    qPpesobru: TFloatField;
    qPmultiplo: TFloatField;
    qPcubagem: TFloatField;
    qPDUN14: TWideStringField;
    qPCustoProcesso: TFloatField;
    qPCustoMP: TFloatField;
    qPCustoproducao: TFloatField;
    qPCustoOperacional: TFloatField;
    qPCustoFinal: TFloatField;
    qPVendaSugerido: TFloatField;
    qPIdCxMaster: TIntegerField;
    qPEmbalagem: TWideStringField;
    qPaltura: TFloatField;
    qPlargura: TFloatField;
    qPcomprimento: TFloatField;
    qPidweb: TIntegerField;
    qPsincronizado: TWideStringField;
    qPcustoCxMaster: TFloatField;
    qPmaxDesconto: TFloatField;
    qPdesTipo: TWideStringField;
    procedure SairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodExit(Sender: TObject);
    procedure EdNomeChange(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdNomeKeyPress(Sender: TObject; var Key: Char);
    procedure confirmarExecute(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure rdMatClick(Sender: TObject);
    procedure rdProClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscaProdutoImp: TfBuscaProdutoImp;
  codBusca: integer;
  codTipo : string;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfBuscaProdutoImp.SairExecute(Sender: TObject);
begin
  if rdPro.Checked then
   codTipo := 'P'
  else
   codTipo := 'M';

   codBusca := 0;
   close;
end;

procedure TfBuscaProdutoImp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
fBuscaProdutoImp := nil;
end;

procedure TfBuscaProdutoImp.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not ((activeControl is Tdbgrid) or (activecontrol = ednome ))   then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfBuscaProdutoImp.FormShow(Sender: TObject);
begin
 if codTipo = 'P' then
  begin
   rdMat.Checked := false;
   rdPro.Checked := True;
  end
 else
  begin
   rdPro.Checked := false;
   rdMat.Checked := True;
  end;

end;

procedure TfBuscaProdutoImp.EdCodExit(Sender: TObject);
 VAR Cod, sql : String;
begin

end;

procedure TfBuscaProdutoImp.EdNomeChange(Sender: TObject);
 var tp : String;
begin
  if rdPro.Checked then
     tp := 'P'
  else
     tp := 'M';

  qP.close;
  qP.ParamByName('tp').Value   := tp;
  qP.ParamByName('pesq').Value := '%' + edNome.text + '%';
  qP.open;

end;

procedure TfBuscaProdutoImp.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
     if qP.IsEmpty = false then
        gdPesq.SetFocus;

end;

procedure TfBuscaProdutoImp.EdNomeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     if qP.IsEmpty = false then
        gdPesq.SetFocus;

end;

procedure TfBuscaProdutoImp.confirmarExecute(Sender: TObject);
begin
   if gdPesq.Focused = false then
     gdPesq.SetFocus;

  codBusca :=   qPID.Value;
  if rdPro.Checked then
   codTipo := 'P'
  else
   codTipo := 'M';

  close;
end;

procedure TfBuscaProdutoImp.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
     confirmar.Execute;

end;

procedure TfBuscaProdutoImp.rdMatClick(Sender: TObject);
begin
 EdNome.SetFocus;
end;

procedure TfBuscaProdutoImp.rdProClick(Sender: TObject);
begin
 EdNome.SetFocus;
end;

end.
