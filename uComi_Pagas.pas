unit uComi_Pagas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB, XiButton, CheckDBGrid,
  System.Actions;

type
  TfComi_Pagas = class(TForm)
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
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    gdPesq: TDBGrid;
    DBGrid1: TCheckDBGrid;
    Label3: TLabel;
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
  private
    ord:string;
    { Private declarations }
  public
    { Public declarations }
    Total : real;
    Procedure Seleciona;
  end;

var
  fComi_Pagas: TfComi_Pagas;

implementation

uses uDM, uValoresPagarC, uEstorno, uBaixa, uFuncao, uSenhaCad;

{$R *.dfm}

procedure TfComi_Pagas.EstornoExecute(Sender: TObject);
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
   DM.CxIDMOV.Value      := DM.qComiPagar.FieldByName('id').Value;
   DM.CxTPMOV.Value      := 'E';
   DM.CxFpgto.Value      := 'DINHEIRO' ;
   DM.CxIDUSUario.Value  := DM.qUserId.Value;
   DM.CxIDCONTA.Value    := 1;
   DM.CxDescri.Value     := 'ESTORNO - ' + EdNom.text;

   Application.CreateForm(TfEstorno, fEstorno);
   tipo := 'Z';   // comissao
   fEstorno.ShowModal;
   fEstorno.Free;

   DM.qComiPagar.ApplyUpdates;
   dm.qComiPagar.Close;
   DM.qComiPagar.Open;

   // Recalcular Valor Total a Receber do Cliente
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add(' select (SUM(VALOR) + SUM(JUROS) - SUM(DESCONTO)) AS TOT  '+
                      ' from comi_pagar '+
                      ' where idvendedor = '+trim(EdCod.Text)+' and baixa = '+QuotedStr('S')+' and ex = 0 ');
   DM.qSelect.Open;
   EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);

   Total := 0;
   EdTotal.Clear;
 end;


end;

procedure TfComi_Pagas.sairExecute(Sender: TObject);
begin
  close;
end;

procedure TfComi_Pagas.DBGrid1TitleClick(Column: TColumn);
var
  campo:string;
begin

  if ord = 'DESC' then
     ord := 'ASC'
  else
     ord := 'DESC';

  campo := uppercase(trim(Column.Field.FieldName));
  if campo = 'DESCRICAO' then
     campo := 'centrocusto.' + Column.Field.FieldName
  else
     campo := 'cp.' + Column.Field.FieldName;


  DM.qComiPagar.Close;
  DM.qComiPagar.SQL.Clear;
  DM.qComiPagar.SQL.Add('select cp.*, centrocusto.descricao, cliente.nome '+
                        ' from comi_pagar cp ' +
                        ' left join centrocusto on centrocusto.id = cp.idcusto' +
                        ' left join venda on venda.id = cp.idvenda '+
                        ' left join cliente on cliente.id = venda.idcliente '+
                        ' where cp.idvendedor = '+EdCod.Text+' and cp.baixa = '+QuotedStr('S')+' and cp.ex = 0 '+
                        ' order by '+ campo  + '  ' + ord);
  DM.qComiPagar.Open;
end;

procedure TfComi_Pagas.Seleciona;
var Cod : integer;
begin
  Cod := DM.qComiPagar.fieldbyname('id').AsInteger;
  Total := 0;
  DM.qComiPagar.Close;
  DM.qComiPagar.Open;

  DM.qComiPagar.First;
  while DM.qComiPagar.Eof = False do
  begin
     if DM.qComiPagarX.Value =  'T' then
      Total := Total + DM.qComiPagar.FieldByName('Total').AsFloat;

     DM.qComiPagar.Next;
  end;

  EdTotal.Text := FormatFloat('##,###,###,##0.00', Total);
  DM.qComiPagar.Locate('id', Cod , []);

  // Somar valor total do cliente
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('select  (SUM(coalesce(cp.VALOR,0)) + SUM(coalesce(cp.JUROS,0)) - SUM(coalesce(cp.DESCONTO,0))) AS TOT '+
          'from comi_pagar cp '+
          'where cp.idvendedor = '+trim(EdCod.Text)+' and cp.baixa = '+QuotedStr('S')+' and cp.ex = 0 ');
  DM.qSelect.Open;
  EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);

end;

