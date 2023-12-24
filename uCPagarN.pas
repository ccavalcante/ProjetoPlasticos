unit uCPagarN;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, Mask, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ComCtrls, System.Actions;

type
  TfCPagarN = class(TForm)
    Image1: TImage;
    EdCod: TEdit;
    EdNom: TEdit;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    Selecionar: TAction;
    sair: TAction;
    EdValTot: TEdit;
    Label2: TLabel;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DSqCR: TDataSource;
    gdPesq: TDBGrid;
    qCr: TZQuery;
    uCr: TZUpdateSQL;
    qCrIDFORNECEDOR: TIntegerField;
    qCrVAL: TFloatField;
    XiButton1: TXiButton;
    acNovo: TAction;
    Label1: TLabel;
    XiButton2: TXiButton;
    acPagas: TAction;
    qCrValPg: TFloatField;
    qCrValtot: TFloatField;
    XiButton5: TXiButton;
    XiButton6: TXiButton;
    acRelPagar: TAction;
    acRelpagas: TAction;
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
    ckAb: TCheckBox;
    ckFor: TRadioButton;
    ckTra: TRadioButton;
    qCrtipof: TWideStringField;
    ckTodosFor: TCheckBox;
    acLiberar: TAction;
    qCremuso: TWideStringField;
    Shape1: TShape;
    Label6: TLabel;
    XiButton7: TXiButton;
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
    procedure acRelPagarExecute(Sender: TObject);
    procedure acRelpagasExecute(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure edDT1Change(Sender: TObject);
    procedure edDT2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edDtP1Change(Sender: TObject);
    procedure edDtp2Change(Sender: TObject);
    procedure ckTodasPClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckTraClick(Sender: TObject);
    procedure ckForClick(Sender: TObject);
    procedure ckTodosForClick(Sender: TObject);
    procedure acLiberarExecute(Sender: TObject);
  private
    procedure limpaCampos;
    function tabEscolha: String;
    function EscolhaTipo: String;
    function VerificaEmUso : boolean;
    { Private declarations }
  public
    { Public declarations }
    Cli, Nome, tpFinan : String;
    Valor : Real;
    Procedure ValorTotal;
    Procedure AtivaQ;
  end;

var
  fCPagarN: TfCPagarN;


implementation

uses uDM,  Math, StrUtils, uFuncao, uCPagarN2, uNovoCPagar2, uCPagas,
  uMenu, uRelCPagar, uRelCPagas;

{$R *.dfm}


procedure TfCPagarN.SelecionarExecute(Sender: TObject);
begin
  if qCr.IsEmpty then
    begin
     Cli     := EdCod.Text;
     Nome    := EdNom.Text;
     Valor   := 0;
    end
   else
    begin
     Cli := qCrIDFORNECEDOR.Text;
     Nome := qCrNOME.Value;
     Valor := qCrVAL.Value;
    end;

    tpFinan := EscolhaTipo;

    if (qCr.IsEmpty) and (trim(EdCod.Text) = '') then
       exit;

   if verificaemuso then
   begin

     ativaQ;
     exit;
   end;


  ExecSql(' update cpagar set total = (coalesce(valor,0) + coalesce(juros,0) - coalesce(desconto,0) ) ' +
          ' where coalesce(total,0) = 0 ') ;
  sleep(100);

  ExecSql(' update cpagar set x = ''F'' where x = ''T'' ') ;
  sleep(100);

  Application.CreateForm(TfCPagarN2, fCPagarN2);
  fCPagarN2.EdCod.Text     := Cli;
  fCPagarN2.EdNom.Text     := Nome;
  fCPagarN2.tpFin          := tpFinan;
  if tpFinan = 'F' then
  begin
     fCPagarN2.Label1.caption := 'Fornecedor';
     execSQL('update fornecedor set emuso = ''S'', iduusarioEmUso = '+dm.qUserId.Text+' where id = '+cli);
  end
  else
  if tpFinan = 'T' then
  begin
     fCPagarN2.Label1.caption    := 'Transportadora';
     fCPagarN2.Label1.Font.Color := clBlue;
     fCPagarN2.Label1.Refresh;
     execSQL('update TRANSPORTADORA set emuso = ''S'', iduusarioEmUso = '+dm.qUserId.Text+' where id = '+cli);
  end;
  //fCPagarN2.cbEmp.ItemIndex := dm.qUseridemp.AsInteger;

  fCPagarN2.EdValTot.Text := FormatFloat('###,###,###,##0.00', Valor);
  fCPagarN2.ativaQ;
  fCPagarN2.Total; //Nilton 19/03/2022
  fCPagarN2.Show;

end;

procedure TfCPagarN.sairExecute(Sender: TObject);
begin
  close;
end;

procedure TfCPagarN.FormClose(Sender: TObject; var Action: TCloseAction);
begin
qCr.Close;

Action := caFree;
fCPagarN := nil;
end;

procedure TfCPagarN.ValorTotal;
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

function TfCPagarN.VerificaEmUso: boolean;
begin
   result := false;
   if tpFinan = 'F' then
   begin
     dm.qPesq.Close;
     dm.qPesq.SQL.Clear;
     dm.qPesq.SQL.add('select ''do fornecedor'' tipo, fornecedor.nome  fornecedor, emuso, iduusarioEmUso, usuario.nome usuario from fornecedor  '+
                       ' left join usuario on usuario.id = fornecedor.iduusarioEmUso '+
                       ' where fornecedor.id = '+cli);
     dm.qPesq.Open;
   end
   else
   begin
     dm.qPesq.Close;
     dm.qPesq.SQL.Clear;
     dm.qPesq.SQL.add('select ''da transportadora'' tipo, TRANSPORTADORA.nome  fornecedor, emuso, iduusarioEmUso, usuario.nome usuario from TRANSPORTADORA   '+
                       ' left join usuario on usuario.id = TRANSPORTADORA.iduusarioEmUso '+
                       ' where TRANSPORTADORA.id = '+cli);
     dm.qPesq.Open;
   end;

   if dm.qPesq.FieldByName('emuso').AsString = 'S' then
   begin
     application.MessageBox(pChar('Financeiro ' + dm.qPesq.FieldByName('tipo').AsString + ' ' + dm.qPesq.FieldByName('fornecedor').asString+
                                  ' aberto com o usuário '+dm.qPesq.FieldByName('usuario').AsString+
                                  '. Por favor, verifique!'), 'Atenção');
     result := true;
   end;

end;

procedure TfCPagarN.EdNomChange(Sender: TObject);
begin
  if (EdNom.Text <> '')  then
   begin
    posicionagrid(gdPesq, edCod);

     DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' select f.ID, f.NOME from '+ tabEscolha +' f'+
                     ' where f.NOME like '+ quotedstr('%'+EdNom.Text+'%')+
                     ' Order by f.NOME ');
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

