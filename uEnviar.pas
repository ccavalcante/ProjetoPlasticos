unit uEnviar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, IdBaseComponent, IdMessage, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, StdCtrls, XiButton,
  jpeg, ExtCtrls, Grids, DBGrids, ActnList, System.Actions,
  IdExplicitTLSClientServerBase, IdSMTPBase, IdAttachmentFile, IdIOHandler,
  IdIOHandlerSocket, IdIOHandlerStack, IdSSL, IdSSLOpenSSL, ACBrNFe,IdSMTP,
  smtpsend,ssl_openssl, mimemess, mimepart, WinInet, StrUtils;

type
  TfEnviar = class(TForm)
    IdMessage_en: TIdMessage;
    IdSMTP_en: TIdSMTP;
    Label1: TLabel;
    edDest: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edAssunto: TEdit;
    XiButton2: TXiButton;
    Label4: TLabel;
    edRemetente: TEdit;
    Label5: TLabel;
    edSenha: TEdit;
    rdPDF: TRadioButton;
    rdRTF: TRadioButton;
    rdHTM: TRadioButton;
    Label6: TLabel;
    rdXls: TRadioButton;
    Label7: TLabel;
    Shape1: TShape;
    ActionList1: TActionList;
    sair: TAction;
    Label8: TLabel;
    edCorpo: TMemo;
    Image2: TImage;
    IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL;
    function EnviaEmail(smtp,port,user,password,sFrom,sTo,assunto,nomeRemetente,nomeArquivo:String;
                    SSL,TLS,confirmacao,aguardoEnvio,usarThread,html:Boolean;
                    mensagem:TStringList = nil;
                    SCC:TStrings = nil;
                    anexos:TStrings = nil;
                    StreamNFE:TStringStream = nil):Boolean;
    procedure XiButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Procedure Enviar;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure sairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    Anexo : String;
  end;

var
  fEnviar: TfEnviar;
  vEnv_Assunto, vEnv_Email, vEnv_NomeArq: String;



implementation

uses uDM ;

{$R *.dfm}

function TfEnviar.enviaEmail(smtp,port,user,password,sFrom,sTo,assunto,nomeRemetente,nomeArquivo:String;
                    SSL,TLS,confirmacao,aguardoEnvio,usarThread,html:Boolean;
                    mensagem:TStringList = nil;
                    SCC:TStrings = nil;
                    anexos:TStrings = nil;
                    StreamNFE:TStringStream = nil):Boolean;
var
  envio:TACBrNFe;
  tSmtp: TSMTPSend;
  msg_lines: TStringList;
  m:TMimemess;
  p: TMimepart;
  I : Integer;
  CorpoEmail: TStringList;
  Flags:Cardinal;
  inicio,fim,posicao,porta:Integer;
  hostname:String;
  vRet : boolean;
begin
  vRet := false;
   Label7.visible := true;
   if not InternetGetConnectedState(@Flags,0) then
   begin
      Application.MessageBox('Não há conexão com a internet !','Aviso',MB_ICONERROR+MB_OK);
      exit;
   end;


    if (mensagem = nil) or (Length(mensagem.Text) = 0) then
    begin
       mensagem := TStringList.Create;
       mensagem.Text := '';
    end;


    msg_lines := TStringList.Create;
    CorpoEmail := TStringList.Create;
    tSmtp := TSMTPSend.Create;
    m:=TMimemess.create;

    //--------
  try
    try

      p := m.AddPartMultipart('mixed', nil);

      if mensagem <> nil then
      begin
