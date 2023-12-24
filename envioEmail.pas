unit envioEmail;


interface


uses Forms,ACBrNFe, smtpsend, ssl_openssl, mimemess, mimepart,Windows,
     SysUtils, Variants, Classes, Graphics, Controls,Messages,Dialogs,
     WinInet, IdSMTPBase, IdText, IdSMTP, IdMessage, IdAttachmentFile,
     IdExplicitTLSClientServerBase, IdSSLOpenSSL;


function enviaEmail(smtp,port,user,password,sFrom,sTo,assunto,nomeRemetente,nomeArquivo:String;
                    SSL,TLS,confirmacao,aguardoEnvio,usarThread,html:Boolean;
                    mensagem:TStringList = nil;
                    SCC:TStrings = nil;
                    anexos:TStrings = nil;
                    StreamNFE:TStringStream = nil):Boolean;

function verEmailValido(email:String;msg:PAnsiChar = nil):Boolean;

function EnviarEmailHTML(DeNome, DeEmail, Para, Copia, Assunto, Corpo, psmtp, premetente, psenha: String;
                 AutoResposta: Boolean; Anexo, Anexo2: PChar; pPorta : integer; pSSl, pTSL : boolean): Boolean;

                    
implementation

var
  msgEnvio:PAnsiChar = 'Envio de e-mail';



function EnviarEmailHTML(DeNome, DeEmail, Para, Copia, Assunto, Corpo, psmtp, premetente, psenha: String;
                 AutoResposta: Boolean; Anexo, Anexo2: PChar; pPorta : integer; pSSl, pTSL : boolean): Boolean;
var
  i: Integer;
  IdSMTP1: TIdSMTP;
  IdMessage: TIdMessage;
  IdCorpo: TIdText;
  vHost : string;
  SSL : TIdSSLIOHandlerSocketOpenSSL;
