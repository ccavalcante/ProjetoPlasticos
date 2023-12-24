unit uFuncao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  StdCtrls,Dialogs, StrUtils, DB, ADODB, ibx.IBQuery, ibx.IBCustomDataSet,DBGrids,
  Printers, winInet, IdAttachmentFile, IDsmtp,  ZSqlUpdate, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComObj;

type
  TfFuncao = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFuncao: TfFuncao;
  eNumNF, eData, eChave, ePDF, eXML : String;
  Function Completa(campo: string; tam: integer): String;
  Function AlignRigth(campo: string; tam: integer): String;
  function CPF(Num: String): Boolean;
  function CNPJ(Num: String): Boolean;
  function NomeComputador : String;
  function PontoVirgula(Valor: string): String;
  function PontoVirgulaECF(Valor: string): String;
  Procedure FormataTabela(Tabela : TIBDataSet; Mascara : String);
  Procedure FormataQuery(Query : TIBQuery; Mascara : String);
  Function TiraCaracter(Texto, Caracter : String): String;
  function GeraEan13(codigo:string):String;
  Function AlignCenter(campo: string; tam: integer): String;
  Function PreencheChar(Caracter : String; Qtd : Integer):String;
  Function TrocaCaracter(Texto, Caracter, NovoCaracter : String): String;
  function GravarTXT(NomArquivo, Texto : String): integer;
  procedure somente_numero(var key : char);  // permitir digitar apenas números
  procedure somente_numero_com_ponto(var key: char);
  procedure consultagrid(_sql:string; var query: TIBQuery; var DBGrid: TDBGrid; edit :Tcustomedit);overload;
  procedure consultagrid(_sql:string; var query: TIBQuery; edit :Tcustomedit);overload;
  procedure posicionagrid(var grid : Tdbgrid ; controle : TWinControl);
  function RetiraString( str1: string; str2: string): string;
  function StrZero(const AValue: integer; ALength: integer): string;
  function FormataValorCheque(strValor : string): string;
  Function QuebraTexto(X : String; Tamanho : integer) : String;
  function semacento(texto: string): string; stdcall;
  procedure somente_numero_sem_virgula(var key: char);
  function MouseShowCursor(const Show: boolean): boolean;
  function VerificaErroNFe( cErro : string): boolean;
  function ValidaEmail(email:String):boolean;
  procedure EscolheImpressora(nomeImp:String);
  function BuscaCodUf( est : string): Integer;
  function formatacpf_cnpj( tx: string):string;
  function ZeroEsquerda(fTermo:String;fQuant:Integer):String;
  function FiltraNumero(fAux:String):string;
  function AlinhaTXT(pTexto:String;pAlinha,pTamanho:Integer):String;
  function IsConectadoNaInternet: Boolean;
  Procedure EnviarEmailCanc(Assunto, Msg, EmailFor, ArquivoXML : String);
  Function DataExtenso(Data: TDate; DiaSemana, Promi :string) : String;
  function FindFile(aPath, FileName : string; SubDir : Boolean = True) : String;
  function tira_delete_grid(var key: word; shift: TShiftState ):boolean;
  function FormEstaCriado(AClass: TClass): Boolean;
  function retornaNumeros(Caracter : String):String;
  function formatatelefone( tx: string):string;
  Function SomenteLetras(Texto : String): String;
  function formataCEP( tx: string):string;
  function diasUteis(Data:Tdate;Dias:integer):Tdate;
  function buscaUltimoDia(m, a:integer):Integer;
  function buscaMesDescricao(Dt:TDate):String;
  function ValidaData(Sender: TField; Text: String): Boolean;
  function HoraParaSegundos(hr:String):LongInt;
  function SegundosParaHora(Sg:LongInt):String;
  Procedure ExportExcel(Query : TZQuery; Titulo : String);

implementation

uses uDM, envioEmail, tbExtenso;

{$R *.dfm}

function HoraParaSegundos(hr:String):Integer;
var
  h, m, s: integer;
begin
  h := strtoint(copy(hr, 1, 2));
  m := strtoint(copy(hr, 4, 2));
  s := strtoint(copy(hr, 7, 2));
  Result := ((h * 60)*60) + (m*60) + s;
end;

function SegundosParaHora(Sg:Integer):String;
var
  h, m, s, rt: integer;
begin
  h := Sg div 3600;
  s := Sg mod 3600;
  m := S  div 60;
  s := S  mod 60;
  Result := formatfloat('00', h) + ':' + formatfloat('00', m) + ':' + formatfloat('00', s);

end;

function buscaMesDescricao(Dt:TDate):String;
var
  m: integer;
begin
  m := strtoint(formatdatetime('mm', dt));
  case m of
     1 : Result := 'Janeiro';
     2 : Result := 'Fevereiro';
     3 : Result := 'Março';
     4 : Result := 'Abril';
     5 : Result := 'Maio';
     6 : Result := 'Junho';
     7 : Result := 'Julho';
     8 : Result := 'Agosto';
     9 : Result := 'Setembro';
    10 : Result := 'Outubro';
    11 : Result := 'Novembro';
    12 : Result := 'Dezembro';
  end;

end;

function buscaUltimoDia(m, a:integer):Integer;
begin
  if m in [1,3,5,7,8,10,12] then
    result := 31
  else
  if m in [4,6,9,11] then
    result := 30
  else
  if m = 2 then begin
    if IsLeapYear(a) then
       result := 29
    else
       result := 28;
  end;

end;


function diasUteis(Data:Tdate;Dias:integer):Tdate;
var
 Datainicial:Tdate;
 DataFinal:Tdate;
begin
datainicial:=data+1;
datafinal:=data+dias;
 while (Datainicial)<=Datafinal do
   begin
     if trunc(datainicial) mod 7 = 1 then
       begin
         datafinal:=Datafinal+1;
       end;
     datainicial:=datainicial+1;
   end;
 if trunc(datafinal) mod 7 = 1 then
  result:=datafinal+1
 else
  result:=datafinal;
end;


function tira_delete_grid(var key: word; shift: TShiftState ):boolean;
begin
   {
      if tira_delete_grid(key, shift) then
       abort;
   }
  result := false;

  if (key = VK_INSERT) THEN
      Result := true
  else
  if ((Shift=[ssCtrl]) and (key = vk_delete)) THEN
      Result := true
  else
  if ((Shift=[ssCtrl,ssShift]) and (key = VK_INSERT)) THEN
      Result := true
  else
  if ((Shift=[ssCtrl,ssShift]) and (key = vk_delete)) THEN
      Result := true;

end;


Function DataExtenso(Data: TDate; DiaSemana, Promi :string) : String;
var
  nrdia: Integer;
  diasem : array[1..7] of string;
  meses: array[1..12] of string;
  dia, mes, ano: Word;
  AnoEx, DiaEx : String;