procedure TfCPagarN.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus
  else
   DBGrid1.SetFocus;
end;

procedure TfCPagarN.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_UP THEN
  IF qCr.Bof THEN
   EdNom.SetFocus;
end;

procedure TfCPagarN.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCPagarN.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 If Key = #13 THEN
  Selecionar.Execute;
end;

procedure TfCPagarN.FormActivate(Sender: TObject);
begin
  edCod.Clear;
  edNom.Clear;

  AtivaQ;
end;

procedure TfCPagarN.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   EdCod.Text := DM.qPesq.FieldByName('id').Value;
   EdCodExit(Application);
   gdPesq.Visible := False;
  end;
end;

procedure TfCPagarN.EdCodExit(Sender: TObject);
begin
  if trim(EdCod.Text) <> '' then
   begin
    EdValTot.Clear;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' Select id, nome from ' + tabEscolha +
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
       ShowMessage('Código de fornecedor não localizado!');
       edCod.Text := '';
       edNom.SetFocus;
     end;
  end
  else
   ativaQ;
   

end;

procedure TfCPagarN.EdNomKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then
    begin
      Key := 0;
      if dm.qPesq.Bof then
         edNom.SetFocus;
    end;
end;

procedure TfCPagarN.EdCodKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      key := #0;
      if (edcod.Text = '') then
         edNom.SetFocus;
    end;
end;

procedure TfCPagarN.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not (ActiveControl is TDBgrid) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;

end;

procedure TfCPagarN.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if qCrVen.AsInteger > 0 then
 begin
  DBGrid1.Canvas.Font.Color := clRed;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
 end;

 if qCREmUso.text = 'S'  then
 begin
     DBGrid1.Canvas.Brush.Color := $009D9DFF; // Vermelho
     DBGrid1.Canvas.Font.color := clBlack; // Vermelho
 end;


 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);

