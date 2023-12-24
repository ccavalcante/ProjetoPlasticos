unit uAjusteTabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, ActnList, StdCtrls, Buttons,
  XiButton, DBCtrls, System.Actions, Data.DB, Vcl.ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZSqlUpdate, CheckDBGrid, Datasnap.DBClient,
  Datasnap.Provider;

type
  TfAjusteTabela = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    sair: TAction;
    XiButton2: TXiButton;
    XiButton6: TXiButton;
    Label11: TLabel;
    qTabO: TZQuery;
    dTabO: TDataSource;
    Label3: TLabel;
    Label1: TLabel;
    qTabD: TZQuery;
    dTabD: TDataSource;
    Bevel1: TBevel;
    qTab: TZQuery;
    qTabid: TIntegerField;
    qTabdescricao: TWideStringField;
    dTab: TDataSource;
    cbTab: TDBLookupComboBox;
    edPorcentagem: TEdit;
    cbTab2: TDBLookupComboBox;
    qTab2: TZQuery;
    dTab2: TDataSource;
    acConfirmar: TAction;
    qTabOId: TIntegerField;
    qTabOIdTabela: TIntegerField;
    qTabOIdProduto: TIntegerField;
    qTabOReferencia: TWideStringField;
    qTabOCodBarras: TWideStringField;
    qTabODescricao: TWideStringField;
    qTabOPreco: TFloatField;
    qTabOQtdeEstoque: TFloatField;
    qTabOPagina: TIntegerField;
    qTabOex: TIntegerField;
    qTabOQtdeCaixa: TFloatField;
    qTabOsincronizado: TWideStringField;
    qTabOidweb: TIntegerField;
    uTabD: TZUpdateSQL;
    barra: TProgressBar;
    Label2: TLabel;
    Label4: TLabel;
    Q: TZQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    WideStringField1: TWideStringField;
    WideStringField2: TWideStringField;
    WideStringField3: TWideStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FloatField3: TFloatField;
    WideStringField4: TWideStringField;
    IntegerField6: TIntegerField;
    qTabpadrao: TWideStringField;
    XiButton1: TXiButton;
    acIMp: TAction;
    qTab2id: TIntegerField;
    qTab2descricao: TWideStringField;
    grDest: TCheckDBGrid;
    dpTabD: TDataSetProvider;
    cdTabD: TClientDataSet;
    cdTabDId: TIntegerField;
    cdTabDIdTabela: TIntegerField;
    cdTabDIdProduto: TIntegerField;
    cdTabDReferencia: TWideStringField;
    cdTabDCodBarras: TWideStringField;
    cdTabDDescricao: TWideStringField;
    cdTabDPreco: TFloatField;
    cdTabDQtdeEstoque: TFloatField;
    cdTabDPagina: TIntegerField;
    cdTabDex: TIntegerField;
    cdTabDQtdeCaixa: TFloatField;
    cdTabDsincronizado: TWideStringField;
    cdTabDidweb: TIntegerField;
    ckTodo: TCheckBox;
    cdTabDX2: TStringField;
    procedure sairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acConfirmarExecute(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbTabClick(Sender: TObject);
    procedure cbTab2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edPorcentagemKeyPress(Sender: TObject; var Key: Char);
    procedure acIMpExecute(Sender: TObject);
    procedure grDestKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckTodoClick(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure grDestTitleClick(Column: TColumn);
  private
     ordemO, ordemD : String;
     campoO, campoD : String;
     procedure AtivaO;
     procedure AtivaD;
    { Private declarations }
  public
    { Public declarations }

  end;

var
  fAjusteTabela : TfAjusteTabela;
implementation

uses uDM, uFuncao, uOC, uimpProduto;

{$R *.dfm}

procedure TfAjusteTabela.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfAjusteTabela.edPorcentagemKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfAjusteTabela.sairExecute(Sender: TObject);
begin
   Close;
end;

procedure TfAjusteTabela.acConfirmarExecute(Sender: TObject);
var
  novovalor, porc:real;

begin
  if (cbtab.KeyValue = 0) or (trim(cbtab.Text) = '') then
  begin
     Application.MessageBox('Selecione a tabela de origem', 'Atenção');
     cbTab.SetFocus;
     exit;
  end;

  if (cbtab2.KeyValue = 0) or (trim(cbtab2.Text) = '') then
  begin
     Application.MessageBox('Selecione a tabela de destino', 'Atenção');
     cbTab2.SetFocus;
     exit;
  end;

  try
    porc := strtofloat(edPorcentagem.Text);
  except
    Application.MessageBox('Valor informado na porcentagem está incorreto, verifique!', 'Atenção');
    edPorcentagem.Text := '0';
    edPorcentagem.SetFocus;
    exit;
  end;
  edPorcentagem.Text := formatfloat( '#0.00', porc );
  barra.Visible := true;
  barra.Max     := qTabO.RecordCount + 10;

  qTabO.First;
  while qTabO.Eof = false do
  begin
     Application.ProcessMessages;
     barra.Position := qTabO.RecNo;

    if (porc = 0.00) or (qTabOPreco.Value = 0.00) then
      novovalor := qTabOPreco.Value
    else
      novovalor := qTabOPreco.Value + (qTabOPreco.Value * porc / 100);

    if cdTabD.Locate('idproduto', qTabOIdProduto.Text, [] ) then
    begin
      if (cdTabDX2.AsString = 'T') then
      begin
        cdTabD.Edit;
        cdTabDPreco.Value        := novoValor;
        cdTabDsincronizado.Value := 'N';
        cdTabD.Post;
      end;
    end
    else
    begin
        cdTabD.Insert;
        cdTabDIdTabela.Value     := cbTab2.KeyValue;
        cdTabDIdProduto.Value    := qTabOIdProduto.Value;
        cdTabDReferencia.Value   := qTabOReferencia.Value;
        cdTabDCodBarras.Value    := qTabOCodBarras.Value;
        cdTabDDescricao.Value    := qTabODescricao.Value;
        cdTabDPreco.Value        := novoValor;
        cdTabDQtdeEstoque.Value  := qTabOQtdeEstoque.Value;
        cdTabDPagina.Value       := qTabOPagina.Value;
        cdTabDQtdeCaixa.Value    := qTabOQtdeCaixa.Value;
        cdTabDsincronizado.Value := 'N';
        cdTabDidweb.Value        := 0;
        cdTabDex.Value           := 0;
        cdTabD.Post;
    end;

    qTabO.Next;
  end;
  if cdTabD.ChangeCount > 0  then
    cdTabD.ApplyUpdates(0);

  try
     acConfirmar.Enabled := false;
     Sair.Enabled        := false;
     atualizaWeb;
  finally
     acConfirmar.Enabled := true;
     Sair.Enabled        := true;
  end;
  barra.Position := barra.Max;
  AtivaO;

  cdTabD.Close;
  cdTabD.Open;;
  barra.Visible := false;

end;

procedure TfAjusteTabela.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fAjusteTabela := nil;
end;

procedure TfAjusteTabela.FormCreate(Sender: TObject);
begin

  ordemO := 'ASC';
  ordemD := 'ASC';
  campoO := 'tabela_I.descricao';
  campoD := 'tabela_I.descricao';

  qTab.Open;
  cbTab.ListSource.DataSet.Last;
  cbTab.ListSource.DataSet.First;
  if qtab.Locate('padrao', 'S', []) then
  begin
    cbTab.KeyValue := qTabid.AsInteger;
    cbTab.enabled := false;
    cbTabClick(Sender);
  end;

  qTab2.Open;
  cbTab2.ListSource.DataSet.Last;
  cbTab2.ListSource.DataSet.First;


  if trim(dm.qParametropesqproduto.Text) = 'BARRAS' then
  begin
     dbgrid1.Columns[0].FieldName     := 'BARRAS';
     dbgrid1.Columns[0].Title.caption := 'Cod. Barras';
     grDest.Columns[1].FieldName     := 'BARRAS';
     grDest.Columns[1].Title.caption := 'Cod. Barras';
  end
  else
  if trim(dm.qParametropesqproduto.Text) = 'REFERENCIA' then
  begin
     dbgrid1.Columns[0].FieldName     := 'REFERENCIA';
     dbgrid1.Columns[0].Title.caption := 'Referência';
     grDest.Columns[1].FieldName     := 'REFERENCIA';
     grDest.Columns[1].Title.caption := 'Referência';
  end;


end;

procedure TfAjusteTabela.acIMpExecute(Sender: TObject);
begin
  Application.CreateForm(TfImpproduto, fImpProduto);
  fImpProduto.RLLabel4.Caption := 'Lista de Preços Tabela ' + qTab2descricao.Text;

  fImpProduto.rpTabela.DataSource := dtabD; //mudar ds
  fImpProduto.RLDBText1.DataSource := dtabD;
  fImpProduto.RLDBText2.DataSource := dtabD;
  fImpProduto.RLDBText3.DataSource := dtabD;

  vEnv_EmailDest := '';
  vEnv_Report    := fImpProduto.rpTabela;
  fImpProduto.rpTabela.PreviewModal;
  fImpProduto.free;
  cdTabD.first;
end;

procedure TfAjusteTabela.AtivaD;
var
  sql : String;
begin

  qTabD.Close;
  sql := ' select tabela_i.* from tabela_i left join produto p on p.id = tabela_i.idproduto '+
         ' where tabela_i.idtabela = :id and (  (tabela_i.ex in (0,2) ) and '+
         ' (tabela_i.id = (select max(t.id) from tabela_i t  '+
         ' where t.idproduto = tabela_i.idproduto and t.IdTabela = tabela_i.idtabela) ) ) ' +
         ' Order by ' + campoD + '  ' + ordemD;
  qTabD.SQL.Clear;
  qTabD.sql.Add(sql);


  cdTabD.Close;
  cdTabD.ParamByName('id').Value := cbTab2.KeyValue;
  cdTabD.Open;

end;

procedure TfAjusteTabela.AtivaO;
var
  sql : String;
begin

  qTabO.Close;
  sql := ' select tabela_i.* from tabela_i left join produto p on p.id = tabela_i.idproduto '+
         ' where tabela_i.idtabela = :id and (  (tabela_i.ex in (0,2) ) and '+
         ' (tabela_i.id = (select max(t.id) from tabela_i t '+
         ' where t.idproduto = tabela_i.idproduto and t.IdTabela = tabela_i.idtabela) )  ) ' +
         ' Order by ' + campoO + '  ' + ordemO;
  qTabO.SQL.Clear;
  qTabO.sql.Add(sql);
  qTabO.ParamByName('id').Value := cbTab.KeyValue;
  qTabO.Open;

end;

procedure TfAjusteTabela.cbTab2Click(Sender: TObject);
begin
  AtivaD;

end;

procedure TfAjusteTabela.cbTabClick(Sender: TObject);
begin
  AtivaO;

end;

procedure TfAjusteTabela.ckTodoClick(Sender: TObject);
var
  vTp : string;
begin
  vTp := 'F';
  if ckTodo.Checked then
    vTp := 'T';
  cdTabD.first;
  while not cdTabD.eof do
  begin
    cdTabD.edit;
    cdTabDX2.asstring := vTp;
    cdTabD.post;
    cdTabD.next;
  end;
  cdTabD.first;
end;

procedure TfAjusteTabela.grDestKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfAjusteTabela.grDestTitleClick(Column: TColumn);
begin
   if ordemD = 'ASC' then
      ordemD := 'DESC'
   else
      ordemD := 'ASC';

   campoD := 'tabela_I.' + Column.FieldName;

   ativaD;

end;

procedure TfAjusteTabela.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfAjusteTabela.DBGrid1TitleClick(Column: TColumn);
begin
   if ordemO = 'ASC' then
      ordemO := 'DESC'
   else
      ordemO := 'ASC';

   campoO := 'tabela_I.' + Column.FieldName;

   ativaO;

end;

end.
