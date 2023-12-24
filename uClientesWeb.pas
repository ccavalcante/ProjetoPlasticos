unit uClientesWeb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XiButton, jpeg, ExtCtrls, ActnList, Mask, System.Actions,
  Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Grids,
  Vcl.DBGrids, CheckDBGrid, Vcl.DBCtrls, ZSqlUpdate, Vcl.OleCtrls, SHDocVw,
  Vcl.ComCtrls, Vcl.Buttons, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdExplicitTLSClientServerBase, IdFTP, ACBrBase, ACBrDownload, FileCtrl,
  IdIntercept, IdLogBase, IdLogDebug, IdLogFile, Vcl.Samples.Gauges;

type
  TfClientesWeb = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    Image3: TImage;
    Label1: TLabel;
    edPesq: TEdit;
    dCliWeb: TDataSource;
    qCliWeb: TZQuery;
    XiButton1: TXiButton;
    Label29: TLabel;
    edFor: TEdit;
    edNomeFor: TEdit;
    gdFor: TDBGrid;
    qCliWebid: TIntegerField;
    qCliWebnome: TWideStringField;
    qCliWebsituacao: TWideStringField;
    qCliWebdesSit: TWideStringField;
    rdSit: TRadioGroup;
    qCliWeblimiteCredito: TFloatField;
    uCliWeb: TZUpdateSQL;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckDBGrid1: TCheckDBGrid;
    TabSheet3: TTabSheet;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    lLimite: TLabel;
    edLimite: TDBEdit;
    Bevel1: TBevel;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    web1: TWebBrowser;
    web2: TWebBrowser;
    web3: TWebBrowser;
    web4: TWebBrowser;
    web5: TWebBrowser;
    web6: TWebBrowser;
    qCliWebarquivo1: TWideStringField;
    qCliWebarquivo2: TWideStringField;
    qCliWebarquivo3: TWideStringField;
    qCliWebarquivo4: TWideStringField;
    qCliWebarquivo5: TWideStringField;
    qCliWebarquivo6: TWideStringField;
    XiButton2: TXiButton;
    acEnviar: TAction;
    Panel1: TPanel;
    Label4: TLabel;
    DBText1: TDBText;
    SpeedButton1: TSpeedButton;
    qEmpWeb: TZQuery;
    qEmpWebId: TIntegerField;
    qEmpWebRazao: TWideStringField;
    qEmpWebFantasia: TWideStringField;
    qEmpWebCNPJ: TWideStringField;
    qEmpWebCidade: TWideStringField;
    qEmpWebUF: TWideStringField;
    qEmpWebStatus: TWideStringField;
    qEmpWebFTP_Host: TWideStringField;
    qEmpWebFTP_User: TWideStringField;
    qEmpWebFTP_Pass: TWideStringField;
    qEmpWebFTP_Path: TWideStringField;
    qEmpWebEnviarRetornos: TWideStringField;
    qEmpWebSenha: TWideStringField;
    qEmpWebExclusivo: TWideStringField;
    qEmpWeblogo: TWideStringField;
    qEmpWebIdFornecedor: TIntegerField;
    qEmpWebBloqueioCadastroCliente: TWideStringField;
    qEmpWebTipoBloqueioPedido: TWideStringField;
    qEmpWebValorLimitePedido: TFloatField;
    qEmpWebObrigatoriedadeCamposCliente: TWideStringField;
    qEmpWebValorMinimoPedido: TFloatField;
    qEmpWebValorMinimoLotePedido: TFloatField;
    qEmpWebBloqueioCadastroPedido: TWideStringField;
    qEmpWebLiberaAcessoCliente: TWideStringField;
    qEmpWebLinkLogo: TWideStringField;
    qEmpWebCPFClienteUnico: TWideStringField;
    qEmpWebMensagemBloqueioCadastroPedido: TWideMemoField;
    qEmpWebMensagem: TWideMemoField;
    qEmpWebStatusDireitoBrindePromocional: TWideStringField;
    qEmpWebAutorizaCartao: TWideStringField;
    qEmpWebEmailPagto: TWideStringField;
    qEmpWebTokenPagto: TWideStringField;
    qEmpWebAutorizaGranel: TWideStringField;
    qEmpWebThumbnail: TWideStringField;
    qEmpWebSemEstoque: TWideStringField;
    qCliWebNomeRep: TWideStringField;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    IdFTP1: TIdFTP;
    qCliWebidrepresentante: TIntegerField;
    Gauge1: TGauge;
    Gauge2: TGauge;
    lftp: TLabel;
    pA: TPanel;
    qCliWebemail_rep: TWideStringField;
    qCliWebcpf: TWideStringField;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    procedure acSairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edNomeForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edForKeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormActivate(Sender: TObject);
    procedure rdSitClick(Sender: TObject);
    procedure qCliWebAfterPost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edNomeForChange(Sender: TObject);
    procedure edPesqChange(Sender: TObject);
    procedure DBRadioGroup1Enter(Sender: TObject);
    procedure DBRadioGroup1Exit(Sender: TObject);
    procedure edLimiteEnter(Sender: TObject);
    procedure edLimiteExit(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acEnviarExecute(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure qCliWebAfterScroll(DataSet: TDataSet);
    procedure IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCountMax: Int64);
    procedure IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
      AWorkCount: Int64);
  private
    nPat :String;
    bytesToTransfer :integer;
    procedure ativaQ;
    procedure ExibirDocs;
    procedure limpaWeb;
    procedure baixarDocs;
    procedure webLimpo(www: TwebBrowser);
    procedure webBusca(www: TwebBrowser; arq: String);
    procedure msg_tela(m: String; t: boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fClientesWeb: TfClientesWeb;

implementation

uses uDM, uFuncao, uMenu;

{$R *.dfm}

procedure TfClientesWeb.acEnviarExecute(Sender: TObject);
var
  txt, tp, email :String;
begin

  if qCliWeb.Active = false then
     Exit;

  if qCliWeb.IsEmpty then
     Exit;

  if DBRadioGroup1.ItemIndex = 0 then
     tp := '<font color="red">BLOQUEADO</font color="black">'
  else
     tp := '<font color="green">LIBERADO</font color="black">';

  email := inputbox('Confirme o email do representante', 'Informe o email:', qCliWebemail_rep.text );
  if trim(email) = '' then
  begin
     Application.MessageBox('informe um email valido para continuar', 'Atenção');
     exit;
  end;

  txt := '<html>' +
         '  <body>' +
         '    <h4>Prezado(a) representante '+ trim(edNomeFor.text) + '</h4>'+
         '     <font>'+
         '      <hr>'+
         '        <font><BR>'+
         '           O Cliente ' + trim(qCliWebnome.Text) + '<BR><BR>'+
         '           encontra-se <b>' + tp +
         '</b> para vendas.<BR>'+
         '        </font>'+
         '        <BR>'+
         '        <hr>'+
         '         <b>'+dm.qEmpresafantasia.text +'</b><BR>'+
         '         <font>'+dm.qEmpresaENDERECO.text +',' + dm.qEmpresanum.text + ' - ' +
                     dm.qEmpresaBAIRRO.text + '-' + dm.qEmpresaCIDADE.text + '/' +
                     dm.qEmpresaUF.text +'<BR>'+
         '           Fone:' + formatatelefone(dm.qEmpresaTELEFONE.text) +'<BR>'+
         '        </font>'+
         '    </body>'+
         '</html>';

  EnviaEmailRep( txt, email, 'Situação do Cliente: ' + trim(qCliWebnome.Text), true );


end;

procedure TfClientesWeb.acSairExecute(Sender: TObject);
begin

  idftp1.Disconnect;
  Close;

end;

procedure TfClientesWeb.edForKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    SpeedButton2.Enabled := false;
    if edFor.Text = '' then
       edNomeFor.SetFocus
    else
     begin
        DM.qExecWeb.close;
        DM.qExecWeb.SQL.Clear;
        DM.qExecWeb.SQL.Add('select id, nome, email from representante '+
                         ' where status = ''A'' and idempresa = '+ dm.qParametroidweb.Text +
                         ' and ID = '+trim(edFor.Text));
        DM.qExecWeb.Open;
        if DM.qExecWeb.RecordCount > 0 then
         begin
           edNomeFor.Text := DM.qExecWeb.FieldByName('nome').Text;
           gdFor.Visible := false;
           edPesq.SetFocus;
           ativaQ;
         end
        else
         begin
           edNomeFor.Clear;
           edFor.Clear;
           edNomeFor.SetFocus;
         end;
     end;
  end;

end;

procedure TfClientesWeb.edLimiteEnter(Sender: TObject);
begin
  if qCliWeb.Active = false then
     Exit;

  if qCliWeb.IsEmpty then
     Exit;


  if not (qCliWeb.State in [dsEdit]) then
      qCliWeb.Edit;
end;


procedure TfClientesWeb.edLimiteExit(Sender: TObject);
begin
  if qCliWeb.Active = false then
     Exit;

  if qCliWeb.IsEmpty then
     Exit;

 if (qCliWeb.State in [dsEdit]) then
      qCliWeb.Post;
end;

procedure TfClientesWeb.edNomeForChange(Sender: TObject);
begin
   if (edNomeFor.Text <> '') then
   begin
    gdFor.Visible := True;
    posicionagrid(gdFor, edFor);
    DM.qExecWeb.Close;
    DM.qExecWeb.SQL.Clear;
    DM.qExecWeb.SQL.Add('Select id, nome, email from representante '+
                      ' where status = ''A'' and idempresa = '+ dm.qParametroidweb.text +' and nome like '+QuotedStr('%'+edNomeFor.Text+'%'));
    DM.qExecWeb.Open;

    if DM.qExecWeb.IsEmpty then
     gdFor.Visible := False;
   end
   else
     gdFor.Visible := False;

end;

procedure TfClientesWeb.edNomeForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF gdFor.Visible THEN
  gdFor.SetFocus;

end;

procedure TfClientesWeb.edPesqChange(Sender: TObject);
begin
  if (length(trim(edPesq.Text)) = 0 ) or (length( trim(edPesq.Text)) > 2) then
     ativaQ;

end;


procedure TfClientesWeb.ativaQ;
var
  rep : integer;
  sit : String;
begin

   qCliWeb.Close;

   case rdSit.ItemIndex of
     0 : Sit := 'T';
     1 : Sit := 'B';
     2 : Sit := 'L';
   end;

   if trim(edfor.text) = '' then
     rep := 0
   else
     rep := strtoint(trim(edFor.text));


   qCliWeb.Close;
   qCliWeb.ParamByName('emp').Value  := dm.qParametroidweb.AsInteger;
   qCliWeb.ParamByName('rep').Value  := rep;
   qCliWeb.ParamByName('pesq').Value := '%'+trim(edPesq.Text)+'%';
   qCliWeb.ParamByName('sit').Value  := sit;
   qCliWeb.Open;

   ExibirDocs;

end;


procedure TfClientesWeb.CheckDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if (gdSelected in State) then
  begin
     checkdbGrid1.Canvas.Brush.Color := $00FCA258;
     checkdbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if (uppercase(qCliWebdesSit.Value) = 'BLOQUEADO') and (uppercase(Column.FieldName) = 'DESSIT') then
        checkdbGrid1.Canvas.Brush.Color := $009F9FFF // LAR
    else
    if (uppercase(qCliWebdesSit.Value) = 'LIBERADO') and (uppercase(Column.FieldName) = 'DESSIT') then
       checkdbGrid1.Canvas.Brush.Color := $00A5F58D;
  end;
  checkdbGrid1.DefaultDrawDataCell(Rect, checkdbGrid1.Columns[DataCol].Field ,state);

end;

procedure TfClientesWeb.DBRadioGroup1Enter(Sender: TObject);
begin
  if qCliWeb.Active = false then
     Exit;

  if qCliWeb.IsEmpty then
     Exit;

   if not (qCliWeb.State in [dsEdit]) then
      qCliWeb.Edit;
end;

procedure TfClientesWeb.DBRadioGroup1Exit(Sender: TObject);
begin
   if qCliWeb.Active = false then
      Exit;

   if qCliWeb.IsEmpty then
      Exit;

   if (qCliWeb.State in [dsEdit]) then
      qCliWeb.Post;

end;

procedure TfClientesWeb.FormActivate(Sender: TObject);
begin
  ednomeFor.SetFocus;
end;

procedure TfClientesWeb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fClientesWeb := nil;

end;

procedure TfClientesWeb.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  qCliWeb.Close;
  dm.ConexWeb.Disconnect;

end;

procedure TfClientesWeb.FormCreate(Sender: TObject);
begin

  if ConectaWeb = false then
  begin
     Application.MessageBox('Erro ao Conectar na Web para envio, verifique!', 'Atenção');
     Close;
  end;

  if dm.qParametroidweb.AsInteger = 0 then
  begin
     Application.MessageBox('Codigo da empresa na web não informado, verifique!', 'Atenção');
     Close;
  end;

  PageControl1.ActivePageIndex := 0;
  PageControl2.ActivePageIndex := 0;

  qEmpWeb.close;
  qEmpWeb.ParamByName('id').AsInteger := dm.qParametroidweb.AsInteger;
  qEmpWeb.Open;
  idFTP1.Host     := trim(qEmpWebFTP_Host.Text);
  idFTP1.Username := trim(qEmpWebFTP_User.Text);
  idFTP1.Password := trim(qEmpWebFTP_Pass.Text);


end;

procedure TfClientesWeb.FormKeyPress(Sender: TObject; var Key: Char);
begin
 IF (Key = #13) and not ((ActiveControl is TDBMemo) or
                        (ActiveControl = gdFor)  or
                        (ActiveControl = edPesq) or
                        (ActiveControl = edFor) or
                        (ActiveControl = edNomeFor)
                        )THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;

end;

procedure TfClientesWeb.gdForKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
 begin
  if not DM.qExecWeb.IsEmpty then
   begin
    edFor.Text    := DM.qExecWeb.FIELDBYNAME('Id').Text;
    edForKeyPress(Application, key);
    gdFor.Visible := False;
   end;
   Key := #0;
 end;

end;

procedure TfClientesWeb.IdFTP1Work(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCount: Int64);
begin
   Gauge2.Progress := AWorkCount;

end;

procedure TfClientesWeb.IdFTP1WorkBegin(ASender: TObject; AWorkMode: TWorkMode;
  AWorkCountMax: Int64);
begin
   Gauge2.Visible  := true;
   Gauge2.MaxValue := bytesToTransfer; // AWorkCountMax;

end;

procedure TfClientesWeb.IdFTP1WorkEnd(ASender: TObject; AWorkMode: TWorkMode);
begin
   Gauge2.Visible := false;

end;

procedure TfClientesWeb.qCliWebAfterPost(DataSet: TDataSet);
var
  rg:integer;
begin
   rg := qCliWeb.RecNo;
   qCliWeb.ApplyUpdates;
   ativaQ;
   qCliWeb.RecNo := rg;

end;

procedure TfClientesWeb.qCliWebAfterScroll(DataSet: TDataSet);
begin
  if length(retornaNumeros(qCliWebcpf.Text)) <= 11 then
     qCliWebcpf.EditMask := '###.###.###-##;0;_'
  else
     qCliWebcpf.EditMask := '##.###.###/####-##;0;_';

  ExibirDocs;
end;

procedure TfClientesWeb.rdSitClick(Sender: TObject);
begin
   ativaQ;

end;

procedure TfClientesWeb.SpeedButton1Click(Sender: TObject);
begin
  ativaQ;
end;

procedure TfClientesWeb.SpeedButton2Click(Sender: TObject);
begin
   if qCliWeb.IsEmpty then
      Exit;

           //ftp
           msg_tela('Conectando com base de dados das imagens...Aguarde!', true);
           try
              idFTP1.Connect;
              IF idFTP1.Connected then
              begin
                 try
                    idFTP1.ChangeDir(trim(qEmpWebFTP_Path.Text));
                    lFtp.Caption := '<< conectado nas imagens >>';
                    lFtp.Font.Color := clGreen;
                    msg_tela('', false);
                 except
                    lFtp.Caption := '** não conectado nas imagens **';
                    lFtp.Font.Color := clRed;
                    msg_tela('', false);
                 end;
              end;
           except
              lFtp.Caption := '** não conectado nas imagens **';
              lFtp.Font.Color := clRed;
              msg_tela('', false);
              exit;
           end;
           lFtp.refresh;

  case Application.MessageBox(pchar('Deseja Atualizar os Documementos:' +#13+#10+
                              'Todos (Sim) ' +#13+#10+
                              'Registro Selecionado (Não) ?'), 'Confirmação', mb_yesnocancel ) of
      idNo     : baixarDocs;
      idCancel : exit;
  end;

  if Application.MessageBox('Esta operação podera ser demorada, confirma?','Atenção', mb_yesno ) = idno then
     Exit;

  msg_tela('Aguarde um instante...', true);
  qCliWeb.First;
  while qCliWeb.Eof = false do
  begin
      Application.ProcessMessages;
      try
         baixarDocs;
      except
      end;
      qCliWeb.Next;
  end;
  qCliWeb.First;
  msg_tela('', false);

end;

procedure TfClientesWeb.msg_tela( m : String; t:boolean);
begin
   pA.Caption := m;
   pA.Refresh;
   pA.Visible := t;
   pA.BringToFront;
end;


procedure TfClientesWeb.baixarDocs;
var
  DIR, gpat, pat : String;
  origem, destino, camp : string;
  ar : integer;

 begin


  msg_tela('Atualizando imagens, Aguarde!', true);
  gauge1.Visible  := true;
  gauge1.MaxValue := 06;
  pat := qCliWebidrepresentante.text;
  if npat <> pat then
  begin
    idFTP1.ChangeDir(pat);
    npat := pat;
  end;

  Dir := ExtractFilePath(Application.ExeName) + 'ArquivosClienteWeb';
  if not SysUtils.DirectoryExists( Dir ) then
     CreateDir(Dir);

  for ar := 1 to 6 do
  begin
    Application.ProcessMessages;
    Gauge1.Progress := ar;

    camp := trim(qCliWeb.FieldByName('arquivo' + inttostr(ar)).Text);
    if camp <> '' then
    begin
       origem  := camp ;
       destino := Dir + '\'+ origem;
       if FileExists(destino) then
          DeleteFile(destino);
       bytesToTransfer := idFtp1.Size(origem);
       IdFTP1.Get(origem, destino, false);
       sleep(100);

    end;
  end;
  gauge1.Visible  := false;
  msg_tela('', false);

  ExibirDocs;

end;


procedure TfClientesWeb.ExibirDocs;
var
  I : integer;
begin

   msg_tela('Carregando as imagens, Aguarde!', true);
   SpeedButton2.Enabled := false;
   acSair.Enabled       := false;
   limpaWeb;

   gauge1.Visible  := true;
   Gauge1.MaxValue := 6;
   for I := 1 to 6 do
   begin
     case I of
       1 : webBusca(web1, trim(qCliWebarquivo1.Text) );
       2 : webBusca(web2, trim(qCliWebarquivo2.Text) );
       3 : webBusca(web3, trim(qCliWebarquivo3.Text) );
       4 : webBusca(web4, trim(qCliWebarquivo4.Text) );
       5 : webBusca(web5, trim(qCliWebarquivo5.Text) );
       6 : webBusca(web6, trim(qCliWebarquivo6.Text) );
     end;
     Gauge1.Progress := I;
   end;
   Gauge1.Visible  := False;
   SpeedButton2.Enabled := true;
   acSair.Enabled       := true;
   msg_tela('', false);

end;

procedure  TfClientesWeb.limpaWeb;
var
  I: Integer;
begin

  msg_tela('Ajustando tela para as imagens, Aguarde!', true);
  gauge1.Visible  := true;
  Gauge1.MaxValue := 6;
  for I := 1 to 6 do
  begin
    case I of
      1 : webLimpo(web1);
      2 : webLimpo(web2);
      3 : webLimpo(web3);
      4 : webLimpo(web4);
      5 : webLimpo(web5);
      6 : webLimpo(web6);
    end;
    Gauge1.Progress := I;
  end;
  Gauge1.Visible := false;
  msg_tela('', false);


end;

procedure  TfClientesWeb.webLimpo( www: TwebBrowser);
begin

  www.Navigate(ExtractFilePath(Application.ExeName) + 'sem_imagem.jpg' );
  {while www.ReadyState <> READYSTATE_COMPLETE do
  begin
    Sleep(5);
    Application.ProcessMessages;
  end;
  www.stop;
  www.visible := false;}

end;

procedure  TfClientesWeb.webBusca(www: TwebBrowser; arq: String);
var
  Dir : String;
begin
   Dir := ExtractFilePath(Application.ExeName) + 'ArquivosClienteWeb\' + arq ;
   if trim(arq) <> '' then
      www.Navigate(dir)
   else
      webLimpo(www);

end;


end.
