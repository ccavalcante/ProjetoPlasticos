unit uCADConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, DB, ActnList, ImgList,
  Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg, ExtCtrls, Mask,
  DBCtrls, CheckDBGrid, System.Actions, System.ImageList, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfCADConta = class(TfCadPadrao)
    TID: TIntegerField;
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
    DBCheckBox1: TDBCheckBox;
    ckBoleto: TDBCheckBox;
    Label45: TLabel;
    DBEdit41: TDBEdit;
    DBEdit40: TDBEdit;
    Label27: TLabel;
    DBEdit43: TDBEdit;
    DBEdit42: TDBEdit;
    Label59: TLabel;
    DBEdit54: TDBEdit;
    DBEdit6: TDBEdit;
    Label33: TLabel;
    DBEdit30: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    mCarteira: TMemo;
    Label8: TLabel;
    Panel1: TPanel;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    TBSEQ_REMESSA: TIntegerField;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Button1: TButton;
    Label12: TLabel;
    DBMemo3: TDBMemo;
    DBRadioGroup1: TDBRadioGroup;
    Label17: TLabel;
    DBEdit14: TDBEdit;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    TDIASPROT: TIntegerField;
    TIDUSU: TIntegerField;
    TMSG_BOLETO: TWideMemoField;
    TMULTA: TFloatField;
    TJUROS: TFloatField;
    TTITULAR: TWideStringField;
    TAG: TWideStringField;
    TCC: TWideStringField;
    TBCO: TWideStringField;
    TTIPO: TWideStringField;
    TUSABOLETO: TWideStringField;
    TBTIPO: TWideStringField;
    TBAGENCIA: TWideStringField;
    TBCONTA: TWideStringField;
    TBCONTAD: TWideStringField;
    TBCEDENTE: TWideStringField;
    TBCEDENTED: TWideStringField;
    TBCONVENIO: TWideStringField;
    TBCARTEIRA: TWideStringField;
    TNOMECEDENTE: TWideStringField;
    TCNPJCEDENTE: TWideStringField;
    Tendcedende: TWideStringField;
    Tnumcedende: TWideStringField;
    Tbaicedende: TWideStringField;
    Tcidcedende: TWideStringField;
    Tufcedende: TWideStringField;
    Tcepcedende: TWideStringField;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit16: TDBEdit;
    Label19: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label20: TLabel;
    Label21: TLabel;
    DBComboBox1: TDBComboBox;
    Bevel1: TBevel;
    Label22: TLabel;
    DBRadioGroup2: TDBRadioGroup;
    TBCNAB: TIntegerField;
    DBRadioGroup3: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    TtipoMulta: TWideStringField;
    TtipoProtesto: TWideStringField;
    TBAGENCIAD: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure ckBoletoClick(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit43Exit(Sender: TObject);

    procedure DBEdit54Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCADConta: TfCADConta;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfCADConta.acExcluirExecute(Sender: TObject);
begin
  if TID.asinteger > 1 then
     inherited;

end;

procedure TfCADConta.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADConta.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADConta.EdPesqChange(Sender: TObject);
begin
  inherited;
T.Close;
T.ParamByName('pesq').Text :=  '%'+EdPesq.Text+'%';
T.Open;
end;

procedure TfCADConta.ckBoletoClick(Sender: TObject);
begin
  if ckBoleto.Checked then
     begin
       panel1.Visible := true;
       if trim(Tbco.Value) = '104' then begin
         mCarteira.Lines.Clear;
         mCarteira.Lines.Add('CR - Cobrança Rapida SICOB-240');
         mCarteira.Lines.Add('SR - Sem Registro SICOB-240');
         mCarteira.Lines.Add('24 - Sem Registro SIGCB   ');
         mCarteira.Lines.Add('14 - Registrada SIGCB-240 ');
         DBEdit43.MaxLength := 6;
         DBedit54.MaxLength := 6;
         Label59.Caption := 'Cedente' ;
         Label33.Visible := false;
         DBedit30.Visible:= false;
       end;
       if trim(Tbco.Value) = '341' then begin
         mCarteira.Lines.Clear;
         mCarteira.Lines.Add('109 Direta Simples');
         mCarteira.Lines.Add('175 Sem Registro  ');
         DBEdit43.MaxLength := 5;
         DBedit54.MaxLength := 5;
         Label59.Caption := 'Cedente' ;
         Label33.Visible := false;
         DBedit30.Visible:= false;
       end;
       if trim(Tbco.Value) = '001' then begin
         mCarteira.Lines.Clear;
         mCarteira.Lines.Add('17 - Registrada');
         mCarteira.Lines.Add('19 - Simples   ');
         DBEdit43.MaxLength := 8;
         DBedit54.MaxLength := 5;
         DBedit30.MaxLength := 7;
         Label59.Caption := 'Cedente';
         Label33.Visible := true;
         DBedit30.Visible:= true;
       end;
       if trim(Tbco.Value) = '237' then begin
         mCarteira.Lines.Clear;
         mCarteira.Lines.Add('09 - Com Registro');
         mCarteira.Lines.Add('06 - Sem Registro');
         DBEdit43.MaxLength := 7;
         DBedit54.MaxLength := 7;
         Label59.Caption := 'Codigo da Empresa' ;
         Label33.Visible := false;
         DBedit30.Visible:= false;
       end;
       if trim(Tbco.Value) = '033' then begin
         mCarteira.Lines.Clear;
         mCarteira.Lines.Add('101 - Cobrança Rapida Com Registro ');
         mCarteira.Lines.Add('102 - Cobrança Simples Sem Registro');
         DBEdit43.MaxLength := 9;
         DBedit54.MaxLength := 7;
         DBedit30.MaxLength := 7;
         Label59.Caption := 'Cedente';
         Label33.Visible := true;
         DBedit30.Visible:= true;
       end;
     end
    else
     panel1.Visible := false;

end;

procedure TfCADConta.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.value            := InsereCodigo('conta', 'ID' );
  TUsaBoleto.Text     := 'N';
  TTipo.Text          := 'N';
  TBSeq_remessa.Value := 0;
  TBtipo.Text         := 'P';
  TDiasProt.value     := 0;
  Tjuros.Value        := 0;
  Tmulta.value        := 0;
  TtipoMulta.value    := 'P';
  TtipoProtesto.value := 'U';
end;

procedure TfCADConta.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
  DBCheckBox1Click(Application);
  ckBoletoclick(Application);
end;

procedure TfCADConta.DBEdit7Exit(Sender: TObject);
begin
  if T.State in [dsEdit, dsInsert] then
     Tbagencia.Value := formatfloat('0000', strtoint(trim(TBAgencia.Text)));
  inherited;
end;

procedure TfCADConta.DBEdit43Exit(Sender: TObject);
begin
 if T.State in [dsEdit, dsInsert] then begin
  if trim(Tbco.Value) = '104' then
     Tbconta.Value := formatfloat('000000', strtoint(trim(TBconta.Text)));
  if trim(Tbco.Value) = '341' then
     Tbconta.Value := formatfloat('00000', strtoint(trim(TBconta.Text)));
  if trim(Tbco.Value) = '001' then
     Tbconta.Value := formatfloat('00000000', strtoint(trim(TBconta.Text)));
  if trim(Tbco.Value) = '237' then
     Tbconta.Value := formatfloat('0000000', strtoint(trim(TBconta.Text)));
  if trim(Tbco.Value) = '033' then
     Tbconta.Value := formatfloat('000000000', strtoint(trim(TBconta.Text)));
 end;
 inherited;

end;

procedure TfCADConta.DBEdit54Exit(Sender: TObject);
begin
 if T.State in [dsEdit, dsInsert] then begin
  if trim(Tbco.Value) = '104' then
     Tbcedente.Value := formatfloat('000000', strtoint(trim(Tbcedente.Text)));
  if trim(Tbco.Value) = '341' then
     Tbcedente.Value := formatfloat('00000', strtoint(trim(Tbcedente.Text)));
  if trim(Tbco.Value) = '001' then
     Tbcedente.Value := formatfloat('00000', strtoint(trim(Tbcedente.Text)));
  if trim(Tbco.Value) = '237' then
     Tbcedente.Value := formatfloat('0000000', strtoint(trim(Tbcedente.Text)));
  if trim(Tbco.Value) = '033' then
     Tbcedente.Value := formatfloat('0000000', strtoint(trim(Tbcedente.Text)));
 end;
 inherited;

end;

procedure TfCADConta.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);