//        CorpoEmail.Text := sMensagem.Text;
//        m.AddPartText(CorpoEmail, p);
        if HTML = true then
          m.AddPartHTML(mensagem, p)
        else
          m.AddPartText(mensagem, p);
      end;

      if StreamNFe <> nil then
        m.AddPartBinary(StreamNFe,nomeArquivo, p);

      if assigned(anexos) then
        for i := 0 to anexos.Count - 1 do
        begin
          m.AddPartBinaryFromFile(anexos[i], p);
        end;

      m.header.tolist.add(sTo);

      if Trim(NomeRemetente) <> '' then
        m.header.From := Format('%s<%s>', [NomeRemetente, sFrom])
      else
        m.header.From := sFrom;

      m.header.subject := assunto;
      m.EncodeMessage;
      msg_lines.Add(m.Lines.Text);

      tSmtp.UserName := user;
      tSmtp.Password := password;

      tSmtp.TargetHost := smtp;
      tSmtp.TargetPort := port;

      tSmtp.FullSSL := SSL;

      tSmtp.AutoTLS := TLS;

      if(TLS) then
        tSmtp.StartTLS;


      if not tSmtp.Login then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '+ #13 + 'Verifique o login e/ou smtp.'
                              ,'Atenção',MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;



      if not tSmtp.MailFrom(sFrom, Length(sFrom)) then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '+ #13 + 'Verifique o login.'
                              ,'Atenção',MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;

      if not tSmtp.MailTo(sTo) then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '
                              ,'Atenção',MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;


      if sCC <> nil then
      begin
        for I := 0 to sCC.Count - 1 do
        begin
          if not tSmtp.MailTo(sCC.Strings[i]) then
          begin
              Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '+ #13 + 'Verifique o e-mail CC !'
                              ,'Atenção',MB_ICONERROR + MB_OK);
               exit;
          end;

        end;
      end;

      if not tSmtp.MailData(msg_lines) then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '
                              ,'Atenção',MB_ICONERROR + MB_OK);
        exit;
      end;

      if not tSmtp.Logout then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '
                              ,'Atenção',MB_ICONERROR + MB_OK);
         exit;
      end;
      vRet := true;
    except
      On E : Exception do
      begin
        Application.MessageBox(pchar('Ocorreu um problema desconhecido ao enviar o e-mail ! ' + E.Message)
                              ,'Atenção',MB_ICONERROR + MB_OK);
      end;
    end;
  finally
     msg_lines.Free;
     CorpoEmail.Free;
     tSmtp.Free;
     m.free;
     Label7.visible := false;
     result := vRet;
  end;

end;

Procedure TfEnviar.Enviar;
var  senha,end_email, end_email_cc, Arquivo, Corpo: string;
     i:integer;
     mail: TStringList;
     HTML : TStringList;
     nEnv_Report : TRLReport;
     nSSL, nTLS : boolean;

