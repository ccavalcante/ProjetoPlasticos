unit uCadFunc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList;

type
  TfCadFunc = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    lIERG: TLabel;
    lCPFCNPJ: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBEdit9: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    dTP: TDataSource;
    qTP: TZQuery;
    Label15: TLabel;
    DBEdit17: TDBEdit;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    Bevel1: TBevel;
    TId: TIntegerField;
    TNome: TWideStringField;
    TSenha: TWideStringField;
    TUser: TWideStringField;
    TTipo: TIntegerField;
    TAfastamento: TDateTimeField;
    TCPF: TWideStringField;
    TRG: TWideStringField;
    TNascimento: TDateTimeField;
    TEndereco: TWideStringField;
    TNumero: TWideStringField;
    TBairro: TWideStringField;
    TCidade: TWideStringField;
    TUF: TWideStringField;
    Ttelefone: TWideStringField;
    Tcelular: TWideStringField;
    Tfax: TWideStringField;
    Temail: TWideStringField;
    qTPId: TIntegerField;
    qTPDescricao: TWideStringField;
    TData: TDateTimeField;
    Tvenc_ferias: TDateTimeField;
    Tvenc_exame: TDateTimeField;
    TloginEspecial: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    qVend: TZQuery;
    dVend: TDataSource;
    Label23: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    qVendid: TIntegerField;
    qVendnome: TWideStringField;
    Tidvendedor: TIntegerField;
    TCep: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure EdPesqChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadFunc: TfCadFunc;

implementation

uses uDM;

{$R *.dfm}

procedure TfCadFunc.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadFunc.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadFunc.FormCreate(Sender: TObject);
begin
  inherited;
  qTP.Open;
  dblookupcombobox1.ListSource.DataSet.Last;
  dblookupcombobox1.ListSource.DataSet.First;
  dblookupcombobox1.KeyValue := qTpID.Value;

  qVend.Open;
  dblookupcombobox2.ListSource.DataSet.Last;
  dblookupcombobox2.ListSource.DataSet.First;
  dblookupcombobox2.KeyValue := 0;
  if dm.qParametrovincula_usu_vend.Text = 'N' then //param 203
  begin
     label23.Visible           := false;
     dblookupcombobox2.Visible := false;
  end;

  T.Close;
  T.ParamByName('pesq').Value := '%%';

  T.Open;    
end;

procedure TfCadFunc.acSalvarExecute(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);

  if  (TUser.Text = '' ) then begin
     Application.MessageBox('UserName não preenchido. Por favor, verifique!','Atenção');
     DBEdit7.SetFocus;
     exit;
  end;

  if (TSenha.Text = '' ) then begin
     Application.MessageBox('Senha não preenchida. Por favor, verifique!','Atenção');
     DBEdit9.SetFocus;
     exit;
  end;

  if not(TTipo.Value >0 ) then begin
     Application.MessageBox('Você precisa escolher o tipo de usuário. Por favor, verifique!','Atenção');
     dblookupcombobox1.SetFocus;
     exit;
  end;

  //ver user
  dm.qPesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from usuario where [user] = ' + quotedstr(trim(Tuser.Text)) +
                   ' and id <> '+quotedStr(TID.text) );
  dm.qPesq.Open;
  if dm.qPesq.RecordCount >= 1 then
  begin
    Application.MessageBox('Login ja cadastrado. Por favor, informe outro login.','Atenção');
    dbedit7.SetFocus;
    exit;
  end;
  {
  if T.State in [dsInsert] then begin
     if dm.qPesq.RecordCount >= 1 then begin
       Application.MessageBox('Login ja Cadastrado, Por Favor Tente Novamente','Atenção');
       dbedit7.SetFocus;
       exit;
     end;
  end
  else
  if T.State in [dsEdit] then begin
     if dm.qPesq.RecordCount > 1 then begin
       Application.MessageBox('Login ja Cadastrado, Por Favor Tente Novamente','Atenção');
       dbedit7.SetFocus;
       exit;
     end;
  end;  }

  //ver senha
  dm.qPesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from usuario where senha like ' + quotedstr(trim(Tsenha.Value)) +
                   ' and id <> '+quotedStr(TID.text) );
  dm.qPesq.Open;
  if dm.qPesq.RecordCount >= 1 then
  begin
    Application.MessageBox('Senha com problemas. Por favor, informe outra senha.','Atenção');
    dbedit9.SetFocus;
    exit;
  end;
  {
  if T.State in [dsInsert] then begin
     if dm.qPesq.RecordCount >= 1 then begin
       Application.MessageBox('Senha com problemas, Por Favor Tente Outra','Atenção');
       dbedit9.SetFocus;
       exit;
     end;
  end
  else
  if T.State in [dsEdit] then begin
     if dm.qPesq.RecordCount > 1 then
     begin
       Application.MessageBox('Senha com problemas, Por Favor Tente Outra','Atenção');
       dbedit9.SetFocus;
       exit;
     end;
  end;    }

  inherited;

end;

procedure TfCadFunc.TNewRecord(DataSet: TDataSet);
begin
  inherited;

  DM.qIns.Close;
  DM.qIns.SQL.Clear;
  DM.qIns.SQL.Add('select max(id) as Cod from usuario where id < 10000 ');
  DM.qIns.Open;

  TId.Value := DM.qIns.FieldByName('Cod').AsInteger + 1;

  if DBLookupComboBox1.KeyValue = null then
   begin
    dblookupcombobox1.ListSource.DataSet.Last;
    dblookupcombobox1.ListSource.DataSet.First;
    dblookupcombobox1.KeyValue := qTpID.Value;
   end;

  TTipo.Value     := dblookupcombobox1.KeyValue;
  TLoginEspecial.Value := 'N';
end;

procedure TfCadFunc.EdPesqChange(Sender: TObject);
begin
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';

  T.Open;
end;

procedure TfCadFunc.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
 
  T.Open;   
end;

end.
