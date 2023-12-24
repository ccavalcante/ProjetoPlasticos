unit uCadSetor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, System.Actions,
  System.ImageList;

type
  TfCadSetor = class(TfCadPadrao)
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
    procedure acExcluirExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
  private
    { Private declarations }
    tipoOrdem : string;
  public
    { Public declarations }
  end;

var
  fCadSetor: TfCadSetor;
  campo  : string;

implementation

{$R *.dfm}

uses uDM;

procedure TfCadSetor.acExcluirExecute(Sender: TObject);
begin
  if T.recordCount = 0 then
    exit;
  inherited;

end;

procedure TfCadSetor.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadSetor.acSalvarExecute(Sender: TObject);
begin
  if trim(dbedit2.text) = '' then
  begin
    Application.MessageBox('Descrição não preenchida. Por favor, verifique!', 'Atenção');
    exit;
  end;

  inherited;

end;

procedure TfCadSetor.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCadSetor.FormCreate(Sender: TObject);
begin
  inherited;
  tipoOrdem := 'DESC';


end;

procedure TfCadSetor.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TId.AsInteger       := InsereCodigo('setor', 'id');
  TEX.Value           := 0;
end;

procedure TfCadSetor.DBGrid1TitleClick(Column: TColumn);
begin
 if tipoOrdem = 'DESC' then
    tipoOrdem := 'ASC'
   else
    tipoOrdem := 'DESC';

 campo := Column.FieldName;

 T.close;
 T.SQL.Clear;
 T.sql.Add(' select * from setor Where descricao like :pesq '+
           ' order by '+ campo  + ' ' + tipoOrdem);
 T.ParamByName('pesq').Text := '%%';
 T.open;

end;

end.
