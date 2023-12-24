unit uCadCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, System.Actions,
  System.ImageList;

type
  TfCadCusto = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    TID: TIntegerField;
    TDESCRICAO: TWideStringField;
    TTipo: TWideStringField;
    DBRadioGroup1: TDBRadioGroup;
    procedure TNewRecord(DataSet: TDataSet);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadCusto: TfCadCusto;

implementation

uses uDM;

{$R *.dfm}

procedure TfCadCusto.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.Value   := InsereCodigo('centrocusto','ID');
  Ttipo.Value := 'D';
end;

procedure TfCadCusto.acExcluirExecute(Sender: TObject);
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

procedure TfCadCusto.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

end;

procedure TfCadCusto.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

end;

end.
