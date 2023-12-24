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
  procedure somente_numero(var key : char);  // permitir digitar apenas n�meros
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
     3 : Result := 'Mar�o';
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
  diasem[3]:= 'TER�A-FEIRA';
  diasem[4]:= 'QUARTA-FEIRA';
  diasem[5]:= 'QUINTA-FEIRA';
  diasem[6]:= 'SEXTA-FEIRA';
  diasem[7]:= 'S�BADO';

  meses[1]:= 'Janeiro';
  meses[2]:= 'Fevereiro';
  meses[3]:= 'Mar�o';
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
    201: vErro := 'Rejei��o: O numero m�ximo de numera��o de NF-e a inutilizar ultrapassou o limite';
    202: vErro := 'Rejei��o: Falha no reconhecimento da autoria ou integridade do arquivo digital';
    203: vErro := 'Rejei��o: Emissor n�o habilitado para emiss�o da NF-e';
    204: vErro := 'Duplicidade de NF-e ';
    205: vErro := 'NF-e est� denegada na base de dados da SEFAZ ';
    206: vErro := 'Rejei��o: NF-e j� est� inutilizada na Base de dados da SEFAZ';
    207: vErro := 'Rejei��o: CNPJ do emitente inv�lido ';
    208: vErro := 'Rejei��o: CNPJ do destinat�rio inv�lido ';
    209: vErro := 'Rejei��o: IE do emitente inv�lida ';
    210: vErro := 'Rejei��o: IE do destinat�rio inv�lida ';
    211: vErro := 'Rejei��o: IE do substituto inv�lida ';
    212: vErro := 'Rejei��o: Data de emiss�o NF-e posterior a data de recebimento ';
    213: vErro := 'Rejei��o: CNPJ-Base do Emitente difere do CNPJ-Base do Certificado Digital';
    214: vErro := 'Rejei��o: Tamanho da mensagem excedeu o limite estabelecido';
    215: vErro := 'Rejei��o: Falha no schema XML';
    216: vErro := 'Rejei��o: Chave de Acesso difere da cadastrada';
    217: vErro := 'Rejei��o: NF-e n�o consta na base de dados da SEFAZ ';
    218: vErro := 'NF-e j� est� cancelada na base de dados da SEFAZ ';
    219: vErro := 'Rejei��o: Circula��o da NF-e verificada';
    220: vErro := 'Rejei��o: Prazo de Cancelamento superior ao previsto na Legisla��o';
    221: vErro := 'Rejei��o: Confirmado o recebimento da NF-e pelo destinat�rio ';
    222: vErro := 'Rejei��o: Protocolo de Autoriza��o de Uso difere do cadastrado ';
    223: vErro := 'Rejei��o: CNPJ do transmissor do lote difere do CNPJ do transmissor da consulta';
    224: vErro := 'Rejei��o: A faixa inicial � maior que a faixa final';
    225: vErro := 'Rejei��o: Falha no Schema XML do lote de NFe ';
    226: vErro := 'Rejei��o: C�digo da UF do Emitente diverge da UF autorizadora';
    227: vErro := 'Rejei��o: Erro na Chave de Acesso - Campo Id � falta a literal NFe ';
    228: vErro := 'Rejei��o: Data de Emiss�o muito atrasada';
    229: vErro := 'Rejei��o: IE do emitente n�o informada  ';
    230: vErro := 'Rejei��o: IE do emitente n�o cadastrada ';
    231: vErro := 'Rejei��o: IE do emitente n�o vinculada ao CNPJ';
    232: vErro := 'Rejei��o: IE do destinat�rio n�o informada';
    233: vErro := 'Rejei��o: IE do destinat�rio n�o cadastrada ';
    234: vErro := 'Rejei��o: IE do destinat�rio n�o vinculada ao CNPJ  ';
    235: vErro := 'Rejei��o: Inscri��o SUFRAMA inv�lida ';
    236: vErro := 'Rejei��o: Chave de Acesso com d�gito verificador inv�lido ';
    237: vErro := 'Rejei��o: CPF do destinat�rio inv�lido ';
    238: vErro := 'Rejei��o: Cabe�alho - Vers�o do arquivo XML superior a Vers�o vigente';
    239: vErro := 'Rejei��o: Cabe�alho - Vers�o do arquivo XML n�o suportada  ';
    240: vErro := 'Rejei��o: Cancelamento/Inutiliza��o - Irregularidade Fiscal do Emitente ';
    241: vErro := 'Rejei��o: Um n�mero da faixa j� foi utilizado';
    242: vErro := 'Rejei��o: Cabe�alho - Falha no Schema XML ';
    243: vErro := 'Rejei��o: XML Mal Formado';
    244: vErro := 'Rejei��o: CNPJ do Certificado Digital difere do CNPJ da Matriz e do CNPJ do Emitente';
    245: vErro := 'Rejei��o: CNPJ Emitente n�o cadastrado';
    246: vErro := 'Rejei��o: CNPJ Destinat�rio n�o cadastrado ';
    247: vErro := 'Rejei��o: Sigla da UF do Emitente diverge da UF autorizadora  ';
    248: vErro := 'Rejei��o: UF do Recibo diverge da UF autorizadora ';
    249: vErro := 'Rejei��o: UF da Chave de Acesso diverge da UF autorizadora ';
    250: vErro := 'Rejei��o: UF diverge da UF autorizadora ';
    251: vErro := 'Rejei��o: UF/Munic�pio destinat�rio n�o pertence a SUFRAMA ';
    252: vErro := 'Rejei��o: Ambiente informado diverge do Ambiente de recebimento';
    253: vErro := 'Rejei��o: Digito Verificador da chave de acesso composta inv�lida';
    254: vErro := 'Rejei��o: NF-e complementar n�o possui NF referenciada ';
    255: vErro := 'Rejei��o: NF-e complementar possui mais de uma NF referenciada';
    256: vErro := 'Rejei��o: Uma NF-e da faixa j� est� inutilizada na Base de dados da SEFAZ ';
    257: vErro := 'Rejei��o: Solicitante n�o habilitado para emiss�o da NF-e';
    258: vErro := 'Rejei��o: CNPJ da consulta inv�lido ';
    259: vErro := 'Rejei��o: CNPJ da consulta n�o cadastrado como contribuinte na UF';
    260: vErro := 'Rejei��o: IE da consulta inv�lida ';
    261: vErro := 'Rejei��o: IE da consulta n�o cadastrada como contribuinte na UF ';
    262: vErro := 'Rejei��o: UF n�o fornece consulta por CPF ';
    263: vErro := 'Rejei��o: CPF da consulta inv�lido ';
    264: vErro := 'Rejei��o: CPF da consulta n�o cadastrado como contribuinte na UF';
    265: vErro := 'Rejei��o: Sigla da UF da consulta difere da UF do Web Service';
    266: vErro := 'Rejei��o: S�rie utilizada n�o permitida no Web Service ';
    267: vErro := 'Rejei��o: NF Complementar referencia uma NF-e inexistente ';
    268: vErro := 'Rejei��o: NF Complementar referencia uma outra NF-e Complementar';
    269: vErro := 'Rejei��o: CNPJ Emitente da NF Complementar difere do CNPJ da NF Referenciada';
    270: vErro := 'Rejei��o: C�digo Munic�pio do Fato Gerador: d�gito inv�lido';
    271: vErro := 'Rejei��o: C�digo Munic�pio do Fato Gerador: difere da UF do emitente';
    272: vErro := 'Rejei��o: C�digo Munic�pio do Emitente: d�gito inv�lido ';
    273: vErro := 'Rejei��o: C�digo Munic�pio do Emitente: difere da UF do emitente';
    274: vErro := 'Rejei��o: C�digo Munic�pio do Destinat�rio: d�gito inv�lido ';
    275: vErro := 'Rejei��o: C�digo Munic�pio do Destinat�rio: difere da UF do Destinat�rio ';
    276: vErro := 'Rejei��o: C�digo Munic�pio do Local de Retirada: d�gito inv�lido ';
    277: vErro := 'Rejei��o: C�digo Munic�pio do Local de Retirada: difere da UF do Local de Retirada';
    278: vErro := 'Rejei��o: C�digo Munic�pio do Local de Entrega: d�gito inv�lido ';
    279: vErro := 'Rejei��o: C�digo Munic�pio do Local de Entrega: difere da UF do Local de Entrega ';
    280: vErro := 'Rejei��o: Certificado Transmissor inv�lido';
    281: vErro := 'Rejei��o: Certificado Transmissor Data Validade';
    282: vErro := 'Rejei��o: Certificado Transmissor sem CNPJ ';
    283: vErro := 'Rejei��o: Certificado Transmissor - erro Cadeia de Certifica��o ';
    284: vErro := 'Rejei��o: Certificado Transmissor revogado';
    285: vErro := 'Rejei��o: Certificado Transmissor difere ICP-Brasil';
    286: vErro := 'Rejei��o: Certificado Transmissor erro no acesso a LCR ';
    287: vErro := 'Rejei��o: C�digo Munic�pio do FG - ISSQN: d�gito inv�lido ';
    288: vErro := 'Rejei��o: C�digo Munic�pio do FG - Transporte: d�gito inv�lido ';
    289: vErro := 'Rejei��o: C�digo da UF informada diverge da UF solicitada';
    290: vErro := 'Rejei��o: Certificado Assinatura inv�lido';
    291: vErro := 'Rejei��o: Certificado Assinatura Data Validade';
    292: vErro := 'Rejei��o: Certificado Assinatura sem CNPJ  ';
    293: vErro := 'Rejei��o: Certificado Assinatura - erro Cadeia de Certifica��o ';
    294: vErro := 'Rejei��o: Certificado Assinatura revogado  ';
    295: vErro := 'Rejei��o: Certificado Assinatura difere ICP-Brasil';
    296: vErro := 'Rejei��o: Certificado Assinatura erro no acesso a LCR ';
    297: vErro := 'Rejei��o: Assinatura difere do calculado';
    298: vErro := 'Rejei��o: Assinatura difere do padr�o do Sistema';
    299: vErro := 'Rejei��o: XML da �rea de cabe�alho com codifica��o diferente de UTF-8';
    401: vErro := 'Rejei��o: CPF do remetente inv�lido ';
    402: vErro := 'Rejei��o: XML da �rea de dados com codifica��o diferente de UTF-8';
    403: vErro := 'Rejei��o: O grupo de informa��es da NF-e avulsa � de uso exclusivo do Fisco ';
    404: vErro := 'Rejei��o: Uso de prefixo de namespace n�o permitido ';
    405: vErro := 'Rejei��o: C�digo do pa�s do emitente: d�gito inv�lido ';
    406: vErro := 'Rejei��o: C�digo do pa�s do destinat�rio: d�gito inv�lido  ';
    407: vErro := 'Rejei��o: O CPF s� pode ser informado no campo emitente para a NF-e avulsa ';
    409: vErro := 'Rejei��o: Campo cUF inexistente no elemento nfeCabecMsg do SOAP Header';
    410: vErro := 'Rejei��o: UF informada no campo cUF n�o � atendida pelo Web Service ';
    411: vErro := 'Rejei��o: Campo versaoDados inexistente no elemento nfeCabecMsg do SOAP Header';
    420: vErro := 'Rejei��o: Cancelamento para NF-e j� cancelada';
    450: vErro := 'Rejei��o: Modelo da NF-e diferente de 55 ';
    451: vErro := 'Rejei��o: Processo de emiss�o informado inv�lido';
    452: vErro := 'Rejei��o: Tipo Autorizador do Recibo diverge do �rg�o Autorizador';
    453: vErro := 'Rejei��o: Ano de inutiliza��o n�o pode ser superior ao Ano atual';
    454: vErro := 'Rejei��o: Ano de inutiliza��o n�o pode ser inferior a 2006 ';
    478: vErro := 'Rejei��o: Local da entrega n�o informado para faturamento direto de ve�culos novos ';
    489: vErro := 'Rejei��o: CNPJ informado inv�lido (DV ou zeros) ';
    490: vErro := 'Rejei��o: CPF informado inv�lido (DV ou zeros) ';
    491: vErro := 'Rejei��o: O tpEvento informado inv�lido ';
    492: vErro := 'Rejei��o: O verEvento informado inv�lido ';
    493: vErro := 'Rejei��o: Evento n�o atende o Schema XML espec�fico ';
    494: vErro := 'Rejei��o: Chave de Acesso inexistente';
    502: vErro := 'Rejei��o: Erro na Chave de Acesso - Campo Id n�o corresponde � concatena��o dos campos correspondentes';
    503: vErro := 'Rejei��o: S�rie utilizada fora da faixa permitida no SCAN (900-999)';
    504: vErro := 'Rejei��o: Data de Entrada/Sa�da posterior ao permitido ';
    505: vErro := 'Rejei��o: Data de Entrada/Sa�da anterior ao permitido ';
    506: vErro := 'Rejei��o: Data de Sa�da menor que a Data de Emiss�o ';
    507: vErro := 'Rejei��o: O CNPJ do destinat�rio/remetente n�o deve ser informado em opera��o com o exterior';
    508: vErro := 'Rejei��o: O CNPJ com conte�do nulo s� � v�lido em opera��o com exterior';
    509: vErro := 'Rejei��o: Informado c�digo de munic�pio diferente de �9999999� para opera��o com o exterior ';
    510: vErro := 'Rejei��o: Opera��o com Exterior e C�digo Pa�s destinat�rio � 1058 (Brasil) ou n�o informado';
    511: vErro := 'Rejei��o: N�o � de Opera��o com Exterior e C�digo Pa�s destinat�rio difere de 1058 (Brasil)';
    512: vErro := 'Rejei��o: CNPJ do Local de Retirada inv�lido ';
    513: vErro := 'Rejei��o: C�digo Munic�pio do Local de Retirada deve ser 9999999 para UF retirada = EX ';
    514: vErro := 'Rejei��o: CNPJ do Local de Entrega inv�lido ';
    515: vErro := 'Rejei��o: C�digo Munic�pio do Local de Entrega deve ser 9999999 para UF entrega = EX  ';
    516: vErro := 'Rejei��o: Falha no schema XML � inexiste a tag raiz esperada para a mensagem ';
    517: vErro := 'Rejei��o: Falha no schema XML � inexiste atributo versao na tag raiz da mensagem';
    518: vErro := 'Rejei��o: CFOP de entrada para NF-e de sa�da ';
    519: vErro := 'Rejei��o: CFOP de sa�da para NF-e de entrada ';
    520: vErro := 'Rejei��o: CFOP de Opera��o com Exterior e UF destinat�rio difere de EX ';
    521: vErro := 'Rejei��o:  CFOP  de  Opera��o  Estadual  e  UF  do  emitente  difere  da  UF  do  destinat�rio para destinat�rio contribuinte do ICMS.';
    522: vErro := 'Rejei��o: CFOP de Opera��o Estadual e UF emitente difere da UF remetente para remetente contribuinte do ICMS.';
    523: vErro := 'Rejei��o: CFOP n�o � de Opera��o Estadual e UF emitente igual a UFdestinat�rio. ';
    524: vErro := 'Rejei��o: CFOP de Opera��o com Exterior e n�o informado NCM ';
    525: vErro := 'Rejei��o: CFOP de Importa��o e n�o informado dados da DI';
    526: vErro := 'Rejei��o: CFOP de Exporta��o e n�o informado Local de Embarque ';
    527: vErro := 'Rejei��o: Opera��o de Exporta��o com informa��o de ICMS incompat�vel';
    528: vErro := 'Rejei��o: Valor do ICMS difere do produto BC e Al�quota ';
    529: vErro := 'Rejei��o: NCM de informa��o obrigat�ria para produto tributado pelo IPI ';
    530: vErro := 'Rejei��o: Opera��o com tributa��o de ISSQN sem informar a Inscri��o Municipal';
    531: vErro := 'Rejei��o: Total da BC ICMS difere do somat�rio dos itens ';
    532: vErro := 'Rejei��o: Total do ICMS difere do somat�rio dos itens ';
    533: vErro := 'Rejei��o: Total da BC ICMS-ST difere do somat�rio dos itens ';
    534: vErro := 'Rejei��o: Total do ICMS-ST difere do somat�rio dos itens';
    535: vErro := 'Rejei��o: Total do Frete difere do somat�rio dos itens  ';
    536: vErro := 'Rejei��o: Total do Seguro difere do somat�rio dos itens ';
    537: vErro := 'Rejei��o: Total do Desconto difere do somat�rio dos itens ';
    538: vErro := 'Rejei��o: Total do IPI difere do somat�rio dos itens  ';
    539: vErro := 'Duplicidade de NF-e com diferen�a na Chave de Acesso ';
    540: vErro := 'Rejei��o: CPF do Local de Retirada inv�lido';
    541: vErro := 'Rejei��o: CPF do Local de Entrega inv�lido';
    542: vErro := 'Rejei��o: CNPJ do Transportador inv�lido ';
    543: vErro := 'Rejei��o: CPF do Transportador inv�lido ';
    544: vErro := 'Rejei��o: IE do Transportador inv�lida ';
    545: vErro := 'Rejei��o: Falha no schema XML � vers�o informada na versaoDados do SOAPHeader diverge da vers�o da mensagem';
    546: vErro := 'Rejei��o: Erro na Chave de Acesso � Campo Id � falta a literal NFe';
    547: vErro := 'Rejei��o: D�gito Verificador da Chave de Acesso da NF-e Referenciada inv�lido ';
    548: vErro := 'Rejei��o: CNPJ da NF referenciada inv�lido.';
    549: vErro := 'Rejei��o: CNPJ da NF referenciada de produtor inv�lido.';
    550: vErro := 'Rejei��o: CPF da NF referenciada de produtor inv�lido. ';
    551: vErro := 'Rejei��o: IE da NF referenciada de produtor inv�lido. ';
    552: vErro := 'Rejei��o: D�gito Verificador da Chave de Acesso do CT-e Referenciado inv�lido ';
    553: vErro := 'Rejei��o: Tipo autorizador do recibo diverge do �rg�o Autorizador.';
    554: vErro := 'Rejei��o: S�rie difere da faixa 0-899 ';
    555: vErro := 'Rejei��o: Tipo autorizador do protocolo diverge do �rg�o Autorizador. ';
    556: vErro := 'Rejei��o: Justificativa de entrada em conting�ncia n�o deve ser informada para tipo de emiss�o normal.';
    557: vErro := 'Rejei��o: A Justificativa de entrada em conting�ncia deve ser informada.';
    558: vErro := 'Rejei��o: Data de entrada em conting�ncia posterior a data de recebimento.';
    559: vErro := 'Rejei��o: UF do Transportador n�o informada  ';
    560: vErro := 'Rejei��o: CNPJ base do emitente difere do CNPJ base da primeira NF-e do lote recebido ';
    561: vErro := 'Rejei��o: M�s de Emiss�o informado na Chave de Acesso difere do M�s de Emiss�o da NF-e ';
    562: vErro := 'Rejei��o: C�digo Num�rico informado na Chave de Acesso difere do C�digo  Num�rico da NF-e ';
    563: vErro := 'Rejei��o: J� existe pedido de Inutiliza��o com a mesma faixa de inutiliza��o';
    564: vErro := 'Rejei��o: Total do Produto / Servi�o difere do somat�rio dos itens  ';
    565: vErro := 'Rejei��o: Falha no schema XML � inexiste a tag raiz esperada para o lote de NF-e  ';
    567: vErro := 'Rejei��o: Falha no schema XML � vers�o informada na versaoDados do SOAPHeader diverge da vers�o do lote de NF-e';
    568: vErro := 'Rejei��o: Falha no schema XML � inexiste atributo versao na tag raiz do lote de NF-e ';
    569: vErro := 'Rejei��o: Data de entrada em conting�ncia muito atrasada ';
    570: vErro := 'Rejei��o: tpEmis = 3 s� � v�lido na conting�ncia SCAN ';
    571: vErro := 'Rejei��o: O tpEmis informado diferente de 3 para conting�ncia SCAN ';
    572: vErro := 'Rejei��o: Erro Atributo ID do evento n�o corresponde a concatena��o dos campos (�ID� + tpEvento + chNFe + nSeqEvento)';
    573: vErro := 'Rejei��o: Duplicidade de Evento';
    574: vErro := 'Rejei��o: O autor do evento diverge do emissor da NF-e';
    575: vErro := 'Rejei��o: O autor do evento diverge do destinat�rio da NF-e ';
    576: vErro := 'Rejei��o: O autor do evento n�o � um �rg�o autorizado a gerar o evento ';
    577: vErro := 'Rejei��o: A data do evento n�o pode ser menor que a data de emiss�o da NF-e';
    578: vErro := 'Rejei��o: A data do evento n�o pode ser maior que a data do processamento ';
    579: vErro := 'Rejei��o: A data do evento n�o pode ser menor que a data de autoriza��o para NF-e n�o emitida em conting�ncia  ';
    580: vErro := 'Rejei��o: O evento exige uma NF-e autorizada ';
    587: vErro := 'Rejei��o: Usar somente o namespace padr�o da NF-e ';
    588: vErro := 'Rejei��o: N�o � permitida a presen�a de caracteres de edi��o no in�cio/fim da mensagem ou entre as tags da mensagem ';
    590: vErro := 'Rejei��o: Informado CST para emissor do Simples Nacional (CRT=1) ';
    591: vErro := 'Rejei��o: Informado CSOSN para emissor que n�o � do Simples Nacional (CRT diferente de 1) ';
    592: vErro := 'Rejei��o: A NF-e deve ter pelo menos um item de produto sujeito ao ICMS';
    594: vErro := 'Rejei��o: O n�mero de sequencia do evento informado � maior que o permitido ';
    595: vErro := 'Rejei��o: A vers�o do leiaute da NF-e utilizada n�o � mais v�lida';
    596: vErro := 'Rejei��o: Ambiente de homologa��o indispon�vel para recep��o de NF-e da vers�o 1.10.';
    597: vErro := 'Rejei��o: CFOP de Importa��o e n�o informado dados de IPI';
    598: vErro := 'Rejei��o: NF-e emitida em ambiente de homologa��o com Raz�o Social do destinat�rio diferente de NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    599: vErro := 'Rejei��o: CFOP de Importa��o e n�o informado dados de II';
    601: vErro := 'Rejei��o: Total do II difere do somat�rio dos itens ';
    602: vErro := 'Rejei��o: Total do PIS difere do somat�rio dos itens sujeitos ao ICMS';
    603: vErro := 'Rejei��o: Total do COFINS difere do somat�rio dos itens sujeitos ao ICMS ';
    604: vErro := 'Rejei��o: Total do vOutro difere do somat�rio dos itens Nota Fiscal Eletr�nica ';
    605: vErro := 'Rejei��o: Total do vISS difere do somat�rio do vProd dos itens sujeitos ao ISSQN ';
    606: vErro := 'Rejei��o: Total do vBC do ISS difere do somat�rio dos itens ';
    607: vErro := 'Rejei��o: Total do ISS difere do somat�rio dos itens ';
    608: vErro := 'Rejei��o: Total do PIS difere do somat�rio dos itens sujeitos ao ISSQN   ';
    609: vErro := 'Rejei��o: Total do COFINS difere do somat�rio dos itens sujeitos ao ISSQN   ';
    610: vErro := 'Rejei��o: Total da NF difere do somat�rio dos Valores comp�e o valor Total da NF. ';
    611: vErro := 'Rejei��o: cEAN inv�lido ';
    612: vErro := 'Rejei��o: cEANTrib inv�lido ';
    613: vErro := 'Rejei��o: Chave de Acesso difere da existente em BD ';
    614: vErro := 'Rejei��o: Chave de Acesso inv�lida (C�digo UF inv�lido)';
    615: vErro := 'Rejei��o: Chave de Acesso inv�lida (Ano < 05 ou Ano maior que Ano corrente)';
    616: vErro := 'Rejei��o: Chave de Acesso inv�lida (M�s < 1 ou M�s > 12)';
    617: vErro := 'Rejei��o: Chave de Acesso inv�lida (CNPJ zerado ou d�gito inv�lido) ';
    618: vErro := 'Rejei��o: Chave de Acesso inv�lida (modelo diferente de 55)';
    619: vErro := 'Rejei��o: Chave de Acesso inv�lida (n�mero NF = 0) ';
    620: vErro := 'Rejei��o: Chave de Acesso difere da existente em BD ';
    621: vErro := 'Rejei��o: CPF Emitente n�o cadastrado  ';
    622: vErro := 'Rejei��o: IE emitente n�o vinculada ao CPF ';
    623: vErro := 'Rejei��o: CPF Destinat�rio n�o cadastrado ';
    624: vErro := 'Rejei��o: IE Destinat�rio n�o vinculada ao CPF ';
    625: vErro := 'Rejei��o: Inscri��o SUFRAMA deve ser informada na venda com isen��o para ZFM ';
    626: vErro := 'Rejei��o: O CFOP de opera��o isenta para ZFM deve ser 6109 ou 6110 ';
    627: vErro := 'Rejei��o: O valor do ICMS desonerado deve ser informado ';
    628: vErro := 'Rejei��o: Total da NF superior ao valor limite estabelecido pela SEFAZ [Limite]';
    629: vErro := 'Rejei��o:  Valor  do  Produto  difere  do  produto  Valor  Unit�rio  de  Comercializa��o  e Quantidade Comercial';
    630: vErro := 'Rejei��o:  Valor do Produto  difere do produto  Valor Unit�rio de Tributa��o  e  Quantidade Tribut�vel';
    635: vErro := 'Rejei��o: NF-e com mesmo n�mero e s�rie j� transmitida e aguardando processamento';
    301: vErro := 'Uso Denegado: Irregularidade fiscal do emitente ';
    302: vErro := 'Uso Denegado: Irregularidade fiscal do destinat�rio';
    999: vErro := 'Rejei��o: Erro n�o catalogado (informar a mensagem de erro capturado no tratamento da';
  end;
  if vErro <> '' then begin
     Application.MessageBox(pchar(cErro + '-'+ vErro),'Aten��o');
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
ComAcento = '������������������������������';
SemAcento = 'aaeouaoaeioucuNAAAEOUAOAEIOUCU';
var
x: Integer;
begin
for x := 1 to Length(texto) do
if Pos(texto[x], ComAcento) <> 0 then
   texto[x] := SemAcento[Pos(texto[x], ComAcento)];
   Result := texto;
