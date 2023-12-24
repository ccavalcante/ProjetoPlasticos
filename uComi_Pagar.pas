unit uComi_Pagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, Mask, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, System.Actions;

type
  TfComi_Pagar = class(TForm)
    Image1: TImage;
    EdCod: TEdit;
    EdNom: TEdit;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Selecionar: TAction;
    sair: TAction;
    lCli: TLabel;
    EdValTot: TEdit;
    Label2: TLabel;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DSqCR: TDataSource;
    gdPesq: TDBGrid;
    qCr: TZQuery;
    uCr: TZUpdateSQL;
    qCrVAL: TFloatField;
    XiButton1: TXiButton;
    acNovo: TAction;
    Label1: TLabel;
    XiButton2: TXiButton;
    acPagas: TAction;
    qCrValPg: TFloatField;
    qCrValtot: TFloatField;
    Label3: TLabel;
    edValPagas: TEdit;
    edValPagar: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    ckTodas: TCheckBox;
    edDT2: TDateTimePicker;
    edDT1: TDateTimePicker;
    ckTodasP: TCheckBox;
    edDtp2: TDateTimePicker;
    edDtP1: TDateTimePicker;
    qCrNOME: TWideStringField;
    qCrven: TIntegerField;
    qCrIDVENDEDOR: TIntegerField;
    procedure SelecionarExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdNomChange(Sender: TObject);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodExit(Sender: TObject);
    procedure EdNomKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acNovoExecute(Sender: TObject);
    procedure acPagasExecute(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure edDT1Change(Sender: TObject);
    procedure edDT2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDtP1Change(Sender: TObject);
    procedure edDtp2Change(Sender: TObject);
    procedure ckTodasPClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Cli, Nome : String;
    Valor : Real;
    Procedure ValorTotal;
    Procedure AtivaQ;
  end;

var
  fComi_Pagar: TfComi_Pagar;


implementation

uses uDM,  Math, StrUtils, uFuncao, uComi_Pagar2, uNovoComissaoPagar, uComi_Pagas,
  uMenu;

{$R *.dfm}


procedure TfComi_Pagar.SelecionarExecute(Sender: TObject);
begin

 if qCr.IsEmpty then
    begin
     Cli := EdCod.Text;
     Nome := EdNom.Text;
     Valor := 0;
    end
   else
    begin
     Cli   := qCrIDvendedor.Text;
     Nome  := qCrNOME.Value;
     Valor := qCrVAL.Value;
    end;

  if (qCr.IsEmpty) and (trim(EdCod.Text) = '') then
     exit;

  ExecSql(' update comi_pagar set total = (coalesce(valor,0) + coalesce(juros,0) - coalesce(desconto,0) ) ' +
          ' where coalesce(total,0) = 0 ') ;
  sleep(100);

  DM.qComiPagar.Close;
  DM.qComiPagar.SQL.Clear;
  DM.qComiPagar.SQL.Add(' select cp.*, centrocusto.descricao, cliente.nome '+
                     ' from comi_pagar cp ' +
                     ' left join centrocusto on centrocusto.id = cp.idcusto' +
                     ' left join venda on venda.id = cp.idvenda '+
                     ' left join cliente on cliente.id = venda.idcliente '+
                     ' where cp.idvendedor = '+ Cli+
                     ' and cp.baixa = '+QuotedStr('N')+' and cp.ex = 0 '+
                     ' and ((:dd = 0) or (cp.venci between :di and :df)) and '+
                     '     ((:dp = 0) or ( cp.dtpagto between :dpi and :dpf))'+
                     ' order by cp.venci ');
   if ckTodas.Checked then  //Add filtro de data Nilton 01/11/2022
   begin
    DM.qComiPagar.ParamByName('dd').Value := 0;
    DM.qComiPagar.ParamByName('di').AsDate := Date;
    DM.qComiPagar.ParamByName('df').AsDate := Date;
   end
  else
   begin
    DM.qComiPagar.ParamByName('dd').Value := 1;
    DM.qComiPagar.ParamByName('di').AsDate := edDT1.Date;
    DM.qComiPagar.ParamByName('df').AsDate := edDT2.Date;
   end;

  if ckTodasP.Checked then
   begin
    DM.qComiPagar.ParamByName('dp').Value := 0;
    DM.qComiPagar.ParamByName('dpi').AsDate := Date;
    DM.qComiPagar.ParamByName('dpf').AsDate := Date;
   end
  else
   begin
    DM.qComiPagar.ParamByName('dp').Value := 1;
    DM.qComiPagar.ParamByName('dpi').AsDate := edDTp1.Date;
    DM.qComiPagar.ParamByName('dpf').AsDate := edDTp2.Date;
   end;

  DM.qComiPagar.Open;

  Application.CreateForm(TfComi_Pagar2, fComi_Pagar2);
  fComi_Pagar2.EdCod.Text    := Cli;
  fComi_Pagar2.EdNom.Text    := Nome;
  fComi_Pagar2.EdValTot.Text := FormatFloat('###,###,###,##0.00', Valor);

  fComi_Pagar2.Show;

end;

procedure TfComi_Pagar.sairExecute(Sender: TObject);
begin
  close;
end;

procedure TfComi_Pagar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
qCr.Close;

Action := caFree;
fComi_Pagar := nil;
end;

procedure TfComi_Pagar.ValorTotal;
 VAR TOT, pg, ap : Real;
begin
 qCr.First;
 TOT := 0;
 PG := 0;
 AP := 0;

 WHILE qCr.Eof = False DO
  BEGIN
    AP  := AP  + qCrVAL.Value;
    PG  := PG  + qCrVALPG.Value;
    TOT := TOT + qCrVALTOT.Value;

    qCr.Next;
  END;

 qCr.First;

 EdValPagar.Text := FormatFloat('##,###,###,##0.00', AP );
 EdValPagas.Text := FormatFloat('##,###,###,##0.00', PG );
 EdValTot.Text   := FormatFloat('##,###,###,##0.00', TOT);

end;

procedure TfComi_Pagar.EdNomChange(Sender: TObject);
begin
  if (EdNom.Text <> '')  then
   begin
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('select ID, NOME from vendedor '+
                     ' where NOME like '+ quotedstr('%'+EdNom.Text+'%')+
                     ' Order by NOME ');
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
     gdPesq.Visible := False
    else
     gdPesq.Visible := True;

    EdValTot.Clear;
    AtivaQ;


  END
 else
  gdPesq.Visible := False;
end;

procedure TfComi_Pagar.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus
  else
   DBGrid1.SetFocus;
end;

procedure TfComi_Pagar.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_UP THEN
  IF qCr.Bof THEN
   EdNom.SetFocus;
end;

procedure TfComi_Pagar.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfComi_Pagar.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 THEN
  Selecionar.Execute;
end;

procedure TfComi_Pagar.FormActivate(Sender: TObject);
begin
  edCod.Clear;
  edNom.Clear;

  AtivaQ;
end;

procedure TfComi_Pagar.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   EdCod.Text := DM.qPesq.FieldByName('id').Value;
   EdCodExit(Application);
   gdPesq.Visible := False;
  end;
end;

procedure TfComi_Pagar.EdCodExit(Sender: TObject);
begin
  if trim(EdCod.Text) <> '' then
   begin
    EdValTot.Clear;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' Select id, nome from vendedor '+
                     ' where ex = 0 and id = '+trim(EdCod.Text) +
                     ' order by id' );
    DM.qPesq.Open;

    if not DM.qPesq.IsEmpty then
     begin
      EdNom.Text     := DM.qPesq.FieldByName('nome').AsString;
      gdPesq.Visible := false;

      AtivaQ;
      
      DBGrid1.SetFocus;
     end
    else
     begin
       ShowMessage('Código de vendedor não localizado!');
       edCod.Text := '';
       edNom.SetFocus;
     end;
  end
  else
   ativaQ;
   