procedure TfComi_Pagas.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) or (key = #32) then
 Seleciona;
end;

procedure TfComi_Pagas.EdCodKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   key := #0;
   edNom.SetFocus;
 end;

end;

procedure TfComi_Pagas.DBGrid1DblClick(Sender: TObject);
begin
 Seleciona;
end;

procedure TfComi_Pagas.FormActivate(Sender: TObject);
begin
   if edCod.Text <> '' then
      edCodExit(Application)
    else
       DM.qComiPagar.close;
end;

procedure TfComi_Pagas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
DM.qComiPagar.Close;

Action := caFree;
fComi_Pagas := nil;
end;

procedure TfComi_Pagas.FormCreate(Sender: TObject);
begin

  ord := 'DESC';

end;

procedure TfComi_Pagas.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
if DM.qComiPagarX.Value = 'T'  then
 begin
  DBGrid1.Canvas.Brush.Color := $009D9DFF; // Vermelho
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
 end;

end;

procedure TfComi_Pagas.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfComi_Pagas.EdCodExit(Sender: TObject);
begin
  if EdCod.Text <> '' then
   begin
    EdTotal.Clear;
    EdValTot.Clear;
    EdNom.Clear;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, Nome from vendedor where id = '+trim(EdCod.Text) );
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     begin
      ShowMessage('Código de vendedor invalido');
      EdNom.Text := '';
      edNom.SetFocus;
     end
    else
     Begin
       EdNom.Text := dm.qPesq.fieldbyname('nome').AsString;
       gdpesq.Visible := false;

       ExecSQL('update comi_pagar set X = '+QuotedStr('F')+
            'where idvendedor = '+EdCod.Text+' and baixa = '+QuotedStr('S')+' and ex = 0 ');

       DM.qComiPagar.Close;
       DM.qComiPagar.SQL.Clear;
       DM.qComiPagar.SQL.Add(' select cp.*, centrocusto.descricao, cliente.nome '+
                          ' from Comi_Pagar cp ' +
                          ' left join centrocusto on centrocusto.id = cp.idcusto' +
                          ' left join venda on venda.id = cp.idvenda '+
                          ' left join cliente on cliente.id = venda.idcliente '+
                          ' where cp.idvendedor = '+EdCod.Text+' and cp.baixa = '+QuotedStr('S')+' and cp.ex = 0 '+
                          ' order by cp.venci ');
       DM.qComiPagar.Open;
       DM.qSelect.Close;

       // totaliza
       DM.qSelect.SQL.Clear;
       DM.qSelect.SQL.Add('select  (SUM(coalesce(cp.VALOR,0)) + SUM(coalesce(cp.JUROS,0)) - SUM(coalesce(cp.DESCONTO,0))) AS TOT '+
              'from comi_pagar cp '+
              'where idvendedor = '+EdCod.Text+' and baixa = '+QuotedStr('S')+' and ex = 0 ');
       DM.qSelect.Open;
       EdValTot.Text := FormatFloat('##,###,###,##0.00', DM.qSelect.FieldByName('TOT').AsFloat);
       DBGrid1.SetFocus;
     end;
   end;
end;

procedure TfComi_Pagas.EdNomChange(Sender: TObject);
begin
  if edNom.Text <> '' then
    Begin
      DM.qPesq.Close;
      DM.qPesq.SQL.Clear;
      DM.qPesq.SQL.Add('Select id, nome from vendedor '+
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

procedure TfComi_Pagas.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus
  else
   DBGrid1.SetFocus;
end;

procedure TfComi_Pagas.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfComi_Pagas.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      edCod.Text := dm.qPesq.fieldbyname('id').AsString;
      edCodExit(Application);
      gdPesq.Visible := false;
    end;
end;

procedure TfComi_Pagas.EdNomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_UP THEN
  IF dm.qPesq.Bof THEN
     EdNom.SetFocus;
end;

procedure TfComi_Pagas.DBGrid1CellClick(Column: TColumn);
begin
  if Column.Index = 6 then
    begin
      if dm.qComiPagarX.Value = 'T' then
         Total := Total + dm.qComiPagarVALPAGO.Value
        else
         Total := Total - dm.qComiPagarVALPAGO.Value;
      EdTotal.Text := FormatFloat('##,###,###,##0.00', (Total) );
    end;
end;

end.
