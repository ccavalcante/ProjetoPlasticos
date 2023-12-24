unit uDeposito;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, StdCtrls, jpeg, ExtCtrls, ActnList, DB,
  Mask, DBCtrls, Grids, DBGrids, System.Actions, ZSqlUpdate, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, IBX.IBCustomDataSet;

type
  TfDeposito = class(TForm)
    XiButton4: TXiButton;
    XiButton1: TXiButton;
    ActionList1: TActionList;
    Confirmar: TAction;
    Sair: TAction;
    Alternar: TAction;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    EdDesContaD: TEdit;
    gdDestino: TDBGrid;
    edCodContaD: TEdit;
    edHistorico: TEdit;
    edChe: TEdit;
    Image3: TImage;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure SairExecute(Sender: TObject);
    procedure ConfirmarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdCodContaDExit(Sender: TObject);
    procedure EdDesContaDChange(Sender: TObject);
    procedure EdDesContaDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdDestinoKeyPress(Sender: TObject; var Key: Char);
    procedure gdDestinoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Limpar;
  end;

var
  fDeposito: TfDeposito;
  conf_chq, cCodChe : String;
  cValChe : Real;

implementation

uses uDM, StrUtils, uFuncao;

{$R *.dfm}

procedure TfDeposito.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF (Key = #13) and not (ActiveControl is TDBGrid) THEN
 BEGIN
  SelectNext(ActiveControl, True, True);
  Key := #13;
 END;
end;

procedure TfDeposito.SairExecute(Sender: TObject);
begin
   conf_chq := 'N';
   Close;
end;

procedure TfDeposito.ConfirmarExecute(Sender: TObject);
begin
   if edCodContaD.Text = '' then
    begin
     Application.MessageBox('Conta de Destino Não Preenchida!', 'Atenção');
     edCodContaD.SetFocus;
     Exit;
    end;

 if Application.MessageBox('Confirma a Depósito de Cheque(s)?','Confirmação', MB_YESNO) = idyes then
  begin
    ExecSQL('update cheques set contaanterior = idconta Where id in ( '+ cCodChe + ') ' );
    sleep(100);

    ExecSQL('update cheques set x = ''F'', idconta = '    + edCodContaD.Text +
            ', dtoperacao = ' + QuotedStr(FormatDateTime('yyyy-mm-dd',date))+
            ', TIPO = ''S'',  idusu = '      + dm.qUserID.Text+   ', st = 0' +  //12/07/17 2º deposito voltar status para depositado
            ' Where id in ( '+ cCodChe + ') ' );
   sleep(100);

   dm.qSelect.Close;
   dm.qSelect.SQL.Clear;
   dm.qSelect.SQL.Add('select cheques.id codigo, cheques.st, case '+
        '  when (cheques.st = 0) AND ((CONTA.tipo = ''N'') or (cheques.IDCONTA = 0)) then '+
        '   ''ABERTO               '' '+
        '  when (cheques.st = 0) AND (CONTA.tipo = ''B'') then '+
        '   ''DEPOSITADO           '' '+
        '  WHEN cheques.st = 1 THEN '+
        '   ''COMPENSADO           '' '+
        '  when cheques.st = 2 THEN '+
        '   ''DEVOLVIDO            '' '+
        '  when cheques.ST = 3 THEN '+
        '   ''REPASSADO            '' '+
        '  when cheques.ST = 4 THEN '+
        '   ''DESCONTADO           '' '+
        '  when cheques.ST = 5 THEN '+
        '   ''DEVOLVIDO (SEM FUNDO)'' '+
        ' end DesSt '+
        ' from cheques  '+
        ' LEFT JOIN CONTA ON CONTA.id = cheques.idconta '+
        ' Where cheques.id in ( '+ cCodChe + ') ' );
   dm.qSelect.Open;
   dm.qSelect.FetchAll;
   while dm.qSelect.Eof = false do
   begin
     // grada log
     GravaLogCheque( dm.qUserID.AsInteger,  dm.qSelect.FieldByName('codigo').AsInteger,
                     0 ,  dm.qSelect.FieldByName('DesSt').Text, 'DEPOSITO' );
     dm.qSelect.Next;
   end;
   conf_chq := 'S';
   close;

  end;

end;

procedure TfDeposito.FormActivate(Sender: TObject);
begin
 Limpar;
 edChe.Text := FormatFloat('##0.00', cValChe);
end;

procedure TfDeposito.EdCodContaDExit(Sender: TObject);
begin
if (EdCodContaD.Text <> '') then
 begin
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('Select id, titular from conta where tipo = ''B'' and id = '+EdCodContaD.Text);
  DM.qSelect.Open;

  if not DM.qSelect.IsEmpty then
   begin
    EdDesContaD.Text := DM.qSelect.FieldByName('titular').AsString;
    gdDestino.Visible := False;

    edHistorico.SetFocus;
   end
  else
   EdDesContaD.SetFocus;
 end
else
 EdDesContaD.SetFocus;
end;

procedure TfDeposito.EdDesContaDChange(Sender: TObject);
begin
 if EdDesContaD.Text <> '' then
  begin
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('Select id, titular from conta where tipo = ''B'' and  titular like '+QuotedStr('%'+EdDesContaD.Text+'%'));
   DM.qSelect.Open;

   if DM.qSelect.IsEmpty then
    gdDestino.Visible := False
   else
    gdDestino.Visible := True;
  end;
end;

procedure TfDeposito.EdDesContaDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_down Then
  if gdDestino.Visible then
   gdDestino.SetFocus;
end;

procedure TfDeposito.gdDestinoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;

end;

procedure TfDeposito.gdDestinoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   edCodContaD.Text := DM.qSelect.fieldbyname('id').Text;

   EdCodContaDExit(Application);
  end;
end;

procedure TfDeposito.Limpar;
begin
 EdDesContaD.Clear;
 edCodContaD.Clear;
 edHistorico.Clear;
 edChe.Text := '0';
 edCodContaD.SetFocus;

end;

end.
