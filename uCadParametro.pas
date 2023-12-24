unit uCadParametro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,  ZAbstractDataset,
  ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg,
  ExtCtrls, Mask, DBCtrls, Buttons, XiButton, ExtDlgs, Spin,IniFiles,
  System.Actions, System.ImageList, StrUtils;

type
  TfCadParametro = class(TfCadPadrao)
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
    Tid: TIntegerField;
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
    TMenuAtualizado: TDateTimeField;
    TIE: TWideStringField;
    DBRadioGroup2: TDBRadioGroup;
    TabSheet3: TTabSheet;
    Label10: TLabel;
    DBMemo4: TDBMemo;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
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
    Tseq_reneg: TIntegerField;
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
    Ttipoambiente: TWideStringField;
    Tiduf: TIntegerField;
    TNF_IMPOSTOPORNCM: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    btLogo: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Temail_contador: TWideStringField;
    Configuracao: TTabSheet;
    Tprod_sem_montagem: TWideStringField;
    TimpPedido_2vias: TWideStringField;
    Tvenda_escolherpreco: TWideStringField;
    Tnf_cfopprod_puxar_NF: TWideStringField;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    Tnf_msgAproveitCredito: TWideStringField;
    Treduzir_romaneio: TWideStringField;
    Tcomi_vend: TWideStringField;
    Tbaixa_sem_troco: TWideStringField;
    Tvenda_sem_vecto: TWideStringField;
    TtpAmbiente: TWideStringField;
    Tvenda_foco_inicial: TIntegerField;
    Label15: TLabel;
    DBEdit11: TDBEdit;
    Tcaminho_pasta_serasa: TWideStringField;
    OpenDialog1: TOpenDialog;
    TabSheet4: TTabSheet;
    Tpesqproduto: TWideStringField;
    TmaxDesconto: TFloatField;
    GroupBox1: TGroupBox;
    DBRadioGroup1: TDBRadioGroup;
    DBRadioGroup4: TDBRadioGroup;
    Tmostrar_royalties: TWideStringField;
    Tdesconto_especial: TWideStringField;
    Tmostrar_por_comissao: TWideStringField;
    Tmostrar_cubagem: TWideStringField;
    Tcomissao_pagar: TWideStringField;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBCheckBox15: TDBCheckBox;
    Tusa_cond_porcentagem: TWideStringField;
    TPorCustoOpera: TFloatField;
    Tidweb: TIntegerField;
    Tclientes_repre: TWideStringField;
    DBCheckBox18: TDBCheckBox;
    Tmod_pedidosWeb: TWideStringField;
    Tfator_cubagem: TFloatField;
    Ttp_desc_ped: TWideStringField;
    GroupBox4: TGroupBox;
    DBRadioGroup5: TDBRadioGroup;
    Tmod_cad_tabela: TWideStringField;
    DBCheckBox19: TDBCheckBox;
    Ttempo_pedido: TIntegerField;
    GroupBox5: TGroupBox;
    Label20: TLabel;
    DBCheckBox20: TDBCheckBox;
    Label21: TLabel;
    Tgerar_contas_sep: TWideStringField;
    Tconta_com_desc: TIntegerField;
    Tconta_sem_desc: TIntegerField;
    cb1: TDBLookupComboBox;
    cb2: TDBLookupComboBox;
    dc1: TDataSource;
    dc2: TDataSource;
    TloginEspecial: TWideStringField;
    Tvenda_desc_margem: TWideStringField;
    Temail_rep_vencidas: TWideStringField;
    Tdias_vencidas: TIntegerField;
    DBCheckBox23: TDBCheckBox;
    Tp_mod_boleto: TWideStringField;
    Tfinan_expedicao: TWideStringField;
    Tpd_vincular_nf: TWideStringField;
    Tpd_cred_nf_avulsa: TWideStringField;
    Tnovafolhasep: TWideStringField;
    Timp_minuta: TWideStringField;
    Tpd_duas_cond: TWideStringField;
    Tpd_imp_matricial: TWideStringField;
    ScrollBox1: TScrollBox;
    GroupBox6: TGroupBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    DBEdit12: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label18: TLabel;
    DBEdit15: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Tmargem_minima: TFloatField;
    Tbloq_unit_venda: TWideStringField;
    Tbloq_alterar_venda: TWideStringField;
    Tnf_qtd_cx_separado: TWideStringField;
    Tfolha_separacao_mod_3: TWideStringField;
    GroupBox7: TGroupBox;
    GroupBox9: TGroupBox;
    Panel7: TPanel;
    Label26: TLabel;
    DBEdit19: TDBEdit;
    Label24: TLabel;
    Label25: TLabel;
    Tcli_atraso_dias: TIntegerField;
    Tcli_atraso: TWideStringField;
    Panel8: TPanel;
    DBComboBox1: TDBComboBox;
    Tpd_perm_alt_exp: TWideStringField;
    Tnao_usar_expedicao: TWideStringField;
    Tvias_subop_mesma_folha: TWideStringField;
    DBCheckBox39: TDBCheckBox;
    Tmod_sped: TWideStringField;
    CategoryPanelGroup1: TCategoryPanelGroup;
    CategoryPanel1: TCategoryPanel;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox38: TDBCheckBox;
    CategoryPanel4: TCategoryPanel;
    DBCheckBox9: TDBCheckBox;
    DBCheckBox22: TDBCheckBox;
    DBCheckBox26: TDBCheckBox;
    CategoryPanel2: TCategoryPanel;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox10: TDBCheckBox;
    DBCheckBox12: TDBCheckBox;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox14: TDBCheckBox;
    DBCheckBox21: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    DBCheckBox27: TDBCheckBox;
    DBCheckBox28: TDBCheckBox;
    DBCheckBox30: TDBCheckBox;
    DBCheckBox31: TDBCheckBox;
    DBCheckBox33: TDBCheckBox;
    DBCheckBox32: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox29: TDBCheckBox;
    DBCheckBox34: TDBCheckBox;
    DBCheckBox35: TDBCheckBox;
    DBCheckBox36: TDBCheckBox;
    DBCheckBox37: TDBCheckBox;
    CategoryPanel3: TCategoryPanel;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    DBCheckBox16: TDBCheckBox;
    BitBtn1: TBitBtn;
    DBCheckBox40: TDBCheckBox;
    Tnao_baixar_negativo: TWideStringField;
    DBCheckBox41: TDBCheckBox;
    DBCheckBox43: TDBCheckBox;
    Tmod_gerente_cial: TWideStringField;
    DBCheckBox45: TDBCheckBox;
    DBCheckBox46: TDBCheckBox;
    DBCheckBox47: TDBCheckBox;
    Tperg_imp_separacao: TWideStringField;
    Tminuta_des_mold_2: TWideStringField;
    Tetiqueta_nf_mod_2: TWideStringField;
    DBCheckBox48: TDBCheckBox;
    Tmsg_estoque_baixo: TWideStringField;
    DBCheckBox49: TDBCheckBox;
    Tperg_email_transp: TWideStringField;
    DBCheckBox50: TDBCheckBox;
    Tnf_sem_itens_zerados: TWideStringField;
    DBCheckBox51: TDBCheckBox;
    Ttraz_cond_em_branco: TWideStringField;
    Tmostrar_multiplo: TWideStringField;
    DBCheckBox53: TDBCheckBox;
    TfolhaSepSemValor: TWideStringField;
    DBCheckBox54: TDBCheckBox;
    DBCheckBox55: TDBCheckBox;
    TimpReciboFinan: TWideStringField;
    CategoryPanel5: TCategoryPanel;
    Tcompra_etq_sele: TWideStringField;
    Label56: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    Label57: TLabel;
    Label55: TLabel;
    DBEdit39: TDBEdit;
    DBCheckBox57: TDBCheckBox;
    Tprod_com_romaneio: TWideStringField;
    DBCheckBox58: TDBCheckBox;
    Tvenda_alterarUnitGrid: TWideStringField;
    Tvenda_frete: TWideStringField;
    DBCheckBox59: TDBCheckBox;
    DBCheckBox60: TDBCheckBox;
    Tvenda_justificar_cancel: TWideStringField;
    DBCheckBox61: TDBCheckBox;
    Tmostrar_btn_entregar: TWideStringField;
    DBCheckBox62: TDBCheckBox;
    TfolhaSeparacao_mod_5: TWideStringField;
    TImpressaoVenda_mod_5: TWideStringField;
    Tmod_mdfe: TWideStringField;
    DBCheckBox63: TDBCheckBox;
    DBCheckBox64: TDBCheckBox;
    Tmudar_cial_exp: TWideStringField;
    DBCheckBox65: TDBCheckBox;
    Tprod_por_pedido: TWideStringField;
    DBCheckBox66: TDBCheckBox;
    Tusa_com_padrao: TWideStringField;
    DBCheckBox67: TDBCheckBox;
    Timp_oc_mod_2: TWideStringField;
    DBCheckBox68: TDBCheckBox;
    Tgerar_cred_emp_origem: TWideStringField;
    DBCheckBox69: TDBCheckBox;
    Tvincula_usu_vend: TWideStringField;
    DBCheckBox70: TDBCheckBox;
    DBCheckBox71: TDBCheckBox;
    Tusa_abertura_cx: TWideStringField;
    Tsat: TWideStringField;
    Tbloquear_limite_exedido: TWideStringField;
    DBCheckBox72: TDBCheckBox;
    Tconsidera_perm_alt_unit: TWideStringField;
    Tpedir_senha_desc_venda: TWideStringField;
    DBCheckBox73: TDBCheckBox;
    DBCheckBox74: TDBCheckBox;
    Tcli_cep_obrigatorio: TWideStringField;
    Tcli_cpf_obrigatorio: TWideStringField;
    DBCheckBox75: TDBCheckBox;
    DBCheckBox76: TDBCheckBox;
    Panel9: TPanel;
    Label27: TLabel;
    Label29: TLabel;
    DBEdit20: TDBEdit;
    Tdias_calc_preco_compra: TIntegerField;
    Tproducao_fases: TWideStringField;
    Tusa_cx_master: TWideStringField;
    DBCheckBox78: TDBCheckBox;
    Tbloqueia_nf_lancada_fornecedor: TWideStringField;
    Tbloqueia_exped_cli_inadimp: TWideStringField;
    DBCheckBox80: TDBCheckBox;
    DBCheckBox81: TDBCheckBox;
    DBCheckBox77: TDBCheckBox;
    Tusa_referencia_base: TWideStringField;
    Panel10: TPanel;
    Label28: TLabel;
    Label30: TLabel;
    DBEdit21: TDBEdit;
    Tdias_carencia_bloqueio: TIntegerField;
    DBCheckBox82: TDBCheckBox;
    Tbloqueia_exped_lim_exedido: TWideStringField;
    DBCheckBox83: TDBCheckBox;
    Tfinanceiro_por_receb: TWideStringField;
    DBCheckBox84: TDBCheckBox;
    Tusar_setor: TWideStringField;
    DBCheckBox85: TDBCheckBox;
    Trecibo_chq_detal: TWideStringField;
    DBCheckBox86: TDBCheckBox;
    Tlimite_venda_liberar_com_senha: TWideStringField;
    DBCheckBox87: TDBCheckBox;
    DBCheckBox88: TDBCheckBox;
    DBCheckBox89: TDBCheckBox;
    DBCheckBox90: TDBCheckBox;
    DBCheckBox91: TDBCheckBox;
    Tcli_tabela_obrigatorio: TWideStringField;
    Tcli_condicao_obrigatorio: TWideStringField;
    Tcli_transp_obrigatorio: TWideStringField;
    Tcli_redespacho_obrigatorio: TWideStringField;
    Tcli_formapgto_obrigatorio: TWideStringField;
    DBCheckBox92: TDBCheckBox;
    Tmostra_orc_prog_prod: TWideStringField;
    Trel_estoque_usar_fator_conv: TWideStringField;
    CategoryPanel6: TCategoryPanel;
    DBCheckBox93: TDBCheckBox;
    DBCheckBox94: TDBCheckBox;
    DBCheckBox95: TDBCheckBox;
    DBCheckBox56: TDBCheckBox;
    Timprimir_desc_ficha: TWideStringField;
    DBCheckBox79: TDBCheckBox;
    TloteLetra: TWideStringField;
    TL_Letra: TWideStringField;
    TL_Num: TIntegerField;
    TL_Posicao: TIntegerField;
    TL_LetraAnterior: TWideStringField;
    pLote: TPanel;
    Label31: TLabel;
    DBEdit22: TDBEdit;
    Label32: TLabel;
    DBEdit23: TDBEdit;
    Label33: TLabel;
    DBEdit24: TDBEdit;
    Label34: TLabel;
    DBEdit25: TDBEdit;
    Label35: TLabel;
    DBEdit26: TDBEdit;
    TL_posicaoLetra: TWideStringField;
    Label36: TLabel;
    DBEdit27: TDBEdit;
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
    procedure DBCheckBox21Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBCheckBox79Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadParametro: TfCadParametro;

