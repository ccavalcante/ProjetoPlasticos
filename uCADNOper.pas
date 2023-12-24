unit uCADNOper;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao,  DB,  ActnList, ImgList,
  Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls,
  Mask, CheckDBGrid, System.Actions, System.ImageList, IBX.IBDatabase,
  IBX.IBCustomDataSet, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfCADNOper = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    TID: TIntegerField;
    TCFOP: TWideStringField;
    TDESCRICAO: TWideStringField;
    TOBS: TWideMemoField;
    TOBS_REDU: TWideMemoField;
    TIDUSU: TIntegerField;
    TDADOSADD: TWideStringField;
    Tnaofinanceiro: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    procedure acSalvarExecute(Sender: TObject);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure TNewRecord(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TBeforeOpen(DataSet: TDataSet);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
    ordem:string;
  public
    { Public declarations }
  end;

var
  fCADNOper: TfCADNOper;

implementation

uses uFuncao, uDM;

{$R *.dfm}

procedure TfCADNOper.acSalvarExecute(Sender: TObject);
begin
if tDESCRICAO.Value = '' then
 begin
  Application.MessageBox('Descrição Não Preenchida!','Atenção');
  DBEdit2.SetFocus;
 end
else
  inherited;

end;

procedure TfCADNOper.acExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
     Exit;

  T.delete;
  T.ApplyUpdates;
  sleep(200);

  T.Close;
  T.Open;
  sleep(200);


end;

procedure TfCADNOper.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADNOper.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADNOper.EdPesqChange(Sender: TObject);
begin
  T.Close;
  T.SQL.Clear;
  T.SQL.Add('select * from NOper WHERE  '+
                ' (DESCRICAO LIKE  :pesq )'+
                ' order by DESCRICAO ');
  T.ParamByName('pesq').asString := '%'+trim(edPesq.Text)+'%';
  T.Open;
end;

procedure TfCADNOper.TBeforeOpen(DataSet: TDataSet);
begin
  T.ParamByName('pesq').Text := '%'+trim(EdPesq.Text)+'%';
  inherited;

end;

procedure TfCADNOper.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.Value := InsereCodigo('NOPER', 'id');
  Tnaofinanceiro.AsString := 'S';
end;

procedure TfCADNOper.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 somente_numero(Key);
end;

procedure TfCADNOper.DBGrid1TitleClick(Column: TColumn);
var
  sql, campo : string;
  tb : integer;

begin

 if ordem = 'ASC' then
    ordem := 'DESC'
  else
    ordem := 'ASC';

 sql := T.SQL.Text;

 tb := pos('order',sql) + 8;
 campo := copy( sql, 1, tb ) + ' ' + Column.FieldName + ' ' + ordem ;

 T.Close;
 T.SQL.Clear;
 T.SQL.Add( campo );
 T.ParamByName('pesq').Text := '%'+trim(EdPesq.Text)+'%';
 T.Open;

end;

end.