end;

procedure TfCPagarN.acLiberarExecute(Sender: TObject);
begin
  if qCREmUso.AsString = 'N' then
    exit;

  if temPermissao(dm.qUserId.AsInteger, 'PERM_LIBERAR_EMUSO') = false then
   exit;

 application.MessageBox('ATENÇÃO! Ao liberar, o contas a pagar voltará a estar disponível. Por favor, verifique se o contas a pagar deste fornecedor não está aberto em outro terminal.', 'Atenção', MB_ICONEXCLAMATION);

  if application.MessageBox('Deseja realmente liberar este cliente?', 'Atenção', mb_yesno+MB_ICONQUESTION) = idyes then
  begin
    if ckTra.Checked then
      execSQL('update transportadora set emuso = ''N'', iduusarioEmUso = 0 where id = '+qCrIDFORNECEDOR.text)
    else
      execSQL('update fornecedor set emuso = ''N'', iduusarioEmUso = 0 where id = '+qCrIDFORNECEDOR.text);
    ativaQ;
  end;
end;

procedure TfCPagarN.acNovoExecute(Sender: TObject);
var
 nTp : String;
begin

   Application.CreateForm(TfNovoCPagar2, fNovoCPagar2);
   if edCod.Text <> '' then
      IdForNovo := strtoint(edCod.text)
   else
      IdForNovo := 0;

   nTp := EscolhaTipo;
   fNovoCPagar2.TpfinNV := nTp;
   if nTp = 'F' then
     fNovoCPagar2.ckFor.Checked := true
   else
   if nTp = 'T' then
     fNovoCPagar2.ckTra.Checked := true;

   fNovoCPagar2.T.Close;
   fNovoCPagar2.T.ParamByName('Cli').Value := IdForNovo;
   fNovoCPagar2.T.ParamByName('cod').Value := 9999999;
   fNovoCPagar2.T.ParamByName('tp').Value  := nTp;
   fNovoCPagar2.T.Open;

   fNovoCPagar2.ShowModal;
   fNovoCPagar2.Free;

   AtivaQ;

end;

procedure TfCPagarN.AtivaQ;
var
 sql, vAb, nTp : string;
begin

  if ckTodosFor.Checked then
     nTp := 'X'
  else
  begin
     if ckFor.Checked then nTp := 'F'
     else
     if ckTra.Checked then nTp := 'T';
  end;

  sql := ' SELECT sum( case when (cpagar.BAIXA = ''N'') and '+
         ' ((:dd = 0) or (cpagar.venci between :di and :df)) then '+
         ' (cpagar.total) end) Val, '+
         ' sum(case when cpagar.BAIXA = ''S'' and '+
         ' ((:dp = 0) or (cast(cpagar.dtpagto as date) between :dpi and :dpf)) then '+
         ' (cpagar.VALpago) end) ValPg, cpagar.IDFORNECEDOR, FORNECEDOR.NOME, '+
         ' sum(case when (cpagar.baixa = ''N'') and (cpagar.venci < current_date) then '+
         '   1 else 0 end) ven, SUM(cpagar.total) Valtot '+
         ' FROM cpagar '+
         ' LEFT JOIN FORNECEDOR ON FORNECEDOR.ID = cpagar.IDFORNECEDOR '+
         ' WHERE ((:forn = 0) or (cpagar.IDFORNECEDOR = :forn))  AND '+
         '       cpagar.EX = 0 ' +
         ' GROUP BY cpagar.IDFORNECEDOR, FORNECEDOR.NOME '+
         ' ORDER BY FORNECEDOR.NOME ';

  vAb := 'T';
  if ckAb.Checked then vAb := 'A';
    qCr.Close;

    //  qCr.sql.clear;
    //  qCr.sql.add( sql );
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
      qCR.ParamByName('AB').asstring := vAb;
      qCR.ParamByName('tp').asstring := nTp;
      qCr.Open;

      ValorTotal;

end;

