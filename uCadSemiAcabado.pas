unit uCadSemiAcabado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, CheckDBGrid, XiButton,
  System.Actions, System.ImageList;

type
  TfCadSemiAcabado = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    TabSheet4: TTabSheet;
    Label6: TLabel;
    qProc: TZQuery;
    dProc: TDataSource;
    grProc: TCheckDBGrid;
    qProcItem: TZQuery;
    dProcItem: TDataSource;
    CheckDBGrid4: TCheckDBGrid;
    qProc2: TZQuery;
    dProc2: TDataSource;
    btExcluirP: TXiButton;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    btExcluirI: TXiButton;
    upProcItem: TZUpdateSQL;
    Bevel2: TBevel;
    Bevel3: TBevel;
    upProc: TZUpdateSQL;
    edCod: TEdit;
    EdNom: TEdit;
    gdPesq: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    btAddP: TXiButton;
    cbProcesso: TComboBox;
    ckUltimo: TCheckBox;
    edOrdem: TMaskEdit;
    edCusto: TMaskEdit;
    edTempo: TMaskEdit;
    edQtd: TMaskEdit;
    cbUn: TComboBox;
    BtAddPi: TXiButton;
    DBText1: TDBText;
    TId: TIntegerField;
    TDescricao: TWideStringField;
    qProcId: TIntegerField;
    qProcIdProcesso: TIntegerField;
    qProcDescricao: TWideStringField;
    qProcIdSemiAcabado: TIntegerField;
    qProcUltimo: TWideStringField;
    qProcOrdem: TIntegerField;
    qProcTempo: TWideStringField;
    qProcCusto: TFloatField;
    qProcItemId: TIntegerField;
    qProcItemIdProcesso_sa: TIntegerField;
    qProcItemIdProduto: TIntegerField;
    qProcItemQtde: TFloatField;
    qProcItemUn: TWideStringField;
    qProcItemdescricao: TWideStringField;
    qProc2Id: TIntegerField;
    qProc2Descricao: TWideStringField;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Tqtdestoque: TFloatField;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Tcod_Manual: TIntegerField;
    TtotProcesso: TFloatField;
    TtotMP: TFloatField;
    Label12: TLabel;
    DBEdit3: TDBEdit;
    Label14: TLabel;
    DBEdit4: TDBEdit;
    qProcItemprecocompra: TFloatField;
    qProcItemtot: TFloatField;
    qProcItemtipo: TWideStringField;
    rdTipo: TRadioGroup;
    ckAnt: TCheckBox;
    qProcDepende_Ant: TWideStringField;
    Test_minimo: TFloatField;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label15: TLabel;
    cbNCM: TDBLookupComboBox;
    Label16: TLabel;
    DBEdit9: TDBEdit;
    qNCM: TZQuery;
    qNCMID: TIntegerField;
    qNCMNCM: TWideStringField;
    dNCM: TDataSource;
    TNCM: TWideStringField;
    Tcest: TWideStringField;
    TCustoTotal: TFloatField;
    Label17: TLabel;
    DBEdit7: TDBEdit;
    Label18: TLabel;
    DBEdit10: TDBEdit;
    Tmultiplo: TFloatField;
    DBEdit11: TDBEdit;
    Label19: TLabel;
    ToolButton3: TToolButton;
    btCopiar: TToolButton;
    Treferencia_base: TWideStringField;
    Ttamanho: TWideStringField;
    Tidcor: TIntegerField;
    qCor: TZQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dCor: TDataSource;
    Tidgrupo: TIntegerField;
    Treferencia: TWideStringField;
    qGrupo: TZQuery;
    qGrupoid: TIntegerField;
    qGrupodescricao: TWideStringField;
    dGrupo: TDataSource;
    Panel1: TPanel;
    Label67: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label88: TLabel;
    DBEdit49: TDBEdit;
    Label77: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label87: TLabel;
    DBEdit48: TDBEdit;
    btnref: TXiButton;
    Label20: TLabel;
    DBEdit12: TDBEdit;
    Tdesgrupo: TWideStringField;
    Tdescor: TWideStringField;
    Label89: TLabel;
    edRef: TEdit;
    Tunidade: TWideStringField;
    Label25: TLabel;
    DBEdit13: TDBEdit;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure EdPesqChange(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure qProcAfterScroll(DataSet: TDataSet);
    procedure btExcluirPClick(Sender: TObject);
    procedure btExcluirIClick(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomChange(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure edCodExit(Sender: TObject);
    procedure btAddPClick(Sender: TObject);
    procedure grProcDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure qProcAfterPost(DataSet: TDataSet);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edQtdKeyPress(Sender: TObject; var Key: Char);
    procedure edCustoKeyPress(Sender: TObject; var Key: Char);
    procedure edTempoKeyPress(Sender: TObject; var Key: Char);
    procedure BtAddPiClick(Sender: TObject);
    procedure qProcItemAfterPost(DataSet: TDataSet);
    procedure CheckDBGrid4CellClick(Column: TColumn);
    procedure CheckDBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grProcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acSairExecute(Sender: TObject);
    procedure grProcKeyPress(Sender: TObject; var Key: Char);
    procedure qProcNewRecord(DataSet: TDataSet);
    procedure qProcItemNewRecord(DataSet: TDataSet);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure acExcluirExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TabSheet2Show(Sender: TObject);
    procedure qProcBeforePost(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btCopiarClick(Sender: TObject);
    procedure qProcAfterOpen(DataSet: TDataSet);
    procedure btnrefClick(Sender: TObject);
    procedure AtivaT;
    procedure edRefChange(Sender: TObject);
    procedure cbProcessoChange(Sender: TObject);
  private
    indexando, nTipo, vCopiando, vInserindoP : String;
    procedure calculaTotal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadSemiAcabado: TfCadSemiAcabado;

implementation

uses uDM, uFuncao, uImpSA;

{$R *.dfm}

procedure TfCadSemiAcabado.acImprimirExecute(Sender: TObject);
begin
 T.AfterScroll := nil;

  Application.CreateForm(TfImpSA, fImpSA);
  vEnv_EmailDest := '';
  vEnv_Report    := fImpSA.rpLista;
  fImpSA.rpLista.PreviewModal;
  fImpSA.free;

 T.AfterScroll := TAfterScroll;
end;

procedure TfCadSemiAcabado.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;

  DBEdit3.ReadOnly := True;
  DBEdit3.Color := $00CEFDFC;

  DBEdit4.ReadOnly := True;
  DBEdit4.Color := $00CEFDFC;

  DBEdit7.ReadOnly := True;
  DBEdit7.Color := $00CEFDFC;

  DBEdit10.ReadOnly := True;
  DBEdit10.Color := $00CEFDFC;

  DBEdit2.SetFocus;

  BtExcluirI.Enabled := true;
  btExcluirP.Enabled := true;
  btAddP.Enabled     := true;
  btAddPi.Enabled    := true;

  edCod.ReadOnly        := False;
  edNom.ReadOnly        := False;
  edCod.Color           := clWhite;
  edNom.Color           := clWhite;
  checkDbgrid4.ReadOnly := false;
  checkDbgrid4.Columns[2].Color := clWhite;
  checkDbgrid4.Columns[3].Color := clWhite;

  grProc.ReadOnly := false;
  grProc.Columns[1].ReadOnly := false;
  grProc.Columns[2].ReadOnly := false;
  grProc.Columns[3].ReadOnly := false;
  grProc.Columns[4].ReadOnly := false;
  grProc.Columns[1].Color := clWhite;
  grProc.Columns[2].Color := clWhite;
  grProc.Columns[3].Color := clWhite;
  grProc.Columns[4].Color := clWhite;


  btCopiar.Enabled := false;

  vCopiando := 'S';


end;

procedure TfCadSemiAcabado.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;

  DBEdit3.ReadOnly := True;
  DBEdit3.Color := $00CEFDFC;

  DBEdit4.ReadOnly := True;
  DBEdit4.Color := $00CEFDFC;

  DBEdit7.ReadOnly := True;
  DBEdit7.Color := $00CEFDFC;

  DBEdit10.ReadOnly := True;
  DBEdit10.Color := $00CEFDFC;

  DBEdit2.SetFocus;

  BtExcluirI.Enabled := true;
  btExcluirP.Enabled := true;
  btAddP.Enabled     := true;
  btAddPi.Enabled    := true;

  edCod.ReadOnly     := False;
  edNom.ReadOnly     := False;
  edCod.Color := clWhite;
  edNom.Color := clWhite;
  checkDbgrid4.ReadOnly := false;
  checkDbgrid4.Columns[2].Color := clWhite;
  checkDbgrid4.Columns[3].Color := clWhite;

  grProc.ReadOnly := false;
  grProc.Columns[1].ReadOnly := false;
  grProc.Columns[2].ReadOnly := false;
  grProc.Columns[3].ReadOnly := false;
  grProc.Columns[4].ReadOnly := false;
  grProc.Columns[1].Color := clWhite;
  grProc.Columns[2].Color := clWhite;
  grProc.Columns[3].Color := clWhite;
  grProc.Columns[4].Color := clWhite;

  btCopiar.Enabled := false;
end;

procedure TfCadSemiAcabado.acExcluirExecute(Sender: TObject);
var
  vFicha : string;
begin
  if TId.AsString <> '' then
  begin
    if Application.MessageBox('Deseja realmente excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
      Exit;

    dm.qSelect.Close;
    dm.qSelect.SQL.Clear;
    dm.qSelect.SQL.Add(' select produto.descricao from ficha_tecnica inner join produto on ' +
                       ' produto.id = ficha_tecnica.IdProduto ' +
	                     ' where iditem = '+ TId.AsString +' and ficha_tecnica.tipo = ''S'' ');

    dm.qSelect.open;
    if dm.qSelect.RecordCount > 0 then //tem produtos q usam
    begin
      vFicha := '';
      dm.qSelect.first;
      while not dm.qSelect.eof do
      begin
        vFicha := vFicha + dm.qSelect.Fields[0].AsString + #13#10;
        dm.qSelect.next;
      end;
      dm.qSelect.Close;

      if vFicha <> '' then
      begin
        Application.MessageBox(pchar('Matéria-prima utilizada em: '+VFicha+'não é possível excluir. Por favor, verifique!'), 'Atenção');
        exit;
      end;
    end
    else
      dm.qSelect.Close;

    while qProc.eof = false do
    begin
      qProcItem.close;
      qProcItem.ParamByName('IDp').AsInteger := qProcId.AsInteger;
      qProcItem.Open;

      while qProcItem.eof = false do
      begin
        qProcItem.delete;
        qProcItem.first;
      end;
      qProc.delete;
      qProc.first;
    end;

    T.delete;
    T.ApplyUpdates;
    sleep(200);

    T.Close;
    T.Open;
  end;
end;

procedure TfCadSemiAcabado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //inherited;
  //
  T.close;
  Action := caFree;
  fCadSemiAcabado := nil;
end;

procedure TfCadSemiAcabado.FormCreate(Sender: TObject);
var
  i :integer;
begin
  inherited;

  qProc2.Open;
  cbProcesso.Items.Clear;
  for i := 0 to qProc2.RecordCount -1 do Begin
    cbProcesso.Items.Add(formatfloat( '000', qProc2Id.Value) + ' ' + qProc2Descricao.Text  );
    qProc2.Next;
  end;
  cbProcesso.Update;
  cbProcesso.ItemIndex := -1;

  edCod.ReadOnly        := true;
  edNom.ReadOnly        := true;
  EdCod.Color           := StringToColor('$00CEFDFC');
  edNom.Color           := StringToColor('$00CEFDFC');
  checkDbgrid4.ReadOnly         := true;
  checkDbgrid4.Columns[2].Color := StringToColor('$00CEFDFC');
  checkDbgrid4.Columns[3].Color := StringToColor('$00CEFDFC');

  grProc.ReadOnly            := true;
  grProc.Columns[0].ReadOnly := true;
  grProc.Columns[1].ReadOnly := true;
  grProc.Columns[2].ReadOnly := true;
  grProc.Columns[3].ReadOnly := true;
  grProc.Columns[4].ReadOnly := true;
  grProc.Columns[1].Color    := StringToColor('$00CEFDFC');;
  grProc.Columns[2].Color    := StringToColor('$00CEFDFC');;
  grProc.Columns[3].Color    := StringToColor('$00CEFDFC');;
  grProc.Columns[4].Color    := StringToColor('$00CEFDFC');;

  vCopiando := 'N';
  vInserindoP := 'N'; //Copiando processo;

  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    qCor.close;
    qCor.open;

    qGrupo.close;
    qGrupo.open;

    Panel1.visible := true;
    dbgrid1.columns[5].visible := true;
    dbgrid1.columns[6].visible := true;
    dbgrid1.columns[7].visible := true;
    dbgrid1.columns[8].visible := true;
    dbgrid1.columns[9].visible := true;
    edPesq.Width := 726;
  end
  else
  begin
    Panel1.Visible := false;
    dbgrid1.columns[5].visible := false;
    dbgrid1.columns[6].visible := false;
    dbgrid1.columns[7].visible := false;
    dbgrid1.columns[8].visible := false;
    dbgrid1.columns[9].visible := false;
    edPesq.Width := 910;
  end;

  AtivaT;


end;

procedure TfCadSemiAcabado.acSalvarExecute(Sender: TObject);
var
  vUltimo, vSemQtd : integer;
begin
  vUltimo := 0;
  vSemQtd := 0;

  SelectNext(ActiveControl, True, True);

  if (Tdescricao.Text = '' ) then begin
     Application.MessageBox('Descrição não preenchida. Por favor, verifique!','Atenção');
     PageControl1.ActivePageIndex := 1;
     DBEdit2.SetFocus;
     exit;
  end;

  //Deixado por ultimo
  {dm.qPesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from semi_acabado where descricao = ' + quotedstr(trim(Tdescricao.Text)) +
                   ' and id <> '+TID.text );
  dm.qPesq.Open;
  if T.State in [dsInsert, dsEdit] then
  begin
     if dm.qPesq.RecordCount >= 1 then
     begin
       //Application.MessageBox('Semiacabado ja cadastrado. Por favor, tente novamente','Atenção');
       if Application.MessageBox('Descrição já utilizada para outro semiacabado. Deseja salvar mesmo assim?','Atenção', mb_yesno) = idno then
       begin
         PageControl1.ActivePageIndex := 1;
         dbedit2.SetFocus;
         exit;
       end;
     end;
  end; }

  //testar se é somente um último
  qProc.First;
  while not qProc.Eof do begin
      if qProcUltimo.Text = 'T' then
         vUltimo := vUltimo +1;
      //testar se existe quantidade sem preencher
      qProcItem.First;
      while not qProcItem.Eof do begin
        if not (qProcItemQtde.AsFloat > 0) then begin
          vSemQtd := vSemQtd + 1;
        end;
        qProcItem.Next;
      end;
      qProc.Next;
  end;

  if vSemQtd > 0 then begin
     Application.MessageBox('Por favor, informe a quantidade para os itens dos processos.', 'Atenção');
     PageControl1.ActivePageIndex := 2;
     exit;
  end;

  if (vUltimo = 0) then
  begin
    Application.MessageBox('Por favor, escolha um processo para ser o último.', 'Atenção');
    PageControl1.ActivePageIndex := 2;
    exit;
  end
  else
  if (vUltimo > 1) then
  begin
    Application.MessageBox('Apenas um único processo pode ser o último. Por favor, verifique!', 'Atenção');
    PageControl1.ActivePageIndex := 2;
    exit;
  end;


  dm.qPesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from semi_acabado where descricao = ' + quotedstr(trim(Tdescricao.Text)) +
                   ' and id <> '+TID.text );
  dm.qPesq.Open;
  if T.State in [dsInsert, dsEdit] then
  begin
     if dm.qPesq.RecordCount >= 1 then
     begin
       //Application.MessageBox('Semiacabado ja cadastrado. Por favor, tente novamente','Atenção');
       if Application.MessageBox('Descrição já utilizada para outro semiacabado. Deseja salvar mesmo assim?','Atenção', mb_yesno) = idno then
       begin
         PageControl1.ActivePageIndex := 1;
         dbedit2.SetFocus;
         exit;
       end;
     end;
  end;

  vCopiando := 'N';
  indexando := 'S';
  inherited;
  indexando := 'N';

  BtExcluirI.Enabled := false;
  btExcluirP.Enabled := false;
  btAddP.Enabled     := false;
  btAddPi.Enabled    := false;

  edCod.ReadOnly     := true;
  edNom.ReadOnly     := true;
  EdCod.Color        := StringToColor('$00CEFDFC');
  edNom.Color        := StringToColor('$00CEFDFC');
  checkDbgrid4.ReadOnly := true;
  checkDbgrid4.Columns[2].Color := StringToColor('$00CEFDFC');
  checkDbgrid4.Columns[3].Color := StringToColor('$00CEFDFC');

  grProc.ReadOnly            := true;
  grProc.Columns[1].ReadOnly := true;
  grProc.Columns[2].ReadOnly := true;
  grProc.Columns[3].ReadOnly := true;
  grProc.Columns[4].ReadOnly := true;
  grProc.Columns[1].Color    := StringToColor('$00CEFDFC');
  grProc.Columns[2].Color    := StringToColor('$00CEFDFC');
  grProc.Columns[3].Color    := StringToColor('$00CEFDFC');
  grProc.Columns[4].Color    := StringToColor('$00CEFDFC');


  btCopiar.Enabled := True;


  atualizacusto(TID.asInteger, 'S');

end;

procedure TfCadSemiAcabado.AtivaT;
begin
  T.Close;
  if edPesq.text = '' then
    T.ParamByName('p').asString := 'T'
  else
    T.ParamByName('p').asString := 'N';
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  if trim(edRef.text) = '' then
    T.ParamByName('refB').Value := 'T'
  else
    T.ParamByName('refB').Value := trim(edRef.text);

  T.Open;
end;

procedure TfCadSemiAcabado.TNewRecord(DataSet: TDataSet);
begin
  inherited;


  TId.Value := InsereCodigo('semi_acabado', 'ID' );
  Tmultiplo.Value  := 1;

  qProc.Close;
  qProc.Params[0].Value :=0;
  qProc.Open;

  qProcItem.Close;
  qProcItem.Params[0].Value :=0;
  qProcItem.Open;
end;

procedure TfCadSemiAcabado.btCopiarClick(Sender: TObject);
var
  i, vIdNovoProd, vIdProdCopiado, vIdProcSa: integer;
begin
  if not (T.State in [dsinsert, dsEdit]) then
  begin
    vCopiando := 'S';
    //Inserindo produto
    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add('select * from semi_acabado where id = '+TID.text );
    DM.qSelect.Open;
    if not DM.qSelect.IsEmpty then
    begin
      vIdProdCopiado := TID.asInteger;
      acInserir.Execute;
      vIdNovoProd := TID.asInteger;
      for i := 0 to T.Fields.Count -1 do
      begin
        if (upperCase(T.Fields[I].FieldName) <> 'ID') and
            (upperCase(T.Fields[I].FieldName) <> 'DESGRUPO') and
            (upperCase(T.Fields[I].FieldName) <> 'DESCOR') and
            (upperCase(T.Fields[I].FieldName) <> 'REFERENCIA') and
            (upperCase(T.Fields[I].FieldName) <> 'REFERENCIA_BASE') {and
            (upperCase(T.Fields[I].FieldName) <> 'TAMANHO') and
            (upperCase(T.Fields[I].FieldName) <> 'DESMARCA') and
            (upperCase(T.Fields[I].FieldName) <> 'GRUPODES')} then
            T.Fields[I].Text := DM.qSelect.FieldByName(T.Fields[I].FieldName).text;

        if upperCase(T.Fields[I].FieldName) = 'QTDESTOQUE' then
          T.Fields[I].Value := 0;
      end;
      //TDTCADASTRO.Value := Date;
      DBEdit2.SetFocus;


      //Inserindo os processos
      dm.qSelect.close;
      dm.qSelect.SQL.clear;
      dm.qSelect.SQL.add('Select * from processo_sa where idsemiacabado = ' + inttoStr(vIdProdCopiado));
      dm.qSelect.open;
      while DM.qSelect.eof = false do
      begin
          qProc.Append;
          qProcId.Value := InsereCodigo('Processo_SA', 'ID');
          vIdProcSa     := qProcId.asInteger;
          qProcIdSemiAcabado.Value := vIdNovoProd;//Tid.Value;
          for i := 0 to qProc.Fields.Count -1 do
          begin
            if (upperCase(qProc.Fields[I].FieldName) <> 'ID') and
                (upperCase(qProc.Fields[I].FieldName) <> 'IDSEMIACABADO') {and
                (upperCase(T.Fields[I].FieldName) <> 'BARRAS') and
                (upperCase(T.Fields[I].FieldName) <> 'CFOP') and
                (upperCase(T.Fields[I].FieldName) <> 'ST') and
                (upperCase(T.Fields[I].FieldName) <> 'TAMANHO') and
                (upperCase(T.Fields[I].FieldName) <> 'DESMARCA') and
                (upperCase(T.Fields[I].FieldName) <> 'GRUPODES')} then
                qProc.Fields[I].Text := DM.qSelect.FieldByName(qProc.Fields[I].FieldName).text;
          end;
          vInserindoP := 'S';
          qProc.post;
          vInserindoP := 'N';
          //Insere os itens do semi_acabado
          dm.qSelPesq.close;
          dm.qSelPesq.SQL.clear;
          dm.qSelPesq.SQL.add('select * from processo_sa_i where idprocesso_sa = '+dm.qSelect.FieldByName('id').text);
          dm.qSelPesq.open;
          while dm.qSelPesq.eof = false do
          begin
            qProcItem.Insert;
            qProcItemId.Value            := InsereCodigo('Processo_sa_i', 'ID');
            qProcItemIdProcesso_sa.Value := vidProcSa;//qProcId.Value;
            for I := 0 to qProcItem.Fields.Count -1 do
            begin
              if (upperCase(qProcItem.Fields[I].FieldName) <> 'ID') and
                (upperCase(qProcItem.Fields[I].FieldName) <> 'IDPROCESSO_SA') and
                (upperCase(qProcItem.Fields[I].FieldName) <> 'DESCRICAO') and
                (upperCase(qProcItem.Fields[I].FieldName) <> 'PRECOCOMPRA') and
                (upperCase(qProcItem.Fields[I].FieldName) <> 'TOT') {and
                (upperCase(T.Fields[I].FieldName) <> 'TAMANHO') and
                (upperCase(T.Fields[I].FieldName) <> 'DESMARCA') and
                (upperCase(T.Fields[I].FieldName) <> 'GRUPODES')} then
                qProcItem.Fields[I].Text := DM.qSelPesq.FieldByName(qProcItem.Fields[I].FieldName).text;
            end;
            vInserindoP := 'S';
            qProcItem.post;
            vInserindoP := 'N';

            dm.qSelPesq.next;
          end;



        DM.qSelect.next;
      end;

    end;

    if (T.State in [dsEdit, dsInsert]) then
      T.post;
    T.Locate( 'id', vIdNovoProd, [] );
    qProc.Close;
    qProc.ParamByName('IDs').Text := TId.Text;
    qProc.Open;
    CalculaTotal;
    acEditar.execute;


  end;


end;

procedure TfCadSemiAcabado.EdPesqChange(Sender: TObject);
begin
  AtivaT;
  
end;

procedure TfCadSemiAcabado.acCancelarExecute(Sender: TObject);
begin
  //ExecSQL('Delete from processo_SA where idSemiAcabado = ' + TId.Text);

  if (T.state in [dsInsert]) or (vCopiando = 'S') then
  begin
    while qProc.eof = false do
    begin

      qProcItem.close;
      qProcItem.ParamByName('IDp').AsInteger := qProcId.AsInteger;
      qProcItem.Open;

      while qProcItem.eof = false do
      begin
        qProcItem.delete;
        qProcItem.first;
      end;
      qProc.delete;
      qProc.first;
    end;

    if vCopiando = 'S' then
      T.delete;

    vCopiando := 'N';
  end;

  inherited;
  BtExcluirI.Enabled := false;
  btExcluirP.Enabled := false;
  btAddP.Enabled     := false;

  grProc.ReadOnly            := true;
  grProc.Columns[0].ReadOnly := true;
  grProc.Columns[1].ReadOnly := true;
  grProc.Columns[2].ReadOnly := true;
  grProc.Columns[3].ReadOnly := true;
  grProc.Columns[4].ReadOnly := true;
  grProc.Columns[1].Color    := StringToColor('$00CEFDFC');;
  grProc.Columns[2].Color    := StringToColor('$00CEFDFC');;
  grProc.Columns[3].Color    := StringToColor('$00CEFDFC');;
  grProc.Columns[4].Color    := StringToColor('$00CEFDFC');;


  CheckDBGrid4.ReadOnly := true;

  btCopiar.Enabled := True;

end;

procedure TfCadSemiAcabado.TabSheet2Show(Sender: TObject);
begin
  inherited;
  if not qNCM.active then
     qNCM.open;
end;

procedure TfCadSemiAcabado.TAfterScroll(DataSet: TDataSet);
begin
  if indexando = 'S' then
     Exit;

  if T.State = dsBrowse then
  begin
    qProc.Close;
    qProc.ParamByName('IDs').Text := TId.Text;
    qProc.Open;
    {if qProc.IsEmpty = false then
       calculaTotal;  }
  end;     //Não precisa mais calcular aqui


end;

procedure TfCadSemiAcabado.qProcAfterScroll(DataSet: TDataSet);
begin
  qProcItem.close;
  qProcItem.ParamByName('IDp').AsInteger := qProcId.AsInteger;
  qProcItem.Open;

end;

procedure TfCadSemiAcabado.qProcBeforePost(DataSet: TDataSet);
begin
  try
     strtotime(copy(qProcTempo.Value,1,8));
  except
     qproc.Cancel;
  end;

  if (qProcOrdem.asInteger = 1) and(qProcDepende_Ant.asString = 'T') then
  begin
    Application.MessageBox('Processo de ordem 1 não pode depender do anterior. Por favor, verifique!','Atenção');
    qProc.cancel;;
  end;

end;

procedure TfCadSemiAcabado.btExcluirPClick(Sender: TObject);
begin

  if qProc.IsEmpty then
     Exit;

  if Application.MessageBox('Deseja realmente Excluir este Processo?','Confirmação', mb_yesno + mb_defbutton2 ) = idNo then
     Exit;

  Execsql('delete from processo_SA_I where idProcesso_sa = ' + qProcId.Text );
  sleep(100);
  qProc.delete;
  qProc.ApplyUpdates;

  calculaTotal;

end;

procedure TfCadSemiAcabado.btnrefClick(Sender: TObject);
Var
  vRef : String;
begin
  inherited;
  if not (Tidgrupo.asInteger > 0) then
  begin
    application.messagebox('Grupo não informado. Por favor, verifique!', 'Atenção');
    exit;
  end;

  if not (Tidcor.asInteger > 0) then
  begin
    application.messagebox('Cor não informada. Por favor, verifique!', 'Atenção');
    exit;
  end;

  if trim(TTamanho.text) = '' then
  begin
    application.messagebox('Tamanho não informado. Por favor, verifique!', 'Atenção');
    exit;
  end;

  if trim(Treferencia_base.text) = '' then
  begin
    application.messagebox('Referência base não informada. Por favor, verifique!', 'Atenção');
    exit;
  end;

  vRef := TIDGrupo.text + '.' + TReferencia_Base.text + '.'+TIDCor.text + '.' + TTamanho.text;

  TReferencia.asString := vRef;
end;

procedure TfCadSemiAcabado.btExcluirIClick(Sender: TObject);
begin
  if qProcItem.IsEmpty then
     Exit;

  if Application.MessageBox('Deseja realmente Excluir esta Matéria-Prima?','Confirmação', mb_yesno + mb_defbutton2 ) = idNo then
     Exit;
  qProcItem.Delete;
  qProcItem.ApplyUpdates;

  calculaTotal;
end;

procedure TfCadSemiAcabado.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadSemiAcabado.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   if Key = #13 then
   begin
    Key := #0;
    EdCod.Text := DM.qPesq.FieldByName('id').Value;
    edCodExit(Application);

   end;
end;

procedure TfCadSemiAcabado.EdNomChange(Sender: TObject);
begin
  inherited;
  if (EdNom.Text <> '')  then
  begin

    gdPesq.left := edCod.Left;
    gdPesq.Top  := edCod.Top + edCod.Height + 2;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    if rdTipo.ItemIndex = 0 then // mp
       DM.qPesq.SQL.Add(' select produto.id, produto.descricao nome, produto.ft_conv_un, produto.ft_conv_2un, produto.tipo '+
                        ' from produto where produto.tipo = ''M'' and ativo = ''S'' and ' +
                        ' produto.descricao like '+QuotedStr('%'+EdNom.Text+'%'))
    else
       DM.qPesq.SQL.Add(' select semi_acabado.id, semi_acabado.descricao nome, coalesce(unidade, ''UN'') ft_conv_un, coalesce(unidade, ''UN'') ft_conv_2un, ''S'' tipo '+
                        ' from semi_acabado where ' +
                        ' semi_acabado.descricao like '+QuotedStr('%'+EdNom.Text+'%') );
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
      gdPesq.Visible := False
    else
     gdPesq.Visible := True;
  end
  else
     gdPesq.Visible := False;

end;

procedure TfCadSemiAcabado.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);
end;

procedure TfCadSemiAcabado.edCodExit(Sender: TObject);
begin

  cbUn.Items.Clear;
  if edCod.Text <> '' then begin
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    if rdTipo.ItemIndex = 0 then  // mp
       DM.qPesq.SQL.Add(' select id, descricao nome, ft_conv_un, ft_conv_2un, tipo from produto where tipo = ''M'' and ativo = ''S'' and ' +
                        ' id =  '+ edCod.Text )
    else
       DM.qPesq.SQL.Add(' select id, descricao nome, coalesce(unidade, ''UN'') ft_conv_un, coalesce(unidade, ''UN'') ft_conv_2un, ''S'' tipo from semi_acabado where ' +
                        ' id =  '+ edCod.Text );
    DM.qPesq.Open;

    if not Dm.qPesq.IsEmpty then
    begin
       EdNom.Text := DM.qPesq.FieldByName('nome').Value;
       nTipo      := DM.qPesq.FieldByName('tipo').Text;
       gdPesq.Visible := False;
       cbUn.Items.Add(DM.qPesq.FieldByName('ft_conv_un').text);
       cbUn.Items.Add(DM.qPesq.FieldByName('ft_conv_2un').text);
       cbUn.Update;
       cbUn.ItemIndex := 0;

       cbUn.SetFocus;
    end;
  end;
end;

procedure TfCadSemiAcabado.btAddPClick(Sender: TObject);
var
  nHr : TTime;
  nOr : integer;
  nCt : real;
begin

  if trim(cbProcesso.Text) = '' then begin
     Application.MessageBox('Informe o processo!','Atenção');
     cbProcesso.SetFocus;
     exit;
  end;

  qProc.First;
  if qProc.Locate( 'idprocesso', strtoint(copy(cbprocesso.Text,1,3)), [] ) then begin
     Application.MessageBox('Processo já Cadastrado!','Atenção');
     cbProcesso.ItemIndex := -1;
     cbProcesso.SetFocus;
     exit;
  end;


  try
     nOr := strtoint(edOrdem.Text);
  except
     Application.MessageBox('Informe a Ordem!','Atenção');
     edOrdem.SetFocus;
     exit;
  end;

  {try
     nHr := strtotime(edtempo.Text);
  except
     Application.MessageBox('Informe o Tempo!','Atenção');
     edTempo.SetFocus;
     exit;
  end;} //Retirado obrigatoriedade de tempo Sylvaz Nilton 28/03/2022

  try
     nHr := strtotime(edtempo.Text);
  except
     nHr := strToTime('00:00:00');  //Passa 0
  end;

  try
     nCt := strtofloat(edCusto.Text);
  except
     Application.MessageBox('Informe o Custo!','Atenção');
     edCusto.SetFocus;
     exit;
  end;

  if trim(dbedit2.text) = '' then
  begin
    Application.MessageBox('Descrição do Semi-acabado não informado. Por favor, informe antes de prosseguir!','Atenção');
    PageControl1.TabIndex := 1;
    dbedit2.setfocus;
    exit;
  end;

  if (nOr = 1) and (ckAnt.checked) then
  begin
    Application.MessageBox('Processo de ordem 1 não pode depender do anterior. Por favor, verifique!','Atenção');
    edOrdem.setfocus;
    exit;
  end;




  qProc.Append;
  qProcId.Value            := InsereCodigo('Processo_SA', 'ID');
  qProcIdSemiAcabado.Value := Tid.Value;
  qProcIdProcesso.Value    := strtoint(copy( cbprocesso.Text, 1, 3 ));
  qProcDescricao.Value     := UpperCase(copy( cbprocesso.Text, 5, length(cbprocesso.text)-4 ));
  if ckultimo.Checked then
     qProcUltimo.Value     := 'T'
  else
     qProcUltimo.Value     := 'F';
  if ckAnt.Checked then
     qProcDepende_Ant.Value := 'T'
  else
     qProcDepende_Ant.Value := 'F';
  qProcTempo.Value         := formatdatetime('hh:mm:ss', nHr );
  qProcOrdem.Value         := nOr;
  qProcCusto.Value         := nCt;
  vInserindoP := 'S';
  qProc.Post;
  vInserindoP := 'N';

  //mostrar item dos processos
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add(' select idProduto, unidade from processo_i where idprocesso =  '+ qProcIdProcesso.Text );
  DM.qPesq.Open;
  while not Dm.qPesq.Eof do  begin
     qProcItem.Insert;
     qProcItemIdProcesso_sa.Value  := qProcId.Value;
     qProcItemIdProduto.AsInteger  := DM.qPesq.FieldByName('idProduto').AsInteger;
     qProcItemUn.Text              := DM.qPesq.FieldByName('unidade').Text;
     vInserindoP := 'S';
     qProcItem.Post;
     vInserindoP := 'N';
     dm.qPesq.Next;
  end;

  qProc.Close;
  qProc.ParamByName('IDs').value := TId.value;
  qProc.Open;

  qProcItem.Close;
  qProcItem.Params[0].Value := qProcId.value;
  qProcItem.Open;

  cbProcesso.ItemIndex := -1;
  ckUltimo.Checked     := false;
  edOrdem.Text         := '';
  edTempo.Text         := '';
  edCusto.Text         := '';

  calculaTotal;

  cbProcesso.SetFocus;

end;

procedure TfCadSemiAcabado.grProcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
   with grProc do
   begin
    if  DataSource.DataSet.State in [dsEdit, dsInsert, dsBrowse] then //Cor da linha selecionada
        if (Rect.Top = TStringGrid(grProc).CellRect( DataCol ,TStringGrid(grProc).Row).Top)
          or( gdSelected in State)  then
         begin
           Canvas.FillRect(Rect);
           Canvas.Brush.Color := clGradientActiveCaption;
           DefaultDrawDataCell(Rect,Column.Field,State)
        end;
   end;
end;

procedure TfCadSemiAcabado.qProcAfterOpen(DataSet: TDataSet);
begin
  inherited;
  if qProc.RecordCount = 0 then
    grProc.enabled := false
  else
    grProc.enabled := true;
end;

procedure TfCadSemiAcabado.qProcAfterPost(DataSet: TDataSet);
begin
  qProc.ApplyUpdates;
  calculaTotal;
end;

procedure TfCadSemiAcabado.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then
     if gdPesq.Visible then
        gdPesq.SetFocus;

end;

procedure TfCadSemiAcabado.edQtdKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);

end;

procedure TfCadSemiAcabado.edRefChange(Sender: TObject);
begin
  inherited;
  AtivaT;
end;

procedure TfCadSemiAcabado.edCustoKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);

