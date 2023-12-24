unit uCReceber;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, Mask,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, System.Actions;

type
  TfCReceber = class(TForm)
    Image1: TImage;
    EdCod: TEdit;
    EdNom: TEdit;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    acReceber: TAction;
    sair: TAction;
    lCli: TLabel;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    dCR: TDataSource;
    gdPesq: TDBGrid;
    qCR: TZQuery;
    qCRRecebido: TFloatField;
    qCRAberto: TFloatField;
    qCRTotal: TFloatField;
    qCRIdcliente: TIntegerField;
    acRecebidas: TAction;
    XiButton1: TXiButton;
    Label1: TLabel;
    XiButton2: TXiButton;
    acNovo: TAction;
    qCRVencida: TFloatField;
    qCRaVencer: TFloatField;
    ckAVencer: TCheckBox;
    Label2: TLabel;
    Bevel1: TBevel;
    Label3: TLabel;
    ckVencidas: TCheckBox;
    Label4: TLabel;
    ckRecebidas: TCheckBox;
    edDT1: TDateTimePicker;
    edDT2: TDateTimePicker;
    ckTodas: TCheckBox;
    qCRNOME: TWideStringField;
    acLiberarCli: TAction;
    XiButton5: TXiButton;
    qCRemuso: TWideStringField;
    Shape1: TShape;
    Label5: TLabel;
    lFantasia: TLabel;
    procedure acReceberExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdNomChange(Sender: TObject);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure acRecebidasExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodExit(Sender: TObject);
    procedure EdNomExit(Sender: TObject);
    procedure acNovoExecute(Sender: TObject);
    procedure ckAVencerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure edDT1Change(Sender: TObject);
    procedure edDT2Change(Sender: TObject);
    procedure ckRecebidasClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1TitleClick(Column: TColumn);
    function VerificaEmUso : boolean;
    procedure acLiberarCliExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure qCRAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Cli, Nome : String;
    Valor : Real;
    Procedure AtivaQ;
  end;

var
  fCReceber: TfCReceber;
  vOrdem: String;

implementation

uses uDM, uCReceber2, uFuncao, uCRecebidas, uNovoCReceber2;

{$R *.dfm}

procedure TfCReceber.acReceberExecute(Sender: TObject);
begin

  if FormEstaCriado(TfCReceber2) then
  begin
     application.MessageBox('Tela de contas a receber já aberta.', 'Atenção');
    exit;
  end;

   Application.CreateForm(TfCReceber2, fCReceber2);

   ExecSql(' update creceber set x = ''F'' where x = ''T'' ');

   if trim(EdCod.text) <> '' then
   begin
      Cli  := edcod.text;
      Nome := EdNom.text;
   end
   else
   begin
      Cli  := qCRIdCliente.text;
      Nome := qCRNome.text;
   end;


   if verificaemuso then
   begin
     fCReceber2.Close;
     ativaQ;
     exit;
   end;

   fCReceber2.EdCod.Text := Cli;
   fCReceber2.EdNom.Text := Nome;
   //fCReceber2.cbemp.ItemIndex := dm.qUseridemp.AsInteger;

   fCReceber2.T.Close;
   fCReceber2.T.ParamByName('cli').value := Cli;
   fCReceber2.T.ParamByName('emp').value := fCReceber2.cbemp.ItemIndex;
   fCReceber2.T.ParamByName('fpgto').asString       := 'TODAS';
   fCReceber2.T.Open;

   fCReceber2.EdCod.Text := Cli;
   fCReceber2.EdNom.Text := Nome;

   fCReceber2.Total;

   execSQL('update cliente set emuso = ''S'', iduusarioEmUso = '+dm.qUserId.Text+' where id = '+cli);

   fCReceber2.Show;


end;

procedure TfCReceber.sairExecute(Sender: TObject);
begin
  close;
end;

function TfCReceber.VerificaEmUso: boolean;
begin
   result := false;
   dm.qPesq.Close;
   dm.qPesq.SQL.Clear;
   dm.qPesq.SQL.add('select cliente.razao cliente, emuso, iduusarioEmUso, usuario.nome usuario from cliente '+
                    ' left join usuario on usuario.id = cliente.iduusarioEmUso '+
                    'where cliente.id = '+cli);
   dm.qPesq.Open;
   if dm.qPesq.FieldByName('emuso').AsString = 'S' then
   begin
     application.MessageBox(pChar('Financeiro do cliente '+dm.qPesq.FieldByName('cliente').asString+
                                  ' aberto com o usuário '+dm.qPesq.FieldByName('usuario').AsString+
                                  '. Por favor, verifique!'), 'Atenção');
     result := true;
   end;
end;

procedure TfCReceber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
qCr.Close;

Action := caFree;
fCReceber := nil;
end;

