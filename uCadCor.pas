unit uCadCor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, System.Actions,
  System.ImageList;

type
  TfCadCor = class(TfCadPadrao)
    TId: TIntegerField;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TEX: TIntegerField;
    TDESCRICAO: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    tipoOrdem : string;
  public
    { Public declarations }
  end;

var
  fCadCor: TfCadCor;
  campo  : string;

implementation

{$R *.dfm}

uses uDM;

procedure TfCadCor.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadCor.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadCor.FormCreate(Sender: TObject);
begin
  inherited;
  tipoOrdem := 'DESC';


end;

procedure TfCadCor.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TId.AsInteger       := InsereCodigo('cor', 'id');
  TEX.Value           := 0;
end;

procedure TfCadCor.DBGrid1TitleClick(Column: TColumn);
begin
 if tipoOrdem = 'DESC' then
    tipoOrdem := 'ASC'
   else
    tipoOrdem := 'DESC';

 campo := Column.FieldName;

 T.close;
 T.SQL.Clear;
 T.sql.Add(' select * from cor Where descricao like :pesq '+
           ' order by '+ campo  + ' ' + tipoOrdem);
 T.ParamByName('pesq').Text := '%%';
 T.open;

end;

end.
