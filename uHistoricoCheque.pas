unit uHistoricoCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XiButton, Mask, DBCtrls,
  ActnList, Grids, DBGrids, DB, System.Actions, IBX.IBQuery,
  CheckDBGrid, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfHistoricoCheque = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ActionList1: TActionList;
    salvar: TAction;
    sair: TAction;
    XiButton2: TXiButton;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    lTotal: TLabel;
    lQtd: TLabel;
    ltCheques: TLabel;
    acVerCheque: TAction;
    Image3: TImage;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    CheckDBGrid1: TCheckDBGrid;
    Label2: TLabel;
    Bevel1: TBevel;
    dLog: TDataSource;
    Log: TZQuery;
    LogId: TIntegerField;
    LogIDUSU: TIntegerField;
    LogIDCHEQUE: TIntegerField;
    LogIDMOV: TIntegerField;
    LogSTATUS: TWideStringField;
    LogACAO: TWideStringField;
    Lognome: TWideStringField;
    LogHORA: TWideStringField;
    Logdata: TWideStringField;
    procedure sairExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    idchq : integer;
  end;

var
  fHistoricoCheque: TfHistoricoCheque;

implementation

uses uDM, uFuncao, Math, uControleCheque;

{$R *.dfm}

procedure TfHistoricoCheque.sairExecute(Sender: TObject);
begin
 close;

end;

procedure TfHistoricoCheque.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;

end;

procedure TfHistoricoCheque.FormActivate(Sender: TObject);
begin
  Log.Close;
  Log.ParamByName('che').AsInteger := idChq;
  Log.Open;

end;

procedure TfHistoricoCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #13 THEN
 BEGIN
  SelectNext(ActiveControl, True, True);
  Key := #0;
 END;
end;

end.