procedure TfCReceber.EdNomChange(Sender: TObject);
begin
  if (EdCod.Text = '')  then
   begin
    gdpesq.left := edCod.left;
    gdpesq.top  := edCod.top + edCod.Height + 1;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' select Id, nome, razao from Cliente '+
                     ' where ex = 0 and (nome like '+QuotedStr('%'+EdNom.Text+'%')+
                     ' or razao like '+QuotedStr('%'+EdNom.Text+'%')+') '+
                     ' Order by nome ');
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
     gdPesq.Visible := False
    else
     gdPesq.Visible := True;

  END
 else
  gdPesq.Visible := False;
  lFantasia.Caption := '';
end;

procedure TfCReceber.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus
  else
   DBGrid1.SetFocus;
end;

procedure TfCReceber.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin


 if qCREmUso.text = 'S'  then
   begin
     DBGrid1.Canvas.Brush.Color := $009D9DFF; // Vermelho
     DBGrid1.Canvas.Font.color := clBlack; // Vermelho
   end;


 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
end;

procedure TfCReceber.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCReceber.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_UP THEN
  IF qCr.Bof THEN
   EdNom.SetFocus;
end;

procedure TfCReceber.DBGrid1TitleClick(Column: TColumn);

begin

  //Add por Nilton - ordenação 28/10/2020
   if vOrdem = 'desc' then
    vOrdem := 'asc'
   else
    vOrdem := 'desc';

  qcr.IndexFieldNames := column.FieldName + ' ' + vOrdem;
  qCr.first;

end;

procedure TfCReceber.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCReceber.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;

   EdCod.Text := DM.qPesq.FieldByName('Id').Value;
   EdCodExit(Application);
   gdPesq.Visible := False;
  end;
end;

procedure TfCReceber.qCRAfterScroll(DataSet: TDataSet);
begin
  acLiberarCli.Enabled := (qCREmUso.AsString = 'S');

end;

procedure TfCReceber.acRecebidasExecute(Sender: TObject);
begin
  if FormEstaCriado(TfCRecebidas) then
  begin
    application.MessageBox('Tela de contas recebidas já aberta.', 'Atenção');
    exit;
  end;



   Application.CreateForm(TfCRecebidas, fCRecebidas);

   ExecSql(' update creceber set x = ''F'' where x = ''T'' ');

   if EdCod.text <> '' then
    begin
     Cli := edcod.text;
     Nome := EdNom.text;
    end
   else
    begin
     Cli := qCRIdCliente.text;
     Nome := qCRNome.text;
    end;

  if verificaemuso then
   begin
     fCRecebidas.Close;
     ativaQ;
     exit;
   end;

   fCRecebidas.EdCod.Text := Cli;
   fCRecebidas.EdNom.Text := Nome;
   //fCRecebidas.cbemp.ItemIndex := dm.qUseridemp.AsInteger;

   fCRecebidas.ativaQ;

   fCRecebidas.totTotal;

   execSQL('update cliente set emuso = ''S'', iduusarioEmUso = '+dm.qUserId.Text+' where id = '+cli);

   fCRecebidas.Show;
end;

procedure TfCReceber.FormActivate(Sender: TObject);
begin
 AtivaQ;
end;

procedure TfCReceber.AtivaQ;
var
 filtro, sql:string;
begin
    filtro := '';
    sql := ' select sum( case when creceber.baixa = ''S'' then '+
           '          creceber.VAlPago end ) Recebido, '+
           '        sum( case when (creceber.baixa = ''N'' ) and '+
           '         (creceber.venci < :df )  then '+
           '           creceber.valor end ) Vencida, '+
           '        sum( case when (creceber.baixa = ''N'' ) and '+
           '          (creceber.venci >= :df )  then '+
           '          creceber.valor end ) aVencer, '+
           '        sum( case when creceber.baixa = ''N'' then '+
           '          creceber.valor   end ) Aberto, '+
           '        sum( coalesce(case when creceber.baixa = ''S'' then '+
           '          creceber.VAlPago  end, 0) ) +  '+
           '        sum( coalesce(case when creceber.baixa = ''N'' then '+
           '          creceber.valor end, 0) )  Total, '+
           ' creceber.Idcliente, Cliente.razao NOME, cliente.emuso '+
           ' From creceber '+
           ' left join Cliente on Cliente.Id = creceber.IdCliente '+
           ' where Cliente.ex = 0 and ((:cli = 0) or (creceber.Idcliente = :cli)) and '+
           '        creceber.ex = 0 and creceber.Idcliente > 0 and ' ;
           if ckRecebidas.Checked then
             sql := sql  +
                 ' ((:dd = 0) or ((creceber.venci between :di and :df) or '+
                 '  (creceber.dtpagto between :di and :df)) ) '
           else
             sql := sql  +
                 '  ((:dd = 0) or (creceber.venci between :di and :df)) ' ;

           sql := sql  +
               ' GROUP BY creceber.Idcliente, Cliente.razao, cliente.emuso ';

    if (ckRecebidas.checked) or (ckAVencer.checked) or (ckVencidas.checked) then begin
           sql := sql + ' having ';
        if ckRecebidas.Checked then begin
           if filtro = '1' then
              sql := sql + ' or ';
           sql := sql + ' (coalesce(sum( case when creceber.baixa = ''S'' then '+
                        ' creceber.VAlPago end ),0) <> 0 ) ' ;
           filtro := '1';
        end;

        if ckVencidas.Checked then begin
           if filtro = '1' then
              sql := sql + ' or ';
           sql := sql + ' ( coalesce(sum( case when (creceber.baixa = ''N'' ) and '+
                        '  (creceber.venci < :df )  then creceber.valor '+
                        '  end ),0) <> 0 ) ';
           filtro := '1';
        end;

        if ckAvencer.Checked then begin
           if filtro <> '' then
              sql := sql + ' or ';
           sql := sql + ' ( coalesce(sum( case when (creceber.baixa = ''N'' ) and '+
                        '  (creceber.venci >= :df )  then '+
                        '  creceber.valor end ),0) <> 0 ) ';
           filtro := '1';
        end;
    end;

    sql := sql + ' ORDER BY Cliente.razao ';
    filtro := '';

      qCr.Close;
      qCr.SQL.Clear;
      qCr.SQL.Add( sql );
      if EdCod.Text = '' then
       qCR.parambyname('cli').value := 0
      else
       qCR.parambyname('cli').value := strtoint(edcod.text);

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
      qCr.Open;

      acLiberarCli.Enabled := (qCREmUso.AsString = 'S');



