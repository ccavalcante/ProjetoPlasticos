unit uDM;

interface

uses
  SysUtils, Forms, Dialogs, Classes, DB,  REgistry, IniFiles, ZConnection,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZAbstractTable, ZSqlUpdate,
  DBCtrls, StdCtrls, Windows, ZAbstractConnection, RLPDFFilter, IdComponent,
  IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase, IdMessageClient,
  IdSMTPBase, IdSMTP, IdBaseComponent, IdMessage, RLFilters, RLDraftFilter,
  RLPreviewForm, RLXLSFilter, RLHTMLFilter, RLRichFilter, IdIOHandlerStack,
  IdIOHandler, IdIOHandlerSocket, IdSSL, IdSSLOpenSSL, IdSSLOpenSSLHeaders,
  smtpsend, ssl_openssl, mimemess, mimepart, System.Actions, IdAttachmentFile,
  RLBoleto, RLReport, Variants, IdFTP, RLXLSXFilter, ACBrBase, ACBrSAT,
  pcnConversao, VDOBasePrinter, VDODmPrinter, ACBrSATExtratoClass,
  ACBrSATExtratoReportClass, ACBrSATExtratoFortesFr, ACBrSATClass, ACBrDFeReport,
  DBGrids, Datasnap.DBClient, ACBrBoleto, ACBRUtil, strutils, dateUtils ;

const
  DecimalSeparator : char = ',';


  Type

  TConecta = Record
      DataBase,
      HostName,
      Name,
      Password,
      User,
      Protocol : String;
      Separador_decimal: Char;
      DataBaseWeb : String;
      HostNameWeb : String;
  End;


type
  TDM = class(TDataModule)
    Conex: TZConnection;
    dUSer: TDataSource;
    qUser: TZQuery;
    dParametro: TDataSource;
    qParametro: TZTable;
    qExec: TZQuery;
    qPesq: TZQuery;
    qSelect: TZQuery;
    qIns: TZQuery;
    qCid: TZQuery;
    dCid: TDataSource;
    qAtuMenu: TZQuery;
    qUpAtuMenu: TZUpdateSQL;
    Permissao: TZQuery;
    UpPermissao: TZUpdateSQL;
    dPermissao: TDataSource;
    qMenu: TZQuery;
    dMenu: TDataSource;
    qUn: TZQuery;
    dUn: TDataSource;
    dPesq: TDataSource;
    qUserId: TIntegerField;
    qUserNome: TWideStringField;
    qUserSenha: TWideStringField;
    qUserUser: TWideStringField;
    qUserTipo: TIntegerField;
    qUserAfastamento: TDateTimeField;
    qUserCPF: TWideStringField;
    qUserRG: TWideStringField;
    qUserNascimento: TDateTimeField;
    qUserEndereco: TWideStringField;
    qUserNumero: TWideStringField;
    qUserBairro: TWideStringField;
    qUserCidade: TWideStringField;
    qUserUF: TWideStringField;
    qUsertelefone: TWideStringField;
    qUsercelular: TWideStringField;
    qUserfax: TWideStringField;
    qUseremail: TWideStringField;
    qUserIdUsuario: TIntegerField;
    qUserIdMenu: TIntegerField;
    qUserPermitido: TWideStringField;
    qUseratalho: TWideStringField;
    qUsertipo_M: TWideStringField;
    qUserDescricao: TWideStringField;
    qUserNome_1: TWideStringField;
    qUsertipo_1: TWideStringField;
    qUnft_conv_un: TWideStringField;
    qCidid: TIntegerField;
    qCidNome: TWideStringField;
    qCidUF: TWideStringField;
    qParametroid: TIntegerField;
    qParametroRAZAO: TWideStringField;
    qParametroCNPJ: TWideStringField;
    qParametroENDERECO: TWideStringField;
    qParametroBAIRRO: TWideStringField;
    qParametroCIDADE: TWideStringField;
    qParametroUF: TWideStringField;
    qParametroCEP: TWideStringField;
    qParametroSITE: TWideStringField;
    qParametroEMAIL: TWideStringField;
    qParametroRESPONS: TWideStringField;
    qParametroTELEFONE: TWideStringField;
    qParametroFAX: TWideStringField;
    qParametrologo: TWideStringField;
    qParametroex: TWideStringField;
    qParametrofantasia: TWideStringField;
    qParametronum: TWideStringField;
    qParametroidCidade: TIntegerField;
    qParametroMenuAtualizado: TDateTimeField;
    qParametroIE: TWideStringField;
    qMenuId: TIntegerField;
    qMenuDescricao: TWideStringField;
    qMenuNome: TWideStringField;
    qMenutipo: TWideStringField;
    qAtuMenuId: TIntegerField;
    qAtuMenuDescricao: TWideStringField;
    qAtuMenuNome: TWideStringField;
    qAtuMenutipo: TWideStringField;
    PermissaoId: TIntegerField;
    PermissaoIdUsuario: TIntegerField;
    PermissaoIdMenu: TIntegerField;
    PermissaoPermitido: TWideStringField;
    Permissaoatalho: TWideStringField;
    PermissaoNome: TWideStringField;
    qUserData: TDateTimeField;
    qUservenc_ferias: TDateTimeField;
    qUservenc_exame: TDateTimeField;
    qEstoque: TZQuery;
    uEstoque: TZUpdateSQL;
    dEstoque: TDataSource;
    qEstoqueId: TIntegerField;
    qEstoqueData: TDateTimeField;
    qEstoqueIdProduto: TIntegerField;
    qEstoqueTpMov: TWideStringField;
    qEstoqueQuantidade: TFloatField;
    qEstoqueTipo: TWideStringField;
    qEstoqueIdUsuario: TIntegerField;
    qEstoqueIdOp: TIntegerField;
    qEstoqueIdSubOp: TIntegerField;
    qEstoqueIdSubOp_P: TIntegerField;
    qCPagar: TZQuery;
    uCPagar: TZUpdateSQL;
    dCPagar: TDataSource;
    qCPagarId: TIntegerField;
    qCPagarEmissao: TDateTimeField;
    qCPagarIdFornecedor: TIntegerField;
    qCPagarDocumento: TWideStringField;
    qCPagarVenci: TDateTimeField;
    qCPagarValor: TFloatField;
    qCPagarDtPagto: TDateTimeField;
    qCPagarValPago: TFloatField;
    qCPagaridSubOP_P: TIntegerField;
    qCPagarIdUsuario: TIntegerField;
    qCPagarEx: TIntegerField;
    qCPagarBaixa: TWideStringField;
    qCPagaridBaixa: TIntegerField;
    qCPagaridOP_M: TIntegerField;
    qEstoqueIdOP_M: TFloatField;
    qEstoqueidVenda: TIntegerField;
    Cx: TZQuery;
    uCx: TZUpdateSQL;
    dCx: TDataSource;
    CxId: TIntegerField;
    CxData: TDateTimeField;
    CxIdConta: TIntegerField;
    CxidMov: TIntegerField;
    CxIdUsuario: TIntegerField;
    CxValor: TFloatField;
    CxFpgto: TWideStringField;
    CxValorFpgto: TFloatField;
    CxDesconto: TFloatField;
    CxTotal: TFloatField;
    CxJuros: TFloatField;
    CxTPMov: TWideStringField;
    CxSegundaForma: TWideStringField;
    CxDescri: TWideStringField;
    CxTroco: TFloatField;
    CxF_dinheiro: TFloatField;
    CxF_cheque: TFloatField;
    CxF_debito: TFloatField;
    CxF_credito: TFloatField;
    CxPendente: TWideStringField;
    CRec: TZQuery;
    uRec: TZUpdateSQL;
    dRec: TDataSource;
    CRecId: TIntegerField;
    CRecEmissao: TDateTimeField;
    CRecIdCliente: TIntegerField;
    CRecDocumento: TWideStringField;
    CRecVenci: TDateTimeField;
    CRecValor: TFloatField;
    CRecBaixa: TWideStringField;
    CRecidBaixa: TIntegerField;
    CRecDtPagto: TDateTimeField;
    CRecValPago: TFloatField;
    CRecidVenda: TIntegerField;
    CRecIdUsuario: TIntegerField;
    CRecEx: TIntegerField;
    CRecx: TWideStringField;
    qCReceber: TZQuery;
    uCReceber: TZUpdateSQL;
    dCReceber: TDataSource;
    qCReceberId: TIntegerField;
    qCReceberEmissao: TDateTimeField;
    qCReceberIdCliente: TIntegerField;
    qCReceberDocumento: TWideStringField;
    qCReceberVenci: TDateTimeField;
    qCReceberValor: TFloatField;
    qCReceberBaixa: TWideStringField;
    qCReceberidBaixa: TIntegerField;
    qCReceberDtPagto: TDateTimeField;
    qCReceberValPago: TFloatField;
    qCReceberidVenda: TIntegerField;
    qCReceberIdUsuario: TIntegerField;
    qCReceberEx: TIntegerField;
    qCReceberx: TWideStringField;
    CRecJuros: TFloatField;
    CRecDesconto: TFloatField;
    CRecTotal: TFloatField;
    CRecFpgto1: TWideStringField;
    CRecValor1: TFloatField;
    CRecFpgto2: TWideStringField;
    CRecValor2: TFloatField;
    qCReceberJuros: TFloatField;
    qCReceberDesconto: TFloatField;
    qCReceberTotal: TFloatField;
    qCReceberFpgto1: TWideStringField;
    qCReceberValor1: TFloatField;
    qCReceberFpgto2: TWideStringField;
    qCReceberValor2: TFloatField;
    qParametroseq_reneg: TIntegerField;
    CRecidcondpgto: TIntegerField;
    CRecobs: TWideMemoField;
    CRecTipo: TWideStringField;
    qCReceberidcondpgto: TIntegerField;
    qCReceberobs: TWideMemoField;
    qCReceberTipo: TWideStringField;
    qCPagaridcondpgto: TIntegerField;
    qCPagarobs: TWideMemoField;
    qCPagarTipo: TWideStringField;
    qCPagarx: TWideStringField;
    qCPagarIdCompra: TIntegerField;
    qCPagarValorfpgto: TFloatField;
    qCPagarValorfpgto2: TFloatField;
    qCPagarFpgto: TWideStringField;
    qCPagarFpgto2: TWideStringField;
    qCPagarjuros: TFloatField;
    qCPagardesconto: TFloatField;
    qCPagartotal: TFloatField;
    qCPagaridcusto: TIntegerField;
    qCusto: TZQuery;
    dCusto: TDataSource;
    qCustoId: TIntegerField;
    qCustoDescricao: TWideStringField;
    qCustoTipo: TWideStringField;
    qCompra: TZQuery;
    uCompra: TZUpdateSQL;
    dCompra: TDataSource;
    qCompraid: TIntegerField;
    qCompraDATA: TDateTimeField;
    qCompraIDFORNECEDOR: TIntegerField;
    qCompraNOME: TWideStringField;
    qCompraVALOR: TFloatField;
    qCompraNUMNOTA: TIntegerField;
    qEstoqueidcompra: TIntegerField;
    qImpCompra: TZQuery;
    qImpCompraID: TIntegerField;
    qImpCompraIDFORNECEDOR: TIntegerField;
    qImpCompraVALOR: TFloatField;
    qImpCompraDESCONTO: TFloatField;
    qImpCompraNUMNOTA: TIntegerField;
    qImpCompraVALICMS: TFloatField;
    qImpCompraBASEICMS: TFloatField;
    qImpCompraVALIPI: TFloatField;
    qImpCompraIDUSUARIO: TIntegerField;
    qImpCompraID_1: TIntegerField;
    qImpCompraIDCOMPRA: TIntegerField;
    qImpCompraIDPRODUTO: TIntegerField;
    qImpCompraQTD: TFloatField;
    qImpCompraTOTAL: TFloatField;
    qImpCompraST2: TFloatField;
    qImpCompraFRETE2: TFloatField;
    qImpCompraUNITLIQ: TFloatField;
    qImpCompraIPI: TFloatField;
    qImpCompraFRETE: TFloatField;
    qImpCompraST: TFloatField;
    qImpCompraOUTROS: TFloatField;
    qImpCompraFRETE_1: TFloatField;
    qImpCompraOBS: TWideStringField;
    qImpComprabaseicmsst: TFloatField;
    qImpCompravaloricmsst: TFloatField;
    qImpCompravlrseguro: TFloatField;
    qImpCompravlrdesconto: TFloatField;
    qImpCompracfop: TIntegerField;
    qImpCompramodelo: TWideStringField;
    qImpCompraserie: TWideStringField;
    qImpComprasubserie: TWideStringField;
    qImpCompratpfrete: TIntegerField;
    qImpCompraDESCONTO_1: TFloatField;
    qImpCompraTipo: TWideStringField;
    qImpCompracst: TWideStringField;
    qImpCompracfop_1: TIntegerField;
    qImpCompraicms: TFloatField;
    qImpCompraNOME: TWideStringField;
    qImpCompraDESPGTO: TWideStringField;
    dImpCompra: TDataSource;
    qFinanCompra: TZQuery;
    qFinanCompravalor: TFloatField;
    qFinanCompradocumento: TWideStringField;
    dFinanCompra: TDataSource;
    qRelCPagar: TZQuery;
    qRelCPagarID: TIntegerField;
    qRelCPagarIDFORNECEDOR: TIntegerField;
    qRelCPagarVALOR: TFloatField;
    qRelCPagarVALPAGO: TFloatField;
    qRelCPagarJUROS: TFloatField;
    qRelCPagarEx: TIntegerField;
    qRelCPagarTOTAL: TFloatField;
    qRelCPagarDESCONTO: TFloatField;
    qRelCPagarIDCOMPRA: TIntegerField;
    qRelCPagarIDUSUARIO: TIntegerField;
    qRelCPagarDOCUMENTO: TWideStringField;
    qRelCPagarBAIXA: TWideStringField;
    qRelCPagarX: TWideStringField;
    qRelCPagarTIPO: TWideStringField;
    qRelCPagarFPGTO: TWideStringField;
    qRelCPagarFPGTO2: TWideStringField;
    qRelCPagarnome: TWideStringField;
    qRelCPagardescusto: TWideStringField;
    dRelCPagar: TDataSource;
    qRelCPagas: TZQuery;
    qRelCPagasID: TIntegerField;
    qRelCPagasIDFORNECEDOR: TIntegerField;
    qRelCPagasVALOR: TFloatField;
    qRelCPagasVALPAGO: TFloatField;
    qRelCPagasJUROS: TFloatField;
    qRelCPagasEx: TIntegerField;
    qRelCPagasTOTAL: TFloatField;
    qRelCPagasDESCONTO: TFloatField;
    qRelCPagasIDCOMPRA: TIntegerField;
    qRelCPagasIDUSUARIO: TIntegerField;
    qRelCPagasDESCUSTO: TWideStringField;
    qRelCPagasDOCUMENTO: TWideStringField;
    qRelCPagasBAIXA: TWideStringField;
    qRelCPagasX: TWideStringField;
    qRelCPagasTIPO: TWideStringField;
    qRelCPagasFPGTO: TWideStringField;
    qRelCPagasFPGTO2: TWideStringField;
    qRelCPagasnome: TWideStringField;
    dRelPagas: TDataSource;
    qRelCReceber: TZQuery;
    qRelCReceberID: TIntegerField;
    qRelCReceberIDCliente: TIntegerField;
    qRelCReceberVALOR: TFloatField;
    qRelCReceberVALPAGO: TFloatField;
    qRelCReceberJUROS: TFloatField;
    qRelCReceberEx: TIntegerField;
    qRelCReceberTOTAL: TFloatField;
    qRelCReceberDESCONTO: TFloatField;
    qRelCReceberIDVenda: TIntegerField;
    qRelCReceberIDUSUARIO: TIntegerField;
    qRelCReceberDOCUMENTO: TWideStringField;
    qRelCReceberBAIXA: TWideStringField;
    qRelCReceberX: TWideStringField;
    qRelCReceberTIPO: TWideStringField;
    qRelCRecebernome: TWideStringField;
    dRelCReceber: TDataSource;
    qRelCRecebidas: TZQuery;
    dRelRecebidas: TDataSource;
    qRelCPagarEmissao: TDateTimeField;
    qRelCPagarVenci: TDateTimeField;
    qRelCPagaridBaixa: TIntegerField;
    qRelCPagarDtPagto: TDateTimeField;
    qRelCPagaridSubOP_P: TIntegerField;
    qRelCPagaridOP_M: TIntegerField;
    qRelCPagaridcondpgto: TIntegerField;
    qRelCPagarValorfpgto: TFloatField;
    qRelCPagarValorfpgto2: TFloatField;
    qRelCPagaridcusto: TIntegerField;
    qRelCPagarobs: TWideMemoField;
    qRelCPagasidBaixa: TIntegerField;
    qRelCPagasidSubOP_P: TIntegerField;
    qRelCPagasidOP_M: TIntegerField;
    qRelCPagasidcondpgto: TIntegerField;
    qRelCPagasValorfpgto: TFloatField;
    qRelCPagasValorfpgto2: TFloatField;
    qRelCPagasidcusto: TIntegerField;
    qRelCPagasEmissao: TDateTimeField;
    qRelCPagasVenci: TDateTimeField;
    qRelCPagasDtPagto: TDateTimeField;
    qRelCPagasobs: TWideMemoField;
    qRelCReceberEmissao: TDateTimeField;
    qRelCReceberVenci: TDateTimeField;
    qRelCReceberidBaixa: TIntegerField;
    qRelCReceberDtPagto: TDateTimeField;
    qRelCReceberFpgto1: TWideStringField;
    qRelCReceberValor1: TFloatField;
    qRelCReceberValor2: TFloatField;
    qRelCReceberidcondpgto: TIntegerField;
    qRelCReceberobs: TWideMemoField;
    qRelCReceberFpgto2: TWideStringField;
    dSelect: TDataSource;
    qImpCompraidCusto: TIntegerField;
    qImpCompraidcondpgto: TIntegerField;
    qImpCompraEx: TIntegerField;
    qImpCompraX: TWideStringField;
    qImpCompraUnitario: TFloatField;
    qImpCompraDATA: TDateTimeField;
    qImpCompraunit: TFloatField;
    qFinanCompravenci: TDateTimeField;
    qImpCompraDESCRICAO: TWideStringField;
    qImpCompratotpro: TFloatField;
    qCPagarvalorfixo: TFloatField;
    qCPagardescricao: TWideStringField;
    qConta: TZQuery;
    dConta: TDataSource;
    qContaID: TIntegerField;
    qContaTITULAR: TWideStringField;
    qContaAG: TWideStringField;
    qContaCC: TWideStringField;
    qContaBCO: TWideStringField;
    qContaTIPO: TWideStringField;
    qContaIDUSU: TIntegerField;
    qContaUSABOLETO: TWideStringField;
    qContaBTIPO: TWideStringField;
    qContaBAGENCIA: TWideStringField;
    qContaBCONTA: TWideStringField;
    qContaBCONTAD: TWideStringField;
    qContaBCEDENTE: TWideStringField;
    qContaBCEDENTED: TWideStringField;
    qContaBCONVENIO: TWideStringField;
    qContaBCARTEIRA: TWideStringField;
    qContaBSEQ_REMESSA: TIntegerField;
    qContaMSG_BOLETO: TWideMemoField;
    qContaNOMECEDENTE: TWideStringField;
    qContaCNPJCEDENTE: TWideStringField;
    qContaDIASPROT: TIntegerField;
    qContaMULTA: TFloatField;
    qContaJUROS: TFloatField;
    qUsu: TZQuery;
    dUsu: TDataSource;
    qUsuId: TIntegerField;
    qUsuNome: TWideStringField;
    qUsuSenha: TWideStringField;
    qUsuData: TDateTimeField;
    qUsuUser: TWideStringField;
    qUsuTipo: TIntegerField;
    qUsuAfastamento: TDateTimeField;
    qUsuCPF: TWideStringField;
    qUsuRG: TWideStringField;
    qUsuNascimento: TDateTimeField;
    qUsuEndereco: TWideStringField;
    qUsuNumero: TWideStringField;
    qUsuBairro: TWideStringField;
    qUsuCidade: TWideStringField;
    qUsuUF: TWideStringField;
    qUsutelefone: TWideStringField;
    qUsucelular: TWideStringField;
    qUsufax: TWideStringField;
    qUsuemail: TWideStringField;
    qUsuvenc_ferias: TDateTimeField;
    qUsuvenc_exame: TDateTimeField;
    qParametroOBSNF: TWideMemoField;
    qParametroESPECIE: TWideStringField;
    qParametroMARCA: TWideStringField;
    qParametroSERIE: TWideStringField;
    qParametroTPEMPRESANFE: TIntegerField;
    qParametroNFE_DUPLICATA: TWideStringField;
    qParametroNFE: TWideStringField;
    qParametroCFOP: TWideStringField;
    qParametroCSOSN: TWideStringField;
    qParametroCSOSN2: TWideStringField;
    qParametroNFE_RAVE: TWideStringField;
    qParametroNFE_NUMSERIE: TWideStringField;
    qParametroNFE_EMAIL: TWideStringField;
    qParametroNFE_SENHA: TWideStringField;
    qParametroNFE_ASSUNTO: TWideStringField;
    qParametroNFE_CORPOMSG: TWideMemoField;
    qParametroNFE_DANFE: TWideStringField;
    qParametroNFE_XML: TWideStringField;
    qParametroNFE_CANCELADA: TWideMemoField;
    qParametroNFE_COPIAEMAIL: TWideStringField;
    qParametroTIPO_EMPRESA: TWideStringField;
    qParametroTIPOIMP_NFE: TWideStringField;
    qParametroSIMPLESN_FAIXA: TIntegerField;
    qParametroSIMPLESN_TIPO: TWideStringField;
    qParametroDEST_IMPOSTOS: TWideStringField;
    qParametroMOSTRA_FONTEIBPT: TWideStringField;
    qParametroSMTP: TWideStringField;
    qParametroPORTA: TIntegerField;
    qParametroEMAIL_SSL: TWideStringField;
    qParametroEMAIL_TLS: TWideStringField;
    qParametroNT003: TWideStringField;
    qParametroNTCEST: TWideStringField;
    qParametroPICMSINTERDEST: TFloatField;
    qParametroCSC: TWideStringField;
    qParametroIDCSC: TWideStringField;
    qParametroMOSTRA_ST: TWideStringField;
    qParametroPAIS: TIntegerField;
    qParametroTIPOPESSOA: TWideStringField;
    qParametrotipoambiente: TWideStringField;
    qParametroiduf: TIntegerField;
    RLRichFilter1: TRLRichFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLPreviewSetup1: TRLPreviewSetup;
    RLDraftFilter1: TRLDraftFilter;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    RLPDFFilter1: TRLPDFFilter;
    dIBPT: TDataSource;
    dPais: TDataSource;
    dOrigem: TDataSource;
    dFinal: TDataSource;
    dTipoEmissao: TDataSource;
    qIBPT: TZQuery;
    tPais: TZQuery;
    qTipoEmissao: TZQuery;
    qFinal: TZQuery;
    qOrigem: TZQuery;
    tPaisID: TIntegerField;
    tPaisNOME: TWideStringField;
    qIBPTcodigo: TWideStringField;
    qIBPTaliqNac: TFloatField;
    qIBPTaliqEst: TFloatField;
    qFinalidFinal: TIntegerField;
    qFinaldescricao: TWideStringField;
    qTipoEmissaoidTipoEmissao: TIntegerField;
    qTipoEmissaodescricao: TWideStringField;
    qOrigemdescricao: TWideStringField;
    qParametroNF_IMPOSTOPORNCM: TWideStringField;
    qUpDel: TZQuery;
    qSelPesq: TZQuery;
    dSelPesq: TDataSource;
    dUpDel: TDataSource;
    qOrigemidorigem: TIntegerField;
    qFinaldescri: TWideStringField;
    qTipoEmissaodescri: TWideStringField;
    qOrigemdescri: TWideStringField;
    qParametroemail_contador: TWideStringField;
    CRecidnf: TIntegerField;
    qParametroprod_sem_montagem: TWideStringField;
    qParametroimpPedido_2vias: TWideStringField;
    qParametrovenda_escolherpreco: TWideStringField;
    qParametronf_cfopprod_puxar_NF: TWideStringField;
    Log_cheque: TZTable;
    Log_chequeId: TIntegerField;
    Log_chequeIDUSU: TIntegerField;
    Log_chequeIDCHEQUE: TIntegerField;
    Log_chequeIDMOV: TIntegerField;
    Log_chequeSTATUS: TWideStringField;
    Log_chequeACAO: TWideStringField;
    qCheq: TZQuery;
    qCheqId: TIntegerField;
    qCheqBANCO: TWideStringField;
    qCheqIDCLIENTE: TIntegerField;
    qCheqNUMERO: TWideStringField;
    qCheqAGENCIA: TWideStringField;
    qCheqCONTA: TWideStringField;
    qCheqVALOR: TFloatField;
    qCheqEMITENTE: TWideStringField;
    qCheqCODEMP: TIntegerField;
    qCheqCODVENDA: TIntegerField;
    qCheqDEVOLVIDO: TIntegerField;
    qCheqCODFINAN: TIntegerField;
    qCheqTIPO: TWideStringField;
    qCheqST: TIntegerField;
    qCheqIDMOVCAIXA: TIntegerField;
    qCheqSTANTERIOR: TIntegerField;
    qCheqCONTAANTERIOR: TIntegerField;
    qCheqX: TWideStringField;
    qCheqIDCONTA: TIntegerField;
    qCheqCPF: TWideStringField;
    qCheqTEL: TWideStringField;
    qCheqEX: TIntegerField;
    qCheqIDUSU: TIntegerField;
    qCheqCELU: TWideStringField;
    qCheqRECADO: TWideStringField;
    qCheqMOTDEV1: TWideStringField;
    qCheqMOTDEV2: TWideStringField;
    uCheq: TZUpdateSQL;
    dCheq: TDataSource;
    qCheqOBS: TWideMemoField;
    Log_chequeDATA: TWideStringField;
    Log_chequeHORA: TWideStringField;
    qParametronf_msgAproveitCredito: TWideStringField;
    qParametroreduzir_romaneio: TWideStringField;
    qParametrocomi_vend: TWideStringField;
    qParametrobaixa_sem_troco: TWideStringField;
    qVend: TZQuery;
    dVend: TDataSource;
    qVendid: TIntegerField;
    qVendnome: TWideStringField;
    qVendcomissao: TFloatField;
    qParametrovenda_sem_vecto: TWideStringField;
    qParametrotpAmbiente: TWideStringField;
    qParametrovenda_foco_inicial: TIntegerField;
    qParametrocaminho_pasta_serasa: TWideStringField;
    qRelCRecebidasidcliente: TIntegerField;
    qRelCRecebidasnome: TWideStringField;
    qRelCRecebidasdocumento: TWideStringField;
    qRelCRecebidasemissao: TDateTimeField;
    qRelCRecebidasvenci: TDateTimeField;
    qRelCRecebidastotal: TFloatField;
    qRelCRecebidasvalpago: TFloatField;
    qRelCRecebidasvalpgto: TFloatField;
    qRelCRecebidasfpgto1: TWideStringField;
    CPag: TZQuery;
    UPag: TZUpdateSQL;
    dPag: TDataSource;
    CPagId: TIntegerField;
    CPagEmissao: TDateTimeField;
    CPagIdFornecedor: TIntegerField;
    CPagDocumento: TWideStringField;
    CPagVenci: TDateTimeField;
    CPagValor: TFloatField;
    CPagBaixa: TWideStringField;
    CPagidBaixa: TIntegerField;
    CPagDtPagto: TDateTimeField;
    CPagValPago: TFloatField;
    CPagidSubOP_P: TIntegerField;
    CPagIdUsuario: TIntegerField;
    CPagEx: TIntegerField;
    CPagidOP_M: TIntegerField;
    CPagValorfpgto: TFloatField;
    CPagValorfpgto2: TFloatField;
    CPagidcondpgto: TIntegerField;
    CPagobs: TWideMemoField;
    CPagTipo: TWideStringField;
    CPagx: TWideStringField;
    CPagIdCompra: TIntegerField;
    CPagFpgto: TWideStringField;
    CPagFpgto2: TWideStringField;
    CPagjuros: TFloatField;
    CPagdesconto: TFloatField;
    CPagtotal: TFloatField;
    CPagidcusto: TIntegerField;
    CPagidnf: TIntegerField;
    CRecgerado_boleto: TWideStringField;
    LogVenda: TZTable;
    LogVendaid: TIntegerField;
    LogVendaidusuario: TIntegerField;
    LogVendaidvenda: TIntegerField;
    LogVendaidproduto: TIntegerField;
    LogVendastatus: TWideStringField;
    LogVendaacao: TWideStringField;
    LogVendadt: TWideStringField;
    LogVendahora: TWideStringField;
    qParametropesqproduto: TWideStringField;
    qParametromaxDesconto: TFloatField;
    qParametromostrar_royalties: TWideStringField;
    qParametrodesconto_especial: TWideStringField;
    qParametromostrar_por_comissao: TWideStringField;
    qParametromostrar_cubagem: TWideStringField;
    qParametrocomissao_pagar: TWideStringField;
    qComiPagar: TZQuery;
    uComiPagar: TZUpdateSQL;
    dComiPagar: TDataSource;
    qComiPagarId: TIntegerField;
    qComiPagarEmissao: TDateTimeField;
    qComiPagarIdVendedor: TIntegerField;
    qComiPagarDocumento: TWideStringField;
    qComiPagarVenci: TDateTimeField;
    qComiPagarValor: TFloatField;
    qComiPagarBaixa: TWideStringField;
    qComiPagaridBaixa: TIntegerField;
    qComiPagarDtPagto: TDateTimeField;
    qComiPagarValPago: TFloatField;
    qComiPagaridSubOP_P: TIntegerField;
    qComiPagarIdUsuario: TIntegerField;
    qComiPagarEx: TIntegerField;
    qComiPagaridOP_M: TIntegerField;
    qComiPagarValorfpgto: TFloatField;
    qComiPagarValorfpgto2: TFloatField;
    qComiPagaridcondpgto: TIntegerField;
    qComiPagarobs: TWideMemoField;
    qComiPagarTipo: TWideStringField;
    qComiPagarx: TWideStringField;
    qComiPagarIdVenda: TIntegerField;
    qComiPagarFpgto: TWideStringField;
    qComiPagarFpgto2: TWideStringField;
    qComiPagarjuros: TFloatField;
    qComiPagardesconto: TFloatField;
    qComiPagartotal: TFloatField;
    qComiPagaridcusto: TIntegerField;
    qComiPagaridnf: TIntegerField;
    qComiPagardescricao: TWideStringField;
    qParametrousa_cond_porcentagem: TWideStringField;
    qParametroPorCustoOpera: TFloatField;
    qParametroidweb: TIntegerField;
    qParametroclientes_repre: TWideStringField;
    qParametromod_pedidosWeb: TWideStringField;
    ConexWeb: TZConnection;
    qRepWeb: TZQuery;
    qRepWebidempresa: TIntegerField;
    qRepWebidrep: TIntegerField;
    qRepWebnome: TWideStringField;
    qRepWebsenha: TWideStringField;
    qRepWebstatus: TWideStringField;
    qRepWebemail: TWideStringField;
    qRepWebid: TIntegerField;
    qRep: TZQuery;
    qExecWeb: TZQuery;
    qRepID: TIntegerField;
    qRepNOME: TWideStringField;
    qRepENDERECO: TWideStringField;
    qRepBAIRRO: TWideStringField;
    qRepCIDADE: TWideStringField;
    qRepCEP: TWideStringField;
    qRepUF: TWideStringField;
    qReptel1: TWideStringField;
    qReptel2: TWideStringField;
    qRepfax: TWideStringField;
    qRepCONTATO: TWideStringField;
    qRepEMAIL: TWideStringField;
    qRepIE: TWideStringField;
    qRepCNPJ: TWideStringField;
    qRepCONTA: TWideStringField;
    qRepAGENCIA: TWideStringField;
    qRepBANCO: TWideStringField;
    qRepTIPOPAGTO: TIntegerField;
    qRepOBS: TWideStringField;
    qRepEX: TIntegerField;
    qRepSITE: TWideStringField;
    qRepTIPOPESSOA: TWideStringField;
    qRepfantasia: TWideStringField;
    qRepnum: TWideStringField;
    qRepidcidade: TIntegerField;
    qRepdia_venci: TIntegerField;
    qRepComissao: TFloatField;
    qReppais: TIntegerField;
    qRepsincronizado: TWideStringField;
    qRepWebcnpj: TWideStringField;
    qTabWeb: TZQuery;
    qTabWebId: TIntegerField;
    qTabWebIdTabela: TIntegerField;
    qTabWebIdEmpresa: TIntegerField;
    qTabWebex: TIntegerField;
    qTabIweb: TZQuery;
    qTabIwebId: TIntegerField;
    qTabIwebIdTabela: TIntegerField;
    qTabIwebReferencia: TWideStringField;
    qTabIwebCodBarras: TWideStringField;
    qTabIwebDescricao: TWideStringField;
    qTabIwebPreco: TFloatField;
    qTabIwebQtdeEstoque: TFloatField;
    qTabIwebPagina: TIntegerField;
    qTabIwebex: TIntegerField;
    qTabIwebQtdeCaixa: TFloatField;
    qTab: TZQuery;
    qTabI: TZQuery;
    qTabDescricao: TWideStringField;
    qTabex: TIntegerField;
    qTabsincronizado: TWideStringField;
    qTabidweb: TIntegerField;
    qTabIId: TIntegerField;
    qTabIIdTabela: TIntegerField;
    qTabIIdProduto: TIntegerField;
    qTabIReferencia: TWideStringField;
    qTabICodBarras: TWideStringField;
    qTabIDescricao: TWideStringField;
    qTabIPreco: TFloatField;
    qTabIQtdeEstoque: TFloatField;
    qTabIPagina: TIntegerField;
    qTabIex: TIntegerField;
    qTabIQtdeCaixa: TFloatField;
    qTabIsincronizado: TWideStringField;
    qTabIidweb: TIntegerField;
    qTabId: TIntegerField;
    qTab2: TZQuery;
    qTab2Id: TIntegerField;
    qTab2Descricao: TWideStringField;
    qTab2ex: TIntegerField;
    qTab2sincronizado: TWideStringField;
    qTab2idweb: TIntegerField;
    qParametrofator_cubagem: TFloatField;
    qParametrotp_desc_ped: TWideStringField;
    qTabIwebidproduto: TIntegerField;
    qTabativo: TWideStringField;
    qTab2ativo: TWideStringField;
    qCliWeb: TZQuery;
    qCli: TZQuery;
    qCliId: TIntegerField;
    qCliNome: TWideStringField;
    qCliEndereco: TWideStringField;
    qCliNum: TWideStringField;
    qCliBairro: TWideStringField;
    qCliCEP: TWideStringField;
    qCliCidade: TWideStringField;
    qCliUF: TWideStringField;
    qCliemail: TWideStringField;
    qClirg: TWideStringField;
    qClicpf: TWideStringField;
    qClidtnasc: TDateTimeField;
    qClidtcadastro: TDateTimeField;
    qClitel1: TWideStringField;
    qClitel2: TWideStringField;
    qClitel3: TWideStringField;
    qCliobs: TWideMemoField;
    qCliex: TIntegerField;
    qClilimiteCredito: TFloatField;
    qCliidcidade: TIntegerField;
    qClitppessoa: TWideStringField;
    qClirazao: TWideStringField;
    qClicomple: TWideStringField;
    qCliEnd_entrega: TWideStringField;
    qCliNum_entrega: TWideStringField;
    qCliBairro_entrega: TWideStringField;
    qCliCep_entrega: TWideStringField;
    qCliidCidade_entrega: TIntegerField;
    qCliUF_entrega: TWideStringField;
    qCliComple_entrega: TWideStringField;
    qCliativo: TWideStringField;
    qClipais: TIntegerField;
    qClipais_entrega: TIntegerField;
    qClicontribuinte: TWideStringField;
    qCliprodutorR: TWideStringField;
    qCliidtabela: TIntegerField;
    qClidia_fecha: TIntegerField;
    qCliinadimplente: TWideStringField;
    qCliimagem_serasa: TWideStringField;
    qCliidvendedor: TIntegerField;
    qCliidweb: TIntegerField;
    qClisincronizado: TWideStringField;
    qCliWebId: TIntegerField;
    qCliWebIdEmpresa: TIntegerField;
    qCliWebIdRepresentante: TIntegerField;
    qCliWebNome: TWideStringField;
    qCliWebEndereco: TWideStringField;
    qCliWebNum: TWideStringField;
    qCliWebBairro: TWideStringField;
    qCliWebCEP: TWideStringField;
    qCliWebCidade: TWideStringField;
    qCliWebUF: TWideStringField;
    qCliWebEmail: TWideStringField;
    qCliWebRG: TWideStringField;
    qCliWebCPF: TWideStringField;
    qCliWebDtNasc: TDateTimeField;
    qCliWebDtCadastro: TDateTimeField;
    qCliWebTel1: TWideStringField;
    qCliWebTel2: TWideStringField;
    qCliWebTel3: TWideStringField;
    qCliWebObs: TWideMemoField;
    qCliWebex: TIntegerField;
    qCliWebLimiteCredito: TFloatField;
    qCliWebIdCidade: TIntegerField;
    qCliWebTpPessoa: TWideStringField;
    qCliWebRazao: TWideStringField;
    qCliWebComple: TWideStringField;
    qCliWebEnd_Entrega: TWideStringField;
    qCliWebNum_entrega: TWideStringField;
    qCliWebBairro_entrega: TWideStringField;
    qCliWebCep_entrega: TWideStringField;
    qCliWebidCidade_entrega: TIntegerField;
    qCliWebUF_entrega: TWideStringField;
    qCliWebComple_entrega: TWideStringField;
    qCliWebativo: TWideStringField;
    qCliWebpais: TIntegerField;
    qCliWebpais_entrega: TIntegerField;
    qCliWebcontribuinte: TWideStringField;
    qCliWebprodutorR: TWideStringField;
    qCliWebidtabela: TIntegerField;
    qCliWebdia_fecha: TIntegerField;
    qCliWebinadimplente: TWideStringField;
    qCliWebsincronizado: TWideStringField;
    qCliWebCidade_entrega: TWideStringField;
    qClicidade_entrega: TWideStringField;
    qCliDesceW: TZQuery;
    qCliDesce: TZQuery;
    qCliDesceWId: TIntegerField;
    qCliDesceWIdEmpresa: TIntegerField;
    qCliDesceWIdRepresentante: TIntegerField;
    qCliDesceWNome: TWideStringField;
    qCliDesceWEndereco: TWideStringField;
    qCliDesceWNum: TWideStringField;
    qCliDesceWBairro: TWideStringField;
    qCliDesceWCEP: TWideStringField;
    qCliDesceWCidade: TWideStringField;
    qCliDesceWUF: TWideStringField;
    qCliDesceWEmail: TWideStringField;
    qCliDesceWRG: TWideStringField;
    qCliDesceWCPF: TWideStringField;
    qCliDesceWDtNasc: TDateTimeField;
    qCliDesceWDtCadastro: TDateTimeField;
    qCliDesceWTel1: TWideStringField;
    qCliDesceWTel2: TWideStringField;
    qCliDesceWTel3: TWideStringField;
    qCliDesceWObs: TWideMemoField;
    qCliDesceWex: TIntegerField;
    qCliDesceWLimiteCredito: TFloatField;
    qCliDesceWIdCidade: TIntegerField;
    qCliDesceWTpPessoa: TWideStringField;
    qCliDesceWRazao: TWideStringField;
    qCliDesceWComple: TWideStringField;
    qCliDesceWEnd_Entrega: TWideStringField;
    qCliDesceWNum_entrega: TWideStringField;
    qCliDesceWBairro_entrega: TWideStringField;
    qCliDesceWCep_entrega: TWideStringField;
    qCliDesceWidCidade_entrega: TIntegerField;
    qCliDesceWUF_entrega: TWideStringField;
    qCliDesceWComple_entrega: TWideStringField;
    qCliDesceWativo: TWideStringField;
    qCliDesceWpais: TIntegerField;
    qCliDesceWpais_entrega: TIntegerField;
    qCliDesceWcontribuinte: TWideStringField;
    qCliDesceWprodutorR: TWideStringField;
    qCliDesceWidtabela: TIntegerField;
    qCliDesceWdia_fecha: TIntegerField;
    qCliDesceWinadimplente: TWideStringField;
    qCliDesceWsincronizado: TWideStringField;
    qCliDesceWCidade_entrega: TWideStringField;
    qCliDesceId: TIntegerField;
    qCliDesceNome: TWideStringField;
    qCliDesceEndereco: TWideStringField;
    qCliDesceNum: TWideStringField;
    qCliDesceBairro: TWideStringField;
    qCliDesceCEP: TWideStringField;
    qCliDesceCidade: TWideStringField;
    qCliDesceUF: TWideStringField;
    qCliDesceemail: TWideStringField;
    qCliDescerg: TWideStringField;
    qCliDescecpf: TWideStringField;
    qCliDescedtnasc: TDateTimeField;
    qCliDescedtcadastro: TDateTimeField;
    qCliDescetel1: TWideStringField;
    qCliDescetel2: TWideStringField;
    qCliDescetel3: TWideStringField;
    qCliDesceobs: TWideMemoField;
    qCliDesceex: TIntegerField;
    qCliDescelimiteCredito: TFloatField;
    qCliDesceidcidade: TIntegerField;
    qCliDescetppessoa: TWideStringField;
    qCliDescerazao: TWideStringField;
    qCliDescecomple: TWideStringField;
    qCliDesceEnd_entrega: TWideStringField;
    qCliDesceNum_entrega: TWideStringField;
    qCliDesceBairro_entrega: TWideStringField;
    qCliDesceCep_entrega: TWideStringField;
    qCliDesceidCidade_entrega: TIntegerField;
    qCliDesceUF_entrega: TWideStringField;
    qCliDesceComple_entrega: TWideStringField;
    qCliDesceativo: TWideStringField;
    qCliDescepais: TIntegerField;
    qCliDescepais_entrega: TIntegerField;
    qCliDescecontribuinte: TWideStringField;
    qCliDesceprodutorR: TWideStringField;
    qCliDesceidtabela: TIntegerField;
    qCliDescedia_fecha: TIntegerField;
    qCliDesceinadimplente: TWideStringField;
    qCliDesceimagem_serasa: TWideStringField;
    qCliDesceidvendedor: TIntegerField;
    qCliDesceidweb: TIntegerField;
    qCliDescesincronizado: TWideStringField;
    qCliDescecidade_entrega: TWideStringField;
    qParametromod_cad_tabela: TWideStringField;
    qCondWeb: TZQuery;
    qCond: TZQuery;
    qCondWebId: TIntegerField;
    qCondWebIdEmpresa: TIntegerField;
    qCondWebDescricao: TWideStringField;
    qCondWebEx: TIntegerField;
    qCondId: TIntegerField;
    qCondDescricao: TWideStringField;
    qCondsincronizado: TWideStringField;
    qCondidweb: TIntegerField;
    qCondex: TIntegerField;
    qVendaWeb: TZQuery;
    qItensWeb: TZQuery;
    qVendaWebId: TIntegerField;
    qVendaWebData: TDateTimeField;
    qVendaWebIdEmpresa: TIntegerField;
    qVendaWebIdRepresentante: TIntegerField;
    qVendaWebIdCliente: TIntegerField;
    qVendaWebIdCondPgto: TIntegerField;
    qVendaWebValor: TFloatField;
    qVendaWebDesconto: TFloatField;
    qVendaWebTotal: TFloatField;
    qVendaWebPrazoEntrega: TWideStringField;
    qVendaWebNotaFiscal: TIntegerField;
    qVendaWebx: TWideStringField;
    qVendaWebEx: TIntegerField;
    qVendaWebExpedido: TWideStringField;
    qVendaWebGeradoNFe: TWideStringField;
    qVendaWebpComissao: TFloatField;
    qVendaWebObs: TWideMemoField;
    qVendaWebboleto: TWideStringField;
    qVendaWebpacote: TWideStringField;
    qVendaWebtotcubagem: TFloatField;
    qVendaWebdesc_especial: TFloatField;
    qVendaWebIdTabela: TIntegerField;
    qVendaWebStatus: TWideStringField;
    qItensWebId: TIntegerField;
    qItensWebIdVenda: TIntegerField;
    qItensWebIdProduto: TIntegerField;
    qItensWebReferencia: TWideStringField;
    qItensWebIdTabela: TIntegerField;
    qItensWebTipo: TWideStringField;
    qItensWebQtd: TFloatField;
    qItensWebUnit: TFloatField;
    qItensWebDesconto: TFloatField;
    qItensWebTotal: TFloatField;
    qItensWebx: TWideStringField;
    qItensWebRoyalties: TFloatField;
    qItensWebunit2: TFloatField;
    qItensWebunitst: TFloatField;
    qItensWebpComissao: TFloatField;
    qItensWebordemcompra: TWideStringField;
    qItensWebcubagem: TFloatField;
    qItensWebqtd_cx: TFloatField;
    qVenda: TZQuery;
    qItens: TZQuery;
    qVendaId: TIntegerField;
    qVendaData: TDateTimeField;
    qVendaIdVendedor: TIntegerField;
    qVendaIdCliente: TIntegerField;
    qVendaIdCondPgto: TIntegerField;
    qVendaValor: TFloatField;
    qVendaDesconto: TFloatField;
    qVendaTotal: TFloatField;
    qVendaPrazoEntrega: TWideStringField;
    qVendaNotaFiscal: TIntegerField;
    qVendaIdUsuario: TIntegerField;
    qVendax: TWideStringField;
    qVendaEx: TIntegerField;
    qVendaExpedido: TWideStringField;
    qVendaGeradoNFe: TWideStringField;
    qVendapComissao: TFloatField;
    qVendaObs: TWideMemoField;
    qVendaboleto: TWideStringField;
    qVendapacote: TWideStringField;
    qVendatotcubagem: TFloatField;
    qVendadesc_especial: TFloatField;
    qVendaidtabela: TIntegerField;
    qVendastatus: TWideStringField;
    qVendasincronizado: TWideStringField;
    qItensId: TIntegerField;
    qItensIdVenda: TIntegerField;
    qItensIdProduto: TIntegerField;
    qItensTipo: TWideStringField;
    qItensQtd: TFloatField;
    qItensUnit: TFloatField;
    qItensDesconto: TFloatField;
    qItensTotal: TFloatField;
    qItensx: TWideStringField;
    qItensRoyalties: TFloatField;
    qItensunit2: TFloatField;
    qItensunitst: TFloatField;
    qItenspComissao: TFloatField;
    qItensordemcompra: TWideStringField;
    qItenscubagem: TFloatField;
    qItensqtd_cx: TFloatField;
    qItenssincronizado: TWideStringField;
    qItensidWeb: TIntegerField;
    qVendaWebnome: TWideStringField;
    qItensWebdescricao: TWideStringField;
    qVendanome: TWideStringField;
    qVendaWebidrep_local: TIntegerField;
    qVendaidweb: TIntegerField;
    qCialWeb: TZQuery;
    qCial: TZQuery;
    qCialWebId: TIntegerField;
    qCialWebDescricao: TWideStringField;
    qCialWebPorcentagem: TFloatField;
    qCialWebIdEmpresa: TIntegerField;
    qCialWebex: TIntegerField;
    qCialId: TIntegerField;
    qCialDescricao: TWideStringField;
    qCialPorcentagem: TFloatField;
    qCialsincronizado: TWideStringField;
    qCialidweb: TIntegerField;
    qCialex: TIntegerField;
    qVen: TZQuery;
    qVenid: TIntegerField;
    qVenstatus: TWideStringField;
    qVenidweb: TIntegerField;
    qParametrotempo_pedido: TIntegerField;
    dRelComiPagar: TDataSource;
    qRelComiPagar: TZQuery;
    qRelComiPagas: TZQuery;
    dRelComiPagas: TDataSource;
    qRelComiPagarId: TIntegerField;
    qRelComiPagarEmissao: TDateTimeField;
    qRelComiPagarIdVendedor: TIntegerField;
    qRelComiPagarDocumento: TWideStringField;
    qRelComiPagarVenci: TDateTimeField;
    qRelComiPagarValor: TFloatField;
    qRelComiPagarBaixa: TWideStringField;
    qRelComiPagaridBaixa: TIntegerField;
    qRelComiPagarDtPagto: TDateTimeField;
    qRelComiPagarValPago: TFloatField;
    qRelComiPagaridSubOP_P: TIntegerField;
    qRelComiPagarIdUsuario: TIntegerField;
    qRelComiPagarEx: TIntegerField;
    qRelComiPagaridOP_M: TIntegerField;
    qRelComiPagarValorfpgto: TFloatField;
    qRelComiPagarValorfpgto2: TFloatField;
    qRelComiPagaridcondpgto: TIntegerField;
    qRelComiPagarobs: TWideMemoField;
    qRelComiPagarTipo: TWideStringField;
    qRelComiPagarx: TWideStringField;
    qRelComiPagarFpgto: TWideStringField;
    qRelComiPagarFpgto2: TWideStringField;
    qRelComiPagarjuros: TFloatField;
    qRelComiPagardesconto: TFloatField;
    qRelComiPagartotal: TFloatField;
    qRelComiPagaridcusto: TIntegerField;
    qRelComiPagaridnf: TIntegerField;
    qRelComiPagarnome: TWideStringField;
    qRelComiPagasId: TIntegerField;
    qRelComiPagasEmissao: TDateTimeField;
    qRelComiPagasIdVendedor: TIntegerField;
    qRelComiPagasDocumento: TWideStringField;
    qRelComiPagasVenci: TDateTimeField;
    qRelComiPagasValor: TFloatField;
    qRelComiPagasBaixa: TWideStringField;
    qRelComiPagasidBaixa: TIntegerField;
    qRelComiPagasDtPagto: TDateTimeField;
    qRelComiPagasValPago: TFloatField;
    qRelComiPagasidSubOP_P: TIntegerField;
    qRelComiPagasIdUsuario: TIntegerField;
    qRelComiPagasEx: TIntegerField;
    qRelComiPagasidOP_M: TIntegerField;
    qRelComiPagasValorfpgto: TFloatField;
    qRelComiPagasValorfpgto2: TFloatField;
    qRelComiPagasidcondpgto: TIntegerField;
    qRelComiPagasobs: TWideMemoField;
    qRelComiPagasTipo: TWideStringField;
    qRelComiPagasx: TWideStringField;
    qRelComiPagasIdVenda: TIntegerField;
    qRelComiPagasFpgto: TWideStringField;
    qRelComiPagasFpgto2: TWideStringField;
    qRelComiPagasjuros: TFloatField;
    qRelComiPagasdesconto: TFloatField;
    qRelComiPagastotal: TFloatField;
    qRelComiPagasidcusto: TIntegerField;
    qRelComiPagasidnf: TIntegerField;
    qRelComiPagasnome: TWideStringField;
    qParametrogerar_contas_sep: TWideStringField;
    qParametroconta_com_desc: TIntegerField;
    qParametroconta_sem_desc: TIntegerField;
    qComi: TZQuery;
    uComi: TZUpdateSQL;
    qComiId: TIntegerField;
    qComiEmissao: TDateTimeField;
    qComiIdVendedor: TIntegerField;
    qComiDocumento: TWideStringField;
    qComiVenci: TDateTimeField;
    qComiValor: TFloatField;
    qComiBaixa: TWideStringField;
    qComiidBaixa: TIntegerField;
    qComiDtPagto: TDateTimeField;
    qComiValPago: TFloatField;
    qComiidSubOP_P: TIntegerField;
    qComiIdUsuario: TIntegerField;
    qComiEx: TIntegerField;
    qComiidOP_M: TIntegerField;
    qComiValorfpgto: TFloatField;
    qComiValorfpgto2: TFloatField;
    qComiidcondpgto: TIntegerField;
    qComiobs: TWideMemoField;
    qComiTipo: TWideStringField;
    qComix: TWideStringField;
    qComiIdVenda: TIntegerField;
    qComiFpgto: TWideStringField;
    qComiFpgto2: TWideStringField;
    qComijuros: TFloatField;
    qComidesconto: TFloatField;
    qComitotal: TFloatField;
    qComiidcusto: TIntegerField;
    qComiidnf: TIntegerField;
    qComidescricao: TWideStringField;
    qVendaWebIdComercial: TIntegerField;
    qVendaidcomercial: TIntegerField;
    qRepWebpcomissao: TFloatField;
    qRepidweb: TIntegerField;
    qReppermite_web: TWideStringField;
    T: TZQuery;
    TId: TIntegerField;
    TData: TDateTimeField;
    TIdVendedor: TIntegerField;
    TIdCliente: TIntegerField;
    TIdCondPgto: TIntegerField;
    TValor: TFloatField;
    TDesconto: TFloatField;
    TTotal: TFloatField;
    TPrazoEntrega: TWideStringField;
    TNotaFiscal: TIntegerField;
    TIdUsuario: TIntegerField;
    Tx: TWideStringField;
    TEx: TIntegerField;
    TExpedido: TWideStringField;
    TGeradoNFe: TWideStringField;
    TpComissao: TFloatField;
    TObs: TWideMemoField;
    Tboleto: TWideStringField;
    Tpacote: TWideStringField;
    Ttotcubagem: TFloatField;
    Tdesc_especial: TFloatField;
    Tidtabela: TIntegerField;
    Tstatus: TWideStringField;
    Tsincronizado: TWideStringField;
    Tidweb: TIntegerField;
    Tidcomercial: TIntegerField;
    qC_i: TZQuery;
    qC_iId: TIntegerField;
    qC_iIDCond: TIntegerField;
    qC_iPorc: TFloatField;
    qC_iDias: TIntegerField;
    dEmpresa: TDataSource;
    qEmpresa: TZQuery;
    qEmpresaid: TIntegerField;
    qEmpresaRAZAO: TWideStringField;
    qEmpresaCNPJ: TWideStringField;
    qEmpresaENDERECO: TWideStringField;
    qEmpresaBAIRRO: TWideStringField;
    qEmpresaCIDADE: TWideStringField;
    qEmpresaUF: TWideStringField;
    qEmpresaCEP: TWideStringField;
    qEmpresaSITE: TWideStringField;
    qEmpresaEMAIL: TWideStringField;
    qEmpresaRESPONS: TWideStringField;
    qEmpresaTELEFONE: TWideStringField;
    qEmpresaFAX: TWideStringField;
    qEmpresalogo: TWideStringField;
    qEmpresaex: TWideStringField;
    qEmpresafantasia: TWideStringField;
    qEmpresanum: TWideStringField;
    qEmpresaidCidade: TIntegerField;
    qEmpresaIE: TWideStringField;
    qEmpresaOBSNF: TWideMemoField;
    qEmpresaESPECIE: TWideStringField;
    qEmpresaMARCA: TWideStringField;
    qEmpresaSERIE: TWideStringField;
    qEmpresaTPEMPRESANFE: TIntegerField;
    qEmpresaNFE_DUPLICATA: TWideStringField;
    qEmpresaNFE: TWideStringField;
    qEmpresaCFOP: TWideStringField;
    qEmpresaCSOSN: TWideStringField;
    qEmpresaCSOSN2: TWideStringField;
    qEmpresaNFE_RAVE: TWideStringField;
    qEmpresaNFE_NUMSERIE: TWideStringField;
    qEmpresaNFE_EMAIL: TWideStringField;
    qEmpresaNFE_SENHA: TWideStringField;
    qEmpresaNFE_ASSUNTO: TWideStringField;
    qEmpresaNFE_CORPOMSG: TWideMemoField;
    qEmpresaNFE_DANFE: TWideStringField;
    qEmpresaNFE_XML: TWideStringField;
    qEmpresaNFE_CANCELADA: TWideMemoField;
    qEmpresaNFE_COPIAEMAIL: TWideStringField;
    qEmpresaTIPO_EMPRESA: TWideStringField;
    qEmpresaTIPOIMP_NFE: TWideStringField;
    qEmpresaSIMPLESN_FAIXA: TIntegerField;
    qEmpresaSIMPLESN_TIPO: TWideStringField;
    qEmpresaDEST_IMPOSTOS: TWideStringField;
    qEmpresaMOSTRA_FONTEIBPT: TWideStringField;
    qEmpresaSMTP: TWideStringField;
    qEmpresaPORTA: TIntegerField;
    qEmpresaEMAIL_SSL: TWideStringField;
    qEmpresaEMAIL_TLS: TWideStringField;
    qEmpresaNT003: TWideStringField;
    qEmpresaNTCEST: TWideStringField;
    qEmpresaPICMSINTERDEST: TFloatField;
    qEmpresaCSC: TWideStringField;
    qEmpresaIDCSC: TWideStringField;
    qEmpresaMOSTRA_ST: TWideStringField;
    qEmpresaPAIS: TIntegerField;
    qEmpresaTIPOPESSOA: TWideStringField;
    qEmpresaiduf: TIntegerField;
    qEmpresaNF_IMPOSTOPORNCM: TWideStringField;
    qEmpresaemail_contador: TWideStringField;
    qEmpresatpAmbiente: TWideStringField;
    qEmpresanf_msgAproveitCredito: TWideStringField;
    qEmpresanf_cfopprod_puxar_NF: TWideStringField;
    qComiidemp: TIntegerField;
    CPagidemp: TIntegerField;
    qComiPagaridemp: TIntegerField;
    qCPagaridnf: TIntegerField;
    qCPagaridemp: TIntegerField;
    qEstoqueidemp: TIntegerField;
    Cxidemp: TIntegerField;
    CRecdoc_bx_parcial: TWideStringField;
    CRecidemp: TIntegerField;
    qCReceberidnf: TIntegerField;
    qCReceberdoc_bx_parcial: TWideStringField;
    qCRecebergerado_boleto: TWideStringField;
    qCReceberidemp: TIntegerField;
    qUserfantasia: TWideStringField;
    qParametrologinEspecial: TWideStringField;
    qUserloginEspecial: TWideStringField;
    qUseridemp: TIntegerField;
    qEmpresaempresa_padrao: TWideStringField;
    qEstoqueidNF: TIntegerField;
    qCPagarfantasia: TWideStringField;
    qCheqidemp: TIntegerField;
    qParametrovenda_desc_margem: TWideStringField;
    qVendaidemp: TIntegerField;
    qVendaidorc: TIntegerField;
    dExecWeb: TDataSource;
    qVendaWebTipoFrete: TWideStringField;
    qVendaWebTransportadora: TWideStringField;
    qVendaWebMotivo: TWideMemoField;
    qVendaidUserR: TIntegerField;
    qVendatipoFrete: TWideStringField;
    qVendatransp_vendedor: TWideStringField;
    qComissao: TZQuery;
    qComisincronizado: TWideStringField;
    qComissaoid: TIntegerField;
    qComissaoidweb: TIntegerField;
    qComiV: TZQuery;
    qComiVtot: TFloatField;
    qCRec: TZQuery;
    qCRec2: TZQuery;
    qCRecid: TIntegerField;
    qCRecidweb: TIntegerField;
    CRecsincronizado: TWideStringField;
    qCRecebersincronizado: TWideStringField;
    qCRec2tot: TFloatField;
    qCRec2totAb: TFloatField;
    qCRec2totPg: TFloatField;
    IdSocket1: TIdSSLIOHandlerSocketOpenSSL;
    qEmpresarem_email: TWideStringField;
    qEmpresarem_senha: TWideStringField;
    qEmpresarem_smtp: TWideStringField;
    qEmpresarem_porta: TIntegerField;
    qEmpresarem_ssl: TWideStringField;
    qEmpresarem_tls: TWideStringField;
    qIt: TZQuery;
    qItcustofinal: TFloatField;
    qItmargem: TFloatField;
    qVenmotivor: TWideStringField;
    qVendamotivoR: TWideStringField;
    qVendaDataR: TDateTimeField;
    qParametroemail_rep_vencidas: TWideStringField;
    qParametrodias_vencidas: TIntegerField;
    CRecemail_vencidas: TWideStringField;
    qCReceberemail_vencidas: TWideStringField;
    qParametrop_mod_boleto: TWideStringField;
    RLBTitulo1: TRLBTitulo;
    RLBRemessa1: TRLBRemessa;
    dBanco: TDataSource;
    Banco: TZQuery;
    Bol_dis: TZQuery;
    Bol_disID: TIntegerField;
    Bol_disIDCLIENTE: TIntegerField;
    Bol_disTPCLIENTE: TWideStringField;
    Bol_disIDTHR030: TIntegerField;
    Bol_disBANCO: TIntegerField;
    Bol_disSEQ_REMESSA: TIntegerField;
    Bol_disNOSSO_NUMERO: TWideStringField;
    Bol_disNUMERO_DOC: TWideStringField;
    Bol_disEMISSAO: TDateTimeField;
    Bol_disVENCI: TDateTimeField;
    Bol_disVALOR: TFloatField;
    Bol_disBAIXADO: TWideStringField;
    Bol_disIDCONTA: TIntegerField;
    Bol_disX: TWideStringField;
    Bol_disSTATUS: TWideStringField;
    Bol_disNN_SICREDI: TWideStringField;
    uBol_dis: TZUpdateSQL;
    bCRec: TZQuery;
    qDis: TZQuery;
    qDisId: TIntegerField;
    qDisNome: TWideStringField;
    qDisEndereco: TWideStringField;
    qDisNum: TWideStringField;
    qDisBairro: TWideStringField;
    qDisCEP: TWideStringField;
    qDisCidade: TWideStringField;
    qDisUF: TWideStringField;
    qDisemail: TWideStringField;
    qDisrg: TWideStringField;
    qDiscpf: TWideStringField;
    qDisdtnasc: TDateTimeField;
    qDisdtcadastro: TDateTimeField;
    qDistel1: TWideStringField;
    qDistel2: TWideStringField;
    qDistel3: TWideStringField;
    qDisobs: TWideMemoField;
    qDisex: TIntegerField;
    qDislimiteCredito: TFloatField;
    qDisidcidade: TIntegerField;
    qDistppessoa: TWideStringField;
    qDisrazao: TWideStringField;
    qDiscomple: TWideStringField;
    qDisEnd_entrega: TWideStringField;
    qDisNum_entrega: TWideStringField;
    qDisBairro_entrega: TWideStringField;
    qDisCep_entrega: TWideStringField;
    qDisidCidade_entrega: TIntegerField;
    qDisUF_entrega: TWideStringField;
    qDisComple_entrega: TWideStringField;
    qDisativo: TWideStringField;
    qDispais: TIntegerField;
    qDispais_entrega: TIntegerField;
    qDiscontribuinte: TWideStringField;
    qDisprodutorR: TWideStringField;
    qDisidtabela: TIntegerField;
    qDisdia_fecha: TIntegerField;
    qDisinadimplente: TWideStringField;
    qDisimagem_serasa: TWideStringField;
    qDisidvendedor: TIntegerField;
    qDisidweb: TIntegerField;
    qDissincronizado: TWideStringField;
    qDiscidade_entrega: TWideStringField;
    qDisidcomercial: TIntegerField;
    qDisidemp: TIntegerField;
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
    bCRecId: TIntegerField;
    bCRecEmissao: TDateTimeField;
    bCRecIdCliente: TIntegerField;
    bCRecDocumento: TWideStringField;
    bCRecVenci: TDateTimeField;
    bCRecValor: TFloatField;
    bCRecJuros: TFloatField;
    bCRecDesconto: TFloatField;
    bCRecTotal: TFloatField;
    bCRecBaixa: TWideStringField;
    bCRecidBaixa: TIntegerField;
    bCRecDtPagto: TDateTimeField;
    bCRecValPago: TFloatField;
    bCRecFpgto1: TWideStringField;
    bCRecValor1: TFloatField;
    bCRecFpgto2: TWideStringField;
    bCRecValor2: TFloatField;
    bCRecidVenda: TIntegerField;
    bCRecIdUsuario: TIntegerField;
    bCRecEx: TIntegerField;
    bCRecx: TWideStringField;
    bCRecidcondpgto: TIntegerField;
    bCRecobs: TWideMemoField;
    bCRecTipo: TWideStringField;
    bCRecidnf: TIntegerField;
    bCRecdoc_bx_parcial: TWideStringField;
    bCRecgerado_boleto: TWideStringField;
    bCRecidemp: TIntegerField;
    bCRecsincronizado: TWideStringField;
    bCRecemail_vencidas: TWideStringField;
    bCRecidretorno: TIntegerField;
    bCRecbenviando: TWideStringField;
    bCRecbimpresso: TWideStringField;
    bCRecnn_sicred: TWideStringField;
    bCRecbconta: TIntegerField;
    bCRecgeradoBol: TWideStringField;
    bCRecNOME: TWideStringField;
    Bancoendcedende: TWideStringField;
    Banconumcedende: TWideStringField;
    Bancobaicedende: TWideStringField;
    Bancocidcedende: TWideStringField;
    Bancoufcedende: TWideStringField;
    Bancocepcedende: TWideStringField;
    qParametrofinan_expedicao: TWideStringField;
    qCo: TZQuery;
    qCoId: TIntegerField;
    qCoDescricao: TWideStringField;
    qCoParcelas: TIntegerField;
    qCoNumParc: TIntegerField;
    qCoIntervalo: TIntegerField;
    qCoJuros: TFloatField;
    qCoCredito: TWideStringField;
    qCocond_padrao: TWideStringField;
    qCia: TZQuery;
    qCiaId: TIntegerField;
    qCiaDescricao: TWideStringField;
    qCiaPorcentagem: TFloatField;
    qCiasincronizado: TWideStringField;
    qCiaidweb: TIntegerField;
    qCiaex: TIntegerField;
    qCiatipo: TWideStringField;
    L: TZQuery;
    LId: TIntegerField;
    LIdVenda: TIntegerField;
    LIdProduto: TIntegerField;
    LTipo: TWideStringField;
    LQtd: TFloatField;
    LUnit: TFloatField;
    LDesconto: TFloatField;
    LTotal: TFloatField;
    Lx: TWideStringField;
    LRoyalties: TFloatField;
    Lunit2: TFloatField;
    Lunitst: TFloatField;
    LpComissao: TFloatField;
    Lordemcompra: TWideStringField;
    Lcubagem: TFloatField;
    Lqtd_cx: TFloatField;
    Lsincronizado: TWideStringField;
    LidWeb: TIntegerField;
    LvCusto: TFloatField;
    LvMargem: TFloatField;
    LvUnitLiq: TFloatField;
    LvTotLiq: TFloatField;
    LpDesconto: TFloatField;
    Tidemp: TIntegerField;
    Tidorc: TIntegerField;
    Ttransp_vendedor: TWideStringField;
    TmotivoR: TWideStringField;
    TidUserR: TIntegerField;
    TDataR: TDateTimeField;
    TtipoFrete: TWideStringField;
    Tidtransp: TIntegerField;
    qGrupoZ: TZQuery;
    dGrupoZero: TDataSource;
    qGrupoZid: TIntegerField;
    qGrupoZdescricao: TWideStringField;
    qVendaWebvalorComissao: TFloatField;
    qVendaWebstFinan: TWideStringField;
    qVendaWebvalorFinan: TFloatField;
    qVendaWebTelTransportadora: TWideStringField;
    qVendaidtransp: TIntegerField;
    qVendaforma_pgto: TWideStringField;
    qVendatelTransp: TWideStringField;
    qParametropd_vincular_nf: TWideStringField;
    qParametropd_cred_nf_avulsa: TWideStringField;
    qParametronovafolhasep: TWideStringField;
    qParametroimp_minuta: TWideStringField;
    qParametropd_duas_cond: TWideStringField;
    Tforma_pgto: TWideStringField;
    TtelTransp: TWideStringField;
    TpDesconto: TFloatField;
    Tidcondpgto2: TIntegerField;
    Tidtranspotadora: TIntegerField;
    Tfoma_pgto2: TWideStringField;
    qParametropd_imp_matricial: TWideStringField;
    qContaendcedende: TWideStringField;
    qContanumcedende: TWideStringField;
    qContabaicedende: TWideStringField;
    qContacidcedende: TWideStringField;
    qContaufcedende: TWideStringField;
    qContacepcedende: TWideStringField;
    qContaBCNAB: TIntegerField;
    BancoBCNAB: TIntegerField;
    qParametromargem_minima: TFloatField;
    qParametrobloq_unit_venda: TWideStringField;
    qParametrobloq_alterar_venda: TWideStringField;
    qEstoqueiddev: TIntegerField;
    qParametronf_qtd_cx_separado: TWideStringField;
    qParametrofolha_separacao_mod_3: TWideStringField;
    qParametrocli_atraso_dias: TIntegerField;
    qParametrocli_atraso: TWideStringField;
    qCoantecipado: TWideStringField;
    qParametropd_perm_alt_exp: TWideStringField;
    qNF: TZQuery;
    qNFid: TIntegerField;
    qNFnf: TIntegerField;
    qNFemissao: TDateTimeField;
    qNFt_nf: TFloatField;
    qNFidvenda: TIntegerField;
    qNFidweb: TIntegerField;
    qPar: TZQuery;
    qParcWeb: TZQuery;
    qParcWebId: TIntegerField;
    qParcWebVencimento: TDateTimeField;
    qParcWebValor: TFloatField;
    qParcWebParcela: TWideStringField;
    qParcWebidvenda: TIntegerField;
    qParid: TIntegerField;
    qParvenci: TDateTimeField;
    qPartotal: TFloatField;
    qPardocumento: TWideStringField;
    qNFstatus: TWideStringField;
    qNFserie: TWideStringField;
    qParametronao_usar_expedicao: TWideStringField;
    CRecidretorno: TIntegerField;
    CRecbenviando: TWideStringField;
    CRecbimpresso: TWideStringField;
    CRecnn_sicred: TWideStringField;
    CRecbconta: TIntegerField;
    CRecgeradoBol: TWideStringField;
    BancotipoMulta: TWideStringField;
    BancotipoProtesto: TWideStringField;
    qComissaopcomissao: TFloatField;
    qVenpcomissao: TFloatField;
    qNFpcomissao: TFloatField;
    qParametrovias_subop_mesma_folha: TWideStringField;
    qCliWebidlocal: TIntegerField;
    qCliCondWeb: TZQuery;
    qCliCond: TZQuery;
    qCliCondWebid: TIntegerField;
    qCliCondWebidempresa: TIntegerField;
    qCliCondWebidcliente: TIntegerField;
    qCliCondWebidcond: TIntegerField;
    qCliCondWebex: TIntegerField;
    qCliCondId: TIntegerField;
    qCliCondIdCliente: TIntegerField;
    qCliCondIdCond: TIntegerField;
    qCliCondSincronizado: TWideStringField;
    qCliCondIdemp: TIntegerField;
    qCliCondIdweb: TIntegerField;
    qCliCondex: TIntegerField;
    qEmpresaim: TWideStringField;
    qParametromod_sped: TWideStringField;
    qParametronao_baixar_negativo: TWideStringField;
    qRepW_I: TZQuery;
    qRepI: TZQuery;
    qRepW_IId: TIntegerField;
    qRepW_IIdempresa: TIntegerField;
    qRepW_IIdrep: TIntegerField;
    qRepW_IIdProduto: TIntegerField;
    qRepW_IEx: TIntegerField;
    qRepW_IIdlocal: TIntegerField;
    qRepW_Ix: TWideStringField;
    qRepIId: TIntegerField;
    qRepIIdVendedor: TIntegerField;
    qRepIIdProduto: TIntegerField;
    qRepIsincronizado: TWideStringField;
    qRepIEx: TIntegerField;
    qRepIIdweb: TIntegerField;
    qRepIx: TWideStringField;
    qVendaWebNumero: TIntegerField;
    qVendaWebSerie: TWideStringField;
    qVendaWebEmissaoNota: TDateTimeField;
    qVendaWebValorNota: TFloatField;
    qVendaWebLinhaDigitavel: TWideStringField;
    qVendaWebLinkBoleto: TWideStringField;
    qVendapDesconto: TFloatField;
    qVendaidcondpgto2: TIntegerField;
    qVendaidtranspotadora: TIntegerField;
    qVendafoma_pgto2: TWideStringField;
    qVendaLinhaDigitavel: TWideStringField;
    qVendaLinkBoleto: TWideStringField;
    qVenlinhadigitavel: TWideStringField;
    qVenlinkboleto: TWideStringField;
    qNFlinhadigitavel: TWideStringField;
    qNFlinkboleto: TWideStringField;
    qVendaWebLinkDanfe: TWideStringField;
    qVendaLinkDanfe: TWideStringField;
    qVenlinkdanfe: TWideStringField;
    qNFlinkdanfe: TWideStringField;
    qImpOC: TZQuery;
    dImpOC: TDataSource;
    qImpOCNOME: TWideStringField;
    qImpOCDESCRICAO: TWideStringField;
    qImpOCunit: TFloatField;
    qImpOCtotpro: TFloatField;
    qImpOCId: TIntegerField;
    qImpOCDATA: TDateTimeField;
    qImpOCidFornecedor: TIntegerField;
    qImpOCidcondpgto: TIntegerField;
    qImpOCValor: TFloatField;
    qImpOCDESCONTO: TFloatField;
    qImpOCTotal: TFloatField;
    qImpOCFRETE: TFloatField;
    qImpOCtpfrete: TIntegerField;
    qImpOCidUsuario: TIntegerField;
    qImpOCOBS: TWideStringField;
    qImpOCEx: TIntegerField;
    qImpOCX: TWideStringField;
    qImpOCidemp: TIntegerField;
    qImpOCId_1: TIntegerField;
    qImpOCidOC: TIntegerField;
    qImpOCidProduto: TIntegerField;
    qImpOCQtd: TFloatField;
    qImpOCUnitario: TFloatField;
    qImpOCDESCONTO_1: TFloatField;
    qImpOCTotal_1: TFloatField;
    qImpOCTIPO: TWideStringField;
    qCPagarnumnota: TIntegerField;
    VDODmPrinter1: TVDODmPrinter;
    qCheqEMISSAO: TDateTimeField;
    qCheqVENCI: TDateTimeField;
    qCheqDTOPERACAO: TDateTimeField;
    qCheqDTDEV1: TDateTimeField;
    qCheqDTDEV2: TDateTimeField;
    qParametromod_gerente_cial: TWideStringField;
    qComiPagarnome: TWideStringField;
    qRelComiPagarnomeCli: TWideStringField;
    qRelComiPagasnomeCli: TWideStringField;
    qParametroperg_imp_separacao: TWideStringField;
    qParametrominuta_des_mold_2: TWideStringField;
    qParametroetiqueta_nf_mod_2: TWideStringField;
    Tnf: TIntegerField;
    qParametromsg_estoque_baixo: TWideStringField;
    qParametroperg_email_transp: TWideStringField;
    qParametronf_sem_itens_zerados: TWideStringField;
    qParametrotraz_cond_em_branco: TWideStringField;
    qParametromostrar_multiplo: TWideStringField;
    qParametrofolhaSepSemValor: TWideStringField;
    Lvalipi: TFloatField;
    Ttotipi: TFloatField;
    qComiPagarsincronizado: TWideStringField;
    qComiPagarbasecalculo: TFloatField;
    qComiPagarpComissao: TFloatField;
    qComiPagaridcreceber: TIntegerField;
    qComibasecalculo: TFloatField;
    qComipComissao: TFloatField;
    qComiidcreceber: TIntegerField;
    qRelComiPagaridemp: TIntegerField;
    qRelComiPagarsincronizado: TWideStringField;
    qRelComiPagarbasecalculo: TFloatField;
    qRelComiPagarpComissao: TFloatField;
    qRelComiPagaridcreceber: TIntegerField;
    qRelComiPagaridvenda: TIntegerField;
    qParametrocompra_etq_sele: TWideStringField;
    qEmpresaauto_acesso_xml: TWideStringField;
    qEmpresarep_cfop_d: TIntegerField;
    qEmpresarep_cfop_f: TIntegerField;
    qEmpresarep_csosn: TIntegerField;
    qFormas: TZQuery;
    qFormasId: TIntegerField;
    qFormasDescricao: TWideStringField;
    qParametroprod_com_romaneio: TWideStringField;
    qParametroimpReciboFinan: TWideStringField;
    qParametrovenda_alterarUnitGrid: TWideStringField;
    qParametrovenda_frete: TWideStringField;
    qParametrovenda_justificar_cancel: TWideStringField;
    qParametromostrar_btn_entregar: TWideStringField;
    qParametrofolhaSeparacao_mod_5: TWideStringField;
    qParametroImpressaoVenda_mod_5: TWideStringField;
    qParametromod_mdfe: TWideStringField;
    qEmpresamdfe_serie: TWideStringField;
    qEmpresamdfe_xml: TWideStringField;
    qEmpresamdfe_danfe: TWideStringField;
    qParametromudar_cial_exp: TWideStringField;
    LogFinan: TZTable;
    LogFinanid: TIntegerField;
    LogFinandt: TWideStringField;
    LogFinanhora: TWideStringField;
    LogFinanidusuario: TIntegerField;
    LogFinanidmov: TIntegerField;
    LogFinantipo: TWideStringField;
    LogFinanacao: TWideStringField;
    LogFinanmotivo: TWideStringField;
    qParametroprod_por_pedido: TWideStringField;
    qParametrousa_com_padrao: TWideStringField;
    qParametroimp_oc_mod_2: TWideStringField;
    qImpOCvalipi: TFloatField;
    qImpOCformapgto: TWideStringField;
    qImpOCprevisao: TDateTimeField;
    qImpOCidtransp: TIntegerField;
    qImpOCpIpi: TFloatField;
    qImpOCvIpi: TFloatField;
    qImpOCdesCP: TWideStringField;
    qImpOCe_razao: TWideStringField;
    qImpOCe_fantasia: TWideStringField;
    qImpOCe_endereco: TWideStringField;
    qImpOCe_num: TWideStringField;
    qImpOCe_bairro: TWideStringField;
    qImpOCe_cep: TWideStringField;
    qImpOCe_cidade: TWideStringField;
    qImpOCe_uf: TWideStringField;
    qImpOCe_cnpj: TWideStringField;
    qImpOCe_ie: TWideStringField;
    qImpOCe_im: TWideStringField;
    qImpOCe_tel: TWideStringField;
    qImpOCe_mail: TWideStringField;
    qImpOCfantasia: TWideStringField;
    qImpOCENDERECO: TWideStringField;
    qImpOCnum: TWideStringField;
    qImpOCBAIRRO: TWideStringField;
    qImpOCCEP: TWideStringField;
    qImpOCCIDADE: TWideStringField;
    qImpOCUF: TWideStringField;
    qImpOCCNPJ: TWideStringField;
    qImpOCIE: TWideStringField;
    qImpOCtel1: TWideStringField;
    qImpOCEMAIL: TWideStringField;
    qImpOCt_nome: TWideStringField;
    qImpOCt_endereco: TWideStringField;
    qImpOCt_bairro: TWideStringField;
    qImpOCt_cep: TWideStringField;
    qImpOCt_cidade: TWideStringField;
    qImpOCt_Uf: TWideStringField;
    qImpOCt_cnpj: TWideStringField;
    qImpOCt_ie: TWideStringField;
    qImpOCt_telefone: TWideStringField;
    qImpOCt_email: TWideStringField;
    qImpOCref: TIntegerField;
    qImpOCun: TWideStringField;
    qParametrogerar_cred_emp_origem: TWideStringField;
    qImpCompraforma_pgto: TWideStringField;
    qImpCompraidsolicitante: TIntegerField;
    qImpCompranomeSol: TWideStringField;
    qRelCRecebidasvalor1: TFloatField;
    qRelCRecebidasfpgto2: TWideStringField;
    qRelCRecebidasvalor2: TFloatField;
    CxLancamentoCheque: TWideStringField;
    RLXLSXFilter1: TRLXLSXFilter;
    qRelCRecebidasvalor: TFloatField;
    qRelCRecebidasjuros: TFloatField;
    CPagped_nota: TIntegerField;
    qCPagarped_nota: TIntegerField;
    qCPagardoc_bx_parcial: TWideStringField;
    CPagdoc_bx_parcial: TWideStringField;
    qCPagartipoFinan: TWideStringField;
    CPagtipoFinan: TWideStringField;
    qParametrovincula_usu_vend: TWideStringField;
    qSel: TZQuery;
    qParametrousa_abertura_cx: TWideStringField;
    qParametrosat: TWideStringField;
    qFecha: TZQuery;
    uFecha: TZUpdateSQL;
    qFechaID: TIntegerField;
    qFechaData: TWideStringField;
    qFechaHora: TWideStringField;
    qFechaIDMOV: TIntegerField;
    qFechaAbertura: TFloatField;
    qFechaS_Din: TFloatField;
    qFechaS_Che: TFloatField;
    qFechaS_Deb: TFloatField;
    qFechaS_Cre: TFloatField;
    qFechaU_Din: TFloatField;
    qFechaU_Che: TFloatField;
    qFechaU_Deb: TFloatField;
    qFechaU_Cre: TFloatField;
    qFechaFechamento: TFloatField;
    qFechaDeixado: TFloatField;
    qFechaCODEMP: TIntegerField;
    qFechas_depo: TFloatField;
    qFechau_depo: TFloatField;
    tSH: TZTable;
    tSHCNPJ: TWideStringField;
    tSHI_ESTADUAL: TWideStringField;
    tSHI_MUNICIPAL: TWideStringField;
    tSHRAZAO: TWideStringField;
    tSHNOME_APLICACAO: TWideStringField;
    tSHNOME_EXECUTAVEL: TWideStringField;
    tSHVERSAO: TWideStringField;
    tSHMD5: TWideStringField;
    tSHVERSAO_ROTEIRO: TWideStringField;
    tSHCONTATO: TWideStringField;
    tSHNUM_LAUDO: TWideStringField;
    tSHENDERECO: TWideStringField;
    tSHTELEFONE: TWideStringField;
    tSHCIDADE: TWideStringField;
    tSHUF: TWideStringField;
    tSHPERFIL_APRES: TWideStringField;
    tSHIND_ATIVIDADE: TWideStringField;
    tSHCEP: TWideStringField;
    tSHBAIRRO: TWideStringField;
    tSHdataini: TDateTimeField;
    tSHhoraini: TWideStringField;
    tSHnem_credenciamento: TWideStringField;
    tSHnum_credenciamento: TWideStringField;
    tSHAssinaturaAC: TWideMemoField;
    ACBrSAT1: TACBrSAT;
    ACBrSATExtratoFortes1: TACBrSATExtratoFortes;
    qEmp: TZQuery;
    qEmpid: TIntegerField;
    qEmpRAZAO: TWideStringField;
    qEmpCNPJ: TWideStringField;
    qEmpENDERECO: TWideStringField;
    qEmpBAIRRO: TWideStringField;
    qEmpCIDADE: TWideStringField;
    qEmpUF: TWideStringField;
    qEmpCEP: TWideStringField;
    qEmpSITE: TWideStringField;
    qEmpEMAIL: TWideStringField;
    qEmpRESPONS: TWideStringField;
    qEmpTELEFONE: TWideStringField;
    qEmpFAX: TWideStringField;
    qEmplogo: TWideStringField;
    qEmpex: TWideStringField;
    qEmpfantasia: TWideStringField;
    qEmpnum: TWideStringField;
    qEmpidCidade: TIntegerField;
    qEmpIE: TWideStringField;
    qEmpOBSNF: TWideMemoField;
    qEmpESPECIE: TWideStringField;
    qEmpMARCA: TWideStringField;
    qEmpSERIE: TWideStringField;
    qEmpTPEMPRESANFE: TIntegerField;
    qEmpNFE_DUPLICATA: TWideStringField;
    qEmpNFE: TWideStringField;
    qEmpCFOP: TWideStringField;
    qEmpCSOSN: TWideStringField;
    qEmpCSOSN2: TWideStringField;
    qEmpNFE_RAVE: TWideStringField;
    qEmpNFE_NUMSERIE: TWideStringField;
    qEmpNFE_EMAIL: TWideStringField;
    qEmpNFE_SENHA: TWideStringField;
    qEmpNFE_ASSUNTO: TWideStringField;
    qEmpNFE_CORPOMSG: TWideMemoField;
    qEmpNFE_DANFE: TWideStringField;
    qEmpNFE_XML: TWideStringField;
    qEmpNFE_CANCELADA: TWideMemoField;
    qEmpNFE_COPIAEMAIL: TWideStringField;
    qEmpTIPO_EMPRESA: TWideStringField;
    qEmpTIPOIMP_NFE: TWideStringField;
    qEmpSIMPLESN_FAIXA: TIntegerField;
    qEmpSIMPLESN_TIPO: TWideStringField;
    qEmpDEST_IMPOSTOS: TWideStringField;
    qEmpMOSTRA_FONTEIBPT: TWideStringField;
    qEmpSMTP: TWideStringField;
    qEmpPORTA: TIntegerField;
    qEmpEMAIL_SSL: TWideStringField;
    qEmpEMAIL_TLS: TWideStringField;
    qEmpNT003: TWideStringField;
    qEmpNTCEST: TWideStringField;
    qEmpPICMSINTERDEST: TFloatField;
    qEmpCSC: TWideStringField;
    qEmpIDCSC: TWideStringField;
    qEmpMOSTRA_ST: TWideStringField;
    qEmpPAIS: TIntegerField;
    qEmpTIPOPESSOA: TWideStringField;
    qEmpiduf: TIntegerField;
    qEmpNF_IMPOSTOPORNCM: TWideStringField;
    qEmpemail_contador: TWideStringField;
    qEmptpAmbiente: TWideStringField;
    qEmpnf_msgAproveitCredito: TWideStringField;
    qEmpnf_cfopprod_puxar_NF: TWideStringField;
    qEmpempresa_padrao: TWideStringField;
    qEmprem_email: TWideStringField;
    qEmprem_senha: TWideStringField;
    qEmprem_smtp: TWideStringField;
    qEmprem_porta: TIntegerField;
    qEmprem_ssl: TWideStringField;
    qEmprem_tls: TWideStringField;
    qEmpim: TWideStringField;
    qEmpauto_acesso_xml: TWideStringField;
    qEmprep_cfop_d: TIntegerField;
    qEmprep_cfop_f: TIntegerField;
    qEmprep_csosn: TIntegerField;
    qEmpmdfe_serie: TWideStringField;
    qEmpmdfe_xml: TWideStringField;
    qEmpmdfe_danfe: TWideStringField;
    qEmpsalvarcfes: TWideStringField;
    qEmpmodeloSat: TWideStringField;
    qEmpCodigoAtivacaoSat: TWideStringField;
    qEmpCFe_largura: TIntegerField;
    qEmpCFe_copias: TIntegerField;
    qEmpCFe_visualiza: TWideStringField;
    qEmpCFe_logo: TWideStringField;
    qEmpnome_dll_sat: TWideStringField;
    qEmpcfe_segundavia: TWideStringField;
    qEstoquecupom: TIntegerField;
    qParametrobloquear_limite_exedido: TWideStringField;
    qUserCep: TWideStringField;
    qUsuCep: TWideStringField;
    qParametroconsidera_perm_alt_unit: TWideStringField;
    qParametropedir_senha_desc_venda: TWideStringField;
    Tv_adicional: TFloatField;
    qParametrocli_cep_obrigatorio: TWideStringField;
    qParametrocli_cpf_obrigatorio: TWideStringField;
    qEmpresamsn_email_OC: TWideMemoField;
    qRelCRecebidasusu_baixa: TWideStringField;
    CRecusuario_baixa: TIntegerField;
    Cxestorno: TWideStringField;
    qCPagaridBaixa2: TIntegerField;
    qCReceberidretorno: TIntegerField;
    qCReceberbenviando: TWideStringField;
    qCReceberbimpresso: TWideStringField;
    qCRecebernn_sicred: TWideStringField;
    qCReceberbconta: TIntegerField;
    qCRecebergeradoBol: TWideStringField;
    qCReceberidVendaOriginal: TIntegerField;
    qCReceberusuario_baixa: TIntegerField;
    qCReceberidBaixa2: TIntegerField;
    CRecidVendaOriginal: TIntegerField;
    CRecidBaixa2: TIntegerField;
    qRelCRecebidasdesconto: TFloatField;
    qRelCRecebidasdtpagto: TWideStringField;
    CxF_pix: TFloatField;
    qEstoqueop_manual: TWideStringField;
    qParametrodias_calc_preco_compra: TIntegerField;
    qParametroproducao_fases: TWideStringField;
    qParametrousa_cx_master: TWideStringField;
    qProcSA: TZQuery;
    qProcSAId: TIntegerField;
    qProcSAIdProcesso: TIntegerField;
    qProcSADescricao: TWideStringField;
    qProcSAIdSemiAcabado: TIntegerField;
    qProcSAUltimo: TWideStringField;
    qProcSAOrdem: TIntegerField;
    qProcSATempo: TWideStringField;
    qProcSACusto: TFloatField;
    qProcSADepende_Ant: TWideStringField;
    qProcItemSA: TZQuery;
    qProcItemSAId: TIntegerField;
    qProcItemSAIdProcesso_sa: TIntegerField;
    qProcItemSAIdProduto: TIntegerField;
    qProcItemSAQtde: TFloatField;
    qProcItemSAUn: TWideStringField;
    qProcItemSAdescricao: TWideStringField;
    qProcItemSAprecocompra: TFloatField;
    qProcItemSAtot: TFloatField;
    qProcItemSAtipo: TWideStringField;
    qFicha: TZQuery;
    qFichaId: TIntegerField;
    qFichaIdProduto: TIntegerField;
    qFichaQuantidade: TFloatField;
    qFichadescr: TWideStringField;
    qFichaTipo2: TWideStringField;
    qFichaIdItem: TIntegerField;
    qFichaTipo: TWideStringField;
    qFichaUnidade: TWideStringField;
    qFichatotmp: TFloatField;
    qFichatotprocesso: TFloatField;
    qProduto: TZQuery;
    uProduto: TZUpdateSQL;
    qProdutoId: TIntegerField;
    qProdutodescricao: TWideStringField;
    qProdutotipo: TWideStringField;
    qProdutoest_seguranca: TFloatField;
    qProdutoest_minimo: TFloatField;
    qProdutoft_conv_un: TWideStringField;
    qProdutoft_conv_qtde: TFloatField;
    qProdutoft_conv_2un: TWideStringField;
    qProdutoproduzido: TWideStringField;
    qProdutobarras: TWideStringField;
    qProdutoreferencia: TWideStringField;
    qProdutovalor: TFloatField;
    qProdutoqtdestoque: TFloatField;
    qProdutoCusto_montagem: TFloatField;
    qProdutocod_Manual: TIntegerField;
    qProdutocest: TWideStringField;
    qProdutoNCM: TWideStringField;
    qProdutoeIPI: TWideStringField;
    qProdutoobs: TWideMemoField;
    qProdutoPrecoCompra: TFloatField;
    qProdutoIcms: TFloatField;
    qProdutoPIS: TWideStringField;
    qProdutopPIS: TFloatField;
    qProdutoCOFINS: TWideStringField;
    qProdutopCOFINS: TFloatField;
    qProdutoIPI: TWideStringField;
    qProdutopIPI: TFloatField;
    qProdutocsosn: TWideStringField;
    qProdutocfop: TWideStringField;
    qProdutocfop_fora: TWideStringField;
    qProdutomargem: TFloatField;
    qProdutoex: TIntegerField;
    qProdutoidfornecedor: TIntegerField;
    qProdutoRoyalties: TFloatField;
    qProdutoIDSTRIB: TIntegerField;
    qProdutoREDUCAO: TFloatField;
    qProdutoMARGEMST: TFloatField;
    qProdutoST: TFloatField;
    qProdutoST2: TFloatField;
    qProdutoCSOSN2: TWideStringField;
    qProdutoMVA: TFloatField;
    qProdutoCODIPI: TWideStringField;
    qProdutoIDTIPO_TRIBUTACAO: TIntegerField;
    qProdutoIDORIGEM: TIntegerField;
    qProdutounidade_nfe: TWideStringField;
    qProdutovalor2: TFloatField;
    qProdutopesoLiq: TFloatField;
    qProdutopesobru: TFloatField;
    qProdutomultiplo: TFloatField;
    qProdutocubagem: TFloatField;
    qProdutoDUN14: TWideStringField;
    qProdutoCustoProcesso: TFloatField;
    qProdutoCustoMP: TFloatField;
    qProdutoCustoproducao: TFloatField;
    qProdutoCustoOperacional: TFloatField;
    qProdutoCustoFinal: TFloatField;
    qProdutoVendaSugerido: TFloatField;
    qProdutoIdCxMaster: TIntegerField;
    qProdutoEmbalagem: TWideStringField;
    qProdutoaltura: TFloatField;
    qProdutolargura: TFloatField;
    qProdutocomprimento: TFloatField;
    qProdutoidweb: TIntegerField;
    qProdutosincronizado: TWideStringField;
    qProdutocustoCxMaster: TFloatField;
    qProdutomaxDesconto: TFloatField;
    qProdutocst: TWideStringField;
    qProdutoidgrupo: TIntegerField;
    qProdutomateria_prima: TWideStringField;
    qProdutodivisor: TFloatField;
    qProdutonao_vender_web: TWideStringField;
    qProdutoalturaCx: TFloatField;
    qProdutolarguraCx: TFloatField;
    qProdutocomprimentoCx: TFloatField;
    qProdutobx_item_ficha_venda: TWideStringField;
    qProdutototprocesso: TFloatField;
    qProdutototmp: TFloatField;
    qProdutocusto_total: TFloatField;
    qProdutoativo: TWideStringField;
    qMP: TZQuery;
    qMPid: TIntegerField;
    qMPdescricao: TWideStringField;
    qMPprecocompra: TFloatField;
    dIns: TDataSource;
    dSel: TDataSource;
    qProTotal: TZQuery;
    qMPTotal: TZQuery;
    qSATotal: TZQuery;
    qProTotalid: TIntegerField;
    qMPTotalid: TIntegerField;
    qSATotalid: TIntegerField;
    qParametrobloqueia_nf_lancada_fornecedor: TWideStringField;
    qParametrobloqueia_exped_cli_inadimp: TWideStringField;
    qParametrousa_referencia_base: TWideStringField;
    qCpagarCompra: TZQuery;
    uCPagarCompra: TZUpdateSQL;
    qCpagarCompraId: TIntegerField;
    qCpagarCompraEmissao: TDateTimeField;
    qCpagarCompraIdFornecedor: TIntegerField;
    qCpagarCompraDocumento: TWideStringField;
    qCpagarCompraVenci: TDateTimeField;
    qCpagarCompraValor: TFloatField;
    qCpagarCompraBaixa: TWideStringField;
    qCpagarCompraidBaixa: TIntegerField;
    qCpagarCompraDtPagto: TDateTimeField;
    qCpagarCompraValPago: TFloatField;
    qCpagarCompraidSubOP_P: TIntegerField;
    qCpagarCompraIdUsuario: TIntegerField;
    qCpagarCompraEx: TIntegerField;
    qCpagarCompraidOP_M: TIntegerField;
    qCpagarCompraValorfpgto: TFloatField;
    qCpagarCompraValorfpgto2: TFloatField;
    qCpagarCompraidcondpgto: TIntegerField;
    qCpagarCompraobs: TWideMemoField;
    qCpagarCompraTipo: TWideStringField;
    qCpagarComprax: TWideStringField;
    qCpagarCompraIdCompra: TIntegerField;
    qCpagarCompraFpgto: TWideStringField;
    qCpagarCompraFpgto2: TWideStringField;
    qCpagarComprajuros: TFloatField;
    qCpagarCompradesconto: TFloatField;
    qCpagarCompratotal: TFloatField;
    qCpagarCompraidcusto: TIntegerField;
    qCpagarCompraidnf: TIntegerField;
    qCpagarCompraidemp: TIntegerField;
    qCpagarCompraped_nota: TIntegerField;
    qCpagarCompradoc_bx_parcial: TWideStringField;
    qCpagarCompratipoFinan: TWideStringField;
    qCpagarCompraidBaixa2: TIntegerField;
    qContaBAGENCIAD: TWideStringField;
    BancoBAGENCIAD: TWideStringField;
    qParametrosicredi_n: TIntegerField;
    qParametrosicredi_b: TIntegerField;
    qParam: TZQuery;
    uParam: TZUpdateSQL;
    qParamsicredi_n: TIntegerField;
    qParamsicredi_b: TIntegerField;
    uCRec: TZUpdateSQL;
    LogFinanidcliente: TIntegerField;
    LogFinantipocliente: TWideStringField;
    qParametrodias_carencia_bloqueio: TIntegerField;
    cdInsereProd: TClientDataSet;
    cdInsereProdReferencia: TStringField;
    cdInsereProdDescricao: TStringField;
    cdInsereProdCor: TStringField;
    cdInsereProdTamanho: TStringField;
    cdInsereProdQuantidade: TFloatField;
    dsInsereProd: TDataSource;
    qRelCRecebidasvalPagoBruto: TFloatField;
    qParametrobloqueia_exped_lim_exedido: TWideStringField;
    qParametrofinanceiro_por_receb: TWideStringField;
    qParametrousar_setor: TWideStringField;
    qParametrorecibo_chq_detal: TWideStringField;
    qParametrolimite_venda_liberar_com_senha: TWideStringField;
    bCRecnf: TIntegerField;
    qParametrocli_tabela_obrigatorio: TWideStringField;
    qParametrocli_condicao_obrigatorio: TWideStringField;
    qParametrocli_transp_obrigatorio: TWideStringField;
    qParametrocli_redespacho_obrigatorio: TWideStringField;
    qParametrocli_formapgto_obrigatorio: TWideStringField;
    CRecnParc: TIntegerField;
    bCRecnParc: TIntegerField;
    qParametroid_mov_cx: TIntegerField;
    LogVendaidcliente: TIntegerField;
    ACBrBoleto1: TACBrBoleto;
    qParametromostra_orc_prog_prod: TWideStringField;
    qParametrorel_estoque_usar_fator_conv: TWideStringField;
    qGrupoW: TZQuery;
    qGrupo: TZQuery;
    qGrupoID: TIntegerField;
    qGrupoDESCRICAO: TWideStringField;
    qGrupoIDWEB: TIntegerField;
    qGrupoSINCRONIZADO: TWideStringField;
    qGrupoEX: TIntegerField;
    qGrupoWId: TIntegerField;
    qGrupoWDescricao: TWideStringField;
    qGrupoWex: TIntegerField;
    qGrupoWidEmpresa: TIntegerField;
    qGrupoWVisivel: TWideStringField;
    qGrupoWOrdem: TIntegerField;
    qTabIidgrupoWeb: TIntegerField;
    qEstoqueDisponivel: TZQuery;
    qEstoqueDisponivelqtdEstoque: TFloatField;
    qEstoqueDisponivelqtdvenda: TFloatField;
    qEstoqueDisponivelQtdDisponivel: TFloatField;
    qRelComiPagardtexpedicao: TDateTimeField;
    qRelComiPagaremissao1: TWideStringField;
    qRelComiPagarvenci1: TWideStringField;
    qRelComiPagasemissao1: TWideStringField;
    qRelComiPagasvenci1: TWideStringField;
    qRelComiPagasdtexpedicao: TWideStringField;
    qParametroimprimir_desc_ficha: TWideStringField;
    qParametroloteLetra: TWideStringField;
    qParametroL_Letra: TWideStringField;
    qParametroL_Num: TIntegerField;
    qParametroL_Posicao: TIntegerField;
    qParametroL_LetraAnterior: TWideStringField;
    qParametroL_posicaoLetra: TWideStringField;
    qEstoqueloteCompra: TWideStringField;
    qSelectEstoque: TZQuery;
    qParametroenvio_nfe_acbr: TWideStringField;
    LogCad: TZQuery;
    uLogCad: TZUpdateSQL;
    LogCadId: TIntegerField;
    LogCadData: TWideStringField;
    LogCadhora: TWideStringField;
    LogCadIdusu: TIntegerField;
    LogCadIdmov: TIntegerField;
    LogCadcadastro: TWideStringField;
    LogCadacao: TWideStringField;
    qItensWebQtd_itens: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure qEstoqueNewRecord(DataSet: TDataSet);
    procedure qCPagarNewRecord(DataSet: TDataSet);
    procedure qCReceberNewRecord(DataSet: TDataSet);
    procedure CRecNewRecord(DataSet: TDataSet);
    procedure CxNewRecord(DataSet: TDataSet);
    procedure qComiPagarNewRecord(DataSet: TDataSet);
    procedure qComiNewRecord(DataSet: TDataSet);
    procedure qCheqNewRecord(DataSet: TDataSet);
    procedure Bol_disNewRecord(DataSet: TDataSet);
    procedure Bol_disBeforePost(DataSet: TDataSet);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure qCheqAfterPost(DataSet: TDataSet);
    procedure qCheqBeforePost(DataSet: TDataSet);
    procedure qCPagarVenciSetText(Sender: TField; const Text: string);
    procedure CPagNewRecord(DataSet: TDataSet);
    procedure ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
    procedure ACBrSAT1GetsignAC(var Chave: AnsiString);

  private
    function textoStatus(txt, per: string): string;
    function enviaDadosWeb:String;
    function ConsultaIdWeb(sss: string): string;
    function BuscarIdLocal(tab: string; web: integer): integer;
    function SubirDadosWeb: string;
    function DescerDadosWeb: string;
    function baixaPedidosWeb: String;
    function BuscarCubagem(cod:integer) : real;
    { Private declarations }
  public
    { Public declarations }
     function textoNulo(txt: string): string;
     function CarregaINI: TConecta;
     function ConsultaIdLocal(sss: string): string;
     procedure AjustaACBrSAT(emp : integer) ;
  end;

var
  DM: TDM;
  iRetorno , CodNF   : Integer;
  FValoresIni : TConecta;
  Sep_Decimal : Char;
  tipoMultaBoleto : String;
  ImpPadrao   : String;
  CodVenda : Integer;
  StatusNF, StatusVenda, StatusOrc, StatusDev, nVendas, relcom, StatusOC : String;
  // Variavel colocada por uelson idVendedorEDT 22-12-2023
  nEmpresa, idVendedorEDT : integer;
  endbene, idcheqTerc : String;
  vEnv_EmailDest : String;
  vEnv_Report : TRLReport;  // enviar rel. por email
  visualiza : String;
  caixafe, cxf : string;
  vImpOC : boolean;
  vNumOC : integer;
  procedure FINANCEIROPorc(cod:integer);
  procedure FINANCEIRO(cod:integer);
  procedure atualizaWeb;
  procedure baixaWeb;
  function ConectaWeb:boolean;
  Function InsereCodigo(Tab, Campo: string):integer;
  Function InsereCodigoParm(Parm : string):integer;
  Procedure ExecSQL(vSelect : String);
  procedure Estoque( emp, op, sop, sopp, op_m, idven, prod, nf, dev: integer; mov, tp: string; qtd: real; pCupom : Integer; op_manu : String = 'N');
  Procedure GravaLogCheque(idUsu, IdChe, IdMov : Integer; Status, Acao :String);
  Procedure GravaLogVenda(idUsu, IdVen, IdPro : Integer; status, Acao :String; pIdCli : Integer);
  procedure addComissao(doc:string; idvd, idcc, idcr, idemp :integer; val:real; dtBx : TDate; pTipo : String = 'V');
  function BuscarSQL(Sql: String): integer;
  procedure EmpresaComboZero( com:TcomboBox );
  function BuscarEmpPadrao : integer;
  procedure BuscarEmpUsuario( com:TDBLookupComboBox );
  function EnviaEmailRep(texto, emailrep, assunto:string; ms:boolean ):boolean;
  function BuscaNossoNumSicredi:string;
  Function BuscaMesSicredi:string;
  Function VerificaNomeSicredi(nArq:String):string;
  procedure GravaImpressos(cli:integer);
  procedure GeraBoleto(cod:integer);
  procedure Gerar2via(cod:integer;bk:string);
  Procedure GravaLogCad(Usu, Mov : Integer; Cad, Acao :String);
  procedure EmpresaCombo( com:TcomboBox );
  procedure AjusteMatricial(nTipo, nvlr, tam, pix: string);
  procedure reciboPagRec(emp:integer; tp, idbx:string; pCred : real = 0);
  procedure FormasDBComboBox( com:TDBcomboBox ; vIndex : boolean = true );
  procedure FormasComboBox( com:TcomboBox ; vTodas : boolean = true );
  Function QueryConsulta(pSQL: WideString; pFieldRetorno: integer = 0): string;
  Function temPermissao(idusu:integer; perm:string; pMostraMensagem : boolean = true): boolean;
  Procedure GravaLogFinan(idUsu, IdM, idCli: Integer; tp, aca, mot, tpCli :String);
  procedure reciboCreditoTotal(cod:string);
  Function BuscaUltimoID(Tab: string):integer;
  procedure VerificaCaixaAbertura(User:integer);
  procedure VerificaCaixaFechamento(User:Integer);
  function verifica(tp:string):boolean;
  function Retorno_SAT( codigo: integer): String;
  function  RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
  function  NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
  procedure atualizacusto(pidproduto : integer; pTipo : String); //p produto, m materia prima s semi-acabado
  procedure calculaprecopro(pidproduto : Integer);
  Procedure CustoTotal;
  procedure AtualizaQtdDisponivel(pidProduto : Integer; vAtualizarWeb : Boolean = true);
  function BuscaLoteOP : Integer;
  Function BuscaLoteLetraOP : string;
  function BuscaProximaLetra(aLetraAtual: String): String;

implementation

uses  uFuncao, uMenu, math, uSelBanco, uEnviar, uImpRecebimento, tbExtenso,
  uRelFinanceiro, uNovoCPagar, uAbertCaixa, uFechamento;

{$R *.dfm}

Function temPermissao(idusu:integer; perm:string; pMostraMensagem : boolean = true): boolean;
begin
   dm.qPesq.Close;
   dm.qPesq.SQL.Clear;
   dm.qPesq.SQL.Add( ' select usuario.[user] nn,  permissao.permitido, menu.nome '+
                     ' from usuario '+
                     ' Left join permissao on permissao.IdUsuario = usuario.tipo '+
                     ' left join menu on menu.Id = permissao.IdMenu '+
                     ' left join tpuser on tpuser.id = usuario.tipo '+
                     ' left join empresa on empresa.id = tpuser.idemp '+
                     ' where usuario.id = ' + inttostr(idusu) +
                     '  and upper(menu.nome) = ' + quotedstr(uppercase(perm))  );
   dm.qPesq.Open;
   if DM.qPesq.FieldByName('permitido').Value = 'T' then
     Result := true
   else
   begin
    if pMostraMensagem then
      Application.MessageBox(pchar('Usuário '+ trim(dm.qPesq.FieldByName('nn').Text)  +
                             ' sem permissão para esta operação. Por favor, verifique!'),'Atenção');
      Result := false;
   end


end;

Function InsereCodigo(Tab, Campo: string):integer;
begin
 DM.qIns.Close;
 DM.qIns.SQL.Clear;
 DM.qIns.SQL.Add('select max('+Campo+') as Cod from '+Tab);
 DM.qIns.Open;
 if DM.qIns.FieldByName('Cod').asstring = '' then
   Result := 1
 else
   Result := DM.qIns.FieldByName('Cod').AsInteger + 1;
end;

Function InsereCodigoParm(Parm : string):integer;
begin
 DM.qIns.Close;
 DM.qIns.SQL.Clear;
 DM.qIns.SQL.Add('select '+Parm+' as Cod from parametro  ');
 DM.qIns.Open;

 Result := DM.qIns.FieldByName('Cod').AsInteger + 1;

 ExecSQL('Update parametro set '+Parm+' = '+IntToStr(Result));
end;


Procedure ExecSQL(vSelect : String);
begin
 DM.qExec.Close;
 DM.qExec.SQL.Clear;
 DM.qExec.SQL.Add(vSelect);
 DM.qExec.ExecSQL;
 DM.qExec.ApplyUpdates;

end;

Procedure ExecSQLWeb(vSelect : String);
begin
 DM.qExecWeb.Close;
 DM.qExecWeb.SQL.Clear;
 DM.qExecWeb.SQL.Add(vSelect);
 DM.qExecWeb.ExecSQL;
 DM.qExecWeb.ApplyUpdates;

end;

procedure Estoque(emp, op, sop, sopp, op_m, idven, prod, nf, dev : integer; mov, tp: string; qtd: real; pCupom : Integer; op_manu : String = 'N' );
var
  nQtd, vQteE, vQtdLote, vQtdOk : real;
  vLote : string;
begin
  { op      = OP
    sop     = subOp
    sopp    = subOp_producao
    op_m    = op_montagem
    idven   = venda
    prod    = produto
    nf      = nota fiscal
    dev     = devolucao
    tp      = E entrada, S saida
    mov     = P - produto, M - materia-prima, S - semiacabado
  }

  vLote := '';  vQteE := qtd ; vQtdOk := 0;
  if tp = 'S' then    //tipo saída - ir descontando o menor
  begin
    vQtdLote := 0;
    dm.qSelectEstoque.Close;
    dm.qSelectEstoque.SQL.Clear;
    dm.qSelectEstoque.SQL.Add(' select sum(e.quantidade) qtd, e.loteCompra lote from estoque e where e.idproduto = ' + IntToStr(prod) +
                              ' and tpmov = ' + quotedstr(mov) + ' and e.loteCompra <> '''' '  +
                              ' group by e.loteCompra  having sum(e.quantidade) > 0  order by e.loteCompra' );
    dm.qSelectEstoque.Open;
    dm.qSelectEstoque.first;
    while not dm.qSelectEstoque.Eof do
    begin
      if dm.qSelectEstoque.FieldByName('qtd').AsFloat >= vQteE  then // tem + em estoque de um lote pega o lote e sai, faz insert embaixo
      begin
        vLote := dm.qSelectEstoque.FieldByName('lote').AsString;
        break;
      end
      else
      begin
        if vQteE > dm.qSelectEstoque.FieldByName('qtd').AsFloat then
        begin
          vLote  := dm.qSelectEstoque.FieldByName('lote').AsString;
          vQtdOk := vQtdOk + dm.qSelectEstoque.FieldByName('qtd').AsFloat;
          vQteE  := vQteE - dm.qSelectEstoque.FieldByName('qtd').AsFloat;

          if not dm.qEstoque.active then
            dm.qEstoque.open;
          dm.qEstoque.insert;
          dm.qEstoqueidemp.Value       := emp;
          dm.qEstoqueIdProduto.Value   := prod;
          dm.qEstoqueIdOp.Value        := OP;
          dm.qEstoqueIdSubOp.Value     := sop;
          dm.qEstoqueIdsubop_p.Value   := sopp;
          dm.qEstoqueidVenda.Value     := idven;
          dm.qEstoqueidnf.Value        := nf;
          dm.qEstoqueiddev.Value       := dev;
          dm.qEstoqueTpMov.Value       := mov;
          dm.qEstoqueTipo.Value        := tp;
          dm.qEstoqueCupom.Value       := pCupom;
          dm.qEstoqueQuantidade.Value  := dm.qSelectEstoque.FieldByName('qtd').AsFloat * (-1);
          dm.qEstoqueOP_Manual.Value   := op_manu;
          dm.qEstoqueloteCompra.AsString := vLote;

          dm.qEstoque.Post;

          if (idven > 0) and (vLote <> '') then //salvar na venda_i
          begin
            ExecSQL(' update Venda_I set loteCompra = ' + QuotedStr(vLote) + ' where idVenda = '+ inttostr(idven) +
                    ' and Idproduto = '+ inttostr(prod) + ' and Tipo = ' + quotedstr(mov)  );
          end;

          vLote := '';  //sobrou qtd sem lote
        end;
      end;
      dm.qSelectEstoque.Next;
    end;
  end;

  if vQteE <> 0 then
  begin
    if not dm.qEstoque.active then
      dm.qEstoque.open;
    dm.qEstoque.insert;
    dm.qEstoqueidemp.Value       := emp;
    dm.qEstoqueIdProduto.Value   := prod;
    dm.qEstoqueIdOp.Value        := OP;
    dm.qEstoqueIdSubOp.Value     := sop;
    dm.qEstoqueIdsubop_p.Value   := sopp;
    dm.qEstoqueidVenda.Value     := idven;
    dm.qEstoqueidnf.Value        := nf;
    dm.qEstoqueiddev.Value       := dev;
    dm.qEstoqueTpMov.Value       := mov;
    dm.qEstoqueTipo.Value        := tp;
    dm.qEstoqueCupom.Value       := pCupom;
    if (tp = 'E') or (tp = 'A') then
       dm.qEstoqueQuantidade.Value := vQteE
    else
       dm.qEstoqueQuantidade.Value := vQteE * (-1);
    dm.qEstoqueOP_Manual.Value   := op_manu;
    if vLote <> '' then
      dm.qEstoqueloteCompra.AsString := vLote;

    dm.qEstoque.Post;
    dm.qEstoque.ApplyUpdates;
    sleep(10);
  end;

  if (idven > 0) and (vLote <> '') then //salvar na venda_i
  begin
    ExecSQL(' update Venda_I set loteCompra = ' + QuotedStr(vLote) + ' where idVenda = '+ inttostr(idven) +
            ' and Idproduto = '+ inttostr(prod) + ' and Tipo = ' + quotedstr(mov)  );
  end;

  dm.qPesq.Close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select sum(Quantidade) qtd from Estoque where idproduto = ' + inttostr(prod) +
                   ' and tpmov = ' + quotedstr(mov) + ' and idemp = 1 ');
  dm.qPesq.Open;
  nQtd := dm.qPesq.FieldByName('qtd').AsFloat;

  if mov = 'S' then
     ExecSql(' update semi_acabado set qtdestoque = ' + PontoVirgula(formatfloat('###,###,##0.00000', nQtd )) +
             ' where id = ' + inttostr(prod)  )
  else
     ExecSql(' update produto set qtdestoque = ' + PontoVirgula(formatfloat('###,###,##0.00000', nQtd )) +
             ' where id = ' + inttostr(prod) );

  AtualizaQtdDisponivel(prod);

  dm.qEstoque.Close;
end;

Procedure GravaLogCheque(idUsu, IdChe, IdMov : Integer; Status, Acao :String);
begin
  DM.Log_Cheque.Open;
  DM.Log_Cheque.Insert;
  DM.Log_ChequeDATA.AsDateTime := Date;
  DM.Log_ChequeHORA.Value      := timetostr(Time);
  DM.Log_ChequeIDUSU.Value     := idUsu;
  DM.LOG_ChequeIDCHEQUE.Value  := IdChe;
  DM.LOG_ChequeIDMOV.Value     := IdMov;
  DM.LOG_ChequeSTATUS.Value    := Status;
  DM.LOG_ChequeACAO.Value      := Acao;
  DM.Log_Cheque.Post;
  DM.Log_cheque.ApplyUpdates;
  DM.Log_Cheque.Close;
end;

Procedure GravaLogVenda(idUsu, IdVen, IdPro : Integer; Status, Acao :String; pIdCli : Integer);
begin
  DM.LogVenda.Open;
  DM.LogVenda.Insert;
  DM.LogVendaDT.AsDateTime    := Date;
  DM.LogVendaHORA.Value       := timetostr(Time);
  DM.LogVendaIDUSUARIO.Value  := idUsu;
  DM.LogVendaIDvenda.Value    := IdVen;
  DM.LogVendaIDproduto.Value  := IdPro;
  DM.LogVendaSTATUS.Value     := Status;
  DM.LogVendaACAO.Value       := Acao;
  DM.LogVendaIdCliente.asInteger := pIdCli;
  DM.LogVenda.Post;
  DM.LogVenda.ApplyUpdates;
  DM.LogVenda.Close;
end;

Procedure GravaLogFinan(idUsu, IdM, idCli: Integer; tp, aca, mot, tpcli :String);
begin
  DM.LogFinan.Open;
  DM.LogFinan.Insert;
  DM.LogFinanDT.AsDateTime     := Date;
  DM.LogFinanHORA.Value        := timetostr(Time);
  DM.LogFinanIDUSUARIO.Value   := idUsu;
  DM.LogFinanIDmov.Value       := IdM;
  DM.LogFinantipo.Value        := tp;
  DM.LogFinanacao.Value        := aca;
  DM.LogFinanmotivo.Value      := mot;
  DM.LogFinanIdCliente.Value   := idCli;
  DM.LogFinanTipoCliente.Value := tpcli;
  DM.LogFinan.Post;
  DM.LogFinan.ApplyUpdates;
  DM.LogFinan.Close;
end;


Procedure GravaLogCad(Usu, Mov : Integer; Cad, Acao :String);
begin
  try
    DM.LogCad.Open;
    DM.LogCad.Insert;
    DM.LogCadID.Value        := InsereCodigo('log_cad', 'id' );
    DM.LogCadData.AsDateTime := Date;
    DM.LogCadHORA.asString   := timetostr(Time);
    DM.LogCadIDUSU.Value     := Usu;
    DM.LogCadIDMov.Value     := Mov;
    DM.LogCadCadastro.Value  := Cad;
    DM.LogCadAcao.Value      := Acao;
    DM.LogCad.Post;
    DM.LogCad.ApplyUpdates;
    DM.LogCad.Close;
  except on E : Exception do
   begin
    application.MessageBox(pChar('ATENÇÃO'+#13+'Erro ao gravar log.'+#13#13+E.Message), 'Atenção');
    DM.LogCad.Close;
   end;
  end;
end;


function TDM.CarregaINI: TConecta;
Var
  FIni: TIniFile;
  PATH: STRING;
  sepdec : string;
Begin
  GetDir(0, PATH);
  FIni := TIniFile.Create(PATH + '\Conectar.ini');
  Try
    With Result Do
    Begin
      DataBase          := FIni.ReadString('database' , 'DataBase'    , '');
      HostName          := FIni.ReadString('database' , 'HostName'    , '');
      Name              := FIni.ReadString('database' , 'Name'        , '');
      // Password        := FIni.ReadString('database' , 'Password'  , '');  // ThR060607
      User              := FIni.ReadString('database' , 'User'        , '');
      Protocol          := FIni.ReadString('database' , 'Protocol'    , '');
      sepDec            := FIni.ReadString('database' , 'Separador_Decimal'  , ',');
      Separador_decimal := sepDec[1];
      DataBaseWeb       := FIni.ReadString('database' , 'DataBaseWeb'  , ',');
      HostNameWeb       := FIni.ReadString('database' , 'HostNameWeb'  , ',');
    End;
  Finally
    FreeAndNil(FIni);
  End;

end;

procedure TDM.CRecNewRecord(DataSet: TDataSet);
begin
   dm.CRecID.Value             := InsereCodigo('CReceber', 'id');
   dm.CRecIdUsuario.Value      := dm.qUserId.Value;
   dm.CRecEx.Value             := 0;
   dm.CRecBaixa.Value          := 'N';
   dm.CRecgerado_boleto.Value  := 'N';
   dm.CRecsincronizado.Value   := 'N';
   dm.CRecemail_vencidas.Value := 'N';
   dm.CRecbenviando.Value      := 'N';
   dm.CRecbimpresso.Value      := 'N';
   dm.CRecgeradoBol.Value      := 'N';

end;

procedure TDM.CxNewRecord(DataSet: TDataSet);
begin
//   dm.CXID.Value     := InsereCodigo('MovCaixa', 'id');
   DM.CxId.AsInteger := InsereCodigoParm('id_mov_cx');

   dm.CxIdUsuario.Value         := dm.qUserId.Value;
   if dm.qParametrofolha_separacao_mod_3.Text <> 'S' then //brubalar
    dm.CxIdConta.Value           := 1;
   dm.CxPendente.Value          := 'S';
   dm.CxEstorno.Value           := 'N';

end;

procedure TDM.DataModuleCreate(Sender: TObject);
var
  sepDec : String;
Begin

  ConexWeb.Connected := False;
  Conex.Connected    := False;

  Conex.HostName  := '';
  FValoresIni    := CarregaIni;
  Conex.Database := FValoresIni.DataBase;
  Conex.HostName := FValoresIni.HostName;
  Conex.Name     := FValoresIni.Name;
  Conex.User     := FValoresIni.User;
  //Conex.Password := FValoresIni.Password;
  Conex.Protocol := FValoresIni.Protocol;

  try
   Conex.Connected  := True;
   sepDec           := trim(FValoresIni.Separador_decimal);
   Sep_decimal      := sepDec[1];

  except
   Application.MessageBox('Não foi possivel conectar com a base de Dados, Tente Novamente','Atenção');
   halt;
  end;

  dm.qParametro.Open;

  dm.qEmpresa.Open;
  dm.qEmpresa.FetchAll;
  if not (dm.qEmpresa.Locate('id', '1', [])) then
  begin
     execsql('INSERT INTO [dbo].[empresa]([id], [RAZAO], [CNPJ], [ENDERECO], [BAIRRO],'+
             ' [CIDADE], [UF], [CEP], [SITE], [EMAIL], [RESPONS], [TELEFONE], [FAX], [logo], '+
             ' [ex], [fantasia], [num], [idCidade], [IE],[OBSNF], [ESPECIE], [MARCA], [SERIE], '+
             ' [TPEMPRESANFE], [NFE_DUPLICATA], [NFE], [CFOP], [CSOSN], [CSOSN2], [NFE_RAVE],'+
             ' [NFE_NUMSERIE], [NFE_EMAIL], [NFE_SENHA], [NFE_ASSUNTO], [NFE_CORPOMSG],'+
             ' [NFE_DANFE], [NFE_XML], [NFE_CANCELADA], [NFE_COPIAEMAIL], [TIPO_EMPRESA], [TIPOIMP_NFE], '+
             ' [SIMPLESN_FAIXA], [SIMPLESN_TIPO], [DEST_IMPOSTOS], [MOSTRA_FONTEIBPT], [SMTP], [PORTA], '+
             ' [EMAIL_SSL], [EMAIL_TLS], [NT003], [NTCEST], [PICMSINTERDEST], [CSC], [IDCSC], [MOSTRA_ST], '+
             ' [PAIS], [TIPOPESSOA], [iduf], [NF_IMPOSTOPORNCM], [email_contador], [tpAmbiente], '+
             ' [nf_msgAproveitCredito], [nf_cfopprod_puxar_NF], [empresa_padrao]) '+
             'VALUES (1, ''RAZAO EMPRESA MATRIZ'', NULL, NULL, NULL, NULL, ''SP'', NULL, NULL, NULL, NULL,'+
             ' NULL, NULL, NULL, ''N'', ''FANTASIA EMPRESA MATRIZ'', NULL, NULL, NULL, NULL, NULL, NULL,'+
             ' ''001'', 1, ''N'', ''N'', NULL, NULL, NULL, ''C:\ThR Soluções\NFe\Report\NotaFiscalEletronica.rav'', '+
             ' null, null, null, null, NULL, NULL, NULL, NULL, NULL, ''N'', ''R'', NULL, NULL, ''N'', ''S'', '+
             ' NULL, NULL, ''N'', ''S'', ''N'', ''N'', NULL, NULL, NULL, ''N'',	1058, ''J'', '+
             ' NULL, ''N'', NULL, ''H'', ''N'', ''N'', ''S'');');
     dm.qEmpresa.Open;
     dm.qEmpresa.FetchAll;
  end;

  qConta.Open;
  qUsu.Open;

  dm.qCid.Open;
  dm.qCid.FetchAll;

  dm.tPais.Open;
  dm.tPais.FetchAll;

  dm.qOrigem.Open;
  dm.qOrigem.FetchAll;

  dm.qFinal.Open;
  dm.qFinal.FetchAll;

  dm.qTipoEmissao.Open;
  dm.qTipoEmissao.FetchAll;

  dm.tSH.Open;


end;

function ConectaWeb:boolean;   //para envio dados e recebimento de pedidos
begin
  if dm.ConexWeb.Connected then
  begin
     sleep(100);
     Result                 := true;
     Exit;
  end;

  dm.ConexWeb.Connected := False;
  sleep(100);
  dm.ConexWeb.DataBase  := '';
  dm.ConexWeb.HostName  := '';
  FValoresIni           := dm.CarregaIni;
  dm.ConexWeb.Database  := FValoresIni.DataBaseWeb;
  dm.ConexWeb.HostName  := FValoresIni.HostNameWeb;
  try
   dm.ConexWeb.Connected  := True;
   sleep(100);
   Result                 := true;
  except
    Application.MessageBox('Não foi possivel conectar com a base de Dados Web. Tente Novamente','Atenção', 48);
    Result := false;
  end;
end;


procedure TDM.qCheqAfterPost(DataSet: TDataSet);
begin
  qCheq.ApplyUpdates;
  sleep(100);

end;

procedure TDM.qCheqBeforePost(DataSet: TDataSet);
begin
  if dm.qCheqIdemp.AsInteger = 0 then
     dm.qCheqIdemp.AsInteger := 1;

  dm.qcheqcodemp.asinteger := dm.qCheqIdemp.AsInteger;
end;

procedure TDM.qCheqNewRecord(DataSet: TDataSet);
begin
  dm.qCheqidemp.AsInteger := dm.qUseridemp.AsInteger;
end;

procedure TDM.qComiNewRecord(DataSet: TDataSet);
begin
   dm.qComiID.Value            := InsereCodigo('Comi_Pagar', 'id');
   dm.qComiIdUsuario.Value     := dm.qUserId.Value;
   dm.qComiEx.Value            := 0;
   dm.qComiBaixa.Value         := 'N';
   dm.qComiTipo.Value          := 'D';
   dm.qComiidcondpgto.Value    := 1;
   dm.qComiX.Value             := 'F';
   dm.qComisincronizado.Value  := 'N';

end;

procedure TDM.qComiPagarNewRecord(DataSet: TDataSet);
begin
   dm.qComiPagarID.Value          := InsereCodigo('Comi_Pagar', 'id');
   dm.qComiPagarIdUsuario.Value   := dm.qUserId.Value;
   dm.qComiPagarEx.Value          := 0;
   dm.qComiPagarBaixa.Value       := 'N';
   dm.qComiPagarTipo.Value        := 'D';
   dm.qComiPagaridcondpgto.Value  := 1;
   dm.qComiPagarX.Value           := 'F';

end;

procedure TDM.qCPagarNewRecord(DataSet: TDataSet);
begin
   dm.qCPagarID.Value          := InsereCodigo('CPagar', 'id');
   dm.qCPagarIdUsuario.Value   := dm.qUserId.Value;
   dm.qCPagarEx.Value          := 0;
   dm.qCPagarBaixa.Value       := 'N';
   dm.qCPagarTipo.Value        := 'C';
   dm.qCPagaridcondpgto.Value  := 1;
   dm.qCPagarX.Value           := 'F';
   dm.qCPagartipoFinan.Value   := 'F';
end;

procedure TDM.qCPagarVenciSetText(Sender: TField; const Text: string);
begin
  if fNovoCPagar <> nil then
  begin
     try
         StrToDate(fNovoCPagar.DBEdit4.Text);
      except
      begin
        Application.MessageBox('Data Invalida!', 'Atenção');
        fNovoCPagar.dbedit4.Text := datetostr(Date);
        fNovoCPagar.dbedit4.SetFocus;
      end;
    end;
  end;

end;

procedure TDM.qCReceberNewRecord(DataSet: TDataSet);
begin
   dm.qCReceberID.Value          := InsereCodigo('CReceber', 'id');
   dm.qCReceberIdUsuario.Value   := dm.qUserId.Value;
   dm.qCReceberEx.Value          := 0;
   dm.qCReceberBaixa.Value       := 'N';
   dm.qCReceberemail_vencidas.Value := 'N';

end;

procedure TDM.qEstoqueNewRecord(DataSet: TDataSet);
begin
   //dm.qEstoqueID.Value          := InsereCodigo('Estoque', 'id'); mudado pra identy - thais 28/03/2022
   dm.qEstoqueIdUsuario.Value   := dm.qUserId.Value;
   dm.qEstoqueData.Value        := strtodate(formatdatetime( 'dd/mm/yyyy', now ));

end;


procedure TDM.RLPreviewSetup1Send(Sender: TObject);
begin
  Application.CreateForm(TfEnviar, fEnviar);

  if vEnv_EmailDest <> '' then
     fEnviar.edDest.Text := vEnv_EmailDest;



  fEnviar.ShowModal;
  fEnviar.Free;

end;

procedure addComissao(doc:string; idvd, idcc, idcr, idemp :integer; val:real; dtBx : TDate; pTipo : String = 'V');
var
  vende : integer;
  vl : Real;
begin

   //vendedor
   if pTipo = 'V' then //Venda
   begin
     dm.qpesq.close;
     dm.qpesq.sql.clear;
     dm.qpesq.sql.add('select idvendedor, pcomissao from venda where id = ' + inttostr(idvd));
     dm.qpesq.open;
   end
   else
   if pTipo = 'D' then   //Devolução
   begin
     dm.qpesq.close;
     dm.qpesq.sql.clear;
     dm.qpesq.sql.add('select idvendedor, pcomissao from dev where id = ' + inttostr(idvd));
     dm.qpesq.open;
   end;

   if (dm.qpesq.FieldByName('idvendedor').asinteger > 0) and (dm.qpesq.FieldByName('pcomissao').AsFloat > 0.00) then
   begin
     vende := dm.qpesq.FieldByName('idvendedor').asinteger;
     vl    := val * dm.qpesq.FieldByName('pcomissao').AsFloat / 100;
     dm.qComi.open;
     dm.qComi.Insert;
     dm.qComiDOCUMENTO.Value   := doc;
     dm.qComiIdvenda.Value     := Idvd;
     dm.qComiIdvendedor.Value  := vende;
     dm.qComiTIPO.Value        := pTipo;//'V'; V = Venda, D = Devolução
     dm.qComiEMISSAO.Value    := dtBx;
     dm.qComiVALOR.Value       := Vl;
     dm.qComiTOTAL.Value       := Vl;
     dm.qComiFPGTO.Value       := '1';
     dm.qComiVENCI.Value       := dtBx;
     dm.qComiidcusto.Value     := idcc;
     dm.qComiidcreceber.Value  := idcr;
     dm.qComiidemp.Value       := idemp;
     dm.qComibasecalculo.Value := val;
     dm.qComipComissao.Value   := dm.qpesq.FieldByName('pcomissao').AsFloat;
     dm.qComiobs.asstring      := '[Vendedor]';
     dm.qComi.Post;
     dm.qComi.ApplyUpdates;
   end;


   if dm.qParametromod_gerente_cial.Text = 'N' then
      Exit;

   //Gerente cial
   vl := 0;
   dm.qpesq.close;
   dm.qpesq.sql.clear;
   dm.qpesq.sql.add('select idgerente, pcomissaoG from venda where id = ' + inttostr(idvd));
   dm.qpesq.open;
   if (dm.qpesq.FieldByName('idgerente').asinteger > 0) and (dm.qpesq.FieldByName('pcomissaoG').AsFloat > 0.00) then
   begin
     vende := dm.qpesq.FieldByName('idgerente').asinteger;
     vl   := val * dm.qpesq.FieldByName('pcomissaoG').AsFloat / 100;
     dm.qComi.open;
     dm.qComi.Insert;
     dm.qComiDOCUMENTO.Value  := doc;
     dm.qComiIdvenda.Value    := Idvd;
     dm.qComiIdvendedor.Value := vende;
     dm.qComiTIPO.Value       := 'V';
     dm.qComiEMISSAO.Value    := Date;
     dm.qComiVALOR.Value      := Vl;
     dm.qComiTOTAL.Value      := Vl;
     dm.qComiFPGTO.Value      := '1';
     dm.qComiVENCI.Value      := date;
     dm.qComiidcusto.Value    := idcc;
     dm.qComiidcreceber.Value  := idcr;
     dm.qComiidemp.Value       := idemp;
     dm.qComibasecalculo.Value := val;
     dm.qComipComissao.Value   := dm.qpesq.FieldByName('pcomissaoG').AsFloat;
     dm.qComiobs.asstring     := '[Gerente Cial]';
     dm.qComi.Post;
     dm.qComi.ApplyUpdates;
   end;


end;


function TDM.enviaDadosWeb:String;
var
  mErro: String;
begin

  if DM.qParametromod_pedidosWeb.Text = 'N' then
  begin
     Result := '';
     Exit;
  end;

  if ConectaWeb = false then
  begin
     Result := 'Erro ao Conectar na Web para envio, verifique!';
     Exit;
  end;

  if dm.qParametroidweb.AsInteger = 0 then
  begin
     Result := 'Codigo da empresa na web não informado, verifique!';
     Exit;
  end;

  mErro := mErro + SubirDadosWeb;

  if mErro = ''  then
     Result := ''
  else
     Result :=  mErro;

end;


function TDM.baixaPedidosWeb:String;
var
  mErro: String;
begin

  if DM.qParametromod_pedidosWeb.Text = 'N' then
  begin
     Result := '';
     Exit;
  end;

  if ConectaWeb = false then
  begin
     Result := 'Erro ao Conectar na Web para baixar, verifique!';
     Exit;
  end;

  if dm.qParametroidweb.AsInteger = 0 then
  begin
     Result := 'Codigo da empresa na web não informado, verifique!';
     Exit;
  end;

  mErro := mErro + DescerDadosWeb();

  if mErro = ''  then
     Result := ''
  else
     Result :=  mErro;

end;


function TDM.SubirDadosWeb:string;
var
  sql, eErro, stFinan :String;
  idrepWeb, idEmp, idwebs, idcli, idcon, idvend, idtab :integer;
  vFinan : real;
begin

  idwebs := 0;
  idEmp := dm.qParametroidweb.AsInteger;

  //subir Representante
  dm.qRepWEb.close;
  dm.qRepWeb.ParamByName('emp').Value := idEmp;
  dm.qRepWEb.Open;

  dm.qRep.Close;
  dm.qRep.Open;
  if dm.qRep.IsEmpty = false then
  begin
      while dm.qRep.Eof = false do
      begin

        barraProgressoMenu('Enviando Representante na web:' + dm.qRepNome.text, true, dm.qRep.RecNo, dm.qRep.RecordCount);
        Application.ProcessMessages;

        if dm.qRepWeb.Locate('idrep', dm.qRepID.AsInteger, []) then //salva
        begin
           sql := ' update representante set '+
                  ' nome = ' + dm.textoNulo(dm.qRepNOME.text) + ', ' +
                  ' email = ' + dm.textoNulo(dm.qRepEmail.text) + ', ' +
                  ' cnpj = ' + dm.textoNulo(dm.qRepCNPJ.text) + ', ' +
                  ' status = ' + dm.textoStatus(dm.qRepEx.text, dm.qReppermite_web.text) + ', ' +
                  ' pcomissao = ' + pontovirgula(formatfloat('#0.00', dm.qRepComissao.AsFloat)) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and idrep = ' + dm.qRepID.text;
           try
              ExecSqlWeb( sql );
              idwebs := dm.qRepWebId.AsInteger;
              sleep(10);
              ExecSql(' update vendedor set sincronizado = ''S'', idweb = '+ inttostr(idwebs)+
                      ' where id = ' + dm.qRepID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;

        end
        else //novo
        begin
           sql := ' insert into representante (nome, email, cnpj, senha, status, '+
                  ' idempresa, idrep, pcomissao, bloqueioclientesemcpf ) values ( '+
                  dm.textoNulo(dm.qRepNOME.text) + ', ' +
                  dm.textoNulo(dm.qRepEmail.text) + ', ' +
                  dm.textoNulo(dm.qRepCNPJ.text) + ', ' +
                  dm.textoNulo('123') + ', ' +
                  dm.textoStatus('0', dm.qReppermite_web.text ) + ', ' +
                  inttostr(IdEmp) + ', ' +
                  inttostr(dm.qRepID.asinteger) + ', ' +
                  pontovirgula(formatfloat('#0.00', dm.qRepComissao.AsFloat)) +
                  ', ''S'' )';

           try
              ExecSqlWeb( sql );
              sql := 'select max(id) from representante ';
              idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
              sleep(10);
              ExecSql(' update vendedor set sincronizado = ''S'', idweb = '+ inttostr(idwebs)+
                   ' where id = ' + dm.qRepID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;

        end;
        dm.qRep.Next;
      end;
  end;
  barraProgressoMenu('', false, 0, 0);


  //subir Tabela
      dm.qTabWEb.close;
      dm.qTabWeb.ParamByName('emp').Value := idEmp;
      dm.qTabWEb.Open;

      dm.qTab.close;
      dm.qTab.Open;
      while dm.qTab.Eof = false do
      begin
        barraProgressoMenu('Enviando tabelas na web:' + dm.qTabDescricao.text, true, dm.qTab.RecNo, dm.qTab.RecordCount);
        Application.ProcessMessages;

        if (dm.qTabIDWeb.AsInteger > 0) and (dm.qTabWeb.Locate('id', dm.qTabIDWeb.AsInteger, [])) then //salva
        begin
           sql := ' update tabela set '+
                  ' Descricao = ' + dm.textoNulo(dm.qTabDescricao.text) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qTabEx.text) + ', ' +
                  ' ativo = ' + dm.textoNulo(dm.qTabativo.text) +
                  ' where id = ' + inttostr(dm.qTabIDWeb.AsInteger);
           try
             ExecSqlWeb( sql );
             sleep(10);
             ExecSql('update tabela set sincronizado = ''S'' where id = ' + dm.qTabID.Text );
           except
             eErro := eErro + sql + #13+#10;
           end;

        end
        else //novo
        begin
           sql := ' insert into tabela (descricao, ex, ativo) values ( '+
                  dm.textoNulo(dm.qtabDescricao.text) + ', ' +
                  dm.textoNulo(dm.qTabEx.text) + ', ' +
                  dm.textoNulo(dm.qTabativo.text) +
                   ')';
           try
             ExecSqlWeb( sql );
             sql := 'select max(id) from tabela';
             idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
             sleep(10);
             ExecSql(' update tabela set sincronizado = ''S'', idweb = ' + inttostr(idwebs)+
                     ' where id = ' + dm.qTabID.Text );
           except
             eErro := eErro + sql + #13+#10;
           end;

           // emp_tabela
           sql := ' insert into emp_tabela (idempresa, idtabela, ex) values ( '+
                  inttostr(idemp) + ', ' + inttostr(idwebs) + ', 0 )';
           try
             ExecSqlWeb( sql );
           except
             eErro := eErro + sql + #13+#10;
           end;
        end;

        dm.qTab.Next;
      end;


      // subir quando ja inserido na web
      dm.qTab2.close;
      dm.qTab2.Open;
      while dm.qTab2.Eof = false do
      begin

        //subir tabela Itens
        dm.qTabiWEb.close;
        dm.qTabIWeb.ParamByName('idtab').Value := dm.qTab2idweb.AsInteger;  //id da tabela na web
        dm.qTabIWEb.Open;

        dm.qTabi.close;
        dm.qTabi.ParamByName('idtab').Value := dm.qTab2Id.Value;
        dm.qTabi.Open;
        while dm.qTabi.Eof = false do
        begin
            barraProgressoMenu('Enviando tabelas itens na web:' + dm.qTabIDescricao.text,true, dm.qTabi.RecNo, dm.qTabi.RecordCount);
            Application.ProcessMessages;

            if (dm.qTabiIDWeb.AsInteger > 0) and (dm.qTabiWeb.Locate('id', dm.qTabiIDWeb.AsInteger, [])) then //salva
            begin
               sql := ' update tabela_i set '+
                   ' Descricao = ' + dm.textoNulo(dm.qTabiDescricao.text) + ', ' +
                   ' referencia = ' + dm.textoNulo(dm.qTabireferencia.text) + ', ' +
                   ' codbarras = ' + dm.textoNulo(dm.qTabicodbarras.text) + ', ' +
                   ' idproduto = ' + dm.textoNulo(dm.qTabiidproduto.text) + ', ' +
                   ' preco = ' + pontovirgula(formatfloat('#0.00', dm.qTabIPreco.AsFloat)) + ', ' +
                   ' qtdeestoque = ' + pontovirgula(formatfloat('#0.000', dm.qTabIQtdeEstoque.AsFloat)) + ', ' +
                   ' pagina = ' + dm.textoNulo(dm.qTabIPagina.text) + ', ' +
                    ' ex = ' + dm.textoNulo(dm.qTabiEx.text) + ', ' +
                   ' idgrupo = ' + dm.textoNulo(dm.qTabiidgrupoweb.text) + ', ' +
                   ' qtdecaixa = ' + pontovirgula(formatfloat('#0.000', dm.qTabIQtdeCaixa.AsFloat)) +
                   ' where id = ' + inttostr(dm.qTabIIDWeb.AsInteger);
               try
                 ExecSqlWeb( sql );
                 sleep(10);
                 ExecSql('update tabela_i set sincronizado = ''S'' where id = ' + dm.qTabiID.Text );
               except
                 eErro := eErro + sql + #13+#10;
               end;

            end
            else //novo
            begin
               sql := ' insert into tabela_i (Descricao, referencia, codbarras, ' +
                      ' idproduto, preco, qtdeestoque, pagina, ex, qtdecaixa, idtabela, idgrupo ) values ( ' +
                      dm.textoNulo(dm.qTabIDescricao.text) + ', ' +
                      dm.textoNulo(dm.qTabIReferencia.text) + ', ' +
                      dm.textoNulo(dm.qTabICodBarras.text) + ', ' +
                      dm.textoNulo(dm.qTabIIdProduto.text) + ', ' +
                      pontovirgula(formatfloat('#0.00', dm.qTabIPreco.AsFloat)) + ', ' +
                      pontovirgula(formatfloat('#0.000', dm.qTabIQtdeEstoque.AsFloat)) + ', ' +
                      dm.textoNulo(dm.qTabIPagina.text) + ', ' +
                      dm.textoNulo(dm.qTabIex.text) + ', ' +
                      pontovirgula(formatfloat('#0.000', dm.qTabIQtdeCaixa.AsFloat)) + ', ' +
                      dm.textoNulo(dm.qTab2idweb.text) +  ', ' +
                      dm.textoNulo(dm.qTabIidgrupoweb.text) +
                       ')';
               try
                 ExecSqlWeb( sql );
                 sql := 'select max(id) from tabela_i';
                 idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
                 sleep(10);
                 ExecSql(' update tabela_i set sincronizado = ''S'', idweb = ' + inttostr(idwebs)+
                         ' where id = ' + dm.qTabiID.Text );
               except
                 eErro := eErro + sql + #13+#10;
               end;
            end;

            dm.qTabi.Next;
        end;

        dm.qTab2.Next;

      end;
      barraProgressoMenu('', false, 0, 0);

     //subir clientes
     dm.qCliWEb.close;
     dm.qCliWeb.ParamByName('emp').Value := idEmp;
     dm.qCliWEb.Open;

     dm.qCli.Close;
     dm.qCli.Open;
     if dm.qCli.IsEmpty = false then
     begin
       while dm.qCli.Eof = false do
       begin
         barraProgressoMenu('Enviando Clientes na web:' + dm.qCliNome.text,true, dm.qCli.RecNo, dm.qCli.RecordCount);
         Application.ProcessMessages;

         try
            idrepweb := strtoint(ConsultaIdWeb('select coalesce(id,0) id from representante where idempresa = ' +
                        inttostr(idEmp) + ' and idrep = ' + inttostr(dm.qCliidvendedor.AsInteger) ));
         except
            idrepweb := 0;
         end;
         sleep(10);
         if idrepweb > 0 then  // representante com cpf/cnpj e cliente com representante vinculado
         begin
           if (dm.qCliIDWeb.AsInteger > 0) and
              (dm.qCliWeb.Locate('id', dm.qCliIDWeb.AsInteger, [])) then //salva
           begin
               sql := ' update cliente set '+
                  ' Nome = ' + dm.textoNulo(dm.qCliNOME.text) + ', ' +
                  ' Endereco = ' + dm.textoNulo(dm.qCliEndereco.text) + ', ' +
                  ' Num = ' + dm.textoNulo(dm.qCliNum.text) + ', ' +
                  ' Bairro = ' + dm.textoNulo(dm.qCliBairro.text) + ', ' +
                  ' CEP = ' + dm.textoNulo(dm.qCliCEP.text) + ', ' +
                  ' Cidade = ' + dm.textoNulo(dm.qCliCidade.text) + ', ' +
                  ' UF = ' + dm.textoNulo(dm.qCliUF.text) + ', ' +
                  ' Email = ' + dm.textoNulo(dm.qCliEmail.text) + ', ' +
                  ' RG = ' + dm.textoNulo(dm.qClirg.text) + ', ' +
                  ' CPF = ' + dm.textoNulo(dm.qClicpf.text) + ', ' +
                  ' DtNasc = ' + dm.textoNulo(dm.qClidtnasc.text) + ', ' +
                  ' DtCadastro = ' + dm.textoNulo(dm.qClidtcadastro.text) + ', ' +
                  ' Tel1 = ' + dm.textoNulo(dm.qClitel1.text) + ', ' +
                  ' Tel2 = ' + dm.textoNulo(dm.qClitel2.text) + ', ' +
                  ' Tel3 = ' + dm.textoNulo(dm.qClitel3.text) + ', ' +
                  ' Obs = ' + dm.textoNulo(dm.qCliobs.AsString) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qCliex.text) + ', ' +
                  ' limiteCredito = ' + pontovirgula( formatfloat('#0.00', dm.qClilimiteCredito.asfloat)) + ', ' +
                  ' IdCidade = ' + dm.textoNulo(dm.qCliidcidade.text) + ', ' +
                  ' TpPessoa = ' + dm.textoNulo(dm.qClitppessoa.text) + ', ' +
                  ' Razao = ' + dm.textoNulo(dm.qClirazao.text) + ', ' +
                  ' Comple = ' + dm.textoNulo(dm.qClicomple.text) + ', ' +
                  ' End_entrega = ' + dm.textoNulo(dm.qCliEnd_entrega.text) + ', ' +
                  ' Num_entrega = ' + dm.textoNulo(dm.qCliNum_entrega.text) + ', ' +
                  ' Bairro_entrega = ' + dm.textoNulo(dm.qCliBairro_entrega.text) + ', ' +
                  ' Cep_entrega = ' + dm.textoNulo(dm.qCliCep_entrega.text) + ', ' +
                  ' idCidade_entrega = ' + dm.textoNulo(dm.qCliidCidade_entrega.text) + ', ' +
                  ' cidade_entrega = ' + dm.textoNulo(dm.qCliCidade_entrega.text) + ', ' +
                  ' uf_entrega = ' + dm.textoNulo(dm.qCliUF_entrega.text) + ', ' +
                  ' comple_entrega = ' + dm.textoNulo(dm.qCliComple_entrega.text) + ', ' +
                  ' ativo = ' + dm.textoNulo(dm.qCliativo.text) + ', ' +
                  ' pais = ' + dm.textoNulo(dm.qClipais.text) + ', ' +
                  ' pais_entrega = ' + dm.textoNulo(dm.qClipais_entrega.text) + ', ' +
                  ' contribuinte = ' + dm.textoNulo(dm.qClicontribuinte.text) + ', ' +
                  ' produtorR = ' + dm.textoNulo(dm.qCliprodutorR.text) + ', ' +
                  ' idtabela = ' + dm.textoNulo(dm.qCliidtabela.text) + ', ' +   //idweb da tabela nilton 24/10/2022
                  ' dia_fecha = ' + dm.textoNulo(dm.qClidia_fecha.text) + ', ' +
                  ' inadimplente = ' + dm.textoNulo(dm.qCliinadimplente.text) + ', ' +
                  ' idRepresentante = ' + inttostr(idrepweb) + ', ' +
                  ' sincronizado = ' + dm.textoNulo('S') + ', ' +
                  ' idlocal = ' + inttostr(dm.qCliId.AsInteger) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and id = ' + inttostr(dm.qCliidweb.AsInteger) ;

              try
                ExecSqlWeb( sql );
                sleep(10);

                ExecSql(' update cliente set sincronizado = ''S'' where id = ' + dm.qCliID.Text );
              except
                eErro := eErro + sql + #13+#10;
              end;

           end
           else //novo
           begin
              sql := ' insert into cliente ( '+
                  ' Nome, Endereco, Num, Bairro, CEP, Cidade, UF, Email, '+
                  ' RG, CPF, DtNasc, DtCadastro, Tel1, Tel2, Tel3, Obs, ex, '+
                  ' limiteCredito, IdCidade, TpPessoa, Razao, Comple, End_entrega, '+
                  ' Num_entrega, Bairro_entrega, Cep_entrega, idCidade_entrega, cidade_entrega, '+
                  ' uf_entrega, comple_entrega, ativo, pais, pais_entrega, contribuinte, '+
                  ' produtorR, idtabela, dia_fecha, inadimplente, idRepresentante, sincronizado, '+
                  ' idempresa, idlocal ) values ( '+
                  dm.textoNulo(dm.qCliNOME.text) + ', ' +
                  dm.textoNulo(dm.qCliEndereco.text) + ', ' +
                  dm.textoNulo(dm.qCliNum.text) + ', ' +
                  dm.textoNulo(dm.qCliBairro.text) + ', ' +
                  dm.textoNulo(dm.qCliCEP.text) + ', ' +
                  dm.textoNulo(dm.qCliCidade.text) + ', ' +
                  dm.textoNulo(dm.qCliUF.text) + ', ' +
                  dm.textoNulo(dm.qCliEmail.text) + ', ' +
                  dm.textoNulo(dm.qClirg.text) + ', ' +
                  dm.textoNulo(dm.qClicpf.text) + ', ' +
                  dm.textoNulo(dm.qClidtnasc.text) + ', ' +
                  dm.textoNulo(dm.qClidtcadastro.text) + ', ' +
                  dm.textoNulo(dm.qClitel1.text) + ', ' +
                  dm.textoNulo(dm.qClitel2.text) + ', ' +
                  dm.textoNulo(dm.qClitel3.text) + ', ' +
                  dm.textoNulo(dm.qCliobs.AsString) + ', ' +
                  dm.textoNulo(dm.qCliex.text) + ', ' +
                  pontovirgula( formatfloat('#0.00', dm.qClilimiteCredito.asfloat)) + ', ' +
                  dm.textoNulo(dm.qCliidcidade.text) + ', ' +
                  dm.textoNulo(dm.qClitppessoa.text) + ', ' +
                  dm.textoNulo(dm.qClirazao.text) + ', ' +
                  dm.textoNulo(dm.qClicomple.text) + ', ' +
                  dm.textoNulo(dm.qCliEnd_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliNum_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliBairro_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliCep_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliidCidade_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliCidade_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliUF_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliComple_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliativo.text) + ', ' +
                  dm.textoNulo(dm.qClipais.text) + ', ' +
                  dm.textoNulo(dm.qClipais_entrega.text) + ', ' +
                  dm.textoNulo(dm.qClicontribuinte.text) + ', ' +
                  dm.textoNulo(dm.qCliprodutorR.text) + ', ' +
                  dm.textoNulo(dm.qCliidtabela.text) + ', ' +  //idweb da tabela Nilton 24/10/2022
                  dm.textoNulo(dm.qClidia_fecha.text) + ', ' +
                  dm.textoNulo(dm.qCliinadimplente.text) + ', ' +
                  inttostr(idrepweb) + ', ' +
                  dm.textoNulo('S') + ', ' +
                  inttostr(IdEmp) + ', ' +
                  inttostr(dm.qCliid.asinteger) +
                   ')';
             try
               ExecSqlWeb( sql );
               sleep(10);

               sql := 'select max(id) from cliente';
               idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);

               ExecSql(' update cliente set sincronizado = ''S'', idweb =  ' + inttostr(idwebs) +
                     ' where id = ' + dm.qCliID.Text );
             except
               eErro := eErro + sql + #13+#10;
             end;

           end;
         end;
         dm.qCli.Next;
       end;
     end;
     barraProgressoMenu('', false, 0, 0);


   //subir Condicao Pgto tabela Cond_pgto apenas
   dm.qCondWEb.close;
   dm.qCondWEb.ParamByName('emp').Value := idEmp;
   dm.qCondWEb.Open;

   dm.qCond.Close;
   dm.qCond.Open;
   if dm.qCond.IsEmpty = false then
   begin
      while dm.qCond.Eof = false do
      begin

        barraProgressoMenu('Enviando Condição na web:' + dm.qConddescricao.text, true, dm.qCond.RecNo, dm.qCond.RecordCount);
        Application.ProcessMessages;

        if dm.qCondWEb.Locate('id', dm.qCondIDWeb.AsInteger, []) then //salva
        begin
           sql := ' update cond_pgto set '+
                  ' descricao = ' + dm.textoNulo(dm.qCondDescricao.text) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qCondEx.text) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and id = ' + dm.qCondIDweb.text;

           try
              ExecSqlWeb( sql );
              sleep(10);
              ExecSql('update cond_pgto set sincronizado = ''S'' where id = ' + dm.qCondID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end
        else //novo
        begin
           sql := ' insert into cond_pgto (descricao, ex, idempresa ) values ( '+
                  dm.textoNulo(dm.qCondDescricao.text) + ', ' +
                  dm.textoNulo(dm.qCondEx.text) + ', ' +
                  inttostr(IdEmp) + ')';
           try
              ExecSqlWeb( sql );
              sleep(10);
              sql := 'select max(id) from cond_pgto';
              idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
              sleep(10);
              ExecSql(' update cond_pgto set sincronizado = ''S'', idweb = '+ inttostr(idwebs) +
                      ' where id = ' + dm.qCondID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end;
        dm.qCond.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);


   //subir Comercializacao
   dm.qCialWEb.close;
   dm.qCialWEb.ParamByName('emp').Value := idEmp;
   dm.qCialWEb.Open;

   dm.qCial.Close;
   dm.qCial.Open;
   if dm.qCial.IsEmpty = false then
   begin
      while dm.qCial.Eof = false do
      begin

        barraProgressoMenu('Enviando Comercialização na web:' + dm.qCialdescricao.text, true, dm.qCial.RecNo, dm.qCial.RecordCount);
        Application.ProcessMessages;

        if dm.qCialWEb.Locate('id', dm.qCialIDWeb.AsInteger, []) then //salva
        begin
           sql := ' update comercial set '+
                  ' descricao = ' + dm.textoNulo(dm.qCialDescricao.text) + ', ' +
                  ' porcentagem = ' + pontovirgula( formatfloat('#0.00', dm.qCialPorcentagem.AsFloat )) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qCialEx.text) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and id = ' + dm.qCialIDweb.text;

           try
              ExecSqlWeb( sql );
              sleep(10);
              ExecSql('update comercial set sincronizado = ''S'' where id = ' + dm.qCialID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end
        else //novo
        begin
           sql := ' insert into comercial (descricao, porcentagem, ex, idempresa ) values ( '+
                  dm.textoNulo(dm.qCialDescricao.text) + ', ' +
                  pontovirgula( formatfloat('#0.00', dm.qCialPorcentagem.AsFloat )) + ', ' +
                  dm.textoNulo(dm.qCialEx.text) + ', ' +
                  inttostr(IdEmp) + ')';
           try
              ExecSqlWeb( sql );
              sleep(10);
              sql := 'select max(id) from comercial ';
              idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
              sleep(10);
              ExecSql(' update comercial set sincronizado = ''S'', idweb = '+ inttostr(idwebs) +
                      ' where id = ' + dm.qCialID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end;
        dm.qCial.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);


   // subir status venda - sem nota apenas
   dm.qVen.Close;
   dm.qVen.Open;
   if dm.qVen.IsEmpty = false then
   begin
      while dm.qVen.Eof = false do
      begin

        barraProgressoMenu('Enviando Status Pedidos na web:' + dm.qVenIdweb.text, true, dm.qVen.RecNo, dm.qVen.RecordCount);
        Application.ProcessMessages;

        sql := ' update venda set '+
               ' status = '   + dm.textoNulo(dm.qVenstatus.text) +
               ' , motivo = ' + dm.textoNulo(trim(dm.qVenmotivor.AsString)) +
               ' , pComissao = ' + PontoVirgula(formatfloat('#0.00', dm.qVenpcomissao.AsFloat )) +
               ' , linhadigitavel = ' + dm.textoNulo(trim(dm.qVenlinhadigitavel.AsString)) +
               ' , linkboleto = ' + dm.textoNulo(trim(dm.qVenlinkboleto.AsString)) +
               ' , linkDanfe = ' + dm.textoNulo(trim(dm.qVenlinkdanfe.AsString)) +
               ' where idempresa = ' + inttostr(IdEmp) +
               ' and id = ' + dm.qVenIDweb.text;
        try
            ExecSqlWeb( sql );
            sleep(10);
            ExecSql('update venda set sincronizado = ''S'' where id = ' + dm.qVenID.Text );
        except
            eErro := eErro + sql + #13+#10;
        end;
        dm.qVen.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);


   // subir valor Comissao
   dm.qComissao.Close;
   dm.qComissao.Open;
   if dm.qComissao.IsEmpty = false then
   begin
      while dm.qComissao.Eof = false do
      begin

        barraProgressoMenu('Enviando valor Comissão dos Pedidos para web:' + dm.qComissaoIdweb.text, true, dm.qComissao.RecNo, dm.qComissao.RecordCount);
        Application.ProcessMessages;

        dm.qComiV.Close;
        dm.qComiV.ParamByName('id').Value := dm.qComissaoidweb.AsInteger;
        dm.qComiV.Open;

        sql := ' update venda set '+
               ' valorComissao = ' + PontoVirgula(formatfloat('#0.00', dm.qComiVtot.AsFloat )) +
               ' , pComissao = ' + PontoVirgula(formatfloat('#0.00', dm.qComissaopcomissao.AsFloat )) +
               ' where idempresa = ' + inttostr(IdEmp) +
               ' and id = ' + dm.qComissaoIDweb.text ;
        try
            ExecSqlWeb( sql );
            sleep(10);
            ExecSql('update comi_pagar set sincronizado = ''S'' where id = ' + dm.qComissaoID.Text );
        except
            eErro := eErro + sql + #13+#10;
        end;
        dm.qComissao.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);

   // subir status financeiro
   dm.qCRec.Close;
   dm.qCRec.Open;
   if dm.qCRec.IsEmpty = false then
   begin
      while dm.qCRec.Eof = false do
      begin

        barraProgressoMenu('Enviando status e valor financeiro dos Pedidos para web:' + dm.qComissaoIdweb.text, true, dm.qComissao.RecNo, dm.qComissao.RecordCount);
        Application.ProcessMessages;

        dm.qCRec2.Close;
        dm.qCRec2.ParamByName('id').Value := dm.qCRecidweb.AsInteger;
        dm.qCRec2.Open;

        if (dm.qCRec2totAb.asfloat > 0) and (dm.qCRec2totPg.asfloat > 0)   then
        begin
           stFinan := 'Pago Parcial';
           vFinan  :=  dm.qCRec2totPg.asfloat;
        end
        else
        if (dm.qCRec2totAb.asfloat > 0.00) and (dm.qCRec2totPg.asfloat = 0.00)   then
        begin
           stFinan := 'Em Aberto';
           vFinan  :=  dm.qCRec2totAb.asfloat;
        end
        else
        if (dm.qCRec2totAb.asfloat = 0.00) and ( dm.qCRec2totPg.asfloat > 0.00 )   then
        begin
           stFinan := 'Pago';
           vFinan  :=  dm.qCRec2totpg.asfloat;
        end;

        sql := ' update venda set '+
               ' stFinan = ' + quotedstr(stFinan) +
               ' , valorFinan = ' + PontoVirgula(formatfloat('#0.00', vFinan )) +
               ' where idempresa = ' + inttostr(IdEmp) +
               ' and id = ' + dm.qCRecIDweb.text ;
        try
            ExecSqlWeb( sql );
            sleep(10);
            ExecSql('update creceber set sincronizado = ''S'' where id = ' + dm.qCRecID.Text );
        except
            eErro := eErro + sql + #13+#10;
        end;
        dm.qCRec.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);


   //subir dados da nota
   dm.qNF.Close;
   dm.qNF.Open;
   if dm.qNF.IsEmpty = false then
   begin
      while dm.qNF.Eof = false do
      begin

        barraProgressoMenu('Enviando informações Nota Fiscal e parcelas do financeiro para web:' + dm.qNFNF.text, true, dm.qNF.RecNo, dm.qNF.RecordCount);
        Application.ProcessMessages;

        sql := ' update venda set '+
               ' status = ' + quotedstr(dm.qNFstatus.Text) + //atualiza
               ' , Notafiscal = ' + quotedstr(dm.qNFID.Text) +
               ' , numero = ' + quotedstr(dm.qNFnf.Text) +
               ' , serie = ' + dm.textoNulo(dm.qNFSERIE.Text) +
               ' , emissaonota = ' + quotedstr(formatdatetime('dd/mm/yyyy', dm.qNFemissao.Value )) +
               ' , valornota = ' + PontoVirgula(formatfloat('#0.00', dm.qNFt_nf.AsFloat )) +
               ' , pComissao = ' + PontoVirgula(formatfloat('#0.00', dm.qnfpcomissao.AsFloat )) +
               ' , linhadigitavel = ' + dm.textoNulo(trim(dm.qNFlinhadigitavel.AsString)) +
               ' , linkboleto = ' + dm.textoNulo(trim(dm.qNFlinkboleto.AsString)) +
               ' , linkDanfe = ' + dm.textoNulo(trim(dm.qNFlinkdanfe.AsString)) +
               ' where idempresa = ' + inttostr(IdEmp) +
               ' and id = ' + dm.qNFIDweb.text ;
        try
            ExecSqlWeb( sql );
            sleep(10);
            ExecSql('update venda set sincronizado = ''S'' where id = ' + dm.qNFIDvenda.Text );
        except
            eErro := eErro + sql + #13+#10;
        end;

        //parcelas
        dm.qPar.Close;
        dm.qPar.ParamByName('id').Value := dm.qNFidvenda.AsInteger;
        dm.qPar.Open;
        while dm.qPar.Eof = false do
        begin
          dm.qParcWeb.close;
          dm.qParcWeb.ParamByName('id').Value := qNFidweb.AsInteger;
          dm.qParcWeb.Open;
          if dm.qParcWeb.Locate('vencimento;valor;parcela',
                                VarArrayOf([dm.qparVenci.Value, dm.qPartotal.AsFloat, dm.qPardocumento.Text]),
                                []) then
             stFinan := ' update parcelas set '+
                        ' vencimento = '  + dm.textoNulo(dm.qParVenci.text) +
                        ' , Valor = '  + PontoVirgula(formatfloat('#0.00', dm.qPartotal.AsFloat )) +
                        ' , Parcela = '  + dm.textoNulo(dm.qPardocumento.text) +
                        ' where id = ' + dm.qParcWebId.Text
          else
             stFinan := ' insert into parcelas (idvenda, vencimento, valor, parcela)  '+
                        ' values( ' + dm.qNFidweb.Text + ', ' +
                        dm.textoNulo(dm.qParVenci.text) + ', ' +
                        PontoVirgula(formatfloat('#0.00', dm.qPartotal.AsFloat )) + ', ' +
                        dm.textoNulo(dm.qPardocumento.text) + ') ';

          try
             ExecSqlWeb( stFinan );
             sleep(10);
          except
             eErro := eErro + sql + #13+#10;
          end;

          dm.qPar.Next;
        end;

        dm.qNF.Next;
      end;

   end;
   barraProgressoMenu('', false, 0, 0);


   //subir cliente condicao
   dm.qCliCondWEb.close;
   dm.qCliCondWEb.ParamByName('emp').Value := idEmp;
   dm.qCliCondWEb.Open;

   dm.qCliCond.Close;
   dm.qCliCond.Open;
   if dm.qCliCond.IsEmpty = false then
   begin
      while dm.qCliCond.Eof = false do
      begin

        idcli := strtoint(ConsultaIdLocal('select coalesce(idweb,0) idweb from cliente where id = ' +dm.qCliCondIdCliente.Text ));
        idcon := strtoint(ConsultaIdLocal('select coalesce(idweb,0) idweb from cond_pgto where id = ' +dm.qCliCondIdCond.Text ));

        barraProgressoMenu('Enviando Clientes condições na web:' + dm.qCliCondWebidcond.text, true, dm.qCliCond.RecNo, dm.qCliCond.RecordCount);
        Application.ProcessMessages;

        if dm.qCliCondWEb.Locate('id', dm.qCliCondIDWeb.AsInteger, []) then //salva
        begin
           sql := ' update cliente_cond set '+
                  ' idcliente = ' + inttostr(IdCli) + ', ' +
                  ' idcond = ' + inttostr(IdCon) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qCliCondEx.text) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and id = ' + dm.qCliCondIDweb.text;

           try
              ExecSqlWeb( sql );
              sleep(10);
              ExecSql('update cliente_cond set sincronizado = ''S'' where id = ' + dm.qCliCondID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end
        else //novo
        begin
           sql := ' insert into cliente_cond (idempresa, idcliente, idcond, ex ) values ( '+
                  inttostr(IdEmp) + ', ' +
                  inttostr(IdCli) + ', ' +
                  inttostr(IdCon) + ', ' +
                  dm.textoNulo(dm.qCliCondEx.text) + ')';
           try
              ExecSqlWeb( sql );
              sleep(10);
              sql := 'select max(id) from cliente_cond ';
              idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
              sleep(10);
              ExecSql(' update cliente_cond set sincronizado = ''S'', idweb = '+ inttostr(idwebs) +
                      ' where id = ' + dm.qCliCondID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end;
        dm.qCliCond.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);


   //subir representante_produtos
   dm.qRepW_i.close;
   dm.qRepW_i.ParamByName('emp').Value := idEmp;
   dm.qRepW_i.Open;

   dm.qRepi.Close;
   dm.qRepi.Open;
   if dm.qRepi.IsEmpty = false then
   begin
      while dm.qRepi.Eof = false do
      begin

        idcli := strtoint(ConsultaIdLocal('select coalesce(idweb,0) idweb from vendedor where id = ' +dm.qRepiIdvendedor.Text ));

        barraProgressoMenu('Enviando Rep/prod na web:' + dm.qRepiidproduto.text, true, dm.qRepi.RecNo, dm.qRepi.RecordCount);
        Application.ProcessMessages;

        if dm.qRepW_i.Locate('id', dm.qRepiIDWeb.AsInteger, []) then //salva
        begin
           sql := ' update representante_i set '+
                  ' idrep = ' + inttostr(IdCli) + ', ' +
                  ' idproduto = ' + inttostr(dm.qRepIIdProduto.asinteger) + ', ' +
                  ' idlocal = ' + inttostr(dm.qRepIId.asinteger) + ', ' +
                  ' ex = ' + inttostr(dm.qRepIEx.asinteger) + ', ' +
                  ' x = ' + dm.textoNulo(dm.qRepIx.text) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and id = ' + dm.qRepIIDweb.text;

           try
              ExecSqlWeb( sql );
              sleep(10);
              ExecSql('update vendedor_i set sincronizado = ''S'' where id = ' + dm.qRepIID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end
        else //novo
        begin
           sql := ' insert into representante_i (idempresa, idrep, idproduto, ex, idlocal, x ) values ( '+
                  inttostr(IdEmp) + ', ' +
                  inttostr(IdCli) + ', ' +
                  inttostr(dm.qRepIIdProduto.asinteger) + ', ' +
                  inttostr(dm.qRepIEx.asinteger) + ', ' +
                  inttostr(dm.qRepIID.asinteger) + ', ' +
                  dm.textoNulo(dm.qRepix.text) + ')';
           try
              ExecSqlWeb( sql );
              sleep(10);
              sql := 'select max(id) from representante_i ';
              idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
              sleep(10);
              ExecSql(' update vendedor_i set sincronizado = ''S'', idweb = '+ inttostr(idwebs) +
                      ' where id = ' + dm.qRepiID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end;
        dm.qRepi.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);



   //subir grupo
   dm.qGrupoW.close;
   dm.qGrupoW.ParamByName('emp').Value := idEmp;
   dm.qGrupoW.Open;

   dm.qGrupo.Close;
   dm.qGrupo.Open;
   if dm.qGrupo.IsEmpty = false then
   begin
      while dm.qGrupo.Eof = false do
      begin

        barraProgressoMenu('Enviando Grupo na web:' + dm.qGrupodescricao.text, true, dm.qGrupo.RecNo, dm.qGrupo.RecordCount);
        Application.ProcessMessages;

        if dm.qGrupoW.Locate('id', dm.qGrupoIDWeb.AsInteger, []) then //salva
        begin
           sql := ' update GrupoProduto set '+
                  ' descricao = ' + dm.textoNulo(dm.qGrupoDescricao.text) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qGrupoEx.text) +
                  ' where idempresa = ' + inttostr(IdEmp) +
                  ' and id = ' + dm.qGrupoIDweb.text;

           try
              ExecSqlWeb( sql );
              sleep(10);
              ExecSql('update grupo set sincronizado = ''S'' where id = ' + dm.qGrupoID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end
        else //novo
        begin
           sql := ' insert into GrupoProduto (descricao, ex, idempresa ) values ( '+
                  dm.textoNulo(dm.qGrupoDescricao.text) + ', ' +
                  dm.textoNulo(dm.qGrupoEx.text) + ', ' +
                  inttostr(IdEmp) + ')';
           try
              ExecSqlWeb( sql );
              sleep(10);
              sql := 'select max(id) from grupoProduto ';
              idwebs := StrToIntDef(DM.ConsultaIdWEb(Sql), 0);
              sleep(10);
              ExecSql(' update grupo set sincronizado = ''S'', idweb = '+ inttostr(idwebs) +
                      ' where id = ' + dm.qGrupoID.Text );
           except
              eErro := eErro + sql + #13+#10;
           end;
        end;
        dm.qGrupo.Next;
      end;
   end;
   barraProgressoMenu('', false, 0, 0);



   Result := eErro;


end;


function TDM.DescerDadosWeb:string;
var
  sql, eErro :String;
  idEmp, idwebs, idcli, idcon, idvend, idtab, idcial, idpadrao, idrep :integer;
  pComis:real;

begin

     idEmp := dm.qParametroidweb.AsInteger;

     //descer clientes
     dm.qClidesce.Close;
     dm.qClidesce.Open;

     dm.qCliDesceW.close;
     dm.qCliDesceW.ParamByName('emp').Value := idEmp;
     dm.qCliDesceW.Open;
     if dm.qCliDesceW.IsEmpty = false then
     begin
       while dm.qCliDesceW.Eof = false do
       begin

         idrep    := BuscarIdLocal('vendedor', dm.qCliDesceWIdrepresentante.AsInteger );

         idTab    := BuscarIdLocal('tabela', dm.qCliDesceWIdTabela.AsInteger );

         barraProgressoMenu('Baixando Clientes no local:' + dm.qCliDesceWNome.text,true, dm.qCliDesceW.RecNo, dm.qCliDesceW.RecordCount);
         Application.ProcessMessages;
         if (dm.qCliDesce.Locate('idweb', dm.qCliDesceWId.AsInteger, [])) then //salva
               sql := ' update cliente set '+
                  ' Nome = ' + dm.textoNulo(dm.qCliDesceWNOME.text) + ', ' +
                  ' Endereco = ' + dm.textoNulo(dm.qCliDesceWEndereco.text) + ', ' +
                  ' Num = ' + dm.textoNulo(dm.qCliDesceWNum.text) + ', ' +
                  ' Bairro = ' + dm.textoNulo(dm.qCliDesceWBairro.text) + ', ' +
                  ' CEP = ' + dm.textoNulo(dm.qCliDesceWCEP.text) + ', ' +
                  ' Cidade = ' + dm.textoNulo(dm.qCliDesceWCidade.text) + ', ' +
                  ' UF = ' + dm.textoNulo(dm.qCliDesceWUF.text) + ', ' +
                  ' Email = ' + dm.textoNulo(dm.qCliDesceWEmail.text) + ', ' +
                  ' RG = ' + dm.textoNulo(dm.qCliDesceWrg.text) + ', ' +
                  ' CPF = ' + dm.textoNulo(dm.qCliDesceWcpf.text) + ', ' +
                  ' DtNasc = ' + dm.textoNulo(dm.qCliDesceWdtnasc.text) + ', ' +
                  ' DtCadastro = ' + dm.textoNulo(dm.qCliDesceWdtcadastro.text) + ', ' +
                  ' Tel1 = ' + dm.textoNulo(dm.qCliDesceWtel1.text) + ', ' +
                  ' Tel2 = ' + dm.textoNulo(dm.qCliDesceWtel2.text) + ', ' +
                  ' Tel3 = ' + dm.textoNulo(dm.qCliDesceWtel3.text) + ', ' +
                  ' Obs = ' + dm.textoNulo(dm.qCliDesceWobs.AsString) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qCliDesceWex.text) + ', ' +
                  ' limiteCredito = ' + pontovirgula( formatfloat('#0.00', dm.qCliDesceWlimiteCredito.AsFloat )) + ', ' +
                  ' IdCidade = ' + dm.textoNulo(dm.qCliDesceWidcidade.text) + ', ' +
                  ' TpPessoa = ' + dm.textoNulo(dm.qCliDesceWtppessoa.text) + ', ' +
                  ' Razao = ' + dm.textoNulo(dm.qCliDesceWrazao.text) + ', ' +
                  ' Comple = ' + dm.textoNulo(dm.qCliDesceWcomple.text) + ', ' +
                  ' End_entrega = ' + dm.textoNulo(dm.qCliDesceWEnd_entrega.text) + ', ' +
                  ' Num_entrega = ' + dm.textoNulo(dm.qCliDesceWNum_entrega.text) + ', ' +
                  ' Bairro_entrega = ' + dm.textoNulo(dm.qCliDesceWBairro_entrega.text) + ', ' +
                  ' Cep_entrega = ' + dm.textoNulo(dm.qCliDesceWCep_entrega.text) + ', ' +
                  ' idCidade_entrega = ' + dm.textoNulo(dm.qCliDesceWidCidade_entrega.text) + ', ' +
                  ' cidade_entrega = ' + dm.textoNulo(dm.qCliDesceWCidade_entrega.text) + ', ' +
                  ' uf_entrega = ' + dm.textoNulo(dm.qCliDesceWUF_entrega.text) + ', ' +
                  ' comple_entrega = ' + dm.textoNulo(dm.qCliDesceWComple_entrega.text) + ', ' +
                  ' ativo = ' + dm.textoNulo(dm.qCliDesceWativo.text) + ', ' +
                  ' pais = ' + dm.textoNulo(dm.qCliDesceWpais.text) + ', ' +
                  ' pais_entrega = ' + dm.textoNulo(dm.qCliDesceWpais_entrega.text) + ', ' +
                  ' contribuinte = ' + dm.textoNulo(dm.qCliDesceWcontribuinte.text) + ', ' +
                  ' produtorR = ' + dm.textoNulo(dm.qCliDesceWprodutorR.text) + ', ' +
                  //' idtabela = ' + dm.textoNulo(dm.qCliDesceWidtabela.text) + ', ' +
                  ' idtabela = ' + InttoStr(idTab) + ', ' + //Id da tabela local Nilton 24/10/2022
                  ' dia_fecha = ' + dm.textoNulo(dm.qCliDesceWdia_fecha.text) + ', ' +
                  ' inadimplente = ' + dm.textoNulo(dm.qCliDesceWinadimplente.text) + ', ' +
                  ' idvendedor = ' + inttostr(idRep) + ', ' +
                  ' sincronizado = ' + dm.textoNulo('S') +
                  ' where idweb = ' + inttostr(dm.qCliDesceWid.AsInteger)
         else
         if (dm.qCliDesce.Locate('cpf', trim(dm.qCliDesceWcpf.asString), [])) and (trim(dm.qCliDesceWcpf.asString) <> '')  //salva pelo CNPJ/CPF. Se achar, o mesmo cpf/cnpj no local atualiza com o idweb
             and not (dm.qCliDesceidweb.AsInteger > 0) then //Se o cliente local também não tiver idweb
              sql := ' update cliente set '+
                  ' Nome = ' + dm.textoNulo(dm.qCliDesceWNOME.text) + ', ' +
                  ' Endereco = ' + dm.textoNulo(dm.qCliDesceWEndereco.text) + ', ' +
                  ' Num = ' + dm.textoNulo(dm.qCliDesceWNum.text) + ', ' +
                  ' Bairro = ' + dm.textoNulo(dm.qCliDesceWBairro.text) + ', ' +
                  ' CEP = ' + dm.textoNulo(dm.qCliDesceWCEP.text) + ', ' +
                  ' Cidade = ' + dm.textoNulo(dm.qCliDesceWCidade.text) + ', ' +
                  ' UF = ' + dm.textoNulo(dm.qCliDesceWUF.text) + ', ' +
                  ' Email = ' + dm.textoNulo(dm.qCliDesceWEmail.text) + ', ' +
                  ' RG = ' + dm.textoNulo(dm.qCliDesceWrg.text) + ', ' +
                  ' CPF = ' + dm.textoNulo(dm.qCliDesceWcpf.text) + ', ' +
                  ' DtNasc = ' + dm.textoNulo(dm.qCliDesceWdtnasc.text) + ', ' +
                  ' DtCadastro = ' + dm.textoNulo(dm.qCliDesceWdtcadastro.text) + ', ' +
                  ' Tel1 = ' + dm.textoNulo(dm.qCliDesceWtel1.text) + ', ' +
                  ' Tel2 = ' + dm.textoNulo(dm.qCliDesceWtel2.text) + ', ' +
                  ' Tel3 = ' + dm.textoNulo(dm.qCliDesceWtel3.text) + ', ' +
                  ' Obs = ' + dm.textoNulo(dm.qCliDesceWobs.AsString) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qCliDesceWex.text) + ', ' +
                  ' limiteCredito = ' + pontovirgula( formatfloat('#0.00', dm.qCliDesceWlimiteCredito.AsFloat )) + ', ' +
                  ' IdCidade = ' + dm.textoNulo(dm.qCliDesceWidcidade.text) + ', ' +
                  ' TpPessoa = ' + dm.textoNulo(dm.qCliDesceWtppessoa.text) + ', ' +
                  ' Razao = ' + dm.textoNulo(dm.qCliDesceWrazao.text) + ', ' +
                  ' Comple = ' + dm.textoNulo(dm.qCliDesceWcomple.text) + ', ' +
                  ' End_entrega = ' + dm.textoNulo(dm.qCliDesceWEnd_entrega.text) + ', ' +
                  ' Num_entrega = ' + dm.textoNulo(dm.qCliDesceWNum_entrega.text) + ', ' +
                  ' Bairro_entrega = ' + dm.textoNulo(dm.qCliDesceWBairro_entrega.text) + ', ' +
                  ' Cep_entrega = ' + dm.textoNulo(dm.qCliDesceWCep_entrega.text) + ', ' +
                  ' idCidade_entrega = ' + dm.textoNulo(dm.qCliDesceWidCidade_entrega.text) + ', ' +
                  ' cidade_entrega = ' + dm.textoNulo(dm.qCliDesceWCidade_entrega.text) + ', ' +
                  ' uf_entrega = ' + dm.textoNulo(dm.qCliDesceWUF_entrega.text) + ', ' +
                  ' comple_entrega = ' + dm.textoNulo(dm.qCliDesceWComple_entrega.text) + ', ' +
                  ' ativo = ' + dm.textoNulo(dm.qCliDesceWativo.text) + ', ' +
                  ' pais = ' + dm.textoNulo(dm.qCliDesceWpais.text) + ', ' +
                  ' pais_entrega = ' + dm.textoNulo(dm.qCliDesceWpais_entrega.text) + ', ' +
                  ' contribuinte = ' + dm.textoNulo(dm.qCliDesceWcontribuinte.text) + ', ' +
                  ' produtorR = ' + dm.textoNulo(dm.qCliDesceWprodutorR.text) + ', ' +
                  //' idtabela = ' + dm.textoNulo(dm.qCliDesceWidtabela.text) + ', ' +
                  ' idtabela = ' + InttoStr(idTab) + ', ' + //Id da tabela local Nilton 24/10/2022
                  ' dia_fecha = ' + dm.textoNulo(dm.qCliDesceWdia_fecha.text) + ', ' +
                  ' inadimplente = ' + dm.textoNulo(dm.qCliDesceWinadimplente.text) + ', ' +
                  ' idvendedor = ' + inttostr(idRep) + ', ' +
                  ' sincronizado = ' + dm.textoNulo('S') + ', '+
                  ' idweb = '  + dm.textoNulo(dm.qCliDesceWid.text) +
                  ' where id = ' + inttostr(dm.qCliDesceId.AsInteger)

         else //novo
            sql := ' insert into cliente ( id, '+
                  ' Nome, Endereco, Num, Bairro, CEP, Cidade, UF, Email, '+
                  ' RG, CPF, DtNasc, DtCadastro, Tel1, Tel2, Tel3, Obs, ex, '+
                  ' limiteCredito, IdCidade, TpPessoa, Razao, Comple, End_entrega, '+
                  ' Num_entrega, Bairro_entrega, Cep_entrega, idCidade_entrega, cidade_entrega, '+
                  ' uf_entrega, comple_entrega, ativo, pais, pais_entrega, contribuinte, '+
                  ' produtorR, idtabela, dia_fecha, inadimplente, idvendedor, sincronizado '+
                  ' , idweb ) values ( '+
                  inttostr( InsereCodigo('cliente', 'id')) + ', ' +
                  dm.textoNulo(uppercase(dm.qCliDesceWNOME.text)) + ', ' +
                  dm.textoNulo(uppercase(dm.qCliDesceWEndereco.text)) + ', ' +
                  dm.textoNulo(dm.qCliDesceWNum.text) + ', ' +
                  dm.textoNulo(uppercase(dm.qCliDesceWBairro.text)) + ', ' +
                  dm.textoNulo(dm.qCliDesceWCEP.text) + ', ' +
                  dm.textoNulo(uppercase(dm.qCliDesceWCidade.text)) + ', ' +
                  dm.textoNulo(dm.qCliDesceWUF.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWEmail.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWrg.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWcpf.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWdtnasc.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWdtcadastro.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWtel1.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWtel2.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWtel3.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWobs.AsString) + ', ' +
                  dm.textoNulo(dm.qCliDesceWex.text) + ', ' +
                  pontovirgula( formatfloat('#0.00', dm.qCliDesceWlimiteCredito.AsFloat )) + ', ' +
                  dm.textoNulo(dm.qCliDesceWidcidade.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWtppessoa.text) + ', ' +
                  dm.textoNulo(uppercase(dm.qCliDesceWrazao.text)) + ', ' +
                  dm.textoNulo(dm.qCliDesceWcomple.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWEnd_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWNum_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWBairro_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWCep_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWidCidade_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWCidade_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWUF_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWComple_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWativo.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWpais.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWpais_entrega.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWcontribuinte.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWprodutorR.text) + ', ' +
                  //dm.textoNulo(dm.qCliDesceWidtabela.text) + ', ' +
                  InttoStr(idTab) + ', ' + //Id da tabela local Nilton 24/10/2022
                  dm.textoNulo(dm.qCliDesceWdia_fecha.text) + ', ' +
                  dm.textoNulo(dm.qCliDesceWinadimplente.text) + ', ' +
                  inttostr(idRep) + ', ' +
                  dm.textoNulo('S') + ', ' +
                  dm.textoNulo(dm.qCliDesceWid.text) + ')';
         try
            ExecSql( sql );
            sleep(10);
            ExecSqlweb(' update cliente set sincronizado = ''S'' '+
                       ' where id = ' + dm.qCliDesceWID.Text );
         except
            eErro := eErro + sql + #13+#10;
         end;
         dm.qCliDesceW.Next;
       end;
     end;
     barraProgressoMenu('', false, 0, 0);



   // descer Pedidos
   dm.qVenda.Close;
   dm.qVenda.Open;

   dm.qVendaWeb.close;
   dm.qVendaWeb.ParamByName('emp').Value := idEmp;
   dm.qVendaWeb.Open;
   if dm.qVendaWeb.IsEmpty = false then
   begin
       while dm.qVendaWeb.Eof = false do
       begin

         idCli    := BuscarIdLocal('cliente', dm.qVendaWebIdCliente.AsInteger );
         idCon    := BuscarIdLocal('cond_pgto', dm.qVendaWebIdCondPgto.AsInteger );
         idTab    := BuscarIdLocal('tabela', dm.qVendaWebIdTabela.AsInteger );
         idCial   := BuscarIdLocal('comercial', dm.qVendaWebIdComercial.AsInteger );
         idpadrao := BuscarEmpPadrao;

         //busca comissao
         if dm.qVendaWebpComissao.asfloat > 0 then
            pComis := dm.qVendaWebpComissao.asfloat
         else
         begin
            dm.qPesq.Close;
            dm.qPesq.SQL.Clear;
            dm.qPesq.SQL.Add('select coalesce(comissao,0) pcomi from vendedor where id = ' + dm.qVendaWebidrep_local.Text );
            dm.qPesq.Open;
            pComis := dm.qPesq.FieldByName('pcomi').AsFloat;
         end;

         barraProgressoMenu('Baixando Pedidos no local:' + dm.qVendaWebNome.text,true, dm.qVendaWeb.RecNo, dm.qVendaWeb.RecordCount);
         Application.ProcessMessages;
         if (dm.qVenda.Locate('idweb', dm.qVendaWebId.AsInteger, [])) then //salva
               sql := ' update venda set '+
                  ' data = ' + dm.textoNulo(formatdatetime('dd/mm/yyyy', dm.qVendaWebData.AsDateTime)) + ', ' +
                  ' idvendedor = ' + dm.textoNulo(dm.qVendaWebidrep_local.text) + ', ' +
                  ' idcliente = ' + inttostr(idcli) + ', ' +
                  ' idcondpgto = ' + inttostr(idcon) + ', ' +
                  ' valor = ' + pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebValor.asfloat)) + ', ' +
                  ' desconto = ' + pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebDesconto.asfloat)) + ', ' +
                  ' total = ' + pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebTotal.asfloat)) + ', ' +
                  ' prazoentrega = ' + dm.textoNulo(dm.qVendaWebPrazoEntrega.text) + ', ' +
                  ' notafiscal = ' + dm.textoNulo(dm.qVendaWebNotaFiscal.text) + ', ' +
                  ' idusuario = ' + dm.textoNulo(dm.qUserId.text) + ', ' + //user local
                  ' x = ' + dm.textoNulo(dm.qVendaWebx.text) + ', ' +
                  ' ex = ' + dm.textoNulo(dm.qVendaWebEx.text) + ', ' +
                  ' expedido = ' + dm.textoNulo(dm.qVendaWebExpedido.text) + ', ' +
                  ' geradonfe = ' + dm.textoNulo(dm.qVendaWebGeradoNFe.text) + ', ' +
                  ' pcomissao = ' + pontoVirgula(formatfloat('#0.00', pComis)) + ', ' +
                  ' Obs = ' + dm.textoNulo(dm.qVendaWebObs.AsString) + ', ' +
                  ' boleto = ' + dm.textoNulo(dm.qVendaWebboleto.text) + ', ' +
                  ' pacote = ' + dm.textoNulo(dm.qVendaWebpacote.text) + ', ' +
                  ' totcubagem = ' + pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebtotcubagem.asfloat)) + ', ' +
                  ' desc_especial = ' + pontoVirgula(formatfloat('#0.00', dm.qVendaWebdesc_especial.asfloat)) + ', ' +
                  ' idtabela = ' + inttostr(idtab) + ', ' +
                  ' status = ''D'' , ' +
                  ' sincronizado = ' + dm.textoNulo('S') + ', ' +
                  ' idcomercial = ' + inttostr(idCial) + ' , ' +
                  ' idemp = ' + inttostr(idPadrao) + ', ' +
                  ' transp_vendedor = ' + dm.textoNulo(dm.qVendaWebTransportadora.Text) + ', ' +
                  ' tipoFrete = ' + dm.textoNulo(dm.qVendaWebTipoFrete.Text) +  ', ' +
                  ' teltransp = ' + dm.textoNulo(dm.qVendaWebTelTransportadora.Text) +
                  ' where idweb = ' + inttostr(dm.qVendaWebid.AsInteger)

         else //novo
         begin
            idwebs := InsereCodigo('venda', 'id');
            sql := ' insert into venda (id, '+
                   ' data, idvendedor, idcliente, idcondpgto, valor, desconto, total, '+
                   ' prazoentrega, notafiscal, idusuario, x, ex, expedido, geradonfe, '+
                   ' pcomissao, Obs, boleto, pacote, totcubagem, desc_especial, idtabela, '+
                   ' status, sincronizado, idweb, idcomercial, idemp, transp_vendedor, '+
                   ' tipofrete, teltransp ) values ( '+
                   inttostr(idwebs) + ', ' +
                   dm.textoNulo(formatdatetime('dd/mm/yyyy', dm.qVendaWebData.AsDateTime)) + ', ' +
                   dm.textoNulo(dm.qVendaWebidrep_local.text) + ', ' +
                   inttostr(idcli) + ', ' +
                   inttostr(idcon) + ', ' +
                   pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebValor.asfloat )) + ', ' +
                   pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebDesconto.asfloat)) + ', ' +
                   pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebTotal.asfloat)) + ', ' +
                   dm.textoNulo(dm.qVendaWebPrazoEntrega.text) + ', ' +
                   dm.textoNulo(dm.qVendaWebNotaFiscal.text) + ', ' +
                   dm.textoNulo(dm.qUserId.text) + ', ' + //user local
                   dm.textoNulo(dm.qVendaWebx.text) + ', ' +
                   dm.textoNulo(dm.qVendaWebEx.text) + ', ' +
                   dm.textoNulo(dm.qVendaWebExpedido.text) + ', ' +
                   dm.textoNulo(dm.qVendaWebGeradoNFe.text) + ', ' +
                   pontoVirgula(formatfloat('#0.00', pComis)) + ', ' +
                   dm.textoNulo(dm.qVendaWebObs.AsString) + ', ' +
                   dm.textoNulo(dm.qVendaWebboleto.text) + ', ' +
                   dm.textoNulo(dm.qVendaWebpacote.text) + ', ' +
                   pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebtotcubagem.asfloat)) + ', ' +
                   pontoVirgula(formatfloat('#0.0000000', dm.qVendaWebdesc_especial.asfloat)) + ', ' +
                   inttostr(idtab) + ', ' +
                   ' ''D'', ' +
                   dm.textoNulo('S') + ', ' +
                   dm.textoNulo(dm.qVendaWebId.text) + ', ' +
                   inttostr(idCial) + ', ' +
                   inttostr(idpadrao) + ', '+
                   dm.textoNulo(dm.qVendaWebTransportadora.AsString) + ', ' +
                   dm.textoNulo(dm.qVendaWebTipoFrete.AsString) + ', ' +
                   dm.textoNulo(dm.qVendaWebTelTransportadora.Text) +
                   ') ' ;
         end;

            try
               ExecSql( sql );
               sleep(10);
            except
               eErro := eErro + sql + #13+#10;
            end;

            // descer Itens do Pedido
            dm.qItensWeb.close;
            dm.qItensWeb.ParamByName('idv').Value := dm.qVendaWebId.value;
            dm.qItensWeb.Open;
            if dm.qItensWeb.IsEmpty = false then
            begin

              while dm.qItensWeb.Eof = false do
              begin
                idvend:= BuscarIdLocal('venda', dm.qItensWebIdVenda.AsInteger );
                dm.qItens.Close;
                dm.qItens.ParamByName('idv').Value := idvend;
                dm.qItens.Open;

                barraProgressoMenu('Baixando Itens de Pedidos no local:' + dm.qItensWebdescricao.text,true, dm.qItensWeb.RecNo, dm.qItensWeb.RecordCount);
                Application.ProcessMessages;

                if (dm.qItens.Locate('idweb', dm.qItensWebId.AsInteger, [])) then //salva
                begin
                   idwebs := dm.qItensId.AsInteger;
                   sql := ' update venda_i set '+
                          ' idvenda = ' + inttostr(idvend) + ', ' +
                          ' idproduto = ' + dm.textoNulo(dm.qItensWebIdProduto.text) + ', ' +
                          ' tipo = ' + dm.textoNulo(dm.qItensWebTipo.text) + ', ' +
                          ' qtd = ' + pontoVirgula(formatfloat('#0.0000000', DM.qItensWebQtd_Itens.AsFloat)) + ', ' + //TODO: Adicionar na query.
                          ' unit = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebUnit.asfloat)) + ', ' +
                          ' desconto = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebDesconto.asfloat)) + ', ' +
                          ' total = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebTotal.asfloat)) + ', ' +
                          ' x = ' + dm.textoNulo(dm.qItensWebx.text) + ', ' +
                          ' royalties = ' + dm.textoNulo(dm.qItensWebRoyalties.text) + ', ' +
                          ' unit2 = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebunit2.asfloat)) + ', ' +
                          ' unitst = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebunitst.asfloat)) + ', ' +
                          ' pcomissao = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebpComissao.asfloat)) + ', ' +
                          ' ordemcompra = ' + dm.textoNulo(dm.qItensordemcompra.text) + ', ' +
                          ' cubagem = ' + pontoVirgula(formatfloat('#0.0000000', BuscarCubagem(dm.qItensWebIdProduto.AsInteger) * dm.qItensWebqtd_cx.asfloat)) + ', ' +
                          ' qtd_cx = ' + pontoVirgula(formatfloat('#0.0000000', dm.qItensWebqtd_cx.asfloat)) + ', ' +
                          ' multiplo = '+ pontoVirgula(formatfloat('#0.0000000', DM.qItensWebQtd.AsFloat)) + ', ' + {dm.qItensWebqtd.asfloat / dm.qItensWebqtd_cx.asfloat}
                          ' sincronizado = ''S'' ' +
                          ' where idweb = ' + inttostr(dm.qItensWebId.AsInteger);
                end
                else //novo
                begin
                   idwebs := InsereCodigo('venda_i', 'Id');
                   sql := ' insert into venda_i (id, idvenda, idproduto, tipo, qtd, unit, desconto, total, '+
                          ' x, royalties, unit2, unitst, pcomissao, ordemcompra, cubagem, qtd_cx, multiplo, '+
                          ' sincronizado, idweb ) values ( ' +
                          inttostr(idwebs) + ', ' +
                          inttostr(idvend) + ', ' +
                          dm.textoNulo(dm.qItensWebIdProduto.text) + ', ' +
                          dm.textoNulo(dm.qItensWebTipo.text) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', DM.qItensWebQtd_Itens.AsFloat)) + ', ' + //TODO: Adicionar na query.
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebUnit.asfloat)) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebDesconto.asfloat)) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebTotal.asfloat)) + ', ' +
                          dm.textoNulo(dm.qItensWebx.text) + ', ' +
                          dm.textoNulo(dm.qItensWebRoyalties.text) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebunit2.asfloat)) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebunitst.asfloat)) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebpComissao.asfloat)) + ', ' +
                          dm.textoNulo(dm.qItensordemcompra.text) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', BuscarCubagem(dm.qItensWebIdProduto.AsInteger) * dm.qItensWebqtd_cx.asfloat)) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', dm.qItensWebqtd_cx.asfloat)) + ', ' +
                          pontoVirgula(formatfloat('#0.0000000', DM.qItensWebQtd.AsFloat)) + ', ' + {dm.qItensWebqtd.asfloat / dm.qItensWebqtd_cx.asfloat}
                          ' ''S'' , '+
                          dm.textoNulo(dm.qItensWebId.text) +' )';
                end;

                try
                   ExecSql( sql );
                   sleep(10);
                except
                   eErro := eErro + sql + #13+#10;
                end;

                //ajusta campos novos
                dm.qIt.Close;
                dm.qIt.ParamByName('id').Value := dm.qItensWebIdProduto.AsInteger;
                dm.qIt.Open;
                Execsql('update venda_i set vCusto = ' + PontoVirgula(formatfloat('#0.00', qItcustofinal.AsFloat )) +
                        ', vmargem = ' + PontoVirgula(formatfloat('#0.00', qItmargem.AsFloat )) +
                        ', vUnitLiq = Unit, vTotLiq = total '+
                        ' where id = ' +  inttostr(idwebs) );
                sleep(100);

                dm.qItensWeb.Next;

              end;

              //ajusta cubagem
              dm.qPesq.Close;
              dm.qPesq.SQL.Clear;
              dm.qPesq.SQL.Add('select sum(coalesce(cubagem,0.0000000)) cub from venda_i where idvenda = ' + inttostr(idvend) );
              dm.qPesq.Open;
              Execsql(' update venda set totcubagem = ' + PontoVirgula(formatfloat('#0.0000000', dm.qPesq.FieldByName('cub').AsCurrency )) +
                      ' where id = ' +  inttostr(idvend) );
              //Ajusta Qtd Disponivel Nilton 21/10/2022
              dm.qPesq.Close;
              dm.qPesq.SQL.Clear;
              dm.qPesq.SQL.add('select idproduto from venda_i where idvenda = '+inttoStr(idvend));
              dm.qPesq.Open;
              while dm.qPesq.Eof = false do
              begin
                AtualizaQtdDisponivel(dm.qPesq.FieldByName('idproduto').asInteger);
                dm.qPesq.Next;
              end;

            end;
            barraProgressoMenu('', false, 0, 0);

            //venda web
            ExecSqlweb(' update venda set status = ''R'' '+  //R - recebido
                       ' where id = ' + dm.qVendaWebID.Text );

            { 27/02/2020 pedido para mudar na expedicao
            //financeiro venda
            FinanceiroPorc(idvend);
            sleep(100);
            }

         dm.qVendaWeb.Next;
       end;
   end;
   barraProgressoMenu('', false, 0, 0);

   Result := eErro;

end;



procedure FINANCEIROPorc(cod:integer);
var
  i, nPar, qtDesc : integer;
  tot, totipi, fre, des, resto, parcela, jaPago, totgeral, qtDescNF : real;
  dataOld, venci : TDate;
  temDesc : String;

begin

   dm.T.Close;
   dm.T.ParamByName('ID').Value := Cod;
   dm.T.Open;

   dm.L.Close;
   dm.L.ParamByName('ID').Value := Cod;
   dm.L.Open;

   dm.qC_i.close;
   dm.qC_i.ParamByName('id').value := dm.TIdCondPgto.Value;
   dm.qC_i.open;


   dm.qCia.close;
   dm.qCia.ParamByName('id').value := dm.Tidcomercial.Value;
   dm.qCia.open;

   // if dm.TData.Value < date then
   //   dataOld := dm.TData.value
   //else
      dataOld := Date;

   dm.qpesq.close;
   dm.qpesq.SQL.Clear;
   dm.qpesq.SQL.Add(' select coalesce(valpago,0) val from creceber '+
                    ' where ex = 0 and  tipo = ''V'' and '+
                    ' baixa = ''S'' and idvenda = ' + dm.TId.Text );
   dm.qPesq.Open;
   jaPago := dm.qpesq.FieldByName('val').AsFloat;

   Execsql('update creceber set ex = 1 where tipo = ''V'' and baixa = ''N'' and idvenda = ' + dm.TId.Text );

   tot     := dm.TTotal.Value - jaPago;
   if (dm.Tidcomercial.AsInteger > 0) and (dm.qCiaPorcentagem.AsFloat = 100) then
      temDesc := 'X'
   else
   if (dm.Tidcomercial.AsInteger > 0) and (dm.qCiaPorcentagem.AsFloat > 0)  and (dm.qCiaPorcentagem.AsFloat <= 100 ) then
      temDesc := 'S'
   else
      temDesc := 'N';

   totGeral := tot;
   totipi := 0;

   // parc sem nf
   if (temDesc = 'S') then
   begin
      if dm.qCiatipo.Text = 'V' then
      begin
         if (dm.qCiaPorcentagem.AsFloat > 0)  and (dm.qCiaPorcentagem.AsFloat < 100 ) then
            tot := (totGeral * (100-dm.qCiaPorcentagem.AsFloat) / 100 )
         else
            tot := totGeral;
      end
      else
      begin
        tot := 0;
        totGeral := totGeral + dm.TDesconto.AsFloat - dm.Tv_adicional.AsFloat; // volta o desconto
        if (dm.qCiaPorcentagem.AsFloat > 0)  and (dm.qCiaPorcentagem.AsFloat < 100 ) then
         begin
            des := (dm.TDesconto.AsFloat * (100-dm.qCiaPorcentagem.AsFloat) / 100);
            fre := (dm.Tv_adicional.AsFloat * (100-dm.qCiaPorcentagem.AsFloat) / 100);
         end;

        dm.L.First;
        while dm.L.Eof = false do
        begin
          if (dm.qCiaPorcentagem.AsFloat > 0)  and (dm.qCiaPorcentagem.AsFloat < 100 ) then
              qtDesc := trunc(dm.Lqtd.Value * (100-dm.qCiaPorcentagem.AsFloat) / 100 )
          else
              qtDesc := trunc(dm.Lqtd.Value);

          tot    := tot  + (dm.LUnit.AsFloat * qtDesc) ;// + (DM.Lvalipi.AsFloat * (100-dm.qCiaPorcentagem.AsFloat) / 100);  //  DM.Lvalipi.AsFloat;

          totipi := totipi + DM.Lvalipi.AsFloat;

          dm.L.next;
        end;
        tot := tot - des + fre;
        totGeral := totGeral - tot;
      end;
   end;

   if temDesc <> 'X' then   //quando for menor que 100 ou 0
   begin

     nPar    := dm.qC_I.RecordCount;
     if nPar = 0 then
        nPar := 1;

     dm.CRec.Open;
     resto   := 0;
     dm.qC_i.first;

     for I := 1 to nPar do
     begin
      parcela := tot * dm.qC_iPorc.asfloat / 100;
      venci   := dataOld + dm.qC_idias.AsInteger;

      dm.CRec.Insert;
      dm.CRecDOCUMENTO.Value  := IntToStr(dm.Tid.Value)+'.'+IntToStr(I)+'/'+IntToStr(nPar);
      dm.CRecnParc.AsInteger := I;
      dm.CRecIdVenda.Value    := dm.TId.Value;
      dm.CRecIdCLIENTE.Value  := dm.TIdCliente.Value;
      dm.CRecEMISSAO.Value    := dataOld;
      dm.CRecidcondpgto.Value := dm.TIdCondPgto.Value;
      if I = nPar then
         dm.CRecVALOR.Value      := RoundABNT(tot - resto, 2)    //Adicionado roudnto Nilton 07/12/2022
       else
         dm.CRecVALOR.Value      := roundto(parcela, -2);
      dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
      dm.CRecVENCI.Value      := venci;
      dm.CRecBAIXA.Value      := 'N';
      dm.CRecTIPO.Value       := 'V';
      dm.CRecEX.Value         := 0;
      dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
      if (trim(dm.Tboleto.Value) = 'S') then
         dm.CRecgerado_boleto.Value  := 'T';  // ls malhas
      dm.CRecidemp.Value      := 1; // matriz
      dm.CRecFpgto1.Value     := trim(dm.Tforma_pgto.Value);
      dm.CRecFpgto2.Value     := trim(dm.Tfoma_pgto2.Value);
      dm.CRec.Post;

      resto := resto + roundto(parcela, -2);
      dm.qC_i.next;
     end;
   end;

   // parc com nf
   if (temDesc = 'S') or (temDesc = 'X') then   //quando for menor que 100 ou igual a 100
   begin

      if (dm.qParametropd_duas_cond.Text = 'S') and
         (dm.TIdCondPgto2.asinteger > 0)        and
         (dm.Tidemp.asinteger > 1)              then
      begin
        dm.qC_i.close;
        dm.qC_i.ParamByName('id').value := dm.TIdCondPgto2.Value;
        dm.qC_i.open;
      end;

      if dm.qCiatipo.Text = 'V' then
         tot := (totGeral * dm.qCiaPorcentagem.AsFloat / 100 )
      else
      begin
        tot := 0;
        des := (dm.TDesconto.AsFloat * dm.qCiaPorcentagem.AsFloat / 100);
        fre := (dm.Tv_adicional.AsFloat * dm.qCiaPorcentagem.AsFloat / 100);

        dm.L.First;
        while dm.L.Eof = false do
        begin
          qtDescNF := (dm.Lqtd.Value * dm.qCiaPorcentagem.AsFloat / 100 );
          qtDesc   :=  trunc(dm.Lqtd.Value * dm.qCiaPorcentagem.AsFloat / 100 );
          if (qtDescNF - qtDesc) > 0 then
             qtDesc := qtDesc + 1;

          tot    := tot  + (dm.LUnit.AsFloat * qtDesc) + (DM.Lvalipi.AsFloat) ;// * dm.qCiaPorcentagem.AsFloat / 100);   // DM.Lvalipi.AsFloat;
          dm.L.next;
        end;
        tot := tot - des + fre;
        totGeral := tot;
      end;

      nPar    := dm.qC_I.RecordCount;
      if nPar = 0 then
         nPar := 1;

      dm.CRec.Open;
      resto   := 0;
      dm.qC_i.first;

      for I := 1 to nPar do
      begin
        parcela := tot * dm.qC_iPorc.asfloat / 100;
        venci   := dataOld + dm.qC_idias.AsInteger;

        dm.CRec.Insert;
        dm.CRecDOCUMENTO.Value  := 'NF_'+IntToStr(dm.Tnf.Value)+'|PD_'+IntToStr(dm.Tid.Value)+'.'+IntToStr(I)+'/'+IntToStr(nPar);
        dm.CRecnParc.AsInteger := I;
        dm.CRecIdVenda.Value    := dm.TId.Value;
        dm.CRecIdCLIENTE.Value  := dm.TIdCliente.Value;
        dm.CRecEMISSAO.Value    := dataOld;
        dm.CRecidcondpgto.Value := dm.TIdCondPgto.Value;
        if I = nPar then
           dm.CRecVALOR.Value      := RoundABNT(tot - resto, 2) //Adicionado Nilton 07/12/2022
        else
           dm.CRecVALOR.Value      := roundto(parcela, -2);
        dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
        dm.CRecVENCI.Value      := venci;
        dm.CRecBAIXA.Value      := 'N';
        dm.CRecTIPO.Value       := 'V';
        dm.CRecEX.Value         := 0;
        dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
        if (trim(dm.Tboleto.Value) = 'S') then
           dm.CRecgerado_boleto.Value  := 'T';  // ls malhas
        dm.CRecIDEmp.Value      := dm.Tidemp.AsInteger;
        dm.CRecFpgto1.Value     := trim(dm.Tforma_pgto.Value);
        dm.CRecFpgto2.Value     := trim(dm.Tfoma_pgto2.Value);
        dm.CRec.Post;

        resto := resto + roundto(parcela, -2);
        dm.qC_i.next;

      end;
   end;
   dm.CRec.ApplyUpdates;
   dm.CRec.Close;
   sleep(100);


end;


procedure FINANCEIRO(cod:integer);
var
  i, nPar, gDesc : integer;
  tot, resto, parcela, jaPago, totGeral, gtDescNF : real;
  dataOld, venci : TDate;
  temDesc : String;

begin

   dm.T.Close;
   dm.T.ParamByName('ID').Value := Cod;
   dm.T.Open;

   dm.L.Close;
   dm.L.ParamByName('ID').Value := Cod;
   dm.L.Open;

   dm.qCo.Close;
   dm.qCo.ParamByName('id').Value := dm.TIdCondPgto.AsInteger;
   dm.qCo.Open;

   dm.qCia.close;
   dm.qCia.ParamByName('id').value := dm.Tidcomercial.Value;
   dm.qCia.open;

   //if dm.TData.Value < date then
   //   dataOld := dm.TData.value
   //else
      dataOld := Date;

   dm.qpesq.close;
   dm.qpesq.SQL.Clear;
   dm.qpesq.SQL.Add(' select coalesce(valpago,0) val '+
                    ' from creceber where ex = 0 and '+
                    ' baixa = ''S'' and tipo = ''V'' and idvenda = ' + dm.TId.Text );
   dm.qPesq.Open;
   jaPago := dm.qpesq.FieldByName('val').AsFloat;

   Execsql('update creceber set ex = 1 where baixa = ''N'' and tipo = ''V'' and idvenda = ' + dm.TId.Text );

   tot     := dm.TTotal.Value - jaPago;
   nPar    := dm.qCoParcelas.AsInteger;

   totGeral := tot;

   if (dm.Tidcomercial.AsInteger > 0) and (dm.qCiaPorcentagem.AsFloat = 100) then  //add Nilton 07/02/2023
      temDesc := 'X'
   else
   if (dm.Tidcomercial.AsInteger > 0) and (dm.qCiaPorcentagem.AsFloat > 0)  and (dm.qCiaPorcentagem.AsFloat <= 100 ) then
      temDesc := 'S'
   else
      temDesc := 'N';

   // parce sem nf
   if temDesc = 'S' then
   begin
      if dm.qCiatipo.Text = 'V' then
      begin
         if (dm.qCiaPorcentagem.AsFloat > 0) and (dm.qCiaPorcentagem.AsFloat < 100) then
            tot := (totGeral * (100-dm.qCiaPorcentagem.AsFloat) / 100 )
         else
            tot := totGeral; //100%
      end
      else
      begin
        tot := 0;
        dm.L.First;
        while dm.L.Eof = false do
        begin
          if (dm.qCiaPorcentagem.AsFloat > 0) and (dm.qCiaPorcentagem.AsFloat < 100) then
             gDesc  := trunc(dm.Lqtd.Value * (100-dm.qCiaPorcentagem.AsFloat) / 100 )
          else
             gDesc  := trunc(dm.Lqtd.Value); //100%
          tot    := tot  + (dm.LUnit.AsFloat * gDesc);
          dm.L.next;
        end;
        totGeral := totGeral - tot;
      end;
   end;

   if temDesc <> 'X' then   //quando for menor que 100 ou 0  Nilton 07/02/2023 deixado igual por porcentagem
   begin

     if nPar = 0 then nPar := 1;
     parcela := tot / nPar;
     venci   := dataOld + dm.qCoNumParc.AsInteger;
     dm.CRec.Open;
     resto   := 0;
     for I := 1 to nPar do
     begin
        dm.CRec.Insert;
        dm.CRecDOCUMENTO.Value  := IntToStr(dm.Tid.Value)+'.'+IntToStr(I)+'/'+IntToStr(nPar);
        dm.CRecnParc.AsInteger := I;
        dm.CRecIdVenda.Value    := dm.TId.Value;
        dm.CRecIdCLIENTE.Value  := dm.TIdCliente.Value;
        dm.CRecEMISSAO.Value    := dataOld;
        dm.CRecidcondpgto.Value := dm.TIdCondPgto.Value;
        if I = nPar then
           dm.CRecVALOR.Value      := tot - resto
         else
           dm.CRecVALOR.Value      := roundto(parcela, -2);
        dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
        dm.CRecVENCI.Value      := venci;
        dm.CRecBAIXA.Value      := 'N';
        dm.CRecTIPO.Value       := 'V';
        dm.CRecEX.Value         := 0;
        dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
        if (trim(dm.Tboleto.Value) = 'S') then
           dm.CRecgerado_boleto.Value  := 'T';
        dm.CRecIdEmp.Value      := 1; //matriz
        dm.CRecFpgto1.Value     := trim(dm.Tforma_pgto.Value);
        dm.CRecFpgto2.Value     := trim(dm.Tfoma_pgto2.Value);
        dm.CRec.Post;

        resto := resto + roundto(parcela, -2);
        venci := venci + dm.qCoIntervalo.AsInteger;

     end;
   end;

   // parce com nf
   if (temDesc = 'S') or (temDesc = 'X') then  //add or nilton 07/02/2023 (deixado igual financeiro por porcentagem)
   begin

      if (dm.qParametropd_duas_cond.Text = 'S') and
         (dm.TIdCondPgto2.asinteger > 0)        and
         (dm.Tidemp.asinteger > 1)              then
      begin
        dm.qCo.close;
        dm.qCo.ParamByName('id').value := dm.TIdCondPgto2.Value;
        dm.qCo.open;
      end;


      if dm.qCiatipo.Text = 'V' then
         tot := (totGeral * dm.qCiaPorcentagem.AsFloat / 100 )
      else
      begin
        tot := 0;
        dm.L.First;
        while dm.L.Eof = false do
        begin
          gtDescNF := (dm.Lqtd.Value * dm.qCiaPorcentagem.AsFloat / 100 );
          gDesc :=  trunc(dm.Lqtd.Value * dm.qCiaPorcentagem.AsFloat / 100 );
          if (gtDescNF - gDesc) > 0 then
             gDesc := gDesc + 1;

          tot    := tot  + (dm.LUnit.AsFloat * gDesc);
          dm.L.next;
        end;
        totGeral := tot;
      end;

      if nPar = 0 then nPar := 1;
      parcela := tot / nPar;
      venci   := dataOld + dm.qCoNumParc.AsInteger;
      dm.CRec.Open;
      resto   := 0;
      for I := 1 to nPar do
      begin
        dm.CRec.Insert;
        dm.CRecDOCUMENTO.Value  := 'NF_'+IntToStr(dm.Tnf.Value)+'|PD_'+IntToStr(dm.Tid.Value)+'.'+IntToStr(I)+'/'+IntToStr(nPar);
        dm.CRecnParc.AsInteger := I;
        dm.CRecIdVenda.Value    := dm.TId.Value;
        dm.CRecIdCLIENTE.Value  := dm.TIdCliente.Value;
        dm.CRecEMISSAO.Value    := dataOld;
        dm.CRecidcondpgto.Value := dm.TIdCondPgto.Value;
        if I = nPar then
           dm.CRecVALOR.Value      := tot - resto
         else
           dm.CRecVALOR.Value      := roundto(parcela, -2);
        dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
        dm.CRecVENCI.Value      := venci;
        dm.CRecBAIXA.Value      := 'N';
        dm.CRecTIPO.Value       := 'V';
        dm.CRecEX.Value         := 0;
        dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
        if (trim(dm.Tboleto.Value) = 'S') then
          dm.CRecgerado_boleto.Value  := 'T';
        dm.CRecidemp.Value      := dm.Tidemp.AsInteger;
        dm.CRecFpgto1.Value     := trim(dm.Tforma_pgto.Value);
        dm.CRecFpgto2.Value     := trim(dm.Tfoma_pgto2.Value);
        dm.CRec.Post;

        resto := resto + roundto(parcela, -2);
        venci := venci + dm.qCoIntervalo.AsInteger;

      end;
   end;

   dm.CRec.ApplyUpdates;
   dm.CRec.Close;
   sleep(100);

end;




function TDM.textoNulo(txt:string):string;
Begin
  if trim(txt) = '' then
     Result := 'null'
  else
     Result := quotedstr(trim(txt));

End;

function TDM.textoStatus(txt, per:string):string;
Begin
  if (trim(txt) = '0') and (trim(per) = 'S') then
     Result := quotedstr('A')
  else
     Result := quotedstr('I');

End;


procedure atualizaWeb;
var
  msg:String;
Begin

  fMenu.TimerPedidos.Enabled := false;

  msg := dm.enviaDadosWeb;
  if msg <> '' then
     Application.MessageBox(pchar(msg), 'Atenção');

  fMenu.ProgressBar1.BarColor := $00A6A600;
  fMenu.StatusBar1.Panels[4].Text := '';
  fMenu.StatusBar1.Font.Size := 9;
  fMenu.StatusBar1.Panels[4].Text := msg;
  fMenu.StatusBar1.Repaint;

  fMenu.TimerPedidos.Enabled := true;

End;

procedure baixaWeb;
var
  msg:String;
Begin

  fMenu.TimerPedidos.Enabled := false;

  msg := dm.baixaPedidosWeb();
  if msg <> '' then
     Application.MessageBox(pchar(msg), 'Atenção');

  fMenu.ProgressBar1.BarColor := $000080FF;
  fMenu.StatusBar1.Panels[4].Text := '';
  fMenu.StatusBar1.Font.Size := 9;
  fMenu.StatusBar1.Panels[4].Text := msg;
  fMenu.StatusBar1.Repaint;

  fMenu.TimerPedidos.Enabled := true;

End;


function TDM.ConsultaIdWeb(sss:string) : string;
Begin
  DM.qExecWeb.Close;
  DM.qExecWeb.SQL.Clear;
  DM.qExecWeb.SQL.Add(sss);
  DM.qExecWeb.Open;
  Result := dm.qExecWeb.Fields[0].asstring;

End;

procedure TDM.CPagNewRecord(DataSet: TDataSet);
begin
   dm.CPagID.Value          := InsereCodigo('CPagar', 'id');
   dm.CPagIdUsuario.Value   := dm.qUserId.Value;
   dm.CPagEx.Value          := 0;
   dm.CPagBaixa.Value       := 'N';
   dm.CPagTipo.Value        := 'C';
   dm.CPagidcondpgto.Value  := 1;
   dm.CPagX.Value           := 'F';

end;

function TDM.ConsultaIdLocal(sss:string) : string;
Begin
  DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add(sss);
  DM.qExec.Open;
  Result := dm.qExec.Fields[0].asstring;

End;

procedure TDM.Bol_disBeforePost(DataSet: TDataSet);
begin
   if dm.bol_dis.STATE in [dsInsert] then
      dm.bol_disID.Value := InsereCodigo('boleto', 'id');
end;

procedure TDM.Bol_disNewRecord(DataSet: TDataSet);
begin
  dm.Bol_disTPCLIENTE.Value := 'C';
  dm.Bol_disX.Value         := 'F';
  dm.Bol_disSTATUS.Value    := 'A';
  dm.bol_disBaixado.Text    := 'N';
end;

function TDM.BuscarIdLocal(tab:string; web:integer) : integer;
Begin
  DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add('select id from ' + tab + ' where idweb = ' + inttostr(web));
  DM.qExec.Open;
  Result := dm.qExec.Fields[0].asinteger;

End;

function BuscarSQL(Sql:String) : integer; // restorna qtde de registro, para confirmar se tem
Begin
  DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add(sql);
  DM.qExec.Open;
  Result := dm.qExec.RecordCount;

End;



procedure EmpresaComboZero( com:TcomboBox );
Begin

 com.Items.Clear;
 if dm.qParametrologinEspecial.Text = 'N' then
    com.Items.Add('0 - TODAS');
 dm.qEmpresa.First;
 while dm.qEmpresa.Eof = false do
 begin
     if (dm.qParametrologinEspecial.Text = 'N') then
        com.Items.Add(formatfloat('0', dm.qEmpresaid.AsInteger) + '-' + dm.qEmpresafantasia.Text )
     else
     if (dm.qParametrologinEspecial.Text = 'S') and (dm.qEmpresaid.AsInteger = dm.qUseridemp.AsInteger) then
        com.Items.Add(formatfloat('0', dm.qEmpresaid.AsInteger) + '-' + dm.qEmpresafantasia.Text );

    dm.qEmpresa.Next;
 end;
 com.Update;
 com.ItemIndex := 0;

End;

function BuscarEmpPadrao : integer;
Begin
  DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add('select top 1 id from empresa where empresa_padrao = ''S'' order by id ');
  DM.qExec.Open;
  if dm.qExec.FieldByName('id').AsInteger > 0 then
     Result := dm.qExec.FieldByName('id').AsInteger
  else
     Result := 1; //matriz caso nao tenha nenhuma como padrao

End;

procedure BuscarEmpUsuario( com:TDBLookupComboBox );
Begin

  dm.qEmpresa.Open;
  com.ListSource.DataSet.Last;
  com.ListSource.DataSet.First;
  dm.qEmpresa.Locate('id', dm.qUseridemp.AsInteger, []);
  com.KeyValue := dm.qEmpresaid.AsInteger;

End;



function EnviaEmailRep(texto, emailRep, assunto:string; ms:boolean ):boolean;
var  senha,end_email, ArquivoXml, ArquivoXml2: string;
     i:integer;
     mail: TStringList;
     HTML : TStringList;

begin

     dm.qEmpresa.Locate('id', 1, []);
     Result := false;
     dm.IdSmtp1.Disconnect;
     mail  := TStringList.Create;
     HTML  := TSTringList.Create;
     ArquivoXml  := '';
     ArquivoXml2 := '';
     HTML.Add(texto);

     mail.values['to']          := emailRep;
     mail.values['subject']     := Assunto;
     mail.values['body']        := HTML.Text;
     if (ArquivoXml <> '') and (ArquivoXml2 <> '')  then
     begin
        mail.values['attachment0'] := ArquivoXML;
        mail.values['attachment1'] := ArquivoXML2;
     end
     else
     if (ArquivoXml <> '') and (ArquivoXml2 = '')  then
     begin
        mail.values['attachment0'] := ArquivoXML;
     end
     else
     if (ArquivoXml = '') and (ArquivoXml2 <> '')  then
     begin
        mail.values['attachment0'] := ArquivoXML2;
     end;

      // Configuração envio - Email
      dm.IdMessage1.Clear;

      dm.IdMessage1.CharSet     := 'utf-8';
      dm.IdMessage1.ContentType := 'TEXT/HTML';

      dm.IdMessage1.Recipients.EMailAddresses := emailRep;
      dm.IdMessage1.Subject := assunto;
      dm.IdMessage1.Body.Add(mail.values['body']);
      dm.IdMessage1.ReplyTo.EMailAddresses := emailRep;

      //pede confirmacao
      //dm.IdMessage1.AddHeader('Disposition-Notification-To: '+LowerCase(trim(DM.qEmpresarem_email.Text)) );

      if (ArquivoXml <> '')  then
          TIdAttachmentFile.create(dm.IdMessage1.MessageParts, TFileName(ArquivoXML) );
      if (ArquivoXml2 <> '')  then
         TIdAttachmentFile.create(dm.IdMessage1.MessageParts, TFileName(ArquivoXML2) );

      sleep(500);

      // configuração conexão
      Senha    := trim(DM.qEmpresarem_senha.Text);
      end_email:= LowerCase(trim(DM.qEmpresarem_email.Text));

      dm.IdSmtp1.AuthType  := satDefault;
      dm.IdSmtp1.Password  := Senha;

      for i:=1 to length(end_email) do
       begin
         if end_email[i] = '@' then
         break;
       end;

      dm.IdMessage1.From.Address := end_email;
      dm.IdMessage1.From.Text    := end_email;

      dm.IdSmtp1.Host            := LowerCase(trim(dm.qEmpresarem_smtp.Value));  // 'smtp.'+copy(end_email,i+1,length(end_email)-i);
      dm.IdSmtp1.Port            := dm.qEmpresarem_porta.Value;
      dm.IdSmtp1.HeloName        := copy(end_email,1,i-1);
      dm.IdSmtp1.Username        := end_email;

      if dm.qEmpresarem_tls.Text = 'S' then
      begin
         dm.IdSmtp1.IOHandler := dm.IdSocket1;
         dm.IdSocket1.SSLOptions.Method := sslvTLSv1;
         dm.IdSocket1.SSLOptions.Mode   := sslmUnassigned;

         dm.IdSMTP1.UseTLS := utUseExplicitTLS;//utUseImplicitTLS;

      end;

      try
         if dm.IdSmtp1.Connected=false then
            dm.IdSmtp1.Connect;
      except
        On E : Exception do
           if ms then
              Application.MessageBox(pChar('Não foi possível conectar' + #13 + E.Message),'Atenção');
      end;

      if dm.IdSmtp1.Connected then
      begin

        dm.IdSmtp1.Authenticate();

        try

          Application.ProcessMessages;
          try
            dm.IdSmtp1.Send(dm.IdMessage1);
         sleep(200);
            if ms then
               Application.MessageBox('Email enviado com Sucesso!','Atenção');
          except
            On E : Exception do
              if ms then
                 Application.MessageBox(pChar('Não foi possível enviar o email ' + #13 + E.Message) ,'Atenção');
          end;

        finally
          dm.IdSmtp1.Disconnect;
          dm.IdMessage1.Clear;
        end;

      end;
     mail.Free;
     html.Free;

     Result := true;

end;


Function BuscaNossoNumSicredi:string;
var
   aa, b, seq: string;
begin
   dm.qParam.close;
   dm.qParam.open;

   aa := formatdatetime('yy', date);

   seq := inttostr( dm.qParamSICREDI_N.asInteger + 1 );
   dm.qParam.edit;
   if strtoint(seq) > 99999 then begin
         seq := '1';
         dm.qParamSICREDI_B.Value := dm.qParamSICREDI_B.Value + 1;
         if dm.qParamSICREDI_B.Value > 9 then begin
            dm.qParamSICREDI_B.Value := 2;
         end;
   end;
   dm.qParamSICREDI_N.Value := strtoint(seq);
   dm.qParam.post;
   dm.qParam.ApplyUpdates;

   dm.qParam.close;
   dm.qParam.Open;

   seq := Format('%5.5d', [strtoint(seq)]);
   b   := dm.qParamSICREDI_B.Text;

   result := aa  + b + seq;

end;


Function BuscaMesSicredi:string;
{ Janeiro 1, Fevereiro 2, Março 3, Abril  4, Maio  5, Junho  6,
  Julho 7, Agosto 8, Setembro 9, Outubro  O (LETRA), Novembro  N , Dezembro  D }
var
  me : string;
begin

   if formatdatetime('mm',date) = '10'  then
      me := 'O'
   else
   if formatdatetime('mm',date) = '11'  then
      me := 'N'
   else
   if formatdatetime('mm',date) = '12'  then
      me := 'D'
   else
      me :=  inttostr(strtoint(formatdatetime('mm',date)));

   result := me;

end;

Function VerificaNomeSicredi(nArq:String):string;
var
  nA, nE : String;
begin
  nA := copy( nArq, 1, length(nArq) - 3 );
  nE := copy( nArq, length(nArq) - 3, 3 );
  // .crm
  if      not FileExists( nA + 'CRM' ) then nE := 'CRM'
  else if not FileExists( nA + 'RM2' ) then nE := 'RM2'
  else if not FileExists( nA + 'RM3' ) then nE := 'RM3'
  else if not FileExists( nA + 'RM4' ) then nE := 'RM4'
  else if not FileExists( nA + 'RM5' ) then nE := 'RM5'
  else if not FileExists( nA + 'RM6' ) then nE := 'RM6'
  else if not FileExists( nA + 'RM7' ) then nE := 'RM7'
  else if not FileExists( nA + 'RM8' ) then nE := 'RM8'
  else if not FileExists( nA + 'RM9' ) then nE := 'RM9'
  else if not FileExists( nA + 'RM0' ) then nE := 'RM0';

  Result := nA + nE;


end;

procedure GravaImpressos(cli:integer);
var
  idbol : String;
begin

    //grava como impressos
     dm.bCRec.close;
     dm.bCRec.ParamByName('cli').value := cli;
     dm.bCRec.open;
     dm.bCRec.First;
     dm.bol_dis.open;
     while (dm.bCRec.Eof = false) do
       begin
           if (dm.bCRecX.Text = 'T') and (dm.bCRecTOTAL.AsFloat > 1.99 ) and (dm.bCRecBenviando.text <> 'S') then
              begin
                 idbol := idbol + dm.bCRecID.Text + ',';
                 //grava dados do boleto.
                 dm.qPesq.close;
                 dm.qPesq.sql.clear;
                 dm.qPesq.SQL.Add(' select coalesce(boleto.idthr030,0) idthr030 from boleto '+
                                  ' where boleto.idthr030 = ' + dm.bCRecID.Text );
                 dm.qPesq.Open;
                 if dm.qPesq.RecordCount = 0 then
                    dm.Bol_Dis.Insert
                  else
                    begin
                     dm.Bol_Dis.First;
                     dm.Bol_Dis.Locate('idthr030', dm.bCRecID.Value, []);
                     dm.Bol_Dis.Edit;
                    end;
                 dm.Bol_disIDCLIENTE.Value   := dm.bCRecIdCliente.Value;
                 dm.Bol_disTPCLIENTE.Value   := 'C';
                 dm.Bol_disIDTHR030.Value    := dm.bCRecID.Value;
                 dm.Bol_DisBANCO.Value        := strtoint(DM.bancobco.Value);
                 dm.Bol_DisSEQ_REMESSA.Value  := 0;
                 if DM.bancobco.Value = '104' then begin
                    if trim(DM.bancobCarteira.Value) = '90' then
                      dm.Bol_DisNOSSO_NUMERO.Value := '901'+Format('%14.14d', [dm.bCRecID.Value])
                    else
                    if trim(DM.bancobCarteira.Value) = '80' then
                      dm.Bol_DisNOSSO_NUMERO.Value := '801'+Format('%14.14d', [dm.bCRecID.Value])
                    else
                    if trim(DM.bancobCarteira.Value) = 'CR' then
                      dm.Bol_DisNOSSO_NUMERO.Value := '901'+Format('%7.7d', [dm.bCRecID.Value])
                    else
                    if trim(DM.bancobCarteira.Value) = 'SR' then
                      dm.Bol_DisNOSSO_NUMERO.Value := '821'+Format('%7.7d', [dm.bCRecID.Value])
                    else
                    if trim(DM.bancobCarteira.Value) = '14' then
                      dm.Bol_DisNOSSO_NUMERO.Value :=  '141'+Format('%14.14d', [dm.bCRecID.Value])
                    else if trim(DM.bancobCarteira.Value) = '24' then
                      dm.Bol_DisNOSSO_NUMERO.Value := '241'+Format('%14.14d', [dm.bCRecID.Value]);
                 end
                 else
                 if DM.bancobco.Value = '001' then
                    dm.Bol_DisNOSSO_NUMERO.Value := '1'+Format('%9.9d', [dm.bCRecID.Value])
                 else
                 if DM.bancobco.Value = '237' then
                    dm.Bol_DisNOSSO_NUMERO.Value := '1'+Format('%10.10d', [dm.bCRecID.Value])
                 else
                 if DM.bancobco.Value = '033' then
                    dm.Bol_DisNOSSO_NUMERO.Value := '1'+Format('%11.11d', [dm.bCRecID.Value])
                 else
                 if DM.bancobco.Value = '341' then
                    dm.Bol_DisNOSSO_NUMERO.Value := '1'+Format('%7.7d', [dm.bCRecID.Value])
                 else
                 if DM.bancobco.Value = '748' then begin
                    dm.Bol_DisNOSSO_NUMERO.Value := '1'+Format('%7.7d', [dm.bCRecID.Value]);
                    dm.Bol_DisNN_SICREDI.Value := dm.bCRecNN_SICRED.value;
                 end
                 else
                 if dm.bancobco.Value = '756' then
                   dm.Bol_DisNOSSO_NUMERO.Value := '0'+Format('%8.8d', [dm.bCRecID.Value]);

                 //mudar Brubalar 26/05/2022
                 if DM.bCRecnf.AsInteger > 0 then //se tiver NF trazer a NF no documento
                  dm.Bol_DisNUMERO_DOC.Value := IntToStr(dm.bCRecnf.Value) +'/'+IntToStr(DM.bCRecnParc.AsInteger)
                 else
                  dm.Bol_DisNUMERO_DOC.Value := formatfloat('0000',dm.bCRecIdCliente.Value) +
                                                formatfloat( '000000', dm.bCRecID.Value );

                 dm.Bol_DisVALOR.Value        := dm.bCRecTOTAL.Value;
                 dm.Bol_DisVENCI.Value        := dm.bCRecVENCI.Value;
                 dm.bol_disemissao.value      := date;
                 dm.bol_disidconta.value      := DM.bancoid.value;
                 dm.Bol_Dis.Post;

              end;
            dm.bCRec.Next;
       end;
     dm.bol_dis.applyupdates;
     dm.bol_dis.CLOSE;
     if idbol[length(idbol)] = ',' then idbol[length(idbol)]:= ' ';
     ExecSql(' update creceber set bconta = ' + DM.bancoid.Text + ' , fpgto1 = ''BOLETO''  ' +
             ' , bimpresso = ''S'', benviando = ''N'', geradoBol = ''S'', x = ''F''  ' +
             ' where id in ( '+ idbol + ') ' );

end;



procedure GeraBoleto(cod:integer);
var
  idban, ban : string;
  falt, verfalta :string;

begin

     dm.bCRec.close;
     dm.bCRec.ParamByName('cli').value := cod;
     dm.bCRec.open;
     if dm.bCRec.IsEmpty then
     begin
        Application.MessageBox('Não há registro no financeiro, verifique!','Atenção');
        exit;
     end;

     //verifica campos sem cadastros
     falt     := '';
     verfalta := '';
     dm.bCRec.first;
     while dm.bCRec.eof = false do begin        //RETIRADO DAQUI PARA DAR A MENSAGEM DE BOLETO SELECIONADO NILTON 19/05/2022
      if (dm.bCRecX.Text = 'T') {and (dm.bCRecbenviando.Text <> 'S')} then
      begin
        if dm.bCRecbENVIANDO.asString = 'S' then //ADICIONADO AQUI, DA A MENSAGEM SE SELECIONAR PARA GERAR BOLETO ENVIADO NILTON 19/05/2022
        begin
          application.messagebox('Contas a receber com boleto já gerado selecionado. Por favor, verifique!', 'Atenção');
          exit;
        end;

        dm.qDis.Close;
        dm.qDis.ParamByName('dis').value := dm.bCRecIdCliente.value;
        dm.qDis.Open;

        if trim(dm.qDisNome.Text)     = '' then verfalta := verfalta + 'Razão, '  ;
        if trim(dm.qDiscpf.Text)      = '' then verfalta := verfalta + 'CNPJ, '   ;
        if trim(dm.qDisEndereco.Text) = '' then verfalta := verfalta + 'End., '  ;
        if trim(dm.qDisNum.Text)      = '' then verfalta := verfalta + 'Nº, '    ;
        if trim(dm.qDisBairro.Text)   = '' then verfalta := verfalta + 'Bairro, ';
        if trim(dm.qDisCep.Text)      = '' then verfalta := verfalta + 'Cep, '   ;
        if trim(dm.qDisCidade.Text)   = '' then verfalta := verfalta + 'Cidade, ';
        if trim(dm.qDisUF.Text)       = '' then verfalta := verfalta + 'UF.'     ;
        if verfalta <> '' then begin
           falt := falt +
           dm.bCRecIdCliente.Text +'-'+copy(dm.bCRecNome.Text,1,40) + ' - FALTA: ' + verfalta + #13+#10;
        end;
        verfalta := '';
        //Verifica se boleto já impresso
        {if dm.bCRecbENVIANDO.asString = 'S' then
        begin
          application.messagebox('Contas a receber com boleto já gerado selecionado. Por favor, verifique!', 'Atenção');
          exit;
        end; }

      end;
      dm.bCRec.Next;
     end;

     if falt <> '' then
        begin
           falt := 'PROBLEMAS NO CADASTRO, VERIFIQUE!'+#13#10+#13#10 + falt;
           Application.MessageBox(pchar(Falt),'Atenção');
           dm.bCRec.first;
           exit;
        end;
     //fim verificacao

      dm.banco.Close;
      dm.banco.ParamByName('bb').Value := 0;
      dm.banco.Open;

      Application.CreateForm(TfSelBanco, fSelBanco);
      fSelBanco.ShowModal;
      ban   := copy(trim(nbanco),1,3);
      idban := idbanco;
      fSelBanco.free;

      if ban <> '' then
        begin
         if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Remessa') then
            CreateDir(ExtractFilePath(Application.ExeName) +'\Remessa' );

         DM.banco.Close;
         DM.banco.ParamByName('bb').Value    := 1;
         DM.banco.ParamByName('idbco').Value := idban;
         DM.banco.Open;

         if (trim(DM.bancotitular.Text) = '') or (trim(DM.bancocnpjcedente.Text) = '')  or
            (trim(DM.Bancoendcedende.Text) = '') or (trim(DM.Banconumcedende.Text) = '')     or
            (trim(DM.Bancobaicedende.Text) = '') or (trim(DM.Bancocidcedende.Text) = '')     or
            (trim(DM.Bancoufcedende.Text) = '') or (trim(DM.Bancocepcedende.Text) = '')     then
         begin
            Application.MessageBox('Atualize os dados do titular da conta no Cadastro de CONTAS.' ,'Atenção');
            exit;
         end;

         gerar2Via(cod, idban);

         exit;
        end;{
       else
        begin
         Application.MessageBox('Banco não localizado, tente novamente','Atenção');
         exit;
        end; }// deu esc

end;




procedure  Gerar2via(cod:integer; bk:string);
var
   registro:integer;
   vMora, vMulta : real;
   msg, noNum : string;
   obs : Tstringlist;

begin

 registro := 0;
 if dm.bCRec.IsEmpty then
   exit;

 DM.banco.Close;
 DM.banco.ParamByName('bb').Value   := 1;
 DM.banco.ParamByName('idbco').Value:= bk;
 DM.banco.Open;
 msg := dm.BancoMSG_BOLETO.AsString;
 obs := TStringList.create;
 obs.Clear;
 obs.Text := msg;

 dm.bCRec.First;
 while (dm.bCRec.Eof = false) do
 begin
   if (dm.bCRecX.Text = 'T') and (dm.bCRecTOTAL.AsFloat > 1.99 ) and (dm.bCRecBenviando.text <> 'S') then
   begin

    dm.qDis.Close;
    dm.qDis.ParamByName('dis').AsInteger := cod;
    dm.qDis.Open;

    dm.RLBTitulo1.Cedente.ContaBancaria.Banco.Codigo  := trim(formatfloat('000', DM.BancoBCO.AsInteger));

    if DM.BancoBTIPO.Value = 'P' then
       dm.RLBTitulo1.BoletoLayout                     := blPadrao
      else
       dm.RLBTitulo1.BoletoLayout                     := blCarne;

    if dm.BancoBCO.Value = '001' then
       dm.RLBTitulo1.Cedente.ContaBancaria.Convenio   := trim(dm.BancoBCONVENIO.Value);

    dm.RLBTitulo1.DataProcessamento                   := Date;
    dm.RLBTitulo1.Cedente.ContaBancaria.CodigoAgencia := trim(dm.BancobAgencia.Value);
    dm.RLBTitulo1.Cedente.ContaBancaria.DigitoAgencia := trim(dm.BancobAgenciaD.Value);;
    dm.RLBTitulo1.Cedente.ContaBancaria.NumeroConta   := trim(dm.Bancobconta.Value);
    dm.RLBTitulo1.Cedente.ContaBancaria.DigitoConta   := trim(dm.BancobcontaD.Value);
    dm.RLBTitulo1.Cedente.CodigoCedente               := trim(dm.Bancobcedente.Value);
    dm.RLBTitulo1.Cedente.DigitoCodigoCedente         := trim(dm.Bancobcedented.Value);
    dm.RLBTitulo1.Cedente.TipoInscricao               := tiPessoaJuridica;       // ver conforme cadastro

    dm.RLBTitulo1.Cedente.ContaBancaria.NomeCliente := semacento(trim(dm.BancoNomecedente.Text));
    dm.RLBTitulo1.Cedente.NumeroCPFCGC              := dm.BancoCNPJCEDENTE.Text;
    dm.RLBTitulo1.Cedente.Nome := semacento(dm.RLBTitulo1.Cedente.ContaBancaria.NomeCliente);

    dm.RlBtitulo1.Cedente.Endereco.Rua    := semacento(trim(dm.Bancoendcedende.Value));
    dm.RlBtitulo1.Cedente.Endereco.Numero := trim(dm.Banconumcedende.Value);
    dm.RlBtitulo1.Cedente.Endereco.Bairro := semacento(trim(dm.Bancobaicedende.Value));
    dm.RlBtitulo1.Cedente.Endereco.Cidade := semacento(trim(dm.Bancocidcedende.Value));
    dm.RlBtitulo1.Cedente.Endereco.Estado := shortString(trim(dm.Bancoufcedende.Value));
    dm.RlBtitulo1.Cedente.Endereco.CEP    := shortString(trim(dm.Bancocepcedende.Value));

    if dm.BancoBTIPO.Value = 'P' then
       endbene := semacento(trim(dm.Bancoendcedende.Value))+ ','+ trim(dm.Banconumcedende.Value)+'-'+
              trim(dm.Bancobaicedende.Value)+'-'+ trim(dm.Bancocidcedende.Value)+'/'+
              trim(dm.Bancoufcedende.Value)+'-'+ copy(trim(dm.Bancocepcedende.Value),1,2)+'.'+
              copy(trim(dm.Bancocepcedende.Value),2,3)+'-'+ copy(trim(dm.Bancocepcedende.Value),6,3)
     else
       endBene := semacento(trim(dm.Bancoendcedende.Value))+ ', '+ trim(dm.Banconumcedende.Value)+' - '+
              trim(dm.Bancobaicedende.Value)+' - '+ trim(dm.Bancocidcedende.Value)+'/'+
              trim(dm.Bancoufcedende.Value)+' - CEP:'+ copy(trim(dm.Bancocepcedende.Value),1,5)+'-'+
              copy(trim(dm.Bancocepcedende.Value),6,3);


    if dm.Bancobco.asInteger = 104 then
       dm.RLBTitulo1.LocalPagamento                      := trim('PREFERENCIALMENTE NAS CASAS LOTERICAS ATE O VALOR LIMITE')
    else
    if dm.Bancobco.asInteger = 1 then
       dm.RLBTitulo1.LocalPagamento                      := trim('PAGAVEL EM QUALQUER BANCO')
    else
    if dm.Bancobco.asInteger = 237 then
       dm.RLBTitulo1.LocalPagamento                      := trim('Pagavel preferencialmente na Rede Bradesco ou Bradesco Expresso')
    else
    if dm.Bancobco.asInteger = 033 then
       dm.RLBTitulo1.LocalPagamento                      := trim('PAGAVEL EM QUALQUER BANCO ATE O VENCIMENTO')
    else
    if dm.Bancobco.asInteger = 341 then
       dm.RLBTitulo1.LocalPagamento                      := trim('Ate o vencimento, preferencialmente no Itau; Apos o vencimento, somente no Itau' )
    else
    if dm.Bancobco.asInteger = 748 then
       dm.RLBTitulo1.LocalPagamento                      := trim('Pagavel preferencialmente nas Cooperativas de Credito do Sicredi' )
    else
    if dm.Bancobco.asInteger = 756 then //sicob
       dm.RLBTitulo1.LocalPagamento                      := trim('PAGÁVEL EM QUALQUER BANCO ATÉ O VENCIMENTO');

    dm.RLBTitulo1.Carteira                               := trim(dm.BancobCarteira.Value);

    if dm.Bancobco.asInteger = 748 then
       dm.RLBTitulo1.CodigoBarra.Codigo                  := 'I2501P'
    else
       dm.RLBTitulo1.CodigoBarra.Codigo                  := '10499';

    //dados do sacado
    if dm.qDistppessoa.Value                           = 'F' then
       dm.RLBTitulo1.Sacado.TipoInscricao             := tiPessoaFisica
     else
       dm.RLBTitulo1.Sacado.TipoInscricao             := tiPessoaJuridica;

    if trim(dm.qDisrazao.Text) <> '' then
     dm.RLBTitulo1.Sacado.Nome  := trim(DM.qDisrazao.Text)
    else
     dm.RLBTitulo1.Sacado.Nome := trim(dm.qDisNome.Value);//upperCase(semacento((trim(dm.qDisNome.Value))));
    dm.RLBTitulo1.Sacado.Endereco.Cidade              := upperCase(semacento((trim(dm.qDisCidade.Value))));
    dm.RLBTitulo1.Sacado.NumeroCPFCGC                 := trim(dm.qDiscpf.Value);
    dm.RLBTitulo1.Sacado.Endereco.Rua                 := semacento(trim(dm.qDisEndereco.Value));
    dm.RLBTitulo1.Sacado.Endereco.Bairro              := semacento(trim(dm.qDisBairro.Value));
    dm.RLBTitulo1.Sacado.Endereco.CEP                 := shortstring(trim(dm.qDisCEP.Value));
    dm.RLBTitulo1.Sacado.Endereco.Estado              := shortstring(trim(dm.qDisUF.Value));
    dm.RLBTitulo1.Sacado.Endereco.Numero              := Trim(dm.qDisNum.AsString);
    if dm.Bancobco.asInteger = 748 then
       dm.RLBTitulo1.CodigoBarra.Codigo                  := 'I2501P'
    else
       dm.RLBTitulo1.CodigoBarra.Codigo                  := '10499';

    //caixa
    if trim(DM.bancobCarteira.Value) = '90' then BEGIN
       dm.RLBTitulo1.LayoutNN                            := lnN17;
       dm.RLBTitulo1.NossoNumero                         := '90'+'1'+Format('%14.14d', [dm.bCRecID.Value]);
    end
    else
    if trim(DM.bancobCarteira.Value) = '80' then BEGIN
       dm.RLBTitulo1.LayoutNN                            := lnN17;
       dm.RLBTitulo1.NossoNumero                         := '80' +'1'+Format('%14.14d', [dm.bCRecID.Value]);
    end
    else
    if trim(DM.bancobCarteira.Value) = 'CR' then BEGIN
       dm.RLBTitulo1.LayoutNN                            := lnN11;
       dm.RLBTitulo1.NossoNumero                         := '90' +'1'+Format('%7.7d', [dm.bCRecID.Value]);
    end
    else
    if trim(DM.bancobCarteira.Value) = 'SR' then BEGIN
       dm.RLBTitulo1.LayoutNN                            := lnN11;
       dm.RLBTitulo1.NossoNumero                         := '82' +'1'+Format('%7.7d', [dm.bCRecID.Value]);
    end
    else
    if trim(DM.bancobCarteira.Value) = '14' then BEGIN
       dm.RLBTitulo1.LayoutNN                            := lnN17;
       dm.RLBTitulo1.NossoNumero                         := '14' +'1'+Format('%14.14d', [dm.bCRecID.Value]);
    end
    else
    if trim(DM.bancobCarteira.Value) = '24' then BEGIN
       dm.RLBTitulo1.LayoutNN                            := lnN17;
       dm.RLBTitulo1.NossoNumero                         := '24' + '1'+Format('%14.14d', [dm.bCRecID.Value]);
    end
    else // brasil
    if dm.Bancobco.asInteger = 1 then begin
       dm.RLBTitulo1.Carteira                            := trim(copy(dm.BancobCarteira.Value,1,2));
       dm.RLBTitulo1.LayoutNN                            := lnC7_N10;
       dm.RLBTitulo1.NossoNumero                         := '1'+Format('%9.9d', [dm.bCRecID.Value]);
    end
    else // bradesco
    if dm.Bancobco.asInteger = 237 then begin
       dm.RLBTitulo1.Carteira                            := trim(copy(dm.BancobCarteira.Value,1,2));
       dm.RLBTitulo1.LayoutNN                            := lnN17;
       dm.RLBTitulo1.NossoNumero                         := '1'+Format('%10.10d', [dm.bCRecID.Value]);
    end
    else //santander
    if dm.Bancobco.asInteger = 033 then begin
       dm.RLBTitulo1.Carteira                            := trim(copy(dm.BancobCarteira.Value,1,3));
       dm.RLBTitulo1.LayoutNN                            := lnN11;
       dm.RLBTitulo1.NossoNumero                         := '1'+Format('%11.11d', [dm.bCRecID.Value]);
    end
    else // itau
    if dm.Bancobco.asInteger = 341 then begin
       dm.RLBTitulo1.Carteira                            := trim(dm.BancobCarteira.Value);
       dm.RLBTitulo1.LayoutNN                            := lnN11;
       dm.RLBTitulo1.NossoNumero := trim(DM.bancobAgencia.Value) + trim(DM.bancobCarteira.Value)+
                                 '1'+Format('%7.7d', [dm.bCRecID.Value]);
    end
    else // sicred
    if dm.Bancobco.asInteger = 748 then begin
       dm.RLBTitulo1.Carteira                            := trim(dm.BancobCarteira.Value);
       dm.RLBTitulo1.LayoutNN                            := lnN11;
       if trim(dm.bCRecnn_Sicred.Text) = '' then begin
          noNum := BuscaNossoNumSicredi;
          dm.bCRec.edit;
          dm.bCRecNN_Sicred.Text     := noNum;
          dm.bCRec.post;
       end;
       dm.RLBTitulo1.NossoNumero   := dm.bCRecnn_Sicred.Text;

    end
    else  // Sicob
    if dm.Bancobco.asInteger = 756 then
    begin
      dm.RLBTitulo1.Carteira            := trim(copy(dm.BancobCarteira.Value, 2,2));
      dm.RLBTitulo1.LayoutNN            := lnN11;
      dm.RLBTitulo1.NossoNumero         := '0'+Format('%8.8d', [dm.bCRecID.Value]); //'0' no numseq
    end;


    dm.RLBTitulo1.ValorDocumento                      := dm.bCRecValor.Value;
    dm.RLBTitulo1.DataDocumento                       := Date;
    dm.RLBTitulo1.DataVencimento                      := dm.bCRecVenci.value;

    if DM.bCRecnf.AsInteger > 0 then //se tiver NF trazer a NF no documento
     dm.RLBTitulo1.NumeroDocumento := IntToStr(dm.bCRecnf.Value)+'/'+IntToStr(DM.bCRecnParc.AsInteger)
    else
     dm.RLBTitulo1.NumeroDocumento := formatfloat('0000',dm.qDisID.Value) +
                                      formatfloat('000000', dm.bCRecID.Value);

    dm.RLBTitulo1.SeuNumero                           := dm.RLBTitulo1.NumeroDocumento;
    dm.RLBTitulo1.Instrucoes.Clear;

   { if dm.Bancobco.asInteger = 104 then
       dm.RLBTitulo1.Instrucoes.Add('APOS O VENCIMENTO, SOMENTE NAS AGENCIAS DA CAIXA' )
    else
    if dm.Bancobco.asInteger = 1 then
       dm.RLBTitulo1.Instrucoes.Add('Após vencimento pagável somente nas agências do Banco do Brasil.' )
    else
    if dm.Bancobco.asInteger = 237 then
       dm.RLBTitulo1.Instrucoes.Add('Após vencimento pagável somente nas agências do Bradesco.' )
    else
    if dm.Bancobco.asInteger = 033 then
       dm.RLBTitulo1.Instrucoes.Add('Após vencimento pagável somente nas agências do Santander.' )
    else  }
    if (dm.Bancobco.asInteger = 341) then
       dm.RLBTitulo1.Instrucoes.Add(pchar('END.BENEF.:' + endBene) )
    else
    if (dm.Bancobco.asInteger = 756) then
       dm.RLBTitulo1.Instrucoes.Add('Após vencimento pagável somente nas agências do SICCOB.');


    if (obs.Count >= 1) and (trim(obs.Strings[0]) <> '') then
       dm.RLBTitulo1.Instrucoes.Add( obs.Strings[0] );    //  ver para ler memo1
    if (obs.Count >= 2) and (trim(obs.Strings[1]) <> '') then
       dm.RLBTitulo1.Instrucoes.Add( obs.Strings[1] );    //  ver para ler memo1
    if dm.Bancobco.asInteger > 1 then
       if (obs.Count >= 3) and (trim(obs.Strings[2]) <> '') then
          dm.RLBTitulo1.Instrucoes.Add( obs.Strings[2] );    //  ver para ler memo1

    if dm.BancoMULTA.Value > 0 then
    begin
      dm.RLBTitulo1.ValorRecebido := dm.BancoMULTA.Value;
      if dm.Bancobco.asInteger = 748  then // considerar casas decimais
        dm.RLBTitulo1.ValorRecebido := dm.BancoMULTA.Value * 100;

      tipoMultaBoleto := trim(dm.BancotipoMulta.Text);
      if tipoMultaBoleto = 'P' then
      begin
        dm.RLBTitulo1.Instrucoes.Add('MULTA DE '+ FormatFloat('#,##0.00', dm.BancoMULTA.asfloat) +' % APÓS '+FormatDateTime('dd/mm/yyyy', dm.bCRecVenci.Value) + ', ');
        if (dm.Bancobco.asInteger = 1) or (dm.Bancobco.asInteger = 756) then  //passar o valor pra remessa
          dm.RLBTitulo1.ValorRecebido := dm.bCRecTotal.Value * dm.BancoMULTA.asfloat/100
        else
          if dm.Bancobco.asInteger = 748 then //não arredondar multa  e ir % 29/5/23
            dm.RLBTitulo1.ValorRecebido := dm.BancoMULTA.asfloat * 100
      end
      else
        dm.RLBTitulo1.Instrucoes.Add('MULTA DE R$ '+ FormatFloat('#,##0.00', dm.BancoMULTA.asfloat) +' APÓS '+FormatDateTime('dd/mm/yyyy', dm.bCRecVenci.Value) + ', ');
    end
    else
        dm.RLBTitulo1.ValorRecebido := 0;

    if (dm.BancoJUROS.Value > 0) then
    begin
       vMora  := (dm.bCRecTotal.Value * dm.BancoJUROS.Value/100);
       dm.RLBTitulo1.ValorMoraJuros  := vMora;
       if dm.bancobco.asInteger = 756 then
           dm.RLBTitulo1.DataMoraJuros   := dm.RLBTitulo1.DataVencimento + 1
       else
           dm.RLBTitulo1.DataMoraJuros   := dm.RLBTitulo1.DataVencimento ;
       dm.RLBTitulo1.Instrucoes.Add('JUROS APÓS '+formatdatetime('dd/mm/yyyy', dm.bCRecVenci.value) +
                                 ' DE  R$  ' + FormatFloat('#,##0.00', vMora)+ ' AO DIA ');

    end
    else
       dm.RLBTitulo1.ValorMoraJuros  := 0;

    dm.RLBTitulo1.DescricaoOcorrenciaOriginal := '';
    dm.RLBTitulo1.MotivoRejeicaoComando := '';
    dm.RLBTitulo1.DataProtesto := 0;
    if dm.BancoDIASPROT.AsInteger > 0 then
    begin
       if dm.BancotipoProtesto.Text = 'U' then
       begin
         dm.RLBTitulo1.DataProtesto    := diasUteis(dm.RLBTitulo1.DataVencimento, dm.BancoDIASPROT.AsInteger ) ;
         dm.RLBTitulo1.DescricaoOcorrenciaOriginal := 'U';
         dm.RLBTitulo1.MotivoRejeicaoComando := dm.BancoDIASPROT.asstring;
       end
       else
          dm.RLBTitulo1.DataProtesto    := dm.RLBTitulo1.DataVencimento + dm.BancoDIASPROT.AsInteger ;
       dm.RLBTitulo1.Instrucoes.Add('PROTESTAR APÓS ' +DATETOSTR(dm.RLBTitulo1.DataProtesto ));
    end;

    dm.RLBTitulo1.DataDesconto    := dm.RLBTitulo1.DataVencimento;
    dm.RLBTitulo1.ValorDesconto   := 0;
    dm.RLBTitulo1.ValorAbatimento := 0;

    dm.RLBTitulo1.InsertRecord;
    registro := registro + 1;

  end;
  dm.bCRec.Next;

 end;
 dm.bCRec.applyupdates;
 obs.free;

 if registro > 0 then
  begin
   try
    GravaImpressos(cod);
   finally    
    dm.RLBTitulo1.PreviewModal;
    dm.RLBTitulo1.ClearRecords;
   end;
    
  end;
 sleep(100);

 dm.bCRec.Close;
 dm.bCRec.ParamByName('cli').value := cod;
 dm.bCRec.Open;


end;


function TDM.BuscarCubagem(cod:integer) : real;
Begin
  DM.qExec.Close;
  DM.qExec.SQL.Clear;
  DM.qExec.SQL.Add('select cubagem from produto where id = ' + inttostr(cod) );
  DM.qExec.Open;
  Result := dm.qExec.FieldByName('cubagem').AsFloat;

End;


procedure EmpresaCombo( com:TcomboBox );
Begin

 com.Items.Clear;
 dm.qEmpresa.First;
 while dm.qEmpresa.Eof = false do
 begin
     if (dm.qParametrologinEspecial.Text = 'N') then
        com.Items.Add(formatfloat('0', dm.qEmpresaid.AsInteger) + '-' + dm.qEmpresafantasia.Text )
     else
     if (dm.qParametrologinEspecial.Text = 'S') and (dm.qEmpresaid.AsInteger = dm.qUseridemp.AsInteger) then
        com.Items.Add(formatfloat('0', dm.qEmpresaid.AsInteger) + '-' + dm.qEmpresafantasia.Text );

    dm.qEmpresa.Next;
 end;
 com.Update;
 com.ItemIndex := 0;

End;

procedure AjusteMatricial(nTipo, nvlr, tam, pix: string);
{
  ntipo := Espaco
  nvlr  := 6 = ls6lpp, 8 = ls8lpp

  ntipo := fonte_estilo
  nvlr  := '' = [],
  b  = fsDmBold,
  D  = fsDmDoubleStrike,
  I  = fsItelic
  tam:
    D = (font.size := fsDefault)
    C = (font.size := fsCondensed)
    L = (font.size := fsLarge)
    LC = (font.size := fsLargeCondensed)
  pix:
    10 := (Font.Pitch := fp10cpp);
    12 := (Font.Pitch := fp12cpp);
}
begin

  if UpperCase(Tam) = 'D' then DM.VDODmPrinter1.font.size := fsDefault
  else
  if UpperCase(Tam) = 'C' then DM.VDODmPrinter1.font.size := fsCondensed
  else
  if UpperCase(Tam) = 'L' then DM.VDODmPrinter1.font.size := fsLarge
  else
  if UpperCase(Tam) = 'LC' then DM.VDODmPrinter1.font.size := fsLargeCondensed;

  if pix = '10' then DM.VDODmPrinter1.font.Pitch := fp10cpp
  else
  if pix = '12' then DM.VDODmPrinter1.font.Pitch := fp12cpp;

  if UpperCase(nTipo) = 'ESPACO' then
  begin
    if nvlr = '6' then
      DM.VDODmPrinter1.LineSpacing := ls6lpp
    else
    if nvlr = '8' then
      DM.VDODmPrinter1.LineSpacing := ls8lpp;
  end
  else
  if UpperCase(nTipo) = 'FONTE_ESTILO' then
  begin
    if nvlr = '' then
      DM.VDODmPrinter1.Font.Style := []
    else if UpperCase(nvlr) = 'B' then
      DM.VDODmPrinter1.Font.Style := [fsDmBold]
    else if UpperCase(nvlr) = 'D' then
      DM.VDODmPrinter1.Font.Style := [fsDmDoubleStrike]
    else if UpperCase(nvlr) = 'I' then
      DM.VDODmPrinter1.Font.Style := [fsDmItalic];
  end;

end;


procedure reciboPagRec(emp: integer; tp, idbx:string; pCred : real);
var
 sql, sql2 : String;
begin

  if Application.MessageBox('Deseja imprimir Recibo?', 'Atenção', mb_yesno) = IdNo then
     Exit;

  Application.CreateForm(TfimpRecebimento, fimpRecebimento);

  dm.qEmpresa.Locate('id', emp, []);
  if tp = 'R' then  //recebimento
  begin
     sql := ' select r.idvenda codrec, r.idcliente idcli,  r.* , c.razao nome , c.email, e.fantasia razao '+
            ' from creceber r '+
            ' left join cliente c on c.id = r.idcliente '+
            ' left join empresa e on e.id = r.idemp '+
            ' where r.idbaixa in ('+ idbx+ ')'+
            ' order by r.idbaixa ';
  end
  else
  if tp = 'P' then  //Pagamentos
  begin
     sql := ' select p.idcompra codrec, p.idfornecedor idcli, p.* , '+
            ' case p.tipofinan when ''F'' then f.nome when ''T'' then t.nome end Nome,'+
            ' case p.tipofinan when ''F'' then f.email when ''T'' then t.email end Email, '+
            ' e.fantasia razao '+
            ' from cpagar p '+
            ' left join fornecedor f on f.id = p.idfornecedor and p.tipofinan = ''F'' '+
            ' left join transportadora t on t.id = p.idfornecedor and p.tipofinan = ''T'' '+
            ' left join empresa e on e.id = p.idemp '+
            ' where p.idbaixa in ('+ idbx+ ')';
  end;
  fimpRecebimento.Q.close;
  fimpRecebimento.Q.SQL.Clear;
  fimpRecebimento.Q.SQL.Add(sql);
  fimpRecebimento.Q.Open;

  //formas
  sql2 :=
          ' select r.fpgto1 forma, sum(r.valor1) valor from creceber r '+
          ' where r.idbaixa in ('+ idbx +') group by r.fpgto1 '+
          ' union all '+
          ' select r.fpgto2 forma, sum(r.valor2) valor from creceber r '+
          ' where r.idbaixa in ('+ idbx +') and coalesce(r.valor2,0) > 0 group by r.fpgto2 '+
          ' union all '+
          ' select m.fpgto forma, m.valor * (-1) valor from movcaixa m '+
          ' where m.tpmov = ''Z'' and m.id in ('+ idbx +') and m.segundaforma = ''N'' '+
          ' union all '+
          ' select m.fpgto forma, m.valor * (-1) valor from movcaixa m '+
          ' where m.tpmov = ''Z'' and m.id in ('+ idbx +')  and m.segundaforma = ''S'' ';

  fimpRecebimento.qForma.close;
  fimpRecebimento.qForma.SQL.Clear;
  fimpRecebimento.qForma.SQL.Add(sql2);
  fimpRecebimento.qForma.Open;

  //cheques
  fimpRecebimento.qCheq.close;
  fImpRecebimento.qCheq.SQL.Clear;
  fImpRecebimento.qCheq.SQL.Add(' select ''Rec'' tipo, c.banco, c.numero, c.agencia, c.conta, c.valor, c.venci, c.emitente '+
                                ' from cheques c '+
                                ' where c.idmovcaixa in ('+ idbx +')  '+

                                ' union all '+

                                ' select ''Emi'' tipo, ch.banco, ch.numero, ch.agencia, ch.conta, ch.valor, ch.venci, ''   '' emitente '+
                                ' from chemitido ch '+
                                ' where ch.idthr050 in ('+ idbx +')  '+

                                ' union all '+

                                ' select ''Pag'' tipo, c.banco, c.numero, c.agencia, c.conta, c.valor, c.venci, c.emitente '+
                                ' from cheques c '+
                                ' where c.idthr050 in ('+ idbx +')  ');
  fimpRecebimento.qCheq.Open;


  if tp = 'R' then  //recebimentos
  begin
     fimpRecebimento.lTotal.Caption  :=  'TOTAL RECEBIDO:';
     fimpRecebimento.lNome.Caption   :=  fimpRecebimento.Qnome.Text;
     fimpRecebimento.lAssina.Caption :=  fimpRecebimento.QRAZAO.Text;
  end
  else
  if tp = 'P' then  //Pagamentos
  begin
     fimpRecebimento.lTotal.Caption  :=  'TOTAL PAGO:';
     fimpRecebimento.lNome.Caption   := trim(fimpRecebimento.QRAZAO.Text);
     fimpRecebimento.lAssina.Caption := trim(fimpRecebimento.Qnome.Text);
  end;
  fimpRecebimento.lData.Caption := formatdatetime('dd', date)+ ' de ' + buscaMesDescricao(Date) +
                                   ' de ' + formatdatetime('yyyy', date)+'.';

  if pCred > 0 then
  begin
    fimpRecebimento.lcredito.visible := true;
    fimpRecebimento.lcredito.caption := 'CRÉDITO DE R$ ' + FormatFloat('###,##0.00',pCred)
  end;

  vEnv_EmailDest := trim(fimpRecebimento.QEmail.text);
  vEnv_Report    := fimpRecebimento.rp;
  fimpRecebimento.rp.PreviewModal;

  fimpRecebimento.Free;
end;


procedure FormasDBComboBox( com:TDBcomboBox; vIndex : boolean = true );
Begin

 dm.qFormas.close;
 dm.qFormas.open;
 com.Items.Clear;
 com.Items.Add('');
 dm.qFormas.First;
 while dm.qFormas.Eof = false do
 begin
    com.Items.Add(dm.qFormasDescricao.Text );
    dm.qFormas.Next;
 end;
 com.Update;
 if vIndex then
  com.ItemIndex := 0;

End;

procedure FormasComboBox( com:TcomboBox; vTodas : boolean = true );
Begin

 dm.qFormas.close;
 dm.qFormas.open;
 com.Items.Clear;
 if vTodas then
  com.Items.Add('TODAS');

 dm.qFormas.First;
 while dm.qFormas.Eof = false do
 begin
    com.Items.Add(uppercase(dm.qFormasDescricao.Text) );
    dm.qFormas.Next;
 end;
 com.Update;
 com.ItemIndex := 0;

End;


Function QueryConsulta(pSQL: WideString; pFieldRetorno: integer = 0): string;
var
  vQr: TZQuery;
begin
  try
    with vQr do
    begin
      vQr := TZQuery.Create(nil);
      Connection := DM.Conex;
      Close;
      SQL.Clear;
      SQL.Add(pSQL);
      Open;
      Result := Fields[pFieldRetorno].AsString;
    end;
  finally
    FreeAndNil(vQr);
  end;
end;


procedure reciboCreditoTotal(cod:string);
begin

  Application.CreateForm(TfRelFinanceiro, fRelFinanceiro);

  fRelFinanceiro.qRecibo.close;
  fRelFinanceiro.qRecibo.SQL.Clear;
  fRelFinanceiro.qRecibo.sql.Add('  select   coalesce(  case when creceber.valor < 0 then '+
                                 '  creceber.valor * (-1) else creceber.valor end ,0) Valor, '+
                                 '  coalesce( case when creceber.desconto < 0 then '+
                                 '  creceber.desconto * (-1) else creceber.desconto end ,0) desconto , '+
                                 '  coalesce(  case when creceber.juros < 0 then '+
                                 '  creceber.juros * (-1) else creceber.juros end ,0) juros , '+
                                 '  coalesce(  case when creceber.total < 0 then '+
                                 '  creceber.total * (-1) else creceber.total end ,0) total , '+
                                 '  creceber.* , cliente.*, empresa.fantasia '+
                                 '  from creceber '+
                                 '  left join cliente on cliente.id = creceber.idcliente '+
                                 '  left join empresa on empresa.id = creceber.idemp '+
                                 '  where creceber.id in ('+ cod +')');
  fRelFinanceiro.qRecibo.Open;

  vEnv_EmailDest := fRelFinanceiro.qReciboemail.Text;
  vEnv_Report    := fRelFinanceiro.rpRecibo;
  fRelFinanceiro.rpRecibo.PreviewModal;

  fRelFinanceiro.Free;

end;


Function BuscaUltimoID(Tab: string):integer;
begin
 DM.qIns.Close;
 DM.qIns.SQL.Clear;
 DM.qIns.SQL.Add('select max(ID) as Cod from '+Tab);
 DM.qIns.Open;
 if DM.qIns.FieldByName('Cod').asstring = '' then
   Result := 1
 else
   Result := DM.qIns.FieldByName('Cod').AsInteger;
end;



procedure VerificaCaixaAbertura(User:Integer);
var Sql: String;
    vf, va : Integer;
begin
  caixafe := 'S';
  cxf := '';
  VerificaCaixaFechamento(User);
  if caixafe = 'N' then
     exit;

  // verifica se tem fechamento na data hoje
  Sql := 'select max(ID) ID from movcaixa '+
         ' WHERE IdConta = 1 and TpMov = ''F'' '+ //'+IntToStr(CodCaixa)+'
         ' and Data = '+QuotedStr(FormatDateTime('yyyy-mm-dd', date)) ;  //DataMovimento
  {if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
     Sql := Sql +' and IDUsu = ' + inttostr(User);     }

  DM.qIns.SQL.Clear;
  DM.qIns.SQL.Add(Sql);
  DM.qIns.Open;
  vf := dm.qIns.fieldbyname('ID').asInteger;
  {
  if DM.qIns.RecordCount > 0 then  begin
     caixafe := 'Z';
     exit;
  end;
  }
  // Verificando se Caixa foi aberto********************************************
  Sql := 'select max(ID) ID from movcaixa '+
         ' WHERE IdConta = 1 and TpMov = ''A'' '+    //'+IntToStr(contaPadrao)+'
         ' and Data = '+QuotedStr(FormatDateTime('yyyy-mm-dd', date));      //DataMovimento
  {if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
   Sql := Sql + ' and IDUsu = ' + inttostr(User);  }

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql );
     DM.qIns.Open;
     va := dm.qIns.fieldbyname('ID').asInteger;

     if (DM.qIns.RecordCount = 0) and (va < vf) then
     begin
       if cxf = '' then
         Application.MessageBox('O Caixa não foi Aberto para este Usuário!', 'Aviso');

       Application.CreateForm(TfAbertCaixa, fAbertCaixa);
       user_fe := User;
       fAbertCaixa.ShowModal;
       if conf_abertura = 'N' then
          caixafe := 'N';
       fAbertCaixa.free;
     end;


end;


procedure VerificaCaixaFechamento(User:Integer);
var Sql: String;
    vf, va : Integer;
begin

  //Verificando se houve fechamento no dia anterior ****************************
  Sql := 'select max(ID) ID from movcaixa '+
         ' WHERE IdConta = 1  and TpMov = ''A'' '+    //'+IntToStr(CodCaixa)+'
         ' and Data = '+QuotedStr(FormatDateTime('yyyy-mm-dd', date ));   //DataMovimento
  {if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
   Sql := Sql + ' and IDUsu = ' + inttostr(User);  }


     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     vA := dm.qIns.fieldbyname('ID').asInteger;


   Sql := 'select max(ID) ID from movcaixa '+
         ' WHERE IdConta = 1 and TpMov = ''F'' '+   //'+IntToStr(contaPadrao)+'
         ' and Data = '+QuotedStr(FormatDateTime('yyyy-mm-dd', date));  //DataMovimento
   {if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
     Sql := Sql +' and IDUsu = ' + inttostr(User);  }

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     vF := dm.qIns.fieldbyname('ID').asInteger;

   if (DM.qIns.RecordCount = 0) and (va > vf) then
     begin
        cxf := 'S';
        Application.MessageBox('O Caixa não foi Fechado para este Usuário!', 'Aviso');

       Application.CreateForm(TfFechamento, fFechamento);
       fFechamento.ShowModal;
       caixafe := conf_fecha;
       fFechamento.free;
      end;

end;



function verifica(tp:string):boolean;
var
  sql : string;
  va, vf : integer;
  vRes : boolean;
begin
   vRes := false;
   if tp = 'F' then   //Fechamento
   begin
     Sql := 'select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''A'' '+
            ' and Data = ' + QuotedStr(FormatDateTime('dd-mm-yyyy', date));
     // Sql := Sql +' and idusuario = '+ dm.qUserId.Text;    //Não verifica funcionário 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql );
     DM.qIns.Open;
     if (DM.qIns.RecordCount = 0) or (DM.qIns.FieldByName('ID').AsInteger = 0) then
     begin
        Application.MessageBox('Não existe abertura de caixa para este usuário nesta data!', 'Aviso');
        exit;
     end
     else
        vA := dm.qIns.FieldByName('ID').AsInteger;

     Sql := ' select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''F'' '+
            ' and Data = '+QuotedStr(FormatDateTime('dd-mm-yyyy', date ));
     //Sql := Sql + ' and idusuario = '+ dm.qUserId.Text; //Não verifica funcionário 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     vF := dm.qIns.FieldByName('ID').AsInteger;
     if (DM.qIns.RecordCount > 0) and (vF > vA ) then
     begin
      Application.MessageBox('Caixa Está Fechado Para Este Usuário No Momento!', 'Aviso');
      Exit;
     end;

     vRes := true;
   end
   else   //Abertura
   if tp = 'A' then
   begin
     Sql := 'select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''A'' '+
            ' and Data = ' + QuotedStr(FormatDateTime('dd-mm-yyyy', date));
      //Sql := Sql + ' and idusuario = '+ dm.qUserId.Text;  //Não verifica funcionário 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql );
     DM.qIns.Open;
     vA := dm.qIns.FieldByName('ID').AsInteger;

     Sql := ' select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''F'' '+
            ' and Data = '+QuotedStr(FormatDateTime('dd-mm-yyyy', date ));
      //Sql := Sql + ' and idusuario = '+ dm.qUserId.Text;  //Não verifica funcionário 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     vF := dm.qIns.FieldByName('ID').AsInteger;
     if (DM.qIns.RecordCount > 0) and (vF < vA ) then
     begin
      Application.MessageBox('Já existe Abertura de Caixa para este usuário neste momento!', 'Aviso');
      Exit;
     end;

     vRes := true;
   end
   else
   if tp = 'V' then  //Verifica se caixa aberto na venda
   begin
     Sql := 'select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''A'' '+
            ' and Data = ' + QuotedStr(FormatDateTime('dd-mm-yyyy', date));
      //Sql := Sql + ' and idusuario = '+ dm.qUserId.Text;    //Não verifica funcionário 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql );
     DM.qIns.Open;
     vA := dm.qIns.FieldByName('ID').AsInteger;

     Sql := ' select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''F'' '+
            ' and Data = '+QuotedStr(FormatDateTime('dd-mm-yyyy', date ));
      //Sql := Sql + ' and idusuario = '+ dm.qUserId.Text;    //Não verifica funcionário 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     vF := dm.qIns.FieldByName('ID').AsInteger;
     if (DM.qIns.RecordCount > 0) and (vF < vA ) then
     begin
      //Application.MessageBox('Já existe Abertura de Caixa para este usuário neste momento!', 'Aviso');
      Exit;
     end;

     vRes := true;
   end;

   Result := vRes;
end;


procedure TDM.ACBrSAT1GetcodigoDeAtivacao(var Chave: AnsiString);
begin
  Chave := ansiString(dm.qEmpCodigoAtivacaoSat.text);
end;

procedure TDM.ACBrSAT1GetsignAC(var Chave: AnsiString);
begin
  Chave := ansiString(dm.tSHAssinaturaAC.AsString);
end;

procedure TDM.AjustaACBrSAT(emp : integer) ;
var
  ok: boolean;
  caminhoC, caminhoV : String;
begin

  dm.qEmp.close;
  dm.qEmp.ParamByName('emp').asInteger := emp;
  dm.qEmp.open;


  caminhoC := ExtractFilePath(Application.ExeName);
  caminhoV := ExtractFilePath(Application.ExeName);
  if not DirectoryExists( caminhoC +'SAT' ) then
     CreateDir(caminhoC +'SAT');

  caminhoC := caminhoC +'SAT\';
  caminhoV := caminhoV +'SAT\';

  if not DirectoryExists( caminhoC +'CFeCancelamento' ) then
     CreateDir(caminhoC +'CFeCancelamento');
  caminhoC := caminhoC +'CFeCancelamento\';

  if not DirectoryExists( caminhoV +'CFeVenda' ) then
     CreateDir(caminhoV +'CFeVenda');
  caminhoV := caminhoV +'CFeVenda\';

  with dm.ACBrSAT1 do
  begin
    Config.ide_tpAmb       := StrToTpAmb( Ok, '1' ); // 1-taProducao; 2-taHomologacao;
    Config.ide_CNPJ        := dm.tSHCNPJ.Value;
    Config.emit_CNPJ       := dm.qEmpCNPJ.Value;//dm.qEmpcnpj.Value;
    Config.emit_IE         := dm.qEmpIe.Value;
    if dm.qEmpTPEMPRESANFE.text = '1' then
       Config.emit_cRegTrib      := StrToRegTrib(Ok, '1' )  //1-RTSimplesNacional
    else
       Config.emit_cRegTrib      := StrToRegTrib(Ok, '3' );  // 3-RTRegimeNormal;
    ConfigArquivos.PastaCFeCancelamento := caminhoC;
    ConfigArquivos.PastaCFeVenda        := caminhoV;

    Modelo := TACBrSATModelo( dm.qEmpmodeloSat.AsInteger );
    if dm.qEmpsalvarcfes.Value = 'S' then
       ConfigArquivos.SalvarCFe := true
    else
       ConfigArquivos.SalvarCFe := False;

    NomeDLL       := trim(dm.qEmpnome_dll_sat.Text);

    with cfe.Emit do
    begin
      xNome               := dm.qEmpRazao.Text;
      xFant               := dm.qEmpFantasia.Text;
      enderEmit.xLgr      := dm.qEmpEndereco.Text;
      enderEmit.nro       := dm.qEmpNum.Text;
      enderEmit.xCpl      := '';
      enderEmit.xBairro   := dm.qEmpBairro.Text;
      enderEmit.xMun      := dm.qEmpCidade.Text;
      enderEmit.CEP       := dm.qEmpCEP.AsInteger;
    end;

  end;

  with dm.ACBrSATExtratoFortes1 do
  begin

    if dm.qEmpCFe_largura.AsInteger > 0 then
       LarguraBobina := dm.qEmpCFe_largura.AsInteger
    else
       LarguraBobina := 302;

    if dm.qEmpCFe_visualiza.Value = 'S' then
       MostraPreview := true
    else
       MostraPreview := false;

    if dm.qEmpCFe_copias.AsInteger > 0 then
       NumCopias := dm.qEmpCFe_copias.AsInteger;

    if trim(dm.qEmpCFe_logo.text) <> '' then
    begin
       if FileExists(trim(dm.qEmpCFe_logo.text)) then
          PictureLogo.LoadFromFile(trim(dm.qEmpCFe_logo.text))
       else
          PictureLogo := nil;
    end
    else
       PictureLogo := nil;
  end;
end;

function Retorno_SAT( codigo: integer): String;
var
  resu : String;
begin
 case codigo of
   100 : resu := 'CF-e SAT processado com sucesso ';
   101 : resu := 'CF-e SAT de cancelamento processado com sucesso ';
   102 : resu := 'CF-e SAT processado – verificar inconsistências ';
   103 : resu := 'CF-e SAT de cancelamento processado ';
   104 : resu := 'Não Existe Atualização do Software  ';
   105 : resu := 'Lote recebido com sucesso  ';
   106 : resu := 'Lote Processado  ';
   107 : resu := 'Lote em Processamento ';
   108 : resu := 'Lote não localizado ';
   109 : resu := 'Serviço em Operação';
   110 : resu := 'Status SAT recebido com sucesso  ';
   111 : resu := 'Reservado ';
   112 : resu := 'Assinatura do AC Registrada ';
   113 : resu := 'Consulta cadastro com uma ocorrência ';
   114 : resu := 'Consulta cadastro com mais de uma ocorrência ';
   115 : resu := 'Solicitação de dados efetuada com sucesso';
   116 : resu := 'Atualização do SB pendente ';
   117 : resu := 'Solicitação de Arquivo de Parametrização efetuada com sucesso ';
   118 : resu := 'Logs extraídos com sucesso  ';
   119 : resu := 'Comandos da SEFAZ pendentes ';
   120 : resu := 'Não existem comandos da SEFAZ pendentes  ';
   121 : resu := 'Certificado Digital criado com sucesso';
   122 : resu := 'CRT recebido com sucesso ';
   123 : resu := 'Adiar transmissão do lote ';
   124 : resu := 'Adiar transmissão do CF  ';
   125 : resu := 'CF-e de teste de produção emitido com sucesso ';
   126 : resu := 'CF-e de teste de ativação emitido com sucesso ';
   127 : resu := 'Erro na emissão de CF-e de teste de produção ';
   128 : resu := 'Erro na emissão de CF-e de teste de ativação ';
   129 : resu := 'Solicitações de emissão de certificados excedidas. (Somente ocorrerá no ambiente de testes) ';
   130 : resu := 'Reservado ';
   199 : resu := 'Reservado ';
   200 : resu := 'Rejeição: Status do equipamento SAT difere do esperado';
   201 : resu := 'Rejeição: Falha na Verificação da Assinatura do Número de segurança  ';
   202 : resu := 'Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital  ';
   203 : resu := 'Rejeição: Emissor não Autorizado para emissão da CF-e - SAT  ';
   204 : resu := 'Rejeição: Duplicidade de CF-e-SAT ';
   205 : resu := 'Rejeição: Equipamento SAT encontra - se Ativo ';
   206 : resu := 'Rejeição: Hora de Emissão do CF-e-SAT posterior à hora de recebimento.  ';
   207 : resu := 'Rejeição: CNPJ do emitente inválido   ';
   208 : resu := 'Rejeição: Equipamento SAT encontra - se Desativado ';
   209 : resu := 'Rejeição: IE do emitente inválida';
   210 : resu := 'Rejeição: Intervalo de tempo entre o CF-e-SAT emitido e a emissão do respectivo CF-e-SAT de cancelamento é maior que 30 (trinta) minutos. ';
   211 : resu := 'Rejeição: CNPJ não corresponde ao informado no processo de transferência. ';
   212 : resu := 'Rejeição: Data de Emissão do CF-e-SAT posterior à data de recebimento.';
   213 : resu := 'Rejeição: CNPJ - Base do Emitente difere do CNPJ - Base do Certificado Digital  ';
   214 : resu := 'Rejeição: Tamanho da mensagem excedeu o limite estabelecido ';
   215 : resu := 'Rejeição: Falha no schema XML ';
   216 : resu := 'Rejeição: Chave de Acesso difere da cadastrada ';
   217 : resu := 'Rejeição: CF-e - SAT não consta na base de dados da SEFAZ';
   218 : resu := 'Rejeição: CF-e - SAT já esta cancelado na base de dados da SEFAZ ';
   219 : resu := 'Rejeição: CNPJ não corresponde ao informado no processo de declaração de posse.';
   220 : resu := 'Rejeição: Valor do rateio do desconto sobre subtotal do item (N) inválido.  ';
   221 : resu := 'Rejeição: Aplicativo Comercial não vinculado ao SAT ';
   222 : resu := 'Rejeição: Assinatura do Aplicativo Comercial inválida ';
   223 : resu := 'Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta ';
   224 : resu := 'Rejeição: CNPJ da Software House inválido ';
   225 : resu := 'Rejeição: Falha no Schema XML do lote de CFe ';
   226 : resu := 'Rejeição: Código da UF do Emitente diverge da UF receptora  ';
   227 : resu := 'Rejeição: Erro na Chave de Acesso -Campo Id –falta a literal CFe';
   228 : resu := 'Rejeição: Valor do rateio do acréscimo sobre subtotal do item (N) inválido.';
   229 : resu := 'Rejeição: IE do emitente não informada   ';
   230 : resu := 'Rejeição: IE do emitente não autorizada para uso do SAT ';
   231 : resu := 'Rejeição: IE do emitente não vinculada ao CNPJ';
   232 : resu := 'Rejeição: CNPJ do destinatário do CF-e-SAT de cancelamento diferente daquele do CF-e-SAT a ser cancelado. ';
   233 : resu := 'Rejeição: CPF do destinatário do CF-e-SAT de cancelamento diferente daquele do CF-e-SAT a ser cancelado.';
   234 : resu := 'Alerta: Razão Social/Nome do destinatário em branco ';
   235 : resu := 'Rejeição: CNPJ do destinatario Invalido ';
   236 : resu := 'Rejeição: Chave de Acesso com dígito verificador inválido ';
   237 : resu := 'Rejeição: CPF do destinatario Invalido';
   238 : resu := 'Rejeição: CNPJ do emitente do CF-e-SAT de cancelamento diferente do CNPJ do CF-e-SAT a ser cancelado.';
   239 : resu := 'Rejeição: Versão do arquivo XML não suportada';
   240 : resu := 'Rejeição: Valor total do CF-e-SAT de cancelamento diferente do Valor total do CF-e-SAT a ser cancelado. ';
   241 : resu := 'Rejeição: diferença de transmissão e recebimento da mensagem superior a 5 minutos. ';
   242 : resu := 'Alerta: CFe dentro do lote estão fora de ordem. ';
   243 : resu := 'Rejeição: XML Mal Formado ';
   244 : resu := 'Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente  ';
   245 : resu := 'Rejeição: CNPJ Emitente não autorizado para uso do SAT  ';
   246 : resu := 'Rejeição: Campo cUFinexistente no elemento cfeCabecMsg do SOAP Header   ';
   247 : resu := 'Rejeição: Sigla da UF do Emitente diverge da UF receptora  ';
   248 : resu := 'Rejeição: UF do Recibo diverge da UF autorizadora ';
   249 : resu := 'Rejeição: UF da Chave de Acesso diverge da UF receptora';
   250 : resu := 'Rejeição: UF informada pelo SAT,  não é atendida pelo Web Service';
   251 : resu := 'Rejeição: Certificado enviado não confere com o escolhido na declaração de posse   ';
   252 : resu := 'Rejeição: Ambiente informado diverge do Ambiente de recebimento';
   253 : resu := 'Rejeição: Digito Verificador da chave de acesso composta inválida';
   254 : resu := 'Rejeição: Elemento cfeCabecMsg inexistente no SOAP Header ';
   255 : resu := 'Rejeição: CSR enviado inválido ';
   256 : resu := 'Rejeição: CRT enviado inválido  ';
   257 : resu := 'Rejeição: Número do série do equipamento inválido ';
   258 : resu := 'Rejeição: Data e/ou hora do envio inválida ';
   259 : resu := 'Rejeição: Versão do leiaute inválida ';
   260 : resu := 'Rejeição: UF inexistente ';
   261 : resu := 'Rejeição: Assinatura digital não encontrada ';
   262 : resu := 'Rejeição: CNPJ da software house não está ativo ';
   263 : resu := 'Rejeição: CNPJ do contribuinte não está ativo ';
   264 : resu := 'Rejeição: Base da receita federal está indisponível ';
   265 : resu := 'Rejeição: Número de série inexistente no cadastro do equipamento ';
   266 : resu := 'Falha na comunicação com a AC - SAT  ';
   267 : resu := 'Erro desconhecido na geração do certificado pela AC - SAT ';
   268 : resu := 'Rejeição: Certificado está fora da data de validade.  ';
   269 : resu := 'Rejeição: Tipo de atividade inválida  ';
   270 : resu := 'Rejeição: Chave de acesso do CFe a ser cancelado inválido.';
   271 : resu := 'Rejeição: Ambiente informado no CF-e difere do Ambiente de recebimento cadastrado.';
   272 : resu := 'Rejeição: Valor do troco negativo. ';
   273 : resu := 'Rejeição: Serviço Solicitado Inválido ';
   274 : resu := 'Rejeição: Equipamento não possui declaração de posse ';
   275 : resu := 'Rejeição: Status do equipamento diferente de Fabricado ';
   276 : resu := 'Rejeição: Diferença de dias entre a data de emissão e de recepção maior que o prazo legal ';
   277 : resu := 'Rejeição: CNPJ do emitente não está ativo junto à Sefaz na data de emissão ';
   278 : resu := 'Rejeição: IE do emitente não está ativa junto à Sefaz na data de emissão ';
   279 : resu := 'Reservado';
   280 : resu := 'Rejeição: Certificado Transmissor Inválido ';
   281 : resu := 'Rejeição: Certificado Transmissor  Data Validade ';
   282 : resu := 'Rejeição: Certificado Transmissor sem CNPJ  ';
   283 : resu := 'Rejeição: Certificado Transmissor -erro Cadeia de Certificação';
   284 : resu := 'Rejeição: Certificado Transmissor revogado  ';
   285 : resu := 'Rejeição: Certificado Transmissor difere ICP-Brasil';
   286 : resu := 'Rejeição: Certificado Transmissor erro no acesso a LCR';
   287 : resu := 'Rejeição: Código Município do FG -ISSQN: dígito inválido.  Exceto os códigos descritos no Anexo 2 que apresentam dígito inválido.';
   288 : resu := 'Rejeição: Data de emissão do CF-e-SAT a ser cancelado inválida ';
   289 : resu := 'Rejeição: Código da UF informada diverge da UF solicitada ';
   290 : resu := 'Rejeição: Certificado Assinatura inválido ';
   291 : resu := 'Rejeição: Certificado Assinatura Data Validade ';
   292 : resu := 'Rejeição: Certificado Assinatura sem CNPJ ';
   293 : resu := 'Rejeição: Certificado Assinatura - erro Cadeia de Certificação';
   294 : resu := 'Rejeição: Certificado Assinatura revogado  ';
   295 : resu := 'Rejeição: Certificado Raiz difere dos Válidos ';
   296 : resu := 'Rejeição: Certificado Assinatura erro no acesso a LCR ';
   297 : resu := 'Rejeição: Assinatura difere do calculado  ';
   298 : resu := 'Rejeição: Assinatura difere do padrão do Projeto ';
   299 : resu := 'Rejeição: Hora de emissão do CF-e-SAT a ser cancelado inválida ';
   401 : resu := 'Reservado ';
   479 : resu := 'Rejeição: Base de cálculo do PIS do item (N) inválido. ';
   480 : resu := 'Rejeição: Alíquota do PIS do item (N) inválido. ';
   481 : resu := 'Rejeição: Valor do PIS do Item (N) difere de Base de Calculo * Aliquota do PIS  ';
   482 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de 03)  ';
   483 : resu := 'Rejeição: Qtde Vendida do item (N) inválido.  ';
   484 : resu := 'Rejeição: Alíquota do PIS em R$ do item (N) inválido. ';
   485 : resu := 'ejeição: Valor do PIS do Item (N) difere de Qtde Vendida* Aliquota do PIS em R$';
   486 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de  04, 06, 07, 08 e 09)  ';
   487 : resu := 'Rejeição: Código de Situação Tributária do PIS inválido (diferente de  49) ';
   488 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de  99) ';
   489 : resu := 'Rejeição: Valor do PIS do Item (N) difere de Qtde Vendida* Aliquota do PIS em R$ e difere de Base de Calculo * Aliquota do PIS   ';
   490 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  01 e 02) ';
   491 : resu := 'Rejeição: Base de cálculo do COFINS  do item (N) inválido. ';
   492 : resu := 'Rejeição: Alíquota da COFINS do item (N) inválido. ';
   493 : resu := 'Rejeição: Valor da COFINS do Item (N) difere de Base de Calculo * Aliquota da COFINS ';
   494 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  03) ';
   495 : resu := 'Rejeição:  Valor do COFINS do Item (N) difere de Qtde Vendida* Aliquota do COFINS em R$ e difere de Base de Calculo * Aliquota do COFINS';
   496 : resu := 'Rejeição: Alíquota da COFINS em R$ do item (N) inválido.';
   497 : resu := 'Rejeição: Valor da COFINS do Item (N) difere de Qtde Vendida* Aliquota da COFINS em R$  ';
   498 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  04, 06, 07, 08 e 09)';
   499 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  49) ';
   500 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  99) ';
   501 : resu := 'Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal  ';
   502 : resu := 'Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes ';
   503 : resu := 'Rejeição: Valor das deduções para o ISSQN do item (N) inválido.';
   504 : resu := 'Rejeição: Valor da Base de Calculo do ISSQN do Item (N) difere de Valor do Item - Valor das deduções ';
   505 : resu := 'Rejeição: Alíquota efetiva do ISSQN do item (N) não é maior ou igual a  2,00 (2%) e menor ou igual a 5,00 (5%).';
   506 : resu := 'alor do ISSQN do Item (N) difere de Valor da Base de Calculo do ISSQN * Alíquota Efetiva do ISSQN  ';
   507 : resu := 'Rejeição: Indicador de rateio para ISSQN inválido ';
   508 : resu := 'Rejeição: Item da lista de Serviços do ISSQN do item (N) inválido.  ';
   509 : resu := 'Rejeição: Código municipal de Tributação do ISSQN do Item (N) em branco. ';
   510 : resu := 'Rejeição: Código de Natureza da Operação para ISSQN inválido  ';
   511 : resu := 'Rejeição: Indicador de Incentivo Fiscal do ISSQN do item (N) inválido (diferente de 1 e 2) ';
   512 : resu := 'Rejeição: Total do PIS difere do somatório do PIS dos itens ';
   513 : resu := 'Rejeição: Total do COFINS difere do somatório do COFINS dos itens ';
   514 : resu := 'Rejeição: Total do PIS-ST difere do somatório do PIS-ST dos itens  ';
   515 : resu := 'Rejeição: Total do COFINS-STdifere do somatório do COFINS-ST dos itens ';
   516 : resu := 'Rejeição: Total de Outras Despesas Acessórias difere do somatório de Outras Despesas Acessórias (acréscimo) dos itens';
   517 : resu := 'Rejeição: Total dos Itens difere do somatório do valor líquido dos itens ';
   518 : resu := 'Rejeição: Informado grupo de totais do ISSQN sem informar grupo de valores de ISSQN ';
   519 : resu := 'Rejeição: Total da BC do ISSQN difere do somatório da BC do ISSQN dos itens ';
   520 : resu := 'Rejeição: Total do ISSQN difere do somatório do ISSQN dos itens ';
   521 : resu := 'Rejeição: Total do PIS sobre serviços difere do somatório do PIS dos itens de serviços';
   522 : resu := 'Rejeição: Total do COFINS sobre serviços difere do somatório do COFINS dos itens de serviços  ';
   523 : resu := 'Rejeição: Total do PIS -ST sobre serviços difere do somatório do PIS-ST dos itens de serviços ';
   524 : resu := 'Rejeição: Total do COFINS-ST sobre serviços difere do somatório do COFINS-ST dos itens de serviços  ';
   525 : resu := 'Rejeição: Valor de Desconto sobre total inválido. ';
   526 : resu := 'Rejeição: Valor de Acréscimo sobre total inválido. ';
   527 : resu := 'Rejeição: Código do Meio de Pagamento inválido ';
   528 : resu := 'Rejeição: Valor do Meio de Pagamento inválido.  ';
   529 : resu := 'Rejeição: Valor de desconto sobre subtotal difere do somatório dos seus rateios nos itens. ';
   530 : resu := 'Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal ';
   531 : resu := 'Rejeição: Valor de acréscimo sobre subtotal difere do somatório dos seus rateios nos itens. ';
   532 : resu := 'Rejeição: Total do ICMS difere do somatório dos itens  ';
   533 : resu := 'Rejeição:  Valor aproximado dos tributos do CF-e-SAT –Lei 12741/12 inválido ';
   534 : resu := 'Rejeição:  Valor aproximado dos tributos do Produto ou serviço –Lei 12741/12 inválido.';
   535 : resu := 'Rejeição:  código da credenciadora de cartão de débito ou crédito inválido ';
   536 : resu := 'Reservado ';
   537 : resu := 'Rejeição: Total do Desconto difere do somatório dos itens ';
   538 : resu := 'Reservado ';
   539 : resu := 'Rejeição: Duplicidade de CF-e-SAT, com diferença na Chave de Acesso [99999999999999999999999999999999999999999]  ';
   540 : resu := 'Rejeição: CNPJ da Software House + CNPJ do emitente assinado no campo “signAC” difere do informado no campo “CNPJvalue”';
   541 : resu := '- ';
   554 : resu := 'Reservado ';
   555 : resu := 'Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador';
   556 : resu := '- ';
   563 : resu := 'Reservado';
   564 : resu := 'Rejeição: Total dos Produtos ou Serviços difere do somatório do valor dos Produtos ou Serviços dos itens';
   565 : resu := '- ';
   599 : resu := 'Reservado ';
   600 : resu := 'Serviço Temporariamente Indisponível  ';
   601 : resu := 'CF-e-SAT inidôneo por recepção fora do prazo';
   602 : resu := 'Rejeição: Status do equipamento não permite ativação';
   603 : resu := 'Arquivo inválido ';
   604 : resu := 'Erro desconhecido na verificação de comandos ';
   605 : resu := 'Tamanho do arquivo inválido  ';
   606 : resu := '-      ';
   998 : resu := 'Reservado';
   999 : resu := 'Rejeição: Erro não catalogado ';
  1001 : resu := 'Sem conexao com a Internet ou sitio da SEFAZ fora do Ar.';
  1002 : resu := 'Código da UF não confere com a Tabela do IBGE';
  1003 : resu := 'Código da UF diferente da UF registrada no SAT';
  1004 : resu := 'Rejeição: Versão do leiaute do arquivo de entrada do SAT não é válida';
  1005 : resu := 'Alerta: Versão do leiaute do arquivo de entrada do SAT não é a mais atual';
  1019 : resu := 'Rejeição: numeração dos itens não é sequencial crescente';
  1073 : resu := 'Rejeição: Valor de Desconto sobre total não é maior ou igual a zero.';
  1074 : resu := 'Rejeição: Valor de Acréscimo sobre total não é maior ou igual a zero.';
  1083 : resu := 'Sem conexão com a Rede Local';
  1084 : resu := 'Formatação do Certificado não é válido.';
  1085 : resu := 'Assinatura do Aplicativo Comercial não confere com o registro do SAT';
  1203 : resu := 'Rejeição: Emitente não  autorizado para uso do SAT.';
  1207 : resu := 'Rejeição: CNPJ do emitente inválido';
  1209 : resu := 'Rejeição: IE do emitente inválida';
  1218 : resu := 'Chave de acesso do CF-e-SAT já consta como cancelado';
  1220 : resu := 'Rejeição: Valor do rateio do desconto sobre subtotal do item (N) inválido.';
  1221 : resu := 'Aplicativo Comercial não vinculado ao SAT';
  1222 : resu := 'Rejeição: Assinatura do Aplicativo Comercial não é válida';
  1224 : resu := 'Rejeição: CNPJ da Software House inválido';
  1226 : resu := 'Rejeição: Código da UF do Emitente diverge da UF receptora.';
  1228 : resu := 'Rejeição: Valor do rateio do acréscimo sobre subtotal do item (N) inválido.';
  1229 : resu := 'Rejeição: IE do emitente não informada';
  1230 : resu := 'Rejeição: IE do emitente diferente da IE do contribuinte autorizado para uso do SAT';
  1234 : resu := 'Alerta: Razão Social/Nome  do destinatário em branco';
  1235 : resu := 'Rejeição: CNPJ do destinatário inválido';
  1237 : resu := 'Rejeição: CPF do destinatário inválido';
  1258 : resu := 'Rejeição: Data/hora inválida. Problemas com o relógio interno do SAT-CF-e';
  1287 : resu := 'Rejeição: Código Município do FG - ISSQN: dígito inválido. Exceto os códigos descritos no Anexo 2 que apresentam dígito inválido.';
  1408 : resu := 'Rejeição: Valor total do CF-e-SAT maior que o somatório dos valores de Meio de Pagamento empregados em seu pagamento.';
  1409 : resu := 'Rejeição: Valor total do CF-e-SAT supera o máximo permitido no arquivo de Parametrização de Uso';
  1450 : resu := 'Rejeição: Código de modelo de documento fiscal diferente de 59';
  1456 : resu := 'Rejeição: Código de Regime Tributário inválido';
  1457 : resu := 'Rejeição: Código de Natureza da Operação para ISSQN inválido';
  1459 : resu := 'Rejeição: Código do produto ou serviço em branco';
  1460 : resu := 'Rejeição: GTIN do item (N) inválido';
  1461 : resu := 'Rejeição: Descrição do produto ou serviço em branco';
  1462 : resu := 'Rejeição: CFOP não é de Operação de saída prevista para CF-e-SAT';
  1463 : resu := 'Rejeição: Unidade Comercial do produto ou serviço em branco';
  1464 : resu := 'Rejeição: Quantidade Comercial do item (N) inválido.';
  1465 : resu := 'Rejeição: Valor Unitário do item (N) inválido.';
  1467 : resu := 'Rejeição: Regra de cálculo do Item (N) inválido (diferente de "A" e "T")';
  1468 : resu := 'Rejeição: Valor do Desconto do item (N) inválido.';
  1469 : resu := 'Rejeição: Valor de outras despesas acessórias do item (N) inválido.';
  1471 : resu := 'Rejeição:Origem da mercadoria do Item (N) inválido (diferente de 0, 1 e 2)';
  1472 : resu := 'Rejeição:CST do Item (N) inválido (diferente de 00, 20, 90)';
  1473 : resu := 'Rejeição: Alíquota efetiva do ICMS do item (N) não é maior ou igual a zero.';
  1475 : resu := 'Rejeição:CST do Item (N) inválido   (diferente de 40 e 41 e 50 e 60)';
  1476 : resu := 'Rejeição:Código de situação da operação - Simples Nacional - do Item (N) inválido (diferente de 102, 300 e 500)';
  1477 : resu := 'Rejeição:Código de situação da operação - Simples Nacional - do Item (N) inválido (diferente de 900)';
  1478 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de 01, 02 e 05)';
  1479 : resu := 'Rejeição: Base de cálculo do PIS do item (N) inválido.';
  1480 : resu := 'Rejeição: Alíquota do PIS do item (N) não é maior ou igual a zero.';
  1482 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de 03)';
  1483 : resu := 'Rejeição: Qtde Vendida do item (N) não é maior ou igual a zero.';
  1484 : resu := 'Rejeição: Alíquota do PIS em R$ do item (N) não é maior ou igual a zero.';
  1486 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de  04, 06, 07, 08 e 09)';
  1487 : resu := 'Rejeição: Código de Situação Tributária do PIS inválido (diferente de  49)';
  1488 : resu := 'Rejeição: Código de Situação Tributária do PIS Inválido (diferente de  99)';
  1490 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  01, 02 e 05)';
  1491 : resu := 'Rejeição: Base de cálculo da COFINS  do item (N) inválido.';
  1492 : resu := 'Rejeição: Alíquota da COFINS do item (N) não é maior ou igual a zero.';
  1494 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  03)';
  1496 : resu := 'Rejeição: Alíquota da COFINS em R$ do item (N) não é maior ou igual a zero.';
  1498 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  04, 06, 07, 08 e 09)';
  1499 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  49)';
  1500 : resu := 'Rejeição: Código de Situação Tributária da COFINS Inválido (diferente de  99)';
  1501 : resu := 'Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal';
  1503 : resu := 'Rejeição: Valor das deduções para o ISSQN do item (N) não é maior ou igual a zero.';
  1505 : resu := 'Rejeição: Alíquota efetiva do ISSQN do item (N) não é maior ou igual a  2,00 (2%) e menor ou igual a 5,00 (5%).';
  1507 : resu := 'Rejeição: Indicador de rateio para ISSQN inválido';
  1508 : resu := 'Rejeição: Item da lista de Serviços do ISSQN do item (N) não é maior ou igual a zero.';
  1509 : resu := 'Rejeição:Código municipal de Tributação do ISSQN do Item (N) em branco.';
  1510 : resu := 'Rejeição: Código de Natureza da Operação para ISSQN inválido';
  1511 : resu := 'Rejeição: Indicador de Incentivo Fiscal do ISSQN do item (N) inválido (diferente de 1 e 2)';
  1527 : resu := 'Rejeição: Código do Meio de Pagamento inválido';
  1528 : resu := 'Rejeição: Valor do Meio de Pagamento inválido.';
  1533 : resu := 'Rejeição: Valor aproximado dos tributos do CF-e_SAT negativo.';
  1534 : resu := 'Rejeição: Valor aproximado dos tributos do produto negativo.';
  1535 : resu := 'Rejeição: código da credenciadora de cartão de débito ou crédito inválido';
  1999 : resu := 'Rejeição: Erro não identificado';
  1270 : resu := 'Erro Rejeição: Chave de acesso do CFe a ser cancelado inválido ';
  1412 : resu := 'Erro Rejeição: CFe de cancelamento não corresponde a um CFe emitido nos 30 minutos anteriores ao pedido de cancelamento';
  1210 : resu := 'Rej. Rejeição: Intervalo de tempo entre a emissão do CF-e a ser cancelado e a emissão do respectivo CF-e de cancelamento é maior que 30 (trinta) minutos.';
  1454 : resu := 'Erro Rejeição: CNPJ da Software House inválido ';
  1455 : resu := 'Erro Rejeição: Assinatura do Aplicativo Comercial não é válida';
  1232 : resu := 'Erro Rejeição: CNPJ do destinatário do CF-e de cancelamento diferente daquele do CF-e a ser cancelado.';
  1233 : resu := 'Erro Rejeição: CPF do destinatário do CF-e de cancelamento diferente daquele do CF-e a ser cancelado';
  4000 : resu := 'Ativado corretamente ';
  4001 : resu := 'Erro na criação do certificado ';
  4002 : resu := 'SEFAZ não reconhece este SAT (CNPJ inválido) ';
  4003 : resu := 'SAT já ativado  ';
  4004 : resu := 'SAT com uso cessado';
  4005 : resu := 'Erro de comunicação com a SEFAZ Tentar  novamente. ';
  4006 : resu := 'CSR  ICP - BRASIL criado  com sucesso ';
  4007 : resu := 'Erro na criação do CSR ICP-BRASIL ';
  4098 : resu := 'SAT em processamento. Tente novamente. ';
  4099 : resu := 'Erro desconhecido na ativação   ';
  5000 : resu := 'Certificado transmitido com Sucesso ';
  5001 : resu := 'Código de ativação inválido.  ';
  5002 : resu := 'Erro de comunicação com a SEFAZ. Tentar  novamente.';
  5003 : resu := 'Certificado Inválido  ';
  5098 : resu := 'SAT em processamento. Tente novamente.';
  5099 : resu := 'Erro desconhecido';
  6000 : resu := 'Emitido com sucesso + conteúdo notas.';
  6001 : resu := 'Código de ativação inválido. ';
  6002 : resu := 'SAT ainda não ativado. ';
  6003 : resu := 'SAT não vinculado ao AC  ';
  6004 : resu := 'Vinculação do AC não confere ';
  6005 : resu := 'Tamanho do CF-e-SAT superior a 1.500KB  ';
  6006 : resu := 'SAT bloqueado pelo contribuinte  ';
  6007 : resu := 'SAT bloqueado pela SEFAZ  ';
  6008 : resu := 'SAT bloqueado por falta de comunicação ';
  6009 : resu := 'SAT bloqueado, código de ativação incorreto ';
  6010 : resu := 'Erro de validação do conteúdo. ';
  6098 : resu := 'SAT em processamento. Tente novamente. ';
  6099 : resu := 'Erro desconhecido na emissão.  ';
  7000 : resu := 'Cupom cancelado com sucesso + conteúdo CF-e-SAT cancelado. ';
  7001 : resu := 'Código ativação inválido Verificar o código e tentar mais uma vez. ';
  7002 : resu := 'Cupom inválido  ';
  7003 : resu := 'SAT bloqueado pelo contribuinte Não é possível realizar venda  ';
  7004 : resu := 'SAT bloqueado pela SEFAZ';
  7005 : resu := 'SAT bloqueado por falta de comunicação';
  7006 : resu := 'SAT bloqueado, código de ativação incorreto ';
  7007 : resu := 'Erro de validação do conteúdo ';
  7098 : resu := 'SAT em processamento. Tente novamente.';
  7099 : resu := 'Erro desconhecido no cancelamento. ';
  9000 : resu := 'Emitido com sucesso ';
  9001 : resu := 'código ativação inválido  ';
  9002 : resu := 'SAT ainda não ativado. ';
  9098 : resu := 'SAT em processamento. Tente novamente.';
  9099 : resu := 'Erro desconhecido ';
 10000 : resu := 'Resposta com Sucesso.';
 10001 : resu := 'Código de ativação inválido ';
 10098 : resu := 'SAT em processamento. Tente novamente.';
 10099 : resu := 'Erro desconhecido  ';
 11000 : resu := 'Emitido com sucesso ';
 11001 : resu := 'código ativação inválido ';
 11002 : resu := 'SAT ainda não ativado. ';
 11003 : resu := 'Sessão não existe. ';
 11098 : resu := 'SAT em processamento. Tente novamente. ';
 11099 : resu := 'Erro desconhecido. ';
 12000 : resu := 'Rede Configurada com Sucesso ';
 12001 : resu := 'código ativação inválido ';
 12002 : resu := 'Dados fora do padrão a ser informado';
 12098 : resu := 'SAT em processamento. Tente novamente. ';
 12099 : resu := 'Erro desconhecido ';
 13000 : resu := 'Assinatura do AC ';
 13001 : resu := 'código ativação inválido ';
 13002 : resu := 'Erro de comunicação com a SEFAZ ';
 13003 : resu := 'Assinatura fora do padrão informado';
 13004 : resu := 'CNPJ da Software House + CNPJ do emitente assinado no campo “signAC” difere do informado no campo “CNPJvalue”';
 13098 : resu := 'SAT em processamento. Tente novamente. ';
 13099 : resu := 'Erro desconhecido ';
 14000 : resu := 'Software Atualizado com Sucesso';
 14001 : resu := 'Código de ativação inválido. ';
 14002 : resu := 'Atualização em Andamento ';
 14003 : resu := 'Erro na atualizaçãoNão foi possível';
 14004 : resu := 'Arquivo de atualização inválido  ';
 14098 : resu := 'SAT em processamento. Tente novamente.  ';
 14099 : resu := 'Erro desconhecido ';
 15000 : resu := 'Transferência completa Arquivos de Logs extraídos ';
 15001 : resu := 'Código de ativação  inválido. ';
 15002 : resu := 'Transferência em  andamento Aguardar termino de transmissão ';
 15098 : resu := 'SAT em processamento. Tente novamente. ';
 15099 : resu := 'Erro desconhecido Informar o administrador.';
 16000 : resu := 'Equipamento SAT bloqueado com sucesso. Confirmação de bloqueio do SAT.';
 16001 : resu := 'Código de ativação inválido. Verificar o código e tentar mais uma vez.';
 16002 : resu := 'Equipamento SAT já está bloqueado.';
 16003 : resu := 'Erro de comunicação com a SEFAZ Não foi possível bloquear o Equipamento SAT. ';
 16004 : resu := 'Não existe parametrização de bloqueio disponível.';
 16098 : resu := 'SAT em processamento. Tente novamente.';
 16099 : resu := 'Erro desconhecido Informar o administrador. ';
 17000 : resu := 'Equipamento SAT desbloqueado com sucesso.';
 17001 : resu := 'Código de ativação inválido. ';
 17002 : resu := 'SAT bloqueado pelo contribuinte. Verifique configurações na SEFAZ';
 17003 : resu := 'SAT bloqueado pela SEFAZ ';
 17004 : resu := 'Erro de comunicação com a SEFAZ ';
 17098 : resu := 'SAT em processamento. Tente novamente.';
 17099 : resu := 'Erro desconhecido Informar o administrador. ';
 18000 : resu := 'Código de ativação alterado com sucesso. ';
 18001 : resu := 'Código de ativação inválido. ';
 18002 : resu := 'Código de ativação de emergência Incorreto.';
 18098 : resu := 'SAT em processamento. Tente novamente.';
 18099 : resu := 'Erro desconhecido Informar o  administrador.';
 end;
 Result := inttostr(codigo) + ' - ' +  resu;


end;


function  RetIdxUltimaColVisivel(DBGrid: TDBGrid): integer;
var
  x: integer;
begin
  Result := -1;

  for x := DBGrid.Columns.Count-1 downto 0 do
  begin
	if  DBGrid.Columns.Items[x].Visible then
  	begin
    	Result := x;
    	Break;
  	end
	;
  end;
end;

function  NaoInsereDBGrid(DBGrid: TDBGrid; DataSet: TDataSet; Key: Word): Word;
begin
  { Não deixa inserir registros no DBGrid caso:
	1- estiver em modo de edição: E
	1.1- se clicar na tecla "Insert"; OU
	1.2- se clicar na tecla "Seta para baixo" E estiver no último registro; OU
	1.2- se clicar na tecla "Tab" E estiver no último registro E estiver na
     	última coluna visível. }
  Result := Key;

  if  dgEditing in DBGrid.Options then
	begin
  	if  ( Key = VK_INSERT )
  	or  ( (Key = VK_DOWN) and (DataSet.RecNo = DataSet.RecordCount) ) then
      	Result := 0
  	else
    	if  ( Key = VK_TAB ) and ( DataSet.RecNo = DataSet.RecordCount ) then
      	begin
        	if  ( DBGrid.SelectedIndex = RetIdxUltimaColVisivel(DBGrid) ) then
            	Result := 0;
      	end;

	end;
end;

procedure atualizacusto(pidproduto : integer; pTipo : String); //p produto, m materia prima s semi-acabado
Var
  vP, vM : Real;
begin
  if pTipo = 'M' then // Atualiza sa e produto que tenha essa MP
  begin
    //atualizando custo do sa
    //Verifica quais Semi-acabado tem essa materia-prima
    dm.qPesq.close;
    dm.qPesq.SQL.clear;
    dm.qPesq.SQL.add('select distinct semi_acabado.id from semi_acabado '+
                     ' inner join processo_sa on processo_sa.IdSemiAcabado = semi_acabado.id  '+
                     ' inner join processo_sa_i on processo_sa_i.IdProcesso_sa = processo_sa.Id '+
                     ' where processo_sa_i.idproduto = '+inttoStr(pidproduto) + ' and processo_sa_i.tipo = '+ quotedStr(ptipo));
    dm.qPesq.open;
    while dm.qPesq.EOF = false do  //while em todos os semi_acabado que tenha essa mp
    begin
       vP := 0;   //add Nilton 19/01/2022
       vM := 0;   //add Nilton 19/01/2022
       dm.qProcSA.close;
       dm.qProcSA.Params[0].asInteger := dm.qPesq.Fields[0].asInteger; //id do semiacabado
       dm.qProcSA.open;
       dm.qProcSA.first;
       while dm.qProcSA.eof = false do  //faz o while nos processos do sa
       begin
         Application.ProcessMessages;
         vP := vP + dm.qProcSACusto.asfloat;
         dm.qProcItemSA.close;
         dm.qProcItemSA.params[0].asInteger := dm.qProcSAID.asInteger;
         dm.qProcItemSA.open;
         dm.qProcItemSA.first;
         while dm.qProcItemSA.eof = false do  //while nos itens do SA
         begin
           Application.ProcessMessages;
           vM := vM + dm.qProcItemSAtot.asfloat;
           dm.qProcItemSA.next;
         end;
         dm.qProcSA.next;
       end;

        if (vP > 0) or (vM > 0) then
        begin
           Execsql('update semi_acabado set totprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                   ', totmp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                   ', custototal = ' + PontoVirgula(formatfloat('#0.0000000', vP + vM )) +
                   ' where id = ' + dm.qPesq.Fields[0].text  );

        end;

        //Verifica os produtos que tem esse semi_acabado para atualizar o custo
        dm.qSelPesq.close;
        dm.qSelPesq.SQL.clear;
        dm.qSelPesq.SQL.add('select distinct produto.id from produto '+
                            ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                            ' where ficha_tecnica.iditem = '+dm.qPesq.Fields[0].text+' and ficha_tecnica.tipo = ''S'' ');
        dm.qSelPesq.open;
        dm.qSelPesq.first;
        while dm.qSelPesq.eof = false do
        begin
          vP := 0;
          vM := 0;


          dm.qFicha.Close;
          dm.qFicha.Params[0].value := dm.qSelPesq.Fields[0].asInteger;
          dm.qFicha.Open;


          dm.qFicha.first;
          while dm.qFicha.eof = false do
          begin
            vP := vP + dm.qFichatotprocesso.asfloat;
            vM := vM + dm.qFichatotmp.asfloat;
            dm.qFicha.next;
          end;

          execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                  ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                  ' where produto.id = ' + dm.qSelPesq.Fields[0].text );

          //Atualiza os produtos que tem esse produto.
          dm.qSel.close;
          dm.qSel.SQL.clear;
          dm.qSel.SQL.add('select distinct produto.id from produto '+
                          ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                          ' where ficha_tecnica.iditem = '+dm.qSelPesq.Fields[0].text+' and ficha_tecnica.tipo = ''P'' ');
          dm.qSel.open;
          dm.qSel.first;
          while dm.qSel.eof = false do
          begin
            vP := 0;
            vM := 0;

            dm.qFicha.Close;
            dm.qFicha.Params[0].value := dm.qSel.Fields[0].asInteger;
            dm.qFicha.Open;
            dm.qFicha.first;
            while dm.qFicha.eof = false do
            begin
              vP := vP + dm.qFichatotprocesso.asfloat;
              vM := vM + dm.qFichatotmp.asfloat;
              dm.qFicha.next;
            end;

            execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                    ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                    ' where produto.id = ' + dm.qSel.Fields[0].text );
            calculaprecopro(dm.qSel.Fields[0].asInteger);
            dm.qSel.next;
          end;
          calculaprecopro(dm.qSelPesq.Fields[0].asInteger);
          dm.qSelPesq.next;
        end;

     dm.qPesq.next;
    end;

    //Atualiza os produtos que tem essa MP
    dm.qSelPesq.close;
    dm.qSelPesq.SQL.clear;
    dm.qSelPesq.SQL.add('select distinct produto.id from produto '+
                    ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                    ' where ficha_tecnica.iditem = '+inttoStr(pidproduto)+' and ficha_tecnica.tipo = '+quotedStr(pTipo) );
    dm.qSelPesq.open;
    dm.qSelPesq.first;
    while dm.qSelPesq.eof = false do
    begin
      vP := 0;
      vM := 0;

      dm.qFicha.Close;
      dm.qFicha.Params[0].value := dm.qSelPesq.Fields[0].asInteger;
      dm.qFicha.Open;
      dm.qFicha.first;
      while dm.qFicha.eof = false do
      begin
        vP := vP + dm.qFichatotprocesso.asfloat;
        vM := vM + dm.qFichatotmp.asfloat;
        dm.qFicha.next;
      end;

      execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
              ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
              ' where produto.id = ' + dm.qSelPesq.Fields[0].text );
      calculaprecopro(dm.qSelPesq.Fields[0].asInteger);

      //Atualiza os produtos que tem esse produto.
      dm.qSel.close;
      dm.qSel.SQL.clear;
      dm.qSel.SQL.add('select distinct produto.id from produto '+
                      ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                      ' where ficha_tecnica.iditem = '+dm.qSelPesq.Fields[0].text+' and ficha_tecnica.tipo = ''P'' ');
      dm.qSel.open;
      dm.qSel.first;
      while dm.qSel.eof = false do
      begin
        vP := 0;
        vM := 0;

        dm.qFicha.Close;
        dm.qFicha.Params[0].value := dm.qSel.Fields[0].asInteger;
        dm.qFicha.Open;
        dm.qFicha.first;
        while dm.qFicha.eof = false do
        begin
          vP := vP + dm.qFichatotprocesso.asfloat;
          vM := vM + dm.qFichatotmp.asfloat;
          dm.qFicha.next;
        end;

        execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                ' where produto.id = ' + dm.qSel.Fields[0].text );
        calculaprecopro(dm.qSel.Fields[0].asInteger);
        dm.qSel.next;
      end;
      calculaprecopro(dm.qSelPesq.Fields[0].asInteger);
      dm.qSelPesq.next;
    end;


  end
  else
  if pTipo = 'S' then //Semi-Acabado
  begin
    //Verifica os produtos que tem esse semi_acabado para atualizar o custo
    dm.qSelPesq.close;
    dm.qSelPesq.SQL.clear;
    dm.qSelPesq.SQL.add('select distinct produto.id from produto '+
                        ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                        ' where ficha_tecnica.iditem = '+inttoStr(pidproduto)+' and ficha_tecnica.tipo = ''S'' ');
    dm.qSelPesq.open;
    dm.qSelPesq.first;
    while dm.qSelPesq.eof = false do
    begin
      vP := 0;
      vM := 0;


      dm.qFicha.Close;
      dm.qFicha.Params[0].value := dm.qSelPesq.Fields[0].asInteger;
      dm.qFicha.Open;


      dm.qFicha.first;
      while dm.qFicha.eof = false do
      begin
        vP := vP + dm.qFichatotprocesso.asfloat;
        vM := vM + dm.qFichatotmp.asfloat;
        dm.qFicha.next;
      end;

      execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
              ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
              ' where produto.id = ' + dm.qSelPesq.Fields[0].text );
      calculaprecopro(dm.qSelPesq.Fields[0].asInteger);
      //Atualiza os produtos que tem esse produto.
      dm.qSel.close;
      dm.qSel.SQL.clear;
      dm.qSel.SQL.add('select distinct produto.id from produto '+
                      ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                      ' where ficha_tecnica.iditem = '+dm.qSelPesq.Fields[0].text+' and ficha_tecnica.tipo = ''P'' ');
      dm.qSel.open;
      dm.qSel.first;
      while dm.qSel.eof = false do
      begin
        vP := 0;
        vM := 0;

        dm.qFicha.Close;
        dm.qFicha.Params[0].value := dm.qSel.Fields[0].asInteger;
        dm.qFicha.Open;
        dm.qFicha.first;
        while dm.qFicha.eof = false do
        begin
          vP := vP + dm.qFichatotprocesso.asfloat;
          vM := vM + dm.qFichatotmp.asfloat;
          dm.qFicha.next;
        end;

        execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                ' where produto.id = ' + dm.qSel.Fields[0].text );
        calculaprecopro(dm.qSel.Fields[0].asInteger);
        dm.qSel.next;
      end;
      calculaprecopro(dm.qSelPesq.Fields[0].asInteger);
      dm.qSelPesq.next;
    end;

  end
  else
  if pTipo = 'P' then //Produto
  begin
    //Atualiza os produtos que tem esse produto.
      dm.qSel.close;
      dm.qSel.SQL.clear;
      dm.qSel.SQL.add('select distinct produto.id from produto '+
                      ' inner join ficha_tecnica on ficha_tecnica.idproduto = produto.id  '+
                      ' where ficha_tecnica.iditem = '+inttoStr(pidproduto)+' and ficha_tecnica.tipo = ''P'' ');
      dm.qSel.open;
      dm.qSel.first;
      while dm.qSel.eof = false do
      begin
        vP := 0;
        vM := 0;

        dm.qFicha.Close;
        dm.qFicha.Params[0].value := dm.qSel.Fields[0].asInteger;
        dm.qFicha.Open;
        dm.qFicha.first;
        while dm.qFicha.eof = false do
        begin
          vP := vP + dm.qFichatotprocesso.asfloat;
          vM := vM + dm.qFichatotmp.asfloat;
          dm.qFicha.next;
        end;

        execSQL('update produto set custoprocesso = '+ PontoVirgula(formatfloat('#0.0000000', vP )) +
                ', customp = ' + PontoVirgula(formatfloat('#0.0000000', vM )) +
                ' where produto.id = ' + dm.qSel.Fields[0].text );
        calculaprecopro(dm.qSel.Fields[0].asInteger);
        dm.qSel.next;
      end;

      //dm.qSelPesq.next;

  end;




end;

procedure calculaprecopro(pidproduto : Integer);
Var
  cusMaster: Real;
begin
  dm.qProduto.close;
  dm.qProduto.Params[0].asInteger := pidproduto;
  dm.qProduto.open;
  dm.qProduto.edit;
 if not (dm.qProduto.state in [dsEdit, dsInsert]) then
     Exit;


  if (dm.qParametromargem_minima.AsFloat > 0) and (dm.qProdutomargem.asfloat < dm.qParametromargem_minima.AsFloat) then
     if dm.qUser.Locate('Nome_1', 'PER_MINIMA', [] )  then
            if dm.qUserPermitido.Text = 'F' then
                dm.qProdutomargem.AsFloat := dm.qParametromargem_minima.AsFloat;

  if dm.qProdutoIdCxMaster.AsInteger > 0 then
  begin
     dm.qMp.Locate('id', dm.qProdutoIdCxMaster.AsInteger, [] );
     if (dm.qMPprecocompra.AsFloat > 0) and (dm.qProdutomultiplo.asfloat > 0) then
        cusMaster := dm.qMPprecocompra.AsFloat / dm.qProdutomultiplo.asfloat
      else
        cusMaster := 0;
  end
  else
     cusMaster := 0;

  dm.qProdutoCustoCxMaster.AsFloat := cusMaster;

  if dm.qProdutoproduzido.asString = 'S' then   //ficha tecnica
  begin
    dm.qProdutoCustoproducao.asfloat    := dm.qProdutoCustoProcesso.asfloat + dm.qProdutoCustoMP.asfloat + dm.qProdutoCusto_montagem.asfloat;
    if (dm.qProdutoCustoproducao.asfloat > 0) and (dm.qParametroPorCustoOpera.asfloat > 0) then
       dm.qProdutoCustoOperacional.asfloat := dm.qProdutoCustoproducao.asfloat * dm.qParametroPorCustoOpera.asfloat / 100
    else
       dm.qProdutoCustoOperacional.asfloat := 0;
    dm.qProdutoCustoFinal.asfloat       := dm.qProdutoCustoproducao.asfloat + dm.qProdutoCustoOperacional.asfloat + dm.qProdutoCustoCxMaster.AsFloat;

  end
  else
  begin
    dm.qProdutoCustoFinal.asfloat       := dm.qProdutoPrecoCompra.asfloat + dm.qProdutoCustoOperacional.asfloat + dm.qProdutoCustoCxMaster.AsFloat;
  end;

  if (dm.qProdutomargem.asfloat > 0) then
      dm.qProdutoVendaSugerido.asfloat    := dm.qProdutoCustoFinal.asfloat +
                                  (dm.qProdutoCustoFinal.asfloat * dm.qProdutomargem.asfloat / 100)
  else
      dm.qProdutoVendaSugerido.asfloat    := dm.qProdutoCustoFinal.asfloat;

  if DM.qParametrovenda_desc_margem.Text = 'S' then // TESTE - somente itu acos
  begin
     dm.qProdutovalor.AsFloat  := dm.qProdutoVendaSugerido.AsFloat;
     dm.qProdutovalor2.AsFloat := dm.qProdutoVendaSugerido.AsFloat;
  end;

  dm.qProduto.post;
  dm.qProduto.ApplyUpdates;

end;


Procedure CustoTotal;
begin
  dm.qMPTotal.close;
  dm.qMPTotal.open;
  dm.qMPTotal.first;
  while dm.qMPTotal.eof = false do
  begin
    barraProgressoMenu('Atualizando MP', true, dm.qMPTotal.RecNo, dm.qMPTotal.RecordCount);
    atualizacusto(dm.qMPTotalID.asinteger, 'M'); //p produto, m materia prima s semi-acabado
    dm.qMPTotal.next;
  end;

  dm.qSATotal.close;
  dm.qSATotal.open;
  dm.qSATotal.first;
  while dm.qSATotal.eof = false do
  begin
    barraProgressoMenu('Atualizando SA', true, dm.qSATotal.RecNo, dm.qSATotal.RecordCount);
    atualizacusto(dm.qSATotalID.asinteger, 'S');
    dm.qSATotal.next;
  end;

  dm.qProTotal.close;
  dm.qProTotal.open;
  dm.qProTotal.first;
  while dm.qProTotal.eof = false do
  begin
    barraProgressoMenu('Atualizando produto', true, dm.qProTotal.RecNo, dm.qProTotal.RecordCount);
    atualizacusto(dm.qProTotalID.asinteger, 'P');
    dm.qProTotal.next;
  end;
  barraProgressoMenu('' , false, 0, 0);
end;


procedure AtualizaQtdDisponivel(pidProduto : Integer; vAtualizarWeb : Boolean = true);
begin
  dm.qEstoqueDisponivel.Close;
  dm.qEstoqueDisponivel.ParamByName('prod').AsInteger := pidProduto;
  dm.qEstoqueDisponivel.Open;
  //Atualiza estoque disponivel na tabela para subir para a web
  execSQL('update tabela_i set sincronizado = ''N'', qtdeEstoque = '+pontovirgula(formatFloat('0.000', dm.qEstoqueDisponivelQtdDisponivel.asFloat))+
          ' where idproduto = '+inttoStr(pidProduto));
  sleep(100);

  if vAtualizarWeb then
    atualizaWeb;

  sleep(100);
end;

function BuscaLoteOP : Integer;
begin
  dm.qPesq.Close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select top 1 coalesce(lote,0) lote from op order by lote desc');
  dm.qPesq.Open;
  if dm.qPesq.fieldByName('lote').AsInteger > 0 then
    result := dm.qPesq.fieldByName('lote').AsInteger + 1
  else
    result := 1;
end;

function BuscaLoteLetraOP : string;
var
  vLote, vLetraP, vProximaL, vLetraAnt, vLUsar : string;
  vPosicao : integer;
  vDTOp : Tdate;
begin
  try
    dm.qParametro.Edit;
    vLetraAnt   := dm.qParametroL_LetraAnterior.AsString;
    vLetraP     := dm.qParametroL_posicaoLetra.AsString;

    if MonthOf(date) = 1 then // janeiro  ver se última op do ano passado, mudar sequencia de lote
    begin
      vDTOp := strtodatedef( QueryConsulta('select max(data) from op ') , date);

      if YearOf(vDTOp) <> YearOf(date) then // última op do ano passado mudar o role do lote
      begin
        //dm.qParametro.Edit;
        //dm.qParametroL_posicaoLetra.AsString := 'A';
        //dm.qParametroL_LetraAnterior.AsString := '';
        //dm.qParametroL_Posicao.AsInteger := 1;
        //dm.qParametro.Post;
        //dm.qParametro.close;
        //dm.qParametro.open;

        //próxima letra
        vProximaL := BuscaProximaLetra(vLetraP);

        vPosicao := dm.qParametroL_Posicao.AsInteger;

        if vProximaL = 'A' then  //trocar letra
        begin
          if vLetraAnt = '' then // 1ª letra
            vLetraAnt := vProximaL
          else   //ver como muda pra B   usar posição
          begin
            if vPosicao = 0  then vPosicao := 1;
            vLUsar  := copy(vLetraAnt, vPosicao, 1);

            //próxima letra
            vLUsar := BuscaProximaLetra(copy(vLetraAnt, vPosicao, 1));

            if vLUsar = 'A' then // usou todas a té o z = pular pra próxima
            begin
              vLetraAnt := vLetraAnt + vLUsar ;
              vPosicao  := vPosicao +1;
            end
            else
            begin
              if vPosicao = 1 then     //trocar letra
                vLetraAnt := vLUsar
              else
                vLetraAnt := copy(vLetraAnt, 1, vPosicao -1) +vLUsar;  //acrescentar letra no ultimo caracter
            end;
          end;
        end;

        dm.qParametroL_posicaoLetra.AsString := vProximaL;
        if dm.qParametroL_LetraAnterior.AsString <> vLetraAnt then
          dm.qParametroL_LetraAnterior.AsString := vLetraAnt;
        if dm.qParametroL_Posicao.AsInteger <> vPosicao  then
          dm.qParametroL_Posicao.AsInteger := vPosicao;
      end;
    end;

    dm.qParametroL_Num.AsInteger := dm.qParametroL_Num.AsInteger + 1;
    dm.qParametro.Post;
  finally
    dm.qParametro.close;
    dm.qParametro.open;
  end;

  // letra atual q irá usar
  //vLetraP := dm.qParametroL_posicaoLetra.AsString;

  if vLetraP = '' then  //inicio em A
  begin
    DM.qParametro.Edit;
    vLetraP := 'A';
    dm.qParametroL_posicaoLetra.AsString := vLetraP;
    dm.qParametro.Post;
  end;

  vLetraAnt := dm.qParametroL_LetraAnterior.AsString;

  // Formaçao do lote;
  vLote := dm.qParametroL_Letra.AsString + dm.qParametroL_Num.AsString + vLetraAnt + DM.qParametroL_posicaoLetra.AsString;

  //próxima letra

  {vProximaL := BuscaProximaLetra(vLetraP);

  vPosicao := dm.qParametroL_Posicao.AsInteger;

  if vProximaL = 'A' then  //trocar letra
  begin
    if vLetraAnt = '' then // 1ª letra
      vLetraAnt := vProximaL
    else   //ver como muda pra B   usar posição
    begin
      if vPosicao = 0  then vPosicao := 1;
      vLUsar  := copy(vLetraAnt, vPosicao, 1);

      //próxima letra
      vLUsar := BuscaProximaLetra(copy(vLetraAnt, vPosicao, 1));

      if vLUsar = 'A' then // usou todas a té o z = pular pra próxima
      begin
        vLetraAnt := vLetraAnt + vLUsar ;
        vPosicao  := vPosicao +1;
      end
      else
      begin
        if vPosicao = 1 then     //trocar letra
          vLetraAnt := vLUsar
        else
          vLetraAnt := copy(vLetraAnt, 1, vPosicao -1) +vLUsar;  //acrescentar letra no ultimo caracter
      end;
    end;
  end;

  dm.qParametro.Edit;
  dm.qParametroL_posicaoLetra.AsString := vProximaL;
  if dm.qParametroL_LetraAnterior.AsString <> vLetraAnt then
    dm.qParametroL_LetraAnterior.AsString := vLetraAnt;
  if dm.qParametroL_Posicao.AsInteger <> vPosicao  then
    dm.qParametroL_Posicao.AsInteger := vPosicao;
  dm.qParametro.Post;  }

  Result := vLote;
end;

function BuscaProximaLetra(aLetraAtual: String): String;
begin
  case AnsiIndexStr(aLetraAtual,
    ['A','B','C','D','E','F','G', 'H', 'I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']) of

     0 : Result := 'B';
     1 : Result := 'C';
     2 : Result := 'D';
     3 : Result := 'E';
     4 : Result := 'F';
     5 : Result := 'G';
     6 : Result := 'H';
     7 : Result := 'I';
     8 : Result := 'J';
     9 : Result := 'K';
    10 : Result := 'L';
    11 : Result := 'M';
    12 : Result := 'N';
    13 : Result := 'O';
    14 : Result := 'P';
    15 : Result := 'Q';
    16 : Result := 'R';
    17 : Result := 'S';
    18 : Result := 'T';
    19 : Result := 'U';
    20 : Result := 'V';
    21 : Result := 'W';
    22 : Result := 'X';
    23 : Result := 'Y';
    24 : Result := 'Z';
    25 : Result := 'A';
  end;
end;

end.

