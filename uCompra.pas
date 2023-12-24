unit uCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, db,
  jpeg, ActnList, XiButton, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, System.Actions, ACBrBase, ACBrDFe, ACBrNFe, pcnConversao, Vcl.ComCtrls,
  pcnConversaoNFe, StrUtils, math, AcbrUtil;

type
  TfCompra = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Image1: TImage;
    DBEdit2: TDBEdit;
    EdNomCli: TEdit;
    ActionList1: TActionList;
    novo: TAction;
    excluir: TAction;
    salvar: TAction;
    sair: TAction;
    DBGrid1: TDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label6: TLabel;
    XiButton1: TXiButton;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    Label7: TLabel;
    Label13: TLabel;
    edUni: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    GridPesqPro: TDBGrid;
    acSalvar: TAction;
    XiButton2: TXiButton;
    gdPesq: TDBGrid;
    L: TZQuery;
    dL: TDataSource;
    LID: TIntegerField;
    LIDCOMPRA: TIntegerField;
    LIDPRODUTO: TIntegerField;
    LQTD: TFloatField;
    LTOTAL: TFloatField;
    T: TZQuery;
    uT: TZUpdateSQL;
    dT: TDataSource;
    TID: TIntegerField;
    TIDFORNECEDOR: TIntegerField;
    TVALOR: TFloatField;
    TDESCONTO: TFloatField;
    TNUMNOTA: TIntegerField;
    TVALICMS: TFloatField;
    TBASEICMS: TFloatField;
    TVALIPI: TFloatField;
    TIDUSUARIO: TIntegerField;
    edDescr: TEdit;
    LDESCONTO: TFloatField;
    edQtd: TEdit;
    edUnit: TEdit;
    EdTotal: TEdit;
    ckAjuste: TCheckBox;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    TFRETE: TFloatField;
    TOUTROS: TFloatField;
    qAtu: TZQuery;
    qAtuid: TIntegerField;
    qAtuprecocompra: TFloatField;
    qAtupreco: TFloatField;
    Label17: TLabel;
    cbCusto: TDBLookupComboBox;
    Bevel1: TBevel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Label19: TLabel;
    DBEdit8: TDBEdit;
    Label20: TLabel;
    DBEdit11: TDBEdit;
    Label21: TLabel;
    DBEdit13: TDBEdit;
    Tbaseicmsst: TFloatField;
    Tvaloricmsst: TFloatField;
    Tvlrseguro: TFloatField;
    Tvlrdesconto: TFloatField;
    ckNS: TCheckBox;
    ckNaoGeraFinan: TCheckBox;
    Tcfop: TIntegerField;
    Label22: TLabel;
    DBEdit14: TDBEdit;
    LST: TFloatField;
    Lcfop: TIntegerField;
    Licms: TFloatField;
    edCST: TEdit;
    Label23: TLabel;
    Label24: TLabel;
    edCFOP: TEdit;
    edICMS: TEdit;
    Label25: TLabel;
    DBComboBox1: TDBComboBox;
    Label26: TLabel;
    LIPI: TFloatField;
    Label27: TLabel;
    edIPI: TEdit;
    LST2: TFloatField;
    LFRETE2: TFloatField;
    LUNITLIQ: TFloatField;
    LFRETE: TFloatField;
    Label28: TLabel;
    edBaseST: TEdit;
    Label16: TLabel;
    edST: TEdit;
    Ttpfrete: TIntegerField;
    DBEdit15: TDBEdit;
    upL: TZUpdateSQL;
    Label29: TLabel;
    DBEdit16: TDBEdit;
    Label30: TLabel;
    DBRadioGroup1: TDBRadioGroup;
    LTipo: TWideStringField;
    Lcst: TWideStringField;
    LDesTipo: TWideStringField;
    Tmodelo: TWideStringField;
    Tserie: TWideStringField;
    Tsubserie: TWideStringField;
    TDATA: TDateTimeField;
    TidCusto: TIntegerField;
    Tidcondpgto: TIntegerField;
    TTotal: TFloatField;
    TEx: TIntegerField;
    TX: TWideStringField;
    TOBS: TWideStringField;
    Lsubserie: TWideStringField;
    Ltpfrete: TIntegerField;
    Ltipo_prod: TWideStringField;
    Ldescricao: TWideStringField;
    Bevel2: TBevel;
    Label31: TLabel;
    DBGrid2: TDBGrid;
    qCom: TZQuery;
    dCom: TDataSource;
    qComdata: TDateTimeField;
    qComidfornecedor: TIntegerField;
    qComfantasia: TWideStringField;
    qComqtd: TFloatField;
    qComunitario: TFloatField;
    Tidemp: TIntegerField;
    Label41: TLabel;
    cbEmp: TDBLookupComboBox;
    Label32: TLabel;
    DBEdit17: TDBEdit;
    Tnf_ref: TIntegerField;
    btnImportar: TSpeedButton;
    OpenDialog1: TOpenDialog;
    ACBrNFe_imp: TACBrNFe;
    qFor: TZQuery;
    uFor: TZUpdateSQL;
    qForID: TIntegerField;
    qForNOME: TWideStringField;
    qForENDERECO: TWideStringField;
    qForBAIRRO: TWideStringField;
    qForCIDADE: TWideStringField;
    qForCEP: TWideStringField;
    qForUF: TWideStringField;
    qFortel1: TWideStringField;
    qFortel2: TWideStringField;
    qForfax: TWideStringField;
    qForCONTATO: TWideStringField;
    qForEMAIL: TWideStringField;
    qForIE: TWideStringField;
    qForCNPJ: TWideStringField;
    qForCONTA: TWideStringField;
    qForAGENCIA: TWideStringField;
    qForBANCO: TWideStringField;
    qForTIPOPAGTO: TIntegerField;
    qForOBS: TWideStringField;
    qForEX: TIntegerField;
    qForSITE: TWideStringField;
    qForTIPOPESSOA: TWideStringField;
    qForfantasia: TWideStringField;
    qFornum: TWideStringField;
    qForidcidade: TIntegerField;
    qFordia_venci: TIntegerField;
    qForativo: TWideStringField;
    qForpais: TIntegerField;
    qForcontribuinte: TWideStringField;
    qFortipo: TWideStringField;
    ProgressBar2: TProgressBar;
    qProd: TZQuery;
    uProd: TZUpdateSQL;
    qProdId: TIntegerField;
    qProddescricao: TWideStringField;
    qProdtipo: TWideStringField;
    qProdest_seguranca: TFloatField;
    qProdest_minimo: TFloatField;
    qProdft_conv_un: TWideStringField;
    qProdft_conv_qtde: TFloatField;
    qProdft_conv_2un: TWideStringField;
    qProdproduzido: TWideStringField;
    qProdbarras: TWideStringField;
    qProdreferencia: TWideStringField;
    qProdvalor: TFloatField;
    qProdqtdestoque: TFloatField;
    qProdCusto_montagem: TFloatField;
    qProdcod_Manual: TIntegerField;
    qProdcest: TWideStringField;
    qProdNCM: TWideStringField;
    qProdeIPI: TWideStringField;
    qProdobs: TWideMemoField;
    qProdPrecoCompra: TFloatField;
    qProdIcms: TFloatField;
    qProdPIS: TWideStringField;
    qProdpPIS: TFloatField;
    qProdCOFINS: TWideStringField;
    qProdpCOFINS: TFloatField;
    qProdIPI: TWideStringField;
    qProdpIPI: TFloatField;
    qProdcsosn: TWideStringField;
    qProdcfop: TWideStringField;
    qProdcfop_fora: TWideStringField;
    qProdmargem: TFloatField;
    qProdex: TIntegerField;
    qProdidfornecedor: TIntegerField;
    qProdRoyalties: TFloatField;
    qProdIDSTRIB: TIntegerField;
    qProdREDUCAO: TFloatField;
    qProdMARGEMST: TFloatField;
    qProdST: TFloatField;
    qProdST2: TFloatField;
    qProdCSOSN2: TWideStringField;
    qProdMVA: TFloatField;
    qProdCODIPI: TWideStringField;
    qProdIDTIPO_TRIBUTACAO: TIntegerField;
    qProdIDORIGEM: TIntegerField;
    qProdunidade_nfe: TWideStringField;
    qProdvalor2: TFloatField;
    qProdpesoLiq: TFloatField;
    qProdpesobru: TFloatField;
    qProdmultiplo: TFloatField;
    qProdcubagem: TFloatField;
    qProdDUN14: TWideStringField;
    qProdCustoProcesso: TFloatField;
    qProdCustoMP: TFloatField;
    qProdCustoproducao: TFloatField;
    qProdCustoOperacional: TFloatField;
    qProdCustoFinal: TFloatField;
    qProdVendaSugerido: TFloatField;
    qProdIdCxMaster: TIntegerField;
    qProdEmbalagem: TWideStringField;
    qProdaltura: TFloatField;
    qProdlargura: TFloatField;
    qProdcomprimento: TFloatField;
    qProdidweb: TIntegerField;
    qProdsincronizado: TWideStringField;
    qProdcustoCxMaster: TFloatField;
    qProdmaxDesconto: TFloatField;
    Lreferencia: TWideStringField;
    qAtumargem: TFloatField;
    qAtuCustoCxMaster: TFloatField;
    qAtuCustoProcesso: TFloatField;
    qAtuCustoMP: TFloatField;
    qAtuCusto_montagem: TFloatField;
    qAtuCustoOperacional: TFloatField;
    qAtuCustoproducao: TFloatField;
    qAtuVendaSugerido: TFloatField;
    btnOC: TSpeedButton;
    qOc: TZQuery;
    qOcId: TIntegerField;
    qOcDATA: TDateTimeField;
    qOcidFornecedor: TIntegerField;
    qOcidcondpgto: TIntegerField;
    qOcValor: TFloatField;
    qOcDESCONTO: TFloatField;
    qOcTotal: TFloatField;
    qOcFRETE: TFloatField;
    qOctpfrete: TIntegerField;
    qOcidUsuario: TIntegerField;
    qOcOBS: TWideStringField;
    qOcEx: TIntegerField;
    qOcX: TWideStringField;
    qOcidemp: TIntegerField;
    qOcdesconto_prod: TFloatField;
    qOctotal_prod: TFloatField;
    qOcId_1: TIntegerField;
    qOcidOC: TIntegerField;
    qOcidProduto: TIntegerField;
    qOcQtd: TFloatField;
    qOcUnitario: TFloatField;
    qOcDESCONTO_1: TFloatField;
    qOcTotal_1: TFloatField;
    qOcTIPO: TWideStringField;
    Lidoc: TIntegerField;
    Tstatus: TWideStringField;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit18: TDBEdit;
    Bevel3: TBevel;
    Label35: TLabel;
    DBEdit19: TDBEdit;
    cbCond: TDBLookupComboBox;
    Label36: TLabel;
    DBComboBox2: TDBComboBox;
    Tforma_pgto: TWideStringField;
    qCon: TZQuery;
    qConId: TIntegerField;
    qConDescricao: TWideStringField;
    qConParcelas: TIntegerField;
    qConNumParc: TIntegerField;
    qConIntervalo: TIntegerField;
    qConJuros: TFloatField;
    qConCredito: TWideStringField;
    qConcond_padrao: TWideStringField;
    dCon: TDataSource;
    qOcvalipi: TFloatField;
    qOcformapgto: TWideStringField;
    qOcprevisao: TDateTimeField;
    qOcidtransp: TIntegerField;
    qOcpIpi: TFloatField;
    qOcvIpi: TFloatField;
    Label37: TLabel;
    DBEdit20: TDBEdit;
    edNomeSol: TEdit;
    Tidsolicitante: TIntegerField;
    gdPesqSol: TDBGrid;
    qOcidsolicitante: TIntegerField;
    edCod: TEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    qTransp: TZQuery;
    dtransp: TDataSource;
    Tidtransp: TIntegerField;
    qTranspid: TIntegerField;
    qTranspnome: TWideStringField;
    Lqtd_OC: TFloatField;
    qOC_I: TZQuery;
    qOC_IId: TIntegerField;
    qOC_IidOC: TIntegerField;
    qOC_IidProduto: TIntegerField;
    qOC_IQtd: TFloatField;
    qOC_IUnitario: TFloatField;
    qOC_IDESCONTO: TFloatField;
    qOC_ITotal: TFloatField;
    qOC_ITIPO: TWideStringField;
    qOC_IpIpi: TFloatField;
    qOC_IvIpi: TFloatField;
    uOC: TZUpdateSQL;
    uOC_I: TZUpdateSQL;
    LUnitario: TFloatField;
    Lft_conv_qtde: TFloatField;
    qForEmUso: TWideStringField;
    Llote: TWideStringField;
    edLote: TEdit;
    Label40: TLabel;
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure excluirExecute(Sender: TObject);
    procedure salvarExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edDescrChange(Sender: TObject);
    procedure edDescrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPesqProKeyPress(Sender: TObject; var Key: Char);
    procedure edDescrExit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure LNewRecord(DataSet: TDataSet);
    procedure TNewRecord(DataSet: TDataSet);
    procedure LAfterDelete(DataSet: TDataSet);
    procedure LAfterPost(DataSet: TDataSet);
    procedure LQTDValidate(Sender: TField);
    procedure edTotalKeyPress(Sender: TObject; var Key: Char);
    procedure FormDeactivate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure EdNomCliChange(Sender: TObject);
    procedure EdNomCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure LBeforeInsert(DataSet: TDataSet);
    procedure edQtdExit(Sender: TObject);
    procedure edUnitExit(Sender: TObject);
    procedure TBeforeInsert(DataSet: TDataSet);
    procedure EdTotalEnter(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBEdit4Exit(Sender: TObject);
    procedure EdNomCliExit(Sender: TObject);
    procedure edQtdEnter(Sender: TObject);
    procedure atualizapreco;
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure GridPesqProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LAfterScroll(DataSet: TDataSet);
    procedure TidempValidate(Sender: TField);
    procedure btnImportarClick(Sender: TObject);
    procedure qForNewRecord(DataSet: TDataSet);
    procedure qProdNewRecord(DataSet: TDataSet);
    procedure LBeforePost(DataSet: TDataSet);
    procedure cbEmpCloseUp(Sender: TObject);
    procedure btnOCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit20Exit(Sender: TObject);
    procedure edNomeSolChange(Sender: TObject);
    procedure edNomeSolKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqSolKeyPress(Sender: TObject; var Key: Char);
    procedure edDescrEnter(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure qOcNewRecord(DataSet: TDataSet);
    procedure qOC_IBeforePost(DataSet: TDataSet);
    procedure LUnitarioValidate(Sender: TField);
    procedure DBEdit17Exit(Sender: TObject);
  private
    vIdEmpresaOC : integer;
    vIdOC : String;

    function Financeiro:boolean;
    procedure buscaValorReferente;
    procedure addOc(cd:integer);
    procedure AlteraOC(pIdOC : String);
    { Private declarations }
  public // Verificar se ordem de compra é válida para efetivação
    Efetiva: boolean; // Verificar se ordem de compra é válida para efetivação
    SOMA, DESC, valor_Ref, vIPI, vST, vBaseST, vDesco, vPorc : Real;
    Inserida, oc : String;
    Procedure EstoqueC(Venda : Integer; Sinal : Integer);
    Procedure Imprimir(Cod : integer);
    Procedure SomaItens;
    Procedure NovoPro;
    Procedure NovoFor;
    procedure VerificaOC;
  end;

var
  fCompra: TfCompra;
  CodCompra : Integer;
  FinanCompra : String;
  prCompra: real;
  reg : integer;
  altprod: string;
  codpro : integer;
  tp_pro : string;
  vAlterandoProduto : string;

implementation

uses Udm, uGridCompra, uFuncao, {uCadRapPro ,} uSenhaCad, uAjPagar, uPrecoProd, uBaixa ,
  uImpressoes, uBuscaProdutoImp, uCadRapPro, uEscolheOC; //, uCadRapFor;

{$R *.dfm}
procedure TfCompra.AlteraOC(pIdOC : String);
begin
  if pIdOC <> '' then
    ExecSQL('update oc set status = ''C'' where id in ( ' + {inttostr}(pIdOC)+')');

  vIdOC := '';//0;
  vIdEmpresaOC := 0;
end;

procedure TfCompra.DBEdit20Exit(Sender: TObject);
begin
if (DBEdit20.Text = '') or (DBEdit20.Text = '0') then
 begin
  EdNomeSol.SetFocus;
  exit;
 end
 else
 begin
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add(' Select ID, Nome from usuario where id > 1 and ID = '+DBEdit20.Text);
  DM.qSelect.Open;
  if not DM.qSelect.IsEmpty then
  begin
    EdNomeSol.OnChange := nil;
    EdNomeSol.Text     := DM.qSelect.FieldByName('Nome').AsString;
    EdNomeSol.OnChange := EdNomeSolChange;
    gdPesqSol.Visible  := False;
    dbedit14.SetFocus;
  end
  else
  begin
    Application.MessageBox('Codigo não localizado, verifique','Atenção');
    Tidsolicitante.Clear;
    dbedit20.Clear;
    dbedit20.SetFocus;
    exit;
  end;
 end;

end;

procedure TfCompra.DBEdit2Exit(Sender: TObject);
begin
 {
 if (DBedit1.Text = '') and (ckNs.Checked = false) then
 begin
      DBedit1.SetFocus;
      exit;
 end;   }

if (DBEdit2.Text = '') or (DBEdit2.Text = '0') then
 begin
  EdNomCli.SetFocus;
  exit;
 end
 else
 begin
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add(' Select ID, Nome, fantasia, ativo, idcondfpto, idcusto, forma_pgto '+
                     ' from fornecedor where ativo = ''S'' and ID = '+DBEdit2.Text);
  DM.qSelect.Open;
  if not DM.qSelect.IsEmpty then
  begin
    EdNomCli.OnChange := nil;
    EdNomCli.Text     := DM.qSelect.FieldByName('Nome').AsString;
    EdNomCli.OnChange := EdNomCliChange;
    gdPesq.Visible    := False;

    if StatusC = 'I' then
    begin
       if DM.qSelect.FieldByName('idcondfpto').asinteger > 0 then
          Tidcondpgto.AsInteger := DM.qSelect.FieldByName('idcondfpto').asinteger;
       if DM.qSelect.FieldByName('idcusto').asinteger > 0 then
          Tidcusto.AsInteger := DM.qSelect.FieldByName('idcusto').asinteger;
       if trim(DM.qSelect.FieldByName('forma_pgto').text) <> '' then
          Tforma_pgto.Value := trim(DM.qSelect.FieldByName('forma_pgto').text);
    end;

  end
  else
  begin
    Application.MessageBox('Codigo não localizado/Inativo, verifique','Atenção');
    TIDFORNECEDOR.Clear;
    dbedit2.Clear;
    dbedit2.SetFocus;
    exit;
  end;
 end;

 if StatusC = 'I' then
 begin
    if ((Dbedit1.Text <> '') or  (DBedit1.Text <> '0')) and (ckNS.Checked = false) then
    begin
       dm.qPesq.Close;
       dm.qPesq.SQL.Clear;
       dm.qPesq.SQL.Add('select * from compra where ex = 0 and numnota = ' + quotedstr(dbedit1.Text) +
                         ' and idfornecedor = ' + Dbedit2.Text +
                         ' and idemp = '+inttoStr(cbEmp.keyValue));
       dm.qPesq.Open;
       if dm.qPesq.IsEmpty = false then
       begin
           Application.MessageBox('Nota Fiscal já lançada para este fornecedor', 'Atenção');
           dbedit1.SetFocus;
           //exit;
       end
       else
       begin
         if trim(dbedit20.Text) = '' then
            dbedit20.SetFocus
         else
            DBEdit14.SetFocus;
       end;
    end;
 end;

 buscaValorReferente;

end;

procedure TfCompra.EstoqueC(Venda: Integer; Sinal : Integer);
VAR
  QtdTot, vFatorConv  : Real;
begin
  ExecSQL('delete from estoque where tipo = ''E'' and idcompra = '+IntToStr(Venda));
  dm.qEstoque.ApplyUpdates;
  DM.qEstoque.Open;
  L.First;
  while L.Eof = false do
  begin
        if Lft_conv_qtde.AsFloat> 0 then
         vFatorConv := Lft_conv_qtde.AsFloat
        else
         vFatorConv := 1;

        DM.qEstoque.Append;
        //DM.qEstoqueID.Value        := insereCodigo('estoque_mp','ID');
        DM.qEstoqueDATA.Value       := Date;
        DM.qEstoqueIDPRODUTO.Value  := LIDPRODUTO. Value;
        DM.qEstoqueQuantidade.Value := (LQTD.Value * (Sinal)) / vFatorConv;
        DM.qEstoqueidCompra.Value   := LIDCOMPRA.Value;
        DM.qEstoqueTIPO.Value       := 'E';
        dm.qEstoqueTPMOV.Value      := LTipo.Value;
        dm.qEstoqueidemp.Value      := Tidemp.Value;
        if Llote.AsString <> '' then
          dm.qEstoqueloteCompra.AsString := Llote.AsString;
        DM.qEstoque.Post;
        DM.qEstoque.ApplyUpdates;

        DM.qSelect.Close;
        DM.qSelect.SQL.Clear;
        DM.qSelect.SQL.Add(' select estoque.IDPRODUTO, SUM(estoque.Quantidade) as Qt  from estoque'+
                           ' where idemp = 1 and estoque.IDPRODUTO =  '+ LIDPRODUTO.Text +
                           ' and estoque.tpmov = ' + quotedstr(LTIPO.Value) +
                           ' group by estoque.IDProduto '+
                           ' order by estoque.IDPRODUTO ');
        DM.qSelect.Open;
        QtdTot := dm.qSelect.fieldbyname('Qt').asFloat;

        if (LTipo.Text <> 'S') then
           ExecSQL('UPDATE produto SET QTDESTOQUE = '+
                 PontoVirgula(FormatFloat('#0.000', QtdTot ))+
                 ' Where ID = '+ LIDPRODUTO.Text)
        else
        if LTipo.Text = 'S' then
           ExecSQL('UPDATE semi_acabado SET QTDESTOQUE = '+
                 PontoVirgula(FormatFloat('#0.000', QtdTot ))+
                 ' Where ID = '+ LIDPRODUTO.Text);

    L.Next;
  end;
end;

procedure TfCompra.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not ((ActiveControl is TDBMemo) or
   (ActiveControl is TDBGrid) or (ActiveControl = edTotal) or
   (ActiveControl = dbedit4) ) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfCompra.FormShow(Sender: TObject);
begin
 WindowState := wsMaximized;

 if Inserida = 'S' then
  Exit;

 qCon.close;
 qCon.Open;
 cbCond.ListSource.DataSet.Last;
 cbCond.ListSource.DataSet.First;

 qTransp.close;
 qTransp.open;
 qTransp.Fetchall;

 Label1.Caption := 'Nº Nota';

 if StatusC = 'I' then
  begin
   T.Close;
   T.ParamByName('id').Value := 0;
   T.Open;

   T.Insert;
   DBEdit1.SetFocus;

   L.Close;
   L.ParamByName('codigo').Value := Tid.Value;
   L.Open;

   sair.Enabled := True;
  end
 else
  begin
   T.Close;
   T.ParamByName('id').Value := CodCompra;
   T.Open;
   T.Edit;

   L.Close;
   L.ParamByName('codigo').Value := Tid.Value;
   L.Open;

   SomaItens;

   {if TNUmnota.Value = 0 then
      ckns.Checked := true;  } //Retirado Nilton 24/01/2022 estava permitindo salvar sem numero ao editar a nf


   sair.Enabled := false;
   DBEdit2Exit(Application);

   if Tidsolicitante.AsInteger > 0 then
      DBEdit20Exit(Application);

   edDescr.SetFocus;

  end;

  if Tidemp.Value = 1 then
  begin
    ckAjuste.Checked := true;
    ckAjuste.Visible := true;
  end;

end;

procedure TfCompra.excluirExecute(Sender: TObject);
VAR
  Posi : Integer;
  qtdtot: real;
begin
 if (L.isEmpty) or (L.RecordCount = 0) then
  exit;

 Posi := L.RecNo;
 {
 if LIDPRODUTO.AsInteger > 0 then
  begin
     DM.qSelect.Close;
     DM.qSelect.SQL.Clear;
     DM.qSelect.SQL.Add(' select estoque.IDPRODUTO, SUM(estoque.Quantidade) as Qt from estoque '+
                        ' where idemp = 1 and estoque.IDPRODUTO =  '+ LIDPRODUTO.Text+
                        ' and estoque.tpmov = ' + quotedstr(LTIPO.Value) +
                        ' group by IDProduto '+
                        ' order by IDPRODUTO ');
     DM.qSelect.Open;
     if dm.qSelect.IsEmpty then
        QtdTot := LQtd.Value
       else
        QtdTot := dm.qSelect.fieldbyname('Qt').Value - LQtd.Value;

     if LTipo.Text <> 'S' then
               ExecSQL('UPDATE produto SET QTDESTOQUE = '+
                     PontoVirgula(FormatFloat('#0.000', QtdTot ))+
                     ' Where ID = '+ LIDPRODUTO.Text)
     else
     if LTipo.Text = 'S' then
               ExecSQL('UPDATE semi_acabado SET QTDESTOQUE = '+
                     PontoVirgula(FormatFloat('#0.000', QtdTot ))+
                     ' Where ID = '+ LIDPRODUTO.Text);

  end;
                     }

 L.Delete;
 L.RecNo := Posi;
end;

procedure TfCompra.salvarExecute(Sender: TObject);
var
  vCompraReferencia, vTotalOC  : Real;
  vRestoOC, vFinan, vLote: String;
begin
  if (DBedit2.Text = '') or (DBedit2.Text = '0') then
  begin
    Application.MessageBox('Fornecedor não Preenchido!','Atenção');
    DBEdit2.SetFocus;
    exit;
  end;

  if ((DBedit1.Text = '') or (DBedit1.Text = '0')) and (ckNs.Checked = False) then
  BEGIN
   Application.MessageBox('Campo número da nota não preenchido, verifique por favor','Atenção');
   DBEdit1.SetFocus;
   exit;
  END;

  if (DBEdit17.Text <> '') then
  begin
    DBEdit17Exit(Application);
  end;

  if dm.qParametrobloqueia_nf_lancada_fornecedor.asString = 'S' then  //Se nf já lancada para o fornecedor
  begin
    //if StatusC = 'I' then
    // begin
      if ((Dbedit2.Text <> '') and (Dbedit1.Text <> '')) and (ckNs.Checked = false) then
       begin
         dm.qPesq.Close;
         dm.qPesq.SQL.Clear;
         dm.qPesq.SQL.Add('select * from compra where numnota = ' + dbedit1.Text +
                           ' and idfornecedor = ' + Dbedit2.Text +' and compra.id <> '+tid.text +
                           ' and idemp = '+ inttoStr(cbEmp.keyValue) );
         dm.qPesq.Open;
         if dm.qPesq.IsEmpty = false then
           begin
             Application.MessageBox('Nota Fiscal já lançada para este fornecedor. Por favor, verifique!', 'Atenção');
             dbedit1.SetFocus;
             exit;
           end;


       end;
     //end;
  end;

  if L.IsEmpty then
  begin
   Application.MessageBox('Compras sem produtos, verifique por favor.','Atenção');
   edDescr.SetFocus;
   exit;
  end;

  if (Tidemp.AsInteger = 1) and (Tnf_ref.AsInteger = 0) then
  begin
       if Application.MessageBox('Campo referência não informado. Deseja continuar assim mesmo?','Atenção',
                              mb_yesno + mb_defbutton2 ) =  idNo then
       begin
          dbedit17.SetFocus;
          exit;
       end;
  end;

  somaitens;

  if ckNaoGeraFinan.Checked = true then
  begin
    Application.CreateForm(TfSenhaCad, fSenhaCad);
    fSenhaCad.ShowModal;
    fSenhaCad.Free;

    if RespCad = 'N' then
       Exit;

    if RespCad = 'S' then
    begin
      try
        TStatus.Value := 'EFETIVADO';
        EstoqueC(CodCompra, 1);
        Screen.Cursor:=crSQLWait;
        if T.State in [dsedit, dsinsert] then T.Post;
      finally
        Screen.Cursor:=crDefault;
      end;

      if ckAjuste.Checked then
         atualizapreco;

      Imprimir(CodCompra);
      close;
      exit;

    end;
  end;

  if trim(cbCusto.Text) = '' then
  begin
    Application.MessageBox('Favor informar o centro de custo.','Atenção');
    cbCusto.SetFocus;
    exit;
  end;

   Application.CreateForm(TfSenhaCad, fSenhaCad);
   fSenhaCad.ShowModal;
   fSenhaCad.Free;

   if RespCad = 'N' then
      Exit;


  if (Tidemp.AsInteger = 1) and (valor_ref > 0) and (valor_ref <= Ttotal.asfloat) then
   vCompraReferencia := Ttotal.Value - valor_ref;


    try
      TStatus.Value := 'EFETIVADO';
      Screen.Cursor:=crSQLWait;
      if T.State in [dsedit, dsinsert] then
       T.Post;
    finally
      Screen.Cursor:=crDefault;
    end;

    if ckAjuste.Checked then
       atualizapreco;

    //EstoqueC(CodCompra, 1);

        if  ((Tidemp.AsInteger = 1) and (vCompraReferencia <> 0)) or ( Tidemp.AsInteger <> 1) or
            ((Tidemp.AsInteger = 1) and (valor_ref = 0)) then
         begin
           if Application.MessageBox('Deseja gerar financeiro?','Confrmação',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON1 ) = idyes then
            if Financeiro = false then
             begin
              T.edit;
              Exit;
             end;
         end
        else
         Application.MessageBox('Financeiro já gerado pela NF referenciada.','Aviso');

    EstoqueC(CodCompra, 1);

    //atualiza fornecedor ultima compra
    L.first;
    while L.eof = false do
    begin
      execSQL(' update produto set idfornecedor = '+TIDFornecedor.text + ' where id = '+LIDPRODUTO.text);
      L.next;
    end;

    Imprimir(CodCompra);


//    if vIdOC > 0 then
//    begin
//      vrestoOC := 'N';
//      vTotalOC := 0;
//      L.first;
//      while L.eof = false do
//      begin
//        if LQTD.asFloat < LQTD_OC.asFloat then
//          vRestoOC := 'S';
//        L.next;
//      end;
//
//      if vRestoOC = 'S' then
//      begin
//        if application.Messagebox(pChar('Quantidade da compra menor que a ordem de compra. '+#13+#10+
//                               'Deseja gerar uma nova ordem de compra com o restante?'),'Atenção', mb_YesNo) =idYes then
//        begin
//          qOC.close;
//          qOC.open;
//          qOC_I.close;
//          qOC_I.open;
//
//          qOC.insert;
//          qOCidFornecedor.asInteger := TIDFornecedor.asInteger;
//          qOC.post;
//          L.first;
//          while L.eof = false do
//          begin
//            if LQtd.asFloat < Lqtd_OC.asFloat then
//            begin
//              qOC_I.insert;
//              qOC_IidOC.asInteger := qOCID.asInteger;
//              qOC_IidProduto.asInteger := LIDPRODUTO.asInteger;
//              qOC_IQtd.asFloat := LQTD_OC.asFloat - LQTD.asFloat;
//              qOC_IUnitario.asFloat := LUnitario.asFloat;
//              qOC_IDesconto.asFloat := LDESCONTO.asFloat;
//              qOC_ITotal.asFloat    := (qOC_Iqtd.asFloat * qOC_IUnitario.asFloat) - qOC_IDesconto.asFloat;
//              qOC_ITIPO.AsString    := LTipo.AsString;  //add Nilton 24/10/2022
//              qOC_I.post;
//              vTotalOC := vTotalOC + qOC_ITotal.asFloat;
//            end;
//            l.next;
//          end;
//          qOC.edit;
//          qOCValor.asFloat := vTotalOC;
//          qOCTotal.asFloat := vTotalOC;
//          qOC.post;
//        end;
//      end;
//    end;
//
//    alteraOC(vIdOC);

    //substituido inserção da OC por função VerificaOC;
    VerificaOC;

    close;
end;

procedure TfCompra.sairExecute(Sender: TObject);
begin
  if T.State in [dsinsert] then
  begin
   if Application.MessageBox('Deseja Cancelar?','Confirmação', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
    begin
     if L.State in [dsedit, dsinsert] then
      L.Cancel;
      L.First;
      while L.Eof = false do
       begin
        L.Delete;
        L.First;
       end;

     if StatusC = 'I' then
       begin
         execSql('Delete from compra   where id = '       + inttostr(codCompra) );
         execSql('Delete from compra_i where idCompra = ' + inttostr(codCompra) );
       end
      else
       T.Cancel;
     Close;
    end;
  end
 else if T.State in [dsedit] then
  begin
   if Application.MessageBox('Deseja Sair Sem Salvar?','Confirmação', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
    begin
     if L.State in [dsedit, dsinsert] then
      L.Cancel;
     if L.RecordCount = 0 then
      begin
       T.Delete;
      end
     else
      begin
        if StatusC = 'I' then
          begin
           execSql('Delete from compra   where id = '       + inttostr(codCompra) );
           execSql('Delete from compra_i where idCompra = ' + inttostr(codCompra) );
          end
         else
          T.Cancel;
      end;
     Close;
    end;
  end
 else
  Close;
end;

function TfCompra.Financeiro:boolean;
var
  total: real;
begin

 // Ajuste de Parcelas **********************************************************
 Result := false;

 if (Tidemp.AsInteger = 1) and (valor_ref > 0) and (valor_ref <= Ttotal.asfloat) then
    ValorTotal := Ttotal.Value - valor_ref
 else
    ValorTotal := Ttotal.Value;

 if ValorTotal <= 0 then
    Exit;


 vIdconPg := Tidcondpgto.asinteger;
 Application.CreateForm(TfAjCPagar, fAjCPagar);
 valorNF_ref := valor_ref;
 nCusto := TidCusto.AsInteger;

 fAjCPagar.ShowModal;
 fAjCPagar.Free;

 if conf_cpagar = 'N' then
 begin
    ExecSql(' Update cpagar set Ex = 1 where IDCOMPRA = '+ IntToStr(codcompra)+
            ' and tipo = ''C'' ' );
    Result := false;
    Exit;
 end;

 //**************** Verificacao se ha parcelas a vista **************************
 ExecSql('Update cpagar set x = ''T'' where Ex = 0 and IDCOMPRA = '+ IntToStr(codcompra)+
                    ' and venci = '+QuotedStr(FormatDateTime('dd/mm/yyyy', Date)) );  //'yyyy/mm/dd'
 //Alterado para dm.qCPagarCompra
 {DM.qPesq.Close;
 DM.qPesq.SQL.Clear;
 DM.qPesq.SQL.Add('select cpagar.total from cpagar where cpagar.x = ''T'' and cpagar.Ex = 0 and cpagar.IDCOMPRA = '+ IntToStr(codcompra)+
                    ' and venci = '+QuotedStr(FormatDateTime('dd/mm/yyyy', Date)) );  //'yyyy/mm/dd'
 DM.qPesq.Open; }
 dm.qCPagarCompra.Close;
 dm.qCPagarCompra.SQL.Clear;
 dm.qCPagarCompra.SQL.Add('select cpagar.* from cpagar where cpagar.x = ''T'' and cpagar.Ex = 0 and cpagar.IDCOMPRA = '+ IntToStr(codcompra)+
                    ' and venci = '+QuotedStr(FormatDateTime('dd/mm/yyyy', Date)) );  //'yyyy/mm/dd'
 dm.qCPagarCompra.Open;
 if not dm.qCPagarCompra.IsEmpty THEN
  BEGIN
    if application.messagebox('Deseja baixar parcela a vista?','Confirmação', mb_YesNo)=idNo then
    begin
      Result := true;  //false; Agora continua a compra mesmo que não deu baixa
      exit;
    end;
    dm.qCPagarCompra.First;
    while dm.qCPagarCompra.Eof = false do
     begin
       Total := Total + dm.qCPagarCompra.fieldbyname('total').asfloat;
       dm.qCPagarCompra.Next;
     end;

   Application.CreateForm(TfBaixa, fBaixa);
   fbaixa.valorpago := total;
   origem := 'C';
   dm.Cx.Open;
   dm.Cx.Insert;
   DM.CxData.Value := now; //Date;
   DM.CxTpMov.Value := 'Z';
   DM.CxIdUsuario.Value := dm.qUserId.Value;
   DM.CxIdMov.Value  := CodCompra;
   DM.CxDescri.Value := 'PAGAMENTO DE FORNECEDOR';
   DM.CxValor.Value  := total;
   DM.CxTotal.Value  := total;
   DM.CxDesconto.Value  := 0;
   DM.Cxjuros.Value     := 0;
   DM.Cxidemp.Value     := Tidemp.AsInteger;
   cCodCompra := CodCompra;
   fBaixa.ShowModal;
   fBaixa.Free;
   if Dm.Cx.State in [dsEdit, dsInsert] then
      dm.Cx.Cancel;

   if conf_bx = 'N' then
   begin
      Result := true; //false;  Agora continua a compra mesmo que não deu baixa
      Exit;
   end;

  END;
  //*****************************************************************************

  Result := true;

end;

procedure TfCompra.FormCreate(Sender: TObject);
begin
 Inserida := 'N';
 altprod := 'N';
 dm.qCusto.Open;
 valor_ref := 0;    vIdOC := ''{0}; vIdEmpresaOC := 0;
//pesq produto
 {if dm.qParametropesqproduto.text = 'ID' then
 begin
    gridpesqpro.Columns[0].title.caption := 'Código';
    DBGRid1.Columns[0].title.caption := 'Código';
    gridpesqpro.Columns[0].FieldName := 'IDPRODUTO';
    DBGrid1.Columns[0].FieldName     := 'IDPRODUTO';
    label33.Caption := '(Busca por Descrição / Código)';
 end
 else
 if dm.qParametropesqproduto.text = 'BARRAS' then
 begin
    gridpesqpro.Columns[0].title.caption := 'Cód.Barras';
    DBGRid1.Columns[0].title.caption := 'Cód.Barras';
    gridpesqpro.Columns[0].FieldName := trim(dm.qParametropesqproduto.text);
    DBGrid1.Columns[0].FieldName     := trim(dm.qParametropesqproduto.text);
    label33.Caption := '(Busca por Descrição / Cód. Barras)';
 end
 else
 if dm.qParametropesqproduto.text = 'REFERENCIA' then
 begin
    gridpesqpro.Columns[0].title.caption := 'Referência';
    DBGRid1.Columns[0].title.caption := 'Referência';
    gridpesqpro.Columns[0].FieldName := trim(dm.qParametropesqproduto.text);
    DBGrid1.Columns[0].FieldName     := trim(dm.qParametropesqproduto.text);
    label33.Caption := '(Busca por Descrição / Referência)';
 end;  }


end;

procedure TfCompra.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;
end;

procedure TfCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 T.Close;
 L.Close;

 Action := caFree;
 fCompra := nil;
end;

procedure TfCompra.Imprimir(Cod: integer);
begin

     DM.qImpCompra.Close;
     DM.qImpCompra.ParamByName('COD').Value := Cod;
     DM.qImpCompra.Open;

     DM.qFinanCompra.Close;
     DM.qFinanCompra.ParamByName('com').Value := Cod;
     DM.qFinanCompra.Open;

     FinanCompra := '';

     DM.qFinanCompra.First;
     while DM.qFinanCompra.Eof = false do
      begin
       FinanCompra := FinanCompra + Completa(DM.qFinanCompraDOCUMENTO.Value, 29) +
                   AlignRigth(FormatDateTime('dd/mm/yyyy', DM.qFinanCompraVENCI.Value), 10) +
                   AlignRigth(FormatFloat('###,###,###,##0.00', DM.qFinanCompraVALOR.Value), 25)+
                   #13+#10;

       DM.qFinanCompra.Next;
      end;

     Application.CreateForm(TfImpressoes, fImpressoes);
     fImpressoes.rlmemo2.lines.clear;
     fImpressoes.rlmemo2.lines.Add(finanCompra);

     vEnv_EmailDest := '';
     vEnv_Report    := fImpressoes.RpCompra;
     fImpressoes.RpCompra.PreviewModal;
     fImpressoes.Free;

end;

procedure TfCompra.EdCodKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key=VK_DOWN then
   XiButton3.SetFocus;
end;

procedure TfCompra.edDescrChange(Sender: TObject);
var
  empSel :string;
begin
  if (edDescr.Text <> '')  then
  begin
    if dm.qParametrocompra_etq_sele.Text = 'S' then
      empSel := inttostr(cbEmp.KeyValue)
    else
      empSel := '1';

    GridPesqPro.Visible := True;
    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add({' Select semi_acabado.Id as codigo, semi_acabado.descricao as descr, coalesce(semi_acabado.precocompra,0) as precocompra, '+
                       ' semi_acabado.unidade, ''S'' Tipo, ''Semi-acabado'' DesTipo, '+
                       ' csosn as cst, cfop, icms, ''             '' referencia, ''              '' barras,  '+
                       ' coalesce( (select sum(coalesce(e.quantidade,0.000)) from estoque e '+
                       '  where e.idproduto = semi_acabado.id and e.tpmov = ''S'' and e.idemp = '+empSel+' ),0.000) qtdestoque  '+
                       ' from semi_acabado '+
                       ' where semi_acabado.ex = 0  and ( semi_acabado.descricao like '+QuotedStr('%'+edDescr.Text+'%')+
                       ' or semi_acabado.id like ' + QuotedStr('%'+edDescr.Text+'%') + ')' +

                       ' Union all '+ } //Retirado Semi-Acabado

                       ' Select produto.Id as codigo,  produto.descricao as descr, coalesce(produto.precocompra,0) as precocompra, '+
                       ' produto.ft_conv_un as unidade, produto.tipo, '+
                       ' case when produto.tipo = ''P''  then ''Final        ''  '+
                       ' when produto.tipo = ''M''  then      ''Matéria Prima''  end DesTipo, '+
                       ' csosn cst, cfop, icms , referencia, barras, '+
                       {' coalesce( (select sum(coalesce(e.quantidade,0.000)) from estoque e '+
                       '  where e.idproduto = produto.id and e.tpmov = produto.tipo and e.idemp = '+empSel+' ),0.000)}' sum(estoque.quantidade) qtdestoque  '+

                       ' from produto ' +
                       ' left join estoque on estoque.IdProduto = produto.id and estoque.idemp = '+empSel+' and produto.tipo = estoque.tpmov '+
                       ' where produto.ex = 0 and produto.ativo = ''S'' and ( produto.descricao like '+QuotedStr('%'+edDescr.Text+'%')+
                       ' or produto.referencia like ' + QuotedStr('%'+edDescr.Text+'%') +
                       ' or produto.barras like ' + QuotedStr('%'+edDescr.Text+'%') +
                       ' or produto.id like ' + QuotedStr('%'+edDescr.Text+'%') + ')' +
                       ' group by produto.Id, produto.descricao, produto.precocompra, produto.ft_conv_un, produto.tipo, '+
                       ' csosn, cfop, icms, referencia, barras ' +
                       ' Order by 2 ');
    DM.qSelect.Open;
    TFloatField(DM.qSelect.FieldByName('qtdestoque')).DisplayFormat := '#0.###';

    GridPesqPro.Visible := (not DM.qSelect.IsEmpty);
  end
  else
    GridPesqPro.Visible := False;
end;

procedure TfCompra.edDescrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF GridPesqPro.Visible THEN
  GridPesqPro.SetFocus;
end;

procedure TfCompra.GridPesqProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCompra.GridPesqProKeyPress(Sender: TObject; var Key: Char);
begin

 if Key = #13 then
  begin
    Key := #0;

    if not DM.qSelect.IsEmpty then
    begin
      EdCod.Text := DM.qSelect.FieldByName('codigo').Text;
      GridPesqPro.Visible := false;

      EdCodExit(application);
    end;
  end;

{
if Key = #13 then
 begin
   Key := #0;
  if not DM.qSelect.IsEmpty then
   begin
     altprod := 'N';
     EdDescr.Text     := DM.qSelect.fieldbyname('descr').Text;
     GridPesqPro.Visible := False;
     codpro           := DM.qSelect.fieldbyname('codigo').AsInteger;
     tp_pro           := DM.qSelect.fieldbyname('Tipo').Text;
     edUni.Text       := DM.qSelect.FieldByName('unidade').Text;
    // edEstoque.Text   := DM.qSelect.FieldByName('QTDESTOQUE').Text;
     edCST.Text       := DM.qSelect.FieldByName('cst').Text;
     edCFOP.Text      := DM.qSelect.FieldByName('cfop').Text;
     edICMS.Text      := DM.qSelect.FieldByName('icms').Text;
     edQtd.Text       := '1';
     edUnit.Text      := formatfloat('#####0.0000', DM.qSelect.FieldByName('precocompra').AsFloat);
     prCompra         := DM.qSelect.FieldByName('precocompra').Value;
     edCST.SetFocus;
   end;
 end;  }
end;

procedure TfCompra.SomaItens;

begin
  SOMA := 0;
  DESC := 0;
  vIPI := 0;
  vPorc   := 0;
  vDesco  := 0;
  vST     := 0;
  vBaseST := 0;

  L.First;
   WHILE L.Eof = FALSE DO
    BEGIN
     SOMA := SOMA + RoundTo((LQTD.asFloat * LUnitario.asFloat), -2);//LTOTAL.Value;
     //DESC := DESC + LDESCONTO.Value;
     //vIPI := vIPI + (LTotal.asFloat * LIPI.asFloat / 100);   //Mudado para baixo para pegar o ipi com desconto Nilton 15/03/2022
     vST  := vST  + LST2.asFloat;
     vBaseST := vBaseST + LST.asFloat;//LST2.asFloat;

     //Calcula desconto por item
      vDesco := 0;
      if (Tvlrdesconto.AsFloat > 0) AND (TValor.AsFloat > 0) then
      begin
        vPorc := (LQtd.AsFloat * LUnitario.AsFloat) * 100 / TValor.AsFloat;
        vDesco := roundto(Tvlrdesconto.AsFloat * vPorc / 100, -2);

        if L.RecNo = L.RecordCount then
          vDesco := Tvlrdesconto.AsFloat -
            strtofloat(formatfloat('#0.00', Desc)); //Desc

      end;
      vAlterandoProduto := 'S';
      L.edit;
      LDesconto.asFloat := vDesco;
      LTotal.asFloat := RoundTo((LQtd.asFloat * LUnitario.asFloat), -2) - LDesconto.asFloat;
      L.post;
      vAlterandoProduto := 'N';
      vIPI := vIPI + (LTotal.asFloat * LIPI.asFloat / 100);
      Desc := Desc + vDesco;

     L.Next;
    END;

  IF T.State IN [DSEDIT, DSINSERT] THEN
   T.Edit;

  TVALOR.Value    := SOMA;
  TDESCONTO.Value := DESC;
  TValIPI.Value   := vIPI;
  TValorICMSST.Value := vST;
  Tbaseicmsst.Value  := vBaseST;
  //Ttotal.Value    := SOMA + TVALIPI.Value + TFRETE.Value + TOUTROS.Value - Desc;
  TTotal.Value    :=  SOMA + TVALIPI.Value + TFRETE.Value + TOUTROS.Value +
                  Tvlrseguro.Value + Tvaloricmsst.Value  - TVlrdesconto.Value ;


  //verifica
  if (Tidemp.AsInteger = 1) and (valor_ref > 0) and (valor_ref > Ttotal.AsFloat)  then
  begin
     Label32.Transparent := false;
     Label32.Color       := clRed;
     label32.Refresh;
  end
  else
  begin
     Label32.Transparent := true;
     label32.Refresh;
  end;

end;

procedure TfCompra.edDescrEnter(Sender: TObject);
begin
  if trim(edDescr.text) <> '' then
  begin
    L.Append;
    edUni.Clear;
    edDescr.Clear;
    edQtd.Clear;
    edUnit.Clear;
    edTotal.Clear;
    edCod.clear;
    codpro := 0;
    //idL := 0; // usado quando edita para nao add um novo
    tp_pro := '';
    edDescr.SetFocus;
  end;
end;

procedure TfCompra.edDescrExit(Sender: TObject);
begin
 if (edDescr.Text <> '') and (DM.qSelect.IsEmpty) then
  NovoPro;
end;

procedure TfCompra.NovoPro;
begin
 {
 IF Application.MessageBox('Produto Não Encontrado! Deseja Cadastrar?','Confirmação', MB_YESNO)=idyes then
   begin

    if not (L.state in [dsInsert]) then
       L.append;

    Application.CreateForm(TfCadRapPro, fCadRapPro);
    fCadRapPro.descric := edDescr.Text;
    fCadRapPro.ShowModal;
    LIDproduto.AsString := NovoCodigo;
    ActiveControl := edDescr;
    edDescr.text := copy(fCadRapPro.descric,1,length(fCadRapPro.descric)-1 ) ;
    GridPesqPro.SetFocus;

    if conf_novo <> 'S' then
       edDescr.Clear;

    fCadRapPro.Free;
   end
  else
   begin
    edDescr.Clear;
    edDescr.SetFocus;
   end;
   }
end;

procedure TfCompra.qForNewRecord(DataSet: TDataSet);
begin
  qForID.Value        := InsereCodigo('fornecedor','ID' );
  qForTipo.Text       := 'F';
  qForTipoPessoa.Text := 'J';
  qForEx.Value        := 0;
  qFordia_venci.Value := 10;
  qForAtivo.Text      := 'S';
  qForpais.value      := 1058;
  qForEmUso.AsString  := 'N';

end;

procedure TfCompra.qOcNewRecord(DataSet: TDataSet);
begin
 qOCID.Value          := InsereCodigo('OC','ID');
 qOCDATA.Value        := date;
 qOCFRETE.Value       := 0;
 qOCIDusuario.Value   := dm.qUserId.Value;
 qOCtpfrete.Value     := 1;
 {if dm.qUseridemp.AsInteger = 1 then
 begin
    if dm.qEmpresa.Locate('empresa_padrao', 'S', [] ) then
       qOCidemp.AsInteger := dm.qEmpresaid.AsInteger
    else
       qOCidemp.AsInteger := dm.qUseridemp.AsInteger;
 end
 else
    qOCidemp.AsInteger := dm.qUseridemp.AsInteger; }
 //agora pega a mesma empresa da compra Nilton 06/03/2023
 if vIdEmpresaOC > 0 then
    qOcidemp.AsInteger     := vIdEmpresaOC
 else
    qOcidemp.AsInteger     := Tidemp.AsInteger;

 qOCvalipi.Value        := 0;
 qOCDESCONTO.Value      := 0;

end;

procedure TfCompra.qOC_IBeforePost(DataSet: TDataSet);
begin
  qOC_IID.Value   := InsereCodigo('OC_I','ID');

 if qOC_IpIPI.AsFloat > 0 then
    qOC_IvIpi.Value := (qOC_ITotal.AsFloat * qOC_IpIPI.AsFloat / 100)
 else
    qOC_IvIpi.Value := 0;
end;

procedure TfCompra.qProdNewRecord(DataSet: TDataSet);
begin
  qProdId.Value                := InsereCodigo('produto', 'id');
  qProdtipo.Value              := 'P';
  qProdproduzido.Value         := 'N';
  qProdidfornecedor.Value      := 0;
  qProdRoyalties.Value         := 0;
  qProdunidade_nfe.Value       := 'UN';
  qProdIDORIGEM.Value          := 0;
  qProdIDTIPO_TRIBUTACAO.Value := 1;
  qProdmultiplo.Value          := 1;
  qProdcubagem.Value           := 0;
  qProdEmbalagem.Value         := 'N';
  qProdSincronizado.Value      := 'N';
  qProdaltura.Value            := 0;
  qProdlargura.Value           := 0;
  qProdcomprimento.Value       := 0;

end;

procedure TfCompra.NovoFor;
begin
 {
 IF Application.MessageBox('Fornecedor Não Encontrado! Deseja Cadastrar?','Confirmação', MB_YESNO)=idyes then
   begin

    Application.CreateForm(TfCadRapFor, fCadRapFor);
    fCadRapFor.T.Open;
    fCadRapFor.T.Insert;
    fCadRapFor.TNome.Value := edNomCli.Text;

    fCadRapFor.ShowModal;

    TIDfornecedor.Text := NovoCodigo;
    DBedit2.Text := NovoCodigo;
    DBedit2Exit(Application);
    fCadRapFor.Free;
   end
  else
   begin
    edNomCli.Clear;
    edNomCli.SetFocus;
   end;
   }
end;


procedure TfCompra.DBEdit12Exit(Sender: TObject);
begin
  TTotal.Value := SOMA + TVALIPI.Value + TFRETE.Value + TOUTROS.Value +
                  Tvlrseguro.Value + Tvaloricmsst.Value  - TVlrdesconto.Value ;
  //Estava TValor

  //Nilton 15/03/2022
  Somaitens;
end;

procedure TfCompra.LNewRecord(DataSet: TDataSet);
begin
 LIDCOMPRA.Value := CodCompra;

end;

procedure TfCompra.LUnitarioValidate(Sender: TField);
begin
 LTOTAL.Value := RoundTo(LQTD.Value * LUNITario.Value, -2);
end;

procedure TfCompra.TNewRecord(DataSet: TDataSet);
begin
 TID.Value          := InsereCodigo('compra','ID');
 TDATA.Value        := date;
 TVALICMS.Value     := 0;
 TBASEICMS.Value    := 0;
 TVALIPI.Value      := 0;
 TFRETE.Value       := 0;
 TOUTROS.Value      := 0;
 Tbaseicmsst.Value  := 0;
 Tvaloricmsst.Value := 0;
 Tvlrseguro.Value   := 0;
 Tvlrdesconto.Value := 0;
 TIDusuario.Value   := dm.qUserId.Value;
 Tmodelo.Value      := '01';
 Tserie.Value       := '001';
 Ttpfrete.Value     := 1;
 TSTATUS.Value      := 'ABERTO';

 if dm.qUseridemp.AsInteger = 1 then
 begin
    if dm.qEmpresa.Locate('empresa_padrao', 'S', [] ) then
       Tidemp.AsInteger := dm.qEmpresaid.AsInteger
    else
       Tidemp.AsInteger := dm.qUseridemp.AsInteger;
 end
 else
    Tidemp.AsInteger := dm.qUseridemp.AsInteger;

end;

procedure TfCompra.VerificaOC;
Var vTotalOC  : Real;
    vRestoOC : String;
begin
   if {vIdOC > 0}vIdOC <> '' then
    begin
      vrestoOC := 'N';
      vTotalOC := 0;
      L.first;
      while L.eof = false do
      begin
        if LQTD.asFloat < LQTD_OC.asFloat then
          vRestoOC := 'S';
        L.next;
      end;

      if vRestoOC = 'S' then
      begin
        if application.Messagebox(pChar('Quantidade da compra menor que a ordem de compra. '+#13+#10+
                               'Deseja gerar uma nova ordem de compra com o restante?'),'Atenção', mb_YesNo) =idYes then
        begin
          qOC.close;
          qOC.open;
          qOC_I.close;
          qOC_I.open;

          qOC.insert;
          qOCidFornecedor.asInteger := TIDFornecedor.asInteger;
          qOC.post;
          L.first;
          while L.eof = false do
          begin
            if LQtd.asFloat < Lqtd_OC.asFloat then
            begin
              qOC_I.insert;
              qOC_IidOC.asInteger := qOCID.asInteger;
              qOC_IidProduto.asInteger := LIDPRODUTO.asInteger;
              qOC_IQtd.asFloat := LQTD_OC.asFloat - LQTD.asFloat;
              qOC_IUnitario.asFloat := LUnitario.asFloat;
              qOC_IDesconto.asFloat := LDESCONTO.asFloat;
              qOC_ITotal.asFloat    := (qOC_Iqtd.asFloat * qOC_IUnitario.asFloat) - qOC_IDesconto.asFloat;
              qOC_ITIPO.AsString    := LTipo.AsString;  //add Nilton 24/10/2022
              qOC_I.post;
              vTotalOC := vTotalOC + qOC_ITotal.asFloat;
            end;
            l.next;
          end;
          qOC.edit;
          qOCValor.asFloat := vTotalOC;
          qOCTotal.asFloat := vTotalOC;
          qOC.post;
        end;
      end;
    end;

    alteraOC(vIdOC);
end;

procedure TfCompra.LAfterDelete(DataSet: TDataSet);
begin
SomaItens;
end;

procedure TfCompra.LAfterPost(DataSet: TDataSet);
begin
  L.ApplyUpdates;

  if Oc = 'S' then
     Exit;

  if vAlterandoProduto <> 'S' then
    SomaItens;
end;

procedure TfCompra.LAfterScroll(DataSet: TDataSet);
begin
   if Oc = 'S' then
      Exit;

   qCom.close;
   qCom.ParamByName('id').value  := LIDPRODUTO.asinteger;
   qCom.ParamByName('idc').value := TID.asinteger;
   qCom.open;

end;

procedure TfCompra.LQTDValidate(Sender: TField);
begin
LTOTAL.Value := RoundTo(LQTD.Value *  LUNITario.Value, -2);
end;

procedure TfCompra.edTotalKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
    if codpro = 0 then
    begin
      edCod.setFocus;
      exit;
    end;

   try
    Screen.Cursor:=crSQLWait;
    if altprod = 'N' then
       if not (L.State in [dsEdit, dsInsert]) then
          begin
             L.Append;
          end
         else
           L.Edit
    else
     L.Edit;

    LIDPRODUTO.Value := codpro;
    LDESCRICAO.Value := edDescr.Text;
    LQTD.Value       := strtofloat(edQtd.text);
    LUNITario.Value  := strtofloat(edUnit.Text);
    LTotal.Value     := strtofloat(edTotal.Text);
    LIDCompra.Value  := CodCompra;
    Ltipo.Value      := tp_pro;
    Lcst.Text        := edCST.Text;
    Lcfop.Text       := edCFOP.Text;
    Licms.Text       := edICMS.Text;
    LIPI.Text        := edIPI.Text;
    LST.Text         := edBaseST.Text;
    LST2.Text        := edST.Text;
    if edLote.Text <> '' then
      Llote.AsString   := edLote.Text;
    if tp_pro = 'P' then
       LDesTipo.Value   := 'Final'
    else
    if tp_pro = 'M' then
       LDesTipo.Value   := 'Materia Prima'
    else
    if tp_pro = 'S' then
       LDesTipo.Value   := 'Semi-acabado';
    L.Post;

   finally
    Screen.Cursor:=crDefault;
   end;

   L.Close;
   L.ParamByName('codigo').Value := Tid.Value;
   L.Open;

   L.Append;
   L.Edit;

   edUni.Clear;
  // edEstoque.Clear;
   edDescr.Clear;
   edQtd.Clear;
   edUnit.Clear;
   edTotal.Clear;
   edIPI.Clear;
   edBaseST.Clear;
   edST.Clear;
   edCod.clear;
   edLote.Clear;
   altprod := 'N';
   codpro := 0;
   tp_pro := '';
   edCod.SetFocus;
  end;
end;

procedure TfCompra.FormDeactivate(Sender: TObject);
begin
Inserida := 'S';
end;

procedure TfCompra.acSalvarExecute(Sender: TObject);
begin
  if trim(cbCusto.Text) = '' then
    begin
       Application.MessageBox('Informar o Centro de Custo','Atenção');
       cbCusto.SetFocus;
       exit;
    end;

  if dm.qParametrobloqueia_nf_lancada_fornecedor.asString = 'S' then  //Se nf já lancada para o fornecedor
  begin
    //if StatusC = 'I' then
     //begin
      if ((Dbedit2.Text <> '') and (Dbedit1.Text <> '')) and (ckNs.Checked = false) then
       begin
         dm.qPesq.Close;
         dm.qPesq.SQL.Clear;
         dm.qPesq.SQL.Add('select * from compra where numnota = ' + dbedit1.Text +
                           ' and idfornecedor = ' + Dbedit2.Text + ' and compra.id <> '+tid.text+
                           ' and idemp = '+inttoStr(cbEmp.keyValue));
         dm.qPesq.Open;
         if dm.qPesq.IsEmpty = false then
           begin
             Application.MessageBox('Nota Fiscal já lançada para este fornecedor. Por favor, verifique!', 'Atenção');
             dbedit1.SetFocus;
             exit;
           end;

       end;
    // end;
  end;

  if L.IsEmpty then
     begin
       Application.MessageBox('Compras sem Produtos','Atenção');
       exit;
     end;

   if (Tidemp.AsInteger = 1) and (Tnf_ref.AsInteger = 0) then
   begin
       if Application.MessageBox('Campo Referência não Informado, Deseja continuar assim mesmo?','Atenção',
                              mb_yesno + mb_defbutton2 ) =  idNo then
       begin
          dbedit17.SetFocus;
          exit;
       end;
   end;

  somaitens;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then
     Exit
   else
    begin
     IF (L.State IN [DSINSERT]) AND (LIDPRODUTO.Value = 0) THEN
        L.Cancel;
     if T.State in [dsedit, dsinsert] then
        T.Post;

     //alteraOC(vIdOC);
     VerificaOC;
     close;
    end;


end;

procedure TfCompra.EdNomCliChange(Sender: TObject);
begin
  if (EdNomCli.Text <> '') then
   begin
    gdPesq.Visible := True;
    posicionagrid(gdPesq, dbedit2 );
    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add('Select ID, nome, fantasia, idcondfpto, idcusto, forma_pgto '+
                        ' from fornecedor where ativo = ''S'' and  '+
                        ' (nome like '+QuotedStr('%'+EdNomCli.Text+'%')+
                        ' or fantasia like '+QuotedStr('%'+EdNomCli.Text+'%')+
                        ' ) Order by Nome ');
    DM.qSelect.Open;
    if DM.qSelect.IsEmpty then
     gdPesq.Visible := False;
    end
  else
   gdPesq.Visible := False;
end;

procedure TfCompra.EdNomCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF gdPesq.Visible THEN
  gdPesq.SetFocus;
end;

procedure TfCompra.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfCompra.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Key := #0;

  if not DM.qSelect.IsEmpty then
   begin
    TIDFORNECEDOR.Text:= DM.qSelect.FIELDBYNAME('ID').Value;
    gdPesq.Visible := False;
    DBEdit2Exit(Application);
   end;
 end;

end;

procedure TfCompra.gdPesqSolKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Key := #0;

  if not DM.qSelect.IsEmpty then
   begin
    Tidsolicitante.Text:= DM.qSelect.FIELDBYNAME('ID').Value;
    gdPesqSol.Visible := False;
    DBEdit20Exit(Application);
   end;
 end;

end;

procedure TfCompra.LBeforeInsert(DataSet: TDataSet);
begin
 if T.State in [dsinsert] then
  begin
   T.Post;
   T.Edit;
  end;
end;

procedure TfCompra.LBeforePost(DataSet: TDataSet);
begin
 LID.Value       := InsereCodigo('compra_I','ID');

end;

procedure TfCompra.edQtdExit(Sender: TObject);
begin
  if (edqtd.Text <> '') and (edUnit.Text <> '') then
      EdTotal.Text := formatfloat('#####0.00', strtofloat(edqtd.Text)*strtofloat(edunit.Text) );

  if edQtd.text = '' then
    edQtd.setFocus;
end;

procedure TfCompra.edUnitExit(Sender: TObject);
//var
//  x : Char;
begin
  if (edqtd.Text <> '') and (edUnit.Text <> '') then
     EdTotal.Text := formatfloat('#####0.00', strtofloat(edqtd.Text)*strtofloat(edunit.Text) );

  if edUnit.text = '' then
    edUnit.setFocus;
  {
  edTotalEnter( Application );

  x := #13;
  edTotalKeyPress( Application, x );
  }
end;

procedure TfCompra.TBeforeInsert(DataSet: TDataSet);
begin
  CodCompra   := InsereCodigo('compra','ID');
end;

procedure TfCompra.TidempValidate(Sender: TField);
begin
   label32.Visible  := (Tidemp.AsInteger = 1);
   DBEdit17.Visible := (Tidemp.AsInteger = 1);
end;

procedure TfCompra.EdTotalEnter(Sender: TObject);
begin
    if cbEmp.KeyValue > 1 then // somente quando for a matriz
       Exit;

    if (ckAjuste.Visible) and (ckAjuste.Checked) then
    begin
     if trim(floattostr(prCompra)) <> floattostr(strtofloat(trim(edUnit.Text))) then
      begin

       NovoPrecoCompra := prCompra;

       Application.CreateForm( TfPrecoProd, fPrecoProd);

       fprecoProd.edCompra.Visible := true;
       fprecoProd.edMargem.Visible := true;
       fprecoProd.edVenda.Visible  := true;
       fprecoProd.qP.close;
       fprecoProd.qP.SQL.Clear;
       if tp_pro = 'P' then
        fPrecoProd.qP.SQL.Add( ' select ''P'' tipo, id, descricao, ft_conv_un unidade, precocompra, '+
                               ' margem, valor preco from produto where id = :cod ')
       else if tp_pro = 'M' then
        fPrecoProd.qP.SQL.Add( ' select ''M'' tipo, id, descricao, ft_conv_un unidade, precocompra, '+
                               ' margem, valor preco from produto where id = :cod ')
       else if tp_pro = 'S' then
        fPrecoProd.qP.SQL.Add( ' select ''S'' tipo, id, descricao, unidade, precocompra, '+
                               ' margem, preco from semi_acabado where id = :cod ');

            fPrecoProd.qP.ParamByName('cod').Value := inttostr(codpro);
            fPrecoProd.qP.Open;
            fPrecoProd.qP.Edit;
            fPrecoProd.lcompra.Caption := formatfloat('###,###,###,##0.0000', fPrecoProd.qPprecocompra.Value);
            fPrecoProd.lmargem.Caption := formatfloat('##0.00'            , fPrecoProd.qPmargem.Value);
            fPrecoProd.lvenda.Caption  := formatfloat('###,###,###,##0.00', fPrecoProd.qPpreco.Value);
            fPrecoProd.qPPrecoCompra.Value := strtofloat(edUnit.Text);
            fPrecoProd.lcod.Caption  := fPrecoProd.qPID.Text;
            fPrecoProd.lDes.Caption  := fPrecoProd.qPDescricao.Text;
            fPrecoProd.lUni.Caption  := fPrecoProd.qPUnidade.Text;

       fprecoProd.ShowModal;

       edUnit.Text := formatfloat('##0.0000', NovoPrecoCompra);
       edUnitExit(Application);
       fprecoprod.Free;
      end;
    end;


end;

procedure TfCompra.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

procedure TfCompra.edCodExit(Sender: TObject);
Var
  empSel : String;
begin
  if (EdCod.Text <> '') then
  begin

    if dm.qParametrocompra_etq_sele.Text = 'S' then
         empSel := inttostr(cbEmp.KeyValue)
      else
         empSel := '1';


    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add(' Select produto.Id as codigo,  produto.descricao as descr, coalesce(produto.precocompra,0) as precocompra, '+
                         ' produto.ft_conv_un as unidade, produto.tipo, '+
                         ' case when produto.tipo = ''P''  then ''Final        ''  '+
                         ' when produto.tipo = ''M''  then      ''Matéria Prima''  end DesTipo, '+
                         ' csosn cst, cfop, icms , referencia, barras, '+
                         ' coalesce( (select sum(coalesce(e.quantidade,0.000)) from estoque e '+
                         '  where e.idproduto = produto.id and e.tpmov = produto.tipo and e.idemp = '+empSel+' ),0.000) qtdestoque  '+

                         ' from produto ' +
                         ' where produto.ex = 0 and produto.ativo = ''S'' and ( '+
                       ' produto.id = ' + edCod.Text  + ')' +
                       //' or produto.referencia = ' + QuotedStr(edCod.Text) + ')' +
                       ' Order by 2 ');   //Busca por ID

    DM.qSelect.Open;

    if DM.qSelect.RecordCount > 0 then
    begin
     altprod := 'N';
     edDescr.OnChange := nil;
     EdDescr.Text     := DM.qSelect.fieldbyname('descr').Text;
     GridPesqPro.Visible := False;
     codpro           := DM.qSelect.fieldbyname('codigo').AsInteger;
     tp_pro           := DM.qSelect.fieldbyname('Tipo').Text;
     edUni.Text       := DM.qSelect.FieldByName('unidade').Text;
    // edEstoque.Text   := DM.qSelect.FieldByName('QTDESTOQUE').Text;
     edCST.Text       := DM.qSelect.FieldByName('cst').Text;
     edCFOP.Text      := DM.qSelect.FieldByName('cfop').Text;
     edICMS.Text      := DM.qSelect.FieldByName('icms').Text;
     edQtd.Text       := '1';
     edUnit.Text      := formatfloat('#####0.000', DM.qSelect.FieldByName('precocompra').AsFloat);
     prCompra         := DM.qSelect.FieldByName('precocompra').Value;
     edDescr.OnChange := edDescrChange;
     edCST.SetFocus;
    end
    else
    begin
      application.MessageBox('Produto Não Encontrado!', 'Atenção');
      EdCod.clear;
      EdCod.SetFocus;
    end;
  end
  else
  begin
    edDescr.clear;
    edDescr.SetFocus;
  end;
end;

procedure TfCompra.DBGrid1CellClick(Column: TColumn);
begin
  if L.IsEmpty = false then
    begin
      altprod      := 'S';
      edDescr.Text := LDescricao.AsString;
      gridPesqPro.Visible := false;
      edUnit.Text  := formatfloat('#.0000', LUNITario.Value   );
      edQtd.Text   := formatfloat('#.000', LQtd.Value   );
      edTotal.Text := formatfloat('#.00', LTotal.Value );
      edCST.Text := Lcst.Text;
      edCFOP.Text := Lcfop.Text;
      edICMS.Text := Licms.Text;
      edIPI.Text := LIPI.Text;
      edBaseST.Text := LST.Text;
      edST.Text := LST2.Text;
      Tp_pro       := LTIPO.Value;
      codpro       := LIDProduto.Value;
      edCod.text   := LIDProduto.text;
    end;
end;

procedure TfCompra.DBEdit4Exit(Sender: TObject);
begin
 if TData.Value > Date then
   begin
    Application.MessageBox('A data de emisão não pode ser maior que a data atual', 'Atenção');
    dbedit4.SetFocus;
    exit;
   end;
end;

procedure TfCompra.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
    try
      StrToDate(DBEdit4.Text);
      except on EConvertError do
      begin
        Application.MessageBox('Data Invalida!', 'Atenção');
        dbedit4.Text := datetostr(Date);
        dbedit4.SetFocus;
      end;
    end;
    dbedit2.SetFocus;
 end;

end;

procedure TfCompra.EdNomCliExit(Sender: TObject);
begin
  if (edNomCli.Text <> '') and (DM.qSelect.IsEmpty) then
      NovoFor;
end;

procedure TfCompra.edNomeSolChange(Sender: TObject);
begin
  if (edNomeSol.Text <> '') then
   begin
    gdPesqSol.Visible := True;
    posicionagrid(gdPesqSol, dbedit20 );
    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add('Select ID, nome from usuario where id > 1 and  '+
                       ' (nome like '+QuotedStr('%'+edNomeSol.Text+'%')+
                       ' ) Order by Nome ');
    DM.qSelect.Open;
    if DM.qSelect.IsEmpty then
     gdPesqSol.Visible := False;
    end
  else
   gdPesqSol.Visible := False;

end;

procedure TfCompra.edNomeSolKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF gdPesqSol.Visible THEN
  gdPesqSol.SetFocus;

end;

procedure TfCompra.edQtdEnter(Sender: TObject);
begin
 if trim(edDescr.Text) = '' then
    edDescr.SetFocus;

end;


procedure TfCompra.atualizapreco;
var
  marg, cusFinal, venSugerido, val1, val2, vPrecoCompra : real;
begin
  if cbEmp.KeyValue > 1 then
     Exit;

  L.First;
  while L.Eof = false do
    begin
      qAtu.close;
      qAtu.sql.clear;
      if Ltipo.Value = 'S' then
         qAtu.sql.add(' select id, precocompra, preco, margem, '+
                      ' 0 CustoCxMaster, 0 CustoProcesso, 0 CustoMP,  0 Custo_montagem, '+
                      ' 0 CustoOperacional, 0 Custoproducao, 0 VendaSugerido '+
                      ' from semi_acabado ' +
                      ' where id = '+LIDproduto.text +' order by id '  )
      else
         qAtu.sql.add(' select id, precocompra, valor as preco, margem, '+
                      ' CustoCxMaster, CustoProcesso, CustoMP,  Custo_montagem, '+
                      ' CustoOperacional, Custoproducao, VendaSugerido '+
                      ' from produto ' +
                      ' where id = '+LIDproduto.text +' order by id '  );

      qAtu.Open;

      //Se parametro dias_calc_preco_compra > 0, calcula a média das ultimas compras dentro desse periodo  Nilton 06/12/2021
      if dm.qParametrodias_calc_preco_compra.asInteger > 0 then
      begin
        dm.qPesq.close;
        dm.qPesq.SQL.clear;
        dm.qPesq.SQL.add('select sum(compra_i.unitario), count(compra.id) from compra_i '+
                         ' inner join compra on compra.id = compra_i.idcompra '+
                         ' where compra.data between :dt1 and :dt2 '+
                         ' and compra_i.idproduto = :pro');
        dm.qPesq.ParamByName('dt1').Value := FormatDateTime('dd/MM/yyyy',date - dm.qParametrodias_calc_preco_compra.asInteger);
        dm.qPesq.ParamByName('dt2').Value := date;
        dm.qPesq.ParamByname('pro').Value := LIDPRODUTO.asInteger;
        dm.qPesq.Open;
        dm.qPesq.first;

        vPrecoCompra := dm.qPesq.Fields[0].asFloat / dm.qPesq.Fields[1].asInteger;
      end
      else
        vPrecoCompra := LUNITario.asfloat;


      //
      cusFinal := {LUNITario.asfloat}vPrecoCompra + qAtuCustoproducao.asfloat + qAtuCustoOperacional.asfloat + qAtuCustoCxMaster.AsFloat;
      marg     := qAtumargem.AsFloat;
      if (dm.qParametromargem_minima.AsFloat > 0) and (marg < dm.qParametromargem_minima.AsFloat) then
         if dm.qUser.Locate('Nome_1', 'PER_MINIMA', [] )  then
            if dm.qUserPermitido.Text = 'F' then
               marg := dm.qParametromargem_minima.AsFloat;

      if (marg > 0) then
         venSugerido := cusFinal + (cusFinal * marg / 100)
      else
         venSugerido := cusFinal;

      if DM.qParametrovenda_desc_margem.Text = 'S' then // TESTE - somente itu acos
      begin
        val1 := venSugerido;
        val2 := venSugerido;
      end;
      //
      if LTipo.Value = 'S' then
         ExecSql(' Update semi_acabado set '+
                 ' precocompra = '+ PontoVirgula(formatfloat('#0.000', vPrecoCompra{LUNITario.value})) +
                 ' , margem = ' + PontoVirgula(formatfloat('#0.00', marg ) ) +
                 ' where id = ' + LIDProduto.AsString  )
      else
         ExecSql(' Update produto set '+
                 ' precocompra = '+ PontoVirgula(formatfloat('#0.000', vPrecoCompra{LUNITario.value})) +
                 ' , custofinal = ' + PontoVirgula(formatfloat('#0.000', cusFinal ) ) +
                 ' , VendaSugerido = ' + PontoVirgula(formatfloat('#0.00', venSugerido ) ) +
                 ' , valor  = ' + PontoVirgula(formatfloat('#0.00', venSugerido ) ) +
                 ' , valor2 = ' + PontoVirgula(formatfloat('#0.00', venSugerido ) ) +
                 ' , margem = ' + PontoVirgula(formatfloat('#0.00', marg ) ) +
                 ' where id = ' + LIDProduto.AsString  );

      //Atualiza custo
      atualizacusto(LIDProduto.asInteger, LTipo.asString);

      L.Next;
    end;


end;

procedure TfCompra.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
  Key := #0;
  if StatusC = 'I' then
   begin
    if ((Dbedit2.Text <> '') and (Dbedit1.Text <> '')) and (ckNs.Checked = false) then
     begin
       dm.qPesq.Close;
       dm.qPesq.SQL.Clear;
       dm.qPesq.SQL.Add('select * from compra where numnota = ' + dbedit1.Text +
                         ' and idfornecedor = ' + Dbedit2.Text +
                         ' and idemp = '+inttoStr(cbEmp.keyValue));
       dm.qPesq.Open;
       if dm.qPesq.IsEmpty = false then
         begin
           Application.MessageBox('Nota Fiscal já lançada para este fornecedor', 'Atenção');
           dbedit1.SetFocus;
           exit;
         end;
     end;
   end;
 end;

end;

procedure TfCompra.DBEdit14Exit(Sender: TObject);
begin
 edCFOP.Text := DBEdit14.Text;
end;

procedure TfCompra.DBEdit17Exit(Sender: TObject);
begin
     //busca valor nf/fornecedor
     if (trim(Dbedit2.text) <> '') then
      buscaValorReferente
     else
      Dbedit2.SetFocus;
end;

procedure TfCompra.DBEdit19Exit(Sender: TObject);
begin
  if DBEdit19.Text <> '' then
   begin

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('select id, descricao from cond_pgto where id = '+ trim(DBEdit19.Text) );
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     begin
       Application.MessageBox('Condição Pagamento Não Existe, Verifique!','Atenção' );
       TIdCondPgto.Clear;
       DBEdit19.Clear;
       DBEdit19.SetFocus;
    end;

  end;

end;

procedure TfCompra.btnImportarClick(Sender: TObject);
var
  CodF, i: Integer;
  vCaminhoXml, bar : String;
  vQtd, vConversao : real;

begin
    OpenDialog1.FileName := '';
    OpenDialog1.Title := 'Selecione a NFE';
    OpenDialog1.DefaultExt := '*-nfe.XML';
    OpenDialog1.Filter := 'Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';

    if OpenDialog1.Execute then
    begin
       vCaminhoXml := OpenDialog1.FileName;

       ACBrNFe_imp.NotasFiscais.Clear;
       Acbrnfe_imp.NotasFiscais.LoadFromFile(vCaminhoXML);

       TNUmNota.value := Acbrnfe_imp.NotasFiscais[0].NFe.Ide.nNF;
       TDATA.Value := Acbrnfe_imp.NotasFiscais[0].NFe.Ide.dEmi;
       //Tchave.value := sXML;

       qFor.Close;
       qFor.ParamByName('cod').AsString := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.CNPJCPF;
       qFor.Open;
       if qFor.IsEmpty then
       begin
          qFor.Insert;
          qForCnpj.Text          := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.CNPJCPF;
          qForNome.Text          := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.xNome;
          qForfantasia.Text      := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.xFant;
          qForEndereco.Text      := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.xLgr;
          qFornum.Text           := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.nro;
          qForBairro.Text        := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.xBairro;
          qForidcidade.AsInteger := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.cMun;
          qForCidade.Text        := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.xMun;
          qForUF.Text            := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.UF;
          qForCep.AsInteger      := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.CEP;
          qFortel1.Text          := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.EnderEmit.fone;
          qForIE.Text            := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.IE;
          qFor.Post;
          qFor.ApplyUpdates;
          sleep(100);
          qFor.Close;
          qFor.ParamByName('cod').AsString := Acbrnfe_imp.NotasFiscais[0].NFe.Emit.CNPJCPF;
          qFor.Open;
       end;
       codF := qForID.AsInteger;

       TIDFORNECEDOR.Value := codF;
       DBEdit2Exit(Application);
       gdPesq.Visible    := false;

       T.Post;
       sleep(100);
       T.Edit;

       //Produtos
       DBGrid1.DataSource    := nil;
       GridPesqPro.Visible   := false;

       for I := 0 to  Acbrnfe_imp.NotasFiscais[0].NFe.Det.Count -1 do
       Begin
            if (trim(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEAN) <> '') and //tem barras //Vazio e Sem GTin
               (trim(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEAN) <> 'SEM GTIN')  then
            begin
              qProd.Close;
              qProd.ParamByName('forne').value    :=  0; //barras do produto
              qProd.ParamByName('cod').asstring   :=  Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEan;
              qProd.Open;
              bar := 'S';
            end
            else
            if (trim(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEAN) = '') or //tem barras
               (trim(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEAN) = 'SEM GTIN')  then
            begin
               qProd.Close;
               qProd.ParamByName('forne').value    :=  codF;
               qProd.ParamByName('cod').asstring      :=  Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd;
               qProd.Open;
               bar := 'N';
            end;

            if qProd.RecordCount = 0 then
            begin
                Application.CreateForm( TfBuscaprodutoImp, fBuscaprodutoImp );
                codBusca := 0;
                fBuscaprodutoImp.lRef.Caption := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd + ' Barras: ' + Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEAN;
                fBuscaprodutoImp.ldes.Caption := semacento(TiraCaracter(copy(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.xProd,1,80), '`' ));
                fBuscaprodutoImp.ShowModal;
                //Insert fornecedor  no item que eu escolhi
                 if codBusca > 0 then
                 begin
                  Execsql(' insert into forpro (id, idproduto, idfornecedor, tipo, '+
                      ' cod_for, qtd_conversao) values ( '+
                      inttostr(InsereCodigo('forpro', 'ID'))+', '+
                      inttoStr(codBusca) + ', '+ inttostr(codF) + ', ' +
                      quotedstr({NovoTipoPro}'P') + ', ' + quotedstr( Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd) + ',0 ) '  );
                 end;
                qProd.Close;
                //Alterado para filtrar pelo codigo do produto
                qProd.SQL.clear;
                qProd.SQL.add('Select  p.*  from produto p ' +
                              ' left join forpro on forpro.IDPRODUTO = p.id ' +
                              ' where ' +
                              ' ( (:forne = 0 and p.barras like :cod) or  ' +
                              '     (forpro.IDFORNECEDOR = :forne) and (forpro.idproduto like :COD) ) ');
                qProd.ParamByName('forne').value    :=  codF;
                qProd.ParamByName('cod').asInteger  :=  codBusca;
                qProd.Open;
                fBuscaprodutoImp.Free;
            end;

            if qProd.RecordCount = 0 then // se ainda nao achou
            begin   // Inserindo produto

              Application.CreateForm(TfCadRapPro, fCadRapPro);

              fCadRapPro.descric      := semacento(TiraCaracter(copy(uppercase(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.xProd),1,80), '`' ));
              fCadRapPro.vNCM         := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.NCM;
              fCadRapPro.vPrecoCompra := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.vUnCom),'.', ','));
              fCadRapPro.vBarras      := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cEAN;
              fCadRapPro.vCFOP        := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.CFOP;
              fCadRapPro.vICMS        := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Imposto.ICMS.pICMS;
              fCadRapPro.ShowModal;

              //Insert fornecedor
              Execsql(' insert into forpro (id, idproduto, idfornecedor, tipo, '+
                      ' cod_for, qtd_conversao) values ( '+
                      inttostr(InsereCodigo('forpro', 'ID'))+', '+
                      NovoCodigoPro + ', '+ inttostr(codF) + ', ' +
                      quotedstr(NovoTipoPro) + ', ' + quotedstr( Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd) +
                      ', 0 ) '  );

              {sleep(100);
              qProd.Close;
              qProd.ParamByName('forne').asInteger    :=  codF;
              qProd.ParamByName('cod').asString       :=  Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd;//StrToInt(NovoCodigoPRO);
              qProd.Open;
              qProd.fetchall;  }
              qProd.Close;
              //Alterado para filtrar pelo codigo do produto
              qProd.SQL.clear;
              qProd.SQL.add('Select  p.*  from produto p ' +
                            ' left join forpro on forpro.IDPRODUTO = p.id ' +
                            ' where ' +
                            ' ( (:forne = 0 and p.barras like :cod) or  ' +
                            '     (forpro.IDFORNECEDOR = :forne) and (forpro.idproduto like :COD) ) ');
              qProd.ParamByName('forne').value    :=  codF;
              qProd.ParamByName('cod').asInteger  :=  StrToInt(NovoCodigoPRO);
              qProd.Open;


              fCadRapPro.Free;
            end;

            if qProd.RecordCount > 0 then
            begin
                 vQtd       := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.qCom),'.', ',' ));
                 vConversao := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.qTrib),'.', ',' ));

                 if vConversao  > 0 then
                    vQtd := vConversao;

                 if not(L.State in [dsinsert]) then
                    L.Append;

                   LIDPRODUTO.Value   := qProdID.Value;
                   //LREFERENCIA.Text := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd;
                   LDESCRICAO.Text  := qProddescricao.Text;
                   LQTD.value       := vQtd;
                   LUnitario.value  := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.vProd),'.', ','))/vQtd;
                   LIDCompra.Value  := CodCompra;
                   Ltipo.Value      := qProdTipo.Value;
                   Lcfop.Text       := Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.CFOP;
                   if (qProdCSOSN.Text <> 'NULL') then
                    Lcst.Text    := qProdCSOSN.Text;
                   if (qProdCFOP.Text <> 'NULL') then
                    Lcfop.Text   := qProdCFOP.Text;
                   Licms.AsFloat := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Imposto.ICMS.pICMS),'.', ',' ));
                   LIPI.AsFloat  := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Imposto.IPI.pIPI),'.', ',' ));
                   LST.AsFloat   := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Imposto.ICMS.vBCST),'.', ',' )); //base ST
                   LST2.AsFloat  := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Imposto.ICMS.vICMSST),'.', ',' )); //ICSM ST
                   LTipo.Value      := qProdtipo.Value;
                   Ltipo_prod.Value := qProdtipo.Value;
                   L.Post;
                   L.ApplyUpdates;

                   // grava o cod forprod
                   Execsql(' update forpro set cod_for = ' + quotedstr( Acbrnfe_imp.NotasFiscais[0].NFe.Det.Items[I].Prod.cProd ) +
                           ' where idproduto = '+ LIDProduto.text +
                           ' and idfornecedor = ' + inttostr(codF) );
            end;
       end; //end FOR
       DBGrid1.DataSource := DL;

       if not (T.State in [dsEdit, dsinsert]) then
          T.Edit;

       Tbaseicmsst.Value   := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vBCST),'.', ',')   );
       Tvaloricmsst.Value  := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vST),'.', ',') );
       TBASEICMS.Value     := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vBc),'.', ',')   );
       TVALICMS.Value      := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vICMS),'.', ',') );

       TFRETE.Value        := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vFrete),'.', ','));
       TVALIPI.Value       := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vIPI),'.', ',')  );
       Tvlrseguro.Value    := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vSeg),'.', ',')  );
       Tvlrdesconto.Value  := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vDesc),'.', ',')  );
       TOUTROS.Value       := StrToFloat(TrocaCaracter(floattostr(Acbrnfe_imp.NotasFiscais[0].NFe.Total.ICMSTot.vOutro),'.', ',')  );

       if not(L.State in [dsinsert]) then
          L.Append;

       ACBrNFe_imp.NotasFiscais.Clear;

       GridPesqPro.Visible   := false;

       dbedit12exit(application);

       DBedit11.SetFocus;

     end;

