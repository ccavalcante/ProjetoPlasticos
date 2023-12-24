unit uComi_Pagar2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, CheckDBGrid,
  System.Actions;

type
  TfComi_Pagar2 = class(TForm)
    Image1: TImage;
    EdTotal: TEdit;
    EdValTot: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label1: TLabel;
    EdCod: TEdit;
    EdNom: TEdit;
    ckTodas: TCheckBox;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape2: TShape;
    DBGrid1: TCheckDBGrid;
    ActionList1: TActionList;
    acNovo: TAction;
    Excluir: TAction;
    Baixa: TAction;
    sair: TAction;
    acCompras: TAction;
    acEditar: TAction;
    XiButton6: TXiButton;
    Shape3: TShape;
    Label7: TLabel;
    procedure acNovoExecute(Sender: TObject);
    procedure ExcluirExecute(Sender: TObject);
    procedure BaixaExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ckTodasClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalBaixa : Real;
    Procedure Seleciona;
    Procedure Total;
  end;

var
  fComi_Pagar2: TfComi_Pagar2;
  TotCliC : real;
  CodcliC, NomCliC : String;
  IdPagamentosC : Integer;

implementation

uses uDM, uBaixa, uFuncao,  uSenhaCad, uNovoComiPagar, uValoresPagarC;

{$R *.dfm}

procedure TfComi_Pagar2.acNovoExecute(Sender: TObject);
begin

if EdCod.Text = '' then
 begin
  Application.MessageBox('Vendedor não Preenchido!','Atenção');
  EdCod.SetFocus;
 end
else
 begin
  DM.qComiPagar.Insert;
  DM.qComiPagarIDvendedor.AsInteger := StrToInt(EdCod.Text);
  DM.qComiPagarEMISSAO.Value := Date;
  DM.qComiPagarIDUSUARIO.Value := dm.qUserId.Value;

  Application.CreateForm(TfNovoComiPagar, fNovoComiPagar);
  fNovoComiPagar.ShowModal;
  fNovoComiPagar.Free;

  DM.qComiPagar.Close;
  DM.qComiPagar.Open;

  dbgrid1.DataSource := nil;
  DM.qComiPagar.First;
  while DM.qComiPagar.Eof = False do
    begin
     if DM.qComiPagarX.Value =  'T' then
      TotalBaixa := TotalBaixa + DM.qComiPagar.FieldByName('Total').AsFloat;

     DM.qComiPagar.Next;
    end;

  dbgrid1.DataSource := DM.dComiPagar;
  EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);
 end;



end;

procedure TfComi_Pagar2.ExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Confirma Cancelamento?','Confirmação',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idno then
     exit;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then begin
     Exit;
  end;

if DM.qComiPagar.Active then
 begin
  if (DM.qComiPagarTIPO.Value <> 'C') then
   begin
    GravaLogFinan(dm.qUserID.Value, dm.qComiPagarId.asInteger, dm.qComiPagarIdVendedor.asInteger, 'Comissão a Pagar', 'CANCELAR', 'Cancelar lançamento', 'V');
    ExecSQL('update comi_pagar set ex = 1 where id = '+ IntToStr(DM.qComiPagarID.Value));
    DM.qComiPagar.ApplyUpdates;
    DM.qComiPagar.Close;
    DM.qComiPagar.Open;
   end
  else
   Application.MessageBox('Conta Gerada de Compra. Não é possível Cancelar!','Aviso');
 end
else
 begin
  Application.MessageBox('Não há contas para excluir! Escolha um vendedor!','Aviso');
  EdCod.SetFocus;
 end;


end;

procedure TfComi_Pagar2.BaixaExecute(Sender: TObject);
begin