begin
  diasem[1]:= 'DOMINGO';
  diasem[2]:= 'SEGUNDA-FEIRA';
  diasem[3]:= 'TERÇA-FEIRA';
  diasem[4]:= 'QUARTA-FEIRA';
  diasem[5]:= 'QUINTA-FEIRA';
  diasem[6]:= 'SEXTA-FEIRA';
  diasem[7]:= 'SÁBADO';

  meses[1]:= 'Janeiro';
  meses[2]:= 'Fevereiro';
  meses[3]:= 'Março';
  meses[4]:= 'Abril';
  meses[5]:= 'Maio';
  meses[6]:= 'Junho';
  meses[7]:= 'Julho';
  meses[8]:= 'Agosto';
  meses[9]:= 'Setembro';
  meses[10]:= 'Outubro';
  meses[11]:= 'Novembro';
  meses[12]:= 'Dezembro';




  DecodeDate(Data, ano, mes, dia);

  nrdia:= DayOfWeek(Data);

  DiaEx := NumeroPorExtensoMasculino(dia);
  AnoEx := NumeroPorExtensoMasculino(ano);

  if DiaSemana = 'S' then
   Result := diasem[nrdia]+ ', '+IntToStr(dia)+' de '+meses[mes]+' de '+IntToStr(ano)
  else
   Result := IntToStr(dia)+' de '+meses[mes]+
        ' de '+IntToStr(ano);

  if Promi = 'S' then
   BEGIN
    IF dia = 1 THEN
     Result := 'AO PRIMEIRO DIA DO MES DE '+MESES[MES]+' DO ANO DE '+AnoEx
    ELSE
     Result := 'AOS '+DiaEx+' DIAS DO MES DE '+MESES[MES]+' DO ANO DE '+AnoEx;
   END;

end;



function IsConectadoNaInternet: Boolean;
begin
  Result := InternetCheckConnection('http://www.google.com.br/', 1, 0);
end;


function AlinhaTXT(pTexto:String;pAlinha,pTamanho:Integer):String;
var i, aux:Integer;
begin
  // pAlinha 0 = Esquerdo
  //         1 = Direito
  Result := pTexto;
  aux := pTamanho-length(pTexto);
  for i:=1 to aux do
  begin
    if pAlinha = 0 then
       Result := ' '+Result
    else if pAlinha = 1 then
       Result := Result+' ';
  end;

end;


function FiltraNumero(fAux:String):string;
var i:Integer;
begin
  Result := '';
  for i:=1 to length(fAux) do
  begin
    if (Copy(fAux,i,1) = '1') or
       (Copy(fAux,i,1) = '2') or
       (Copy(fAux,i,1) = '3') or
       (Copy(fAux,i,1) = '4') or
       (Copy(fAux,i,1) = '5') or
       (Copy(fAux,i,1) = '6') or
       (Copy(fAux,i,1) = '7') or
       (Copy(fAux,i,1) = '8') or
       (Copy(fAux,i,1) = '9') or
       (Copy(fAux,i,1) = '0') then
     begin
       Result := Result + Copy(fAux,i,1);
     end;
  end;
end;


function ZeroEsquerda(fTermo:String;fQuant:Integer):String;
var aux:String;
    i:Integer;
begin
  Result := '';
  aux := Trim(fTermo);
  for i:=1 to fQuant-length(aux) do
  begin
    Result := Result + '0';
  end;
  Result := Result + aux;

end;

function formataTelefone( tx: string):string;
var
  i  : integer;
  tt : string;
begin
   tt := '';
   for i := 1 to length(trim(tx)) do begin
     if tx[i] in ['0'..'9'] then
        tt := tt + tx[i];
   end;
   if length(tt) = 11 then begin
      tt := '(' + copy(tt,1,2)+')'+copy(tt,3,5)+'-'+copy(tt,8,4);
   end
   else
   if length(tt) = 10 then begin
      tt := '(' + copy(tt,1,2)+')'+copy(tt,3,4)+'-'+copy(tt,7,4);
   end;
   result := tt;

end;

function formataCEP( tx: string):string;
var
  i  : integer;
  tt : string;
begin
   tt := '';
   for i := 1 to length(trim(tx)) do begin
     if tx[i] in ['0'..'9'] then
        tt := tt + tx[i];
   end;
   if length(tt) = 8 then
   begin
      tt := copy(tt,1,5)+'-'+copy(tt,6,8);
   end
   else
   if length(tt) = 5 then
   begin
      tt := copy(tt,1,5)+'-000';
   end;
   result := tt;

end;


function formatacpf_cnpj( tx: string):string;
var
  i  : integer;
  tt : string;
begin
   tt := '';
   for i := 1 to length(trim(tx)) do begin
     if tx[i] in ['0'..'9'] then
        tt := tt + tx[i];
   end;
   if length(tt) = 11 then begin
      tt := copy(tt,1,3)+'.'+copy(tt,4,3)+'.'+copy(tt,7,3)+'-'+copy(tt,10,2);
   end
   else
   if length(tt) = 14 then begin
      tt := copy(tt,1,2)+'.'+copy(tt,3,3)+'.'+copy(tt,6,3)+'/'+copy(tt,9,4)+'-'+copy(tt,13,2);
   end;
   result := tt;

end;



function BuscaCodUf( est : string): Integer;
var
   vv : integer;
begin

   if       est = 'RO' then vv := 11
   else  if est = 'AC' then vv := 12
   else  if est = 'AM' then vv := 13
   else  if est = 'RR' then vv := 14
   else  if est = 'PA' then vv := 15
   else  if est = 'AP' then vv := 16
   else  if est = 'TO' then vv := 17
   else  if est = 'MA' then vv := 21
   else  if est = 'PI' then vv := 22
   else  if est = 'CE' then vv := 23
   else  if est = 'RN' then vv := 24
   else  if est = 'PB' then vv := 25
   else  if est = 'PE' then vv := 26
   else  if est = 'AL' then vv := 27
   else  if est = 'SE' then vv := 28
   else  if est = 'BA' then vv := 29
   else  if est = 'MG' then vv := 31
   else  if est = 'ES' then vv := 32
   else  if est = 'RJ' then vv := 33
   else  if est = 'SP' then vv := 35
   else  if est = 'PR' then vv := 41
   else  if est = 'SC' then vv := 42
   else  if est = 'RS' then vv := 43
   else  if est = 'MS' then vv := 50
   else  if est = 'MT' then vv := 51
   else  if est = 'GO' then vv := 52
   else  if est = 'DF' then vv := 53;
   result := vv;

end;


procedure EscolheImpressora(nomeImp:String);
var
  nInd : integer;
begin

  nInd := Printer.Printers.IndexOf( nomeImp );
  if nInd >= 0 then
    Printer.PrinterIndex := nInd
  else
    Printer.PrinterIndex := Printer.Printers.IndexOf( ImpPadrao );

end;

function ValidaEmail(email:String):boolean;
begin
  Result := (Pos('@',email) >= 2) and (Pos('.',email) >= Pos('@',email)+2) and
    (Pos('.',email) < Length(email));
end;


function VerificaErroNFe( cErro : string): boolean;
var
  vErro : String;