end;

procedure TfCompra.btnOCClick(Sender: TObject);
begin
      Application.CreateForm(TfEscolheOc, fEscolheOc);
      fEscolheOc.ShowModal;
      if conf_oc = 'S' then
      begin
        dbgrid1.Columns[3].visible := true;
        addOc(fEscolheOc.nOc);
      end;
      fEscolheOc.Free;

end;

procedure TfCompra.addOc(cd:integer);
begin


   qOc.close;
   qOc.ParamByName('id').Value  := cd;
   qOc.Open;

   if (vIdOC <> '') and (qOcidFornecedor.AsInteger <> TIDFORNECEDOR.asInteger) then
   begin
     application.MessageBox('Fornecedor da ordem de compra atual diferente da ordem de compra já inserida. Por favor, verifique!', 'Atenção', MB_ICONEXCLAMATION);
     exit;
   end;

   oc := 'S';
   dbedit2.Text        := qOcidFornecedor.text;
   DBedit2Exit(Application);

   TObs.AsString        := qOcObs.AsString;
   Tidemp.Value         := qOcidemp.Value;
   Tidcondpgto.Value    := qOcidcondpgto.Value;
   Tforma_pgto.Value    := qOcformapgto.Value;
   Tidsolicitante.AsInteger := qOcidsolicitante.asinteger;
   TFRETE.asFloat       := qOcFrete.asFloat;
   TvlrDesconto.asFloat    := qOCDesconto.asFloat;
   TValIPI.asFloat         := qOCValIPI.asFloat;
   dbEdit20exit(Application);
   while qOc.Eof = false  do
   begin
     btnOC.Flat     := false;
     L.Insert;
     LIdProduto.Value     := qOcIdProduto.Value ;
     LTipo.Value          := qOcTipo.Value ;
     LQtd.Value           := qOcQtd.Value ;
     Lqtd_OC.Value        := qOcQTD.Value;
     LUnitario.Value      := qOcUnitario.Value ;
     LDesconto.Value      := qOcdesconto_prod.Value ;
     LTotal.Value         := qOctotal_prod.Value ;
     Lidoc.Value          := qOcId.Value ;
     LIPI.asFloat        := qOCpIPI.asFloat;
     L.Post;
     btnOC.Flat     := true;
     sleep(100);
     qOc.Next;
   end;
   sleep(100);
   oc := 'N';

   L.Close;
   L.ParamByName('CODIGO').Value := TID.Value;
   L.Open;

   SOMAITENS;

   if vIdOC <> '' then
    vIdOC := vIdOC + ','+ qOcId.asString
   else
    vIdOC := qOcId.asString;

   vIdEmpresaOC := qOcidemp.AsInteger;
end;


procedure TfCompra.buscaValorReferente;
begin
     if (trim(Dbedit2.text) <> '') and (trim(dbedit17.text) <> '') then
     begin
        dm.qPesq.close;
        dm.qPesq.SQL.Clear;
        dm.qPesq.SQL.Add(' select total from compra where ex = 0 and idfornecedor = '+ trim(Dbedit2.text) +
                         ' and idemp <> 1 and numnota = ' + trim(DBEdit17.text));
        dm.qPesq.Open;
        valor_Ref := dm.qPesq.FieldByName('total').AsFloat;
        if valor_Ref > 0 then
          label32.Caption := 'Referência - Ok' // [' + formatfloat('#0.00', valor_Ref ) + ']';
        else
          label32.Caption := 'Referência';
        label32.Refresh;
     end;

end;



procedure TfCompra.cbEmpCloseUp(Sender: TObject);
begin

  ckAjuste.Checked := (cbEmp.KeyValue = 1);//false;
  ckAjuste.Visible := (cbEmp.KeyValue = 1);

end;

end.
