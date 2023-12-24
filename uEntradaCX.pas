unit uEntradaCX;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XiButton, Mask, DBCtrls,
  ActnList, System.Actions;

type
  TfEntradaCx = class(TForm)
    Image1: TImage;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    ActionList1: TActionList;
    salvar: TAction;
    sair: TAction;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    rdForma: TRadioGroup;
    lChe: TLabel;
    lDin: TLabel;
    edChe: TDBEdit;
    edDin: TDBEdit;
    rdTipo: TRadioGroup;
    procedure sairExecute(Sender: TObject);
    procedure salvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdFormaClick(Sender: TObject);
    procedure edCheExit(Sender: TObject);
    procedure edDinExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Imprimir;
  end;

var
  fEntradaCx: TfEntradaCx;

implementation

uses uDM, DB, uFuncao, uImp_finan, uSenhaCad;

{$R *.dfm}

procedure TfEntradaCx.sairExecute(Sender: TObject);
begin
CLOSE;
end;

procedure TfEntradaCx.salvarExecute(Sender: TObject);
var
  sql : String;
begin

 SelectNext(ActiveControl, True, True);
 if not (dm.CxValor.value > 0) then begin
      Application.MessageBox('Valor não informado!', 'Atenção');
      case rdForma.ItemIndex of
         0: edDin.SetFocus;
         1: edChe.SetFocus;
      end;
      Exit;
 end;

if Application.MessageBox('Confirma Lançamento? ','Confirmação',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idyes then
 begin

   Application.CreateForm(TfSenhaCad, fSenhaCad);
   fSenhaCad.ShowModal;
   fSenhaCad.Free;
   if RespCad = 'N' then
      Exit;

  DM.CxIdUsuario.Value  := IdUsuario;
  case rdTipo.ItemIndex of
    0: begin
         DM.CxTpMov.Value      := 'E';
         Dm.CxDescri.value     := 'ENTRADA ' + Dm.CxDescri.value;
         DM.CxValor.Value      := DM.CxValor.Value;
       end;
    1: begin
         DM.CxTpMov.Value      := 'S';
         Dm.CxDescri.value     := 'SAIDA ' + Dm.CxDescri.value;
         DM.CxValor.Value      := DM.CxValor.Value * (-1);
       end;
  end;
  DM.CxTotal.Value      := DM.CxValor.Value;
  case rdForma.ItemIndex of
    0 : begin
         DM.CxF_Cheque.Value   := 0;
         case rdTipo.ItemIndex of
           0: DM.CxF_Dinheiro.Value := DM.CxF_Dinheiro.Value;
           1: DM.CxF_Dinheiro.Value := DM.CxF_Dinheiro.Value * (-1);
         end;
         DM.CxFpgto.Value      := 'DINHEIRO';
        end;
    1 : begin
         DM.CxF_Dinheiro.Value := 0;
         case rdTipo.ItemIndex of
           0: DM.CxF_Cheque.Value := DM.CxF_Cheque.Value;
           1: DM.CxF_Cheque.Value := DM.CxF_Cheque.Value * (-1);
         end;
         DM.CxFpgto.Value      := 'CHEQUE';
        end;
  end;
  DM.CxValorFpgto.Value      := DM.CxValor.Value;
  DM.Cx.Post;

  if Application.MessageBox('Deseja imprimir?','Confirmação', mb_yesno) = idYes then
  begin
    try
      Imprimir;
    except
    //
    end;
  end;
  Close;

 end;

end;

procedure TfEntradaCx.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfEntradaCx.FormCreate(Sender: TObject);
begin

 DM.Cx.Open;
 DM.Cx.Insert;

 DM.CxData.Value         := now;
 DM.CxIdConta.Value      := 1;
 DM.CxIdMov.Value        := 0;
 DM.CxSegundaForma.Value := 'N';
 DM.CxIdUsuario.Value    := DM.qUserId.Value;

end;

procedure TfEntradaCx.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if DM.Cx.State in [dsinsert] then
  DM.Cx.Cancel;

 Action := caFree;
 fEntradaCx := nil;
end;

procedure TfEntradaCx.Imprimir;
 var Texto : String;
     X : TextFile;
begin

   Application.CreateForm(TfImp_finan, fImp_finan);

   fImp_finan.qE.Close;
   fImp_finan.qE.ParamByName('id').Value := DM.CxId.Value;
   fImp_finan.qE.Open;

   fImp_finan.rpEnt.Print;
   fImp_finan.Free;

end;

procedure TfEntradaCx.rdFormaClick(Sender: TObject);
begin
  DM.CxValor.Value      := 0;
  DM.CxTotal.Value      := 0;
  DM.CxF_Cheque.Value   := 0;
  DM.CxF_Dinheiro.Value := 0;

  case rdForma.ItemIndex of
    0 : begin
         lDin.Visible   := true;
         edDin.visible  := true;
         lChe.Visible   := false;
         edChe.visible  := false;
         edDin.SetFocus;
        end;
    1 : begin
         lDin.Visible   := false;
         edDin.visible  := false;
         lChe.Visible   := true;
         edChe.visible  := true;
         edChe.TabOrder := edDin.TabOrder;
         edChe.SetFocus;
        end;
  end;

end;

procedure TfEntradaCx.edCheExit(Sender: TObject);
begin
  if DM.CxF_Cheque.Value < 0 then
     DM.CxF_Cheque.Value := 0;

  DM.CxValor.Value := DM.CxF_Cheque.Value;
  DM.CxTotal.Value := DM.CxValor.Value;

end;

procedure TfEntradaCx.edDinExit(Sender: TObject);
begin
  if DM.CxF_Dinheiro.Value < 0 then
     DM.CxF_Dinheiro.Value := 0;

  DM.CxValor.Value := DM.CxF_Dinheiro.Value;
  DM.CxTotal.Value := DM.CxValor.Value;

end;

end.

