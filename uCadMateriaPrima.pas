unit uCadMateriaPrima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList;

type
  TfCadMateriaPrima = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    lCPFCNPJ: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    dUn: TDataSource;
    qUn: TZQuery;
    Bevel1: TBevel;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    TId: TIntegerField;
    Tdescricao: TWideStringField;
    Ttipo: TWideStringField;
    Test_seguranca: TFloatField;
    Test_minimo: TFloatField;
    Tft_conv_un: TWideStringField;
    Tft_conv_qtde: TFloatField;
    Tft_conv_2un: TWideStringField;
    Tproduzido: TWideStringField;
    Tbarras: TWideStringField;
    Treferencia: TWideStringField;
    Tvalor: TFloatField;
    Tqtdestoque: TFloatField;
    qUnid: TIntegerField;
    qUndescricao: TWideStringField;
    qUnsigla: TWideStringField;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    DBEdit8: TDBEdit;
    Tcod_Manual: TIntegerField;
    TCusto_montagem: TFloatField;
    Tcest: TWideStringField;
    TNCM: TWideStringField;
    TeIPI: TWideStringField;
    Tobs: TWideMemoField;
    TPrecoCompra: TFloatField;
    TIcms: TFloatField;
    TPIS: TWideStringField;
    TpPIS: TFloatField;
    TCOFINS: TWideStringField;
    TpCOFINS: TFloatField;
    TIPI: TWideStringField;
    TpIPI: TFloatField;
    Tcsosn: TWideStringField;
    Tcfop: TWideStringField;
    Tcfop_fora: TWideStringField;
    Tmargem: TFloatField;
    Tex: TIntegerField;
    Tidfornecedor: TIntegerField;
    TRoyalties: TFloatField;
    Label15: TLabel;
    cbCF: TDBLookupComboBox;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label107: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label22: TLabel;
    Label49: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label23: TLabel;
    DBEdit15: TDBEdit;
    DBEdit27: TDBEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    DBEdit51: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBLookupComboBox5: TDBLookupComboBox;
    DBComboBox3: TDBComboBox;
    DBComboBox4: TDBComboBox;
    DBEdit16: TDBEdit;
    TIDSTRIB: TIntegerField;
    TREDUCAO: TFloatField;
    TMARGEMST: TFloatField;
    TST: TFloatField;
    TST2: TFloatField;
    TCSOSN2: TWideStringField;
    TMVA: TFloatField;
    TCODIPI: TWideStringField;
    TIDTIPO_TRIBUTACAO: TIntegerField;
    TIDORIGEM: TIntegerField;
    Tunidade_nfe: TWideStringField;
    qCF: TZQuery;
    qCFcodigo: TWideStringField;
    dCF: TDataSource;
    qCFOP: TZQuery;
    qCFOPCFOP: TWideStringField;
    dCFOP: TDataSource;
    qTipoTribu: TZQuery;
    qTipoTribuID: TIntegerField;
    qTipoTribuTIPO: TWideStringField;
    dsTipoTribu: TDataSource;
    qSit: TZQuery;
    qSitID: TIntegerField;
    qSitDescr: TWideStringField;
    dSit: TDataSource;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    nome: TFloatField;
    Tpesobru: TFloatField;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    TabSheet3: TTabSheet;
    DBGrid2: TDBGrid;
    qCom: TZQuery;
    qComdata: TDateTimeField;
    qComidfornecedor: TIntegerField;
    qComfantasia: TWideStringField;
    qComqtd: TFloatField;
    qComunitario: TFloatField;
    dCom: TDataSource;
    Label20: TLabel;
    DBText2: TDBText;
    Label25: TLabel;
    DBEdit12: TDBEdit;
    TEmbalagem: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    TabSheet4: TTabSheet;
    Label17: TLabel;
    DBText1: TDBText;
    DBGrid3: TDBGrid;
    qP: TZQuery;
    dP: TDataSource;
    qPid: TIntegerField;
    qPreferencia: TWideStringField;
    qPbarras: TWideStringField;
    qPdescricao: TWideStringField;
    TalturaCx: TFloatField;
    TlarguraCx: TFloatField;
    TcomprimentoCx: TFloatField;
    Bevel2: TBevel;
    Label52: TLabel;
    DBEdit34: TDBEdit;
    Label53: TLabel;
    DBEdit35: TDBEdit;
    Label54: TLabel;
    DBEdit36: TDBEdit;
    ToolButton3: TToolButton;
    Panel1: TPanel;
    ckMaster: TCheckBox;
    qComtotal: TFloatField;
    qForPro: TZQuery;
    qForProID: TIntegerField;
    qForProIDPRODUTO: TIntegerField;
    qForProIDFORNECEDOR: TIntegerField;
    qForProtipo: TWideStringField;
    qForProcod_for: TWideStringField;
    qForProqtd_conversao: TFloatField;
    qForProfantasia: TWideStringField;
    uForPro: TZUpdateSQL;
    dForPro: TDataSource;
    DBGrid4: TDBGrid;
    Label18: TLabel;
    edFor: TDBEdit;
    edNomFor: TDBEdit;
    gdFor: TDBGrid;
    Tnomefor: TWideStringField;
    Tativo: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    rdAtivo: TRadioGroup;
    Tvalor2: TFloatField;
    Tmultiplo: TFloatField;
    Tcubagem: TFloatField;
    TDUN14: TWideStringField;
    TCustoProcesso: TFloatField;
    TCustoMP: TFloatField;
    TCustoproducao: TFloatField;
    TCustoOperacional: TFloatField;
    TCustoFinal: TFloatField;
    TVendaSugerido: TFloatField;
    TIdCxMaster: TIntegerField;
    Taltura: TFloatField;
    Tlargura: TFloatField;
    Tcomprimento: TFloatField;
    Tidweb: TIntegerField;
    Tsincronizado: TWideStringField;
    TcustoCxMaster: TFloatField;
    TmaxDesconto: TFloatField;
    Tcst: TWideStringField;
    Tidgrupo: TIntegerField;
    Tmateria_prima: TWideStringField;
    Tdivisor: TFloatField;
    Tnao_vender_web: TWideStringField;
    Tbx_item_ficha_venda: TWideStringField;
    Ttotprocesso: TFloatField;
    Ttotmp: TFloatField;
    Tcusto_total: TFloatField;
    TtotTempo: TWideStringField;
    Tidcor: TIntegerField;
    Ttamanho: TWideStringField;
    Treferencia_base: TWideStringField;
    Tvolume1: TWideStringField;
    Tvolume2: TWideStringField;
    TPrecoConver: TFloatField;
    Label19: TLabel;
    DBEdit13: TDBEdit;
    TEstoqueConver: TFloatField;
    Label24: TLabel;
    DBEdit17: TDBEdit;
    Label28: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure EdPesqChange(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure acExcluirExecute(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure ckMasterClick(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure edForExit(Sender: TObject);
    procedure edNomForChange(Sender: TObject);
    procedure edNomForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyPress(Sender: TObject; var Key: Char);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure rdAtivoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    vTipo : string;
  end;

var
  fCadMateriaPrima: TfCadMateriaPrima;

implementation

uses uDM, uImpMP, uFuncao;

{$R *.dfm}

procedure TfCadMateriaPrima.acExcluirExecute(Sender: TObject);
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
	                      ' where iditem = '+ TId.AsString +' and ficha_tecnica.tipo = ''M'' ');

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

    T.delete;
    T.ApplyUpdates;
    sleep(200);
    T.Close;
    T.Open;
  end;
end;

procedure TfCadMateriaPrima.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm(TfImpMP, fImpMP);
  vEnv_EmailDest := '';
  vEnv_Report    := fImpMP.rpLista;
  fImpMP.rpLista.PreviewModal;
  fImpMP.free;

end;

procedure TfCadMateriaPrima.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

  DBEdit13.Enabled := False;
  DBEdit17.Enabled := False;
end;

procedure TfCadMateriaPrima.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

  DBEdit13.Enabled := False;
  DBEdit17.Enabled := False;
end;

procedure TfCadMateriaPrima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //
end;

procedure TfCadMateriaPrima.FormCreate(Sender: TObject);
begin
  inherited;

  qUn.Open;
  qUn.First;
  DBComboBox1.Items.Clear;
  DBComboBox2.Items.Clear;
  While not qUn.Eof do
  begin
    if qUnsigla.Text <> '' then
    begin
      DBComboBox1.Items.Add(qUnsigla.Text);
      DBComboBox2.Items.Add(qUnsigla.Text);
    end;
    qUn.Next;
  end;

  qCF.Close;
  qCF.Open;
  qCF.FetchAll;

  qCFOP.Close;
  qCFOP.Open;
  qCFOP.FetchAll;

  qTipoTribu.Close;
  qTipoTribu.Open;
  qTipoTribu.FetchAll;

  qSit.Close;
  qSit.Open;
  qSit.FetchAll;

  T.Close;
  T.ParamByName('pesq').Value := '%%';
  if ckMaster.Checked then
     T.ParamByName('cx').Value := 1
  else
     T.ParamByName('cx').Value := 0;
  case rdAtivo.itemIndex of
    0: T.ParamByname('st').asString := 'T';
    1: T.ParamByname('st').asString := 'S';
    2: T.ParamByname('st').asString := 'N';
  end;
  T.Open;
end;

procedure TfCadMateriaPrima.gdForKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if not dm.qPesq.IsEmpty then
    begin
      edFor.Text := dm.qPesq.FieldByName('ID').Text;
      edForExit(Application);
      gdFor.Visible := False;
    end;
  end;

end;

procedure TfCadMateriaPrima.rdAtivoClick(Sender: TObject);
begin
  EdPesqChange(Application);
end;

procedure TfCadMateriaPrima.acSalvarExecute(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);

  if  (Tdescricao.Text = '' ) then
  begin
     Application.MessageBox('Descrição não preenchida.','Atenção');
     DBEdit2.SetFocus;
     exit;
  end;

  if DBComboBox1.Text = DBComboBox2.Text then
  begin
    Application.MessageBox('Conversão não pode conter a mesma unidade.','Atenção');
    DBComboBox2.SetFocus;
    exit;
  end;

  dm.qPesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from produto where descricao = ' + quotedstr(trim(Tdescricao.Text)) );
  dm.qPesq.Open;
  if T.State in [dsInsert] then
  begin
     if dm.qPesq.RecordCount >= 1 then
     begin
       Application.MessageBox('Produto ja Cadastrado, Por Favor Tente Novamente','Atenção');
       dbedit2.SetFocus;
       exit;
     end;
  end;

  inherited;
  atualizacusto(TID.asInteger, 'M');
end;

procedure TfCadMateriaPrima.ckMasterClick(Sender: TObject);
begin
  inherited;
  EdPesqChange(Application);
end;

procedure TfCadMateriaPrima.DBCheckBox1Click(Sender: TObject);
begin
  if DBCheckBox1.Checked then
    PageControl1.Pages[3].TabVisible := true
  else
    PageControl1.Pages[3].TabVisible := false;

  label52.Visible  := DBCheckBox1.Checked;
  label53.Visible  := DBCheckBox1.Checked;
  label54.Visible  := DBCheckBox1.Checked;
  dbedit34.Visible := DBCheckBox1.Checked;
  dbedit35.Visible := DBCheckBox1.Checked;
  dbedit36.Visible := DBCheckBox1.Checked;

end;

procedure TfCadMateriaPrima.edForExit(Sender: TObject);
begin
 if (edFor.Text <> '') then
 begin
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add('Select fornecedor.id, fornecedor.Nome from fornecedor where fornecedor.id = '+edFor.Text);
  DM.qPesq.Open;
  edNomFor.OnChange := nil;
  if not DM.qPesq.IsEmpty then
   begin
    edNomFor.Text := DM.qPesq.FieldByName('Nome').AsString;
    gdfor.Visible := false;
   end
  else
   begin
     edFor.Clear;
     edNomFor.Clear;
   end;
 end
else
 begin
     edFor.Clear;
     edNomFor.Clear;
 end;
 edNomFor.OnChange := edNomForchange;
 gdfor.Visible := False;

end;

procedure TfCadMateriaPrima.edNomForChange(Sender: TObject);
begin
   if T.state in [dsBrowse] then
    exit;

   gdfor.Visible := False;
   if (edNomFor.Text <> '') then
   begin
    posicionagrid(gdFor, edFor );
    gdFor.Visible := True;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, nome '+
                        ' from fornecedor where nome like '+QuotedStr('%'+edNomFor.Text+'%'));
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     gdfor.Visible := False;
    end
  else
   gdfor.Visible := False;

end;

procedure TfCadMateriaPrima.edNomForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN THEN
    IF gdFor.Visible THEN
      gdFor.SetFocus;
end;

procedure TfCadMateriaPrima.DBGrid4KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    if not dm.qPesq.IsEmpty then
    begin
      edFor.Text := dm.qPesq.FieldByName('ID').Text;
      edForExit(Application);
      gdFor.Visible := False;
    end;
  end;

end;

procedure TfCadMateriaPrima.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qCom.close;
  qCom.ParamByName('id').value := Tid.value;
  qCom.open;

  if TEmbalagem.Value = 'S' then
  begin
    PageControl1.Pages[3].TabVisible := true;
    qP.Close;
    qP.ParamByName('id').value := Tid.value;
    qP.open;
  end
  else
  begin
    qP.Close;
    PageControl1.Pages[3].TabVisible := false;
  end;

  qForPro.Close;
  qForPro.ParamByName('id').Value := TId.Value;
  qForPro.Open;


end;

procedure TfCadMateriaPrima.TNewRecord(DataSet: TDataSet);
begin
  inherited;

  TId.Value := InsereCodigo('produto', 'ID' );
  Ttipo.Value := 'M';
  Tproduzido.Value := 'N';
  Tidfornecedor.Value := 0;
  TRoyalties.Value    := 0;
  TEmbalagem.Value    := 'N';
  TalturaCx.Value       := 0;
  TlarguraCx.Value      := 0;
  TcomprimentoCx.Value  := 0;
  Tativo.value := 'S';
  TIDORIGEM.AsInteger := 0;

end;

procedure TfCadMateriaPrima.EdPesqChange(Sender: TObject);
begin
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  if ckMaster.Checked then
     T.ParamByName('cx').Value := 1
  else
     T.ParamByName('cx').Value := 0;

  case rdAtivo.itemIndex of
    0: T.ParamByname('st').asString := 'T';
    1: T.ParamByname('st').asString := 'S';
    2: T.ParamByname('st').asString := 'N';
  end;
  T.Open;
end;

end.
