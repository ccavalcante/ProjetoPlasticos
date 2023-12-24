unit uCnsBoletos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls, DB,  Grids,
  DBGrids,  ComCtrls, ActnList, XiButton,  Mask,
  CheckDBGrid, RLBoleto, DBCtrls, RLSaveDialog, RLFilters, RLPDFFilter,
  Gauges, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, FileCtrl, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, System.Actions, Datasnap.DBClient, IdExplicitTLSClientServerBase;

type
  TfCnsBoletos = class(TForm)
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    dBol: TDataSource;
    Label3: TLabel;
    Shape1: TShape;
    ActionList1: TActionList;
    acImprimir: TAction;
    acSair: TAction;
    acOk: TAction;
    Label1: TLabel;
    edDI: TMaskEdit;
    edDF: TMaskEdit;
    Label7: TLabel;
    edDiV: TMaskEdit;
    edDfV: TMaskEdit;
    Label8: TLabel;
    edRemessa: TEdit;
    Label9: TLabel;
    edDis: TEdit;
    edDesDis: TEdit;
    XiButton3: TXiButton;
    Label12: TLabel;
    gdPesq: TDBGrid;
    RLBTitulo1: TRLBTitulo;
    Label2: TLabel;
    edNosso: TEdit;
    OBS: TDBMemo;
    XiButton4: TXiButton;
    acListagem: TAction;
    Label4: TLabel;
    cbBaixa: TComboBox;
    RLBRemessa1: TRLBRemessa;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    CheckDBGrid1: TCheckDBGrid;
    CheckDBGrid2: TCheckDBGrid;
    Panel1: TPanel;
    acGerarRemessa: TAction;
    dBanco: TDataSource;
    CBBANCO: TDBLookupComboBox;
    DBText1: TDBText;
    cktodos: TCheckBox;
    Label5: TLabel;
    acEnviaBol: TAction;
    FileListBox1: TFileListBox;
    ltotalReg: TLabel;
    RLPDFFilter1: TRLPDFFilter;
    Banco: TZQuery;
    qBol: TZQuery;
    Image1: TImage;
    qBolnome: TWideStringField;
    qBoltppessoa: TWideStringField;
    qBolcpf: TWideStringField;
    qBolcidade: TWideStringField;
    qBolendereco: TWideStringField;
    qBolbairro: TWideStringField;
    qBolcep: TWideStringField;
    qBoluf: TWideStringField;
    qBolbagencia: TWideStringField;
    qBolbconta: TWideStringField;
    qBolbcontad: TWideStringField;
    qBolbcedente: TWideStringField;
    qBolbcedented: TWideStringField;
    qBolbconvenio: TWideStringField;
    qBolbcarteira: TWideStringField;
    qBoldescricao: TWideStringField;
    qBolidCli: TIntegerField;
    qBolidRec: TIntegerField;
    qBoldesbaixa: TWideStringField;
    qBolID: TIntegerField;
    qBolIDCLIENTE: TIntegerField;
    qBolTPCLIENTE: TWideStringField;
    qBolIDTHR030: TIntegerField;
    qBolBANCO: TIntegerField;
    qBolSEQ_REMESSA: TIntegerField;
    qBolNOSSO_NUMERO: TWideStringField;
    qBolNUMERO_DOC: TWideStringField;
    qBolEMISSAO: TDateTimeField;
    qBolVENCI: TDateTimeField;
    qBolVALOR: TFloatField;
    qBolBAIXADO: TWideStringField;
    qBolIDCONTA: TIntegerField;
    qBolX: TWideStringField;
    qBolSTATUS: TWideStringField;
    qBolNN_SICREDI: TWideStringField;
    qBoltitular: TWideStringField;
    qBolbtipo: TWideStringField;
    qBoljuros: TFloatField;
    BancoID: TIntegerField;
    BancoTITULAR: TWideStringField;
    BancoAG: TWideStringField;
    BancoCC: TWideStringField;
    BancoBCO: TWideStringField;
    BancoTIPO: TWideStringField;
    BancoIDUSU: TIntegerField;
    BancoUSABOLETO: TWideStringField;
    BancoBTIPO: TWideStringField;
    BancoBAGENCIA: TWideStringField;
    BancoBCONTA: TWideStringField;
    BancoBCONTAD: TWideStringField;
    BancoBCEDENTE: TWideStringField;
    BancoBCEDENTED: TWideStringField;
    BancoBCONVENIO: TWideStringField;
    BancoBCARTEIRA: TWideStringField;
    BancoBSEQ_REMESSA: TIntegerField;
    BancoMSG_BOLETO: TWideMemoField;
    BancoNOMECEDENTE: TWideStringField;
    BancoCNPJCEDENTE: TWideStringField;
    BancoDIASPROT: TIntegerField;
    BancoMULTA: TFloatField;
    BancoJUROS: TFloatField;
    BancoNomeBanco: TWideStringField;
    qBolbobs: TWideMemoField;
    qBolnumero: TWideStringField;
    Bancoendcedende: TWideStringField;
    Banconumcedende: TWideStringField;
    Bancobaicedende: TWideStringField;
    Bancocidcedende: TWideStringField;
    Bancoufcedende: TWideStringField;
    Bancocepcedende: TWideStringField;
    BancoBCNAB: TIntegerField;
    qBolBCNAB: TIntegerField;
    BancotipoMulta: TWideStringField;
    BancotipoProtesto: TWideStringField;
    qBolIdvenda: TIntegerField;
    CDS: TClientDataSet;
    dCDS: TDataSource;
    CDSidvenda: TIntegerField;
    CDSlinha: TStringField;
    CDSarquivo: TStringField;
    btnBol: TXiButton;
    qBolidvendedor: TIntegerField;
    qBoldocumento: TWideStringField;
    IdFTP1: TIdFTP;
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
    qEmpWebEmailPedido: TWideStringField;
    qEmpWebftp_path_pdf: TWideStringField;
    pA: TPanel;
    Gauge1: TGauge;
    CDSidweb: TIntegerField;
    RLBTitulo2: TRLBTitulo;
    qBolmulta: TFloatField;
    qBoltipomulta: TWideStringField;
    qBoldiasprot: TIntegerField;
    qBolbagenciad: TWideStringField;
    BancoBAGENCIAD: TWideStringField;
    lFantasia: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acSairExecute(Sender: TObject);
    procedure ValorTtl;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acOkExecute(Sender: TObject);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure edDesDisChange(Sender: TObject);
    procedure edDisExit(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure Gerar2via;
    procedure acImprimirExecute(Sender: TObject);
    procedure edDesDisKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDIChange(Sender: TObject);
    procedure edDFChange(Sender: TObject);
    procedure edDiVChange(Sender: TObject);
    procedure edDfVChange(Sender: TObject);
    procedure cbBancoClick(Sender: TObject);
    procedure edRemessaChange(Sender: TObject);
    procedure edNossoChange(Sender: TObject);
    procedure acListagemExecute(Sender: TObject);
    procedure cbBaixaClick(Sender: TObject);
    procedure edDisChange(Sender: TObject);
    procedure edRevChange(Sender: TObject);
    procedure acGerarRemessaExecute(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure GravaReEnviados;
    procedure cktodosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CheckDBGrid1TitleClick(Column: TColumn);
    procedure CheckDBGrid2TitleClick(Column: TColumn);
    procedure edRem1KeyPress(Sender: TObject; var Key: Char);
    procedure edRem2KeyPress(Sender: TObject; var Key: Char);
    procedure btnBolClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
    numRemessa :integer;
    bytesToTransfer :integer;
    tipoOrd :string;
    procedure msg_tela(m: String);
    procedure subirDocs;
    procedure envia_pdf;
  public
    { Public declarations }
    nnumeroR, nnumeroD, Ordenacao :string;
  end;

var
  fCnsBoletos: TfCnsBoletos;
  tipoGerar : string;
  remes : integer;
  enviando: string;
  
implementation

uses uDM, uFuncao, uCnsBoletos_I;

{$R *.dfm}

procedure TfCnsBoletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fCnsBoletos := nil;
end;

procedure TfCnsBoletos.acSairExecute(Sender: TObject);
begin
   close;
end;

procedure TfCnsBoletos.ValorTtl;
//var  vt: real;
Begin

  { vt := 0;
   if (qRec.Active = true) and (qRec.IsEmpty = false) then
    begin
     DBGrid2.DataSource := nil;
     qRec.FetchAll;
     qRec.First;
     while qRec.Eof = false do begin
      vt := vt + qRecValor.Value;
      qRec.Next;
     end;
     DbGrid2.DataSource := dRec;
    end;

    //edTotal.text := FormatFloat('###,###,###,##0.00', vt );

   }
end;



procedure TfCnsBoletos.btnBolClick(Sender: TObject);
begin
   envia_pdf;
end;

procedure TfCnsBoletos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not (ActiveControl is TDBGrid) then
  begin
   Key := #0;
   SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfCnsBoletos.FormShow(Sender: TObject);
begin
 if enviando = 'N'  then begin
  pageControl1.ActivePageIndex := 0;

  banco.Open;
  cbbanco.ListSource.DataSet.Last;
  cbbanco.ListSource.DataSet.first;
  cbbanco.KeyValue := bancoid.Value;
 end;

end;

procedure TfCnsBoletos.acOkExecute(Sender: TObject);
var
   sql : string;
begin
  if Ordenacao = '' then
   Ordenacao := ' 1 ';

  if tipoOrd = '' then
   tipoOrd := 'desc';

  xibutton3.Enabled := false;

  sql := ' select cliente.razao nome, cliente.tppessoa, cliente.cpf, cliente.cidade,'+
         ' cliente.endereco, cliente.bairro, cliente.cep, cliente.uf, cliente.num numero , '+
         ' conta.bagencia, conta.bagenciad, conta.bconta, conta.bcontad, conta.bcedente, '+
         ' conta.bcedented, conta.bconvenio, conta.bcarteira, '+
         ' case when conta.bco = ''1''   then ''BRASIL   '' '+
         '      when conta.bco = ''104'' then ''CAIXA    '' '+
         '      when conta.bco = ''341'' then ''ITAU     '' '+
         '      when conta.bco = ''237'' then ''BRADESCO '' '+
         '      when conta.bco = ''033'' then ''SANTANDER'' '+
         '      when conta.bco = ''748'' then ''SICRED   '' '+
         '      when conta.bco = ''756'' then ''SICOOB   '' '+
         ' end descricao, boleto.idcliente idCli, boleto.idthr030 idRec, case '+
         '      when boleto.baixado = ''S'' then ''SIM'' else ''NÃO'' end desbaixa, '+
         ' boleto.* , conta.titular, conta.btipo, conta.juros, conta.msg_boleto bobs, conta.bcnab '+
         ' , case when creceber.tipo = ''V'' then creceber.idvenda else 0 end Idvenda ' +
         ' , cliente.idvendedor, creceber.documento, conta.multa, conta.tipomulta, '+
         ' conta.diasprot '+
         ' from boleto '+
         ' left join cliente on cliente.id = boleto.idcliente '+
         ' left join conta on conta.id = boleto.idconta '+
         ' LEFT join creceber on creceber.id = boleto.idthr030 '+
         ' where ((:bco = 0 ) or (boleto.idconta = :bco)) and '+
         '       ((:dis = 0 ) or (cliente.id = :dis )) and '+
         '       ((:de = 0 ) or (boleto.emissao between :die and :dfe)) and '+
         '       ((:dv = 0 ) or (boleto.venci between :div and :dfv)) and '+
         '  ((:nn = 0 ) or ((boleto.nosso_numero = :nn) or (boleto.nn_sicredi = :nn))  ) and ' +
         '  ((:bx = ''T'' ) or (boleto.baixado = :bx )) ' ;
         if pagecontrol1.ActivePageIndex = 0 then
            sql := sql + '   and ((:re = 0 ) or (boleto.seq_remessa = :re )) and '+
                '  coalesce(boleto.seq_remessa,0) > 0'
          else
            sql := sql + 'and ((:nr = 0 and boleto.seq_remessa = 0) or (boleto.seq_remessa = :nr )) ' ;
         sql := sql + ' order by '+ Ordenacao + ' ' +tipoOrd ;
         checkDBGrid1.Columns[0].Visible := FAlse;
         checkDBGrid2.Columns[0].Visible := FAlse;

  qBol.Close;
  qBol.SQL.Clear;
  qBol.SQL.Add(sql);
  if cktodos.Checked then
   qBol.ParamByName('bco').AsInteger := 0
  else
   qBol.ParamByName('bco').AsInteger := cbBanco.KeyValue;

  if (edDis.Text = '') or (edDis.Text ='0') then
     qBol.ParamByName('dis').Value := 0
   else
     qBol.ParamByName('dis').Value := trim(edDis.Text);

  if (edDi.Text = '  /  /    ') or (edDf.Text ='  /  /    ') then
     qBol.ParamByName('de').Value := 0
   else
     begin
      qBol.ParamByName('de').Value  := 1;
      qBol.ParamByName('die').asDate := strtodate(eddi.Text);
      qBol.ParamByName('dfe').asDate := strtodate(eddf.Text);
     end;

  if (edDiV.Text = '  /  /    ') or (edDfV.Text ='  /  /    ') then
     qBol.ParamByName('dv').Value := 0
   else
     begin
      qBol.ParamByName('dv').Value  := 1;
      qBol.ParamByName('div').asDate := strtodate(eddiv.Text);
      qBol.ParamByName('dfv').asDate := strtodate(eddfv.Text);
     end;

   if (edNosso.Text = '') or (edNosso.Text ='0') then
      qBol.ParamByName('nn').Value := 0
    else
      qBol.ParamByName('nn').Value := trim(edNosso.Text);


  if pagecontrol1.ActivePageIndex = 0 then begin
    if (edRemessa.Text = '') or (edRemessa.Text ='0') then
      qBol.ParamByName('re').Value := 0
    else
      qBol.ParamByName('re').Value := trim(edRemessa.Text);

  end;
  qBol.ParamByName('bx').Value := copy(trim(cbbaixa.Text),1,1);

  if pagecontrol1.ActivePageIndex = 1 then
     qBol.ParamByName('nr').Value := 0;//numRemessa;

  qBol.Open;
  ltotalreg.caption := 'Total de Registros: ' + inttostr(qbol.RecordCount);


end;

procedure TfCnsBoletos.CheckDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (qBolBaixado.Value = 'S') then
  begin
   CheckDBGrid1.Canvas.Brush.Color := $00BFDFFF;
   CheckDBGrid1.Canvas.Font.Color  := clBlack;
  end;
 CheckDBGrid1.DefaultDrawDataCell(Rect, CheckDBGrid1.Columns[DataCol].Field ,state);


end;

procedure TfCnsBoletos.edDesDisChange(Sender: TObject);
begin
  if (EdDesDis.Text <> '')  then
   begin
    gdPesq.Left := edDis.Left;
    gdPesq.Top  := 83;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('select id, razao nome, nome fantasia  from cliente where razao like '+QuotedStr('%'+EdDesDis.Text+'%'));
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     gdPesq.Visible := False
    else
     gdPesq.Visible := True;
  END;
  lFantasia.Caption := '';
end;

procedure TfCnsBoletos.edDisExit(Sender: TObject);
begin
  if EdDis.Text <> '' then
   begin
    EdDesDis.Clear;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select Id, razao Nome, nome fantasia from cliente where Id = '+EdDis.Text);
    DM.qPesq.Open;
    if not DM.qPesq.IsEmpty then
     begin
      EdDesDis.Text := DM.qPesq.FieldByName('Nome').AsString;
      lFantasia.Caption := DM.qPesq.FieldByName('fantasia').AsString;
      gdPesq.Visible := false;

    end
   else
    begin
     EdDis.Clear;
     EdDesDis.SetFocus;
    end;
  end
 else
  BEGIN
     EdDis.Clear;
     EdDesDis.Clear;
     EdDesDis.SetFocus;
  END;

end;

procedure TfCnsBoletos.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      if gdPesq.Left = edDis.Left then
        begin
          edDis.Text := dm.qPesq.fieldbyname('Id').Value;
          edDisExit(Application);
        end;
      key := #0;
    end;
end;

procedure  TfCnsBoletos.Gerar2via;
var
   registro:integer;
   nArq, noReme , temIdweb  : string;
   idconta, idven: integer;
   vMora : real;
begin
  registro := 0;

 if xibutton3.Enabled = true then
    acOk.Execute;

 if qBol.IsEmpty then
   exit;

 if cktodos.Checked then
   begin
     Application.MessageBox('Você precisa selecionar um banco especifico para imprimir!','Atenção');
     exit;
  end;

  if (tipoGerar = 'R') and (dm.qParametromod_pedidosWeb.Text = 'S') then  // gera para web
  begin
     if not (DirectoryExists(ExtractFilePath(Application.ExeName) + '\PDF_WEB' ))  then
        CreateDir(ExtractFilePath(Application.ExeName) + '\PDF_WEB' );

     //salvar linha digitável pra enviar web
     cds.close;
     cds.CreateDataSet;
     cds.open;

  end;

  //veirifica beneficiario
  if (trim(bancotitular.Text) = '') or (trim(bancocnpjcedente.Text) = '') or
    (trim(Bancoendcedende.Text) = '') or (trim(Banconumcedende.Text) = '')     or
    (trim(Bancobaicedende.Text) = '') or (trim(Bancocidcedende.Text) = '')     or
    (trim(Bancoufcedende.Text) = '') or (trim(Bancocepcedende.Text) = '')     then
  begin
     Application.MessageBox('Atualize os dados do titular da conta no Cadastro de CONTAS.' ,'Atenção');
     exit;
  end;


  qBol.First;
  idconta := qBolidconta.Value;

  while (qBol.Eof = false) do
  begin
   if qBolBaixado.Text = 'N' then
   begin
    RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo  := trim(formatfloat('000', qBolbanco.Value));

    if BancoBTIPO.Value = 'P' then
       RLBTitulo1.BoletoLayout                     := blPadrao
      else
       RLBTitulo1.BoletoLayout                     := blCarne;

    if qBolbanco.value = 1 then
       RLBTitulo1.Cedente.ContaBancaria.Convenio   := trim(qBolbConvenio.Value);

    if (qBolbanco.value = 748) or (qBolbanco.value = 756) then
       RLBTitulo1.DataProcessamento                := Date
    else
      RLBTitulo1.DataProcessamento                   := qBolEmissao.asdatetime;//strtodate(copy(qBolEmissao.text,9,2)+'/'+copy(qBolEmissao.text,6,2)+'/'+copy(qBolEmissao.text,1,4) );
    RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := trim(qBolbAgencia.Value);
    RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := trim(qBolbAgenciaD.Value);;
    RLBTitulo1.Cedente.ContaBancaria.NumeroConta   := trim(qBolbconta.Value);
    RLBTitulo1.Cedente.ContaBancaria.DigitoConta   := trim(qBolbcontaD.Value);
    RLBTitulo1.Cedente.CodigoCedente               := trim(qBolbcedente.Value);
    RLBTitulo1.Cedente.DigitoCodigoCedente         := trim(qBolbcedented.Value);
    RLBTitulo1.Cedente.ContaBancaria.Convenio      := trim(qBolbconvenio.Value);
    RLBTitulo1.Cedente.TipoInscricao               := tiPessoaJuridica;       // ver conforme cadastro

    RLBTitulo1.Cedente.ContaBancaria.NomeCliente := semacento(trim(BancoNOMECEDENTE.Text));
    RLBTitulo1.Cedente.NumeroCPFCGC := retornaNumeros(BancoCNPJCEDENTE.Text);
    RLBTitulo1.Cedente.Nome := RLBTitulo1.Cedente.ContaBancaria.NomeCliente;

    RlBtitulo1.Cedente.Endereco.Rua    := semacento(trim(Bancoendcedende.Value));
    RlBtitulo1.Cedente.Endereco.Numero := semacento(trim(Banconumcedende.Value));
    RlBtitulo1.Cedente.Endereco.Bairro := semacento(trim(Bancobaicedende.Value));
    RlBtitulo1.Cedente.Endereco.Cidade := semacento(trim(Bancocidcedende.Value));
    RlBtitulo1.Cedente.Endereco.Estado := semacento(trim(Bancoufcedende.Value));
    RlBtitulo1.Cedente.Endereco.CEP    := trim(Bancocepcedende.Value);

    if BancoBTIPO.Value = 'P' then
       endbene := semacento(trim(Bancoendcedende.Value)+ ','+ trim(Banconumcedende.Value)+'-'+
              trim(Bancobaicedende.Value)+'-'+ trim(Bancocidcedende.Value)+'/'+
              trim(Bancoufcedende.Value)+'-'+ copy(trim(Bancocepcedende.Value),1,2)+'.'+
              copy(trim(Bancocepcedende.Value),2,3)+'-'+ copy(trim(Bancocepcedende.Value),6,3))
     else
       endBene := semacento(trim(Bancoendcedende.Value)+ ', '+ trim(Banconumcedende.Value)+' - '+
              trim(Bancobaicedende.Value)+' - '+ trim(Bancocidcedende.Value)+'/'+
              trim(Bancoufcedende.Value)+' - CEP:'+ copy(trim(Bancocepcedende.Value),1,5)+'-'+
              copy(trim(Bancocepcedende.Value),6,3));


    if qBolbanco.value = 104 then
       RLBTitulo1.LocalPagamento                      := semacento(trim('PREFERENCIALMENTE NAS CASAS LOTÉRICAS ATÉ O VALOR LIMITE') )
    else
    if qBolbanco.value = 1 then
       RLBTitulo1.LocalPagamento                      := semacento(trim('PAGAVEL EM QUALQUER BANCO')) // ATE O VENCIMENTO')
    else
    if qBolbanco.value = 237 then
       RLBTitulo1.LocalPagamento                      := semacento(trim('Pagável preferencialmente na Rede Bradesco ou Bradesco Expresso') )
    else
    if qBolbanco.value = 033 then
       RLBTitulo1.LocalPagamento                      := semacento(trim('PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO'))
    else
    if qBolbanco.value = 341 then
       RLBTitulo1.LocalPagamento                      := semacento(trim('Até o vencimento, preferencialmente no Itaú; Após o vencimento, somente no Itaú' ))
    else
    if qBolbanco.value = 748 then
       RLBTitulo1.LocalPagamento                      := semacento(trim('Pagável preferencialmente nas Cooperativas de Crédito do Sicredi' ))
    else
    if qBolBanco.Value = 756 then
       RLBTitulo1.LocalPagamento                      := trim('PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO');

    RLBTitulo1.Carteira                               := semacento(trim(qBolbCarteira.Value));

    if qBolbanco.value = 748 then
       RLBTitulo1.CodigoBarra.Codigo                  := 'I2501P'
    else
       RLBTitulo1.CodigoBarra.Codigo                  := '10499';

    //dados do sacado
    if qBolTpPessoa.Value                           = 'F' then
       RLBTitulo1.Sacado.TipoInscricao             := tiPessoaFisica
      else
       RLBTitulo1.Sacado.TipoInscricao             := tiPessoaJuridica;

    RLBTitulo1.Sacado.Nome                         := trim(qBolNome.Value);//semacento(upperCase(somenteLetras(trim(qBolNome.Value))));
    RLBTitulo1.Sacado.Endereco.Cidade              := semacento(upperCase(somenteLetras(trim(qBolCidade.Value))));
    RLBTitulo1.Sacado.NumeroCPFCGC                 := trim(qBolCPF.Value);
    RLBTitulo1.Sacado.Endereco.Rua                 := semacento(trim(qBolEndereco.Value));
    RLBTitulo1.Sacado.Endereco.Bairro              := semacento(trim(qBolBairro.Value));
    RLBTitulo1.Sacado.Endereco.CEP                 := trim(qBolCEP.Value);
    RLBTitulo1.Sacado.Endereco.Estado              := trim(qBolUF.Value);
    RLBTitulo1.Sacado.Endereco.Numero              := Trim(qBolNumero.AsString);
    if qBolbanco.value = 748 then
       RLBTitulo1.CodigoBarra.Codigo                  := 'I2501P'
    else
       RLBTitulo1.CodigoBarra.Codigo                  := '10499';


    //dados da cobranca
    if qBolbanco.value = 104 then begin
      RLBTitulo1.Carteira                               := trim(qBolbCarteira.Value);
      if trim(qBolbCarteira.Value) = '90' then BEGIN
         RLBTitulo1.LayoutNN                            := lnN17;
      end
      else
      if trim(qBolbCarteira.Value) = '80' then BEGIN
         RLBTitulo1.LayoutNN                            := lnN17;
      end
      else
      if trim(qBolbCarteira.Value) = 'CR' then BEGIN
         RLBTitulo1.LayoutNN                            := lnN11;
      end
      else
      if trim(qBolbCarteira.Value) = 'SR' then BEGIN
         RLBTitulo1.LayoutNN                            := lnN11;
      end
      else
      if trim(qBolbCarteira.Value) = '14' then BEGIN
         RLBTitulo1.LayoutNN                            := lnN17;
      end
      else
      if trim(qBolbCarteira.Value) = '24' then BEGIN
         RLBTitulo1.LayoutNN                            := lnN17;
      end;
    end
    else
    if qBolbanco.value = 1 then begin
       RLBTitulo1.Carteira                            := trim(copy(qBolbCarteira.Value,1,2));
       RLBTitulo1.LayoutNN                            := lnC7_N10;
    end
    else
    if qBolbanco.value = 237 then begin
       RLBTitulo1.Carteira                            := trim(copy(qBolbCarteira.Value,1,2));
       RLBTitulo1.LayoutNN                            := lnN17;
    end
    else
    if qBolbanco.value = 033 then begin
       RLBTitulo1.Carteira                            := trim(copy(qBolbCarteira.Value,1,3));
       RLBTitulo1.LayoutNN                            := lnN11;
    end
    else
    if qBolbanco.value = 341 then begin
       RLBTitulo1.Carteira                            := trim(qBolbCarteira.Value);
       RLBTitulo1.LayoutNN                            := lnN11;
    end
    else
    if qBolbanco.value = 748 then begin
       RLBTitulo1.Carteira                            := trim(qBolbCarteira.Value);
       RLBTitulo1.LayoutNN                            := lnN11;
    end
    else
    if qBolbanco.value = 756 then begin
       RLBTitulo1.Carteira                :=          copy(trim(qBolbCarteira.Value),2,2);
       RLBTitulo1.LayoutNN                            := lnN11;
    end;

    if qBolbanco.value = 748 then
       RLBTitulo1.NossoNumero                         := qBolNN_SICREDI.Value
    else
       RLBTitulo1.NossoNumero                         := qBolNosso_Numero.Value;

    RLBTitulo1.ValorDocumento                      := qBolValor.Value;
    RLBTitulo1.DataDocumento                       := qBolEmissao.asdatetime;//strtodate(copy(qBolEmissao.text,9,2)+'/'+copy(qBolEmissao.text,6,2)+'/'+copy(qBolEmissao.text,1,4) );
    RLBTitulo1.DataVencimento                      := qBolVenci.AsDateTime; //strtodate(copy(qBolVenci.text,9,2)+'/'+copy(qBolVenci.text,6,2)+'/'+copy(qBolVenci.text,1,4) );
    RLBTitulo1.NumeroDocumento                     := qBolnumero_doc.value;

    RLBTitulo1.SeuNumero                           := RLBTitulo1.NumeroDocumento;
    RLBTitulo1.Instrucoes.Clear;

    if (qBolbanco.Value = 341) then
       RLBTitulo1.Instrucoes.Add(pchar('END.BENEF.:' + endBene) );

    if qBolBanco.Value = 756 then
       RLBTitulo1.Instrucoes.Add('Após vencimento pagável somente nas agências do SICCOB.');



    if trim(obs.lines.Strings[0]) <> '' then
       RLBTitulo1.Instrucoes.Add( semacento( obs.lines.Strings[0] ));
    if trim(obs.lines.Strings[1]) <> '' then
       RLBTitulo1.Instrucoes.Add( semacento( obs.lines.Strings[1] ));

    if qBolmulta.AsFloat > 0 then  //BancoMULTA.Value
    begin
      RLBTitulo1.ValorRecebido := qBolmulta.Value;
      if qBolbanco.asInteger = 748  then // considerar casas decimais
        dm.RLBTitulo1.ValorRecebido := qBolmulta.Value * 100;
      tipoMultaBoleto := trim(qBoltipoMulta.Text);
      if tipoMultaBoleto = 'P' then
      begin
        RLBTitulo1.Instrucoes.Add('MULTA DE '+ FormatFloat('#0.00', qBolmulta.asfloat) +' % APOS '+FormatDateTime('dd/mm/yyyy', qBolVenci.Value) + ', ') ;
        if (qBolbanco.Value = 1) or (qBolBanco.Value = 756)   then  //passar o valor pra remessa  //add sicoob nilton 31/01/2023
          RLBTitulo1.ValorRecebido := qBolValor.Value * qBolmulta.Value/100
        else
          if qBolBanco.Value = 748 then //não arredondar multa e ir como % 29/5/23
            RLBTitulo1.ValorRecebido := qBolmulta.Value * 100
      end
      else
        RLBTitulo1.Instrucoes.Add('MULTA DE R$ '+ FormatFloat('#0.00', qBolmulta.asfloat) +' APOS '+FormatDateTime('dd/mm/yyyy', qBolVenci.Value) + ', ');
    end
    else
        RLBTitulo1.ValorRecebido := 0;

    vMora  := 0;
    if (qBolJUROS.Value > 0) then begin
       vMora  := (qBolValor.Value * qBolJUROS.Value/100);
       RLBTitulo1.ValorMoraJuros  := vMora;
       if qBolBanco.asInteger = 756 then
           RLBTitulo1.DataMoraJuros   := RLBTitulo1.DataVencimento + 1
       else
           RLBTitulo1.DataMoraJuros   := RLBTitulo1.DataVencimento ;
       RLBTitulo1.Instrucoes.Add('JUROS APOS '+qBolVenci.text+
                                 ' DE  R$  ' + FormatFloat('#,##0.00', vMora) + ' AO DIA ');
    end
    else
       RLBTitulo1.ValorMoraJuros  := 0;

     if qBolbanco.Value > 1 then
       RLBTitulo1.Instrucoes.Add( obs.lines.Strings[2] );

    RLBTitulo1.DescricaoOcorrenciaOriginal := '';
    RLBTitulo1.MotivoRejeicaoComando := '';
    RLBTitulo1.DataProtesto := 0;
    if qBoldiasprot.AsInteger > 0 then
    begin
       if BancotipoProtesto.Text = 'U' then
       begin
         RLBTitulo1.DescricaoOcorrenciaOriginal := 'U';
         RLBTitulo1.MotivoRejeicaoComando := qBoldiasprot.asstring;
         RLBTitulo1.DataProtesto    := diasUteis(RLBTitulo1.DataVencimento, qBoldiasprot.AsInteger )
       end
       else
          RLBTitulo1.DataProtesto    := qBolVenci.asdatetime + qBoldiasprot.AsInteger ;
       RLBTitulo1.Instrucoes.Add('PROTESTAR APOS ' +DATETOSTR(RLBTitulo1.DataProtesto) );
    end;

    //RLBTitulo1.DataDesconto    := RLBTitulo1.DataVencimento;
    RLBTitulo1.ValorDesconto   := 0;
    RLBTitulo1.ValorAbatimento := 0;

    RLBTitulo1.InsertRecord;
    registro := registro + 1;

    if tipoGerar = 'R' then
    begin
       RLBRemessa1.Titulos.Add(RLBtitulo1);
    end;

    if (tipoGerar = 'R') and (dm.qParametromod_pedidosWeb.Text = 'S') then  // gera para web
    begin
      temidWeb := dm.consultaidlocal('select coalesce(idweb,0) idweb from venda where idweb > 0 and id = ' + qBolIdvenda.text );
      if (trim(temidweb) <> '') and (trim(temidweb) <> '0') then
      begin
        //salvar linha digitável pra enviar web
        RLBTitulo2 := RLBTitulo1;

        RLBTitulo2.PrintDialog := false;

        cds.Insert;
        cdsidvenda.AsInteger := qBolIdvenda.AsInteger;
        cdsidweb.AsInteger   := strtoint(temidWeb);
        cdslinha.AsString    := StringReplace(RLBTitulo1.CodigoBarra.LinhaDigitavel,' ', '',[rfReplaceAll, rfIgnoreCase]);
        nArq := 'B'+inttostr(cdsidweb.AsInteger)+'_' + trim(qBolIDTHR030.text) + '.PDF';
        CDSarquivo.AsString  := nArq;
        cds.Post;

        //gerar pdf
        if FileExists( pchar(ExtractFilePath(Application.ExeName)+ '\PDF_WEB\'+nArq) ) then
           DeleteFile(pchar(ExtractFilePath(Application.ExeName)+ '\PDF_WEB\'+nArq) );

        RLBTitulo2.SavetoPDF(pchar(ExtractFilePath(Application.ExeName)+ '\PDF_WEB\'+nArq) , 'N' );
        RLBTitulo2.ClearRecords;
      end;
    end;

   end;
   qBol.Next;

  end;

  if registro > 0 then
  begin
   if tipoGerar = 'B' then
       RLBTitulo1.PreviewModal
   else
   if tipoGerar = 'R' then
   begin
      if RLBRemessa1.Titulos.Count > 0 then
      begin

         if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa') then
           CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa' );

         RLBRemessa1.DataArquivo   := Date;
         dm.qPesq.Close;
         dm.qPesq.SQL.Clear;
         dm.qPesq.sql.add('select * from conta where id = ' + inttostr( IDconta ) );
         dm.qPesq.open;
         if (dm.qPesq.fieldbyname('BSeq_remessa').text = '') or (dm.qPesq.fieldbyname('BSeq_remessa').Value = 0) then
            RLBRemessa1.NumeroArquivo := 1
          else
            RLBRemessa1.NumeroArquivo := dm.qPesq.fieldbyname('BSeq_remessa').Value + 1;

         if qBolbanco.value = 237 then begin
           nArq :=  'CB' + formatdatetime('dd', date) + formatdatetime('mm', date) +
                    'D' + bancoid.Text + '.REM';
           if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa\bradesco') then
              CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa\bradesco' );

           RLBRemessa1.NomeArquivo   := ExtractFilePath(Application.ExeName) +'\Remessa\bradesco\'+nArq ;
         end
         else
         if qBolbanco.value = 104 then begin
            if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa\Caixa') then
               CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa\Caixa' );
            RLBRemessa1.NomeArquivo   := ExtractFilePath(Application.ExeName) +'\Remessa\Caixa\'+
                                    'Rem104_'+ formatdatetime('hhmmss',time)+
                                    '_D.txt' ;
         end
         else
         if qBolbanco.value = 1 then begin
            if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa\BB') then
               CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa\BB' );
            RLBRemessa1.NomeArquivo   := ExtractFilePath(Application.ExeName) +'\Remessa\BB\'+
                                    'Rem001_'+ formatdatetime('hhmmss',time)+
                                    '_D.txt' ;
         end
         else
         if qBolbanco.value = 33 then begin
            if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa\Santander') then
              CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa\Santander' );
            RLBRemessa1.NomeArquivo   := ExtractFilePath(Application.ExeName) +'\Remessa\Santander\'+
                                    'Rem033_'+ formatdatetime('hhmmss',time)+
                                    '_' + formatfloat('0000', RLBRemessa1.NumeroArquivo ) +
                                    '_D.txt' ;
         end
         else
         if qBolbanco.value = 341 then begin
            if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa\Itau') then
               CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa\Itau' );
            RLBRemessa1.NomeArquivo   := ExtractFilePath(Application.ExeName) +'\Remessa\Itau\'+
                                      formatfloat('00000', RLBRemessa1.NumeroArquivo ) +
                                      '.txt' ; //formatdatetime('hhmmss',time)+
         end
         else
         if qBolbanco.value = 748 then begin
            if not (DirectoryExists(ExtractFilePath(Application.ExeName) +'\Remessa\Sicredi')) then
               createDir(ExtractFilePath(Application.ExeName) +'\Remessa\Sicredi');

            noReme := VerificaNomeSicredi( ExtractFilePath(Application.ExeName) + '\Remessa\Sicredi\' +
                                        formatfloat('00000', qBolbcedente.AsInteger ) +
                                        BuscaMesSicredi + formatdatetime( 'dd', date) + '.CRM' );
            RLBRemessa1.NomeArquivo   := noReme;
         end
         else
          if qBolbanco.AsInteger = 756 then
          begin
            if not (DirectoryExists(ExtractFilePath(Application.ExeName) +'\Remessa\Sicoob')) then
              createDir(ExtractFilePath(Application.ExeName) +'\Remessa\Sicoob');

            RLBRemessa1.NomeArquivo   := ExtractFilePath(Application.ExeName) +'\Remessa\Sicoob\'+
             'Rem_'+ formatdatetime('yyyymmdd',date)+ '_' + formatdatetime('hhmm',time)+'.txt';

           RLBRemessa1.LayoutArquivo := laCNAB240;
          end;
         if qBolBCNAB.Value = 240 then
            RLBRemessa1.LayoutArquivo := laCNAB240
         else
            RLBRemessa1.LayoutArquivo := laCNAB400;

         ExecSql('update conta set bseq_remessa = ' + inttostr(RLBRemessa1.NumeroArquivo) +
               ' where id = ' + inttostr(idconta) );

         RLBRemessa1.GerarRemessa;
         RLPDFfilter1.FileName := trim(qBolNome.Value);
         remes := RLBRemessa1.NumeroArquivo;
         numRemessa := remes;
         GravaReEnviados;  //

         Application.MessageBox('Gerado com sucesso','Atenção');
         sleep(100);
         RLBRemessa1.Titulos.Clear;
      end
      else
      begin
        Showmessage( 'Não há boletos gerados !');
      end;
   end;

   if (tipoGerar = 'R') and (dm.qParametromod_pedidosWeb.Text = 'S') then  // gera para web
   begin
      if cds.RecordCount > 0 then
      begin
         cds.First;
         while cds.Eof = false do
         begin
           ExecSql('update venda set sincronizado = ''N'',  linhadigitavel = ' + quotedstr(trim(CDSlinha.Text)) +
                   ' , linkboleto = '+ quotedstr(trim(CDSarquivo.Text)) +
                   ' where id = ' + CDSidvenda.Text  );
           sleep(100);
           cds.Next;
         end;
      end;
   end;
   RLBTitulo1.ClearRecords;
  end;
  tipoGerar := '';
  remes := 0;

end;

procedure TfCnsBoletos.acImprimirExecute(Sender: TObject);
begin
   tipoGerar :='B';
   Gerar2via;
end;

procedure TfCnsBoletos.edDesDisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN then
    if gdPesq.Visible = true then
      gdPesq.SetFocus;

end;

procedure TfCnsBoletos.edDIChange(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.edDFChange(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.edDiVChange(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.edDfVChange(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.cbBancoClick(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.edRemessaChange(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.edNossoChange(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.acListagemExecute(Sender: TObject);
var
 nPeriodo : String;

begin
 if   xibutton3.Enabled = true then
      acOk.Execute;

 if qBol.IsEmpty then
   exit;

 Application.CreateForm(TfCnsBoletos_I, fCnsBoletos_I);

 fCnsboletos_I.ltitulo.Caption := 'Boletos' ;
 fCnsboletos_I.lnome.Caption   := 'Cliente' ;

 if (edDis.Text <> '') and (edDis.Text <> '0') then
    fCnsboletos_I.lDist.Caption   := 'Cliente: ' + edDis.text + ' - ' + edDesDis.text
 else
    fCnsboletos_I.lDist.Caption   := 'Cliente: Todos';

 if (edDi.text = '  /  /    ') and (edDiV.text = '  /  /    ') then
    nPeriodo := 'Período Emissão: Todos   - Período Vencimento: Todos'
 else
 if (edDi.text = '  /  /    ') and (edDiV.text <> '  /  /    ') then
    nPeriodo := 'Período Emissão: Todos   - Período Vencimento: ' + edDiV.text + ' até ' + edDfV.text + '.'
 else
 if (edDi.text <> '  /  /    ') and (edDiV.text = '  /  /    ') then
    nPeriodo := 'Período Emissão: ' + edDi.text + ' até ' + edDf.text + ' - Período Vencimento: Todos'
 else
 if (edDi.text <> '  /  /    ') and (edDiV.text <> '  /  /    ') then
    nPeriodo := 'Período Emissão: ' + edDi.text + ' até ' + edDf.text +
                ' - Período Vencimento: ' + edDiV.text + ' até ' + edDfV.text + '.';
 fCnsboletos_I.lPeriodo.caption := nPeriodo ;

 fCnsboletos_I.rp.PreviewModal;
 fCnsBoletos_I.Free;


end;

procedure TfCnsBoletos.cbBaixaClick(Sender: TObject);
begin
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.edDisChange(Sender: TObject);
begin
      xibutton3.Enabled := true;
end;

procedure TfCnsBoletos.edRevChange(Sender: TObject);
begin
      xibutton3.Enabled := true;
end;


procedure TfCnsBoletos.acGerarRemessaExecute(Sender: TObject);
begin
   tipoGerar :='R';
   Gerar2via;

   if dm.qParametromod_pedidosWeb.Text = 'S' then
      btnBolClick(Application);
end;

procedure TfCnsBoletos.PageControl1Change(Sender: TObject);
begin
  case pagecontrol1.activepageindex of
    0: begin
         Label4.Visible     := true;
         Label8.Visible     := true;
         Label2.Visible     := true;
         cbBaixa.visible    := true;
         edRemessa.Visible  := true;
         edNosso.visible    := true;
         label3.Visible     := true;
         shape1.Visible     := true;
         aclistagem.Visible := true;
         acListagem.Enabled := true;
         acImprimir.Enabled := true;
         acGerarRemessa.Enabled := false;
         xibutton2.Action := acImprimir;
         qBol.close;
         checkdbgrid1.DataSource := dBol;
         checkdbgrid2.DataSource := nil;
         BTNbOL.Visible          := FALSE;
       end;
    1: begin
         Label4.Visible     := false;
         Label8.Visible     := false;
         Label2.Visible     := True;
         cbBaixa.visible    := false;
         edRemessa.Visible  := false;
         edNosso.visible    := True;
         label3.Visible     := false;
         shape1.Visible     := false;
         aclistagem.Visible := True;
         acListagem.Enabled := True;
         acImprimir.Enabled := false;
         acGerarRemessa.Enabled := true;
         xibutton2.Action := acGerarRemessa;
         qBol.close;
         checkdbgrid1.DataSource := nil;
         checkdbgrid2.DataSource := dBol;
         if dm.qParametromod_pedidosWeb.Text = 'S' then
          BTNbOL.Visible          := true;
       end;
  end;
  xibutton3.Enabled := true;

end;

procedure TfCnsBoletos.GravaReEnviados;
var
  idrrec, idbol : string;

begin
     //grava como enviados
     qBol.First;
     while (qBol.Eof = false) do
       begin
        if qBolBaixado.Text = 'N' then begin
         idbol  := idbol  + qBolID.Text + ',';
         idrrec := idrrec + qBolIDrec.Text + ',';
        end;
        qBol.Next;
       end;
     if idbol[length(idbol)] = ',' then idbol[length(idbol)]:= ' ';
     IF IDBOL <> '' THEN begin
        ExecSql(' update boleto set SEQ_REMESSA = ' + inttostr(Remes) +
                ' where id in ( '+ idbol + ') ' );
     end;

     if idrrec[length(idrrec)] = ',' then idrrec[length(idrrec)]:= ' ';
     IF IDRREC <> '' THEN  begin
          ExecSql(' update creceber set benviando = ''S'' ' +
                  ' where id in ( '+ idrrec + ') ' );

     end;

     qBol.Close;
     //

end;



procedure TfCnsBoletos.cktodosClick(Sender: TObject);
begin
  if cktodos.Checked then
     cbbanco.Enabled := false
   else
     cbbanco.Enabled := true;
  xibutton3.Enabled  := true;

end;

procedure TfCnsBoletos.FormCreate(Sender: TObject);
begin
  enviando := 'N' ;
  numRemessa := 0;
  if dm.qParametromod_pedidosWeb.Text = 'N' then
     btnBol.Visible := false;
  lFantasia.Caption := '';
end;

procedure TfCnsBoletos.CheckDBGrid1TitleClick(Column: TColumn);
begin
 Ordenacao := Column.FieldName;

 if Ordenacao = 'NOSSO_NUMERO' then
   Ordenacao := '21';

 if tipoOrd = 'asc' then
  tipoOrd := 'desc'
 else
  tipoOrd := 'asc';

  acOk.Execute;
end;

procedure TfCnsBoletos.CheckDBGrid2TitleClick(Column: TColumn);
begin
 Ordenacao := Column.FieldName;

 if Ordenacao = 'NOSSO_NUMERO' then
    Ordenacao := '21';

 if tipoOrd = 'asc' then
  tipoOrd := 'desc'
 else
  tipoOrd := 'asc';

  acOk.Execute;
end;

procedure TfCnsBoletos.edRem1KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula( key);
end;

procedure TfCnsBoletos.edRem2KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula( key);
end;


procedure TfCnsBoletos.envia_pdf;
begin

  //enviar pdf
  gauge1.Visible  := true;
  gauge1.MaxValue := 2;
  qEmpWeb.close;
  qEmpWeb.ParamByName('id').AsInteger := dm.qParametroidweb.AsInteger;
  qEmpWeb.Open;
  idFTP1.Host     := trim(qEmpWebFTP_Host.Text);
  idFTP1.Username := trim(qEmpWebFTP_User.Text);
  idFTP1.Password := trim(qEmpWebFTP_Pass.Text);

  gauge1.Progress := gauge1.Progress + 1;
  msg_tela('Enviando pdf dos boletos!');
  try
    idFTP1.Connect;
  except
    exit;
  end;
  msg_tela('Aguarde um instante!');

  subirDocs;
  sleep(300);

  gauge1.Progress := gauge1.MaxValue;
  gauge1.Visible  := false;

end;


procedure TfCnsBoletos.subirDocs;
var
  DIR, gpat, pat : String;
  origem, destino, nomeArq, idv : string;
  ar : integer;
begin

  IF not idFTP1.Connected then
     Exit;

  Dir := ExtractFilePath(Application.ExeName)+ 'PDF_WEB';
  FileListBox1.Directory := Dir;
  FileListBox1.mask      := 'B*.pdf';
  gauge1.MaxValue := gauge1.MaxValue + FileListBox1.Items.Count;

  //CRIA EMPRESA
       idFTP1.ChangeDir(trim(qEmpWebftp_path_pdf.Text));
       try
         msg_tela('Criando pasta da Empresa');
         idFTP1.MakeDir(trim(dm.qParametroidweb.Text));
       except
         msg_tela('');
       end;

       try
         idFTP1.ChangeDir(trim(dm.qParametroidweb.Text));
         msg_tela('Abrindo pasta da Empresa');
       except
         msg_tela('');
       end;
  //

  for ar := 0 to FileListBox1.Items.Count -1 do
  begin
   Application.ProcessMessages;
   Gauge1.Progress := Gauge1.Progress + 1;

   FileListBox1.ItemIndex := ar;
   nomeArq := trim(ExtractFileName(FileListBox1.FileName));

   if (copy(nomeArq, 1, 1) = 'B') and (strtoint(copy(nomeArq, 2, 1)) in [0..9])  then
   begin
     idv := copy(nomeArq, 2, pos('_', nomearq ) - 2);
     dm.qPesq.Close;
     dm.qPesq.SQL.Clear;
     dm.qPesq.SQL.Add('select idvendedor from venda where idweb = ' + quotedstr(idv)  );
     dm.qPesq.Open;
     if dm.qPesq.FieldByName('idvendedor').asinteger > 0 then
     begin
       pat := dm.ConsultaIdLocal('select coalesce(idweb,0) idweb from vendedor where id = ' +
              dm.qPesq.FieldByName('idvendedor').Text  );
       try
         msg_tela('Criando pasta do Representate' );
         idFTP1.MakeDir(pat);
       except
         msg_tela('');
       end;

       try
         idFTP1.ChangeDir(pat);
         msg_tela('Abrindo Pasta do Representante');
       except
         msg_tela('');
       end;

       if nomeArq <> '' then
       begin
         origem  := FileListBox1.FileName ;
         destino := nomeArq;
         try
            IdFTP1.Delete(nomeArq);
         Except
          //
         end;
         msg_tela('Enviando Arquivos PDF...');

         IdFTP1.Put(origem, destino, false);
         sleep(200);

         if FileExists(Dir + '\env'+nomeArq) then
         begin
            DeleteFile(Dir + '\env'+nomeArq );
            sleep(200);
         end;

         RenameFile(origem, Dir + '\env'+nomeArq );
         sleep(200);

       end;
       msg_tela('');
     end;
     idFTP1.ChangeDirUp;
   end;

  end;
  IdFTP1.Disconnect;
  sleep(100);

  msg_tela('');
  FileListBox1.Clear;

end;

procedure TfCnsBoletos.msg_tela( m : String);
begin
   pA.Caption := m;
   pA.Refresh;
   pA.Visible := (trim(m) <> '');
   pA.BringToFront;
end;


end.