implementation

uses uDM, uMenu, uFuncao;

{$R *.dfm}

procedure TfCadParametro.acInserirExecute(Sender: TObject);
begin
 if T.RecordCount = 0 then
  inherited
 else
  acEditar.Execute;

  DBEdit1.SetFocus;
end;

procedure TfCadParametro.TabSheet4Show(Sender: TObject);
begin
  inherited;
  pLote.Visible := (TloteLetra.AsString = 'S');
  DBEdit24.Enabled := false;
end;

procedure TfCadParametro.TidCidadeValidate(Sender: TField);
begin
  inherited;
  TCIDADE.Value := DBLookupComboBox8.Text;
  if TIDcidade.text <> '' then
     Tiduf.Value   := strtoint(copy( TIDcidade.text,1,2));

end;

procedure TfCadParametro.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  Tex.Value := 'N';
end;

procedure TfCadParametro.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.SetFocus;
end;

procedure TfCadParametro.acSalvarExecute(Sender: TObject);
begin
  inherited;
 DM.qParametro.Close;
 DM.qParametro.Open; 
end;

procedure TfCadParametro.BitBtn1Click(Sender: TObject);
var
  tp : boolean;
begin

  if bitbtn1.Caption = 'Agrupar Todos' then
  begin
     bitbtn1.Caption := 'Expandir Todos';
     tp := true;
  end
  else
  if bitbtn1.Caption = 'Expandir Todos' then
  begin
     bitbtn1.Caption := 'Agrupar Todos';
     tp := false;
  end;
  bitbtn1.Refresh;

  CategoryPanel1.Collapsed := tp;
  CategoryPanel2.Collapsed := tp;
  CategoryPanel3.Collapsed := tp;
  CategoryPanel4.Collapsed := tp;

