unit uBuscaCNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, StdCtrls, Buttons,
  ACBrBase, ACBrSocket, ACBrConsultaCNPJ, Mask, System.Actions, Vcl.ActnList,
  XiButton, Vcl.OleCtrls, SHDocVw, ACBrDFe, ACBrNFe, blcksock;

type
  TfBuscaCNPJ = class(TForm)
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    EditTipo: TEdit;
    EditRazaoSocial: TEdit;
    EditAbertura: TEdit;
    EditEndereco: TEdit;
    EditNumero: TEdit;
    EditComplemento: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    EditUF: TEdit;
    EditCEP: TEdit;
    EditSituacao: TEdit;
    Panel1: TPanel;
    Label1: TLabel;
    ButBuscar: TBitBtn;
    EditCaptcha: TEdit;
    Label14: TLabel;
    Timer1: TTimer;
    EditFantasia: TEdit;
    Label13: TLabel;
    ACBrConsultaCNPJ1: TACBrConsultaCNPJ;
    EditCNPJ: TMaskEdit;
    Panel3: TPanel;
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
    ckRemoverEspacosDuplos: TCheckBox;
    ListCNAE2: TListBox;
    Label15: TLabel;
    EditCNAE1: TEdit;
    Label16: TLabel;
    EditEmail: TEdit;
    Label17: TLabel;
    EditTelefone: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    EditPorte: TEdit;
    Panel4: TPanel;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    ActionList1: TActionList;
    acEsc: TAction;
    acNovo: TAction;
    acAtualiza: TAction;
    EditInscricao: TEdit;
    Label20: TLabel;
    ACBrNFe1: TACBrNFe;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    procedure ButBuscarClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EditCaptchaKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acEscExecute(Sender: TObject);
    procedure acAtualizaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fBuscaCNPJ: TfBuscaCNPJ;
  tipodadosj : String;
  dadosj : array [1..20,1..2] of string;
  vTipoCli : String;
implementation

uses
  JPEG
{$IFDEF SUPPORT_PNG}
  , pngimage
{$ENDIF}
  , uFuncao, uDM;

{$R *.dfm}

procedure TfBuscaCNPJ.acAtualizaExecute(Sender: TObject);
begin
   tipodadosj := 'S';
   close;
end;

procedure TfBuscaCNPJ.acEscExecute(Sender: TObject);
var
  i : integer;
begin
   for i := 1 to 20 do
   begin
     dadosj[I,1] := '';
     dadosj[I,2] := '';
   end;
   tipodadosj := '';
   close;
end;

procedure TfBuscaCNPJ.ButBuscarClick(Sender: TObject);
var
  I: Integer;