end;

procedure TfCadSemiAcabado.edTempoKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);

end;

procedure TfCadSemiAcabado.BtAddPiClick(Sender: TObject);
var
  nPr : integer;
  nQt : real;

begin

  if trim(edNom.Text) = '' then begin
     Application.MessageBox('Informe a Matéria-Prima!','Atenção');
     edNom.SetFocus;
     exit;
  end;

  if trim(cbUn.Text) = '' then begin
     Application.MessageBox('Informe a Unidade!','Atenção');
     cbUn.SetFocus;
     exit;
  end;

  try
     nPr := strtoint(edCod.Text);
  except
     Application.MessageBox('Informe o Codigo da Matéria-Prima!','Atenção');
     edCod.SetFocus;
     exit;
  end;

  try
     nQt := strtofloat(edQtd.Text);
  except
     Application.MessageBox('Informe a Quantidade!','Atenção');
     edQtd.SetFocus;
     exit;
  end;

  qProcItem.Insert;
  qProcItemId.Value            := InsereCodigo('Processo_sa_i', 'ID');
  qProcItemIdProcesso_sa.Value := qProcId.Value;
  qProcItemIdProduto.Value     := nPr;
  qProcItemdescricao.Value     := upperCase(edNom.Text);
  qProcItemUn.Value            := cbUn.text;
  qProcItemQtde.Value          := nQt;
  qProcItemtipo.Value          := nTipo;
  vInserindoP := 'S';
  qProcItem.Post;
  vInserindoP := 'N';

  qProcItem.Close;
  qProcItem.Params[0].value    := qProcId.value;
  qProcItem.Open;

  edCod.Clear;
  EdNom.Clear;
  cbUn.Items.Clear;
  edQtd.Clear;
  gdPesq.Visible := false;

  calculaTotal;

  CheckDBGrid4.SetFocus;