end;

procedure TfCadParametro.btLogoClick(Sender: TObject);
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

procedure TfCadParametro.DBCheckBox21Click(Sender: TObject);
begin
  if not(T.state in [dsEdit, dsInsert]) then
    Exit;

  if DBCheckBox21.Checked = true then
  begin
     Ttp_desc_ped.Value := 'P';
     DBRadioGroup5.Enabled := false;
  end
  else
     DBRadioGroup5.Enabled := true;


end;

procedure TfCadParametro.DBCheckBox79Click(Sender: TObject);
begin
  inherited;
  pLote.Visible := (DBCheckBox79.Checked);
end;

procedure TfCadParametro.DBComboBox4Exit(Sender: TObject);
begin
  inherited;
  if TUF.Text <> '' then
  begin
    DM.qCid.Close;
    DM.qCid.ParamByName('UF').Value := TUF.Text;
    DM.qCid.Open;
  end;
end;

procedure TfCadParametro.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula(key);

end;

procedure TfCadParametro.DBEdit47Exit(Sender: TObject);
 var
    inicio,fim,posicao:Integer;
begin
    if not (T.state in [dsEdit]) then
       Exit;

    if (trim(DBEdit47.Text) = '') then begin
       Application.MessageBox('Email Incorreto','Atenção');
       exit;
    end;

    if (trim(DBEdit47.Text) <> '') and (pos('@',DBEdit47.Text) < 1 ) then begin
       Application.MessageBox('Email Incorreto','Atenção');
       exit;
    end;

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
                dm.qParametroEMAIL_TLS.Value := 'S';
                dm.qParametroEMAIL_SSL.Value := 'N';
             end;
        else
             DBEdit56.Text := '';
             DBEdit57.Text := '';
        end;
        dm.qParametroSMTP.Value := DBEdit56.Text;
        dm.qParametroPORTA.Value := StrToInT(DBEdit57.Text);



end;

procedure TfCadParametro.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCadParametro.FormCreate(Sender: TObject);
begin
  inherited;

  DM.qParametro.Close;
  DM.qParametro.Open;
  PageControl1.TabIndex := 0;

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := TUF.Text;
  DM.qCid.Open;

  pagecontrol1.Pages[3].TabVisible := (dm.qUserId.AsInteger = 1);
  pagecontrol1.Pages[4].TabVisible := false;  // mudou para o cadastro de empresa

  dm.qConta.Close;
  dm.qConta.Open;
  dm.qConta.First;
  cb1.ListSource.DataSet.Last;
  cb2.ListSource.DataSet.Last;
  cb1.ListSource.DataSet.First;
  cb2.ListSource.DataSet.First;

  CategoryPanelGroup1.CollapseAll;

end;

end.