begin
  if EditCaptcha.Text <> '' then
  begin
    if ACBrConsultaCNPJ1.Consulta(EditCNPJ.Text, EditCaptcha.Text, ckRemoverEspacosDuplos.Checked ) then
    begin
      EditTipo.Text        := ACBrConsultaCNPJ1.EmpresaTipo;
      EditPorte.Text       := ACBrConsultaCNPJ1.Porte;
      EditAbertura.Text    := DateToStr( ACBrConsultaCNPJ1.Abertura );
      EditSituacao.Text    := ACBrConsultaCNPJ1.Situacao;
      EditCNAE1.Text       := ACBrConsultaCNPJ1.CNAE1;

      EditRazaoSocial.Text := ACBrConsultaCNPJ1.RazaoSocial;
      EditFantasia.Text    := ACBrConsultaCNPJ1.Fantasia;
      EditEndereco.Text    := ACBrConsultaCNPJ1.Endereco;
      EditNumero.Text      := ACBrConsultaCNPJ1.Numero;
      EditComplemento.Text := ACBrConsultaCNPJ1.Complemento;
      EditBairro.Text      := ACBrConsultaCNPJ1.Bairro;
      EditCidade.Text      := ACBrConsultaCNPJ1.Cidade;
      EditUF.Text          := ACBrConsultaCNPJ1.UF;
      EditCEP.Text         := ACBrConsultaCNPJ1.CEP;
      EditEmail.Text       := ACBrConsultaCNPJ1.EndEletronico;
      EditTelefone.Text    := ACBrConsultaCNPJ1.Telefone;

      ListCNAE2.Clear;
      for I := 0 to ACBrConsultaCNPJ1.CNAE2.Count - 1 do
        ListCNAE2.Items.Add(ACBrConsultaCNPJ1.CNAE2[I]);
    end;
  end
  else
  begin
    ShowMessage('É necessário digitar o captcha.');
    EditCaptcha.SetFocus;
    exit;
  end;

  dm.qEmpresa.first;
  while dm.qEmpresa.eof = false do
  begin
    if dm.qEmpresaNFE_NUMSERIE.asString <> '' then
      break;
    dm.qEmpresa.next;
  end;

  try
    ACBrNFe1.Configuracoes.WebServices.UF := dm.qEmpresaUF.asString;
    ACBrNFe1.SSL.SSLType :=  LT_TLSv1_2;
    ACBrNFe1.Configuracoes.Certificados.NumeroSerie := dm.qEmpresaNFE_NUMSERIE.asString;
    //------------- cliente
    ACBrNFe1.WebServices.ConsultaCadastro.CNPJ := EditCNPJ.Text;
    ACBrNFe1.WebServices.ConsultaCadastro.UF := ACBrConsultaCNPJ1.UF;
    ACBrNFe1.WebServices.ConsultaCadastro.Executar;

    EditInscricao.text := ACBrNFe1.WebServices.ConsultaCadastro.RetConsCad.InfCad.Items[0].IE;
  except
    application.messagebox('Erro na pesquisa da inscrição estadual.', 'Atenção');
  end;


  if vTipoCli = 'F' then //Fornecedor
  begin
    dadosj[1,1]  := 'nome';
    dadosj[2,1]  := 'fantasia';
    dadosj[3,1]  := 'endereco';
    dadosj[4,1]  := 'num';
    dadosj[5,1]  := 'bairro';
    dadosj[6,1]  := 'cidade';
    dadosj[7,1]  := 'uf';
    dadosj[8,1]  := 'cep';
    dadosj[9,1] := 'email';
    dadosj[10,1] := 'tel1';
    dadosj[11,1] := 'cnpj';
    dadosj[12,1] := 'idcidade';
    dadosj[13,1] := 'ie';


    dadosj[1,2]  := ACBrConsultaCNPJ1.RazaoSocial;
    dadosj[2,2]  := ACBrConsultaCNPJ1.Fantasia;
    dadosj[3,2]  := ACBrConsultaCNPJ1.Endereco;
    dadosj[4,2]  := ACBrConsultaCNPJ1.Numero;
    dadosj[5,2]  := ACBrConsultaCNPJ1.Bairro;
    dadosj[6,2]  := ACBrConsultaCNPJ1.Cidade;
    dadosj[7,2]  := ACBrConsultaCNPJ1.UF;
    dadosj[8,2]  := retornaNumeros(ACBrConsultaCNPJ1.CEP);
    dadosj[9,2] := ACBrConsultaCNPJ1.EndEletronico;
    dadosj[10,2] := retornaNumeros(ACBrConsultaCNPJ1.Telefone);
    dadosj[11,2] := retornaNumeros(ACBrConsultaCNPJ1.CNPJ);
    dadosj[12,2] := acbrconsultacnpj1.IBGE_Municipio;
    dadosj[13,2] := EditInscricao.text;
  end
  else
  begin
    dadosj[1,1]  := 'razao';  //no fornecedor é nome
    dadosj[2,1]  := 'nome';   //no fornecedor é fantasia
    dadosj[3,1]  := 'endereco';
    dadosj[4,1]  := 'num';
    dadosj[5,1]  := 'comple'; //não tem no fornecedor
    dadosj[6,1]  := 'bairro';
    dadosj[7,1]  := 'cidade';
    dadosj[8,1]  := 'uf';
    dadosj[9,1]  := 'cep';
    dadosj[10,1] := 'email';
    dadosj[11,1] := 'tel1';
    dadosj[12,1] := 'cpf';  //no fornecedor é cnpj
    dadosj[13,1] := 'idcidade';
    dadosj[14,1] := 'rg';


    dadosj[1,2]  := ACBrConsultaCNPJ1.RazaoSocial;
    dadosj[2,2]  := ACBrConsultaCNPJ1.Fantasia;
    dadosj[3,2]  := ACBrConsultaCNPJ1.Endereco;
    dadosj[4,2]  := ACBrConsultaCNPJ1.Numero;
    dadosj[5,2]  := ACBrConsultaCNPJ1.Complemento;
    dadosj[6,2]  := ACBrConsultaCNPJ1.Bairro;
    dadosj[7,2]  := ACBrConsultaCNPJ1.Cidade;
    dadosj[8,2]  := ACBrConsultaCNPJ1.UF;
    dadosj[9,2]  := retornaNumeros(ACBrConsultaCNPJ1.CEP);
    dadosj[10,2] := ACBrConsultaCNPJ1.EndEletronico;
    dadosj[11,2] := retornaNumeros(ACBrConsultaCNPJ1.Telefone);
    dadosj[12,2] := retornaNumeros(ACBrConsultaCNPJ1.CNPJ);
    dadosj[13,2] := acbrconsultacnpj1.IBGE_Municipio;
    dadosj[14,2] := EditInscricao.text;
  end;

  xibutton1.SetFocus;

end;

procedure TfBuscaCNPJ.EditCaptchaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    ButBuscarClick(ButBuscar);
end;

procedure TfBuscaCNPJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action     := caFree;
  fBuscaCNPJ := nil;
end;

procedure TfBuscaCNPJ.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;

end;

procedure TfBuscaCNPJ.FormShow(Sender: TObject);
begin
  Timer1.Enabled:= True;
end;

procedure TfBuscaCNPJ.LabAtualizarCaptchaClick(Sender: TObject);
var
  Stream: TMemoryStream;
  ImgArq: String;
begin
  Stream := TMemoryStream.Create;
  try

    ACBrConsultaCNPJ1.Captcha(Stream);

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

procedure TfBuscaCNPJ.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled:= False;
  LabAtualizarCaptchaClick(LabAtualizarCaptcha);
  EditCNPJ.SetFocus;
end;

end.