begin
  Result := True;

  try
    IdMessage := TIdMessage.Create(nil);
    try
      // Cria a Estrutura da Mensagem:
      IdMessage.Clear;
      IdMessage.IsEncoded          := True;
      IdMessage.AttachmentEncoding := 'MIME';
      IdMessage.Encoding           := meMIME; // meDefault;
      IdMessage.ConvertPreamble    := True;
      IdMessage.Priority           := mpNormal;
      IdMessage.ContentType        := 'multipart/mixed'; // obrigatoriamente!
      IdMessage.CharSet            := 'ISO-8859-1';
      IdMessage.Date               := Now;

      // Define o Remetente e Destinatário:
      IdMessage.From.Address              := DeEmail; // ou ‘[EMAIL PROTECTED]‘
      IdMessage.From.Text                 := DeNome;
      IdMessage.CCList.EMailAddresses     := Copia;
      IdMessage.BccList.EMailAddresses    := '';
      IdMessage.ReplyTo.EMailAddresses    := DeEmail;
      IdMessage.Recipients.EMailAddresses := Trim(Para);
      IdMessage.Subject                   := Trim(Assunto);

      if AutoResposta then
        IdMessage.ReceiptRecipient.Text := DeEmail; // auto-resposta (confirmação de leitura!)

      // Adiciona o CORPO da Mensagem:
      IdCorpo                    := TIdText.Create(IdMessage.MessageParts, nil);
      IdCorpo.ContentType        := 'text/html';
      IdCorpo.ContentDescription := 'multipart-1';
      IdCorpo.CharSet            := 'ISO-8859-1';

      // NOSSA LINGUAGEM PT-BR (Latin-1)!!!!
      IdCorpo.ContentTransfer    := '16bit'; // para SAIR ACENTUADO !!!! Pois, 8bit SAI SEM ACENTO !!!!
      IdCorpo.ContentDescription := 'Corpo da Mensagem';
      IdCorpo.Body.Clear;
      IdCorpo.Body.Add(Corpo);

      if Anexo <> '' then
        TIdAttachmentFile.Create(IdMessage.MessageParts, Anexo);    // usado para anexar arquivos

      if Anexo2 <> '' then
        TIdAttachmentFile.Create(IdMessage.MessageParts, Anexo2);    // usado para anexar arquivos

      IdSMTP1 := TIdSMTP.Create(nil);

      With IdSMTP1 Do
      begin
        try
          AuthType    := SatDefault;
          ReadTimeout := 30000; // Leitura da Conexão em 30 segundos!

          if psmtp = '' then
          begin
            for i:=1 to length(premetente) do
            begin
              if premetente[i] = '@' then
              break;
            end;

            vHost := 'smtp.'+copy(premetente,i+1,length(premetente)-i)
          end
          else
            vHost := psmtp;

          if pSSl then
          begin
            SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);
            SSL.SSLOptions.Method := sslvTLSv1;
            SSL.SSLOptions.Mode := sslmClient;     // or sslmUnassigned ?
            SSL.SSLOptions.VerifyMode := [];
            SSL.SSLOptions.VerifyDepth := 0;
            IOHandler := SSL;
          end;

          if pTSL then
            UseTLS := utUseImplicitTLS ;//utNoTLSSupport;// utUseRequireTLS utUseExplicitTLS;

          Username := trim(premetente);  // emaildo usuario
          Password := trim(psenha); // senha do usuario
          Host     := vHost;          // host do usuaro ex.: provedo.mail.com.br
          Port     := pPorta;         // porta email -> geralmente 587

          try
            Connect;
            Authenticate;
          except
            On E : Exception do
            begin
              showmessage(' Ocorreu um problema ao tentar(conectar) enviar o e-mail!' + #13+  E.Message  );
              Result := False;
            end;
          end;

          if Connected then
            Send(IdMessage)
          else
          begin
            Result := False;
          end;
        finally
          Disconnect;
        end;
      end;
    except
      On E : Exception do
            begin
              showmessage(' Ocorreu um problema ao tentar enviar o e-mail!' + #13+  E.Message  );
              Result := False;
            end;
    end;
  finally
    FreeAndNil(IdMessage);
    FreeAndNil(IdSMTP1);
  end;
end;


//------------------------------------------------------------------------------  
function verEmailValido(email:String;msg:PAnsiChar = nil):Boolean;
var
  inicio,fim,posicao,porta:Integer;
  hostname:String;
begin
   inicio :=  pos('@',email)+1;
   fim := pos('.',copy(email,pos('@',email)+1,length(email)))-1;

   if pos('@',email) = 0 then
    begin
      if not (msg = nil) then
        Application.MessageBox(pchar(msg),pchar(msgEnvio),MB_ICONERROR+MB_OK)
      else
        Application.MessageBox('Erro ao enviar o e-mail !',pchar(msgEnvio),MB_ICONERROR+MB_OK);
      result := false;
    end
    else
      Result := True;
      
end;
//------------------------------------------------------------------------------

function enviaEmail(smtp,port,user,password,sFrom,sTo,assunto,nomeRemetente,nomeArquivo:String;
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
begin

   if not InternetGetConnectedState(@Flags,0) then
   begin
      Application.MessageBox('Não há conexão com a internet !',pchar(msgEnvio),MB_ICONERROR+MB_OK);
      exit;
   end;

   //---------------------------------------------------------------------------
   if not verEmailValido(user,'O endereço de login digitado não corresponde a um e-mail.') then
    exit;
   //-----------------
   if not verEmailValido(sFrom,'O endereço do remetente não corresponde a um e-mail.') then
    exit;
   //--------------
   if not verEmailValido(sTo,'O endereço do destinatário digitado não corresponde a um e-mail.') then
    exit;
   //---------------------------------------------------------------------------


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
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;



      if not tSmtp.MailFrom(sFrom, Length(sFrom)) then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '+ #13 + 'Verifique o login.'
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;

      if not tSmtp.MailTo(sTo) then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
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
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
              //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
              exit;
          end;

        end;
      end;

      if not tSmtp.MailData(msg_lines) then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;

      if not tSmtp.Logout then
      begin
        Application.MessageBox('Ocorreu um problema ao enviar o e-mail ! '
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
        //raise Exception.Create('SMTP ERROR: ' + tSmtp.EnhCodeString+sLineBreak+tSmtp.FullResult.Text);
        exit;
      end;

      Application.MessageBox('E-mail enviado com sucesso! '
                              ,pchar(msgEnvio),MB_ICONINFORMATION + MB_OK);

    except
      Application.MessageBox('Ocorreu um problema desconhecido ao enviar o e-mail ! '
                              ,pchar(msgEnvio),MB_ICONERROR + MB_OK);
    end;
  finally
     msg_lines.Free;
     CorpoEmail.Free;
     tSmtp.Free;
     m.free;
  end;

end;

end.