end;

procedure TfCadSemiAcabado.qProcItemAfterPost(DataSet: TDataSet);
begin
  qProcItem.ApplyUpdates;
  qProcItem.Refresh;
  calculaTotal;


end;

procedure TfCadSemiAcabado.qProcItemNewRecord(DataSet: TDataSet);
begin
  inherited;
  qProcItemId.Value := InsereCodigo('processo_SA_I', 'ID' );

end;

procedure TfCadSemiAcabado.qProcNewRecord(DataSet: TDataSet);
begin
  inherited;
  qProcId.Value := InsereCodigo('processo_SA', 'ID' );

end;

procedure TfCadSemiAcabado.CheckDBGrid4CellClick(Column: TColumn);
begin

 if not (T.State in [dsEdit, dsInsert]) then
    exit;

 if (qProcItem.IsEmpty = false) and (checkDbgrid4.SelectedIndex = 3) then
 begin
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add( ' select ft_conv_un, ft_conv_2un from produto where tipo = ''M'' and ' +
                    ' id =  '+ qProcItemIdProduto.Text );
    DM.qPesq.Open;
    checkDbgrid4.Columns[3].PickList.Clear;
    checkDbgrid4.Columns[3].PickList.Add( dm.qPesq.fieldbyname('ft_conv_un').text );
    checkDbgrid4.Columns[3].PickList.Add( dm.qPesq.fieldbyname('ft_conv_2un').text );
 end;

