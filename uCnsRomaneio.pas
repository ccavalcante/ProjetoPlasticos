unit uCnsRomaneio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBCtrls, StdCtrls, jpeg, ExtCtrls,
  ImgList, ComCtrls, XiButton, Mask, Grids, DBGrids, Buttons, ActnList, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Actions, CheckDBGrid;

type
  TfCnsRomaneio = class(TForm)
    XiButton1: TXiButton;
    Label1: TLabel;
    ActionListEx: TActionList;
    acFechar: TAction;
    Image3: TImage;
    cbStatus: TComboBox;
    acImprimir: TAction;
    CheckDBGrid2: TCheckDBGrid;
    Label6: TLabel;
    edSemi: TEdit;
    Label7: TLabel;
    edProcesso: TEdit;
    qRom: TZQuery;
    dRom: TDataSource;
    Label3: TLabel;
    Shape2: TShape;
    Label9: TLabel;
    Shape3: TShape;
    Label10: TLabel;
    Label11: TLabel;
    Shape4: TShape;
    Label4: TLabel;
    edOP: TEdit;
    XiButton2: TXiButton;
    qRomId: TIntegerField;
    qRomData: TDateTimeField;
    qRomHora: TWideStringField;
    qRomIdSubOP: TIntegerField;
    qRomTipo: TWideStringField;
    qRomIdFornecedor: TIntegerField;
    qRomQuantidade: TFloatField;
    qRomBaixadoEst: TWideStringField;
    qRomIdUsuario: TIntegerField;
    qRomqtde_prod: TFloatField;
    qRomx: TWideStringField;
    qRomidProcesso: TIntegerField;
    qRomstatusp: TWideStringField;
    qRomdesc_SA: TWideStringField;
    qRomdesc_PR: TWideStringField;
    qRomST: TWideStringField;
    qRomreferencia: TWideStringField;
    qRomtamanho: TWideStringField;
    qRomcor: TWideStringField;
    edRef: TEdit;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure edSemiChange(Sender: TObject);
    procedure edProcessoChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edOPChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
     procedure AtivaRm;
     procedure ImprimirRomaneio(cod:integer);
  public
    { Public declarations }
  end;

var
  fCnsRomaneio: TfCnsRomaneio;

implementation

uses uDM, uImpOp;

{$R *.dfm}


procedure TfCnsRomaneio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fCnsRomaneio := nil;
end;

procedure TfCnsRomaneio.FormCreate(Sender: TObject);
begin
  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    Checkdbgrid2.Columns[1].Visible := True;
    Checkdbgrid2.Columns[3].Visible := True;
    Checkdbgrid2.Columns[4].Visible := True;

    edRef.visible  := true;
    label2.visible := true;
  end
  else
  begin
    Checkdbgrid2.Columns[1].Visible := false;
    Checkdbgrid2.Columns[3].Visible := false;
    Checkdbgrid2.Columns[4].Visible := false;

    edRef.visible  := false;
    label2.visible := false;

    cbStatus.left := edRef.left; //traz o combo status mais para esquerda
    label1.left   := label2.left;
  end;


  AtivaRm;
end;

procedure TfCnsRomaneio.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) and not (ActiveControl is TDBGrid) THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;

end;

procedure TfCnsRomaneio.acFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfCnsRomaneio.acImprimirExecute(Sender: TObject);
begin
  if qRom.IsEmpty then
     Exit;


  ImprimirRomaneio(qRomIdSubOP.AsInteger);

end;

procedure TfCnsRomaneio.AtivaRm;
var
  vSt : string;
begin
  case cbStatus.ItemIndex of
    0 : vSt := 'T';
    1 : vSt := 'INICIADA';
    2 : vSt := 'PARCIALMENTE PRODUZIDA';
    3 : vSt := 'PRODUÇÃO FINALIZADA';
  end;

  qRom.close;
  qRom.ParamByName('pesq2').value   := '%' + trim(edSemi.Text) + '%';
  qRom.ParamByName('pesq3').Value   := '%' + trim(edProcesso.Text) + '%';
  qRom.ParamByName('st').Asstring   := vSt;
  if trim(edOp.Text) = '' then
     qRom.ParamByName('rm').AsInteger   := 0
   else
     qRom.ParamByName('rm').AsInteger   := strtoint(edop.text);

  qRom.ParamByName('ref').asString  := '%' + trim(edRef.Text) + '%';

  qRom.Open;

end;


procedure TfCnsRomaneio.cbStatusClick(Sender: TObject);
begin
   AtivaRm;
end;

procedure TfCnsRomaneio.CheckDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     checkdbGrid2.Canvas.Brush.Color := $00FCA258;
     checkdbGrid2.Canvas.Font.Color  := clBlack;
  end
  else
 if trim(qRomstatusp.Value) = 'INICIADA' then begin
    checkdbGrid2.Canvas.Brush.Color := $00A6FFFF; // LAR
 end
 else
 if trim(qRomstatusp.Value) = 'PARCIALMENTE PRODUZIDA' then begin
    checkdbGrid2.Canvas.Brush.Color := $00FFFF9D; // LAR
 end
 else
 if trim(qRomstatusp.Value) = 'PRODUÇÃO FINALIZADA' then begin
    checkdbGrid2.Canvas.Brush.Color := $0080FF00; // LAR
 end;

 checkdbGrid2.DefaultDrawDataCell(Rect, checkdbGrid2.Columns[DataCol].Field ,state);
end;

procedure TfCnsRomaneio.edOPChange(Sender: TObject);
begin
 AtivaRm;
end;

procedure TfCnsRomaneio.edProcessoChange(Sender: TObject);
begin
   AtivaRm;
end;

procedure TfCnsRomaneio.edSemiChange(Sender: TObject);
begin
   AtivaRm;
end;

procedure TfCnsRomaneio.ImprimirRomaneio(cod:integer);
begin

   Application.CreateForm( TfImpOp, fImpop);
   fImpOp.qRom.Close;
   fImpOp.qRom.ParamByName('id').value := cod;
   fImpOp.qRom.ParamByName('idP').value := qRomidprocesso.asinteger;
   fImpOp.qRom.Open;

   vEnv_EmailDest := '';
   vEnv_Report    := fImpOp.rpRomaneioSubOp;
   fImpOp.rpRomaneioSubOp.PreviewModal;
   fImpOp.Free;

end;


end.
