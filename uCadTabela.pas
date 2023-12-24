unit uCadTabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, CheckDBGrid, XiButton,
  System.Actions, System.ImageList, Vcl.Samples.Gauges, Datasnap.DBClient,
  Datasnap.Provider;

type
  TfCadTabela = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    acTipo: TAction;
    TabSheet4: TTabSheet;
    CheckDBGrid2: TCheckDBGrid;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    Bevel3: TBevel;
    Label20: TLabel;
    DBText2: TDBText;
    acZerar: TAction;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    Gauge1: TGauge;
    TId: TIntegerField;
    TDescricao: TWideStringField;
    Tex: TIntegerField;
    gdFor: TDBGrid;
    lCPFCNPJ: TLabel;
    edCod: TEdit;
    Label6: TLabel;
    EdNom: TEdit;
    gdPesq: TDBGrid;
    Label4: TLabel;
    edQtd: TMaskEdit;
    btAddP: TXiButton;
    btExcluirF: TXiButton;
    Label8: TLabel;
    Tsincronizado: TWideStringField;
    L: TZQuery;
    UL: TZUpdateSQL;
    DL: TDataSource;
    LId: TIntegerField;
    LIdTabela: TIntegerField;
    LIdProduto: TIntegerField;
    LReferencia: TWideStringField;
    LCodBarras: TWideStringField;
    LDescricao: TWideStringField;
    LPreco: TFloatField;
    LQtdeEstoque: TFloatField;
    LPagina: TIntegerField;
    Lex: TIntegerField;
    LQtdeCaixa: TFloatField;
    Lsincronizado: TWideStringField;
    qPro: TZQuery;
    qProid: TIntegerField;
    qProreferencia: TWideStringField;
    qProbarras: TWideStringField;
    qProdescricao: TWideStringField;
    qProvalor: TFloatField;
    qProqtdestoque: TFloatField;
    ltot: TLabel;
    DBCheckBox1: TDBCheckBox;
    Tativo: TWideStringField;
    Tidweb: TIntegerField;
    qPromultiplo: TFloatField;
    qTT: TZQuery;
    qTTid: TIntegerField;
    rdAt: TRadioGroup;
    Tpadrao: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    Lx: TWideStringField;
    qLL: TZQuery;
    qLLidproduto: TIntegerField;
    qLLidweb: TIntegerField;
    ToolButton6: TToolButton;
    btnAtualizaPreco: TXiButton;
    qProVendaSugerido: TFloatField;
    ckTodos: TCheckBox;
    qProPreco: TZQuery;
    qProPrecoid: TIntegerField;
    qProPrecoreferencia: TWideStringField;
    qProPrecobarras: TWideStringField;
    qProPrecodescricao: TWideStringField;
    qProPrecovalor: TFloatField;
    qProPrecoqtdestoque: TFloatField;
    qProPrecomultiplo: TFloatField;
    qProPrecoVendaSugerido: TFloatField;
    pAtualizando: TPanel;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure EdPesqChange(Sender: TObject);
    procedure EdNomChange(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure acCancelarExecute(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure edQtdKeyPress(Sender: TObject; var Key: Char);
    procedure btAddPClick(Sender: TObject);
    procedure XiButton2Click(Sender: TObject);
    procedure XiButton1Click(Sender: TObject);
    procedure CheckDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acExcluirExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TBeforePost(DataSet: TDataSet);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure LNewRecord(DataSet: TDataSet);
    procedure LBeforePost(DataSet: TDataSet);
    procedure btExcluirFClick(Sender: TObject);
    procedure CheckDBGrid2TitleClick(Column: TColumn);
    procedure LPrecoValidate(Sender: TField);
    procedure LAfterPost(DataSet: TDataSet);
    procedure CheckDBGrid2Exit(Sender: TObject);
    procedure ToolButton4Click(Sender: TObject);
    procedure rdAtClick(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure LxChange(Sender: TField);
    procedure ToolButton6Click(Sender: TObject);
    procedure btnAtualizaPrecoClick(Sender: TObject);
    procedure ckTodosClick(Sender: TObject);
  private
    alteraPreco, todospro, ord : String;
    vTabNova : boolean;
    vMarcandoX : boolean;
    AlterandoPreco : boolean;
    procedure ativaL;
    procedure BarraProgresso(posi, tot: integer; ver: boolean);
    procedure salvaT;
    procedure AtivaQ;
    procedure InserirItensPadrao;
    procedure AtualizaPrecoProd(idPro : integer);
    { Private declarations }
  public
    { Public declarations }
    procedure AddFicha(idPro : integer; pro, des, vTodos :string; pre:real);
  end;

var
   fCadTabela: TfCadTabela;

implementation

uses uDM, uFuncao, uImpProduto, uSenhaCad;

{$R *.dfm}

procedure TfCadTabela.InserirItensPadrao;
begin
  todosPro := 'S';
  dm.qSelect.close;
  dm.qSelect.SQL.clear;
  dm.qSelect.sql.Add(' select Tabela_I.Referencia, Tabela_I.Descricao, Tabela_I.Preco, Tabela_I.IdProduto ' +
                     ' from Tabela_I inner join tabela on Tabela.id = Tabela_I.IdTabela ' +
                     ' where Tabela.padrao = ''S'' and Tabela_I.ex in (0,2) ' );
  dm.qSelect.open;
  dm.qSelect.First;
  while dm.qSelect.Eof = false do
  begin
    if dm.qSelect.Fields[2].asfloat > 0  then
      todosPro := 'N';

    BarraProgresso(dm.qSelect.RecNo, dm.qSelect.RecordCount, true);
    AddFicha(dm.qSelect.FieldByName('IdProduto').AsInteger,
             trim(dm.qSelect.FieldByName('Referencia').asstring),
             copy(dm.qSelect.FieldByName('Descricao').asstring,1,80), 'N', dm.qSelect.FieldByName('Preco').asfloat );
    sleep(10);
    dm.qSelect.Next;
  end;
  todosPro := 'N';
  BarraProgresso(0,0, false);
  dm.qSelect.close;
end;

procedure TfCadTabela.AddFicha(idPro : integer; pro, des, vTodos :string; pre:real);
begin
  L.close;
  L.open;

  if vTodos = 'N' then
   qPro.Locate('id', idPro, []);  //Retirado por Nilton, estava ocasionando loop infinito com referencias repetidas

   if not (L.Locate('idproduto', qproID.value, [])) then
    begin
       L.Insert;
       sleep(100);
       LIdProduto.Value    := qProId.Value;
       LReferencia.Value   := copy(qProreferencia.Value,1,13);
       LCodBarras.Value    := COPY(qProbarras.Value,1,13);
       LDescricao.Value    := des;
       if todosPro = 'N' then
          LPreco.Value        := pre
       else
          LPreco.Value        := 0;
       LQtdeCaixa.Value    := qPromultiplo.Value;
       L.Post;
    end
   else
    begin
      if todosPro = 'N' then
      begin
         L.Edit;
         LPreco.Value        := pre;
         L.Post;
      end;
    end;

end;

procedure TfCadTabela.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm(TfImpproduto, fImpProduto);
  fImpProduto.RLLabel4.Caption := 'Lista de Preços Tabela ' + TDescricao.Text;

  vEnv_EmailDest := '';
  vEnv_Report    := fImpProduto.rpTabela;
  fImpProduto.rpTabela.PreviewModal;
  fImpProduto.free;

end;

procedure TfCadTabela.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit3.SetFocus;

  btExcluirF.Enabled    := true;
  btAddP.Enabled        := true;
  xibutton1.Enabled     := true;
  xibutton2.Enabled     := true;
  btnAtualizaPreco.Enabled := True;

  edCod.ReadOnly        := False;
  edNom.ReadOnly        := False;
  edCod.Color           := clWhite;
  edNom.Color           := clWhite;

  CheckDBGrid2.ReadOnly := false;
  CheckDBGrid2.Columns[1].ReadOnly := true;
  CheckDBGrid2.Columns[2].ReadOnly := true;

  vTabNova := true;

  rdat.Enabled := false;
  edPesq.Enabled := false;
end;

procedure TfCadTabela.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit3.SetFocus;

  btExcluirF.Enabled := true;
  btAddP.Enabled     := true;
  xibutton1.Enabled     := true;
  xibutton2.Enabled     := true;
  btnAtualizaPreco.Enabled := True;

  edCod.ReadOnly        := False;
  edNom.ReadOnly        := False;
  edCod.Color           := clWhite;
  edNom.Color           := clWhite;

  CheckDBGrid2.ReadOnly := false;
  CheckDBGrid2.Columns[1].ReadOnly := true;
  CheckDBGrid2.Columns[2].ReadOnly := true;

  rdat.Enabled := false;
  edPesq.Enabled := false;

end;

procedure TfCadTabela.acExcluirExecute(Sender: TObject);
begin
  if T.State in [dsInsert, dsEdit] then
     Exit;

  if Application.MessageBox('Deseja realmente excluir?', 'Atenção', mb_yesno+mb_defbutton2 + 32) = idNo then
     Exit;

  T.Edit;
  TEx.Value := 1;
  Tsincronizado.Value := 'N';
  T.Post;
  T.ApplyUpdates;
  Execsql('update tabela_i set sincronizado = ''N'', ex = 1 where idtabela = ' + Tid.Text );
  sleep(100);

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;

  AtivaQ;

  rdat.Enabled := true;
  edPesq.Enabled := true;

end;

procedure TfCadTabela.AtivaQ;
var
  vAt : string;
begin
  case rdAt.ItemIndex of
    0: vAt := 'T';
    1: vAt := 'S';
    2: vAt := 'N';
  end;

  T.close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  T.ParamByName('at').asstring := vAt;
  T.Open;
end;

procedure TfCadTabela.FormActivate(Sender: TObject);
begin
  inherited;
  WindowState := wsMaximized;
end;

procedure TfCadTabela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
  fCadTabela := nil;

end;

procedure TfCadTabela.FormCreate(Sender: TObject);
begin
  inherited;
  Execsql('delete from tabela_i where idtabela = 0 ');

  ord      := 'DESC';
  todosPro := 'N';
  alteraPreco := 'N';

  btExcluirF.Enabled := false;
  btAddP.Enabled     := false;

  edCod.ReadOnly     := true;
  edNom.ReadOnly     := true;
  EdCod.Color        := StringToColor('$00CEFDFC');
  edNom.Color        := StringToColor('$00CEFDFC');

  qPro.open;
  AtivaQ;
  vTabNova := false;
  vMarcandoX := false;
  AlterandoPreco := false;
  pAtualizando.Visible := false;
end;

procedure TfCadTabela.acSalvarExecute(Sender: TObject);
var
  vDesc : string;
begin
  SelectNext(ActiveControl, True, True);

  if  (Tdescricao.Text = '' ) then
  begin
     Application.MessageBox('Descrição não preenchida. Por favor, verifique!','Atenção');
     DBEdit3.SetFocus;
     exit;
  end;

  vDesc := TDescricao.asstring;

  inherited;

  T.Locate('descricao', vDesc, []);

  CheckDBGrid2.ReadOnly := true;
  CheckDBGrid2.Columns[1].ReadOnly := true;
  CheckDBGrid2.Columns[2].ReadOnly := true;


  btExcluirF.Enabled  := false;
  btAddP.Enabled      := false;
  xibutton1.Enabled   := false;
  xibutton2.Enabled   := false;
  btnAtualizaPreco.Enabled := False;

  edCod.ReadOnly      := true;
  edNom.ReadOnly      := true;
  EdCod.Color         := StringToColor('$00CEFDFC');
  edNom.Color         := StringToColor('$00CEFDFC');

  if vTabNova then
    InserirItensPadrao;

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;

  ativaQ;

  alteraPreco := 'N';
  vTabNova := false;

  rdat.Enabled := true;
  edPesq.Enabled := true;
end;

procedure TfCadTabela.TNewRecord(DataSet: TDataSet);
begin
  //TId.Value           := InsereCodigo('tabela', 'id');
  TEx.Value           := 0;
  TSincronizado.Value := 'N';
  TAtivo.Value        := 'S';
  Tpadrao.asstring    := 'N';

end;

procedure TfCadTabela.ToolButton4Click(Sender: TObject);
begin
  qTT.Close;
  qTT.Open;
  qTT.First;
  while qTT.Eof = false do
  begin
    Application.ProcessMessages;
    BarraProgresso(qTT.RecNo, qTT.RecordCount, True);
    qLL.Close;
    qLL.ParamByName('id').Value := qTTId.asinteger;
    qLL.Open;
    while qLL.Eof = false do
    begin
       Application.ProcessMessages;
       if qLLidweb.Text <> '' then
         Execsql(' update tabela_i set sincronizado = ''N'', ex = 1 where idtabela = ' + qTTid.Text +
                 ' and idproduto = ' + qLLidproduto.Text + ' and idweb <> ' + qLLidweb.Text  );
       qLL.Next;
    end;
    qTT.Next;
  end;
  BarraProgresso(0, 0, False);

end;

procedure TfCadTabela.ToolButton6Click(Sender: TObject);
begin
  inherited;
  L.First;
  while L.Eof = false do
  begin
    AtualizaQtdDisponivel(LIdProduto.AsInteger, false);
    L.Next;
  end;
  L.First;
  Application.MessageBox('Estoque atualizado com sucesso!', 'Confirmação');


end;

procedure TfCadTabela.XiButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir?', 'Atenção', mb_yesno+mb_defbutton2 ) = idNo then
     Exit;

   Execsql('update tabela_i set ex = 1, sincronizado = ''N'' where idtabela = ' + Tid.Text );

   ativaL;

end;

procedure TfCadTabela.XiButton2Click(Sender: TObject);
var
  vPreco : real;
begin
  vPreco := 0;
  if T.State = dsInsert then
     salvaT;

  todosPro := 'S';

  qPro.Close;
  qPro.Open;
  qPro.First;

  while qpro.Eof = false do
   begin
    {if vTabNova then
    begin
     vPreco := strtofloatdef(  QueryConsulta (' select preco from Tabela_I ' +
                      ' inner join tabela on Tabela.id = Tabela_I.IdTabela ' +
                      ' where Tabela.padrao = ''S'' and Tabela_I.Referencia = '+
                      QuotedStr(qProreferencia.text)),0);

     if vPreco >0  then
       todosPro := 'N';
    end;  }
    BarraProgresso(qPro.RecNo, qPro.RecordCount, true);
    AddFicha(qProid.AsInteger, trim(qProreferencia.text), copy(qProdescricao.Text,1,80), 'S', vPreco );
    sleep(10);
    qpro.Next;
   end;

  todosPro := 'N';
  BarraProgresso(0,0, false);
  ativaL;

end;

procedure TfCadTabela.btnAtualizaPrecoClick(Sender: TObject);
begin
  if not (L.locate('X', 'T', [])) then
  begin
    application.MessageBox('Nenhum produto selecionado para atualizar o preço. Por favor, verifique!', 'Atenção');
    exit;
  end;

  application.MessageBox(PCHAR('ATENÇÃO'#13'Apenas produtos marcados serão atualizados.'), 'Atenção');

  vMarcandoX := false;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  try
    fSenhaCad.ShowModal;
    if RespCad = 'N' then
      exit;
  finally
    fSenhaCad.Free;
  end;

  if T.State = dsInsert then
     salvaT;

  pAtualizando.Visible := true;
  toolbar1.Enabled := false;
  acSair.Enabled := false;

  btnAtualizaPreco.enabled := false;
  xibutton2.Enabled := false;
  xibutton1.Enabled := false;

  checkdbgrid2.Enabled := false;

  {qPro.Close;
  qPro.Open;
  qPro.First;

  while qPro.Eof = false do
  begin
    BarraProgresso(qPro.RecNo, qPro.RecordCount, true);
    alteraPreco := 'S';
    AtualizaPrecoProd(qProid.AsInteger);
    sleep(10);
    qPro.Next;
  end;    }

  AlterandoPreco := true;

//  CheckDBGrid2.DataSource := nil;

  L.First;
  while L.Eof = false do
  begin
    BarraProgresso(L.RecNo, L.RecordCount, true);
    if LX.AsString = 'T' then
    begin
      alteraPreco := 'S';
      AtualizaPrecoProd(LIdProduto.AsInteger);
      sleep(10);
    end;
    L.Next;
  end;

//  CheckDBGrid2.DataSource := DL;

  BarraProgresso(0,0, false);
  alterandoPreco := false;

  toolbar1.Enabled := true;
  acSair.Enabled := true;
  btnAtualizaPreco.enabled := true;
  xibutton2.Enabled := true;
  xibutton1.Enabled := true;
  pAtualizando.Visible := false;
  checkdbgrid2.Enabled := true;

  ativaL;
end;

procedure TfCadTabela.AtualizaPrecoProd(idPro : integer);
begin
  qProPreco.Close;
  qProPreco.ParamByName('id').AsInteger := idPro;
  qProPreco.Open;

  L.Edit;
  LPreco.Value        := qProPrecoVendaSugerido.AsFloat;
  L.Post;

end;

procedure TfCadTabela.BarraProgresso(posi, tot:integer; ver:boolean);
begin
  gauge1.MaxValue  := tot;
  gauge1.Progress  := posi;
  Application.ProcessMessages;
  gauge1.Visible   := ver;

end;

procedure TfCadTabela.EdPesqChange(Sender: TObject);
begin
 ativaQ;
end;

procedure TfCadTabela.TabSheet4Show(Sender: TObject);
begin
  inherited;
  if vTabNova then
  begin
    InserirItensPadrao;
    vTabNova := false;
    ativaL;
  end;

     if dm.qUser.locate('Nome_1', 'TAB_PRECO_ALT_VALOR', []) then // ver se user tem permissão pra alterar preço
      begin
        if dm.qUserPermitido.Text = 'F' then
         begin
          btAddP.Enabled := False;
          btExcluirF.Enabled := False;
          XiButton1.Enabled := False;
          XiButton2.Enabled := False;
          btnAtualizaPreco.Enabled := false;
          CheckDBGrid2.ReadOnly := True;
         end;
      end;


end;

procedure TfCadTabela.TAfterScroll(DataSet: TDataSet);
begin
  AtivaL;
end;

procedure TfCadTabela.TBeforePost(DataSet: TDataSet);
begin
  Tsincronizado.Value := 'N';

end;

procedure TfCadTabela.EdNomChange(Sender: TObject);
begin
  if (EdNom.Text <> '')  then
  begin
     DM.qPesq.Close;
     DM.qPesq.SQL.Clear;
     DM.qPesq.SQL.Add(' select  id, referencia, descricao nome from produto '+
                      ' where ex = 0 and ativo = ''S'' and tipo = ''P'' and descricao like '+QuotedStr('%'+EdNom.Text+'%') );
     DM.qPesq.Open;
     gdPesq.Left := edCod.Left;
     gdPesq.Top  := edCod.Top + edCod.Height + 2;

     if DM.qPesq.IsEmpty then
       gdPesq.Visible := False
     else
       gdPesq.Visible := True;
  END
  else
     gdPesq.Visible := False;


end;

procedure TfCadTabela.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadTabela.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;

    EdCod.Text := trim(DM.qPesq.FieldByName('referencia').text);
    EdCodExit(Application);
  end;

end;

procedure TfCadTabela.LAfterPost(DataSet: TDataSet);
begin
  inherited;
   L.ApplyUpdates;
   alteraPreco := 'N';
   if vMarcandoX then
    exit;

   if AlterandoPreco = false then
    AtualizaQtdDisponivel(LIdProduto.AsInteger, false);

end;

procedure TfCadTabela.LBeforePost(DataSet: TDataSet);
begin
  if vMarcandoX then
    exit;

  Lsincronizado.Value := 'N';

  if T.State in [dsEdit] then
   begin
     if L.State in [dsEdit] then
     begin
         if alteraPreco = 'N' then
         begin
            Application.CreateForm(TfSenhaCad, fSenhaCad);
            fSenhaCad.ShowModal;
            if RespCad = 'N' then
            begin
               L.Cancel;
               alteraPreco := 'N';
               exit;
            end
            else
              alteraPreco := 'S';
         end;

         if alteraPreco = 'S' then
            GravaLogCad(IdUsuario, LIdTabela.AsInteger, 'TABELA PRECO', 'Alteração preço item: ' + LReferencia.Text + ' - ' + LDescricao.Text );

     end;
   end;
end;

procedure TfCadTabela.LNewRecord(DataSet: TDataSet);
begin
  LIdTabela.Value     := Tid.Value;
  Lex.Value           := 0;
  Lsincronizado.Value := 'N';
end;

procedure TfCadTabela.LPrecoValidate(Sender: TField);
begin
  LSincronizado.Text := 'N';
end;

procedure TfCadTabela.LxChange(Sender: TField);
begin
  inherited;
  alteraPreco := 'X';
  vMarcandoX := true;
end;

procedure TfCadTabela.rdAtClick(Sender: TObject);
begin
  inherited;
  AtivaQ;
end;

procedure TfCadTabela.acCancelarExecute(Sender: TObject);
begin
  inherited;
  btExcluirF.Enabled := false;
  btAddP.Enabled     := false;
  xibutton1.Enabled     := false;
  xibutton2.Enabled     := false;
  btnAtualizaPreco.Enabled := false;

  edCod.clear;
  edNom.clear;
  edQtd.clear;

  edCod.ReadOnly      := true;
  edNom.ReadOnly      := true;
  EdCod.Color         := StringToColor('$00CEFDFC');
  edNom.Color         := StringToColor('$00CEFDFC');

  CheckDBGrid2.ReadOnly := true;
  CheckDBGrid2.Columns[1].ReadOnly := true;
  CheckDBGrid2.Columns[2].ReadOnly := true;
  alteraPreco := 'N';
  vTabNova := false;

  rdat.Enabled := true;
  edPesq.Enabled := true;
end;

procedure TfCadTabela.ckTodosClick(Sender: TObject);
Var
  vX : String;
begin
  inherited;
  if ckTodos.Checked then
    vX := 'T'
  else
    vX := 'F';

  vMarcandoX := true;
  L.first;
  while L.Eof = false do
  begin
    L.Edit;
    LX.AsString := vX;
    L.Post;
    L.Next;
  end;
  vMarcandoX := false;
end;

procedure TfCadTabela.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadTabela.CheckDBGrid2Exit(Sender: TObject);
begin
  if L.State in [dsEdit] then
     L.Post;

end;

procedure TfCadTabela.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

  Key := NaoInsereDBGrid(TDBGrid(Sender),
    TDBGrid(Sender).DataSource.DataSet, Key);

end;

procedure TfCadTabela.CheckDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
   {if CheckDBGrid2.SelectedIndex = 2 then
    begin
       if qComi.Eof then
          qComi.First
        else
          qComi.Next;
       CheckDBGrid2.SelectedIndex := 2;
    end;}
  end;
end;

procedure TfCadTabela.CheckDBGrid2TitleClick(Column: TColumn);
var
  sql, col : String;
begin

  if ord = 'DESC' then
     ord := 'ASC' else ord := 'DESC';

  col := Column.FieldName + '  ';
  sql := ' select tabela_i.* '+
         ' from tabela_i '+
         ' left join produto p on p.id = tabela_i.idproduto '+
         ' where tabela_i.idtabela = :id '+
         '   and (  (tabela_i.ex in (0,2)) and  '+
         '  (tabela_i.id = (select max(t.id) from tabela_i t where t.idproduto = tabela_i.idproduto and t.IdTabela = tabela_i.idtabela) ) ) '+
         ' order by ' + col + ord;
  L.Close;
  L.SQL.Clear;
  L.SQL.Add(sql);

  AtivaL;

end;

procedure TfCadTabela.edCodExit(Sender: TObject);
var
  vsql : string;
begin
  if (EdCod.Text <> '')  then
  begin
    vSql :=  ' select id, referencia,  descricao nome '+
             ' from produto '+
             ' where ex = 0 and ativo = ''S'' and tipo = ''P'' and referencia like '+
              quotedstr(trim(edCod.Text));
    {if vTabNova then
      vSql :=  ' select produto.referencia id,  produto.descricao nome , Tabela_I.Preco  ' +
               ' from produto  '+
				       ' left join Tabela_I on Tabela_I.IdProduto = produto.Id   ' +
				       ' left join Tabela on Tabela.id = Tabela_I.IdTabela and tabela.padrao = ''S''  ' +
               ' where produto.ex = 0 and tipo = ''P'' and produto.referencia like '+ quotedstr(trim(edCod.Text))  +
			         ' order by tabela.padrao desc ' ;  }
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(vSql );
    DM.qPesq.Open;
    if not DM.qPesq.IsEmpty then
    begin
       edNom.OnChange := nil;
       edNom.Text     := dm.qpesq.fieldbyname('nome').Text;
       edNom.OnChange := EdNomChange;
       gdPesq.Visible := false;
       {if vTabNova then
       begin
         edQtd.text := dm.qpesq.fieldbyname('Preco').Text ;
         if dm.qpesq.fieldbyname('Preco').asfloat > 0 then
           btAddP.SetFocus
         else
           edQtd.SetFocus;
       end
       else  }
         edQtd.SetFocus;
    END;
  end;

end;

procedure TfCadTabela.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
     if gdPesq.Visible then
        gdPesq.SetFocus;

end;

procedure TfCadTabela.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  //somente_numero_sem_virgula( key );

end;

procedure TfCadTabela.edQtdKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero( key );

end;

procedure TfCadTabela.btAddPClick(Sender: TObject);
begin

    if trim(edCod.Text) = '' then
    begin
      Application.MessageBox('Informe o código!', 'Atenção');
      edCod.SetFocus;
      exit;
    end;

    if trim(edNom.Text) = '' then
    begin
      Application.MessageBox('Informe a descrição!', 'Atenção');
      edNom.SetFocus;
      exit;
    end;

    if trim(edQtd.Text) = '' then
    begin
      Application.MessageBox('Informe o preço!', 'Atenção');
      edQtd.SetFocus;
      exit;
    end;

    if T.State = dsInsert then
       salvaT;

    todospro := 'N';
    AddFicha(dm.qpesq.fieldbyname('id').AsInteger, trim(edCod.text),trim(edNom.text), 'N', strtofloat(edQtd.Text));
    L.ApplyUpdates;

    edCod.Clear;
    edNom.Clear;
    edQtd.Clear;
    gdPesq.Visible := false;
    ativaL;

    edCod.SetFocus;


end;

procedure TfCadTabela.btExcluirFClick(Sender: TObject);
begin
  if L.IsEmpty then
     Exit;

  if Application.MessageBox('Deseja realmente excluir?', 'Atenção', mb_yesno+mb_defbutton2 ) = idYes then
  begin
    L.first;
    alteraPreco := 'S';
    while not L.eof do
    begin
      if Lx.asstring = 'T' then
      begin
        alteraPreco := 'S';
        L.edit;
        LEx.Value := 1;
        Lsincronizado.Text := 'N';
        L.Post;
        L.ApplyUpdates;
      end;
      L.next;
    end;

     AtivaL;
  end;
end;

procedure TfCadTabela.ativaL;
begin
  if Tid.asstring <> '' then
    ExecSQL('update Tabela_I set x= ''F'' where x = ''T'' and IdTabela = ' + Tid.asstring);

  L.Close;
  L.ParamByName('id').Value := Tid.value;
  L.Open;
  lTot.Caption := formatfloat('#000', L.RecordCount);

  checkdbgrid2.enabled := L.RecordCount > 0;

end;

procedure TfCadTabela.salvaT;
var
  ii:integer;
begin
  T.post;
  T.ApplyUpdates;
  Sleep(10);
  DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add('select max(id) id from tabela');
  DM.qExec.Open;
  ii := dm.qExec.Fields[0].asinteger;
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  T.Open;
  T.locate('id', ii, []);
  T.edit;

end;


end.
