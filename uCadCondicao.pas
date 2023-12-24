unit uCadCondicao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList, Vcl.Buttons, XiButton;

type
  TfCadCondicao = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    TId: TIntegerField;
    TDescricao: TWideStringField;
    TParcelas: TIntegerField;
    TNumParc: TIntegerField;
    TIntervalo: TIntegerField;
    TJuros: TFloatField;
    TCredito: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    Tcond_padrao: TWideStringField;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    DBGrid2: TDBGrid;
    L: TZQuery;
    UL: TZUpdateSQL;
    DL: TDataSource;
    LId: TIntegerField;
    LIDCond: TIntegerField;
    LPorc: TFloatField;
    LDias: TIntegerField;
    edPor: TLabel;
    Bevel1: TBevel;
    SpeedButton1: TSpeedButton;
    Tsincronizado: TWideStringField;
    Tidweb: TIntegerField;
    Tex: TIntegerField;
    ckAntecipado: TDBCheckBox;
    Tantecipado: TWideStringField;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    btAddP: TXiButton;
    btExcluirP: TXiButton;
    edDias: TMaskEdit;
    Label11: TLabel;
    edPorcentagem: TMaskEdit;
    Label12: TLabel;
    Label13: TLabel;
    procedure TNewRecord(DataSet: TDataSet);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure LNewRecord(DataSet: TDataSet);
    procedure LAfterPost(DataSet: TDataSet);
    procedure LAfterDelete(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure TBeforePost(DataSet: TDataSet);
    procedure btAddPClick(Sender: TObject);
    procedure edDiasKeyPress(Sender: TObject; var Key: Char);
    procedure edPorcentagemKeyPress(Sender: TObject; var Key: Char);
    procedure acCancelarExecute(Sender: TObject);
    procedure btExcluirPClick(Sender: TObject);
  private
    porTot:real;
    alterando: string;
    procedure somaporc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadCondicao: TfCadCondicao;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfCadCondicao.TAfterScroll(DataSet: TDataSet);
begin

  if PageControl1.Pages[2].TabVisible = true then
  begin
     L.close;
     L.ParamByName('id').value := Tid.value;
     L.Open;
     somaporc;
  end;

end;

procedure TfCadCondicao.TBeforePost(DataSet: TDataSet);
begin
  Tsincronizado.Value := 'N';
end;

procedure TfCadCondicao.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.Value           := InsereCodigo('cond_pgto','ID');
  TCredito.Value      := 'N';
  Tparcelas.Value     := 0;
  Tnumparc.Value      := 0;
  Tintervalo.Value    := 0;
  Tjuros.Value        := 0;
  Tcond_padrao.Value  := 'N';
  Tsincronizado.Value := 'S';
  Tantecipado.Value   := 'N';

end;

procedure TfCadCondicao.acExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja realmente excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
     Exit;

  Execsql('update cond_pgto set sincronizado = ''N'',  ex = 1 where id = ' + TID.Text);
  Execsql('update cond_pgto_i set ex = 1 where idcond = ' + TID.Text);
  sleep(100);

  T.Close;
  T.Open;
  sleep(200);

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;


  edPorcentagem.Enabled  := false;
  edDias.Enabled         := false;
  btaddP.Enabled         := false;
  btExcluirP.enabled     := false;
  edPorcentagem.Clear;
  edDias.Clear;


end;

procedure TfCadCondicao.acInserirExecute(Sender: TObject);
begin
  if PageControl1.pages[1].TabVisible = true then
  begin
     PageControl1.ActivePageIndex := 1;
     DBEdit1.ReadOnly := True;
     DBEdit1.Color := $00CEFDFC;
     DBEdit2.SetFocus;
  end
  else
  if PageControl1.pages[2].TabVisible = true then
  begin
     PageControl1.ActivePageIndex := 2;
     DBEdit6.ReadOnly := True;
     DBEdit6.Color := $00CEFDFC;
     //dbgrid2.ReadOnly     := false;
     //dbnavigator1.Enabled := true;
     edPorcentagem.Enabled  := true;
     edDias.Enabled         := true;
     btaddP.Enabled         := true;
     btExcluirP.enabled     := true;
     DBEdit8.SetFocus;
     edPorcentagem.Clear;
     edDias.Clear;
  end;

  inherited;

end;

procedure TfCadCondicao.acCancelarExecute(Sender: TObject);
begin
  inherited;
  edPorcentagem.Enabled  := false;
  edDias.Enabled         := false;
  btaddP.Enabled         := false;
  btExcluirP.enabled     := false;
end;

procedure TfCadCondicao.acEditarExecute(Sender: TObject);
begin
  inherited;
  if PageControl1.pages[1].TabVisible = true then
  begin
     PageControl1.ActivePageIndex := 1;
     DBEdit1.ReadOnly := True;
     DBEdit1.Color := $00CEFDFC;
     DBEdit2.SetFocus;
  end
  else
  if PageControl1.pages[2].TabVisible = true then
  begin
     PageControl1.ActivePageIndex := 2;
     DBEdit6.ReadOnly := True;
     DBEdit6.Color := $00CEFDFC;
     //dbgrid2.ReadOnly     := false;
     //dbnavigator1.Enabled := true;
     edPorcentagem.Enabled  := true;
     edDias.Enabled         := true;
     btaddP.Enabled         := true;
     btExcluirP.enabled     := true;
     DBEdit8.SetFocus;
     edPorcentagem.Clear;
     edDias.Clear;
  end;
end;

procedure TfCadCondicao.acSalvarExecute(Sender: TObject);
var
  i:integer;
  pad:String;
begin
  i := 0;
  if TDescricao.Text  = '' then i := i + 1;
  if pageControl1.ActivePageIndex = 1 then
  begin
     if Tparcelas.Text   = '' then i := i + 1;
     if Tnumparc.Text    = '' then i := i + 1;
     if Tintervalo.Text  = '' then i := i + 1;
     if Tcredito.Text    = '' then i := i + 1;
     if Tjuros.Text      = '' then i := i + 1;
     if i > 0 then
     begin
       Application.MessageBox('Existem campos obrigatorios não preenchidos. Por favor, verifique!','Atenção');
       exit;
     end;
   end
  else
  if pageControl1.ActivePageIndex = 2 then
  begin
     if L.IsEmpty then
        i := i + 1;
     if porTot <> 100.00  then
        i := i + 1;

     if i > 0 then
     begin
       Application.MessageBox('Porcentagens incompletas. Por favor, verifique!','Atenção');
       exit;
     end;
  end;

  if DBCheckBox2.Checked then
  begin
     pad := 'S';
     I := Tid.AsInteger;
  end;

  inherited;

  if pad = 'S' then
     ExecSQl('update cond_pgto set cond_padrao = ''N'' where id <> ' + inttostr(I) );

  T.close;
  T.Open;

  dbgrid2.ReadOnly     := true;
  //dbnavigator1.Enabled := false;
  edPorcentagem.Enabled  := false;
  edDias.Enabled         := false;
  btaddP.Enabled         := false;
  btExcluirP.enabled     := false;
  edPorcentagem.Clear;
  edDias.Clear;

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;


end;

procedure TfCadCondicao.btAddPClick(Sender: TObject);
Var
  vDias : Integer;
  vPorcentagem : Real;
begin
  inherited;
  try
    vPorcentagem := StrtoFloat(edPorcentagem.text);
  except
    application.MessageBox('Porcentagem inválida. Por favor, verifique!','Atenção');
    edPorcentagem.SetFocus;
    exit;
  end;

  try
    vDias := StrtoInt(edDias.text);
  except
    application.MessageBox('Quantidade de dias inválido. Por favor, verifique!','Atenção');
    edDias.SetFocus;
    exit;
  end;



  L.insert;
  Lporc.value := vPorcentagem;
  Ldias.value := vDias;
  L.post;


  edPorcentagem.Clear;
  edDias.Clear;
  edPorcentagem.setFocus;


end;

procedure TfCadCondicao.btExcluirPClick(Sender: TObject);
begin
  inherited;
  if L.RecordCount > 0 then
    L.delete;
end;

procedure TfCadCondicao.edDiasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  somente_numero_sem_virgula(key);
end;

procedure TfCadCondicao.edPorcentagemKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  somente_numero(key);
end;

procedure TfCadCondicao.somaporc;
begin
  porTot := 0;
  L.first;
  while L.eof = false do
  begin
    porTot := porTot + LPorc.asfloat;
    L.next;
  end;
  L.first;
  edPor.caption := formatfloat('#0.#', porTot);
  SpeedButton1.Visible := (porTot < 100.00);

end;

procedure TfCadCondicao.SpeedButton1Click(Sender: TObject);
var
  valP : real;
begin
  if porTot < 100.00 then
  begin
     alterando := 'S';
     valP := 100 - porTot;
     L.insert;
     Lporc.value := valP;
     Ldias.value := 1;
     L.post;
     alterando := 'N';

     somaporc;
  end;

end;

procedure TfCadCondicao.FormCreate(Sender: TObject);
var
  i :integer;
begin
  inherited;
  if dm.qParametrousa_cond_porcentagem.text = 'S' then
  begin
     pageControl1.Pages[1].TabVisible := false;
     pageControl1.Pages[2].TabVisible := true;
     for I := 0 to dbgrid1.Columns.Count -1 do
     begin
        if I > 1 then
           dbgrid1.Columns[I].Visible := false;
     end;
  end
  else
     pageControl1.Pages[2].TabVisible := false;

  if dm.qParametrofinan_expedicao.Text = 'N' then
  begin
     ckAntecipado.Visible := false;
     DBCheckBox3.Visible  := false;
  end;


  edPorcentagem.Enabled  := false;
  edDias.Enabled         := false;
  btaddP.Enabled         := false;
  btExcluirP.enabled     := false;
  edPorcentagem.Clear;
  edDias.Clear;


end;

procedure TfCadCondicao.LAfterDelete(DataSet: TDataSet);
begin
  inherited;
  somaporc;

end;

procedure TfCadCondicao.LAfterPost(DataSet: TDataSet);
begin
  inherited;
  L.ApplyUpdates;

  if alterando = 'S' then
     Exit;
  somaporc;

end;

procedure TfCadCondicao.LNewRecord(DataSet: TDataSet);
begin
  inherited;
  Lidcond.Value := Tid.value;

end;

end.
