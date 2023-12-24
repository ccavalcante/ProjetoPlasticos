unit uCadMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, Buttons, System.Actions,
  System.ImageList;

type
  TfCadMenu = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    TId: TIntegerField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    ToolButton3: TToolButton;
    btnMenu: TBitBtn;
    TDescricao: TWideStringField;
    TNome: TWideStringField;
    Ttipo: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadMenu: TfCadMenu;

implementation

uses uDM;

{$R *.dfm}

procedure TfCadMenu.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;
end;

procedure TfCadMenu.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;
end;

procedure TfCadMenu.btnMenuClick(Sender: TObject);
var
  dt : TDateTime;
begin
  dt := dm.qParametromenuatualizado.Value;
  dm.qParametro.Edit;
  dm.qParametromenuatualizado.Value := dt-1;
  dm.qParametro.Post;
  dm.qParametro.ApplyUpdates;
  Application.MessageBox(pchar('POR FAVOR FECHE  E  ABRA NOVAMENTE  O  SISTEMA,'+#13+#10+#13+#10+
                                'PARA QUE SEJA ATUALIZADO O CADASTRO DE MENUS.' ),'Atenção');
  btnMenu.Visible := false;
end;

procedure TfCadMenu.acSalvarExecute(Sender: TObject);
begin
  if t.State in [dsInsert] then
    btnmenuClick(Application);
  inherited;

end;

end.