procedure TfCPagarN.acPagasExecute(Sender: TObject);
begin

 if qCr.IsEmpty then
    begin
     Cli := EdCod.Text;
     Nome := EdNom.Text;
     Valor := 0;
    end
   else
    begin
     Cli   := qCrIDFORNECEDOR.Text;
     Nome  := qCrNOME.Value;
     Valor := qCrVAL.Value;
    end;

  if (qCr.IsEmpty) and (trim(EdCod.Text) = '') then
     exit;

  tpFinan := EscolhaTipo;

  if verificaemuso then
  begin
    ativaQ;
    exit;
  end;

  Application.CreateForm(TfCPagas, fCPagas);

  fCPagas.tpFinan       := copy(qCrtipof.Text,1,1) ;

  if fCPagas.tpFinan = 'F' then
  begin
     fCPagas.ckFor.Checked := true;
     execSQL('update fornecedor set emuso = ''S'', iduusarioEmUso = '+dm.qUserId.Text+' where id = '+cli);
  end
  else
  if fCPagas.tpFinan = 'T' then
  begin
     fCPagas.ckTra.Checked := true;
     execSQL('update TRANSPORTADORA set emuso = ''S'', iduusarioEmUso = '+dm.qUserId.Text+' where id = '+cli);
  end;

  fCPagas.EdCod.Text    := Cli;
  fCPagas.EdNom.Text    := Nome;

  //fCPagas.cbEmp.ItemIndex := dm.qUseridemp.AsInteger;

  fCPagas.ckTodas.checked := ckTodas.Checked;
  fCPagas.edDt1.Date := edDt1.date;
  fCpagas.edDt2.Date := edDt2.Date;
  fCPagas.ckTodasP.Checked := ckTodasP.checked;
  fCPagas.edDtP1.date := edDtP1.Date;
  fCPagas.edDtP2.date := edDtP2.Date;


  fCPagas.ativaQ;
  fCPagas.EdValTot.Text := FormatFloat('###,###,###,##0.00', Valor);
  fCPagas.Show;
  fCPagas.EdCodExit(Application);

end;

procedure TfCPagarN.acRelPagarExecute(Sender: TObject);
begin
  fMenu.CriarForm(TfRelCPagar);
end;

procedure TfCPagarN.acRelpagasExecute(Sender: TObject);
begin
 fMenu.CriarForm(TfRelCPagas);
end;

procedure TfCPagarN.ckForClick(Sender: TObject);
begin
  ckTra.Checked := not ckFor.Checked;
  limpaCampos;
end;

procedure TfCPagarN.limpaCampos;
begin
  edCod.Clear;
  EdNom.Clear;
  gdPesq.Visible := false;

  edCod.Enabled := not ckTodosFor.Checked;
  ednom.Enabled := not ckTodosFor.Checked;
  ckFor.Enabled := not ckTodosFor.Checked;
  ckTra.Enabled := not ckTodosFor.Checked;

  ativaQ;

end;

procedure TfCPagarN.ckTodasClick(Sender: TObject);
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

procedure TfCPagarN.edDT1Change(Sender: TObject);
begin
AtivaQ;
end;

procedure TfCPagarN.edDT2Change(Sender: TObject);
begin
AtivaQ;
end;

procedure TfCPagarN.FormCreate(Sender: TObject);
begin
  edDT1.Date := Date;
  edDT2.Date := Date;

  edDtP1.Date := Date;
  edDtp2.Date := Date;
end;

procedure TfCPagarN.edDtP1Change(Sender: TObject);
begin
 AtivaQ;
end;

procedure TfCPagarN.edDtp2Change(Sender: TObject);
begin
AtivaQ;
end;

procedure TfCPagarN.ckTodasPClick(Sender: TObject);
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

procedure TfCPagarN.ckTodosForClick(Sender: TObject);
begin
 limpaCampos;

end;

procedure TfCPagarN.ckTraClick(Sender: TObject);
begin
  ckFor.Checked := not ckTra.Checked;
  limpaCampos;
end;


function TfCPagarN.tabEscolha:String;
begin
    if ckFor.Checked then Result := 'Fornecedor';
    if ckTra.Checked then Result := 'Transportadora';
end;

function TfCPagarN.EscolhaTipo:String;
begin
    if ckTodosFor.Checked then
       Result := copy(qCrtipof.text,1,1)
    else
    begin
       if qCr.isEmpty then
       begin
          if ckFor.Checked then Result := 'F';
          if ckTra.Checked then Result := 'T';
       end
       else
         Result := copy(qCrtipof.text,1,1);
    end;
end;

end.