end;

procedure TfCadSemiAcabado.CheckDBGrid4KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then begin
   IF CheckDBgrid4.SelectedIndex = 1 then begin
      CheckDBgrid4.SelectedIndex := 2;
      qProcItem.Next;
      if qProcItem.Eof = false then
         CheckDBgrid4.SelectedIndex := 1;
   end;
 end;


end;

procedure TfCadSemiAcabado.DBGrid1DblClick(Sender: TObject);
begin
  //inherited;

end;

procedure TfCadSemiAcabado.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  //inherited;

end;

procedure TfCadSemiAcabado.DBGrid1TitleClick(Column: TColumn);
begin
  indexando := 'S';
  inherited;
  sleep(10);
  indexando := 'F';
  T.Next;
  T.Prior;

end;

procedure TfCadSemiAcabado.CheckDBGrid4KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

  if key = vk_down then
     if qProcItem.Eof then begin
        qProcItem.Cancel;
        qProcItem.First;
     end;

end;

procedure TfCadSemiAcabado.grProcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;
  if key = vk_down then
      if qProc.Eof then
        qProc.First;
end;

procedure TfCadSemiAcabado.acSairExecute(Sender: TObject);
begin
  //if T.State in [dsEdit, dsInsert] then
     //Exit;
  acCancelar.execute;

  inherited;

