unit uGridDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   DBCtrls, StdCtrls, jpeg, ExtCtrls,
  ImgList, ComCtrls, XiButton, Mask, Grids, DBGrids, Buttons, ActnList, Menus,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, System.Actions, CheckDBGrid,
  ZSqlUpdate;

type
  TfGridDev = class(TForm)
    XiButton1: TXiButton;
    Label2: TLabel;
    ActionListEx: TActionList;
    Label5: TLabel;
    acFechar: TAction;
    Image3: TImage;
    qDev: TZQuery;
    dDev: TDataSource;
    XiButton3: TXiButton;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    edVen: TEdit;
    CheckDBGrid1: TCheckDBGrid;
    acCancel: TAction;
    acEdit: TAction;
    XiButton5: TXiButton;
    acNovo: TAction;
    Shape11: TShape;
    Label19: TLabel;
    XiButton4: TXiButton;
    CheckDBGrid2: TCheckDBGrid;
    edCli: TEdit;
    Label3: TLabel;
    Label1: TLabel;
    edPro: TEdit;
    dPro: TDataSource;
    ckTodas: TCheckBox;
    Shape1: TShape;
    Label4: TLabel;
    Label6: TLabel;
    edVenda: TEdit;
    Label7: TLabel;
    cbStatus: TComboBox;
    Label9: TLabel;
    Shape3: TShape;
    Label11: TLabel;
    cbEmp: TComboBox;
    Label24: TLabel;
    qPro: TZQuery;
    XiButton2: TXiButton;
    acNfe: TAction;
    qDevid: TIntegerField;
    qDevidcliente: TIntegerField;
    qDevidvendedor: TIntegerField;
    qDevdata: TDateTimeField;
    qDevvalor: TFloatField;
    qDevnomeCli: TWideStringField;
    qDevnomeVend: TWideStringField;
    qDevex: TIntegerField;
    qDevstatus: TWideStringField;
    qDevdesStatus: TWideStringField;
    qDevnf: TIntegerField;
    qDevidemp: TIntegerField;
    qDevfantasia: TWideStringField;
    qProId: TIntegerField;
    qProIdDev: TIntegerField;
    qProIdProduto: TIntegerField;
    qProTipo: TWideStringField;
    qProQtd: TFloatField;
    qProUnit: TFloatField;
    qProTotal: TFloatField;
    qProx: TWideStringField;
    qProqtd_cx: TFloatField;
    qProdescricao: TWideStringField;
    qPromultiplo: TFloatField;
    qProreferencia: TWideStringField;
    qProbarras: TWideStringField;
    qDevidnf_dev: TIntegerField;
    qProidvenda_i: TIntegerField;
    qDevidvenda: TIntegerField;
    qProqtd_dev: TFloatField;
    qPrototal_dev: TFloatField;
    qProqtd_cx_dev: TFloatField;
    XiButton6: TXiButton;
    acImp: TAction;
    qProunit_dev: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acFecharExecute(Sender: TObject);
    procedure acCancelExecute(Sender: TObject);
    procedure acEditExecute(Sender: TObject);
    procedure AtivaV;
    procedure qDevAfterScroll(DataSet: TDataSet);
    procedure edDt1Change(Sender: TObject);
    procedure edDt2Change(Sender: TObject);
    procedure edVenChange(Sender: TObject);
    procedure acNovoExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckTodasClick(Sender: TObject);
    procedure edDt1KeyPress(Sender: TObject; var Key: Char);
    procedure edDt2KeyPress(Sender: TObject; var Key: Char);
    procedure edDt2Exit(Sender: TObject);
    procedure edDt1Exit(Sender: TObject);
    procedure cbStatusClick(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure acNfeExecute(Sender: TObject);
    procedure acImpExecute(Sender: TObject);

  private
    ti :integer;
  public
    { Public declarations }
  end;

var
  fGridDev: TfGridDev;
  procedure ImprimirDev(cod: Integer);

implementation

uses uDM, uFuncao, uMenu, System.Math, uDevolucao, uNF, uImpressoes;

{$R *.dfm}

procedure TfGridDev.FormCreate(Sender: TObject);
begin
  edDt1.DateTime := Date- 30;
  edDt2.DateTime := Date ;
  ti    := 0;

 //pesq produto
 if dm.qParametropesqproduto.text = 'ID' then
 begin
    CheckDBGrid2.Columns[0].title.caption := 'Código';
    CheckDBGrid2.Columns[0].FieldName     := 'IDPRODUTO';
 end
 else
 begin
   CheckDBGrid2.Columns[0].FieldName     := trim(dm.qParametropesqproduto.text);
   if dm.qParametropesqproduto.text = 'BARRAS' then
      CheckDBGrid2.Columns[0].title.caption := 'Cód.Barras'
   else
      CheckDBGrid2.Columns[0].title.caption := 'Referência';
 end;

 EmpresaComboZero( cbEmp );

 if dm.qParametrovenda_desc_margem.Text = 'S' then //itu aço
 begin
    checkdbgrid2.columns[2].Title.caption := 'Qtde Item';
    checkdbgrid2.columns[4].Title.caption := 'Qtde Kg';
 end;
 


  if dm.qParametromostrar_multiplo.Text = 'N' then //granelli
  begin
    checkdbgrid2.columns[2].Visible       := false;
    checkdbgrid2.columns[3].Visible       := false;
    checkdbgrid2.columns[4].Title.caption := 'Qtde';
  end;


end;

procedure TfGridDev.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and not ((ActiveControl is TDBMemo) or
                        (ActiveControl is TDBGrid)  or
                        (ActiveControl = eddt1) or
                        (ActiveControl = eddt2 ) )THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;

end;

procedure TfGridDev.qDevAfterScroll(DataSet: TDataSet);
begin
  qPro.Close;
  qPro.ParamByName('id').Value := qDevid.Value;
  qPro.Open;

end;

procedure TfGridDev.FormActivate(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridDev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fGridDev := nil;
end;


procedure TfGridDev.acCancelExecute(Sender: TObject);
var
  rg : Integer;
begin

  if (qDev.IsEmpty) then
     exit;

  if (qDevEx.Value = 1)  then
  begin
     Application.MessageBox('Devolução Já Esta Cancelada','Atenção');
     Exit;
  end;

  if (qDevStatus.Value = 'F')  then
  begin
     Application.MessageBox('Devolução com nota fiscal emitida, não será possivel cancelar','Atenção');
     Exit;
  end;

 if Application.MessageBox( 'Deseja Realmente Cancelar este devolução', 'Atenção', mb_yesno ) = idNo then
    Exit;

 rg := qDev.recno;
 ExecSql(' Update dev set ex = 1, status = ''C'' where id = ' + qDevID.Text );
 sleep(100);

 qPro.First;
 while qPro.eof = false do
 begin
    ExecSql(' Update venda_i set devolvido = ''N'' where id = ' + qProidvenda_i.Text );
    sleep(100);
    qPro.Next;
 end;

 //exclui financeiro
 Execsql('update creceber set ex = 1 where tipo = ''Z'' and idvenda = '+ qDevid.Text );

 //volta estoque
 Execsql('delete from estoque where iddev = '+ qDevid.Text );

 //Exclui comissão a pagar
 ExecSQL('delete from comi_pagar where tipo = ''D'' and idvenda = '+ qDevid.text);

 AtivaV;
 qDev.recno := rg;


end;


procedure TfGridDev.acFecharExecute(Sender: TObject);
begin
  close;
end;

procedure TfGridDev.acImpExecute(Sender: TObject);
begin
  if qDev.IsEmpty then
     Exit;
  ImprimirDev( qDevId.Value );
end;

procedure ImprimirDev(cod: Integer);
Begin

  Application.CreateForm(TfImpressoes, fImpressoes);
  fImpressoes.qDev.Close;
  fImpressoes.qDev.ParamByName('id').Value := cod;
  fImpressoes.qDev.open;

  if dm.qParametromostrar_multiplo.Text = 'N' then
  begin
     fImpressoes.RLLabel436.Visible  := false;
     fImpressoes.RLLabel437.Visible  := false;
     fImpressoes.RLDBText353.Visible := false;
     fImpressoes.RLDBText354.Visible := false;
  end;

  vEnv_EmailDest := fImpressoes.qDevemail.text;
  vEnv_Report    := fImpressoes.rpImpDev;
  fImpressoes.rpImpDev.PreviewModal;
  fImpressoes.Free;

end;

procedure TfGridDev.acEditExecute(Sender: TObject);
var
  rg : integer;
begin
  if (qDev.IsEmpty) then
     exit;

  if (qDevEx.Value = 1) or (qDevStatus.Value = 'C') then
  begin
     Application.MessageBox('Devolução Cancelada, Não é possivel alterar','Atenção');
     Exit;
  end;

  if (qDevStatus.Value = 'F')  then
  begin
     Application.MessageBox('Devolução já Finalizado, Verifique!','Atenção');
     Exit;
   end;

  rg := qDev.RecNo;
  if not FormEstaCriado(TfDevolucao) then
  begin
     if StatusDev = '' then
     begin
        StatusDev := 'E';
        CodDev    := qDevid.Value;
     end;
  end;
  fMenu.CriarForm(TfDevolucao );
  qDev.RecNo := rg;


end;



procedure TfGridDev.acNfeExecute(Sender: TObject);
var
   vX : Char;
begin

   if (qDev.IsEmpty) then
       exit;

   if (qDevEx.Value = 1) or (qDevStatus.Value = 'C') then
   begin
     Application.MessageBox('Devolução Cancelada, Não é possivel alterar','Atenção');
     Exit;
   end;

   if (qDevStatus.Value = 'F')  then
   begin
     Application.MessageBox('Devolução já Finalizado, Verifique!','Atenção');
     Exit;
   end;


      vX := #13;
      if not FormEstaCriado(TfNf) then
      begin
         if qDevidnf_dev.AsInteger > 0 then
         begin
            StatusNF := 'I';
            CodNF    := 0;
         end
         else
         begin
            StatusNF := 'E';
            CodNF    := qDevidnf_dev.AsInteger;
         end;
         Application.CreateForm(TfNf, fNF);
         fNF.nf_entrada         := 'S';
         fNF.edPedido.Text      := qDevID.AsString;
         fNF.edPedidoKeyPress(application, vX );
      end;
      fnf.Show;

end;

procedure TfGridDev.acNovoExecute(Sender: TObject);
begin
  if not FormEstaCriado(TfDevolucao) then
  begin
     if StatusDev = '' then
     begin
        StatusDev := 'I';
        CodDev    := 0;
     end;
  end;
  fMenu.CriarForm(TfDevolucao );

end;

procedure TfGridDev.AtivaV;
var
  Emp : integer;
begin

  Emp := strtoint(copy( cbEmp.Items.Strings[cbemp.ItemIndex], 1,1 ));

  qPro.Close;

  qDev.close;
  if ckTodas.Checked then
     qDev.ParamByName('dd').asinteger  := 0
  else
  begin
     qDev.ParamByName('dd').asinteger  := 1;
     qDev.ParamByName('di').asDate  := strtodate(formatdatetime('dd/mm/yyyy',eddt1.Date));
     qDev.ParamByName('df').asDate  := strtodate(formatdatetime('dd/mm/yyyy',eddt2.Date));
  end;
  if trim(edVen.text) = '' then
     qDev.ParamByName('vv').asinteger  := 0
  else
  begin
     qDev.ParamByName('vv').asinteger  := 1;
     qDev.ParamByName('pesqV').Value := '%'  + trim(edVen.Text) + '%' ;
  end;
  if trim(edCli.text) = '' then
     qDev.ParamByName('cc').asinteger  := 0
  else
  begin
     qDev.ParamByName('cc').asinteger  := 1;
     qDev.ParamByName('pesqC').Value := '%'  + trim(edCli.Text) + '%' ;
  end;
  if trim(edPro.text) = '' then
     qDev.ParamByName('pp').asinteger  := 0
  else
  begin
     qDev.ParamByName('pp').asinteger  := 1;
     qDev.ParamByName('pesqP').Value := '%'  + trim(edPro.Text) + '%' ;
  end;
  if trim(edVenda.text) = '' then
     qDev.ParamByName('vd').asinteger  := 0
  else
  begin
     qDev.ParamByName('vd').asinteger  := 1;
     qDev.ParamByName('pesqA').Value   := trim(edVenda.Text) ;
  end;

  case cbStatus.ItemIndex of
    0: qDev.ParamByName('st').value  := 'T';
    1: qDev.ParamByName('st').value  := 'A';
    2: qDev.ParamByName('st').value  := 'C';
    3: qDev.ParamByName('st').value  := 'F';
  end;
  qDev.ParamByName('emp').asinteger  := Emp;

  qDev.Open;
end;


procedure TfGridDev.cbEmpClick(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridDev.cbStatusClick(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridDev.CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     checkdbGrid1.Canvas.Brush.Color := $00FCA258;
     checkdbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if qDevStatus.Value = 'C' then
        checkdbGrid1.Canvas.Brush.Color := $009F9FFF // verc
    else
    if (qDevStatus.Value = 'F') then
       checkdbGrid1.Canvas.Brush.Color := $00A5F58D;
  end;
  checkdbGrid1.DefaultDrawDataCell(Rect, checkdbGrid1.Columns[DataCol].Field ,state);

end;

procedure TfGridDev.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfGridDev.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfGridDev.ckTodasClick(Sender: TObject);
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
  ativaV;

end;

procedure TfGridDev.edVenChange(Sender: TObject);
begin
   ativaV;
end;

procedure TfGridDev.edDt1Change(Sender: TObject);
begin
   eddt2.OnChange := nil;
   eddt2.Date     := eddt1.Date;
   eddt2.OnChange := edDt2Change;
   ativaV;
end;

procedure TfGridDev.edDt1Exit(Sender: TObject);
begin
    ti := 0;
end;

procedure TfGridDev.edDt1KeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) THEN
  BEGIN
     ti := ti +1;
     if ti >= 3 then
        eddt2.SetFocus
     else
        keybd_event(39,0,0,0);
  END;

end;

procedure TfGridDev.edDt2Change(Sender: TObject);
begin
   if eddt2.Date < eddt1.Date then
   begin
      eddt1.OnChange := nil;
      eddt1.Date     := eddt2.Date;
      eddt1.OnChange := edDt1Change;
   end;
   ativaV;
end;

procedure TfGridDev.edDt2Exit(Sender: TObject);
begin
   ti := 0;

end;

procedure TfGridDev.edDt2KeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) THEN
  BEGIN
     ti := ti +1;
     if ti = 3 then
        edvenda.SetFocus
     else
        keybd_event(39,0,0,0);
  END;

end;


end.