end;

procedure TfCADConta.DBEdit30Exit(Sender: TObject);
begin
 if T.State in [dsEdit, dsInsert] then
   begin
     if trim(Tbco.Value) = '001' then
      Tbconvenio.Value := formatfloat('0000000', strtoint(trim(Tbconvenio.Text)));
     if trim(Tbco.Value) = '033' then
      Tbconvenio.Value := formatfloat('0000000', strtoint(trim(Tbconvenio.Text)));
   end;
 inherited;

end;

procedure TfCADConta.acSalvarExecute(Sender: TObject);
var
  vazio : string;
begin
  if trim(TTITULAR.text) = '' then
  begin
    application.messagebox('Titular não preenchido. Por favor, verifique.', 'Atenção' );
    exit;
  end;

  if ckBoleto.Checked then
    begin
      if (DBedit40.Text= '') then vazio := vazio + 'Agencia, ';
      if (DBedit41.Text= '') then vazio := vazio + 'Digito Agencia, '  ;
      if (DBedit42.Text= '') then vazio := vazio + 'Conta, ';
      if (DBedit43.Text= '') then vazio := vazio + 'Digito Conta, ';
      if (DBedit54.Text= '') then vazio := vazio + 'Cedente, ' ;
      if (DBedit6.Text = '') then vazio := vazio + 'Digito Cedente, ';
      if (TBCO.Text = '001') or (TBCO.Text = '033')  then
         if (DBedit30.Text= '') then vazio := vazio + 'Numero Convenio';
      if trim(vazio) <> '' then
         begin
           Application.MessageBox( Pchar(Vazio), 'Atenção');
           exit;
         end;
    end;
  inherited;

end;

procedure TfCADConta.Button1Click(Sender: TObject);
begin
 if T.State in [dsEdit, dsInsert] then
 begin
    dm.qEmpresa.Locate('id', dm.qUseridemp.AsInteger,[]);
    Tnomecedente.Text := dm.qEmpresaRAZAO.Text;
    Tcnpjcedente.Text := retornaNumeros(dm.qEmpresaCNPJ.Text);
    Tendcedende.Text  := dm.qEmpresaENDERECO.Text;
    Tnumcedende.Text  := dm.qEmpresanum.Text;
    Tbaicedende.Text  := dm.qEmpresaBAIRRO.Text;
    Tcidcedende.Text  := dm.qEmpresaCIDADE.Text;
    Tufcedende.Text   := dm.qEmpresaUF.Text;
    Tcepcedende.Text  := dm.qEmpresaCEP.Text;
 end;

end;

procedure TfCADConta.DBCheckBox1Click(Sender: TObject);
begin
     inherited;

     ckBoleto.Visible := false;
     if dbcheckbox1.Checked then
        if dm.qParametrop_mod_boleto.Text = 'S' then
           ckBoleto.Visible := true;

end;

procedure TfCADConta.FormCreate(Sender: TObject);
begin
  inherited;

  DBCheckBox1Click(Application);



end;

end.
