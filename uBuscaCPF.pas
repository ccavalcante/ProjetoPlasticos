unit uBuscaCPF;

interface

uses
  PNGImage,
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ACBrBase, ACBrSocket, ACBrConsultaCPF,
  System.Actions, Vcl.ActnList, XiButton, Vcl.Buttons, Vcl.Mask, Vcl.OleCtrls,
  SHDocVw;

type
  TfBuscaCPF = class(TForm)
    Panel2: TPanel;
    Label3: TLabel;
    Label12: TLabel;
    EditRazaoSocial: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    EditSituacao: TEdit;
    EdtDigitoVerificador: TEdit;
    RzLabel1: TLabel;
    EdtCodCtrlControle: TEdit;
    RzLabel2: TLabel;
    EdtEmissao: TEdit;
    RzLabel3: TLabel;
    ACBrConsultaCPF1: TACBrConsultaCPF;
    Label2: TLabel;
    EdtIncricao: TEdit;
    Label4: TLabel;
    Panel4: TPanel;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    ActionList1: TActionList;
    acEsc: TAction;
    acNovo: TAction;
    acAtualiza: TAction;
    btnConsultar: TBitBtn;
    EditCNPJ: TMaskEdit;
    EditDtNasc: TMaskEdit;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acEscExecute(Sender: TObject);
    procedure acAtualizaExecute(Sender: TObject);
    procedure EditCNPJKeyPress(Sender: TObject; var Key: Char);
  private
  public
    cpf:String;
  end;

var
  fBuscaCPF: TfBuscaCPF;
  tipodados : String;
  dados : array [1..20,1..2] of string;

implementation

{$R *.dfm}

uses uFuncao;

procedure TfBuscaCPF.acAtualizaExecute(Sender: TObject);
begin
 tipodados := 'S';
 Close;
end;

procedure TfBuscaCPF.acEscExecute(Sender: TObject);
begin
 tipodados := '';
 Close;
end;

procedure TfBuscaCPF.btnConsultarClick(Sender: TObject);
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCPF1.Consulta(EditCNPJ.Text, EditDtNasc.Text, EditCaptcha.Text) then
    begin
      EditRazaoSocial.Text      := ACBrConsultaCPF1.Nome;
      EditSituacao.Text         := ACBrConsultaCPF1.Situacao;
      EdtEmissao.Text           := ACBrConsultaCPF1.Emissao;
      EdtCodCtrlControle.Text   := ACBrConsultaCPF1.CodCtrlControle;
      EdtDigitoVerificador.Text := ACBrConsultaCPF1.DigitoVerificador;
      EdtIncricao.Text          := ACBrConsultaCPF1.DataInscricao;
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
    exit;
  end;

  dados[1,1]  := 'Nome';
  dados[2,1]  := 'CPF';

  dados[1,2]  := ACBrConsultaCPF1.Nome;
  dados[2,2]  := retornaNumeros(ACBrConsultaCPF1.CPF);

  xibutton1.SetFocus;


end;

procedure TfBuscaCPF.EditCNPJKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfBuscaCPF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action     := caFree;
  fBuscaCPF  := nil;

end;

procedure TfBuscaCPF.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
  EditCaptcha.SetFocus;
end;

procedure TfBuscaCPF.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq, nFim: String;
begin
  Stream := TMemoryStream.Create;
  try
    ACBrConsultaCPF1.Captcha(Stream);
    ImgArq := ExtractFilePath(ParamStr(0))+PathDelim+'captch.png';
    Stream.SaveToFile( ImgArq );
    Image1.Picture.LoadFromFile( ImgArq );

    EditCaptcha.Clear;
    EditCaptcha.SetFocus;
  Except
    Application.MessageBox('Servidor Ocupado, tente novamente mais tarde!','Atenção');
  end;
  Stream.Free;

end;

procedure TfBuscaCPF.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;

end;

end.
