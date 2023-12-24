unit uCadTpUser;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, CheckDBGrid, System.Actions,
  System.ImageList;

type
  TfCadTpUser = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TabSheet3: TTabSheet;
    CheckDBGrid1: TCheckDBGrid;
    ckTudo: TCheckBox;
    Perm: TZQuery;
    upPerm: TZUpdateSQL;
    Menu: TZQuery;
    upMenu: TZUpdateSQL;
    dPerm: TDataSource;
    TId: TIntegerField;
    TDescricao: TWideStringField;
    PermId: TIntegerField;
    PermIdUsuario: TIntegerField;
    PermIdMenu: TIntegerField;
    PermPermitido: TWideStringField;
    Permatalho: TWideStringField;
    PermDESCRICAO: TWideStringField;
    MenuId: TIntegerField;
    MenuDescricao: TWideStringField;
    MenuNome: TWideStringField;
    Menutipo: TWideStringField;
    Tidemp: TIntegerField;
    cbEmp: TDBLookupComboBox;
    Label4: TLabel;
    Tperm_desconto: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure ckTudoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure PermAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acSairExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure PermNewRecord(DataSet: TDataSet);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    sql : String;
    { Public declarations }
  end;

var
  fCadTpUser: TfCadTpUser;

implementation

uses uDM, uMenu, uFuncao;

{$R *.dfm}

procedure TfCadTpUser.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;
end;

procedure TfCadTpUser.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;
end;

procedure TfCadTpUser.ckTudoClick(Sender: TObject);
begin
  inherited;

 Perm.First;
 while Perm.Eof = false do
  begin
   Perm.Edit;
   if ckTudo.Checked then
    PermPermitido.Value := 'T'
   else
    PermPermitido.Value := 'F';
   Perm.Post;

   Perm.Next;
  end;


end;

procedure TfCadTpUser.FormCreate(Sender: TObject);
begin
  sql := ' select Permissao.*,  Menu.DESCRICAO ' +
        ' from Permissao '+
        ' LEFT JOIN Menu ON Menu.ID = Permissao.IDMENU '+
        ' where Permissao.IdUsuario = :ID ';

  if dm.qParametroNF_IMPOSTOPORNCM.Text = 'N' then
     sql := sql +
           'and Menu.nome not in ( ''NCM1'' ) ';

  if dm.qParametromod_cad_tabela.Value = 'N' then
     sql := sql +
           'and Menu.nome not in ( ''abeladePreos1'' ) ';

  if dm.qParametromod_pedidosWeb.Value = 'N' then
     sql := sql +
           'and Menu.nome not in ( ''VerificarPedidosWeb1'' ) ';

  if dm.qParametrop_mod_boleto.Value = 'N' then
     sql := sql +
           'and Menu.nome not in ( ''ConsultaBoletos1'', ''BaixaRetorno1'' ) ';

  sql := sql +
         ' order by Menu.DESCRICAO ';

  Perm.Close;
  Perm.sql.clear;
  Perm.sql.add(sql);
  Perm.ParamByName('ID').Value := 0;
  Perm.Open;
  Menu.Open;

  inherited;


end;

procedure TfCadTpUser.acSalvarExecute(Sender: TObject);
var
  St : String;
begin

 SelectNext(ActiveControl, True, True);

 if T.State in [dsinsert] then
  St := 'I'
 else
  St := 'E';

 if Tidemp.AsInteger = 0 then
    Tidemp.AsInteger := 1;

 if TDescricao.Value = '' then
 begin
  Application.MessageBox('Descrição Não Preenchida!','Atenção');
  DBEdit2.SetFocus;
 end
 else
  inherited;

 if St = 'I' then
  begin
   Menu.Open;

   Menu.First;
    while Menu.Eof = false do
     begin
        Perm.Insert;
        PermIdMenu.Value    := MenuId.Value;
        PermIdUsuario.Value := TId.Value;
        PermPermitido.VALUE := 'T';
        Perm.Post;

        Menu.Next;
     end;
  end
 else
  begin
   Menu.Open;


    Menu.First;
    while Menu.Eof = false do
     begin
       DM.qSelect.Close;
       DM.qSelect.SQL.Clear;
       DM.qSelect.SQL.Add('select IdMenu from Permissao where IdMenu = '+MenuId.Text+
                          ' and IdUsuario = '+TId.Text);
       DM.qSelect.Open;

       if DM.qSelect.IsEmpty then
         begin
           Perm.Insert;
           PermIdMenu.Value    := MenuID.Value;
           PermIdUsuario.Value := TID.Value;
           PermPermitido.VALUE := 'T';
           Perm.Post;
          end;

        Menu.Next;
       end;
  end;

 Perm.Close;
 Perm.sql.clear;
 Perm.sql.add(sql);
 Perm.ParamByName('ID').Value := TId.Value;
 Perm.Open;
end;

procedure TfCadTpUser.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfCadTpUser.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
  Perm.Close;
  Perm.sql.clear;
  Perm.sql.add(sql);
  Perm.ParamByName('ID').Value := TId.Value;
  Perm.Open;
end;

procedure TfCadTpUser.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.value            := InsereCodigo('Tpuser', 'ID' );
  Tperm_desconto.Value := 'N';
end;

procedure TfCadTpUser.PermAfterPost(DataSet: TDataSet);
begin
  Perm.ApplyUpdates;
end;

procedure TfCadTpUser.PermNewRecord(DataSet: TDataSet);
begin
  inherited;
  permID.value            := InsereCodigo('Permissao', 'ID' );

end;

procedure TfCadTpUser.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.qParametro.close;
  dm.qParametro.open;

  dm.qUser.close;
  dm.qUser.Open;

  fMenu.permissao(fMenu.MainMenu1.Items);
  sleep(100);
  fmenu.Refresh;

  inherited;

end;

procedure TfCadTpUser.acSairExecute(Sender: TObject);
begin
  fMenu.Permissao(fMenu.MainMenu1.Items);
  fMenu.Refresh;

  inherited;

end;

end.
