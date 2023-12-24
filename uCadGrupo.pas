unit uCadGrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, System.Actions,
  System.ImageList;

type
  TfCadGrupo = class(TfCadPadrao)
    TId: TIntegerField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TIDWEB: TIntegerField;
    TEX: TIntegerField;
    TSINCRONIZADO: TWideStringField;
    TDESCRICAO: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TNewRecord(DataSet: TDataSet);
    procedure acSalvarExecute(Sender: TObject);
  private
    { Private declarations }
    tipoOrdem : string;
  public
    { Public declarations }
  end;

var
  fCadGrupo: TfCadGrupo;
  campo  : string;

implementation

{$R *.dfm}

uses uDM;

procedure TfCadGrupo.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadGrupo.acSalvarExecute(Sender: TObject);
begin
  TSincronizado.AsString := 'N';
  inherited;

  // atualiza web
  if dm.qParametromod_pedidosWeb.Text = 'S' then
  begin
    try
      acSair.Enabled := False;
      atualizaWeb;
    finally
      acSair.Enabled := True;
    end;
  end;

end;

procedure TfCadGrupo.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadGrupo.FormCreate(Sender: TObject);
begin
  inherited;
  tipoOrdem := 'DESC';


end;

procedure TfCadGrupo.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TId.AsInteger       := InsereCodigo('grupo', 'id');
  TIDWEB.AsInteger    := 0;
  TSINCRONIZADO.Value := 'N';
  TEX.Value           := 0;
end;

procedure TfCadGrupo.DBGrid1TitleClick(Column: TColumn);
begin
 if tipoOrdem = 'DESC' then
    tipoOrdem := 'ASC'
   else
    tipoOrdem := 'DESC';

 campo := Column.FieldName;

 T.close;
 T.SQL.Clear;
 T.sql.Add(' select * from grupo Where descricao like :pesq '+
           ' order by '+ campo  + ' ' + tipoOrdem);
 T.ParamByName('pesq').Text := '%%';
 T.open;

end;

end.
