unit uCadEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, Mask, DBCtrls, Buttons, XiButton,
  ExtDlgs, Spin,IniFiles, System.Actions, System.ImageList, StrUtils;

type
  TfCadEmpresa = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label44: TLabel;
    DBEdit14: TDBEdit;
    Label45: TLabel;
    DBEdit43: TDBEdit;
    Label46: TLabel;
    DBEdit44: TDBEdit;
    DBLookupComboBox8: TDBLookupComboBox;
    DBComboBox4: TDBComboBox;
    TRAZAO: TWideStringField;
    TCNPJ: TWideStringField;
    TENDERECO: TWideStringField;
    TBAIRRO: TWideStringField;
    TCIDADE: TWideStringField;
    TUF: TWideStringField;
    TCEP: TWideStringField;
    TSITE: TWideStringField;
    TEMAIL: TWideStringField;
    TRESPONS: TWideStringField;
    TTELEFONE: TWideStringField;
    TFAX: TWideStringField;
    Tlogo: TWideStringField;
    Tex: TWideStringField;
    Tfantasia: TWideStringField;
    Tnum: TWideStringField;
    TidCidade: TIntegerField;
    TIE: TWideStringField;
    DBRadioGroup2: TDBRadioGroup;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    DBMemo4: TDBMemo;
    Label54: TLabel;
    DBGrid2: TDBGrid;
    DBCheckBox42: TDBCheckBox;
    DBCheckBox44: TDBCheckBox;
    DBCheckBox52: TDBCheckBox;
    DBCheckBox208: TDBCheckBox;
    DBCheckBox209: TDBCheckBox;
    DBRadioGroup3: TDBRadioGroup;
    Label89: TLabel;
    DBEdit71: TDBEdit;
    Label90: TLabel;
    DBEdit72: TDBEdit;
    Label61: TLabel;
    DBEdit46: TDBEdit;
    Label62: TLabel;
    DBEdit47: TDBEdit;
    Label63: TLabel;
    DBEdit48: TDBEdit;
    Label69: TLabel;
    DBEdit53: TDBEdit;
    Label64: TLabel;
    DBEdit49: TDBEdit;
    Label68: TLabel;
    DBMemo6: TDBMemo;
    Label65: TLabel;
    DBEdit50: TDBEdit;
    Label66: TLabel;
    DBEdit51: TDBEdit;
    Label67: TLabel;
    DBEdit52: TDBEdit;
    Label71: TLabel;
    DBEdit56: TDBEdit;
    DBCheckBox201: TDBCheckBox;
    ckTLS: TDBCheckBox;
    Label72: TLabel;
    DBEdit57: TDBEdit;
    TOBSNF: TWideMemoField;
    TESPECIE: TWideStringField;
    TMARCA: TWideStringField;
    TSERIE: TWideStringField;
    TTPEMPRESANFE: TIntegerField;
    TNFE_DUPLICATA: TWideStringField;
    TNFE: TWideStringField;
    TCFOP: TWideStringField;
    TCSOSN: TWideStringField;
    TCSOSN2: TWideStringField;
    TNFE_RAVE: TWideStringField;
    TNFE_NUMSERIE: TWideStringField;
    TNFE_EMAIL: TWideStringField;
    TNFE_SENHA: TWideStringField;
    TNFE_ASSUNTO: TWideStringField;
    TNFE_CORPOMSG: TWideMemoField;
    TNFE_DANFE: TWideStringField;
    TNFE_XML: TWideStringField;
    TNFE_CANCELADA: TWideMemoField;
    TNFE_COPIAEMAIL: TWideStringField;
    TTIPO_EMPRESA: TWideStringField;
    TTIPOIMP_NFE: TWideStringField;
    TSIMPLESN_FAIXA: TIntegerField;
    TSIMPLESN_TIPO: TWideStringField;
    TDEST_IMPOSTOS: TWideStringField;
    TMOSTRA_FONTEIBPT: TWideStringField;
    TSMTP: TWideStringField;
    TPORTA: TIntegerField;
    TEMAIL_SSL: TWideStringField;
    TEMAIL_TLS: TWideStringField;
    TNT003: TWideStringField;
    TNTCEST: TWideStringField;
    TPICMSINTERDEST: TFloatField;
    TCSC: TWideStringField;
    TIDCSC: TWideStringField;
    TMOSTRA_ST: TWideStringField;
    TPAIS: TIntegerField;
    TTIPOPESSOA: TWideStringField;
    Tiduf: TIntegerField;
    TNF_IMPOSTOPORNCM: TWideStringField;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    btLogo: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Temail_contador: TWideStringField;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    TtpAmbiente: TWideStringField;
    OpenDialog1: TOpenDialog;
    Label15: TLabel;
    DBText1: TDBText;
    DBRadioGroup1: TDBRadioGroup;
    Tnf_msgAproveitCredito: TWideStringField;
    Tnf_cfopprod_puxar_NF: TWideStringField;
    dCred: TDataSource;
    qCred: TZQuery;
    qCredID: TIntegerField;
    qCredPERIODO: TWideStringField;
    qCredALIQ: TFloatField;
    qCredIDEMITENTE: TIntegerField;
    uCred: TZUpdateSQL;
    Tid: TIntegerField;
    Tempresa_padrao: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    TabSheet4: TTabSheet;
    GroupBox1: TGroupBox;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label18: TLabel;
    DBEdit13: TDBEdit;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    Trem_email: TWideStringField;
    Trem_senha: TWideStringField;
    Trem_smtp: TWideStringField;
    Trem_porta: TIntegerField;
    Trem_ssl: TWideStringField;
    Trem_tls: TWideStringField;
    XiButton1: TXiButton;
    DBEdit16: TDBEdit;
    Label20: TLabel;
    Tim: TWideStringField;
    Label21: TLabel;
    DBEdit17: TDBEdit;
    Tauto_acesso_xml: TWideStringField;
    Label28: TLabel;
    DBEdit20: TDBEdit;
    Bevel1: TBevel;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit21: TDBEdit;
    TabSheet6: TTabSheet;
    Label25: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    TabSheet7: TTabSheet;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Trep_cfop_d: TIntegerField;
    Trep_cfop_f: TIntegerField;
    Trep_csosn: TIntegerField;
    TabSheet8: TTabSheet;
    Label27: TLabel;
    DBEdit25: TDBEdit;
    Label26: TLabel;
    DBEdit26: TDBEdit;
    Label31: TLabel;
    DBEdit27: TDBEdit;
    Tmdfe_xml: TWideStringField;
    Tmdfe_danfe: TWideStringField;
    Tmdfe_serie: TWideStringField;
    TabSheet9: TTabSheet;
    DBRadioGroup6: TDBRadioGroup;
    DBRadioGroup7: TDBRadioGroup;
    DBEdit28: TDBEdit;
    Label32: TLabel;
    DBEdit67: TDBEdit;
    Label33: TLabel;
    SpeedButton2: TSpeedButton;
    XiButton6: TXiButton;
    XiButton7: TXiButton;
    Bevel4: TBevel;
    DBCheckBox74: TDBCheckBox;
    DBEdit59: TDBEdit;
    SpeedButton1: TSpeedButton;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox72: TDBCheckBox;
    DBComboBox3: TDBComboBox;
    Label34: TLabel;
    Label35: TLabel;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    XiButton5: TXiButton;
    XiButton4: TXiButton;
    mLog: TMemo;
    Bevel3: TBevel;
    Tsalvarcfes: TWideStringField;
    TmodeloSat: TWideStringField;
    TCodigoAtivacaoSat: TWideStringField;
    TCFe_largura: TIntegerField;
    TCFe_copias: TIntegerField;
    TCFe_visualiza: TWideStringField;
    TCFe_logo: TWideStringField;
    Tnome_dll_sat: TWideStringField;
    OpenPictureDialog2: TOpenPictureDialog;
    ColorDialog1: TColorDialog;
    OpenDialog2: TOpenDialog;
    Tcfe_segundavia: TWideStringField;
    Tmsn_email_OC: TWideMemoField;
    DBMemo1: TDBMemo;
    Label36: TLabel;
    Label17: TLabel;
    procedure acInserirExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure acEditarExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure DBComboBox4Exit(Sender: TObject);
    procedure DBEdit47Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TidCidadeValidate(Sender: TField);
    procedure btLogoClick(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure qCredNewRecord(DataSet: TDataSet);
    procedure DBEdit12Exit(Sender: TObject);
    procedure XiButton1Click(Sender: TObject);
    procedure TBeforeOpen(DataSet: TDataSet);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure XiButton3Click(Sender: TObject);
    procedure XiButton5Click(Sender: TObject);
    procedure XiButton4Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure XiButton6Click(Sender: TObject);
    procedure XiButton7Click(Sender: TObject);
    procedure PageControl1DrawTab(Control: TCustomTabControl; TabIndex: Integer;
      const Rect: TRect; Active: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadEmpresa: TfCadEmpresa;

implementation

uses uDM, uFuncao, uCadContador;

{$R *.dfm}

procedure TfCadEmpresa.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfCadEmpresa.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
  qCred.close;
  qCred.ParamByName('emp').Value := Tid.Value;
  qCred.Open;

end;

procedure TfCadEmpresa.TBeforeOpen(DataSet: TDataSet);
begin
  T.ParamByName('pesq').Value := '%%';

end;

procedure TfCadEmpresa.TidCidadeValidate(Sender: TField);
begin
  inherited;
  TCIDADE.Value := DBLookupComboBox8.Text;
  if TIDcidade.text <> '' then
     Tiduf.Value   := strtoint(copy( TIDcidade.text,1,2));

end;

procedure TfCadEmpresa.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  Tid.Value                    := InsereCodigo('empresa', 'ID');
  Tex.Value                    := 'N';
  TNFE_DUPLICATA.Value         := 'N';
  TNFE.Value                   := 'S';
  TMOSTRA_FONTEIBPT.Value      := 'S';
  TMOSTRA_ST.Value             := 'N';
  TNT003.Value                 := 'N';
  TNTCEST.Value                := 'S';
  TNF_IMPOSTOPORNCM.Value      := 'N';
  Tnf_msgAproveitCredito.Value := 'N';
  Tnf_cfopprod_puxar_NF.Value  := 'S';
  TtpAmbiente.Value            := 'P';
  TTIPOIMP_NFE.Value           := 'R';
  TTPEMPRESAnfe.Value          := 1;
  TEMAIL_SSL.Value             := 'N';
  TEMAIL_TLS.Value             := 'N';
  TDEST_IMPOSTOS.Value         := 'N';
  TTipo_EMPRESA.Value          := 'N';
  Tempresa_padrao.Value        := 'N';
  TPAIS.Value := 1058;
end;

procedure TfCadEmpresa.XiButton1Click(Sender: TObject);
begin
  if (T.State in [dsInsert, dsEdit]) then
  begin
    Application.CreateForm(TfCadContador, fCadContador );
    fCadContador.ShowModal;
    fCadContador.Free;
    if (nvEmail <> '') and (nvEmail <> trim(Temail_contador.Value)) then
      if Application.MessageBox('Deseja atualizar email do contador?', 'Atenção', mb_yesno + mb_defbutton2 ) = idYes then
        Temail_contador.asString := nvEmail;
  end;

//  if trim(mLog.lines.text) <> '' then
//     mLog.Lines.Add(' ');
//
//  dm.AjustaACBrSAT(TID.asInteger);
//  dm.ACBrSAT1.Inicializar;
//  if not dm.ACBrSAT1.Inicializado then begin
//     mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Inicializar o SAT, Verifique!' );
//     exit;
//  end;
//  mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Consulta SAT: ' + dm.ACBrSAT1.ConsultarSAT );
//  dm.ACBrSAT1.DesInicializar;
end;

procedure TfCadEmpresa.XiButton3Click(Sender: TObject);
begin
  if trim(mLog.lines.text) <> '' then
     mLog.Lines.Add(' ');

  dm.AjustaACBrSAT(TID.asInteger);
  dm.ACBrSAT1.Inicializar;
   if not dm.ACBrSAT1.Inicializado then begin
      mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Inicializar o SAT, Verifique!' );
      exit;
   end;

  mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Consulta Status Operacional' );
  dm.ACBrSAT1.ConsultarStatusOperacional;

  with dm.ACBrSAT1.Status do begin
    mLog.Lines.Add('NSERIE.........: '+NSERIE);
    mLog.Lines.Add('LAN_MAC........: '+LAN_MAC);
    mLog.Lines.Add('STATUS_LAN.....: '+StatusLanToStr(STATUS_LAN));
    mLog.Lines.Add('NIVEL_BATERIA..: '+NivelBateriaToStr(NIVEL_BATERIA));
    mLog.Lines.Add('MT_TOTAL.......: '+MT_TOTAL);
    mLog.Lines.Add('MT_USADA.......: '+MT_USADA);
    mLog.Lines.Add('DH_ATUAL.......: '+DateTimeToStr(DH_ATUAL));
    mLog.Lines.Add('VER_SB.........: '+VER_SB);
    mLog.Lines.Add('VER_LAYOUT.....: '+VER_LAYOUT);
    mLog.Lines.Add('ULTIMO_CFe.....: '+ULTIMO_CFe);
    mLog.Lines.Add('LISTA_INICIAL..: '+LISTA_INICIAL);
    mLog.Lines.Add('LISTA_FINAL....: '+LISTA_FINAL);
    mLog.Lines.Add('DH_CFe.........: '+DateTimeToStr(DH_CFe));
    mLog.Lines.Add('DH_ULTIMA......: '+DateTimeToStr(DH_CFe));
    mLog.Lines.Add('CERT_EMISSAO...: '+DateToStr(CERT_EMISSAO));
    mLog.Lines.Add('CERT_VENCIMENTO: '+DateToStr(CERT_VENCIMENTO));
    mLog.Lines.Add('ESTADO_OPERACAO: '+EstadoOperacaoToStr(ESTADO_OPERACAO));
  end;
  dm.ACBrSAT1.DesInicializar;

end;

procedure TfCadEmpresa.XiButton4Click(Sender: TObject);
begin
  inherited;
  mLog.Lines.Clear;
end;

procedure TfCadEmpresa.XiButton5Click(Sender: TObject);
var
  arq : TStringList;
  linha : Integer;
  arquivo : string;
begin
  arq := TStringList.Create;

  if trim(mLog.lines.text) <> '' then
     mLog.Lines.Add(' ');

  dm.AjustaACBrSAT(TID.asInteger);
  dm.ACBrSAT1.Inicializar;
   if not dm.ACBrSAT1.Inicializado then begin
      mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Inicializar o SAT, Verifique!' );
      exit;
   end;
  arquivo := 'ExtrairLogs_'+formatdatetime('ddmmyyyy_hhmmss', now )+'.txt' ;
  mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Comando: Extrair Logs' );
  dm.ACBrSAT1.ExtrairLogs('SAT\' + arquivo );
  mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Log Salvo na pasta: ' +
        extractfilepath(Application.ExeName) + 'SAT\' + arquivo);

  sleep(1000);
  arq.LoadFromFile( extractfilepath(Application.ExeName) + 'SAT\' + arquivo);

  for linha := 0 to arq.Count -1 do begin
     mLog.Lines.Add( arq.Strings[Linha] );
  end;
  arq.free;
end;

procedure TfCadEmpresa.XiButton6Click(Sender: TObject);
begin
  inherited;
  if trim(mLog.lines.text) <> '' then
     mLog.Lines.Add(' ');

  dm.AjustaACBrSAT(TID.asInteger);
  dm.ACBrSAT1.Inicializar;
   if not dm.ACBrSAT1.Inicializado then begin
      mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Inicializar o SAT, Verifique!' );
      exit;
   end;

  mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Comando: Ativar SAT' );
  try
     dm.ACBrSAT1.AtivarSAT( 1, ansiString(dm.qParametrocnpj.Text), BuscaCodUf( dm.qParametroUf.Text) );
     mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Ativar SAT com sucesso' );
  except
     mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Ativar SAT' );
  end;
end;

procedure TfCadEmpresa.XiButton7Click(Sender: TObject);
begin
  inherited;
  if trim(mLog.lines.text) <> '' then
     mLog.Lines.Add(' ');

  dm.AjustaACBrSAT(TID.asInteger);
  dm.ACBrSAT1.Inicializar;
   if not dm.ACBrSAT1.Inicializado then begin
      mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Inicializar o SAT, Verifique!' );
      exit;
   end;

  mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Comando: Associar Assinatura' );
  try
     dm.ACBrSAT1.AssociarAssinatura(Ansistring(dm.tSHCNPJ.Text + dm.qParametrocnpj.Text), ansiString(dm.tSHAssinaturaAC.AsString) );
     mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Associado com Sucesso' );
  except
     mLog.Lines.Add(formatdatetime('dd/mm/yyyy hh:mm:ss', now ) + ' - Erro ao Associar Assinatura' );

  end;
end;

procedure TfCadEmpresa.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfCadEmpresa.acSalvarExecute(Sender: TObject);
var
  idd : string;
begin
  idd := Tid.Text;
  inherited;

  T.Close;
  T.Open;

  T.Locate('id', idd, []);
  if Tempresa_padrao.Value = 'S' then
     Execsql('update empresa set empresa_padrao = ''N'' where id <> ' + idd );

  if BuscarSQL('select id from empresa where empresa_padrao = ''S'' ') = 0 then
       Execsql('update empresa set empresa_padrao = ''S'' where id = 1 ' );

  T.Close;
  T.Open;

  DM.qEmpresa.Close;
  DM.qEmpresa.Open;

end;

procedure TfCadEmpresa.btLogoClick(Sender: TObject);
begin
  inherited;
  if not(T.state in [dsEdit, dsInsert]) then
     Exit;

  OpenPictureDialog1.InitialDir := ExtractFilePath(Application.ExeName) + '\';
  OpenPictureDialog1.Filter     := '*.jpg|*.jpg|*.jpeg|*.jpeg|*.ico|*.ico';
  OpenPictureDialog1.Execute;
  if OpenPictureDialog1.FileName <> '' then
    Tlogo.asstring := OpenPictureDialog1.FileName
end;

procedure TfCadEmpresa.DBComboBox4Exit(Sender: TObject);
begin
  inherited;
  if TUF.Text <> '' then
  begin
    DM.qCid.Close;
    DM.qCid.ParamByName('UF').Value := TUF.Text;
    DM.qCid.Open;
  end;
end;

procedure TfCadEmpresa.DBEdit12Exit(Sender: TObject);
 var
    inicio,fim,posicao:Integer;
begin
    if not (T.state in [dsEdit]) then
       Exit;

    {if (trim(DBEdit12.Text) = '') then begin
       Application.MessageBox('Email Incorreto','Atenção');
       exit;
    end;

    if (trim(DBEdit12.Text) <> '') and (pos('@',DBEdit12.Text) < 1 ) then begin
       Application.MessageBox('Email Incorreto','Atenção');
       exit;
    end;  }//Retirado Nilton 08/02/2023

    {inicio :=  pos('@',DBEdit12.Text)+1;
    fim := pos('.',copy(DBEdit12.Text,pos('@',DBEdit12.Text)+1,length(DBEdit12.Text)))-1;
        //AnsiIndexStr
        case AnsiIndexStr(UpperCase(copy(DBEdit12.Text,inicio,fim)), ['THRSOLUCOES', 'GMAIL','YAHOO','HOTMAIL','OUTLOOK','LIVE','BOL']) of
          0..1: begin
                DBEdit13.Text := 'smtp.'+ copy(DBEdit12.Text,inicio,length(DBEdit12.Text));
                DBEdit15.Text := '587';
             end;
          2: begin
                DBEdit13.Text := 'smtp.mail.yahoo.com';
                DBEdit15.Text := '587';
             end;
          3..5: begin
                DBEdit13.Text := 'smtp.live.com';
                DBEdit15.Text := '25';
                DBCheckBox3.Checked := false;
                DBCheckBox4.Checked := true;
                Trem_ssl.Value := 'S';
                Trem_tls.Value := 'N';
             end;
        else
             DBEdit13.Text := '';
             DBEdit15.Text := '';
        end;
        Trem_smtp.Value  := DBEdit13.Text;
        Trem_porta.Value := StrToInT(DBEdit15.Text);}


end;

procedure TfCadEmpresa.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);

end;

procedure TfCadEmpresa.DBEdit47Exit(Sender: TObject);
 var
    inicio,fim,posicao:Integer;
begin
    if not (T.state in [dsEdit]) then
       Exit;

    {if (trim(DBEdit47.Text) = '') then begin
       Application.MessageBox('Email Incorreto','Atenção');
       exit;
    end;

    if (trim(DBEdit47.Text) <> '') and (pos('@',DBEdit47.Text) < 1 ) then begin
       Application.MessageBox('Email Incorreto','Atenção');
       exit;
    end;}//retirado Nilton 08/02/2023

    inicio :=  pos('@',DBEdit47.Text)+1;
    fim := pos('.',copy(DBEdit47.Text,pos('@',DBEdit47.Text)+1,length(DBEdit47.Text)))-1;
        //AnsiIndexStr
        case AnsiIndexStr(UpperCase(copy(DBEdit47.Text,inicio,fim)), ['THRSOLUCOES', 'GMAIL','YAHOO','HOTMAIL','OUTLOOK','LIVE','BOL']) of
          0..1: begin
                DBEdit56.Text := 'smtp.'+ copy(DBEdit47.Text,inicio,length(DBEdit47.Text));
                DBEdit57.Text := '587';
             end;
          2: begin
                DBEdit56.Text := 'smtp.mail.yahoo.com';
                DBEdit57.Text := '587';
             end;
          3..5: begin
                DBEdit56.Text := 'smtp.live.com';
                DBEdit57.Text := '25';
                DBCheckBox201.Checked := false;
                ckTLS.Checked := true;
                TEMAIL_TLS.Value := 'S';
                TEMAIL_SSL.Value := 'N';
             end;
        else
             DBEdit56.Text := '';
             DBEdit57.Text := '';
        end;
        TSMTP.Value := DBEdit56.Text;
        if trim(dbedit57.text) <> '' then
          TPORTA.Value := StrToInT(DBEdit57.Text);

end;

procedure TfCadEmpresa.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadEmpresa.FormCreate(Sender: TObject);
begin
  inherited;
  T.Close;
  T.ParamByName('pesq').Value := '%%';
  T.Open;
  PageControl1.TabIndex := 0;

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := TUF.Text;
  DM.qCid.Open;

  if dm.qUserId.AsInteger <> 1 then
  begin
     DBRadioGroup1.Visible := false;
     acInserir.Enabled     := false;
     acExcluir.Enabled     := false;
     acInserir.Visible     := false;
     acExcluir.Visible     := false;
  end;

  PageControl1.Pages[4].TabVisible := (dm.qParametromod_mdfe.Text = 'S');

  Pagecontrol1.Pages[5].TabVisible := (dm.qParametroSAT.asString = 'S');

  // TabSheet8.TabVisible := (dm.qParametromod_mdfe.Text = 'S');

  // TabSheet9.TabVisible := (dm.qParametroSAT.asString = 'S');


end;

procedure TfCadEmpresa.PageControl1DrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  //inherited;

end;

procedure TfCadEmpresa.qCredNewRecord(DataSet: TDataSet);
begin
  inherited;
   qCredID.Value          := InsereCodigo('ALIQ_CREDITO', 'id');
   qCredIDEMITENTE.Value  := TId.Value; // empresa filial

end;

procedure TfCadEmpresa.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  if not(T.state in [dsEdit, dsInsert]) then
     Exit;

  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + '\';
  OpenDialog1.Filter     := '*.jpg|*.jpg|*.jpeg|*.jpeg|*.bmp|*.bmp|*.ico|*.ico|*.emf|*.emf|*.wmf|*.wmf';

  if OpenDialog1.Execute then
     TCFe_logo.Text := OpenDialog1.FileName;
end;

procedure TfCadEmpresa.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not(T.state in [dsEdit, dsInsert]) then
     Exit;

  OpenDialog1.InitialDir := ExtractFilePath(Application.ExeName) + '\';
  OpenDialog1.Filter     := '*.DLL';

  if OpenDialog1.Execute then
     Tnome_dll_sat.Text := Extractfilename(OpenDialog1.FileName);
end;

end.
