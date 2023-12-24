unit uCadComercial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, System.Actions,
  System.ImageList;

type
  TfCadComercial = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TId: TIntegerField;
    TDescricao: TWideStringField;
    TPorcentagem: TFloatField;
    Tsincronizado: TWideStringField;
    Tidweb: TIntegerField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Tex: TIntegerField;
    Ttipo: TWideStringField;
    DBRadioGroup1: TDBRadioGroup;
    Tcom_padrao: TWideStringField;
    ckCom_Padrao: TDBCheckBox;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TNewRecord(DataSet: TDataSet);
    procedure acSalvarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
    tipoOrdem : string;
  public
    { Public declarations }
  end;

var
  fCadComercial: TfCadComercial;
  campo  : string;

implementation

{$R *.dfm}

uses uDM;

procedure TfCadComercial.acExcluirExecute(Sender: TObject);
begin

  if Application.MessageBox('Deseja Realmente Excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
      Exit;

  T.edit;
  TEX.AsInteger := 1;
  Tsincronizado.text := 'N';
  T.post;
  T.ApplyUpdates;
  sleep(200);

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;


  T.Close;
  T.ParamByName('pesq').Text := '%'+trim(edpesq.text) +'%';
  T.Open;

end;

procedure TfCadComercial.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadComercial.acSalvarExecute(Sender: TObject);
var
  idd : string;
begin
  Tsincronizado.value := 'N';
  //idd := Tid.Text;
  inherited;
  idd := Tid.Text;
  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;


  T.Close;
  T.ParamByName('pesq').Text := '%'+trim(edpesq.text) +'%';
  T.Open;
  //Add por Nilton 28/09/2020
  T.Locate('id', idd, []);
  if Tcom_padrao.Value = 'S' then
     Execsql('update comercial set com_padrao = ''N'' where id <> ' + idd );

  if BuscarSQL('select id from comercial where com_padrao = ''S'' ') = 0 then
       Execsql('update comercial set com_padrao = ''S'' where id = 1 ' );

  T.Close;
  T.Open;


end;

procedure TfCadComercial.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadComercial.FormCreate(Sender: TObject);
begin
  inherited;
  tipoOrdem := 'DESC';

  if dm.qParametrousa_com_padrao.Text = 'S' then
     ckCom_Padrao.visible := True
  else
     ckCom_Padrao.Visible := false;



end;

procedure TfCadComercial.TNewRecord(DataSet: TDataSet);
begin
   TPorcentagem.value := 0;
   Tex.value          := 0;
end;

procedure TfCadComercial.DBGrid1TitleClick(Column: TColumn);
begin
 if tipoOrdem = 'DESC' then
    tipoOrdem := 'ASC'
   else
    tipoOrdem := 'DESC';

 campo := Column.FieldName;

 T.close;
 T.SQL.Clear;
 T.sql.Add(' select * from comercial Where descricao like :pesq '+
           ' order by '+ campo  + ' ' + tipoOrdem);
 T.ParamByName('pesq').Text := '%'+trim(edpesq.text) +'%';
 T.open;

end;

end.
