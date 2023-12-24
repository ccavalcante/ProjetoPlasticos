unit uGridOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, ActnList, StdCtrls, Buttons,
  XiButton, DBCtrls, System.Actions, Data.DB, Vcl.ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfGridOC = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    inserir: TAction;
    alterar: TAction;
    excluir: TAction;
    pesquisar: TAction;
    imprimir: TAction;
    sair: TAction;
    XiButton2: TXiButton;
    XiButton1: TXiButton;
    XiButton3: TXiButton;
    XiButton5: TXiButton;
    XiButton6: TXiButton;
    Label1: TLabel;
    edPesq: TEdit;
    Label5: TLabel;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    ckTodas: TCheckBox;
    Label11: TLabel;
    cbEmp: TComboBox;
    qCompra: TZQuery;
    dCompra: TDataSource;
    Label2: TLabel;
    qCompraId: TIntegerField;
    qCompraDATA: TDateTimeField;
    qCompraidFornecedor: TIntegerField;
    qCompraidcondpgto: TIntegerField;
    qCompraValor: TFloatField;
    qCompraDESCONTO: TFloatField;
    qCompraTotal: TFloatField;
    qCompraFRETE: TFloatField;
    qCompratpfrete: TIntegerField;
    qCompraidUsuario: TIntegerField;
    qCompraOBS: TWideStringField;
    qCompraEx: TIntegerField;
    qCompraX: TWideStringField;
    qCompraidemp: TIntegerField;
    qCompraNOME: TWideStringField;
    qComprafantasia: TWideStringField;
    qComprast: TWideStringField;
    Label3: TLabel;
    cbStatus: TComboBox;
    Label9: TLabel;
    Shape3: TShape;
    Label13: TLabel;
    Shape6: TShape;
    qComprastatus: TWideStringField;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure sairExecute(Sender: TObject);
    procedure inserirExecute(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure excluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imprimirExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edPesqChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpChange(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure edDt1Change(Sender: TObject);
    procedure edDt2Change(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qCompraAfterScroll(DataSet: TDataSet);
  private
    orde, campo:String;
    procedure ativaQ;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fGridOC : TfGridOC;
  reg         : integer;
implementation

uses uDM, uFuncao, uOC;

{$R *.dfm}

procedure TfGridOC.DBGrid1TitleClick(Column: TColumn);
var Ordem : String;
begin
  if Orde = 'desc' then
     Orde := 'asc'
  else
     Orde := 'desc';

  Campo := uppercase(Column.Field.FieldName);

 if Campo = 'NOME' then
    Campo := 'fornecedor.NOME'
 else
 if Campo = 'FANTASIA' then
    Campo := 'empresa.fantasia'
 else
    Campo := 'compra.' + Column.Field.FieldName;
 ativaQ;

end;

procedure TfGridOC.sairExecute(Sender: TObject);
begin
   Close;
end;

procedure TfGridOC.inserirExecute(Sender: TObject);
begin
 if not FormEstaCriado(TfOC) then
 begin
    StatusOC := 'I';
    Application.CreateForm(TfOC, fOC);
 end;
 fOC.Show;

end;

procedure TfGridOC.qCompraAfterScroll(DataSet: TDataSet);
begin
 if qComprastatus.Text = 'C'  then
  begin
    alterar.Enabled := False;
    excluir.Enabled := False;
  end
 else
  begin
    alterar.Enabled := True;
    excluir.Enabled := True;
  end;

end;

procedure TfGridOC.alterarExecute(Sender: TObject);
begin
  if qCompra.IsEmpty then
     Exit;

 if not FormEstaCriado(TfOC) then
 begin
    StatusOC := 'E';
    CodOC := qCompraID.Value;
    reg := qCompra.RecNo;
    Application.CreateForm(TfOC, fOC);
 end;
 fOC.Show;

end;

procedure TfGridOC.excluirExecute(Sender: TObject);
begin

  if qCompra.IsEmpty then
     Exit;

  if Application.MessageBox('Deseja Excluir?','Confirmação', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION) = idno then
     exit;

  ExecSQL('Update oc set ex = 1 where ID       = '+IntToStr(qCompraID.Value));
  ativaQ;

end;

procedure TfGridOC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fGridOC := nil;
end;

procedure TfGridOC.FormCreate(Sender: TObject);
begin
   orde   := 'DESC';
   campo  := 'oc.id ';
   edDt1.DateTime := Date - 30;
   edDt2.DateTime := Date ;

   EmpresaComboZero( cbEmp );

end;

procedure TfGridOC.imprimirExecute(Sender: TObject);
begin
  if qCompra.IsEmpty then
     Exit;

  fOC.Imprimir(qCompraID.Value);

end;

procedure TfGridOC.cbEmpChange(Sender: TObject);
begin
   ativaQ;
end;

procedure TfGridOC.ckTodasClick(Sender: TObject);
begin
 if ckTodas.Checked then
  begin
    edDt1.Enabled := false;
    edDt2.Enabled := false;
  end
  else
  begin
    edDt1.Enabled := true;
    edDt2.Enabled := true;
  end;
  ativaQ;
end;

procedure TfGridOC.FormActivate(Sender: TObject);
begin
   ativaQ;

end;

procedure TfGridOC.ativaQ;
var
  dd : integer;
  di, df : TDate;
  sql, vStatus : string;
begin

  di := eddt1.Date;
  df := eddt2.Date;
  if ckTodas.Checked then
     dd := 0
  else
     dd := 1;

  vStatus := '';
  if cbStatus.ItemIndex > 0 then
    vStatus := ' and oc.status =  ' + QuotedStr(copy(cbStatus.text,1,1));

  sql := ' select oc.*, fornecedor.NOME, empresa.fantasia ,  ' +
         ' case oc.status when ''C'' then ''Comprado'' else ''Aberto'' end st '+
         ' from oc '+
         ' left join fornecedor ON fornecedor.id = oc.IDFORNECEDOR '+
         ' left join empresa on empresa.id = oc.idemp '+
         ' where oc.ex = 0 and fornecedor.nome like :pesq '+
         ' and ((:dd = 0) or ( oc.data between :di and :df))  '+
         ' and ((:emp = 0) or ( oc.idemp = :emp))  '+ vStatus+
         ' Order By '+ campo +' ' + orde;

  qCompra.Close;
  qCompra.SQL.Clear;
  qCompra.SQL.Add( sql );
  qCompra.ParamByName('dd').asinteger  := dd;
  qCompra.ParamByName('di').asdate     := di;
  qCompra.ParamByName('df').asdate     := df;
  qCompra.ParamByName('pesq').value    := '%'+trim(edpesq.Text)+'%';
  qCompra.ParamByName('emp').asinteger := strtoint(copy(cbEmp.text,1,1));
  qCompra.Open;

end;


procedure TfGridOC.edDt1Change(Sender: TObject);
begin
   eddt2.OnChange := nil;
   eddt2.Date     := eddt1.Date;
   eddt2.OnChange := edDt2Change;
   ativaQ;

end;

procedure TfGridOC.edDt2Change(Sender: TObject);
begin
   if eddt2.Date < eddt1.Date then
   begin
      eddt1.OnChange := nil;
      eddt1.Date     := eddt2.Date;
      eddt1.OnChange := edDt1Change;
   end;
   ativaQ;

end;

procedure TfGridOC.edPesqChange(Sender: TObject);
begin
  ativaQ;

end;

procedure TfGridOC.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (qComprastatus.Value = 'C') then // Comprado
   DBGrid1.Canvas.Brush.Color := $00FFCB97;

  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field, State);
end;

procedure TfGridOC.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

end.
