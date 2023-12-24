unit uCPagas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB, XiButton, CheckDBGrid,
  System.Actions, Vcl.ComCtrls;

type
  TfCPagas = class(TForm)
    Image1: TImage;
    EdCod: TEdit;
    EdNom: TEdit;
    ActionList1: TActionList;
    Estorno: TAction;
    sair: TAction;
    EdTotal: TEdit;
    EdValTot: TEdit;
    Label2: TLabel;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    gdPesq: TDBGrid;
    DBGrid1: TCheckDBGrid;
    Label3: TLabel;
    Label8: TLabel;
    cbEmp: TComboBox;
    ckFor: TRadioButton;
    ckTra: TRadioButton;
    acImp: TAction;
    XiButton1: TXiButton;
    edDT1: TDateTimePicker;
    Label1: TLabel;
    edDT2: TDateTimePicker;
    ckTodas: TCheckBox;
    edDtP1: TDateTimePicker;
    Label5: TLabel;
    edDtp2: TDateTimePicker;
    ckTodasP: TCheckBox;
    procedure EstornoExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EdCodKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodExit(Sender: TObject);
    procedure EdNomChange(Sender: TObject);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure ckForClick(Sender: TObject);
    procedure ckTraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure acImpExecute(Sender: TObject);
    procedure edDT1Change(Sender: TObject);
    procedure edDT2Change(Sender: TObject);
    procedure edDtP1Change(Sender: TObject);
    procedure edDtp2Change(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure ckTodasPClick(Sender: TObject);
  private
    procedure limpaCampos;
    function tabEscolha: String;
    { Private declarations }
  public
    { Public declarations }
    tpFinan: String;
    Total, vTotPago : real;
    procedure ativaQ;
    Procedure Seleciona;
  end;

var
  fCPagas: TfCPagas;

implementation

uses uDM, uValoresPagar, uEstorno, uBaixa, uFuncao, uSenhaCad;//uPesq , uNovoCPagar,

{$R *.dfm}

procedure TfCPagas.EstornoExecute(Sender: TObject);
begin

if Total <> 0 then
 begin
   DM.Cx.Open;
   // ABRIR TELA DE RECEBIMENTO
   DM.Cx.Insert;
   DM.CxDATA.Value       := now; //Date;
   DM.CxVALOR.Value      := Total;
   DM.CxF_DINHEIRO.Value := Total;
   DM.CxTOTAL.Value      := Total;
   DM.CxIDMOV.Value      := DM.qCPagar.FieldByName('id').Value;
   DM.CxTPMOV.Value      := 'E';
   DM.CxFpgto.Value      := 'DINHEIRO' ;
   DM.CxIDUSUario.Value  := DM.qUserId.Value;
   DM.CxIDCONTA.Value    := 1;
   DM.CxDescri.Value     := 'ESTORNO - ' + EdNom.text;

   Application.CreateForm(TfEstorno, fEstorno);
   tipo := 'P';
   fEstorno.ShowModal;
   fEstorno.Free;

   DM.qCPagar.ApplyUpdates;
   ativaQ;

   // Recalcular Valor Total a Receber do Cliente
   {DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select (SUM(cpagar.VALOR) + SUM(cpagar.JUROS) - SUM(cpagar.DESCONTO)) AS TOT  '+
           'from cpagar '+
           'where idfornecedor = '+EdCod.Text+' and baixa = '+QuotedStr('S')+' and ex = 0 ');
   DM.qSelect.Open;
   EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);  }
   //Agora pega de acordo com o filtro na ativaQ

   Total := 0;
   EdTotal.Clear;
 end;


end;

