unit uEscolheConta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, CheckLst,
  ComCtrls, DBCtrls, System.Actions;

type
  TfEscolheConta = class(TForm)
    Image1: TImage;
    ActionList1: TActionList;
    acSair: TAction;
    Label3: TLabel;
    ComboBox1: TComboBox;
    procedure acSairExecute(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ComboBox1CloseUp(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vKey: Char;
  end;

var
  fEscolheConta: TfEscolheConta;
  nConta : String;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfEscolheConta.acSairExecute(Sender: TObject);
begin
 nConta := '';
 Close;
end;

procedure TfEscolheConta.ComboBox1KeyPress(Sender: TObject; var Key: Char);
begin


 if key = #13 then
   begin
    key := #0;
    nConta := copy(combobox1.Text,1,2);
    close;
   end;

         {

Seta para Esquerda: 37
    Seta para Cima: 38
 Seta para Direita: 39
   Seta para Baixo: 40
            Delete: 46}

end;

procedure TfEscolheConta.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #38) or (Key = #40) then
   vKey := Key
  else
   vKey := #0;

end;

procedure TfEscolheConta.ComboBox1CloseUp(Sender: TObject);
begin
  nConta := copy(combobox1.Text,1,2);
  close;
  {if vKey = #0 then
     keybd_event(VK_return, 0, 0, 0); }
end;

procedure TfEscolheConta.FormCreate(Sender: TObject);
begin
      dm.qPesq.close;
      dm.qPesq.sql.Clear;
      dm.qPesq.sql.add(' Select coalesce(conta.titular, '''') titular, conta.* from conta where id > 1 order by id ' );
      dm.qPesq.open;
      dm.qPesq.first;
      combobox1.Items.Clear;
      while dm.qPesq.Eof = false do begin
        combobox1.Items.Add(formatfloat('00', dm.qPesq.fieldbyname('id').value) +
                            ' - ' + dm.qPesq.fields[0].value );
        dm.qPesq.next;
      end;
      combobox1.Update;
      combobox1.Refresh;
      combobox1.ItemIndex := 0;

end;

end.
