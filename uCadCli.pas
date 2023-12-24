unit uCadCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList, Vcl.ExtDlgs, XiButton,
  Vcl.OleCtnrs, ComObj, OleCtrls, SHDocVw, Vcl.Buttons, CheckDBGrid, IdContext,
  IdCustomHTTPServer, IdBaseComponent, IdComponent, IdCustomTCPServer,
  IdHTTPServer, RLFilters, RLPDFFilter, RLReport, ActiveX, ACBrIBGE, ACBrBase,
  ACBrSocket, ACBrCEP, IPPeerClient, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope;

type
  TfCadCli = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    lRG: TLabel;
    DBEdit10: TDBEdit;
    lCPF: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBComboBox4: TDBComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    Button2: TButton;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    DBComboBox1: TDBComboBox;
    Label25: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Bevel1: TBevel;
    TId: TIntegerField;
    TNome: TWideStringField;
    TEndereco: TWideStringField;
    TNum: TWideStringField;
    TBairro: TWideStringField;
    TCEP: TWideStringField;
    TCidade: TWideStringField;
    TUF: TWideStringField;
    Temail: TWideStringField;
    Trg: TWideStringField;
    Tcpf: TWideStringField;
    Ttel1: TWideStringField;
    Ttel2: TWideStringField;
    Ttel3: TWideStringField;
    Tobs: TWideMemoField;
    Tex: TIntegerField;
    TlimiteCredito: TFloatField;
    Tidcidade: TIntegerField;
    Ttppessoa: TWideStringField;
    Trazao: TWideStringField;
    Tcomple: TWideStringField;
    TEnd_entrega: TWideStringField;
    TNum_entrega: TWideStringField;
    TBairro_entrega: TWideStringField;
    TCep_entrega: TWideStringField;
    TidCidade_entrega: TIntegerField;
    TUF_entrega: TWideStringField;
    TComple_entrega: TWideStringField;
    Tdtnasc: TDateTimeField;
    Tdtcadastro: TDateTimeField;
    Tativo: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    Label51: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Tpais: TIntegerField;
    Label26: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Tpais_entrega: TIntegerField;
    Tcontribuinte: TWideStringField;
    TprodutorR: TWideStringField;
    Tidtabela: TIntegerField;
    rgTabelaPreco: TDBRadioGroup;
    Tidvendedor: TIntegerField;
    TabSheet3: TTabSheet;
    Tinadimplente: TWideStringField;
    Timagem_serasa: TWideStringField;
    DBCheckBox4: TDBCheckBox;
    DBText1: TDBText;
    Label76: TLabel;
    DBEdit63: TDBEdit;
    XiButton3: TXiButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Tdia_fecha: TIntegerField;
    qPais: TZQuery;
    tPaisID: TIntegerField;
    tPaisNOME: TWideStringField;
    dPais: TDataSource;
    qCid: TZQuery;
    qCidid: TIntegerField;
    qCidNome: TWideStringField;
    qCidUF: TWideStringField;
    dCid: TDataSource;
    ScrollBox1: TScrollBox;
    WebBrowser1: TWebBrowser;
    pRep: TPanel;
    Label28: TLabel;
    edPespRep: TEdit;
    Label29: TLabel;
    edFor: TEdit;
    edNomeFor: TEdit;
    gdFor: TDBGrid;
    Tidweb: TIntegerField;
    Tsincronizado: TWideStringField;
    Tcidade_entrega: TWideStringField;
    Tidcomercial: TIntegerField;
    Tidemp: TIntegerField;
    qTab: TZQuery;
    dTab: TDataSource;
    qTabId: TIntegerField;
    qTabDescricao: TWideStringField;
    qCial: TZQuery;
    dCial: TDataSource;
    qCialId: TIntegerField;
    qCialDescricao: TWideStringField;
    Tforma_pgto: TWideStringField;
    TabSheet4: TTabSheet;
    Label27: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label32: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label30: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label31: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBText2: TDBText;
    Label33: TLabel;
    DBComboBox2: TDBComboBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    qCon1: TZQuery;
    dCon1: TDataSource;
    qCon1id: TIntegerField;
    qCon1descricao: TWideStringField;
    qCon2: TZQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dCon2: TDataSource;
    Tidcond1: TIntegerField;
    Tidcond2: TIntegerField;
    TidTrans: TIntegerField;
    TidRedes: TIntegerField;
    qTra: TZQuery;
    IntegerField2: TIntegerField;
    dTra: TDataSource;
    qTranome: TWideStringField;
    qRed: TZQuery;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    dRed: TDataSource;
    DBComboBox3: TDBComboBox;
    Label38: TLabel;
    Tfoma_pgto2: TWideStringField;
    Tcontato: TWideStringField;
    Label39: TLabel;
    DBEdit22: TDBEdit;
    lLimite: TLabel;
    edLimite: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Bevel2: TBevel;
    ckContrib: TDBCheckBox;
    lWeb: TLabel;
    edweb: TDBText;
    Shape1: TShape;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    tabWeb: TTabSheet;
    DBText3: TDBText;
    Label40: TLabel;
    cbCond: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qCond: TZQuery;
    dCond: TDataSource;
    uCond: TZUpdateSQL;
    qCondId: TIntegerField;
    qCondIdCliente: TIntegerField;
    qCondIdCond: TIntegerField;
    qCondSincronizado: TWideStringField;
    qCondIdemp: TIntegerField;
    qCondIdweb: TIntegerField;
    qCondex: TIntegerField;
    qConddescricao: TWideStringField;
    CheckDBGrid1: TCheckDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBCheckBox3: TDBCheckBox;
    Tusa_codigo: TWideStringField;
    Label41: TLabel;
    DBComboBox5: TDBComboBox;
    TtipoFrete: TWideStringField;
    Label42: TLabel;
    DBLookupComboBox13: TDBLookupComboBox;
    dVend: TDataSource;
    Tidgerente: TIntegerField;
    cbWeb: TComboBox;
    SpeedButton1: TSpeedButton;
    ACBrCEP1: TACBrCEP;
    ACBrIBGE1: TACBrIBGE;
    SpeedButton2: TSpeedButton;
    Tend_entrega_nf: TWideStringField;
    DBCheckBox5: TDBCheckBox;
    Tsuframa: TWideStringField;
    Label43: TLabel;
    DBEdit23: TDBEdit;
    Panel1: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    qCid2: TZQuery;
    dCid2: TDataSource;
    cbCid2: TDBLookupComboBox;
    qCid2id: TIntegerField;
    qCid2nome: TWideStringField;
    qCid2uf: TWideStringField;
    cbUf2: TComboBox;
    Label46: TLabel;
    DBEdit24: TDBEdit;
    Label47: TLabel;
    DBEdit25: TDBEdit;
    Tcomi_representante: TFloatField;
    Tcomi_gerente: TFloatField;
    Label48: TLabel;
    DBEdit26: TDBEdit;
    Label49: TLabel;
    DBEdit27: TDBEdit;
    TIE_Entrega: TWideStringField;
    TCNPJ_Entrega: TWideStringField;
    btnCpf: TSpeedButton;
    Tinside_ipi: TWideStringField;
    DBCheckBox6: TDBCheckBox;
    qTipo: TZQuery;
    IntegerField4: TIntegerField;
    dTipo: TDataSource;
    qTipodescricao: TWideStringField;
    DBLookupComboBox14: TDBLookupComboBox;
    Label50: TLabel;
    TidTipo_Cliente: TIntegerField;
    qTipo2: TZQuery;
    dTipo2: TDataSource;
    Label52: TLabel;
    cbTipo: TDBLookupComboBox;
    Label53: TLabel;
    qTipo2id: TIntegerField;
    qTipo2descricao: TWideStringField;
    Tconsumidor_final: TWideStringField;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    TEmUso: TWideStringField;
    tabRelac: TTabSheet;
    qRelac: TZQuery;
    dsRelac: TDataSource;
    mmRelac: TMemo;
    BitBtn5: TBitBtn;
    qRelacinf: TWideMemoField;
    mmRel2: TMemo;
    Label54: TLabel;
    Label55: TLabel;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure TcpfValidate(Sender: TField);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure DBComboBox4Change(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure TidcidadeValidate(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit15Click(Sender: TObject);
    procedure DBEdit14Click(Sender: TObject);
    procedure DBEdit16Click(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure XiButton3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edForExit(Sender: TObject);
    procedure edNomeForChange(Sender: TObject);
    procedure edNomeForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPesqChange(Sender: TObject);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure acSalvarExecute(Sender: TObject);
    procedure TBeforePost(DataSet: TDataSet);
    procedure TidCidade_entregaValidate(Sender: TField);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ToolButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qCondNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure qCondAfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
    procedure IdHTTPServer1CommandGet(AContext: TIdContext;
      ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ACBrCEP1BuscaEfetuada(Sender: TObject);
    procedure ACBrIBGE1BuscaEfetuada(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure cbUf2Change(Sender: TObject);
    procedure cbCid2Click(Sender: TObject);
    procedure btnCpfClick(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit23Change(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure tabRelacShow(Sender: TObject);
    procedure qRelacinfGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    ord, campo : String;
    tipoCep : String;
    procedure ativaQ;
    procedure botoes(tp: boolean);
    procedure WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
    { Private declarations }
  public
    { Public declarations }
    Function SalvaFoto : String;
    procedure ExibeFoto;
  end;
  // Criada por Uelson
  const _url_consulta_cpnj = 'https://receitaws.com.br/v1/cnpj/%s';
var
  fCadCli: TfCadCli;

implementation

uses uFuncao, uDM, uImpressoes, StrUtils, uRelClientes, uEscolheRelCliente,
  uImpCliente, uBuscaCNPJ, uBuscaCPF, System.Net.HttpClient, Rest.Json ;

{$R *.dfm}

procedure TfCadCli.ativaQ;
begin

  T.close;
  T.sql.Clear;
  T.SQL.Add(' select * from Cliente where ex = 0 and '+
            ' (razao like :pesq or nome like :pesq or tel1 like :pesq or id like :pesq or cpf like :pesq) '+
            ' and ((:rr = 0) or (idvendedor = :rr)) '+
            ' and ((:es = ''TT'') or (uf = :es)) '+
            ' and ((:cd = ''TT'') or (idcidade = :cd)) '+
            ' and ((:tp = 0) or (idtipo_cliente = :tp)) '+
            ' order by ' + campo + '  '+ ord );
  if (pRep.Visible) then
  begin
    T.ParamByName('pesq').Value := '%' + trim(edPespRep.Text) + '%';
    if (trim(edFor.Text) <> '') then
      T.ParamByName('rr').Value := strtoint(edFor.text)
    else
      T.ParamByName('rr').Value := 0;
  end
  else
  begin
     T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
     T.ParamByName('rr').Value := 0;
  end;

  if cbUF2.ItemIndex = 0 then
     T.ParamByName('es').Value := 'TT'
  else
     T.ParamByName('es').Value := trim(cbUF2.Text);

  if cbCid2.Text = ' Todos' then
     T.ParamByName('cd').Value := 'TT'
  else
     T.ParamByName('cd').Value := qCid2id.text;

  T.ParamByName('tp').asInteger := qTipo2ID.asInteger;

  T.Open;

end;

procedure TfCadCli.BitBtn1Click(Sender: TObject);
begin
  if cbCond.Text = '' then
     Exit;

  if not (qCond.Locate('idcond', cbCond.KeyValue, [])) then
  begin
     qCond.Insert;
     qCondIdCond.Value := cbCond.KeyValue;
     qCond.Post;

     qCond.Close;
     qCond.ParamByName('id').Value := Tid.value;
     qCond.Open;
     cbCond.KeyValue := 0;
  end;
end;

procedure TfCadCli.BitBtn2Click(Sender: TObject);
begin
  if qCond.IsEmpty then
     Exit;

  qCond.Edit;
  qCondex.Value           := 1;
  qCondSincronizado.Value := 'N';
  qCond.Post;

  qCond.Close;
  qCond.ParamByName('id').Value := Tid.value;
  qCond.Open;
  cbCond.KeyValue := 0;

end;

procedure TfCadCli.BitBtn3Click(Sender: TObject);
begin
  qCon1.First;
  while qCon1.eof = false do
  begin
     if not (qCond.Locate('idcond', qCon1id.Value, [] )) then
     begin
        qCond.Insert;
        qCondIdCond.AsInteger := qCon1id.AsInteger;
        qCond.Post;
     end;
     qCon1.Next;
  end;

  qCond.Close;
  qCond.ParamByName('id').Value := Tid.AsInteger;
  qCond.Open;

end;

procedure TfCadCli.BitBtn4Click(Sender: TObject);
begin
  qCond.First;
  while qCond.eof = false do
  begin
    qCond.edit;
    qCondEx.value := 1;
    qCond.Post;

    qCond.Next;
  end;
  qCond.Close;
  qCond.ParamByName('id').Value := Tid.AsInteger;
  qCond.Open;

end;

procedure TfCadCli.BitBtn5Click(Sender: TObject);
var
  vRelac : string;
begin
  inherited;
  if (TId.AsString <> '') and  (mmRelac.Text <> '') then
  begin
    vRelac := datetostr(Date) + ' ' + timetostr(time) + ' '+ dm.qUserNome.asstring + #13#10+
              mmRelac.Lines.text ;
    ExecSQL(' insert into cliente_relacionamento (idCliente, inf) values ('+ TId.AsString + ',' + QuotedStr(vRelac) +') ');
    Application.MessageBox('Informações salvas!','Aviso');
    tabRelacShow(sender);
    mmRelac.Lines.Clear;
  end;
end;

procedure TfCadCli.acExcluirExecute(Sender: TObject);
begin
  Execsql('update cliente set sincronizado = ''N'' where id = ' + Tid.text );
  inherited;
  T.ApplyUpdates;
  sleep(100);

  try
        acSair.Enabled := false;
        atualizaWeb;
  finally
        acSair.Enabled := true;
  end;

  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;
  cbTipo.Enabled := true;

  AtivaQ;

end;

procedure TfCadCli.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm(TfEscolheRelCliente, fEscolheRelCliente);
  fEscolheRelCliente.ShowModal;
  case fEscolheRelCliente.nOp of
    0: begin
         if TId.AsString <>'' then
         begin
           Application.CreateForm(TfImpressoes, fImpressoes);
           fImpressoes.qCli.Close;
           fImpressoes.qCli.Params[0].AsInteger := TId.AsInteger;
           fImpressoes.qCli.Open;

           vEnv_EmailDest := Temail.text;
           vEnv_Report    := fImpressoes.rpIMpCliente;

           fImpressoes.rpIMpCliente.PreviewModal;
           fImpressoes.Free;
         end;
       end;

    1: begin
         Application.CreateForm(TfImpCliente, fImpCliente);
         vEnv_EmailDest := '';
         vEnv_Report    := fImpCliente.rpListaCliente;
         fImpCliente.rpListaCliente.PreviewModal;
         fImpCliente.Free;
       end;

    2,
    3,
    4: begin
         Application.CreateForm(TfImpCliente, fImpCliente);
         fImpCliente.qCli.close;
          if (pRep.Visible) then
          begin
            fImpCliente.qCli.ParamByName('pesq').Value := '%' + trim(edPespRep.Text) + '%';
            if (trim(edFor.Text) <> '') then
              fImpCliente.qCli.ParamByName('rr').Value := strtoint(edFor.text)
            else
              fImpCliente.qCli.ParamByName('rr').Value := 0;
          end
          else
          begin
             fImpCliente.qCli.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
             fImpCliente.qCli.ParamByName('rr').Value := 0;
          end;

          if cbUF2.ItemIndex = 0 then
             fImpCliente.qCli.ParamByName('es').Value := 'TT'
          else
             fImpCliente.qCli.ParamByName('es').Value := trim(cbUF2.Text);

          if cbCid2.Text = ' Todos' then
             fImpCliente.qCli.ParamByName('cd').Value := 'TT'
          else
             fImpCliente.qCli.ParamByName('cd').Value := qCid2id.text;

          fImpCliente.qCli.ParamByName('tp').asInteger := qTipo2ID.asInteger;

          fImpCliente.qCli.Open;

         vEnv_EmailDest := '';
         if fEscolheRelCliente.nOp = 2 then
         begin
           vEnv_Report    := fImpCliente.rpListaTipo;
           fImpCliente.rpListaTipo.PreviewModal;
         end
         else
         if fEscolheRelCliente.nOp = 3 then
         begin
           vEnv_Report    := fImpCliente.rpCPFCNPJ;
           fImpCliente.rpCPFCNPJ.PreviewModal;
         end
         else
         if fEscolheRelCliente.nOp = 4 then
         begin
           ExportExcel(fImpCliente.qCli,'Listagem de Cliente');
         end;

         fImpCliente.Free;
       end;



  end;
  fEscolheRelCliente.Free;

end;

procedure TfCadCli.acInserirExecute(Sender: TObject);
begin
// ver permissão
   
  if temPermissao(dm.qUserId.AsInteger, 'CAD_CLI_NOVO') = false then
   exit;

  tabRelac.Enabled := true;

  inherited;
  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(true);

  cbUf2.Enabled  := false;
  cbCid2.Enabled := false;
  cbTipo.Enabled := false;

  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

end;

procedure TfCadCli.acSalvarExecute(Sender: TObject);
var
  altera : String;
begin

  SelectNext(ActiveControl, false , false);

  if (Tend_entrega_nf.Value = 'S') or (DBCheckBox5.Checked) then
  begin
     if trim(Tend_entrega.Text) = '' then
     begin
        Application.MessageBox('Endereço de entrega não informado. Por favor, verifique!','Atenção');
        exit;
     end
     else
     if trim(TBairro_entrega.Text) = '' then
     begin
        Application.MessageBox('Bairro de entrega não informado. Por favor, verifique!','Atenção');
        exit;
     end
     else
     if trim(TNum_entrega.Text) = '' then
     begin
        Application.MessageBox('Número do endereço de entrega não informado. Por favor, verifique!','Atenção');
        exit;
     end
     else
     if trim(TCEP_entrega.Text) = '' then
     begin
        Application.MessageBox('CEP do endereço de entrega não informado. Por favor, verifique!','Atenção');
        exit;
     end
     else
     if trim(TUF_entrega.Text) = '' then
     begin
        Application.MessageBox('UF do endereço de entrega não informado. Por favor, verifique!','Atenção');
        exit;
     end
     else
     if not (TidCidade_entrega.AsInteger > 0) then
     begin
        Application.MessageBox('Cidade do endereço de entrega não informada. Por favor, verifique!','Atenção');
        exit;
     end;


    DM.qCid.Locate('id',   TidCidade_entrega.AsInteger, []);
    Tcidade_entrega.Text := DM.qCidNome.Text;

  end;

  if dm.qParametromod_gerente_cial.Text = 'S' then
  begin
     if (Tidvendedor.AsInteger > 0) and (Tidgerente.AsInteger > 0) then
     begin
        if Tidvendedor.AsInteger = Tidgerente.AsInteger then
        begin
           Application.MessageBox('Gerente comercial não pode ser o mesmo do representante. Por favor, verifique!','Atenção');
           PageControl1.ActivePageIndex := 3;
           Tidgerente.AsInteger := 0;
           DBLookupComboBox13.SetFocus;
           exit;
        end;
     end;
  end;

  if dm.qParametroclientes_repre.Value = 'S' then
  begin
     if not (Tidvendedor.AsInteger > 0) then
     Begin
        Application.MessageBox('Representante não informado. Por favor, verifique!','Atenção');
        PageControl1.ActivePageIndex := 3;
        DBLookupComboBox3.SetFocus;
        exit;
     End;
  end;


  if dm.qParametrofolha_separacao_mod_3.Text = 'S' then
   begin
     if not (Tidemp.AsInteger > 0) then
      Begin
        Application.MessageBox('Empresa não informada. Por favor, verifique!','Atenção');
        PageControl1.ActivePageIndex := 3;
        DBLookupComboBox7.SetFocus;
        exit;
      End;

     if not (Tidcomercial.AsInteger > 0) then
      Begin
        Application.MessageBox('Comercialização não informada. Por favor, verifique!','Atenção');
        PageControl1.ActivePageIndex := 3;
        DBLookupComboBox5.SetFocus;
        exit;
      End;

   end;

   //Separado do parametro folha_separacao_mod_3 agora tem parametro indivudual Nilton 01/06/2022
   if dm.qParametrocli_tabela_obrigatorio.asString = 'S' then
     begin
       if (not (Tidtabela.AsInteger > 0)) or (DBLookupComboBox6.Text = '')  then //
        Begin
          Application.MessageBox('Tabela de preço não informada. Por favor, verifique!','Atenção');
          PageControl1.ActivePageIndex := 3;
          DBLookupComboBox6.SetFocus;
          exit;
        End;
     end;
     //Separado do parametro folha_separacao_mod_3 agora tem parametro indivudual Nilton 01/06/2022
     if dm.qParametrocli_transp_obrigatorio.asString = 'S' then
     begin
       if not (TidTrans.AsInteger > 0) then
        Begin
          Application.MessageBox('Transportadora não informada. Por favor, verifique!','Atenção');   //
          PageControl1.ActivePageIndex := 3;
          DBLookupComboBox11.SetFocus;
          exit;
        End;
     end;
     //Separado do parametro folha_separacao_mod_3 agora tem parametro indivudual Nilton 01/06/2022
     if dm.qParametrocli_redespacho_obrigatorio.asString = 'S' then
     begin
       if not (TidRedes.AsInteger > 0) then
        Begin
          Application.MessageBox('Redespacho não informado. Por favor, verifique!','Atenção');   //
          PageControl1.ActivePageIndex := 3;
          DBLookupComboBox12.SetFocus;
          exit;
        End;
     end;
     //Separado do parametro folha_separacao_mod_3 agora tem parametro indivudual Nilton 01/06/2022
     if dm.qParametrocli_condicao_obrigatorio.asString = 'S' then
     begin
       if not (Tidcond1.AsInteger > 0) then
        Begin
          Application.MessageBox('Condição de pagamento não informada. Por favor, verifique!','Atenção');  //
          PageControl1.ActivePageIndex := 3;
          DBLookupComboBox9.SetFocus;
          exit;
        End;

       if not (Tidcond2.AsInteger > 0) and (dm.qParametropd_duas_cond.Text = 'S') then
        Begin
          Application.MessageBox('Condição de Pagamento 2 não informada. Por favor, verifique!','Atenção');  //
          PageControl1.ActivePageIndex := 3;
          DBLookupComboBox10.SetFocus;
          exit;
        End;
     end;
     //Separado do parametro folha_separacao_mod_3 agora tem parametro indivudual Nilton 01/06/2022
     if dm.qParametrocli_formapgto_obrigatorio.asString = 'S' then
     begin
       if not (Tforma_pgto.Text <> '') then
        Begin
          Application.MessageBox('Forma de pagamento não informada. Por favor, verifique!','Atenção');  //
          PageControl1.ActivePageIndex := 3;
          DBComboBox2.SetFocus;
          exit;
        End;

       if not (Tfoma_pgto2.Text <> '')  and (dm.qParametropd_duas_cond.Text = 'S') then
        Begin
          Application.MessageBox('Forma de pagamento 2 não informada. Por favor, verifique!','Atenção');   //
          PageControl1.ActivePageIndex := 3;
          DBComboBox3.SetFocus;
          exit;
        End;
     end;
     //fim separacao

   if dm.qParametrocli_cpf_obrigatorio.asString = 'S' then
   begin
     if trim(Tcpf.asString) = '' then
     begin
        if Ttppessoa.asString = 'F' then
          Application.MessageBox('CPF do cliente não informado. Por favor, verifique!','Atenção')
        else
          Application.MessageBox('CNPJ do cliente não informado. Por favor, verifique!','Atenção');
        PageControl1.ActivePageIndex := 1;
        dbedit11.SetFocus;
        exit;
     end;
   end;

   if dm.qParametrocli_cep_obrigatorio.asString = 'S' then
   begin
     if trim(TCEP.asString) = '' then
     begin
        Application.MessageBox('CEP não informado. Por favor, verifique!','Atenção');
        PageControl1.ActivePageIndex := 1;
        dbedit7.SetFocus;
        exit;
     end;
   end;




  if Tidtabela.IsNull then
     Tidtabela.AsInteger := 0;

  if Tidcomercial.IsNull then
     Tidcomercial.AsInteger := 0;


  if T.State in [dsInsert] then
     altera := 'N'    // insert
  else
     altera := 'S';  // edit

  if (TTPPessoa.asString = 'F')  then
    TRazao.asString := TNome.asString;

  inherited;

  if altera = 'N' then
     GravaLogCad(dm.qUserId.AsInteger, TId.AsInteger, 'CLIENTE', 'Cadastro Novo')
  else
  if altera = 'S' then
     GravaLogCad(dm.qUserId.AsInteger, TId.AsInteger, 'CLIENTE', 'Alteração do Cadastro');

  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(false);

     try
        acSair.Enabled := false;
        atualizaWeb;
     finally
        acSair.Enabled := true;
     end;

  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;
  cbTipo.Enabled := true;

  AtivaQ;

  tabRelac.Enabled := false;
end;

procedure TfCadCli.ACBrCEP1BuscaEfetuada(Sender: TObject);
var
   i : integer;
   mun, est : String;

begin

  if Application.MessageBox('Deseja atualizar o endereço, bairro, cidade e estado conforme pesquisa?','Confirmação', mb_yesno +mb_defbutton2 )=idno then
     Exit;

  if ACBrCEP1.Enderecos.Count < 1 then
    Application.MessageBox( 'Nenhum endereço encontrado', 'Atenção')
  else
   begin
     For I := 0 to ACBrCEP1.Enderecos.Count-1 do
     begin
       with ACBrCEP1.Enderecos[I] do
       begin
         mun             := Municipio;
         est             := UF;
         if tipoCep = 'N' then
         begin
           TENDERECO.Text  := Tipo_Logradouro +  ' ' + Logradouro;
           Tcomple.Text    := Complemento;
           //TCidade.Text    := upperCase(semacento(TCIDADE.Text));
           TUF.Text        := UF;
           TBairro.Text    := Bairro;
           DBComboBox4Change(Application);
         end
         else
         begin
           TEnd_entrega.Text      := Tipo_Logradouro +  ' ' + Logradouro;
           TComple_entrega.Text   := Complemento;
           //Tcidade_entrega.Text   := upperCase(semacento(TCIDADE.Text));
           TUF_entrega.Text       := UF;
           TBairro_entrega.Text   := Bairro;
           DBComboBox1Change(Application);
         end;
       end;
       ACBrIBGE1.BuscarPorNome(upperCase(semacento(Mun)), est, true );
     end;
   end;


end;

procedure TfCadCli.ACBrIBGE1BuscaEfetuada(Sender: TObject);
var
   ii : integer;
   mCep, mIb : String;
begin
         For II := 0 to ACBrIBGE1.Cidades.Count-1 do
         begin
           if tipoCep = 'N' then
           begin
              TIDCIDADE.AsInteger  := 0;
              TCidade.value        := '';
              mCep := upperCase(semacento(TCIDADE.Text));
              mIb  := upperCase(semacento(ACBrIBGE1.Cidades[II].Municipio));
              if mCep <> mIb  then
              begin
                 TIDCIDADE.AsInteger  := ACBrIBGE1.Cidades[II].CodMunicipio;
                 TCidade.value        := mIB;
              end;
           end
           else
           if tipoCep = 'C' then
           begin
              TidCidade_entrega.AsInteger  := 0;
              Tcidade_entrega.value        := '';
              mCep := semacento(upperCase(Tcidade_entrega.Text));
              mIb  := semacento(upperCase(ACBrIBGE1.Cidades[II].Municipio));
              if mCep <> mIb  then
              begin
                 TidCidade_entrega.AsInteger  := ACBrIBGE1.Cidades[II].CodMunicipio;
                 Tcidade_entrega.value        := mIB;
              end;
           end;
         end;

end;

procedure TfCadCli.acCancelarExecute(Sender: TObject);
begin
  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(false);

  inherited;

  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;
  cbTipo.Enabled := true;
  tabRelac.Enabled := false;
end;

procedure TfCadCli.acEditarExecute(Sender: TObject);
begin
  inherited;
  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(true);

  tabRelac.Enabled := true;

 cbUf2.Enabled  := false;
 cbCid2.Enabled := false;
 cbTipo.Enabled := false;

 DBEdit1.ReadOnly := True;
 DBEdit1.Color    := $00CEFDFC;
 DBEdit2.SetFocus;


end;

procedure TfCadCli.TcpfValidate(Sender: TField);
begin
  inherited;
 {if Tcpf.Text = '' then
  Exit;

  if Ttppessoa.Value = 'F' then
   begin
     if not CPF(Tcpf.Text) then
      begin
       Application.MessageBox('CPF Inválido!', 'Atenção');
       DBEdit11.SetFocus;
      end;
   end
  else
   begin
    if not CNPJ(Tcpf.Text) then
     begin
      Application.MessageBox('CNPJ Inválido!', 'Atenção');
      DBEdit11.SetFocus;
     end;
   end; }
end;

procedure TfCadCli.DBEdit14Exit(Sender: TObject);
begin
  inherited;
 if not (T.State in [dsinsert, dsedit]) then
  Exit;

  if (Length(Ttel1.Text) < 10) and (Length(Ttel1.Text) > 2)  then
   begin
    Application.MessageBox('Telefone incompleto!', 'Atenção');
    DBEdit14.SetFocus;
    Exit;
   end;

 IF (Ttel1.Text <> '') and (length(trim(Ttel1.Text)) > 2 ) THEN BEGIN
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select nome from cliente '+
                      ' where (Tel1 = '+QuotedStr(DBEdit14.Text) +
                      '    or Tel2 = '+QuotedStr(DBEdit14.Text) +
                      '    or Tel3 = '+QuotedStr(DBEdit14.Text) +
                      ' ) and id <> ' + Tid.text );
   DM.qSelect.Open;

   if DM.qSelect.RecordCount > 0 then
    Application.MessageBox(PChar('Telefone cadastrado para o cliente '+DM.qSelect.FieldByName('nome').Text), 'Aviso');
 end;

end;

procedure TfCadCli.DBEdit15Exit(Sender: TObject);
begin
  inherited;
 if not (T.State in [dsinsert, dsedit]) then
  Exit;

  if (Length(Ttel2.Text) < 10) and (Length(Ttel2.Text) > 2)  then
   begin
    Application.MessageBox('Telefone incompleto!', 'Atenção');
    DBEdit15.SetFocus;
    Exit;
   end;

 IF (Ttel2.Text <> '') and (length(trim(Ttel2.Text)) > 2 ) THEN BEGIN
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select nome from cliente '+
                    ' where (Tel1 = '+QuotedStr(DBEdit15.Text) +
                    '    or Tel2 = '+QuotedStr(DBEdit15.Text) +
                    '    or Tel3 = '+QuotedStr(DBEdit15.Text) +
                    ' ) and id <> ' + Tid.text );
   DM.qSelect.Open;

   if DM.qSelect.RecordCount > 0 then
    Application.MessageBox(PChar('Telefone cadastrado para o cliente '+DM.qSelect.FieldByName('nome').Text), 'Aviso');
 end;

end;

procedure TfCadCli.DBEdit16Exit(Sender: TObject);
begin
  inherited;
 if not (T.State in [dsinsert, dsedit]) then
  Exit;

  if (Length(Ttel3.Text) < 10) and (Length(Ttel3.Text) > 2)  then
   begin
    Application.MessageBox('Telefone incompleto!', 'Atenção');
    DBEdit16.SetFocus;
    Exit;
   end;

 IF (Ttel3.Text <> '') and (length(trim(Ttel3.Text)) > 2 ) THEN BEGIN
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select nome from cliente '+
                    ' where (Tel1 = '+QuotedStr(DBEdit16.Text) +
                    '    or Tel2 = '+QuotedStr(DBEdit16.Text) +
                    '    or Tel3 = '+QuotedStr(DBEdit16.Text) +
                    ' ) and id <> ' + Tid.text );
   DM.qSelect.Open;

   if DM.qSelect.RecordCount > 0 then
     Application.MessageBox(PChar('Telefone cadastrado para o cliente '+DM.qSelect.FieldByName('nome').Text), 'Aviso');
  end;
  
end;

procedure TfCadCli.DBEdit23Change(Sender: TObject);
begin
  inherited;

  if DBEdit23.text <> '' then
    dbcheckbox6.visible := true
  else
    dbcheckbox6.visible := false;

end;

procedure TfCadCli.DBGrid1TitleClick(Column: TColumn);
begin

 if ord = 'ASC' then
    ord := 'DESC'
  else
    ord := 'ASC';
 campo := Column.FieldName;
 ativaQ;

end;

procedure TfCadCli.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  inherited;
  if Tpais_entrega.Text <> '1058' then
  begin
     TUF_entrega.Value         := 'EX' ;
     DBComboBox1.Enabled       := False;
     DBComboBox1Change(Application);
     DBLookupComboBox1.Enabled := False;
  end
 else
  begin
    DBComboBox1.Enabled       := True;
    DBComboBox1Change(Application);
    DBLookupComboBox1.Enabled := True;
  end;

end;

procedure TfCadCli.DBLookupComboBox4CloseUp(Sender: TObject);
begin

  if TPAIS.Text <> '1058' then
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := False;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := False;
  end
 else
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := True;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := True;
  end;

end;

procedure TfCadCli.FormActivate(Sender: TObject);
begin
  inherited;
  qPais.close;
  qPais.open;

  qCial.close;
  qCial.open;

  qTab.close;
  qTab.open;

  dm.qEmpresa.close;
  dm.qEmpresa.open;

  qCon1.close;
  qCon1.open;

  qCon2.close;
  qCon2.open;

  qTra.close;
  qTra.open;

  qRed.close;
  qRed.open;

  qTipo.close;
  qTipo.open;

  


end;

procedure TfCadCli.FormCreate(Sender: TObject);
begin
  if dm.qParametroclientes_repre.Value = 'S' then
  begin
     edPesq.Visible  := false;
     label1.Visible  := false;
     pRep.Visible    := true;
  end
  else
  begin
     edPesq.Visible := true;
     label1.Visible := true;
     pRep.Visible   := false;
  end;
  campo := ' nome ';
  ord   := ' asc ';


  //Ajusta pessoas fisicas que estão com a razão social sem preencher Nilton 09/12/2021
  execSQL(' update cliente set razao = nome where tppessoa = ''F'' and coalesce(razao,'''') = '''' ');

  ativaQ;

  StatusTela(True);
  PageControl1.TabIndex := 0;

  if DM.qUser.Locate('Nome_1', 'OBSCLI', []) then
  begin
   if DM.qUserPermitido.Text = 'F' then
    begin
     Label18.Visible := False;
     DBMemo1.Visible := False;
    end;
  end;

  if dm.qParametrovenda_escolherpreco.AsString = 'N' then
    rgTabelaPreco.Visible := false;

  dm.qVend.close;
  dm.qVend.open;

  if dm.qParametropd_duas_cond.Text = 'N' then
  begin
     label35.Visible            := false;
     DBLookupComboBox10.Visible := false;
     label38.Visible            := false;
     DBComboBox3.Visible        := false;
  end;

  if dm.qParametromod_pedidosWeb.Text = 'N' then
  begin
     lWeb.Visible   := false;
     edWeb.Visible  := false;
     shape1.Visible := false;
     tabWeb.TabVisible := false;
  end;

  if dm.qParametromod_gerente_cial.Text = 'N' then
  begin
    DBLookupComboBox13.Visible := false;
    Label42.Visible            := false;
  end;

  FormasDBComboBox( DBcomboBox2 );
  FormasDBComboBox( DBcomboBox3 );

  cbUf2.ItemIndex := 0;
  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;
  cbTipo.Enabled := true;
  cbUf2Change(Application);

  cbCid2.ListSource.DataSet.Last;
  cbCid2.ListSource.DataSet.First;
  cbcid2.KeyValue := qCid2Id.Value;

  qTipo2.close;
  qTipo2.open;

  cbTipo.ListSource.DataSet.Last;
  cbTipo.ListSource.DataSet.First;
  cbTipo.keyValue := 0;

  tabRelac.Caption := 'Relacionamento';
end;

procedure TfCadCli.gdForKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
 begin
   Key := #0;

  if not DM.qPesq.IsEmpty then
   begin
    edFor.Text:= DM.qPesq.FIELDBYNAME('Id').Text;
    edForExit(Application);
    gdFor.Visible := False;
   end;
 end;

end;

procedure TfCadCli.IdHTTPServer1CommandGet(AContext: TIdContext;
  ARequestInfo: TIdHTTPRequestInfo; AResponseInfo: TIdHTTPResponseInfo);
begin
  inherited;
  AResponseInfo.ContentType := 'text/html';
  AResponseInfo.CharSet := 'utf-8';
  AResponseInfo.ContentStream := TMemoryStream.Create;
  TMemoryStream(AResponseInfo.ContentStream).LoadFromFile(ExtractFilePath(Application.ExeName) + 'pdf.html');

end;

procedure TfCadCli.PageControl1Change(Sender: TObject);
begin
  inherited;

 if T.state in [dsEdit, dsInsert] then
  xibutton3.Enabled := true
 else
  xibutton3.Enabled := false;

 if PageControl1.TabIndex = 2 then
  ExibeFoto;

end;

procedure TfCadCli.qCondAfterPost(DataSet: TDataSet);
begin
  inherited;
  qCond.ApplyUpdates;

end;

procedure TfCadCli.qCondNewRecord(DataSet: TDataSet);
begin
  qCondid.Value           := InsereCodigo('cliente_cond', 'Id');
  qCondIdCliente.Value    := Tid.Value;
  qCondSincronizado.Value := 'N';
  qCondIdemp.Value        := dm.qUseridemp.Value;
  qCondIdweb.Value        := 0;
  qCondex.Value           := 0;

end;

procedure TfCadCli.qRelacinfGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := qRelacinf.AsString;
end;

function TfCadCli.SalvaFoto: String;
 var NomeArq, nWeb : string;
     Sair, Posi : integer;

begin

  if OpenPictureDialog1.Execute then
  begin
   NomeArq := LowerCase(Trim(OpenPictureDialog1.FileName));
   Posi := pos('\',NomeArq);
   Delete(NomeArq,1, Posi);
   Posi := pos('\',NomeArq);

   if (Posi = 0) then
    Sair := 0
   else
    Sair := 1;

   while Sair = 1 do
    begin
     Delete(NomeArq,1,Posi);
     Posi := pos('\',NomeArq);

     if (Posi = 0) then
      sair := 0;

    end;

   NomeArq := TId.Text+trim( copy(NomeArq, pos('.',NomeArq), length(NomeArq)) ); // RightStr(NomeArq, 4);
   if FileExists(DM.qParametrocaminho_pasta_serasa.Text+NomeArq) then
      DeleteFile(DM.qParametrocaminho_pasta_serasa.Text+NomeArq);
   CopyFile(PCHAR(OpenPictureDialog1.FileName), PChar(DM.qParametrocaminho_pasta_serasa.Text+NomeArq), True);

   if not FileExists(DM.qParametrocaminho_pasta_serasa.Text+NomeArq) then
   begin
      WebBrowser1.Navigate('about:blank');
      WebBrowser1.Visible := false;
      NomeArq := '';
   end;
  end;
  Result := NomeArq;

end;

procedure TfCadCli.SpeedButton1Click(Sender: TObject);
var
  wb:integer;
begin
  if not (T.State in [dsEdit, dsInsert] ) then
     Exit;

  tipoCep := 'N';
  SelectNext(ActiveControl, True, True);
  if trim(Tcep.Text) <> '' then
  begin
     case cbWeb.itemindex  of
       0: wb := 3; //RepublicaVirtual
       1: wb := 10; //ViaCep
       2: wb := 8;  //Correios
       3: wb := 11; //CorreiosSIGEP
     end;
     ACBrCEP1.WebService := TACBrCEPWebService(wb);
     ACBrCEP1.BuscarPorCEP(TCEP.Text);
  end
  else
    Dbedit7.SetFocus;
end;

procedure TfCadCli.SpeedButton2Click(Sender: TObject);
var
  wb:integer;
begin
  if not (T.State in [dsEdit, dsInsert] ) then
     Exit;

  tipoCep := 'C';
  SelectNext(ActiveControl, True, True);
  if trim(TCep_entrega.Text) <> '' then
  begin
     case cbWeb.itemindex  of
       0: wb := 3; //RepublicaVirtual
       1: wb := 10; //ViaCep
       2: wb := 8;  //Correios
       3: wb := 11; //CorreiosSIGEP
     end;
     ACBrCEP1.WebService := TACBrCEPWebService(wb);
     ACBrCEP1.BuscarPorCEP(TCep_entrega.Text);
  end
  else
     Dbedit21.SetFocus;

end;

procedure TfCadCli.tabRelacShow(Sender: TObject);
begin
  inherited;
  if TId.AsString <> '' then
  begin
    qRelac.Close;
    qRelac.Params[0].AsInteger := TId.AsInteger;
    qRelac.Open;

    qRelac.First;
    mmRel2.Lines.Clear;
    while not qRelac.Eof do
    begin
      mmRel2.Lines.Add(qRelacinf.Text);
      mmRel2.Lines.Add('');
      qRelac.Next;
    end;
    SendMessage(mmRel2.Handle, WM_VSCROLL, SB_PAGEUP, 0);
  end;
end;

procedure TfCadCli.TNewRecord(DataSet: TDataSet);
begin
  inherited;
 TID.value            := InsereCodigo('cliente', 'ID' );
 TEx.Value            := 0;
 TlimiteCredito.value := 0;
 Ttppessoa.Value      := 'F';
 Tdtcadastro.Value    := Date;
 Tativo.Text          := 'S';
 Tcontribuinte.Value  := 'S';//'N';
 Tconsumidor_Final.Value := 'N';
 TprodutorR.AsString  := 'N';
 if dm.qParametromod_cad_tabela.Text = 'S' then
    Tidtabela.value      := 0
 else
    Tidtabela.value      := 1;
 Tpais.value           := 1058;
 Tpais_entrega.value   := 1058;
 TSincronizado.value   := 'S';
 Tusa_codigo.Value     := 'S';
 Tend_entrega_nf.Value := 'N';
 TInside_IPI.asString  := 'S';
 TEmUso.AsString       := 'N';

end;

procedure TfCadCli.ToolButton4Click(Sender: TObject);
begin

    Application.CreateForm(TfRelClientes, fRelClientes);
    fRelClientes.ShowModal;
    fRelClientes.Free;

end;

procedure TfCadCli.XiButton3Click(Sender: TObject);
begin
  inherited;
  OpenPictureDialog1.InitialDir := dm.qParametrocaminho_pasta_serasa.Text;
  Timagem_serasa.Value := SalvaFoto;
  ExibeFoto;

end;

procedure TfCadCli.DBEdit14Enter(Sender: TObject);
begin
  inherited;
 IF Ttel1.Text <> '' THEN
    DBEdit14.SelStart := 4
 else
    DBEdit14.SelStart := 1;
end;

procedure TfCadCli.DBEdit15Enter(Sender: TObject);
begin
  inherited;
 IF Ttel2.Text <> '' THEN
    DBEdit15.SelStart := 4
 else
    DBEdit15.SelStart := 1;
end;

procedure TfCadCli.DBEdit16Enter(Sender: TObject);
begin
  inherited;
 IF Ttel3.Text <> '' THEN
    DBEdit16.SelStart := 4
 else
    DBEdit16.SelStart := 1;

end;

procedure TfCadCli.TAfterScroll(DataSet: TDataSet);
begin
  DBRadioGroup1Click(Application);

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := TUF.Text;
  DM.qCid.Open;

  qCid.Close;
  qCid.ParamByName('UF').Value := DBComboBox1.Text;
  qCid.Open;

  if PageControl1.TabIndex = 2 then
  begin
     ExibeFoto;
     DBCheckBox4Click(Application);
  end;

  if tabWeb.TabVisible then
  begin
     qCond.Close;
     qCond.ParamByName('id').Value := TId.Value;
     qCond.open;
  end;

  if TSuframa.text <> '' then
    DBCheckbox6.visible := true
  else
    DBCheckbox6.visible := false;

  if PageControl1.TabIndex = 4 then //relacionamento
    tabRelacShow(Application);

end;

procedure TfCadCli.TBeforePost(DataSet: TDataSet);
begin
  inherited;
  TSincronizado.value  := 'N';

end;

procedure TfCadCli.DBCheckBox4Click(Sender: TObject);
begin
  inherited;
 { if DBCheckBox4.Checked then
  begin
    Label76.Visible := True;
    DBEdit63.Visible := True;
    XiButton3.Visible := True;
    ImgFoto.Visible := True;
  end
 else
  begin
    Label76.Visible := False;
    DBEdit63.Visible := False;
    XiButton3.Visible := False;
    ImgFoto.Visible := False;
  end;}
end;

procedure TfCadCli.DBComboBox1Change(Sender: TObject);
begin
  inherited;

  qCid.Close;
  qCid.ParamByName('UF').Value := DBComboBox1.Text;
  qCid.Open;

end;

procedure TfCadCli.DBComboBox4Change(Sender: TObject);
begin
  inherited;

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := DBComboBox4.Text;
  DM.qCid.Open;
end;

procedure TfCadCli.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;

  if DBRadioGroup1.ItemIndex = 0 then
   begin
    Label11.Visible := false;
    dbedit8.Visible := false;
    Label7.Visible  := true;
    dbedit6.Visible := true;
    Tcpf.EditMask := '###.###.###-##;0;_';
    lCPF.Caption := 'CPF';
    lRG.Caption := 'RG';
    ckContrib.Visible := false;
    label3.Caption := 'Nome';

    TCNPJ_Entrega.EditMask := '###.###.###-##;0;_';
    Label49.Caption := 'CPF';
    Label48.Caption := 'RG';
   end
  else
   begin
    label3.Caption  := 'Fantasia';
    Label7.Visible  := false;
    dbedit6.Visible := false;
    Label11.Visible := true;
    dbedit8.Visible := true;
    Tcpf.EditMask := '##.###.###/####-##;0;_';
    lCPF.Caption := 'CNPJ';
    lRG.Caption := 'IE';
    ckContrib.Visible := true;

    TCNPJ_Entrega.EditMask := '##.###.###/####-##;0;_';
    Label49.Caption := 'CNPJ';
    Label48.Caption := 'IE';
   end;

end;

procedure TfCadCli.edForExit(Sender: TObject);
begin
 if edFor.Text = '' then
     edNomeFor.SetFocus
    else
     begin
        DM.qPesq.close;
        DM.qPesq.SQL.Clear;
        DM.qPesq.SQL.Add('select id, nome from vendedor '+
                         ' where ex = 0 and ativo = ''S'' and ID = '+edFor.Text);
        DM.qPesq.Open;
        if DM.qPesq.RecordCount > 0 then
         begin
           edNomeFor.Text := DM.qPesq.FieldByName('nome').Text;
           gdFor.Visible := false;
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

procedure TfCadCli.edNomeForChange(Sender: TObject);
begin
 if (edNomeFor.Text <> '') then
   begin
    gdFor.Visible := True;

    gdFor.Left := pRep.left + edNomeFor.left;//edFor.Left;
    gdFor.Top  := pRep.top +  edNomeFor.Top + edNomeFor.Height + 1;//edFor.Top + edFor.Height + 1;


    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, nome from vendedor '+
                      ' where ex = 0 and nome like '+QuotedStr('%'+edNomeFor.Text+'%'));
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
     gdFor.Visible := False;
    end
  else
   gdFor.Visible := False;

end;

procedure TfCadCli.edNomeForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
IF Key = VK_DOWN THEN
 IF gdFor.Visible THEN
  gdFor.SetFocus;

end;

procedure TfCadCli.EdPesqChange(Sender: TObject);
begin
  ativaQ;

end;

procedure TfCadCli.ExibeFoto;
 var Foto, nWeb : String;

begin

 Foto := trim(DM.qParametrocaminho_pasta_serasa.Text) + Timagem_serasa.Text;
 WebBrowser1.Navigate('about:blank');

 if not FileExists(Foto) then
 begin
    exit;
 end
 else
 begin

    WebBrowser1.Navigate('about:blank');
    //nWeb := TrocaCaracter('file://'+ foto, '/', '\');
    nWeb := '<a href="'+TrocaCaracter('file://'+ foto, '/', '\')+'"   target="_blank">Clique aqui para Abrir PDF</a>';

    //WebBrowser1.Navigate2(nWeb );
    WBLoadHTML(WebBrowser1, nWeb);
    ScrollBox1.Refresh;


 end;

end;

procedure TfCadCli.TidcidadeValidate(Sender: TField);
begin
  inherited;
 TCidade.Value := DM.qCidNome.Value;
end;

procedure TfCadCli.TidCidade_entregaValidate(Sender: TField);
begin
  inherited;
  TCidade_entrega.Value := DM.qCidNome.Value;

end;

procedure TfCadCli.Button2Click(Sender: TObject);
begin
  inherited;
  if T.State in [dsinsert, dsedit] then
  begin
    TEnd_entrega.Text := TEndereco.Text;
    TNum_entrega.Text := TNum.Text;
    TBairro_entrega.Text := TBairro.Text;
    TComple_entrega.Text := Tcomple.Text;
    TUF_entrega.Text := TUF.Text;
    TCep_entrega.Text := TCEP.Text;
    DBComboBox1Change(Application);
    TidCidade_entrega.Value := Tidcidade.Value;
    TIE_Entrega.AsString := Trg.asstring;
    TCNPJ_Entrega.AsString := Tcpf.asstring;
  end;
end;

procedure TfCadCli.cbCid2Click(Sender: TObject);
begin
  ativaQ;

end;

procedure TfCadCli.cbTipoClick(Sender: TObject);
begin
  ativaQ;
end;

procedure TfCadCli.cbUf2Change(Sender: TObject);
begin
  qCid2.Close;
  if cbUf2.ItemIndex = 0 then
   qCid2.ParamByName('es').Value := 'TT'
  else
   qCid2.ParamByName('es').Value := cbUF2.Text;
  qCid2.Open;
  cbcid2.KeyValue := qCid2Id.Value;

  ativaQ;
end;

procedure TfCadCli.DBEdit15Click(Sender: TObject);
begin
 IF Ttel2.Text <> '' THEN
    DBEdit15.SelStart := 4
 else
    DBEdit15.SelStart := 1;

end;

procedure TfCadCli.DBEdit11Exit(Sender: TObject);
begin
  inherited;
  if Tcpf.Text = '' then
    Exit;

  if Ttppessoa.Value = 'F' then
   begin
     if not CPF(Tcpf.Text) then
      begin
       Application.MessageBox('CPF inválido!', 'Atenção');
       DBEdit11.SetFocus;
       exit;
      end;
   end
  else
   begin
    if not CNPJ(Tcpf.Text) then
     begin
      Application.MessageBox('CNPJ inválido!', 'Atenção');
      DBEdit11.SetFocus;
      exit;
     end;
   end;


   //Verifica se já cadastrado
   dm.qPesq.close;
   dm.qPesq.SQL.clear;
   if T.state in [dsInsert] then
    dm.qPesq.SQL.add('select concat(id, '' - '', nome) cli from cliente where cliente.cpf =  '+quotedStr(Tcpf.Text))
   else
    dm.qPesq.SQL.add('select concat(id, '' - '', nome) cli from cliente where cliente.id <> '+Tid.text+' and cliente.cpf =  '+quotedStr(Tcpf.Text));
   dm.qPesq.open;
   if dm.qPesq.RecordCount > 0 then
   begin
    if Ttppessoa.Value = 'F' then
     application.messagebox(pChar('CPF já cadastrado para o cliente '+dm.qPesq.FieldByName('cli').text+'.'), 'Atenção')
    else
     application.messagebox(pChar('CNPJ já cadastrado para o cliente '+dm.qPesq.FieldByName('cli').text+'.'), 'Atenção')
   end;
end;

procedure TfCadCli.DBEdit14Click(Sender: TObject);
begin
 IF Ttel1.Text <> '' THEN
    DBEdit14.SelStart := 4
 else
    DBEdit14.SelStart := 1;


end;

procedure TfCadCli.DBEdit16Click(Sender: TObject);
begin
 IF Ttel3.Text <> '' THEN
    DBEdit16.SelStart := 4
 else
    DBEdit16.SelStart := 1;

end;

procedure TfCadCli.botoes(tp:boolean);
begin
  BitBtn1.Enabled := tp;
  BitBtn2.Enabled := tp;
  BitBtn3.Enabled := tp;
  BitBtn4.Enabled := tp;
end;


procedure TfCadCli.btnCpfClick(Sender: TObject);
var
  i : integer;
  {lcnpj, lrespostaCNPJ : string;
  lJsonobj : TJSONObject; }
begin
  {lJsonobj := TJSONObject.Create;
  lcnpj := trim(DBEdit11.Text);
  RESTClient1.BaseURL := format(_url_consulta_cpnj,[lcnpj]);
  RESTClient1.SecureProtocols := [THTTPSecureProtocol.TLS12]  }
  if not (T.state in [dsEdit, dsInsert]) then
       Exit;

    case DBRadioGroup1.ItemIndex of
      0: begin
           Application.CreateForm(TfBuscaCPF, fBuscaCPF);
           fBuscaCPF.EditCNPJ.EditMask   := '';
           fBuscaCPF.EditCNPJ.text       := retornaNumeros(trim(dbedit11.text));
           fBuscaCPF.EditCNPJ.EditMask   := '000.000.000-00;1;_';
           fBuscaCPF.EditDtNasc.text     := trim(Tdtnasc.text);
           vTipoCli := 'C'; //Cliente
           fBuscaCPF.ShowModal;
           if tipoDados = 'S'  then
           begin
              for I := 1 to 20 do
              begin
                 if dados[I,1] <> '' then
                    T.FieldByName(uppercase(Dados[I,1])).text := Dados[I, 2];
              end;
           end;
           fBuscaCPF.Free;
         end;

      1: begin
           Application.CreateForm(TfBuscaCNPJ, fBuscaCNPJ);
           fBuscaCNPJ.EditCNPJ.EditMask   := '';
           fBuscaCNPJ.EditCNPJ.text       := retornaNumeros(trim(dbedit11.text));
           fBuscaCNPJ.EditCNPJ.EditMask   := '00.000.000/0000-00;1;_';
           vTipoCli := 'C'; //Cliente
           fBuscaCNPJ.ShowModal;
           if tipoDadosj = 'S'  then
           begin
              for I := 1 to 20 do
              begin
                 if dadosj[I,1] <> '' then
                    T.FieldByName(uppercase(Dadosj[I,1])).text := Dadosj[I, 2];
              end;
           end;
           fBuscaCNPJ.Free;
           DM.qCid.Close;
           DM.qCid.ParamByName('UF').Value := DBComboBox4.Text;
           DM.qCid.Open;

           TCidade.asString := DM.qCidNome.Value;
         end;
    end;


end;

procedure TfCadCli.WBLoadHTML(WebBrowser: TWebBrowser; HTMLCode: string) ;
var
   sl: TStringList;
   ms: TMemoryStream;
begin
   WebBrowser.Navigate('about:blank') ;
   while WebBrowser.ReadyState < READYSTATE_INTERACTIVE do
    Application.ProcessMessages;

   if Assigned(WebBrowser.Document) then
   begin
     sl := TStringList.Create;
     try
       ms := TMemoryStream.Create;
       try
         sl.Text := HTMLCode;
         sl.SaveToStream(ms) ;
         ms.Seek(0, 0) ;
         (WebBrowser.Document as IPersistStreamInit).Load(TStreamAdapter.Create(ms)) ;
       finally
         ms.Free;
       end;
     finally
       sl.Free;
     end;
   end;
end;


end.
