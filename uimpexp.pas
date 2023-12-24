unit uimpexp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB,  IdTCPConnection, IdTCPClient, IdFTP,
  ComCtrls, DBCtrls, Grids, DBGrids, ActnList, jpeg, ExtCtrls, ActiveX,
  System.Win.ComObj, XiButton, FileCtrl, System.Actions, Vcl.OleCtnrs,
  IdExplicitTLSClientServerBase, IdFTPList, IdAllFTPListParsers,
  IdBaseComponent, IdComponent;

type
  Tfimpexp = class(TForm)
    FileListBox1: TFileListBox;
    ActionList1: TActionList;
    acBaixar: TAction;
    acAtualizar: TAction;
    acImportar: TAction;
    acSair: TAction;
    XiButton4: TXiButton;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    ProgressBar1: TProgressBar;
    Label2: TLabel;
    rgTipo: TRadioGroup;
    Image2: TImage;
    Panel1: TPanel;
    FTP: TIdFTP;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure acAtualizarExecute(Sender: TObject);
    procedure acBaixarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgTipoClick(Sender: TObject);
    procedure acImportarExecute(Sender: TObject);
  private
  public
    { Public declarations }
    DestinoL, CaminhoL : String;
    ARQ : TStringList;
    Procedure BaixaArquivos;
  end;

var
  vCaminhoXML : string;
  fimpexp: Tfimpexp;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure Tfimpexp.FormCreate(Sender: TObject);
begin
  vCaminhoXML  := '';
  rgTipo.OnClick(Sender);
end;


procedure Tfimpexp.BaixaArquivos;
var
  I, nQtdFiles : integer;
  cFileName : string;

  cParm : string;
  Lista : TStringList;
begin
  Lista := TStringList.Create;

  FTP.List(Lista, cParm);
  nQtdFiles := FTP.ListResult.Count - 1;

  ProgressBar1.Min := 1;
  ProgressBar1.Max := nQtdFiles +1;

  for I := 0 to nQtdFiles do
  begin
    ProgressBar1.Position := I;
    cFileName := FTP.DirectoryListing.Items[I].FileName;
    DestinoL := DM.qParametroxml_destino.Text + cFileName;
    FTP.Get(cFileName , DestinoL, True, False);
  end;

end;

procedure Tfimpexp.acSairExecute(Sender: TObject);
begin
  if ftp.Connected then
   begin
    ftp.Disconnect;
    ftp.Quit;
   end;

Close;
end;

procedure Tfimpexp.acAtualizarExecute(Sender: TObject);
begin
   FileListBox1.Update;
end;

procedure Tfimpexp.acBaixarExecute(Sender: TObject);
begin
  ARQ := TStringList.Create;

 if ftp.Connected = false then
  FTP.Connect();

  BaixaArquivos;

  ftp.Disconnect;
  ftp.Quit;

 Screen.Cursor := crDefault;

 ShowMessage('Arquivos Baixados com Sucesso!');

 FileListBox1.Update;
end;

procedure Tfimpexp.acImportarExecute(Sender: TObject);
begin
  if rgTipo.ItemIndex = 0 then
  begin
    OpenDialog1.FileName := '';
    OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt := '*-nfe.XML';
    OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';

    if OpenDialog1.Execute then
    begin
      vCaminhoXML := opendialog1.FileName;
      Close;
    end;
  end
  else
  begin
    if FileListBox1.FileName = '' then
    begin
      Application.MessageBox('Escolha um Arquivo para ser Importado!', 'Atenção');
      FileListBox1.SetFocus;
    end
    else
    begin
      vCaminhoXML := FileListBox1.FileName ;
      Close;
    end;
  end;
end;

procedure Tfimpexp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 ARQ.Free;

 Action := caFree;
 fimpexp := nil;
end;

procedure Tfimpexp.rgTipoClick(Sender: TObject);
var
  vPastaFtp : string;
begin
  FileListBox1.Visible := (rgTipo.ItemIndex = 1);
  Label2.Visible       := (rgTipo.ItemIndex = 1);
  ProgressBar1.Visible := (rgTipo.ItemIndex = 1);
  XiButton1.Visible    := (rgTipo.ItemIndex = 1);
  XiButton2.Visible    := (rgTipo.ItemIndex = 1);
  Label1.Visible       := (rgTipo.ItemIndex = 1);

  if rgTipo.ItemIndex = 1 then //ftp
  begin
    fimpexp.Height := 520;
    panel1.Visible := true;
    panel1.Refresh;
    sleep(100);
    try
      FileListBox1.Directory := DM.qParametroxml_destino.asString;
      FileListBox1.Mask := '*.*'
    except
      panel1.Visible := false;
      Application.MessageBox('Caminho dos Arquivos Recebidos com Problemas. Verifique!', 'Atenção');
      panel1.Visible := false;
      exit;
    end;
    panel1.Visible := false;

    vPastaFtp := '/thrsodie/xml/'+ DM.qParametroidweb.AsString;
    try
      FTP.Disconnect;
      FTP.Username := DM.qParametroxml_ftp_usuario.Text;
      FTP.Host     := DM.qParametroxml_ftp.Text;
      FTP.Password := DM.qParametroxml_ftp_senha.Text;
      FTP.Port     := DM.qParametroxml_ftp_porta.AsInteger;
      if not FTP.Connected then
        FTP.Connect();
      FTP.ChangeDir(vPastaFtp);
    except
      Application.MessageBox('Problemas ao conectar com o FTP. Verifique (Parametros - FTP )!', 'Atenção');
    end;

  end
  else
    fimpexp.Height := 170;
end;


end.
