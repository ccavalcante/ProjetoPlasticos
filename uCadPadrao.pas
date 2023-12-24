unit uCadPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DBCtrls, ComCtrls, ToolWin, ImgList,
  jpeg, ActnList, DB, Mask, Grids, DBGrids, ZSqlUpdate, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, System.Actions, System.ImageList;

type
  TfCadPadrao = class(TForm)
    ToolBar1: TToolBar;
    BtNovo: TToolButton;
    BtEditar: TToolButton;
    BtSalvar: TToolButton;
    BtCancelar: TToolButton;
    BtPrimeiro: TToolButton;
    BtAnterior: TToolButton;
    BtProximo: TToolButton;
    BtUltimo: TToolButton;
    BtImprimir: TToolButton;
    BtSair: TToolButton;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    EdPesq: TEdit;
    ImageList1: TImageList;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    D: TDataSource;
    ActionList1: TActionList;
    acInserir: TAction;
    acEditar: TAction;
    acExcluir: TAction;
    acCancelar: TAction;
    acSalvar: TAction;
    acSair: TAction;
    acImprimir: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    T: TZQuery;
    up: TZUpdateSQL;
    btnExcluir: TToolButton;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acImprimirExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BtPrimeiroClick(Sender: TObject);
    procedure BtAnteriorClick(Sender: TObject);
    procedure BtProximoClick(Sender: TObject);
    procedure BtUltimoClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EdPesqChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
    procedure acExcluirExecute(Sender: TObject);
  private
     ordem : string;
    { Private declarations }
  public
    { Public declarations }
    procedure StatusTela(TF:Boolean); virtual;
  end;

var
  fCadPadrao: TfCadPadrao;

implementation

uses uDmImg, uDM;

{$R *.dfm}