procedure TfCPagas.sairExecute(Sender: TObject);
begin
  if ckTra.checked then
    execSQL('update TRANSPORTADORA set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text)
  else
    execSQL('update fornecedor set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text);

  close;
end;

procedure TfCPagas.DBGrid1TitleClick(Column: TColumn);
begin

  DM.qCPagar.Close;
  DM.qCPagar.SQL.Clear;
  DM.qCPagar.SQL.Add(' select cpagar.*, dfixa.valor valorfixo, '+
                     ' centrocusto.descricao, empresa.fantasia , coalesce(compra.numnota, cpagar.ped_nota) numnota '+
                     ' from CPagar '+
                     ' left join centrocusto on centrocusto.id = CPagar.idcusto '+
                     ' left join dfixa on dfixa.id = cpagar.idcompra and cpagar.tipo = ''D'' '+
                     ' left join empresa on empresa.id = cpagar.idemp '+
                     ' left join compra on compra.id = cpagar.idcompra and cpagar.tipo = ''C'' '+
                     ' where cpagar.IDFORNECEDOR = :cli '+
                     ' and cpagar.baixa = :bx and cpagar.ex = 0 '+
                     ' and ((:emp = 0) or (cpagar.idemp = :emp)) '+
                     ' and ((:tp = ''X'') or (cpagar.tipofinan = :tp)) '+
                     ' order by '+ Column.Field.FieldName);
  ativaQ;

end;

procedure TfCPagas.Seleciona;
var Cod : integer;
begin
Cod := DM.qCPagar.fieldbyname('id').AsInteger;
Total := 0;
{if DM.qCPagar.FieldByName('X').AsString = 'T' then
  BEGIN
    DM.qCPagar.Edit;
    DM.qCPagarX.Value := 'F';
    DM.qCPagar.Post;
  END
 else
  BEGIN
    DM.qCPagar.Edit;
    DM.qCPagarX.Value := 'T';
    DM.qCPagar.Post;
  END;
}
ativaQ;

DM.qCPagar.First;
while DM.qCPagar.Eof = False do
  begin
     if DM.qCPagarX.Value =  'T' then
      Total := Total + DM.qCPagar.FieldByName('Total').AsFloat;

     DM.qCPagar.Next;
  end;

EdTotal.Text := FormatFloat('##,###,###,##0.00', Total);
DM.qCPagar.Locate('id', Cod , []);

// Somar valor total do cliente
{DM.qSelect.Close;
DM.qSelect.SQL.Clear;
DM.qSelect.SQL.Add('select  (SUM(coalesce(cpagar.VALOR,0)) + SUM(coalesce(cpagar.JUROS,0)) - SUM(coalesce(cpagar.DESCONTO,0))) AS TOT '+
          'from cpagar '+
          'where idfornecedor = '+EdCod.Text+' and baixa = '+QuotedStr('S')+' and ex = 0 ');
DM.qSelect.Open;    }
   //EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);
   //Agora pega de acordo com o filtro  na ativaQ

end;

procedure TfCPagas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key = #32) then
 Seleciona;
end;

procedure TfCPagas.EdCodKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   key := #0;
   edNom.SetFocus;
 end;

end;

procedure TfCPagas.edDT1Change(Sender: TObject);
begin
  ativaQ;
end;

procedure TfCPagas.edDT2Change(Sender: TObject);
begin
  ativaQ;
end;

procedure TfCPagas.edDtP1Change(Sender: TObject);
begin
 ativaQ;
end;

procedure TfCPagas.edDtp2Change(Sender: TObject);
begin
  ativaQ;
end;

procedure TfCPagas.DBGrid1DblClick(Sender: TObject);
begin
 Seleciona;
end;

procedure TfCPagas.FormActivate(Sender: TObject);
begin
   if edCod.Text <> '' then
      edCodExit(Application)
    else
       DM.qCPagar.close;
   gdpesq.Visible := false;

end;

procedure TfCPagas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.qCPagar.Close;

Action := caFree;
fCPagas := nil;
end;

procedure TfCPagas.FormCreate(Sender: TObject);
begin
   EmpresaComboZero( cbEmp );

end;

procedure TfCPagas.FormShow(Sender: TObject);
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

   if ckTodasP.Checked then
  begin
    edDtP1.Enabled := false;
    edDtP2.Enabled := false;
  end
  else
  begin
    edDtP1.Enabled := true;
    edDtP2.Enabled := true;
  end;

   gdpesq.Visible := false;
end;

procedure TfCPagas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DM.qCPagarX.Value = 'T'  then
 begin
  DBGrid1.Canvas.Brush.Color := $009D9DFF; // Vermelho
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
 end;

end;

procedure TfCPagas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfCPagas.EdCodExit(Sender: TObject);
begin
  if EdCod.Text <> '' then
   begin
    EdTotal.Clear;
    EdValTot.Clear;
    EdNom.Clear;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, Nome from '+ tabEscolha +' where id = '+trim(EdCod.Text) );
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     begin
      ShowMessage('Código de '+ tabEscolha +' invalido');
      EdNom.Text := '';
      edNom.SetFocus;
     end
    else
     Begin
       EdNom.Text := dm.qPesq.fieldbyname('nome').AsString;
       gdpesq.Visible := false;

       ExecSQL('update cpagar set X = '+QuotedStr('F')+
            'where tipofinan = '+QuotedStr(tpFinan) +' and idfornecedor = '+EdCod.Text+' and baixa = '+QuotedStr('S')+' and ex = 0 ');

       ativaQ;
       DM.qSelect.Close;

       // totaliza
       {DM.qSelect.SQL.Clear;
       DM.qSelect.SQL.Add('select  (SUM(coalesce(cpagar.VALOR,0)) + SUM(coalesce(cpagar.JUROS,0)) - SUM(coalesce(cpagar.DESCONTO,0))) AS TOT '+
              'from cpagar '+
              'where tipofinan = '+QuotedStr(tpFinan) +' and idfornecedor = '+EdCod.Text+' and baixa = '+QuotedStr('S')+' and ex = 0 ');
       DM.qSelect.Open;  }
       //EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);
       //Agora pega de acordo com o filtro na ativaQ
       gdpesq.Visible := false;
       DBGrid1.SetFocus;
     end;
   end;
end;

procedure TfCPagas.EdNomChange(Sender: TObject);
begin
  if edNom.Text <> '' then
    Begin
      DM.qPesq.Close;
      DM.qPesq.SQL.Clear;
      DM.qPesq.SQL.Add('Select id, nome from '+ tabEscolha +
                       ' where nome like '+ quotedstr('%'+EdNom.Text+'%')+
                       ' order by nome' );
      DM.qPesq.Open;
      if DM.qPesq.IsEmpty then
        gdPesq.Visible := false
      else
        gdPesq.Visible := true;
    end
  else
    gdPesq.Visible := false;
end;

procedure TfCPagas.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus
  else
   DBGrid1.SetFocus;
end;

procedure TfCPagas.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCPagas.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      edCod.Text := dm.qPesq.fieldbyname('id').AsString;
      edCodExit(Application);
      gdPesq.Visible := false;
    end;
end;

procedure TfCPagas.EdNomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_UP THEN
  IF dm.qPesq.Bof THEN
     EdNom.SetFocus;
end;

procedure TfCPagas.cbEmpClick(Sender: TObject);
begin
   ativaQ;
end;

procedure TfCPagas.ckForClick(Sender: TObject);
begin
  ckTra.Checked := not ckFor.Checked;
  limpaCampos;
end;

procedure TfCPagas.ckTodasClick(Sender: TObject);
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

procedure TfCPagas.ckTodasPClick(Sender: TObject);
begin
  if ckTodasP.Checked then
  begin
    edDtP1.Enabled := false;
    edDtP2.Enabled := false;
  end
  else
  begin
    edDtP1.Enabled := true;
    edDtP2.Enabled := true;
  end;
  ativaQ;
end;

procedure TfCPagas.ckTraClick(Sender: TObject);
begin
  ckFor.Checked := not ckTra.Checked;
  limpaCampos;

end;

procedure TfCPagas.DBGrid1CellClick(Column: TColumn);
begin
  if Column.Index = 6 then
    begin
      if dm.qCPagarX.Value = 'T' then
         Total := Total + dm.qCPagarVALPAGO.Value
        else
         Total := Total - dm.qCPagarVALPAGO.Value;
      EdTotal.Text := FormatFloat('##,###,###,##0.00', (Total) );
    end;
end;

procedure TfCPagas.acImpExecute(Sender: TObject);
begin
 if DM.qCPagaridBaixa2.AsInteger > 0 then
  reciboPagRec(dm.qCPagaridemp.AsInteger,'P', DM.qCPagaridBaixa.Text + ', '+DM.qCPagaridBaixa2.Text, 0)
 else
  reciboPagRec(dm.qCPagaridemp.AsInteger,'P', DM.qCPagaridBaixa.Text, 0);

end;

procedure TfCPagas.ativaQ;
begin
  DM.qCPagar.Close;

  if trim(edCod.Text) = '' then
     Exit;

  DM.qCPagar.ParamByName('bx').Value  := 'S';
  DM.qCPagar.ParamByName('cli').Value := trim(edCod.text);
  DM.qCPagar.ParamByName('emp').Value := cbEmp.ItemIndex;
  DM.qCPagar.ParamByName('tp').Value  := tpFinan;

  if ckTodas.Checked then
   begin
    DM.qCPagar.ParamByName('dd').Value := 0;
    DM.qCPagar.ParamByName('di').AsDate := Date;
    DM.qCPagar.ParamByName('df').AsDate := Date;
   end
  else
   begin
    DM.qCPagar.ParamByName('dd').Value := 1;
    DM.qCPagar.ParamByName('di').AsDate := edDT1.Date;
    DM.qCPagar.ParamByName('df').AsDate := edDT2.Date;
   end;

  if ckTodasP.Checked then
   begin
    DM.qCPagar.ParamByName('dp').Value := 0;
    DM.qCPagar.ParamByName('dpi').AsDate := Date;
    DM.qCPagar.ParamByName('dpf').AsDate := Date;
   end
  else
   begin
    DM.qCPagar.ParamByName('dp').Value := 1;
    DM.qCPagar.ParamByName('dpi').AsDate := edDTp1.Date;
    DM.qCPagar.ParamByName('dpf').AsDate := edDTp2.Date;
   end;
  DM.qCPagar.Open;

  //Agora pega de acordo com o filtro
   vTotPago := 0;
   dm.qCPagar.first;
   while dm.qCPagar.eof = false do
   begin
     vTotPago := vtotPago + dm.qCPagarValPago.asFloat;
     dm.qCPagar.next;
   end;
   EdValTot.Text := FormatFloat('##,###,###,##0.00', vTotPago); //DM.qSelect.FieldByName('TOT').AsFloat
end;


function TfCPagas.tabEscolha:String;
begin
    if ckFor.Checked then Result := 'Fornecedor';
    if ckTra.Checked then Result := 'Transportadora';
end;


procedure TfCPagas.limpaCampos;
begin
  edCod.Clear;
  EdNom.Clear;
  gdPesq.Visible := false;

  ativaQ;

end;


end.