end;

procedure TfCReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not(ActiveControl is TDBGrid) then
  begin
   Key := #0;
   SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfCReceber.EdCodExit(Sender: TObject);
begin
 if EdCod.Text <> '' then
   begin

    EdNom.Clear;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select Id, razao Nome, nome fantasia from Cliente where EX = 0 AND Id = '+EdCod.Text);
    DM.qPesq.Open;

    if not DM.qPesq.IsEmpty then
    begin
      EdNom.Text := DM.qPesq.FieldByName('Nome').AsString;
      lFantasia.Caption := DM.qPesq.FieldByName('fantasia').AsString;

      AtivaQ;

      DBGrid1.SetFocus;
    end
    else
    begin
     EdCod.Clear;
     EdNom.SetFocus;
     qCr.Close;
    end;

  end;
end;

procedure TfCReceber.EdNomExit(Sender: TObject);
begin
if EdNom.Text = '' then
  gdPesq.Visible := false;
end;

procedure TfCReceber.acLiberarCliExecute(Sender: TObject);
begin
  if qCREmUso.AsString = 'N' then
    exit;

  if temPermissao(dm.qUserId.AsInteger, 'PERM_LIBERAR_EMUSO') = false then
   exit;

 application.MessageBox('ATENÇÃO! Ao liberar o cliente, o contas a receber voltará a estar disponível. Por favor, verifique se o contas a receber deste cliente não está aberto em outro terminal.', 'Atenção', MB_ICONEXCLAMATION);

  if application.MessageBox('Deseja realmente liberar este cliente?', 'Atenção', mb_yesno+MB_ICONQUESTION) = idyes then
  begin
    execSQL('update cliente set emuso = ''N'', iduusarioEmUso = 0 where id = '+qCRIdcliente.text);
    ativaQ;
  end;
end;

procedure TfCReceber.acNovoExecute(Sender: TObject);
begin
  Application.CreateForm(TfNovoCReceber2, fNovoCReceber2);
  IdCliNovo := 0;

  fNovoCReceber2.T.Close;
  fNovoCReceber2.T.ParamByName('Cli').Value := IdCliNovo;
  fNovoCReceber2.T.ParamByName('cod').Value := 9999999;
  fNovoCReceber2.T.Open;

  fNovoCReceber2.ShowModal;
  fNovoCReceber2.Free;

  AtivaQ;
end;

procedure TfCReceber.ckAVencerClick(Sender: TObject);
begin
  ativaQ;
end;

procedure TfCReceber.FormCreate(Sender: TObject);
begin
 edDT1.Date := Date;
 edDT2.Date := Date;
 ckTodasClick(Application);
 lFantasia.Caption := '';
end;

procedure TfCReceber.ckTodasClick(Sender: TObject);
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

procedure TfCReceber.edDT1Change(Sender: TObject);
begin
 AtivaQ;
end;

procedure TfCReceber.edDT2Change(Sender: TObject);
begin
 AtivaQ;
end;

procedure TfCReceber.ckRecebidasClick(Sender: TObject);
begin
  if ckRecebidas.Checked then
     label1.Caption := 'Vencimento/Pagto'
   else
     label1.Caption := 'Vencimento' ;
  ativaQ;

end;

end.