begin
  vErro  := '';
  Result := true;
  case strtoint(cErro) of
    201: vErro := 'Rejeição: O numero máximo de numeração de NF-e a inutilizar ultrapassou o limite';
    202: vErro := 'Rejeição: Falha no reconhecimento da autoria ou integridade do arquivo digital';
    203: vErro := 'Rejeição: Emissor não habilitado para emissão da NF-e';
    204: vErro := 'Duplicidade de NF-e ';
    205: vErro := 'NF-e está denegada na base de dados da SEFAZ ';
    206: vErro := 'Rejeição: NF-e já está inutilizada na Base de dados da SEFAZ';
    207: vErro := 'Rejeição: CNPJ do emitente inválido ';
    208: vErro := 'Rejeição: CNPJ do destinatário inválido ';
    209: vErro := 'Rejeição: IE do emitente inválida ';
    210: vErro := 'Rejeição: IE do destinatário inválida ';
    211: vErro := 'Rejeição: IE do substituto inválida ';
    212: vErro := 'Rejeição: Data de emissão NF-e posterior a data de recebimento ';
    213: vErro := 'Rejeição: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital';
    214: vErro := 'Rejeição: Tamanho da mensagem excedeu o limite estabelecido';
    215: vErro := 'Rejeição: Falha no schema XML';
    216: vErro := 'Rejeição: Chave de Acesso difere da cadastrada';
    217: vErro := 'Rejeição: NF-e não consta na base de dados da SEFAZ ';
    218: vErro := 'NF-e já está cancelada na base de dados da SEFAZ ';
    219: vErro := 'Rejeição: Circulação da NF-e verificada';
    220: vErro := 'Rejeição: Prazo de Cancelamento superior ao previsto na Legislação';
    221: vErro := 'Rejeição: Confirmado o recebimento da NF-e pelo destinatário ';
    222: vErro := 'Rejeição: Protocolo de Autorização de Uso difere do cadastrado ';
    223: vErro := 'Rejeição: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta';
    224: vErro := 'Rejeição: A faixa inicial é maior que a faixa final';
    225: vErro := 'Rejeição: Falha no Schema XML do lote de NFe ';
    226: vErro := 'Rejeição: Código da UF do Emitente diverge da UF autorizadora';
    227: vErro := 'Rejeição: Erro na Chave de Acesso - Campo Id – falta a literal NFe ';
    228: vErro := 'Rejeição: Data de Emissão muito atrasada';
    229: vErro := 'Rejeição: IE do emitente não informada  ';
    230: vErro := 'Rejeição: IE do emitente não cadastrada ';
    231: vErro := 'Rejeição: IE do emitente não vinculada ao CNPJ';
    232: vErro := 'Rejeição: IE do destinatário não informada';
    233: vErro := 'Rejeição: IE do destinatário não cadastrada ';
    234: vErro := 'Rejeição: IE do destinatário não vinculada ao CNPJ  ';
    235: vErro := 'Rejeição: Inscrição SUFRAMA inválida ';
    236: vErro := 'Rejeição: Chave de Acesso com dígito verificador inválido ';
    237: vErro := 'Rejeição: CPF do destinatário inválido ';
    238: vErro := 'Rejeição: Cabeçalho - Versão do arquivo XML superior a Versão vigente';
    239: vErro := 'Rejeição: Cabeçalho - Versão do arquivo XML não suportada  ';
    240: vErro := 'Rejeição: Cancelamento/Inutilização - Irregularidade Fiscal do Emitente ';
    241: vErro := 'Rejeição: Um número da faixa já foi utilizado';
    242: vErro := 'Rejeição: Cabeçalho - Falha no Schema XML ';
    243: vErro := 'Rejeição: XML Mal Formado';
    244: vErro := 'Rejeição: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente';
    245: vErro := 'Rejeição: CNPJ Emitente não cadastrado';
    246: vErro := 'Rejeição: CNPJ Destinatário não cadastrado ';
    247: vErro := 'Rejeição: Sigla da UF do Emitente diverge da UF autorizadora  ';
    248: vErro := 'Rejeição: UF do Recibo diverge da UF autorizadora ';
    249: vErro := 'Rejeição: UF da Chave de Acesso diverge da UF autorizadora ';
    250: vErro := 'Rejeição: UF diverge da UF autorizadora ';
    251: vErro := 'Rejeição: UF/Município destinatário não pertence a SUFRAMA ';
    252: vErro := 'Rejeição: Ambiente informado diverge do Ambiente de recebimento';
    253: vErro := 'Rejeição: Digito Verificador da chave de acesso composta inválida';
    254: vErro := 'Rejeição: NF-e complementar não possui NF referenciada ';
    255: vErro := 'Rejeição: NF-e complementar possui mais de uma NF referenciada';
    256: vErro := 'Rejeição: Uma NF-e da faixa já está inutilizada na Base de dados da SEFAZ ';
    257: vErro := 'Rejeição: Solicitante não habilitado para emissão da NF-e';
    258: vErro := 'Rejeição: CNPJ da consulta inválido ';
    259: vErro := 'Rejeição: CNPJ da consulta não cadastrado como contribuinte na UF';
    260: vErro := 'Rejeição: IE da consulta inválida ';
    261: vErro := 'Rejeição: IE da consulta não cadastrada como contribuinte na UF ';
    262: vErro := 'Rejeição: UF não fornece consulta por CPF ';
    263: vErro := 'Rejeição: CPF da consulta inválido ';
    264: vErro := 'Rejeição: CPF da consulta não cadastrado como contribuinte na UF';
    265: vErro := 'Rejeição: Sigla da UF da consulta difere da UF do Web Service';
    266: vErro := 'Rejeição: Série utilizada não permitida no Web Service ';
    267: vErro := 'Rejeição: NF Complementar referencia uma NF-e inexistente ';
    268: vErro := 'Rejeição: NF Complementar referencia uma outra NF-e Complementar';
    269: vErro := 'Rejeição: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada';
    270: vErro := 'Rejeição: Código Município do Fato Gerador: dígito inválido';
    271: vErro := 'Rejeição: Código Município do Fato Gerador: difere da UF do emitente';
    272: vErro := 'Rejeição: Código Município do Emitente: dígito inválido ';
    273: vErro := 'Rejeição: Código Município do Emitente: difere da UF do emitente';
    274: vErro := 'Rejeição: Código Município do Destinatário: dígito inválido ';
    275: vErro := 'Rejeição: Código Município do Destinatário: difere da UF do Destinatário ';
    276: vErro := 'Rejeição: Código Município do Local de Retirada: dígito inválido ';
    277: vErro := 'Rejeição: Código Município do Local de Retirada: difere da UF do Local de Retirada';
    278: vErro := 'Rejeição: Código Município do Local de Entrega: dígito inválido ';
    279: vErro := 'Rejeição: Código Município do Local de Entrega: difere da UF do Local de Entrega ';
    280: vErro := 'Rejeição: Certificado Transmissor inválido';
    281: vErro := 'Rejeição: Certificado Transmissor Data Validade';
    282: vErro := 'Rejeição: Certificado Transmissor sem CNPJ ';
    283: vErro := 'Rejeição: Certificado Transmissor - erro Cadeia de Certificação ';
    284: vErro := 'Rejeição: Certificado Transmissor revogado';
    285: vErro := 'Rejeição: Certificado Transmissor difere ICP-Brasil';
    286: vErro := 'Rejeição: Certificado Transmissor erro no acesso a LCR ';
    287: vErro := 'Rejeição: Código Município do FG - ISSQN: dígito inválido ';
    288: vErro := 'Rejeição: Código Município do FG - Transporte: dígito inválido ';
    289: vErro := 'Rejeição: Código da UF informada diverge da UF solicitada';
    290: vErro := 'Rejeição: Certificado Assinatura inválido';
    291: vErro := 'Rejeição: Certificado Assinatura Data Validade';
    292: vErro := 'Rejeição: Certificado Assinatura sem CNPJ  ';
    293: vErro := 'Rejeição: Certificado Assinatura - erro Cadeia de Certificação ';
    294: vErro := 'Rejeição: Certificado Assinatura revogado  ';
    295: vErro := 'Rejeição: Certificado Assinatura difere ICP-Brasil';
    296: vErro := 'Rejeição: Certificado Assinatura erro no acesso a LCR ';
    297: vErro := 'Rejeição: Assinatura difere do calculado';
    298: vErro := 'Rejeição: Assinatura difere do padrão do Sistema';
    299: vErro := 'Rejeição: XML da área de cabeçalho com codificação diferente de UTF-8';
    401: vErro := 'Rejeição: CPF do remetente inválido ';
    402: vErro := 'Rejeição: XML da área de dados com codificação diferente de UTF-8';
    403: vErro := 'Rejeição: O grupo de informações da NF-e avulsa é de uso exclusivo do Fisco ';
    404: vErro := 'Rejeição: Uso de prefixo de namespace não permitido ';
    405: vErro := 'Rejeição: Código do país do emitente: dígito inválido ';
    406: vErro := 'Rejeição: Código do país do destinatário: dígito inválido  ';
    407: vErro := 'Rejeição: O CPF só pode ser informado no campo emitente para a NF-e avulsa ';
    409: vErro := 'Rejeição: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header';
    410: vErro := 'Rejeição: UF informada no campo cUF não é atendida pelo Web Service ';
    411: vErro := 'Rejeição: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header';
    420: vErro := 'Rejeição: Cancelamento para NF-e já cancelada';
    450: vErro := 'Rejeição: Modelo da NF-e diferente de 55 ';
    451: vErro := 'Rejeição: Processo de emissão informado inválido';
    452: vErro := 'Rejeição: Tipo Autorizador do Recibo diverge do Órgão Autorizador';
    453: vErro := 'Rejeição: Ano de inutilização não pode ser superior ao Ano atual';
    454: vErro := 'Rejeição: Ano de inutilização não pode ser inferior a 2006 ';
    478: vErro := 'Rejeição: Local da entrega não informado para faturamento direto de veículos novos ';
    489: vErro := 'Rejeição: CNPJ informado inválido (DV ou zeros) ';
    490: vErro := 'Rejeição: CPF informado inválido (DV ou zeros) ';
    491: vErro := 'Rejeição: O tpEvento informado inválido ';
    492: vErro := 'Rejeição: O verEvento informado inválido ';
    493: vErro := 'Rejeição: Evento não atende o Schema XML específico ';
    494: vErro := 'Rejeição: Chave de Acesso inexistente';
    502: vErro := 'Rejeição: Erro na Chave de Acesso - Campo Id não corresponde à concatenação dos campos correspondentes';
    503: vErro := 'Rejeição: Série utilizada fora da faixa permitida no SCAN (900-999)';
    504: vErro := 'Rejeição: Data de Entrada/Saída posterior ao permitido ';
    505: vErro := 'Rejeição: Data de Entrada/Saída anterior ao permitido ';
    506: vErro := 'Rejeição: Data de Saída menor que a Data de Emissão ';
    507: vErro := 'Rejeição: O CNPJ do destinatário/remetente não deve ser informado em operação com o exterior';
    508: vErro := 'Rejeição: O CNPJ com conteúdo nulo só é válido em operação com exterior';
    509: vErro := 'Rejeição: Informado código de município diferente de “9999999” para operação com o exterior ';
    510: vErro := 'Rejeição: Operação com Exterior e Código País destinatário é 1058 (Brasil) ou não informado';
    511: vErro := 'Rejeição: Não é de Operação com Exterior e Código País destinatário difere de 1058 (Brasil)';
    512: vErro := 'Rejeição: CNPJ do Local de Retirada inválido ';
    513: vErro := 'Rejeição: Código Município do Local de Retirada deve ser 9999999 para UF retirada = EX ';
    514: vErro := 'Rejeição: CNPJ do Local de Entrega inválido ';
    515: vErro := 'Rejeição: Código Município do Local de Entrega deve ser 9999999 para UF entrega = EX  ';
    516: vErro := 'Rejeição: Falha no schema XML – inexiste a tag raiz esperada para a mensagem ';
    517: vErro := 'Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz da mensagem';
    518: vErro := 'Rejeição: CFOP de entrada para NF-e de saída ';
    519: vErro := 'Rejeição: CFOP de saída para NF-e de entrada ';
    520: vErro := 'Rejeição: CFOP de Operação com Exterior e UF destinatário difere de EX ';
    521: vErro := 'Rejeição:  CFOP  de  Operação  Estadual  e  UF  do  emitente  difere  da  UF  do  destinatário para destinatário contribuinte do ICMS.';
    522: vErro := 'Rejeição: CFOP de Operação Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.';
    523: vErro := 'Rejeição: CFOP não é de Operação Estadual e UF emitente igual a UFdestinatário. ';
    524: vErro := 'Rejeição: CFOP de Operação com Exterior e não informado NCM ';
    525: vErro := 'Rejeição: CFOP de Importação e não informado dados da DI';
    526: vErro := 'Rejeição: CFOP de Exportação e não informado Local de Embarque ';
    527: vErro := 'Rejeição: Operação de Exportação com informação de ICMS incompatível';
    528: vErro := 'Rejeição: Valor do ICMS difere do produto BC e Alíquota ';
    529: vErro := 'Rejeição: NCM de informação obrigatória para produto tributado pelo IPI ';
    530: vErro := 'Rejeição: Operação com tributação de ISSQN sem informar a Inscrição Municipal';
    531: vErro := 'Rejeição: Total da BC ICMS difere do somatório dos itens ';
    532: vErro := 'Rejeição: Total do ICMS difere do somatório dos itens ';
    533: vErro := 'Rejeição: Total da BC ICMS-ST difere do somatório dos itens ';
    534: vErro := 'Rejeição: Total do ICMS-ST difere do somatório dos itens';
    535: vErro := 'Rejeição: Total do Frete difere do somatório dos itens  ';
    536: vErro := 'Rejeição: Total do Seguro difere do somatório dos itens ';
    537: vErro := 'Rejeição: Total do Desconto difere do somatório dos itens ';
    538: vErro := 'Rejeição: Total do IPI difere do somatório dos itens  ';
    539: vErro := 'Duplicidade de NF-e com diferença na Chave de Acesso ';
    540: vErro := 'Rejeição: CPF do Local de Retirada inválido';
    541: vErro := 'Rejeição: CPF do Local de Entrega inválido';
    542: vErro := 'Rejeição: CNPJ do Transportador inválido ';
    543: vErro := 'Rejeição: CPF do Transportador inválido ';
    544: vErro := 'Rejeição: IE do Transportador inválida ';
    545: vErro := 'Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão da mensagem';
    546: vErro := 'Rejeição: Erro na Chave de Acesso – Campo Id – falta a literal NFe';
    547: vErro := 'Rejeição: Dígito Verificador da Chave de Acesso da NF-e Referenciada inválido ';
    548: vErro := 'Rejeição: CNPJ da NF referenciada inválido.';
    549: vErro := 'Rejeição: CNPJ da NF referenciada de produtor inválido.';
    550: vErro := 'Rejeição: CPF da NF referenciada de produtor inválido. ';
    551: vErro := 'Rejeição: IE da NF referenciada de produtor inválido. ';
    552: vErro := 'Rejeição: Dígito Verificador da Chave de Acesso do CT-e Referenciado inválido ';
    553: vErro := 'Rejeição: Tipo autorizador do recibo diverge do Órgão Autorizador.';
    554: vErro := 'Rejeição: Série difere da faixa 0-899 ';
    555: vErro := 'Rejeição: Tipo autorizador do protocolo diverge do Órgão Autorizador. ';
    556: vErro := 'Rejeição: Justificativa de entrada em contingência não deve ser informada para tipo de emissão normal.';
    557: vErro := 'Rejeição: A Justificativa de entrada em contingência deve ser informada.';
    558: vErro := 'Rejeição: Data de entrada em contingência posterior a data de recebimento.';
    559: vErro := 'Rejeição: UF do Transportador não informada  ';
    560: vErro := 'Rejeição: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido ';
    561: vErro := 'Rejeição: Mês de Emissão informado na Chave de Acesso difere do Mês de Emissão da NF-e ';
    562: vErro := 'Rejeição: Código Numérico informado na Chave de Acesso difere do Código  Numérico da NF-e ';
    563: vErro := 'Rejeição: Já existe pedido de Inutilização com a mesma faixa de inutilização';
    564: vErro := 'Rejeição: Total do Produto / Serviço difere do somatório dos itens  ';
    565: vErro := 'Rejeição: Falha no schema XML – inexiste a tag raiz esperada para o lote de NF-e  ';
    567: vErro := 'Rejeição: Falha no schema XML – versão informada na versaoDados do SOAPHeader diverge da versão do lote de NF-e';
    568: vErro := 'Rejeição: Falha no schema XML – inexiste atributo versao na tag raiz do lote de NF-e ';
    569: vErro := 'Rejeição: Data de entrada em contingência muito atrasada ';
    570: vErro := 'Rejeição: tpEmis = 3 só é válido na contingência SCAN ';
    571: vErro := 'Rejeição: O tpEmis informado diferente de 3 para contingência SCAN ';
    572: vErro := 'Rejeição: Erro Atributo ID do evento não corresponde a concatenação dos campos (“ID” + tpEvento + chNFe + nSeqEvento)';
    573: vErro := 'Rejeição: Duplicidade de Evento';
    574: vErro := 'Rejeição: O autor do evento diverge do emissor da NF-e';
    575: vErro := 'Rejeição: O autor do evento diverge do destinatário da NF-e ';
    576: vErro := 'Rejeição: O autor do evento não é um órgão autorizado a gerar o evento ';
    577: vErro := 'Rejeição: A data do evento não pode ser menor que a data de emissão da NF-e';
    578: vErro := 'Rejeição: A data do evento não pode ser maior que a data do processamento ';
    579: vErro := 'Rejeição: A data do evento não pode ser menor que a data de autorização para NF-e não emitida em contingência  ';
    580: vErro := 'Rejeição: O evento exige uma NF-e autorizada ';
    587: vErro := 'Rejeição: Usar somente o namespace padrão da NF-e ';
    588: vErro := 'Rejeição: Não é permitida a presença de caracteres de edição no início/fim da mensagem ou entre as tags da mensagem ';
    590: vErro := 'Rejeição: Informado CST para emissor do Simples Nacional (CRT=1) ';
    591: vErro := 'Rejeição: Informado CSOSN para emissor que não é do Simples Nacional (CRT diferente de 1) ';
    592: vErro := 'Rejeição: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS';
    594: vErro := 'Rejeição: O número de sequencia do evento informado é maior que o permitido ';
    595: vErro := 'Rejeição: A versão do leiaute da NF-e utilizada não é mais válida';
    596: vErro := 'Rejeição: Ambiente de homologação indisponível para recepção de NF-e da versão 1.10.';
    597: vErro := 'Rejeição: CFOP de Importação e não informado dados de IPI';
    598: vErro := 'Rejeição: NF-e emitida em ambiente de homologação com Razão Social do destinatário diferente de NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    599: vErro := 'Rejeição: CFOP de Importação e não informado dados de II';
    601: vErro := 'Rejeição: Total do II difere do somatório dos itens ';
    602: vErro := 'Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ICMS';
    603: vErro := 'Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ICMS ';
    604: vErro := 'Rejeição: Total do vOutro difere do somatório dos itens Nota Fiscal Eletrônica ';
    605: vErro := 'Rejeição: Total do vISS difere do somatório do vProd dos itens sujeitos ao ISSQN ';
    606: vErro := 'Rejeição: Total do vBC do ISS difere do somatório dos itens ';
    607: vErro := 'Rejeição: Total do ISS difere do somatório dos itens ';
    608: vErro := 'Rejeição: Total do PIS difere do somatório dos itens sujeitos ao ISSQN   ';
    609: vErro := 'Rejeição: Total do COFINS difere do somatório dos itens sujeitos ao ISSQN   ';
    610: vErro := 'Rejeição: Total da NF difere do somatório dos Valores compõe o valor Total da NF. ';
    611: vErro := 'Rejeição: cEAN inválido ';
    612: vErro := 'Rejeição: cEANTrib inválido ';
    613: vErro := 'Rejeição: Chave de Acesso difere da existente em BD ';
    614: vErro := 'Rejeição: Chave de Acesso inválida (Código UF inválido)';
    615: vErro := 'Rejeição: Chave de Acesso inválida (Ano < 05 ou Ano maior que Ano corrente)';
    616: vErro := 'Rejeição: Chave de Acesso inválida (Mês < 1 ou Mês > 12)';
    617: vErro := 'Rejeição: Chave de Acesso inválida (CNPJ zerado ou dígito inválido) ';
    618: vErro := 'Rejeição: Chave de Acesso inválida (modelo diferente de 55)';
    619: vErro := 'Rejeição: Chave de Acesso inválida (número NF = 0) ';
    620: vErro := 'Rejeição: Chave de Acesso difere da existente em BD ';
    621: vErro := 'Rejeição: CPF Emitente não cadastrado  ';
    622: vErro := 'Rejeição: IE emitente não vinculada ao CPF ';
    623: vErro := 'Rejeição: CPF Destinatário não cadastrado ';
    624: vErro := 'Rejeição: IE Destinatário não vinculada ao CPF ';
    625: vErro := 'Rejeição: Inscrição SUFRAMA deve ser informada na venda com isenção para ZFM ';
    626: vErro := 'Rejeição: O CFOP de operação isenta para ZFM deve ser 6109 ou 6110 ';
    627: vErro := 'Rejeição: O valor do ICMS desonerado deve ser informado ';
    628: vErro := 'Rejeição: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite]';
    629: vErro := 'Rejeição:  Valor  do  Produto  difere  do  produto  Valor  Unitário  de  Comercialização  e Quantidade Comercial';
    630: vErro := 'Rejeição:  Valor do Produto  difere do produto  Valor Unitário de Tributação  e  Quantidade Tributável';
    635: vErro := 'Rejeição: NF-e com mesmo número e série já transmitida e aguardando processamento';
    301: vErro := 'Uso Denegado: Irregularidade fiscal do emitente ';
    302: vErro := 'Uso Denegado: Irregularidade fiscal do destinatário';
    999: vErro := 'Rejeição: Erro não catalogado (informar a mensagem de erro capturado no tratamento da';
  end;
  if vErro <> '' then begin
     Application.MessageBox(pchar(cErro + '-'+ vErro),'Atenção');
     Result := false;
  end;