end;

procedure TfCadSemiAcabado.grProcKeyPress(Sender: TObject; var Key: Char);
var
  col : integer;
begin
 if grProc.SelectedIndex = 2 then
 begin
    if not CharInSet(key , ['0'..'9',#8,#13,':']) then
       key:=#0;
    exit;
 end;

 if key = #13 then begin
   if grProc.SelectedIndex in [1,2,4] then
   begin
      col := grProc.SelectedIndex;
      if col < 4 then grProc.SelectedIndex := col + 1;
      qProc.Next;
      if qProc.Eof = false then grProc.SelectedIndex := col;
   end;
 end;
end;


procedure TfCadSemiAcabado.calculaTotal;
var
  vP, vM :real;
  vPosiP, vPosiM, vPosiS, vIdProduto :integer;
begin
 if vInserindoP = 'N' then
 begin
    vPosiP := qProc.RecNo;
    vPosiM := qProcItem.RecNo;

    qProc.first;
    while qProc.eof = false do
    begin
      Application.ProcessMessages;

      vP := vP + qProcCusto.asfloat;

      qProcItem.first;
      while qProcItem.eof = false do
      begin
        Application.ProcessMessages;
        vM := vM + qProcItemtot.asfloat;
        qProcItem.next;
      end;

      qProc.next;
    end;

    //if not (T.state in [dsInsert, dsedit]) then
    //begin
       if (vP > 0) or (vM > 0) then
       begin
          if T.state in[dsEdit,dsInsert] then
            T.post;
          Execsql('update semi_acabado set totprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                  ', totmp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                  ', custototal = ' + PontoVirgula(formatfloat('#0.0000000', vP + vM )) +
                  ' where id = ' + TId.Text  );
          {T.edit;
          TtotProcesso.asfloat := vP;
          TtotMP.asfloat       := vM;
          T.post;}
          vIdProduto := TID.asInteger;
          T.refresh;
          T.locate('id', vIdProduto, []);
          T.edit;



       end;
    {end
    else
    begin
       TtotProcesso.asfloat := vP;
       TtotMP.asfloat       := vM;
       TCustoTotal.AsFloat  := vP + vM;
       T.post;
       T.edit;
    end;    }

    qProc.RecNo     := vPosiP;
    qProcItem.RecNo := vPosiM;
 end;

end;

procedure TfCadSemiAcabado.cbProcessoChange(Sender: TObject);
begin
  inherited;
  dm.qPesq.close;
  dm.qPesq.SQL.clear;
  dm.qPesq.SQL.add('select custo from processo where id = '+copy(cbProcesso.text,0,3));
  dm.qPesq.Open;
  if dm.qPesq.FieldByName('custo').asFloat > 0 then
    edCusto.text := formatFloat('###,###,###,##0.00#####',dm.qPesq.FieldByName('custo').asFloat)
  else
    edCusto.text := '';
end;

end.
