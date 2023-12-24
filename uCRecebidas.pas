unit uCRecebidas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, Mask, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, CheckDBGrid, System.Actions;

type
  TfCRecebidas = class(TForm)
    Image1: TImage;
    EdCod: TEdit;
    EdNom: TEdit;
    ActionList1: TActionList;
    Estorno: TAction;
    sair: TAction;
    EdTotal: TEdit;
    Label1: TLabel;
    EdValTot: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    Label4: TLabel;
    edDt1: TMaskEdit;
    edDT2: TMaskEdit;
    T: TZQuery;
    upT: TZUpdateSQL;
    D: TDataSource;
    DBGrid1: TCheckDBGrid;
    acVenda: TAction;
    TId: TIntegerField;
    TEmissao: TDateTimeField;
    TIdCliente: TIntegerField;
    TDocumento: TWideStringField;
    TVenci: TDateTimeField;
    TValor: TFloatField;
    TBaixa: TWideStringField;
    TidBaixa: TIntegerField;
    TDtPagto: TDateTimeField;
    TValPago: TFloatField;
    TidVenda: TIntegerField;
    TIdUsuario: TIntegerField;
    TEx: TIntegerField;
    TNOME: TWideStringField;
    Tx: TWideStringField;
    TJuros: TFloatField;
    TDesconto: TFloatField;
    TTotal: TFloatField;
    TFpgto1: TWideStringField;
    TValor1: TFloatField;
    TFpgto2: TWideStringField;
    TValor2: TFloatField;
    Tidcondpgto: TIntegerField;
    Tobs: TWideMemoField;
    Tdoc_bx_parcial: TWideStringField;
    TTipo: TWideStringField;
    Tidnf: TIntegerField;
    Label5: TLabel;
    DBMemo1: TDBMemo;
    Tgerado_boleto: TWideStringField;
    Tidemp: TIntegerField;
    Label8: TLabel;
    cbEmp: TComboBox;
    Tfantasia: TWideStringField;
    acImp: TAction;
    TidBaixa2: TIntegerField;
    XiButton1: TXiButton;
    procedure EstornoExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edDT2Exit(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TAfterPost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpChange(Sender: TObject);
    procedure acImpExecute(Sender: TObject);
  private
    { Private declarations }
    alterando : String;
  public
    { Public declarations }
    Totalbx : real;
    tot   : real;
    vAberto : boolean;
    procedure ativaQ;
    Procedure Seleciona;
    procedure totTotal;
  end;

var
  fCRecebidas: TfCRecebidas;

implementation

uses uDM, uEstorno, uFuncao, tbExtenso, uSenhaCad ;

{$R *.dfm}

procedure TfCRecebidas.EstornoExecute(Sender: TObject);
begin
  if Totalbx <> 0 then
  begin
    Application.CreateForm(TfSenhaCad, fSenhaCad);
    fSenhaCad.ShowModal;
    fSenhaCad.Free;

    if IdUsuario = 0 then Exit;

    if RespCad = 'N' then  Exit;

    if temPermissao(IdUsuario, 'EXTO_CRECEBIDA') = false then
      Exit;

   DM.Cx.Open;
   DM.Cx.Insert;
   DM.CxData.Value    := now; // Date;
   DM.CxIDCONTA.Value := 1;
   DM.CxTpMov.Value := 'E';
   DM.CxIdUsuario.Value := dm.qUserId.Value;
   DM.CxIdMov.Value := TID.Value;
   DM.CxValor.Value := Totalbx*(-1);
   dM.CxF_Dinheiro.Value := Totalbx*(-1);
   DM.CxFpgto.Value      := 'DINHEIRO' ;
   DM.CxValorfPGTO.Value := Totalbx*(-1);
   DM.CxtOTAL.Value      := Totalbx*(-1);
   DM.CxDescri.Value     := 'ESTORNO - ' + EdNom.text;
   DM.CxJuros.Value      := 0;
   DM.CxDesconto.Value   := 0;

   Application.CreateForm(TfEstorno, fEstorno);
   tipo := 'E';
   fEstorno.ShowModal;
   fEstorno.Free;

   T.ApplyUpdates;
   ativaQ;
   DM.Cx.Close;

   totTotal;

  end;

end;

procedure TfCRecebidas.sairExecute(Sender: TObject);
begin
  if vAberto = false then
    execSQL('update cliente set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text);

  close;
end;

procedure TfCRecebidas.Seleciona;
var Cod : integer;
begin
Cod := TID.Value;
Totalbx := 0;

{ if TX.AsString = 'T' then
  BEGIN
    T.Edit;
    TX.Value := 'F';
    T.Post;
  END
 else
  BEGIN
    T.Edit;
    TX.Value := 'T';
    T.Post;
  END;

  T.ApplyUpdates;
 }

  totTotal;

  T.Locate('Id', Cod , []);


end;

procedure TfCRecebidas.TAfterPost(DataSet: TDataSet);
var
   TP : sTRING;
   rg, idbx : integer;
begin
  T.ApplyUpdates;

  if alterando = 'S' then
     Exit;

  rg := T.RecNo;
  idbx := TidBaixa.AsInteger;
  tp   := trim(Tx.Text);
  T.First;
  alterando := 'S';
  while T.eof = false do
  begin
    if TidBaixa.AsInteger = idbx then
    begin
       T.Edit;
       TX.Value := tp;
       T.Post;
    end;
    T.Next;
  end;
  alterando := 'N';
  T.recno := rg;
end;

procedure TfCRecebidas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCRecebidas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key = #32) then
 Seleciona;
end;

procedure TfCRecebidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree;
fCRecebidas := nil;
end;

procedure TfCRecebidas.FormCreate(Sender: TObject);
begin
   EmpresaComboZero( cbEmp );

   dm.qFormas.close;
   dm.qFormas.open;
   dm.qFormas.First;
   dbgrid1.Columns[10].PickList.Clear;
   dbgrid1.Columns[11].PickList.Clear;
   while dm.qFormas.Eof = false do
   begin
      dbgrid1.Columns[10].PickList.Add(uppercase(dm.qFormasDescricao.AsString) );
      dbgrid1.Columns[11].PickList.Add(uppercase(dm.qFormasDescricao.AsString) );
      dm.qFormas.Next;
   end;
   vAberto := false;

end;

procedure TfCRecebidas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if TX.Value = 'T'  then
 begin
  DBGrid1.Canvas.Brush.Color := $009D9DFF; // Vermelho
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
 end;

end;



procedure TfCRecebidas.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) and not (ActiveControl is TDBGrid) then
  begin
   Key := #0;
   SelectNext(ActiveControl, True, True);

 end;
end;

procedure TfCRecebidas.edDT2Exit(Sender: TObject);
begin

   ativaQ;
end;

procedure TfCRecebidas.acImpExecute(Sender: TObject);
Var
  vIdBaixa : String;
  vrecNo : Integer;
begin
  vIdBaixa := '';
  vrecNo := T.RecNo;
  T.First;
  while T.Eof = false do
  begin
    if TX.AsString = 'T' then
    begin
       if TIdBaixa2.AsInteger > 0 then
        vIdBaixa := vIdBaixa + TidBaixa.Text +','+TidBaixa2.Text+','
       else
        vIdBaixa := vIdBaixa + TidBaixa.Text +',';
    end;
    T.next
  end;

  if vIdBaixa = '' then
  begin
    T.RecNo := vRecNo;
    if TidBaixa2.AsInteger > 0 then   //jeito anterior
      reciboPagRec(Tidemp.AsInteger, 'R', TidBaixa.Text +','+TidBaixa2.Text)
    else
      reciboPagRec(Tidemp.AsInteger, 'R', TidBaixa.Text);
  end
  else
  begin
    vidBaixa := copy(vIdBaixa, 0, length(vIdBaixa) - 1);
    reciboPagRec(Tidemp.AsInteger, 'R',vIdBaixa);
  end;
end;

procedure TfCRecebidas.ativaQ;
begin
   T.Close;
   T.ParamByName('cli').value := EdCod.Text;
   if edDt1.Text = '  /  /    'then
    begin
     T.ParamByName('dd').Value := 0;
     T.ParamByName('di').Value := Date;
     T.ParamByName('df').Value := Date;
    end
   else
    begin
     T.ParamByName('dd').Value := 1;
     T.ParamByName('di').Value := StrToDate(edDt1.Text);
     T.ParamByName('df').Value := StrToDate(edDT2.Text);
    end;
   T.ParamByName('emp').value := fCRecebidas.cbemp.ItemIndex;
   T.Open;


end;

procedure TfCRecebidas.cbEmpChange(Sender: TObject);
begin
   ativaQ;
end;

procedure TfCRecebidas.DBGrid1CellClick(Column: TColumn);
var
  rg :integer;
begin
  if uppercase(column.FieldName) = 'X' then
  begin
   rg := T.recno;
   totTotal;
   T.recno := rg;
  end;
  
end;

procedure TfCRecebidas.totTotal;
var
  idbx : integer;
begin

  T.First;
  Tot := 0;
  TotalBx := 0;

  idbx := 0;
  while T.Eof = False do
   begin
     Tot      := Tot     + Tvalpago.AsFloat;
     if TX.Value =  'T' then
      begin
       //if idbx <> Tidbaixa.AsInteger then
       //begin
       //   idbx := Tidbaixa.AsInteger;
          Totalbx  := Totalbx + Tvalpago.AsFloat;
       //end;
      end;
    T.Next;
   end;

 T.First;

 EdValTot.Text := FormatFloat('##,###,###,##0.00', Tot);
 EdTotal.Text := FormatFloat('##,###,###,##0.00',  Totalbx);


end;


end.