end;

procedure TfComi_Pagar.EdNomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then
    begin
      Key := 0;
      if dm.qPesq.Bof then
         edNom.SetFocus;
    end;
end;

procedure TfComi_Pagar.EdCodKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      if (edcod.Text = '') then
         edNom.SetFocus;
    end;
end;

procedure TfComi_Pagar.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not (ActiveControl is TDBgrid) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;

end;

procedure TfComi_Pagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if qCrVen.AsInteger > 0 then
 begin
  DBGrid1.Canvas.Font.Color := clRed;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
 end;

end;

procedure TfComi_Pagar.acNovoExecute(Sender: TObject);
begin

   Application.CreateForm(TfNovoComissaoPagar, fNovoComissaoPagar);
   if edCod.Text <> '' then
      IdverNovo := strtoint(edCod.text)
   else
      IdverNovo := 0;

   fNovoComissaoPagar.T.Close;
   fNovoComissaoPagar.T.ParamByName('Cli').Value := IdverNovo;
   fNovoComissaoPagar.T.ParamByName('cod').Value := 9999999;
   fNovoComissaoPagar.T.Open;

   fNovoComissaoPagar.ShowModal;
   fNovoComissaoPagar.Free;

   AtivaQ;

end;

procedure TfComi_Pagar.AtivaQ;
begin

      qCr.Close;
      if EdCod.Text = '' then
       qCR.parambyname('forn').value := 0
      else
       qCR.parambyname('forn').value := strtoint(edcod.text);

      if ckTodas.Checked then
       begin
        qCR.ParamByName('dd').Value := 0;
        qCR.ParamByName('di').AsDate := Date;
        qCR.ParamByName('df').AsDate := Date;
       end
      else
       begin
        qCR.ParamByName('dd').Value := 1;
        qCR.ParamByName('di').AsDate := edDT1.Date;
        qCR.ParamByName('df').AsDate := edDT2.Date;
       end;

      if ckTodasP.Checked then
       begin
        qCR.ParamByName('dp').Value := 0;
        qCR.ParamByName('dpi').AsDate := Date;
        qCR.ParamByName('dpf').AsDate := Date;
       end
      else
       begin
        qCR.ParamByName('dp').Value := 1;
        qCR.ParamByName('dpi').AsDate := edDTp1.Date;
        qCR.ParamByName('dpf').AsDate := edDTp2.Date;
       end;

      qCr.Open;

      ValorTotal;