if TotalBaixa <> 0 then
 begin
   Application.CreateForm(TfBaixa, fBaixa);
   cCodCompra := dm.qComiPagarIDvenda.Value;
   dm.Cx.Open;
   dm.Cx.Insert;
   DM.CxData.Value := now; //Date;
   DM.CxTpMov.Value := 'Z';
   DM.CxIdUsuario.Value := dm.qUserId.Value;
   DM.CxIdMov.Value := dm.qComiPagarID.Value;
   DM.CxDescri.Value := 'PAGAMENTO DE COMISSAO';
   DM.CxValor.Value  := TotalBaixa;
   DM.CxTotal.Value  := TotalBaixa;
   DM.CxDesconto.Value  := 0;
   DM.Cxjuros.Value     := 0;

   cCodCli := dm.qComiPagarIdVendedor.asInteger;
   origem := 'Z';  // comissao
   fbaixa.ValorPago := totalbaixa;
   fBaixa.ShowModal;
   fBaixa.Free;

   if DM.Cx.State in [dsEdit, dsInsert] then
      DM.Cx.Cancel;


   dm.qComiPagar.Close;
   DM.qComiPagar.Open;

   // Recalcular Valor Total a Receber do Cliente
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select SUM(total) AS TOT  '+
           'from comi_pagar '+
           'where idvendedor = '+trim(EdCod.Text)+' and baixa = '+QuotedStr('N')+' and ex = 0  ');
   DM.qSelect.Open;
   EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);
   TotalBaixa := 0;
   EdTotal.Clear;

 end
else
 Application.MessageBox('Não há conta selecionada para Baixar!','Aviso');


end;

procedure TfComi_Pagar2.sairExecute(Sender: TObject);
begin
  close;
end;

procedure TfComi_Pagar2.Seleciona;
var Cod : integer;
begin
  Cod := DM.qComiPagar.fieldbyname('ID').AsInteger;
  TotalBaixa := 0;

  DM.qComiPagar.Close;
  DM.qComiPagar.Open;

  dbgrid1.DataSource := nil;
  DM.qComiPagar.First;
  while DM.qComiPagar.Eof = False do
    begin
     if DM.qComiPagarX.Value =  'T' then
      TotalBaixa := TotalBaixa + DM.qComiPagar.FieldByName('Total').AsFloat;
     DM.qComiPagar.Next;
    end;

  dbgrid1.DataSource := DM.dComiPagar;
  EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);
  DM.qComiPagar.Locate('ID', Cod , []);

  // Somar valor total de debito do cliente
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('select SUM(total) AS TOT  from comi_pagar '+
       ' where idvendedor = '+trim(EdCod.Text)+' and baixa = '+QuotedStr('N')+
       ' and ex = 0 ');
  DM.qSelect.Open;
  EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);

end;

procedure TfComi_Pagar2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key = #32) then
 if key = #13 then begin
    if DM.qComiPagarX.Value = 'T' then begin
       Application.CreateForm(TfValoresPagarC, fValoresPagarC);
       fValoresPagarC.ShowModal;
       fValoresPagarC.Free;
    end;
 end;

 Seleciona;

end;

procedure TfComi_Pagar2.Total;
begin

  dbgrid1.DataSource := nil;
  DM.qComiPagar.First;
  TotCliC := 0;
  while DM.qComiPagar.Eof = False do
   begin
    TotCliC := TotCliC + DM.qComiPagarTOTAL.AsFloat;
    DM.qComiPagar.Next;
   end;
 DM.qComiPagar.First;
 dbgrid1.DataSource := DM.dComiPagar;

 EdValTot.Text := FormatFloat('##,###,###,##0.00', TotCliC);

end;

procedure TfComi_Pagar2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if DM.qComiPagar.State in [dsedit] then
  DM.qComiPagar.Post;

 DM.qComiPagar.Close;

 Action := caFree;
 fComi_Pagar2 := nil;
end;

procedure TfComi_Pagar2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (DM.qComiPagarVENCI.Value < Date) and
    (column.FieldName = 'VENCI')   then
  begin
   DBGrid1.Canvas.Brush.Color := $00B5FBF5;
  end;

 if (DM.qComiPagarVENCI.Value < Date) and
    (column.FieldName = 'VALOR')   then
  begin
   DBGrid1.Canvas.Brush.Color := $00B5FBF5;
  end;

 if (DM.qComiPagarTipo.Value = 'D') and
    (POS( DM.qComiPagarObs.text, 'DESPESA FIXA') > 0)  and
    (column.FieldName = 'VENCI') and
    (DM.qComiPagarValor.Value = DM.qComiPagarValor.Value) then
  begin
   DBGrid1.Canvas.Brush.Color := $009D9DFF;
  end;

 if (DM.qComiPagarTipo.Value = 'D') and
    (POS( DM.qComiPagarObs.text, 'DESPESA FIXA') > 0)  and
    (column.FieldName = 'VALOR')  and
    (DM.qComiPagarValor.Value = DM.qComiPagarValor.Value) then
  begin
   DBGrid1.Canvas.Brush.Color := $009D9DFF;
  end;


 if DM.qComiPagarX.Value = 'T'  then
  DBGrid1.Canvas.Brush.Color := $00D8FFB0; //verde     // $009D9DFF; Vermelho


 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