end; // da fun��o RemoveAcentoCedilhaTrema

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
                'Voc� est� recebendo a Notifica��o de Cancelamento da Nota Fiscal Eletr�nica (NF-e) n�mero '+eNumNF+
 //               ' de '+eData+'. '+ DM.ThR000NFE_CANCELADA.asString+#13+#10+#13+#10+#13+#10+
                'Motivo: '+Msg+#13+#10+#13+#10+#13+#10+
                '                                            Atenciosamente, '+#13+#10+#13+#10+#13+#10+
                '                                 Laborat�rio Lapronat Ltda.';


      mail := TStringList.Create;

      mail.values['to'] := EmailFor; ///AQUI VAI O EMAIL DO DESTINATARIO///
      mail.values['subject'] := Assunto; ///AQUI O ASSUNTO///
      mail.values['body'] := Msg; ///AQUI O TEXTO NO CORPO DO EMAIL///
      mail.values['attachment0'] := ArquivoXML;

      // Configura��o envio - Email
      DM.IdMessage1.Clear;
      DM.IdMessage1.Recipients.EMailAddresses := EmailFor;
      DM.IdMessage1.ReplyTo.EMailAddresses := EmailFor;
      DM.IdMessage1.Subject := Assunto; ///AQUI O ASSUNTO///
      DM.IdMessage1.Body.Add(mail.values['body']);


      TIdAttachmentFile.create(DM.idmessage1.MessageParts, TFileName(ArquivoXML));

      // configura��o conex�o
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
         showmessage('N�o foi poss�vel conectar');
      end;


      DM.IdSMTP1.Authenticate();

      if DM.IdSMTP1.Connected then
       begin
        try
          try
           DM.IdSMTP1.Send(DM.IdMessage1);
          except
            showmessage('N�o foi poss�vel enviar o email');
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
      messagedlg('Data inv�lida. Por favor, verifique!', mtInformation,
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
