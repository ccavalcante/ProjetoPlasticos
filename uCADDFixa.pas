unit uCADDFixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao,  DB,  ActnList, ImgList,
  Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls,
  Mask,  ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  System.Actions, System.ImageList;

type
  TfCADDFixa = class(TfCadPadrao)
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    gdForn: TDBGrid;
    dCCusto: TDataSource;
    qCCusto: TZQuery;
    qCCustoID: TIntegerField;
    DBCheckBox1: TDBCheckBox;
    qCCustoDESCRICAO: TWideStringField;
    TId: TIntegerField;
    TidCusto: TIntegerField;
    TidFornecedor: TIntegerField;
    TDescricao: TWideStringField;
    TDia_Venci: TIntegerField;
    TValor: TFloatField;
    TidUsuario: TIntegerField;
    TAtivo: TWideStringField;
    TX: TWideStringField;
    Tdescri: TWideStringField;
    Tnome: TWideStringField;
    Label3: TLabel;
    Tidemp: TIntegerField;
    Label41: TLabel;
    cbEmp: TDBLookupComboBox;
    procedure acSalvarExecute(Sender: TObject);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdFornKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCADDFixa: TfCADDFixa;

implementation

uses Registry, uDM, uFuncao;

{$R *.dfm}

procedure TfCADDFixa.acSalvarExecute(Sender: TObject);
begin
if TDESCRICAO.Value = '' then
 begin
  Application.MessageBox('Descrição Não Preenchida!','Atenção');
  DBEdit5.SetFocus;
 end
else 
if (TidFornecedor.Value = 0) or (DBedit6.Text = '') then
 begin
  Application.MessageBox('Fornecedor Não Preenchido!','Atenção');
  DBEdit6.SetFocus;
 end
 else
if (TValor.asFloat = 0) or (DBedit4.Text = '') then
 begin
  Application.MessageBox('Valor Não Preenchido!','Atenção');
  DBEdit6.SetFocus;
 end
 else
  inherited;

end;

procedure TfCADDFixa.acExcluirExecute(Sender: TObject);
begin

  if Application.MessageBox('Deseja Realmente Excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
     Exit;

  T.delete;
  T.ApplyUpdates;
  sleep(200);

  T.Close;
  T.ParamByName('pesq').Value := '%'+edPesq.Text+'%';
  T.Open;
  sleep(200);

end;

procedure TfCADDFixa.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBLookupComboBox1.SetFocus;
end;

procedure TfCADDFixa.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBLookupComboBox1.SetFocus;
end;

procedure TfCADDFixa.EdPesqChange(Sender: TObject);
begin
  inherited;
T.Close;
T.ParamByName('pesq').Value := '%'+edPesq.Text+'%';
T.Open;
end;

procedure TfCADDFixa.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  Tid.Value        := InsereCodigo('DFIXA', 'ID' );
  TX.Value         := 'T';
  TAtivo.value     := 'S';
  TDia_Venci.Value := 10;
  TidUsuario.Value := dm.qUserId.Value;


  if dm.qUseridemp.AsInteger = 1 then
  begin
    if dm.qEmpresa.Locate('empresa_padrao', 'S', [] ) then
       Tidemp.AsInteger := dm.qEmpresaid.AsInteger
    else
       Tidemp.AsInteger := dm.qUseridemp.AsInteger;
  end
  else
    Tidemp.AsInteger := dm.qUseridemp.AsInteger;

end;

procedure TfCADDFixa.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);

end;

procedure TfCADDFixa.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);

end;

procedure TfCADDFixa.DBEdit6Exit(Sender: TObject);
begin
 if not (T.State in [dsINsert, dsEdit])  then
    Exit;

 if (DBEdit6.Text = '') or (DBEdit6.Text = '0') then
 begin
  DBEdit7.SetFocus;
 end
else
 begin
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add('Select fornecedor.id Codigo, fornecedor.Nome from fornecedor where ativo = ''S'' and tipo = ''D'' and  fornecedor.id = '+DBEdit6.Text);
  DM.qPesq.Open;
  if not DM.qPesq.IsEmpty then
   begin
    TNOME.Text := DM.qPesq.FieldByName('Nome').AsString;
    gdForn.Visible := False;
    DBEdit5.SetFocus;
   end
  else
  begin
   Application.MessageBox('Fornecedor não localizado ou incativo, verifique!','Atenção');
   TidFornecedor.Clear;
   Dbedit7.Clear;
   DBEdit7.SetFocus;
  end;

 end;

end;

procedure TfCADDFixa.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);

end;

procedure TfCADDFixa.DBEdit7Change(Sender: TObject);
begin
  //inherited;
  if (DBEdit7.Text <> '') then
   begin
    posicionagrid(gdForn, dbedit6);
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id Codigo, nome '+
                        ' from fornecedor where ativo = ''S'' and tipo = ''D'' and  '+
                        ' upper(nome) like '+QuotedStr('%'+TrocaCaracter(DBEdit7.Text, '*', '%')+'%')+
                        ' Order by Nome ');
    DM.qPesq.Open;

    if DM.qPesq.RecordCount > 0 then
     gdForn.Visible := True
    else
     gdForn.Visible := False;

   end
  else
   gdForn.Visible := False;

end;

procedure TfCADDFixa.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
IF Key = VK_DOWN THEN
 IF gdForn.Visible THEN
  gdForn.SetFocus;
end;

procedure TfCADDFixa.gdFornKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if Key = #13 then
 begin
  Key := #0;

  if not DM.qPesq.IsEmpty then
   begin
    TIDFORNecedor.Text:= DM.qPesq.FIELDBYNAME('CODIGO').Value;
    DBEdit6Exit(Application);
    gdForn.Visible := False;
   end;

 end;

end;

procedure TfCADDFixa.FormCreate(Sender: TObject);
begin
  inherited;

  qCCusto.Open;

end;

procedure TfCADDFixa.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
 gdForn.Visible := False;
end;

end.