end;

Function QuebraTexto(X : String; Tamanho : integer) : String;
 var I, TamTotal : Integer;
     y : Real;
     NovaString : String;
begin
  y := (length(X) / Tamanho);

  IF y > INT(Y) THEN
   TamTotal := TRUNC(INT(Y)+ 1)
  ELSE
   TamTotal := TRUNC(INT(Y));

  if TamTotal <= 0 then
   TamTotal := 1;
  NovaString := '';

  For I := 1 to TamTotal do
   begin
    NovaString := NovaString +  MidStr(X, 1, Tamanho)+#13+#10;
    Delete(X, 1, Tamanho);
   end;

   Result := NovaString;
end;

function FormataValorCheque(strValor : string): string;
var
    strTemp : string;
    nDigitosValor : integer;
begin
    // Valor do Cheque com 14 digitos
    nDigitosValor := 14;
    strTemp := strValor;

    // Retira (,)
    If (Pos(',', strTemp)) > 0 Then
        strTemp := RetiraString(strTemp, ',');

    // Retira (.)
    If (Pos('.', strTemp)) > 0 Then
        strTemp := RetiraString(strTemp, '.');

    result := (DupeString('0',(nDigitosValor - Length(strTemp))) + strTemp);
end;

function StrZero(const AValue: integer; ALength: integer): string;
var
  base : string;