procedure TfCadPadrao.acInserirExecute(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
  T.Append;
  StatusTela(False);
end;

procedure TfCadPadrao.acEditarExecute(Sender: TObject);
begin
 sleep(10);

 PageControl1.TabIndex := 1;
 T.Edit;
 StatusTela(False);
end;

procedure TfCadPadrao.acExcluirExecute(Sender: TObject);
var
 x: boolean;

begin
   try
     x := (T.FieldByName('EX').AsInteger >= 0);
   except
     Exit;
   end;

   if Application.MessageBox('Deseja Realmente Excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
      Exit;

   if X then
   begin
     T.edit;
     T.FieldByName('EX').AsInteger := 1;
     T.post;
     T.ApplyUpdates;
     sleep(200);

     T.Close;
     T.Open;
     sleep(200);
   end;



end;

procedure TfCadPadrao.acCancelarExecute(Sender: TObject);
begin
T.Cancel;
StatusTela(True);
PageControl1.TabIndex := 0;
end;

procedure TfCadPadrao.acSalvarExecute(Sender: TObject);
 VAR I :Integer;
begin
  T.Post;
  I:= T.RecNo;

  T.ApplyUpdates;

  T.Close;
  T.Open;

  T.RecNo := I;

  StatusTela(True);
  PageControl1.TabIndex := 0;
end;

procedure TfCadPadrao.acSairExecute(Sender: TObject);
begin
Close;
end;

procedure TfCadPadrao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 T.Close;

 Action := caFree;
 fCadPadrao := nil;
end;

procedure TfCadPadrao.StatusTela(TF: Boolean);
var i : Integer;
begin

 if TF then
  begin
   acInserir.Enabled := true;
   acEditar.Enabled := true;
   acExcluir.Enabled:= true;
   acSalvar.Enabled:= false;
   BtPrimeiro.Enabled := True;
   BtAnterior.Enabled := True;
   BtProximo.Enabled := True;
   BtUltimo.Enabled := True;
   DBGrid1.Enabled := True;
  end
 else
  begin
   acInserir.Enabled := False;
   acEditar.Enabled := False;
   acExcluir.Enabled:= False;
   acSalvar.Enabled:= True;
   BtPrimeiro.Enabled := False;
   BtAnterior.Enabled := False;
   BtProximo.Enabled := False;
   BtUltimo.Enabled := False;
   DBGrid1.Enabled := False;
  end;


// $00CEFDFC amarelo
// $00FBF7CE azul

 for i := 0 to ComponentCount -1 do
  begin

   if Components[i] is TDBEdit then
     TDBEdit(Components[i]).ReadOnly := TF;

   if Components[i] is TMaskEdit then
     TMaskEdit(Components[i]).ReadOnly := TF;

   if Components[i] is TDBComboBox then
     TDBComboBox(Components[i]).Enabled := not TF;

   if Components[i] is TDBLookupComboBox then
     TDBLookupComboBox(Components[i]).Enabled := not TF;

   if Components[i] is TDBMemo then
     TDBMemo(Components[i]).ReadOnly := TF;

   if Components[i] is TComboBox then
     TComboBox(Components[i]).Enabled := not TF;

   if Components[i] is TDBRadioGroup then
     TDBRadioGroup(Components[i]).Enabled := not TF;

    if Components[i] is TDBCheckBox then
     TDBCheckBox(Components[i]).ReadOnly := TF;

   if ((TF) and (Components[i] is TMaskEdit)) then
    TMaskEdit(Components[i]).Color := StringToColor('$00CEFDFC');
   if (Not(TF) and (Components[i] is TMaskEdit)) then
    TMaskEdit(Components[i]).Color := clWhite;

   if ((TF) and (Components[i] is TDBEdit)) then
    TDBEdit(Components[i]).Color := StringToColor('$00CEFDFC');
   if (Not(TF) and (Components[i] is TDBEdit)) then
    TDBEdit(Components[i]).Color := clWhite;

   if ((TF) and (Components[i] is TDBComboBox)) then
    TDBComboBox(Components[i]).Color := StringToColor('$00CEFDFC');
   if (Not(TF) and (Components[i] is TDBComboBox)) then
    TDBComboBox(Components[i]).Color := clWhite;

   if ((TF) and (Components[i] is TDBMemo)) then
    TDBMemo(Components[i]).Color := StringToColor('$00CEFDFC');
   if (Not(TF) and (Components[i] is TDBMemo)) then
    TDBMemo(Components[i]).Color := clWhite;

   if ((TF) and (Components[i] is TComboBox)) then
    TComboBox(Components[i]).Color := StringToColor('$00CEFDFC');
   if (Not(TF) and (Components[i] is TComboBox)) then
    TComboBox(Components[i]).Color := clWhite;

   if ((TF) and (Components[i] is TDBLookupComboBox)) then
    TDBLookupComboBox(Components[i]).Color := StringToColor('$00CEFDFC');
   if (Not(TF) and (Components[i] is TDBLookupComboBox)) then
    TDBLookupComboBox(Components[i]).Color := clWhite;



  end;

end;

procedure TfCadPadrao.acImprimirExecute(Sender: TObject);
begin
//
end;

procedure TfCadPadrao.FormCreate(Sender: TObject);
begin
 ordem := 'ASC';

 T.Close;
 T.ParamByName('pesq').Text := '%%';
 T.Open;

 
 StatusTela(True);
 PageControl1.TabIndex := 0;

end;

procedure TfCadPadrao.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and not (ActiveControl is TDBMemo) and not (ActiveControl is TDBGrid) THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;
end;

procedure TfCadPadrao.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin

 // ****pinta a fonte
 Control.Canvas.Font.Color := clBlack;

 //**** pinta a paleta / aba
 Control.Canvas.brush.Color := clBtnFace ;
 // PageControl1.Canvas.Rectangle(Rect);
 Control.Canvas.TextOut(Rect.left+5,Rect.top+3,PageControl1.Pages[tabindex].Caption);

 // **** pinta a parte interna (tabsheet)
 PageControl1.Pages[TabIndex].brush.Color := clBtnFace;
 PageControl1.Pages[TabIndex].Repaint;

end;

procedure TfCadPadrao.BtPrimeiroClick(Sender: TObject);
begin
T.First;
end;

procedure TfCadPadrao.BtAnteriorClick(Sender: TObject);
begin
T.Prior;
end;

procedure TfCadPadrao.BtProximoClick(Sender: TObject);
begin
T.Next;
end;

procedure TfCadPadrao.BtUltimoClick(Sender: TObject);
begin
T.Last;
end;

procedure TfCadPadrao.DBGrid1DblClick(Sender: TObject);
begin
   sleep(10);
   acEditar.Execute;
end;

procedure TfCadPadrao.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   sleep(10);
   acEditar.Execute;
  end;
end;

procedure TfCadPadrao.EdPesqChange(Sender: TObject);
begin
 T.Close;
 T.ParamByName('pesq').Text := '%'+EdPesq.Text+'%';
 T.Open;
end;

procedure TfCadPadrao.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfCadPadrao.DBGrid1TitleClick(Column: TColumn);
Begin
 sleep(10);
 if ordem = 'ASC' then
    ordem := 'DESC'
  else
    ordem := 'ASC';

 T.IndexFieldNames := Column.FieldName+' '+ordem;
 T.First;

                   {
 sql := T.SQL.Text;

 tb := pos('order',sql) + 8;
 campo := copy( sql, 1, tb ) + ' ' + Column.FieldName + ' ' + ordem ;

 T.Close;
 T.SQL.Clear;
 T.SQL.Add( campo );
 T.ParamByName('pesq').Text := '%'+EdPesq.Text+'%';
 T.Open; }


end;

end.
