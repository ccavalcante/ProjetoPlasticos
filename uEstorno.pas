unit uEstorno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, ActnList, Buttons,
  XiButton, Grids, DBGrids, System.Actions, Data.DB;

type
  TfEstorno = class(TForm)
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DBEdit6: TDBEdit;
    Label6: TLabel;
    ActionList1: TActionList;
    Estornar: TAction;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    sair: TAction;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    edCod: TDBEdit;
    EdNome: TEdit;
    gdFor: TDBGrid;
    procedure EstornarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeChange(Sender: TObject);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ValorPago : Real;

  end;

var
  fEstorno: TfEstorno;
  TIPO : STRING;

implementation

uses uDM, uFuncao, uCRecebidas, uSenhaCad;

{$R *.dfm}

procedure TfEstorno.edCodExit(Sender: TObject);
begin
if (EdCod.Text <> '') then
 begin
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add('Select conta.id, conta.titular Nome from conta where conta.id = '+EdCod.Text);
  DM.qPesq.Open;
  if not DM.qPesq.IsEmpty then
   begin
    EdNome.Text := DM.qPesq.FieldByName('Nome').AsString;
    gdfor.Visible := false;
    DBEDIT5.SetFocus;
   end
  else
   begin
     edCod.Clear;
     edNome.Clear;
     edNome.SetFocus;
   end;
 end
else
 begin
   edNome.Clear;
   edNome.SetFocus;
 end;

end;

procedure TfEstorno.edCodKeyPress(Sender: TObject; var Key: Char);
begin
    somente_numero_sem_virgula( key );
end;

procedure TfEstorno.EdNomeChange(Sender: TObject);
begin
 if (edNome.Text <> '') then
   begin
    gdFor.Left := edCod.Left;
    gdFor.Top  := edCod.Top + edCod.Height + 1;
    gdFor.Visible := True;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, titular nome '+
                        ' from conta where titular like '+QuotedStr('%'+edNome.Text+'%'));
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     gdfor.Visible := False;
    end
  else
   gdfor.Visible := False;

end;

procedure TfEstorno.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF gdfor.Visible THEN
  gdfor.SetFocus;

end;

procedure TfEstorno.EstornarExecute(Sender: TObject);
begin
if Application.MessageBox('Confirma Estorno?','Confirmação',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idyes then
 BEGIN
  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then begin
     DM.Cx.Cancel;
     DM.Cx.ApplyUpdates;
     close;
     Exit;
  end;

  if tipo = 'Z' then
  begin
    DM.qComiPagar.First;
    while DM.qComiPagar.Eof = false do
     begin
      if DM.qComiPagar.FieldByName('X').AsString = 'T'  then
       begin
        ExecSQL('update comi_pagar set BAIXA = '+QuotedStr('N')+',  DTPAGTO = null '+
         ', VALPAGO = 0 '+
         ' where id = '+ IntToStr(DM.qComiPagarID.Value));
       end;
      DM.qComiPagar.Next;
    end;
    DM.Cx.Post;
  end
  else
  if tipo = 'P' then
  begin
     DM.qCPagar.First;
     while DM.qCPagar.Eof = false do
     begin
      if DM.qCPagar.FieldByName('X').AsString = 'T'  then
       begin
        ExecSQL('update cpagar set BAIXA = '+QuotedStr('N')+',  DTPAGTO = null '+
         ', VALPAGO = 0 '+
         ' where id = '+ IntToStr(DM.qCPagarID.Value));
       end;
      DM.qCPagar.Next;
    end;
    DM.Cx.Post;
  end
  else
  begin
     fCRecebidas.T.First;
     while fCRecebidas.T.Eof = false do
     begin
       if fCRecebidas.T.FieldByName('X').AsString = 'T'  then
       begin
        {ExecSQL('update creceber set BAIXA = '+QuotedStr('N')+',  DTPAGTO = null '+
         ', VALPAGO = 0 '+
         ' where id = '+ IntToStr(fCRecebidas.TID.Value));}

        ExecSQL('update creceber set BAIXA = '+QuotedStr('N')+',  DTPAGTO = null '+
         ', VALPAGO = 0 '+
         ' where idbaixa = '+ IntToStr(fCRecebidas.TidBaixa.Value));

        if trim(fCRecebidas.T.FieldByName('doc_bx_parcial').Text) <> '' then
        begin
           Execsql('update creceber set ex = 1 where documento like ' + quotedstr(trim(fCRecebidas.T.FieldByName('doc_bx_parcial').Text)) );
        end;

        //Marca o primeiro movcaixa como estorno = 'S' Nilton 11/10/2021
        if trim(fCRecebidas.TidBaixa.text) <> '' then
        begin
          execSQL('update movcaixa set estorno = ''S'' where id = ' + fCRecebidas.TidBaixa.text);
        end;

       end;
      fCRecebidas.T.Next;
    end;
    DM.Cx.Post;
  end;
 end
 else
   DM.Cx.Cancel;

DM.Cx.ApplyUpdates;
close;

end;

procedure TfEstorno.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) and not (ActiveControl is TDBGrid) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfEstorno.gdForKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Key := #0;
  if not DM.qPesq.IsEmpty then
   begin
    edCod.Text:= DM.qPesq.FIELDBYNAME('ID').Text;
    edCodExit(Application);
    gdfor.Visible := False;
   end;
 end;

end;

procedure TfEstorno.FormActivate(Sender: TObject);
begin

 ValorPago := DM.CxValor.Value;
 edCodExit(Application);


end;

procedure TfEstorno.sairExecute(Sender: TObject);
begin
 close;
end;

end.