begin
  base := '%.'+IntToStr(ALength)+'d';
  result := Format(base,[AValue]);
end;

// Retira a str2 da str1
function RetiraString( str1: string; str2: string): string;
var
  nPos : integer;
  strTemp : string;
begin
  nPos := Pos(str2, str1);

  While (nPos > 0) do
  begin
    strTemp := strTemp + LeftStr(str1, nPos - 1);
    str1 := RightStr(str1, Length(str1) - (nPos + Length(str2) - 1));
    nPos := Pos(str2, str1);
  end;

    strTemp := strTemp + str1;

    result := strTemp;
end;

function GravarTXT(NomArquivo, Texto : String): integer;
var
  Path: String;
  Arquivo: TextFile;
begin
  Path := 'C:\NFE\Arquivos\';

  Try
    AssignFile(Arquivo, Path + NomArquivo);

    Rewrite(Arquivo);
    Write(Arquivo, #$EF+#$BB+#$BF+Texto);

    CloseFile(Arquivo);
    Result := 1;
  Except
    Result := -1;
  End;
  
end;


Function TrocaCaracter(Texto, Caracter, NovoCaracter : String): String;
var I :Integer;
begin
  Result := '';

  for I := 1 to Length(Texto) do
  if MidStr(Texto, I, 1) = Caracter then
   Result := Result + NovoCaracter
  else
   Result := Result +  MidStr(Texto, I, 1);


end;


Function PreencheChar(Caracter : String; Qtd : Integer):String;
var I : Integer;
    Texto : String;
begin
 Texto := '';

 for I := 1 to Qtd do
  Texto := Texto + Caracter;

 Result := Texto;

end;

Function AlignCenter(campo: string; tam: integer): String;
var
 I, TamCampo, EspEsquerda : Integer;
 Texto : String;
begin
  TamCampo := Length(campo);
  EspEsquerda := Trunc((tam - TamCampo)/2);
  Texto := '';

  for I := 1 to EspEsquerda do
   Texto := Texto + ' ';

  Result := Texto + campo;
end;


function GeraEan13(codigo:string):String;
var
  dg:String;
  vlr,dv:integer;
begin
  Codigo := Copy(Codigo , 1,12);
  vlr := (StrToInt(copy(codigo,12,1)) + StrToInt(Copy(codigo,10,1))+
         StrToInt(copy(codigo,8,1)) +  StrToInt(Copy(codigo,6,1)) +
         StrToInt(Copy(Codigo,4,1)) + StrToInt(Copy(Codigo,2,1))) *3;
  vlr := vlr + StrToInt(copy(codigo,11,1)) + strToInt(copy(codigo,9,1))+
        StrToInt(copy(codigo,7,1)) + StrToInt(Copy(Codigo,5,1)) +
        StrToInt(Copy(codigo,3,1))+   StrToint(Copy(Codigo,1,1));
  Dg := Copy(IntToStr(vlr),length(inttostr(vlr)),1);
  dv := 10 - strtoInt(dg);

  if Dv = 10 then
  Dv :=  0;

  result := Codigo + intTostr(dv);

end; 


Function TiraCaracter(Texto, Caracter : String): String;
var I :Integer;
begin
  Result := '';

  for I := 1 to Length(Texto) do
  if MidStr(Texto, I, 1) = Caracter then
   Result  := Result
  else
   Result := Result +  MidStr(Texto, I, 1);


end;

Procedure FormataTabela(Tabela : TIBDataSet; Mascara : String);
var i : integer;
    campo:string;
begin
Tabela.FieldDefs.Clear;
 for i := 0 to Tabela.FieldCount - 1 do
  begin
    if not Tabela.Fields[i].IsNull then
     begin
      campo := lowercase(Tabela.Fields[i].FieldName);

      if Tabela.FieldByName(campo).DataType = ftBCD then
        TBCDField(Tabela.FieldByName(campo)).DisplayFormat := Mascara;
     end;
 end;
end;

Procedure FormataQuery(Query : TIBQuery; Mascara : String);
var i : integer;
    campo:string;
begin
Query.FieldDefs.Clear;
 for i := 0 to Query.FieldCount - 1 do
  begin
    if not Query.Fields[i].IsNull then
     begin
      campo := lowercase(Query.Fields[i].FieldName);

      if Query.FieldByName(campo).DataType = ftfloat then
        TFloatField(Query.FieldByName(campo)).DisplayFormat := Mascara;
     end;
 end;
end;


Function Completa(campo: string; tam: integer): String;
var
 i, TamCampo, DifCampo:integer;
begin
  TamCampo := Length(campo);
  DifCampo := TamCampo - (tam);

  if  TamCampo > (tam) then
   Delete(campo,tam + 1,DifCampo)
  else
   begin
     for i:= TamCampo to tam - 1 do
       campo:= campo + ' ';
   end;
       result := campo;
end;


Function AlignRigth(campo: string; tam: integer): String;
var
 i, TamCampo, DifCampo:integer;
begin
  TamCampo := Length(campo);
  DifCampo := TamCampo - (tam);

  if  TamCampo > (tam) then
   Delete(campo,tam + 1,DifCampo)
  else
   begin
     for i:= TamCampo to tam - 1 do
       campo := ' ' + campo ;
   end;
       result := campo;
end;


function CPF(Num: String): Boolean;
var  Temp: Integer;
     Numero: String;
     n: array [1..9] of Integer;
     d: array [1..2] of Integer;
begin
  Numero:='';
  for Temp:=1 to 14 do
    if Num[Temp] in ['0'..'9'] then
      Numero:=Numero+Num[Temp];

  if Length(Numero) < 11 then begin
     CPF:=False;
     exit;
  end;
  
  for Temp:=1 to 9 do
    n[Temp]:=StrToInt(Numero[Temp]);
    d[1]:=n[9]*2+n[8]*3+n[7]*4+n[6]*5+n[5]*6+n[4]*7+n[3]*8+n[2]*9+n[1]*10;
    d[1]:=11-(d[1] mod 11);

  if d[1]>=10 then
    d[1]:=0;
    d[2]:=d[1]*2+n[9]*3+n[8]*4+n[7]*5+n[6]*6+n[5]*7+n[4]*8+n[3]*9+n[2]*10+n[1]*11;
    d[2]:=11-(d[2] mod 11);

  if d[2]>=10 then
    d[2]:=0;

  if IntToStr(d[1])+IntToStr(d[2])=Numero[10]+Numero[11] then
     CPF:=True
   else
     CPF:=False;
end;




function CNPJ(Num: String): Boolean;
var
  Temp: Integer;
  Numero: String;
  n: array [1..12] of Integer;
  d: array [1..2] of Integer;
begin
  Numero:='';
  for Temp:=1 to 18 do if Num[Temp] in ['0'..'9'] then
    Numero:=Numero+Num[Temp];

  for Temp:=1 to 12 do
    n[Temp]:=StrToInt(Numero[Temp]);
    d[1]:=n[12]*2+n[11]*3+n[10]*4+n[9]*5+n[8]*6+n[7]*7+n[6]*8+n[5]*9+n[4]*2+n[3]*3+n[2]*4+n[1]*5;
   d[1]:=11-(d[1] mod 11);

  if d[1]>=10 then
     d[1]:=0;
     d[2]:=d[1]*2+n[12]*3+n[11]*4+n[10]*5+n[9]*6+n[8]*7+n[7]*8+n[6]*9+n[5]*2+n[4]*3+n[3]*4+n[2]*5+n[1]*6;
     d[2]:=11-(d[2] mod 11);

  if d[2]>=10 then
     d[2]:=0;
  if IntToStr(d[1])+IntToStr(d[2])=Numero[13]+Numero[14] then
     CNPJ:=True
  else
    CNPJ:=False;
end;


function NomeComputador : String;
var
  lpBuffer : PChar;
  nSize : DWord;
const
  Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
  nSize := Buff_Size;
  lpBuffer := StrAlloc(Buff_Size);

  GetComputerName(lpBuffer,nSize);

  Result := String(lpBuffer);
  StrDispose(lpBuffer);
end;

function PontoVirgula(Valor: string): String;
var monta:string;
    i: Integer;
begin
 for i := 1 to Length(Valor) do
  if MidStr(Valor, i, 1) = ' ' then
    monta := monta
  else
  if MidStr(Valor, i, 1) = ',' then
    monta := monta + '.'
  else
  if MidStr(Valor, i, 1) = '.' then
    monta := monta
  else
    monta := monta +  MidStr(Valor, i, 1);

 if monta = '' then
  Result := '0'
 else
  Result := monta;
end;

function PontoVirgulaECF(Valor: string): String;
var monta:string;
    i: Integer;
begin
 for i := 1 to Length(Valor) do
  if MidStr(Valor, i, 1) = ' ' then
   monta := monta
  else
   if MidStr(Valor, i, 1) = '.' then
    monta := monta
   else
    monta := monta +  MidStr(Valor, i, 1);

 if monta = '' then
  Result := '0'
 else
  Result := monta;
end;

procedure somente_numero(var key: char);
begin
   if not CharInSet(key, ['0'..'9',#8,#13,Sep_Decimal]) then
   key:=#0;
end;

procedure somente_numero_com_ponto(var key: char);
begin
   if not CharInSet(key , ['0'..'9',#8,#13,#46]) then
   key:=#0;
end;

procedure somente_numero_sem_virgula(var key: char);
begin
   if not CharInSet(key, ['0'..'9',#8,#13]) then
   key:=#0;
end;



procedure consultagrid(_sql:string; var query: TIBQuery; var DBGrid: TDBGrid; edit :TCustomedit);
begin
  if edit.text<>'' then
  begin
    query.Close;
    query.SQL.Clear;
    query.SQL.add(_sql);
    query.Open;

    if query.IsEmpty then
      DbGrid.Visible:=false
    else
      Dbgrid.Visible:=true;
  end
  else
     DbGrid.Visible:=false;
end;

procedure consultagrid(_sql:string; var query: TIBQuery; edit :TCustomedit);
begin
  if edit.Text<>'' then
  begin
    query.Close;
    query.SQL.Clear;
    query.SQL.add(_sql);
    query.Open;
  end;
end;

procedure posicionagrid(var grid : Tdbgrid ; controle : TWinControl);
begin
  grid.Top :=  controle.Top + controle.Height;
  grid.Left := controle.left;
  grid.BringToFront;

end;


function semacento(texto: string): string; stdcall;
const
ComAcento = 'àâêôûãõáéíóúçüñÀÂÄÊÔÛÃÕÁÉÍÓÚÇÜ';
SemAcento = 'aaeouaoaeioucuNAAAEOUAOAEIOUCU';
var
x: Integer;
begin
for x := 1 to Length(texto) do
if Pos(texto[x], ComAcento) <> 0 then
   texto[x] := SemAcento[Pos(texto[x], ComAcento)];
   Result := texto;
end; // da função RemoveAcentoCedilhaTrema

function MouseShowCursor(const Show: boolean): boolean;
var
  I: integer;

begin
  I := ShowCursor(LongBool(true));
  if Show then begin
     Result := I >= 0;
     while I < 0 do begin
       Result := ShowCursor(LongBool(true)) >= 0;
       Inc(I);
     end;
  end
  else begin
     Result := I < 0;
     while I >= 0 do begin
       Result := ShowCursor(LongBool(false)) < 0;
       Dec(I);
     end;
  end;
end;

Procedure EnviarEmailCanc(Assunto, Msg, EmailFor, ArquivoXML : String);
var  senha,end_email: string;
     i:integer;
     mail: TStringList;
begin

      Msg :=    'Prezado cliente, '+#13+#10+#13+#10+
                'Você está recebendo a Notificação de Cancelamento da Nota Fiscal Eletrônica (NF-e) número '+eNumNF+
 //               ' de '+eData+'. '+ DM.ThR000NFE_CANCELADA.asString+#13+#10+#13+#10+#13+#10+
                'Motivo: '+Msg+#13+#10+#13+#10+#13+#10+
                '                                            Atenciosamente, '+#13+#10+#13+#10+#13+#10+
                '                                 Laboratório Lapronat Ltda.';


      mail := TStringList.Create;

      mail.values['to'] := EmailFor; ///AQUI VAI O EMAIL DO DESTINATARIO///
      mail.values['subject'] := Assunto; ///AQUI O ASSUNTO///
      mail.values['body'] := Msg; ///AQUI O TEXTO NO CORPO DO EMAIL///
      mail.values['attachment0'] := ArquivoXML;

      // Configuração envio - Email
      DM.IdMessage1.Clear;
      DM.IdMessage1.Recipients.EMailAddresses := EmailFor;
      DM.IdMessage1.ReplyTo.EMailAddresses := EmailFor;
      DM.IdMessage1.Subject := Assunto; ///AQUI O ASSUNTO///
      DM.IdMessage1.Body.Add(mail.values['body']);


      TIdAttachmentFile.create(DM.idmessage1.MessageParts, TFileName(ArquivoXML));

      // configuração conexão
 //     Senha:=DM.ThR000NFE_SENHA.Text;
 //     end_email:=DM.ThR000NFE_EMAIL.Text;

      DM.IdSMTP1.AuthType := satDefault;
      DM.IdSMTP1.Password:=Senha;

      for i:=1 to length(end_email) do
       begin
         if end_email[i] = '@' then
         break;
       end;

      DM.IdMessage1.From.Address:=end_email;
      DM.IdMessage1.From.Text:=end_email;
      DM.IdSMTP1.Host:='smtp.'+copy(end_email,i+1,length(end_email)-i);
      DM.IdSMTP1.HeloName:=copy(end_email,1,i-1);
      DM.IdSMTP1.Username:=end_email;
      try
       if DM.IdSMTP1.Connected=false then
        DM.IdSMTP1.Connect();
      except
         showmessage('Não foi possível conectar');
      end;


      DM.IdSMTP1.Authenticate();

      if DM.IdSMTP1.Connected then
       begin
        try
          try
           DM.IdSMTP1.Send(DM.IdMessage1);
          except
            showmessage('Não foi possível enviar o email');
          end;
        finally
          DM.IdSMTP1.Disconnect;
        end;

        mail.Free;
       end;

end;


function FindFile(aPath, FileName : string; SubDir : Boolean = True) : String;
var
  FD : TWin32findData;

  function _FindDir(wPath : string; var vRes : string) : Boolean;
  var
    H : THandle;
  begin
    _FindDir := False;
    H := FindFirstFile(Pchar(wPath + FileName), FD);
    if H <> INVALID_HANDLE_VALUE then
    try
      repeat
        if (Copy(FD.cFileName, 1, 1) <> '.') then
        begin
          vRes := wPath + FD.cFileName;
          _FindDir := True;
          Exit;
        end;
      until not (FindNextFile(H, FD));
    finally
      Windows.FindClose(H);
    end;

    if not SubDir then Exit;

    H := FindFirstFile(PChar(wPath + '*.'), FD);
    if H <> INVALID_HANDLE_VALUE then
    try
      repeat
        if (FD.dwFileAttributes and FILE_ATTRIBUTE_DIRECTORY) <> 0 then
          if Copy(FD.cFileName, 1, 1) <> '.' then
          begin
            if _FindDir(wPath + FD.cfilename + '\', vRes) then
            begin
              Result := True;
              Exit;
            end;
          end;
      until not (FindNextFile(H, FD));
    finally
      Windows.FindClose(H);
    end;
  end;

begin
  if not _FindDir(IncludeTrailingBackslash(aPath), Result) then
    Result := '';
end;


function FormEstaCriado(AClass: TClass): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to Screen.FormCount -1 do
  begin
    if Screen.Forms[I] is AClass then
    begin
      Result := True;
      Break;
    end;
  end;
end;


Function retornaNumeros(Caracter : String):String;
var I : Integer;
    Texto : String;
begin
 Texto := '';
 for I := 1 to length(Caracter) do
   if Caracter[I] in ['0','1','2','3','4','5','6','7','8','9'] then
      Texto := Texto + Caracter[I];
 Result := Texto;

end;


Function SomenteLetras(Texto : String): String;
var I :Integer;
    Caracter : String;
begin
  Result := '';
  Caracter := 'abcdefghijklmnopqrstuvxzwyABCDEFGHIJKLMNOPQRSTUVXZWY ';

  for I := 1 to Length(Texto) do
  if pos(MidStr(Texto, I, 1), Caracter) = 0 then
   Result  := Result
  else
   Result := Result + MidStr(Texto, I, 1);

end;

function ValidaData(Sender: TField; Text: String): Boolean;
begin
  Result := false;
  if (Text = ' / / ') or (Text = ' / / ') then
  begin
    Sender.Clear;
    Result := true;
  end
  else
  begin
    try
      Sender.AsString := Text;
      Result := true;
    except
      messagedlg('Data inválida. Por favor, verifique!', mtInformation,
        [mbOk], 0);
      if Screen.Cursor = crHourGlass then
      begin
        Screen.Cursor := crDefault;
      end;
    end;
  end;
end;


Procedure ExportExcel(Query : TZQuery; Titulo : String);
 var linha, coluna : integer;
     planilha : variant;
     valorcampo : string;
begin
     planilha:= CreateoleObject('Excel.Application');
     planilha.WorkBooks.add(1);
     planilha.caption := Titulo;
     planilha.visible := true;

     Query.First;

      for linha := 0 to  Query.RecordCount - 1 do
       begin
         for coluna := 1 to Query.FieldCount do
          begin

           if Query.Fields[coluna - 1].Visible then
            begin
             if (Query.Fields[coluna - 1].DataType = ftDate) and (Query.Fields[coluna - 1].Text <> '') then
              valorcampo := FormatDateTime('mm/dd/yyyy', StrToDate(Query.Fields[coluna - 1].Text))
             else
             if (Query.Fields[coluna - 1].Tag = 10) and (Query.Fields[coluna - 1].Text <> '') then
              valorcampo := FormatDateTime('HH:MM:SS', Query.Fields[coluna - 1].Value)
             else
             if ((Query.Fields[coluna - 1].DataType = ftFloat) or (Query.Fields[coluna - 1].DataType = ftBCD)) and (Query.Fields[coluna - 1].Text <> '') then
              valorcampo := FormatFloat('#0.00', Query.Fields[coluna - 1].AsFloat)
             else
              valorcampo := Query.Fields[coluna - 1].AsString;

             planilha.cells[linha + 2,coluna] := valorCampo;
            end;

          end;

         Query.Next;
       end;

       for coluna := 1 to Query.FieldCount do
        begin
         if Query.Fields[coluna - 1].Visible then
          begin
           valorcampo := Query.Fields[coluna - 1].DisplayLabel;
           planilha.cells[1,coluna] := valorcampo;
          end;
        end;

       planilha.columns.Autofit;
end;

end.