end;

procedure TfComi_Pagar2.ckTodasClick(Sender: TObject);
begin
 TotalBaixa := 0;
 if ckTodas.Checked then
  begin

   dbgrid1.DataSource := nil;
   DM.qComiPagar.First;
   while DM.qComiPagar.Eof = False do
    begin
     DM.qComiPagar.Edit;
     DM.qComiPagarX.Value := 'T';
     DM.qComiPagar.Post;
     TotalBaixa := TotalBaixa + DM.qComiPagar.FieldByName('Total').AsFloat;
     DM.qComiPagar.Next;
    END;
  end
 else
  begin
   DM.qComiPagar.First;
   while DM.qComiPagar.Eof = False do
    begin
     DM.qComiPagar.Edit;
     DM.qComiPagarX.Value := 'F';
     DM.qComiPagar.Post;
     DM.qComiPagar.Next;
    END;
  end;
  dbgrid1.DataSource := DM.dComiPagar;

   DM.qComiPagar.Close;
   DM.qComiPagar.Open;

   EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);

end;



procedure TfComi_Pagar2.DBGrid1CellClick(Column: TColumn);
var Cod : Integer;
begin
 if DBGrid1.SelectedIndex = 7 then
  begin
   TotalBaixa := 0;
   Cod := DM.qComiPagarID.Value;
    dbgrid1.DataSource := nil;
    DM.qComiPagar.First;
    while DM.qComiPagar.Eof = False do
     begin
      if DM.qComiPagarX.Value =  'T' then
       TotalBaixa := TotalBaixa + DM.qComiPagarTOTAL.AsFloat;

      DM.qComiPagar.Next;
     end;
    dbgrid1.DataSource := DM.dComiPagar;
    EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);
    DM.qComiPagar.Locate('id', Cod , []);
  end;


end;

procedure TfComi_Pagar2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfComi_Pagar2.FormActivate(Sender: TObject);
begin
 dbgrid1.DataSource := nil;
 DM.qComiPagar.First;
    while DM.qComiPagar.Eof = False do
     begin
      if DM.qComiPagarX.Value =  'T' then
        begin
         DM.qComiPagar.Edit;
         DM.qComiPagarX.Value :=  'F';
         TotalBaixa := TotalBaixa + DM.qComiPagarTOTAL.AsFloat;
         dm.qComiPagar.Post;
        end;
      DM.qComiPagar.Next;
     end;
 dbgrid1.DataSource := DM.dComiPagar;
 dm.qComiPagar.ApplyUpdates;
 DM.qComiPagar.Close;
 DM.qComiPagar.Open;
 Dbgrid1.Refresh;

end;

procedure TfComi_Pagar2.acEditarExecute(Sender: TObject);
begin

 if EdCod.Text = '' then
 begin
  Application.MessageBox('Vendedor não Preenchido!','Atenção');
  EdCod.SetFocus;
 end
 else
 begin
  DM.qComiPagar.Edit;
  GravaLogFinan(dm.qUserID.Value, dm.qComiPagarId.asInteger, dm.qComiPagarIdVendedor.asInteger, 'Comissão a Pagar', 'EDITAR', 'Editar lançamento', 'V');
  Application.CreateForm(TfNovoComiPagar ,fNovoComiPagar);
  fNovoComiPagar.DBEdit3.Enabled := False;
  fNovoComiPagar.ShowModal;
  fNovoComiPagar.Free;
  DM.qComiPagar.Close;
  DM.qComiPagar.Open;
  dbgrid1.DataSource := nil;
  DM.qComiPagar.First;
  TotalBaixa := 0;
  while DM.qComiPagar.Eof = False do
  begin
     if DM.qComiPagarX.Value =  'T' then
      TotalBaixa := TotalBaixa + DM.qComiPagar.FieldByName('Total').AsFloat;
     DM.qComiPagar.Next;
  end;
  dbgrid1.DataSource := DM.dComiPagar;
  EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);
 end;



end;

end.
