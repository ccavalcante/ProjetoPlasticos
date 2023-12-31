unit uCadFormas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList;

type
  TfCadFormas = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    DBEdit3: TDBEdit;
    TId: TIntegerField;
    TDescricao: TWideStringField;
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
  fCadFormas: TfCadFormas;

implementation

uses uDM;

{$R *.dfm}

procedure TfCadFormas.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit3.SetFocus;
end;

procedure TfCadFormas.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit3.SetFocus;
end;

procedure TfCadFormas.FormCreate(Sender: TObject);
begin
  inherited;

  T.Open;    
end;

procedure TfCadFormas.acSalvarExecute(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);

  if  (Tdescricao.Text = '' ) then begin
     Application.MessageBox('Descri��o n�o preenchida.','Aten��o');
     DBEdit3.SetFocus;
     exit;
  end;

  inherited;

end;

procedure TfCadFormas.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TId.Value := InsereCodigo('formas', 'Id');


end;

procedure TfCadFormas.EdPesqChange(Sender: TObject);
begin
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  T.Open;
end;

procedure TfCadFormas.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
  T.Open;   
end;

end.
