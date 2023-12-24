unit UCadVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList, XiButton, CheckDBGrid, Vcl.Samples.Gauges;

type
  TfCadVendedor = class(TfCadPadrao)
    TID: TIntegerField;
    TNOME: TWideStringField;
    TENDERECO: TWideStringField;
    TBAIRRO: TWideStringField;
    TCIDADE: TWideStringField;
    TCEP: TWideStringField;
    TUF: TWideStringField;
    Ttel1: TWideStringField;
    Ttel2: TWideStringField;
    Tfax: TWideStringField;
    TCONTATO: TWideStringField;
    TEMAIL: TWideStringField;
    TIE: TWideStringField;
    TCNPJ: TWideStringField;
    TCONTA: TWideStringField;
    TAGENCIA: TWideStringField;
    TBANCO: TWideStringField;
    TTIPOPAGTO: TIntegerField;
    TOBS: TWideStringField;
    TEX: TIntegerField;
    TSITE: TWideStringField;
    TTIPOPESSOA: TWideStringField;
    Tfantasia: TWideStringField;
    Tnum: TWideStringField;
    Tidcidade: TIntegerField;
    Tdia_venci: TIntegerField;
    ScrollBox1: TScrollBox;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit19: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit21: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit13: TDBEdit;
    rgTipo: TDBRadioGroup;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit1: TDBEdit;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label24: TLabel;
    DBEdit22: TDBEdit;
    TComissao: TFloatField;
    Label51: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label25: TLabel;
    DBComboBox4: TDBComboBox;
    Label26: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Tpais: TIntegerField;
    Tsincronizado: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    Tidweb: TIntegerField;
    Tpermite_web: TWideStringField;
    Panel1: TPanel;
    Label6: TLabel;
    Shape1: TShape;
    TabSheet3: TTabSheet;
    Label65: TLabel;
    DBText3: TDBText;
    Bevel3: TBevel;
    lCPFCNPJ: TLabel;
    edCod: TEdit;
    EdNom: TEdit;
    Label8: TLabel;
    CheckDBGrid2: TCheckDBGrid;
    btAddP: TXiButton;
    btExcluirF: TXiButton;
    XiButton2: TXiButton;
    XiButton1: TXiButton;
    qPro: TZQuery;
    qProid: TIntegerField;
    qProreferencia: TWideStringField;
    qProbarras: TWideStringField;
    qProdescricao: TWideStringField;
    qProvalor: TFloatField;
    qProqtdestoque: TFloatField;
    qPromultiplo: TFloatField;
    gdPesq: TDBGrid;
    L: TZQuery;
    UL: TZUpdateSQL;
    DL: TDataSource;
    Label27: TLabel;
    ltot: TLabel;
    LId: TIntegerField;
    LIdVendedor: TIntegerField;
    LIdProduto: TIntegerField;
    Lsincronizado: TWideStringField;
    LEx: TIntegerField;
    LIdweb: TIntegerField;
    Ldescricao: TWideStringField;
    ToolButton3: TToolButton;
    Gauge1: TGauge;
    Lreferencia: TWideStringField;
    Lbarras: TWideStringField;
    Lx: TWideStringField;
    Label28: TLabel;
    DBEdit5: TDBEdit;
    XiButton3: TXiButton;
    ckTodos: TCheckBox;
    Tativo: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    rdAtivo: TRadioGroup;
    TabSheet4: TTabSheet;
    qClientes: TZQuery;
    DBGrid2: TDBGrid;
    Label29: TLabel;
    DBText1: TDBText;
    Label30: TLabel;
    qClientesid: TIntegerField;
    qClientesnome: TWideStringField;
    dClientes: TDataSource;
    procedure TNewRecord(DataSet: TDataSet);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure rgTipoClick(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBComboBox4Change(Sender: TObject);
    procedure TidcidadeValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure TBeforePost(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure TCNPJValidate(Sender: TField);
    procedure FormActivate(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomChange(Sender: TObject);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure btAddPClick(Sender: TObject);
    procedure btExcluirFClick(Sender: TObject);
    procedure LNewRecord(DataSet: TDataSet);
    procedure LAfterPost(DataSet: TDataSet);
    procedure LBeforePost(DataSet: TDataSet);
    procedure XiButton2Click(Sender: TObject);
    procedure XiButton1Click(Sender: TObject);
    procedure CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckDBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure LBeforeOpen(DataSet: TDataSet);
    procedure XiButton3Click(Sender: TObject);
    procedure ckTodosClick(Sender: TObject);
    procedure TBeforeOpen(DataSet: TDataSet);
  private
    todospro : String;
    procedure BarraProgresso(posi, tot: integer; ver: boolean);
    function  verificaCPFRepetido: boolean;
    procedure botoes(tp: boolean);
    procedure ativaL;
    procedure salvaT;
    procedure AddFicha(pro: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadVendedor: TfCadVendedor;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfCadVendedor.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.Value        := InsereCodigo('vendedor','ID' );
  TTipoPessoa.Text := 'J';
  TEx.Value        := 0;
  Tdia_venci.Value := 10;
  Tpais.Value      := 1058;
  Tsincronizado.Value := 'S';
  Tpermite_web.Value  := 'N';
  Tidweb.Value        := 0;
  TAtivo.AsString  := 'S';

end;

procedure TfCadVendedor.acExcluirExecute(Sender: TObject);
begin
  if T.State in [dsInsert, dsEdit] then
     Exit;

  if Application.MessageBox('Deseja realmente excluir?', 'Atenção', mb_yesno+mb_defbutton2 ) = idNo then
     Exit;

  if qClientes.RecordCount > 0 then
  begin
    if application.MessageBox('Representante com cliente vinculado. Deseja realmente excluir?', 'Atenção', mb_yesno+MB_ICONQUESTION) = idNo then
    begin
      PageControl1.TabIndex := 1;
      exit;
    end;
  end;

  T.Edit;
  TEx.Value := 1;
  T.Post;
  T.ApplyUpdates;

  sleep(100);

  try
    acSair.Enabled := false;
    atualizaWeb;
  finally
    acSair.Enabled := true;
  end;
  T.Close;
  T.Open;

end;

procedure TfCadVendedor.acInserirExecute(Sender: TObject);
begin
  inherited;
  botoes(true);
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit16.SetFocus;
end;

procedure TfCadVendedor.acCancelarExecute(Sender: TObject);
begin
  inherited;
  botoes(false);

end;

procedure TfCadVendedor.acEditarExecute(Sender: TObject);
begin
  inherited;
  botoes(true);

  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit16.SetFocus;
end;

procedure TfCadVendedor.TAfterScroll(DataSet: TDataSet);
begin
   rgTipoClick(Application);

   DM.qCid.Close;
   DM.qCid.ParamByName('UF').Value := TUF.Text;
   DM.qCid.Open;

   AtivaL;

end;

procedure TfCadVendedor.TBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  case rdAtivo.itemIndex of
    0: T.ParamByName('ativo').AsString := 'T';
    1: T.ParamByName('ativo').AsString := 'S';
    2: T.ParamByName('ativo').AsString := 'N';
  end;
end;

procedure TfCadVendedor.TBeforePost(DataSet: TDataSet);
begin
  Tsincronizado.Value := 'N';

end;

procedure TfCadVendedor.TCNPJValidate(Sender: TField);
begin
  if not (T.State in [dsEdit, dsInsert]) then
     Exit;

  if trim(TCnpj.text) = '' then
     Tpermite_web.Text := 'S';

end;

procedure TfCadVendedor.TidcidadeValidate(Sender: TField);
begin
  inherited;
  TCidade.Value := uppercase(DM.qCidNome.Value);

end;

procedure TfCadVendedor.rgTipoClick(Sender: TObject);
begin
 if rgtipo.ItemIndex  = 1 then
    begin
      Label22.caption := 'Apelido';
      Label3.caption  := 'Nome';
      Label15.Caption := 'CPF';
      Label14.Caption := 'RG';
      TCNPJ.EditMask  := '###.###.###-##;0;_';
      DBedit14.MaxLength := 11;
    end;
 if rgtipo.ItemIndex  = 0 then
    begin
      Label22.caption := 'Fantasia';
      Label3.caption  := 'Razão Social';
      Label15.Caption := 'CNPJ';
      Label14.Caption := 'IE';
      TCNPJ.EditMask  := '##.###.###/####-##;0;_';
      DBedit14.MaxLength := 14;
    end;
end;

procedure TfCadVendedor.DBComboBox4Change(Sender: TObject);
begin
  inherited;

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := DBComboBox4.Text;
  DM.qCid.Open;

end;

procedure TfCadVendedor.DBEdit14Exit(Sender: TObject);
begin
     if TCNPJ.Text <> '' then
     begin

       //verifica repetido
       if VerificaCPFRepetido = false then
       begin
          dbedit14.SetFocus;
          Exit;
       end;

       if rgTipo.ItemIndex = 0 then
       begin
          if not CNPJ(TCNPJ.Text) then
          begin
             Application.MessageBox('CNPJ inválido. Por favor, verifique!', 'Atenção');
             DBEdit14.SetFocus;
          end;
       end
       else
       if rgTipo.ItemIndex = 1 then
       begin
          if not CPF(TCNPJ.Text) then
          begin
             Application.MessageBox('CPF inválido. Por favor, verifique!', 'Atenção');
             DBEdit14.SetFocus;
          end;
       end;
     end;

end;


function TfCadVendedor.verificaCPFRepetido:boolean;
var
   repe : String;
begin
   if not (T.State in [dsEdit, dsInsert]) then
      Exit;

   if length( trim(TCNPJ.Text) ) < 11 then // cpf
   begin
      repe := 'Representantes com o CNPJ/CPF incorreto. Por favor, verifique!' + #13+#10 +
              '===================================================' + #13+#10 +
              repe;
      Application.MessageBox(pchar(repe), 'Atenção');
      TCNPJ.Clear;
      Result := false;
      exit;
   end;

   dm.qPesq.Close;
   dm.qPesq.SQL.Add('select id, nome from vendedor where ex = 0 and cnpj like ' +
                    quotedstr(trim(TCNPJ.text)) + ' and id <> ' + Tid.Text );
   dm.qPesq.Open;
   repe := '';
   while dm.qPesq.Eof = false do
   begin
      repe := repe + trim(dm.qPesq.FieldByName('id').text) + '-'+ dm.qPesq.FieldByName('nome').text + #13+#10;
      dm.qPesq.Next;
   end;
   if trim(repe) <> '' then
   begin
      repe := 'Representantes com o mesmo CNPJ/CPF. Por favor, verifique!' + #13+#10 +
              '===============================================' + #13+#10 +
              repe;
      Application.MessageBox(pchar(repe), 'Atenção');
      TCNPJ.Clear;
      Result := false;
      exit;
   end;

   Result := true;


end;

procedure TfCadVendedor.XiButton1Click(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir?', 'Atenção', mb_yesno+mb_defbutton2 ) = idNo then
     Exit;

   Execsql('update vendedor_i set ex = 1, sincronizado = ''N'' where idvendedor = ' + Tid.Text );
   ativaL;

end;

procedure TfCadVendedor.XiButton2Click(Sender: TObject);
begin

  if T.State = dsInsert then
     salvaT;

  todosPro := 'S';
  qPro.Close;
  qPro.Open;
  qPro.First;
  while qpro.Eof = false do
  begin
     BarraProgresso(qPro.RecNo, qPro.RecordCount, true);
     AddFicha(trim(qProreferencia.text) );
     sleep(10);
     qpro.Next;
  end;
  todosPro := 'N';
  BarraProgresso(0,0, false);
  ativaL;

end;

procedure TfCadVendedor.XiButton3Click(Sender: TObject);
begin
  if not L.Locate('x', 'T', []) then
  begin
      Application.MessageBox('Selecione produto!', 'Atenção');
      CheckDBGrid2.SetFocus;
      exit;
  end;

  if Application.MessageBox('Confirma inserir produto(s) selecionado(s) para todos representantes?', 'Atenção', mb_yesno ) = idyes then
  begin
    L.First;
    while not L.eof do
    begin
      if Lx.asstring = 'T' then
      begin
        ExecSQL(' insert into vendedor_i (id,IdVendedor, IdProduto, ex, sincronizado) ' +
            ' (select (select coalesce(max(vendedor_i.id),0) from vendedor_i) +  row_number() over (order by vendedor.id asc), ' +
            '  id idv, '+LIdProduto.asstring+', 0, ''N'' from vendedor where id not in( select distinct  ' +
            ' vendedor_i.IdVendedor from vendedor_i where vendedor_i.IdProduto = '+LIdProduto.asstring+'))');
        L.edit;
        Lx.asstring := 'F';
        L.post;
      end;
      L.Next;
    end;
    L.First;
    edCod.SetFocus;
    Application.MessageBox('Produto(s) inserido(s)!', 'Aviso');
  end;
end;

procedure TfCadVendedor.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     DBGrid1.Canvas.Brush.Color := $00FCA258;
     DBGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if (Tidweb.asinteger > 0) and (Tpermite_web.Text = 'S') then
       DBGrid1.Canvas.Brush.Color := $0095FF71; //verde
  end;
  DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);

end;

procedure TfCadVendedor.DBLookupComboBox4CloseUp(Sender: TObject);
begin
  if TPAIS.Text <> '1058' then
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := False;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := False;
  end
  else
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := True;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := True;
  end;

end;

procedure TfCadVendedor.edCodExit(Sender: TObject);
begin
  inherited;

  if (EdCod.Text <> '')  then begin
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' select referencia id,  descricao nome, id idpro '+
                     ' from produto '+
                     ' where ex = 0 and tipo = ''P'' and referencia like '+
                      quotedstr(trim(edCod.Text)) );
    DM.qPesq.Open;
    if not DM.qPesq.IsEmpty then
    begin
       qpro.Locate('id', dm.qpesq.fieldbyname('idpro').Text, [] );
       edNom.OnChange := nil;
       edNom.Text     := dm.qpesq.fieldbyname('nome').Text;
       edNom.OnChange := EdNomChange;
       gdPesq.Visible := false;
       btAddP.SetFocus;
    END;
  end;

end;

procedure TfCadVendedor.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  somente_numero_sem_virgula( key );
end;

procedure TfCadVendedor.EdNomChange(Sender: TObject);
begin
  if (EdNom.Text <> '')  then
  begin
     DM.qPesq.Close;
     DM.qPesq.SQL.Clear;
     DM.qPesq.SQL.Add(' select referencia id,  descricao nome from produto '+
                      ' where ex = 0 and tipo = ''P'' and descricao like '+QuotedStr('%'+EdNom.Text+'%') );
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

procedure TfCadVendedor.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_down then
     if gdPesq.Visible then
        gdPesq.SetFocus;

end;

procedure TfCadVendedor.FormActivate(Sender: TObject);
var
  repe:String;
begin
  inherited;

  //verifica repetidos
  dm.qPesq.Close;
  dm.qPesq.SQL.Add(' select re.id, re.nome, re.cnpj from vendedor re '+
                   ' where (select count(rep.id) from vendedor rep '+
                   '    where rep.ex = 0 and  rep.cnpj like re.cnpj GROUP BY rep.CNPJ) > 1	'+
                   ' order by re.cnpj ' );
  dm.qPesq.Open;
  repe := '';
  while dm.qPesq.Eof = false do
  begin
      repe := repe + trim(dm.qPesq.FieldByName('id').text) + '-'+ dm.qPesq.FieldByName('nome').text + #13+#10;
      dm.qPesq.Next;
  end;
  if trim(repe) <> '' then
  begin
      repe := 'Representantes com o mesmo CNPJ/CPF. Por favor, verifique!' + #13+#10 +
              '===============================================' + #13+#10 +
              repe;
      Application.MessageBox(pchar(repe), 'Atenção');
  end;


end;

procedure TfCadVendedor.FormCreate(Sender: TObject);
begin
  inherited;

  qPro.Close;
  qPro.Open;

  qClientes.Close;
  qClientes.Open;

  if DM.qParametromod_pedidosWeb.Text = 'N' then
  begin
     DBCheckBox1.Visible := false;
     Label6.Visible      := false;
  end;

  botoes(false);


end;

procedure TfCadVendedor.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadVendedor.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;

    EdCod.Text := trim(DM.qPesq.FieldByName('id').text);
    EdCodExit(Application);
  end;

end;

procedure TfCadVendedor.LAfterPost(DataSet: TDataSet);
begin
  inherited;
  L.ApplyUpdates;
end;

procedure TfCadVendedor.LBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  ExecSql('update vendedor_i set x = ''F'' where x = ''T''' );

end;

procedure TfCadVendedor.LBeforePost(DataSet: TDataSet);
begin
  inherited;
  Lsincronizado.Value := 'N';

end;

procedure TfCadVendedor.LNewRecord(DataSet: TDataSet);
begin
  inherited;
  LId.Value           := InsereCodigo('vendedor_i','id');
  LIdvendedor.Value   := Tid.Value;
  Lex.Value           := 0;
  Lsincronizado.Value := 'N';
  LX.Value            := 'F';

end;

procedure TfCadVendedor.acSalvarExecute(Sender: TObject);
begin
  selectnext(activecontrol, true, true);

  if dm.qParametromod_pedidosWeb.Text = 'S' then
  begin
     if trim(TCNPJ.Text) = '' then
     begin
        Application.MessageBox('Informe o CPF/CNPJ! Campo obrigatório.', 'Atenção');
        PageControl1.TabIndex := 1;
        Dbedit14.SetFocus;
        exit;
     end;
  end;

  //verifica repetido
  if VerificaCPFRepetido = false then
  begin
     PageControl1.TabIndex := 1;
     dbedit14.SetFocus;
     Exit;
  end;

  if Tnome.Text = ''  then
     Tnome.text := Tfantasia.Text;

  if TDia_venci.AsInteger = 0 then
     Tdia_venci.Value := 10;

  if TAtivo.AsString = 'N' then
  begin
    if qClientes.RecordCount > 0 then
    begin
      if application.MessageBox('Representante com cliente vinculado. Deseja realmente inativar?', 'Atenção', mb_yesno+MB_ICONQUESTION) = idNo then
      begin
        TAtivo.AsString := 'S';
        PageControl1.TabIndex := 1;
        exit;
      end;
    end;
  end;


  inherited;

  botoes(false);

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;

  T.Close;
  T.Open;


end;

procedure TfCadVendedor.botoes(tp:boolean);
begin
  btExcluirF.Enabled     := tp;
  btAddP.Enabled         := tp;
  xibutton1.Enabled      := tp;
  xibutton2.Enabled      := tp;
  xibutton3.Enabled      := tp;
  edcod.Enabled          := tp;
  edNom.Enabled          := tp;
  CheckDBGrid2.ReadOnly  := not tp;

end;

procedure TfCadVendedor.btAddPClick(Sender: TObject);
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

    if T.State = dsInsert then
       salvaT;

    todospro := 'N';
    AddFicha(trim(edCod.text));
    L.ApplyUpdates;

    edCod.Clear;
    edNom.Clear;
    gdPesq.Visible := false;
    ativaL;

    edCod.SetFocus;

end;

procedure TfCadVendedor.btExcluirFClick(Sender: TObject);
begin

  if L.IsEmpty then
     Exit;

  if Application.MessageBox('Deseja realmente Excluir os itens selecionados?', 'Atenção', mb_yesno+mb_defbutton2 ) = idYes then
  begin

     L.First;
     while L.Eof = false do
     begin
       if trim(LX.Text) = 'T' then
       begin
         L.edit;
         LEx.Value := 1;
         Lsincronizado.Text := 'N';
         L.Post;
       end;
       L.Next;
     end;
     L.ApplyUpdates;

     AtivaL;
  end;

end;

procedure TfCadVendedor.CheckDBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     checkdbGrid2.Canvas.Brush.Color := $00FCA258;
     checkdbGrid2.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if LX.Text = 'T' then
       checkdbGrid2.Canvas.Brush.Color := $009F9FFF
  end;
  checkdbGrid2.DefaultDrawDataCell(Rect, checkdbGrid2.Columns[DataCol].Field ,state);

end;

procedure TfCadVendedor.CheckDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadVendedor.ckTodosClick(Sender: TObject);
var
  vTp : string;
begin
  vTp := 'F';
  if ckTodos.Checked then
    vTp := 'T';
  L.first;
  while not L.eof do
  begin
    L.edit;
    LX.asstring := vTp;
    L.post;
    L.next;
  end;
  L.first;
end;

procedure TfCadVendedor.ativaL;
begin
    L.Close;
    L.ParamByName('id').Value := Tid.value;
    L.Open;
    lTot.Caption := formatfloat('#000', L.RecordCount);

end;

procedure TfCadVendedor.salvaT;
var
  ii:integer;
begin
  T.post;
  ii := TID.asinteger;
  T.ApplyUpdates;
  Sleep(10);
  {DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add('select max(id) id from vendedor_i');
  DM.qExec.Open;
  ii := dm.qExec.Fields[0].asinteger;}
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  T.Open;
  T.locate('id', ii, []);
  T.edit;

end;

procedure TfCadVendedor.BarraProgresso(posi, tot:integer; ver:boolean);
begin
  gauge1.MaxValue  := tot;
  gauge1.Progress  := posi;
  Application.ProcessMessages;
  gauge1.Visible   := ver;

end;


procedure TfCadVendedor.AddFicha(pro:string);
begin

    qpro.Locate('referencia', pro, []);
    if not (L.Locate('idproduto', qproID.value, [])) then
    begin
       L.Insert;
       sleep(100);
       LIdProduto.Value    := qProId.Value;
       L.Post;
    end;

end;


end.