begin

  if Anexo = 'S' then
  begin
    nEnv_Report  := TRLReport.Create(self);
    nEnv_Report  := vEnv_Report;
  end;

  vEnv_Assunto := edAssunto.Text;
  vEnv_Email   := edDest.Text;
  vEnv_NomeArq := 'EMail_'+ copy(trim(dm.qEmpresaFantasia.Text),1,10);
  Corpo        := edCorpo.Text;

  if dm.qEmpresarem_ssl.Text = 'S' then
     nSSL := true
  else
     nSSL := false;

  if dm.qEmpresarem_tls.Text = 'S' then
     nTLS := true
  else
     nTLS := false;

  label7.Visible := true;
  Application.ProcessMessages;
  if Anexo = 'S' then
  begin
    if rdPDF.Checked then
    begin
       Arquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.PDF';
       DM.RLPDFFilter1.FileName := Arquivo;
       DM.RLPDFFilter1.FilterPages (nEnv_Report.Pages, nEnv_Report.pages.FirstPageNumber,
                                nEnv_Report.pages.LastPageNumber, '', 0);
      nEnv_Report.SaveToFile(dm.RLPDFFilter1.FileName);
    end
    else
    if rdRTF.Checked then
     begin
       Arquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.rtf';
       DM.RLRichFilter1.FileName := Arquivo;
       DM.RLRichFilter1.FilterPages(nEnv_Report.Pages, nEnv_Report.FirstPageNumber,
                                 nEnv_Report.Pages.LastPageNumber, '', 0);
       nEnv_Report.SaveToFile(dm.RLRichFilter1.FileName);
    end
    else
    if rdHTM.Checked then
    begin
       Arquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.HTM';
       DM.RLHTMLFilter1.FileName := Arquivo;
       DM.RLHTMLFilter1.FilterPages(nEnv_Report.Pages, nEnv_Report.FirstPageNumber,
                                 nEnv_Report.Pages.LastPageNumber, '', 0);
       nEnv_Report.SaveToFile(dm.RLHTMLFilter1.FileName);
    end
    else
    if rdXLS.Checked then
    begin
       Arquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.XLS';
       DM.RLXLSxFilter1.FileName := Arquivo;
       DM.RLXLSxFilter1.FilterPages(nEnv_Report.Pages, nEnv_Report.FirstPageNumber,
                                 nEnv_Report.Pages.LastPageNumber, '', 0);
       nEnv_Report.SaveToFile(dm.RLXLSxFilter1.FileName);
    end;
  end;

  mail := TStringList.Create;
  HTML := TSTringList.Create;

  HTML.Add('E-mail enviado por '+DM.qEmpresaRazao.Text + #13+#10 + #13+#10 + Corpo );

  mail.values['to']          := vEnv_Email; ///AQUI VAI O EMAIL DO DESTINATARIO///
  mail.values['subject']     := vEnv_Assunto; ///AQUI O ASSUNTO///
  mail.values['body']        := HTML.Text; ///AQUI O TEXTO NO CORPO DO EMAIL///

  {end_email_cc := trim(dm.qParametrore_email_cc.Text);
  if pos('@', end_email_cc[i] ) = 0 then
     end_email_cc := ''
  else
     mail.values['CC'] := end_email_cc;}

  if Anexo = 'S' then
       mail.values['attachment0'] := Arquivo;

      // Configuração envio - Email
      IdMessage_en.Clear;
      IdMessage_en.Recipients.EMailAddresses := vEnv_Email;
      IdMessage_en.Subject                   := vEnv_Assunto; ///AQUI O ASSUNTO///
      IdMessage_en.Body.Add(mail.values['body']);
      IdMessage_en.ReplyTo.EMailAddresses := end_email_CC;

  if Anexo = 'S' then
      TIdAttachmentFile.create(IdMessage_en.MessageParts, TFileName(Arquivo));

      // configuração conexão
      Senha     := edSenha.Text;
      end_email := edRemetente.Text;

      IdSMTP_en.AuthType           := satDefault;
      IdSMTP_en.Password           := Senha;
      IdSMTP_en.Port               := DM.qEmpresarem_porta.asInteger;

      for i:=1 to length(end_email) do
       begin
         if end_email[i] = '@' then
         break;
       end;

      IdMessage_en.From.Address := end_email;
      IdMessage_en.From.Text    := end_email;
      IdMessage_en.CCList.EMailAddresses := end_email_cc;

      if DM.qEmpresarem_smtp.Text = '' then
       IdSMTP_en.Host           := 'smtp.'+copy(end_email,i+1,length(end_email)-i)
      else
       IdSMTP_en.Host           := DM.qEmpresarem_smtp.Text;

      IdSMTP_en.HeloName        := copy(end_email,1,i-1);
      IdSMTP_en.Username        := end_email;

      if nSSL then
      begin
        IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Method := sslvTLSv1;
        IdSSLIOHandlerSocketOpenSSL1.SSLOptions.Mode := sslmClient;     // or sslmUnassigned ?
        IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyMode := [];
        IdSSLIOHandlerSocketOpenSSL1.SSLOptions.VerifyDepth := 0;
        IdSMTP_en.IOHandler := IdSSLIOHandlerSocketOpenSSL1;
      end
      else
       IdSMTP_en.IOHandler := nil;

      if nTLS = true then
         IdSMTP_en.UseTLS := utUseImplicitTLS;

      try
       if IdSMTP_en.Connected=false then
        IdSMTP_en.Connect();
      except
      On E : Exception do
        begin
         showmessage('Não foi possível conectar: ' + E.Message );
         label7.Visible := false;
        end;
      end;

      refresh;

      IdSMTP_en.Authenticate();

      if IdSMTP_en.Connected then
      begin
         try
             IdSMTP_en.Send(IdMessage_en);
         except
           On E : Exception do
           begin
             showmessage('Não foi possível enviar o email: '+ E.Message);
             label7.Visible := false;
             exit;
           end;
         end;

         IdSMTP_en.Disconnect;
         mail.Free;
         showmessage('E-mail enviado.');
         fEnviar.Close;

      end;


end;

procedure TfEnviar.XiButton2Click(Sender: TObject);
var
  vSsl, vTls : boolean;
  vAnexos, vMsg : Tstringlist;
  nEnv_Report : TRLReport;
  vArquivo : string;
begin
 if (trim(edDest.Text) = '' )      or
    (trim(edRemetente.Text) = '') or
    (trim(edDest.Text) = '' ) then
  begin
    Showmessage('Campos Obrigatórios Não Preenchidos!');
    exit;
  end;

 //Enviar;   //25/09/2020 outro enviar
 dm.qEmpresa.Locate('id', dm.qUseridemp.asinteger, []);
  vSsl := (dm.qEmpresarem_ssl.Text = 'S');
  vTls := (dm.qEmpresarem_tls.Text = 'S');
  vanexos  := TStringList.Create;
  vMsg     := TStringList.Create;
  vEnv_NomeArq := 'EMail_'+ copy(trim(dm.qEmpresaFantasia.Text),1,10);
  if Anexo = 'S' then
  begin
    nEnv_Report  := TRLReport.Create(self);
    nEnv_Report  := vEnv_Report;
  end;

  if Anexo = 'S' then
  begin
    if rdPDF.Checked then
    begin
       vArquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.PDF';
       DM.RLPDFFilter1.FileName := vArquivo;
       DM.RLPDFFilter1.FilterPages (nEnv_Report.Pages, nEnv_Report.pages.FirstPageNumber,
                                nEnv_Report.pages.LastPageNumber, '', 0);
      nEnv_Report.SaveToFile(dm.RLPDFFilter1.FileName);
    end
    else
    if rdRTF.Checked then
     begin
       vArquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.rtf';
       DM.RLRichFilter1.FileName := vArquivo;
       DM.RLRichFilter1.FilterPages(nEnv_Report.Pages, nEnv_Report.FirstPageNumber,
                                 nEnv_Report.Pages.LastPageNumber, '', 0);
       nEnv_Report.SaveToFile(dm.RLRichFilter1.FileName);
    end
    else
    if rdHTM.Checked then
    begin
       vArquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.HTM';
       DM.RLHTMLFilter1.FileName := vArquivo;
       DM.RLHTMLFilter1.FilterPages(nEnv_Report.Pages, nEnv_Report.FirstPageNumber,
                                 nEnv_Report.Pages.LastPageNumber, '', 0);
       nEnv_Report.SaveToFile(dm.RLHTMLFilter1.FileName);
    end
    else
    if rdXLS.Checked then
    begin
       vArquivo := Extractfilepath(Application.ExeName) + vEnv_NomeArq+'.XLS';
       DM.RLXLSxFilter1.FileName := vArquivo;
       DM.RLXLSxFilter1.FilterPages(nEnv_Report.Pages, nEnv_Report.FirstPageNumber,
                                 nEnv_Report.Pages.LastPageNumber, '', 0);
       nEnv_Report.SaveToFile(dm.RLXLSxFilter1.FileName);
    end;
  end;

  vanexos.Add(vArquivo);
  vMsg.add(edCorpo.Text);

  if enviaEmail(trim(DM.qEmpresarem_smtp.Text),DM.qEmpresarem_porta.asstring,
          trim(edRemetente.Text) ,trim(edsenha.text) ,
          trim(edRemetente.Text) ,
          trim(edDest.Text),trim(edAssunto.Text),
          edRemetente.Text ,vArquivo, vssl,vTls,false,false,false,false,
          vMsg, nil, vanexos)
   then
     Application.MessageBox('E-mail enviado.','Aviso');
end;

procedure TfEnviar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  vEnv_EmailDest := '';

end;

procedure TfEnviar.FormCreate(Sender: TObject);
 var Cont, Ates : String;
     I, Posi : Integer;
begin

 edRemetente.Text := DM.qEmpresarem_email.Text;
 edSenha.Text     := DM.qEmpresarem_senha.Text;
 if vImpOC = true then
 begin
  Ates := dm.qEmpresamsn_Email_OC.asString;
   if pos('***', Ates) > 0 then begin
      Posi := pos('*', Ates);
      Cont := MidStr(Ates, 1, Posi - 1);
      Delete(Ates, 1, Posi + 2);
      Cont := Cont + ' '+ inttoStr(vNumOC) + Ates;
   end;

   edCorpo.lines.add(Cont);
 end;

 Anexo            := 'S';
end;

procedure TfEnviar.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not ((ActiveControl is TDBGrid) or (ActiveControl is TMemo)) then
  begin
   Key := #0;
   SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfEnviar.sairExecute(Sender: TObject);
begin
  close;
end;

end.
