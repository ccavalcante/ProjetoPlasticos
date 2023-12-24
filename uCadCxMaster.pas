unit uCadCxMaster;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList;

type
  TfCadCxMaster = class(TfCadPadrao)
    Label2: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    Tid: TIntegerField;
    Tdescricao: TWideStringField;
    Tsigla: TWideStringField;
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
  fCadCxMaster: TfCadCxMaster;

implementation

uses uDM;

{$R *.dfm}

procedure TfCadCxMaster.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;
end;

procedure TfCadCxMaster.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;
end;

procedure TfCadCxMaster.FormCreate(Sender: TObject);
begin
  inherited;

  T.Open;    
end;

procedure TfCadCxMaster.acSalvarExecute(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);

  if  (Tdescricao.Text = '' ) then begin
     Application.MessageBox('Descrição não preenchida.','Atenção');
     DBEdit3.SetFocus;
     exit;
  end;

  if (Tsigla.Text = '' ) then begin
     Application.MessageBox('Sigla não preenchida.','Atenção');
     DBEdit2.SetFocus;
     exit;
  end;   

  inherited;

end;

procedure TfCadCxMaster.TNewRecord(DataSet: TDataSet);
begin
  inherited;

  DM.qIns.Close;
  DM.qIns.SQL.Clear;
  DM.qIns.SQL.Add('select max(id) as Cod from unidmedida ');
  DM.qIns.Open;

  TId.Value := DM.qIns.FieldByName('Cod').AsInteger + 1;


end;

procedure TfCadCxMaster.EdPesqChange(Sender: TObject);
begin
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';

  T.Open;
end;

procedure TfCadCxMaster.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
 
  T.Open;   
end;

end.