end;

procedure TfComi_Pagar.acPagasExecute(Sender: TObject);
begin

 if qCr.IsEmpty then
    begin
     Cli := EdCod.Text;
     Nome := EdNom.Text;
     Valor := 0;
    end
   else
    begin
     Cli := qCrIDvendedor.Text;
     Nome := qCrNOME.Value;
     Valor := qCrVAL.Value;
    end;

  if (qCr.IsEmpty) and (trim(EdCod.Text) = '') then
     exit;

  DM.qComiPagar.Close;
  DM.qComiPagar.SQL.Clear;
  DM.qComiPagar.SQL.Add(' select cp.*, centrocusto.descricao, cliente.nome  '+
                     ' from comi_pagar cp ' +
                     ' left join centrocusto on centrocusto.id = cp.idcusto' +
                     ' left join venda on venda.id = cp.idvenda '+
                     ' left join cliente on cliente.id = venda.idcliente '+
                     ' where cp.idvendedor = '+ Cli+
                     ' and cp.baixa = '+QuotedStr('S')+' and cp.ex = 0 '+
                     ' and ((:dd = 0) or (cp.venci between :di and :df)) and '+
                     '     ((:dp = 0) or ( cp.dtpagto between :dpi and :dpf))'+
                     ' order by cp.venci ');
  if ckTodas.Checked then   //Add filtro de data Nilton 01/11/2022
   begin
    DM.qComiPagar.ParamByName('dd').Value := 0;
    DM.qComiPagar.ParamByName('di').AsDate := Date;
    DM.qComiPagar.ParamByName('df').AsDate := Date;
   end
  else
   begin
    DM.qComiPagar.ParamByName('dd').Value := 1;
    DM.qComiPagar.ParamByName('di').AsDate := edDT1.Date;
    DM.qComiPagar.ParamByName('df').AsDate := edDT2.Date;
   end;

  if ckTodasP.Checked then
   begin
    DM.qComiPagar.ParamByName('dp').Value := 0;
    DM.qComiPagar.ParamByName('dpi').AsDate := Date;
    DM.qComiPagar.ParamByName('dpf').AsDate := Date;
   end
  else
   begin
    DM.qComiPagar.ParamByName('dp').Value := 1;
    DM.qComiPagar.ParamByName('dpi').AsDate := edDTp1.Date;
    DM.qComiPagar.ParamByName('dpf').AsDate := edDTp2.Date;
   end;

  DM.qComiPagar.Open;

  Application.CreateForm(TfComi_Pagas, fComi_Pagas);
  fComi_Pagas.EdCod.Text    := Cli;
  fComi_Pagas.EdNom.Text    := Nome;
  fComi_Pagas.EdValTot.Text := FormatFloat('###,###,###,##0.00', Valor);
  fComi_Pagas.Show;
  fComi_Pagas.EdCodExit(Application);

end;

procedure TfComi_Pagar.ckTodasClick(Sender: TObject);
begin
 if ckTodas.Checked then
  begin
   edDT1.Enabled := False;
   edDT2.Enabled := False;
  end
 else
  begin
   edDT1.Enabled := True;
   edDT2.Enabled := True;
  end;

  AtivaQ;
end;

procedure TfComi_Pagar.edDT1Change(Sender: TObject);
begin
AtivaQ;
end;

procedure TfComi_Pagar.edDT2Change(Sender: TObject);
begin
AtivaQ;
end;

procedure TfComi_Pagar.FormCreate(Sender: TObject);
begin
  edDT1.Date := Date;
  edDT2.Date := Date;

  edDtP1.Date := Date;
  edDtp2.Date := Date;


end;

procedure TfComi_Pagar.edDtP1Change(Sender: TObject);
begin
 AtivaQ;
end;

procedure TfComi_Pagar.edDtp2Change(Sender: TObject);
begin
AtivaQ;
end;

procedure TfComi_Pagar.ckTodasPClick(Sender: TObject);
begin
 if ckTodasP.Checked then
  begin
   edDtP1.Enabled := False;
   edDtp2.Enabled := False;
  end
 else
  begin
   edDTp1.Enabled := True;
   edDTp2.Enabled := True;
  end;

  AtivaQ;
end;

end.
