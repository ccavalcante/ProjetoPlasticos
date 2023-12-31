unit RLCob033;

{$HINTS OFF}
{$WARNINGS OFF}

interface

uses
   classes, SysUtils, RLBoleto, DateUtils
  {$IFDEF VER150}
     , Variants, MaskUtils, contnrs, DateUtils
  {$ELSE}
   {$IFDEF VER140}
      , Variants, MaskUtils, contnrs, DateUtils
   {$ELSE}
      {$IFDEF VER130}
         , Mask, contnrs
      {$ELSE}
         , Mask
      {$ENDIF}
   {$ENDIF}
  {$ENDIF}
  {$IFDEF VER185} //Delphi 2007
  , Variants,
  {$ENDIF}
   ;

const
  CodigoBanco = '033';
  NomeBanco = 'SANTANDER'; {Banespa}
  Imagem = 12;

type
  TRLBanco033 = class(TPersistent)
{$IFNDEF VER120}
    function VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String; aLayoutArquivo: TLayoutArquivo): String;
    function VerificaMotivoRejeicaoComando(sOcorrenciaOriginal: String; sMotivoRejeicaoComando: String; sLayoutArquivo: TLayoutArquivo): String;
    function GerarRemessaCNAB240(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
    function GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
    function LerRetornoCNAB240(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
//      function LerRetornoCNAB400(var ACobranca: TgbCobranca; Retorno: TStringList) : boolean;
{$ENDIF}
  published
    function  GetNomeBanco   : string; {Retorna o nome do banco}
    function  GetImagem      : byte; {Retorna o codigo para imagem do banco}
    function  GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string; {Retorna o conte�do da parte vari�vel do c�digo de barras}
    function  CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : string; {Calcula o d�gito do NossoNumero, conforme crit�rios definidos por cada banco}
    procedure FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string); {Define o formato como alguns valores ser�o apresentados no boleto }
{$IFNDEF VER120}
    function  LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean; {L� o arquivo retorno recebido do banco}
    function  GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean; {Gerar arquivo remessa para enviar ao banco}
{$ENDIF}
  end;


implementation
uses uDM;

function TRLBanco033.GetNomeBanco : String;
begin
  Result := NomeBanco;
end;

function TRLBanco033.GetImagem : Byte;
begin
  Result := Imagem;
end;

function TRLBanco033.CalcularDigitoNossoNumero(ATitulo: TRLBTitulo) : String;
var
  ANossoNumero,
  ADigitoNossoNumero: String;
begin
  Result := '0';
  ANossoNumero := Formatar(ATitulo.NossoNumero,12,false,'0');  //era 7 no lugar de 12
  ADigitoNossoNumero := Modulo11(ANossoNumero,9);
  Result := ADigitoNossoNumero;
end;

function TRLBanco033.GetCampoLivreCodigoBarra(ATitulo: TRLBTitulo) : string;
var
  ANossoNumero,
  ACodigoAgencia,
  ACodigoCedente: string;
begin
  with ATitulo do
  begin
    ACodigoAgencia := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0');
    ACodigoCedente := Formatar(Cedente.CodigoCedente,7,false,'0');
    ANossoNumero := Formatar(NossoNumero,12,false,'0')+DigitoNossoNumero;
  end;
  Result := '9' + ACodigoCedente + ANossoNumero + '0' + ATitulo.Carteira;
end;

procedure TRLBanco033.FormatarBoleto(ATitulo: TRLBTitulo; var AAgenciaCodigoCedente, ANossoNumero, ACarteira, AEspecieDocumento: string);
begin
  with ATitulo do
  begin
    AAgenciaCodigoCedente := Formatar(Cedente.ContaBancaria.CodigoAgencia,3,false,'0') + '-' +
                             Cedente.ContaBancaria.DigitoAgencia + '/' +
                             Formatar(Cedente.CodigoCedente,7,false,'0');
    ANossoNumero := Formatar(NossoNumero,12,false,'0') + '-' + DigitoNossoNumero;
    ACarteira := Formatar(Carteira,3);
    AEspecieDocumento := '';
  end;
end;

{$IFNDEF VER120}

function TRLBanco033.GerarRemessaCNAB400(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
var
  ACedenteTipoInscricao, ASacadoTipoInscricao, aTitulosTipoOcorrencia,
  aTitulosEspecieDocumento, aTitulosAceite, Registro : String;
  cTotalTitulos: Currency;
  NumeroRegistro : integer;
begin
  NumeroRegistro := 0;
  Remessa.Clear;
  with ACobranca do
  begin

      { GERAR REGISTRO-HEADER DA REMESSA }

      Remessa.Add('0'+ // IDENT.DO REGISTRO
                  '1'+ // IDENT.DO ARQUIVO DE REMESSA
                  'REMESSA'+ // IDENT. POR EXTENSO REMESSA
                  '01'+ // IDENT. DO TIPO DE SERVI�O
                  Formatar('COBRANCA',15)+ // IDENT.POR EXTENSO TIPO SERVI�O
                  Formatar('0',11)+ // USO DO BANCO
                  Formatar('',09)+
                  Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' ')+ // NOME DA EMPRESA POR EXTENSO
                  Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0')+ // BANCO ENCARREGADO DA COBRAN�A
                  Formatar('BANESPA',15,true,' ')+ // NOME DO BANCO POR EXTENSO
                  FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataProcessamento)+ // DATA DA GRAVA��O DO ARQUIVO
                  Formatar('01600',5)+ // DENSIDADE DE GRAVA��O
                  Formatar('BPI',3)+ // UNIDADE DENSIDADE GRAVA��O
                  Formatar('',286)+ // USO DO BANCO
                  '000001'); // NUMERO SEQUENCIAL REGISTRO


      { GERAR TODOS OS REGISTROS DETALHE DA REMESSA}
      while NumeroRegistro <= (Titulos.Count - 1) do
      begin
         if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
            Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);
         case Titulos[NumeroRegistro].Cedente.TipoInscricao of
            tiPessoaFisica  : ACedenteTipoInscricao := '01';
            tiPessoaJuridica: ACedenteTipoInscricao := '02';
            tiOutro         : ACedenteTipoInscricao := '03';
         end;
         case Titulos[NumeroRegistro].Sacado.TipoInscricao of
            tiPessoaFisica  : ASacadoTipoInscricao := '01';
            tiPessoaJuridica: ASacadoTipoInscricao := '02';
            tiOutro         : ASacadoTipoInscricao := '03';
         end;

         case Titulos[NumeroRegistro].TipoOcorrencia of
            toRemessaRegistrar  : ATitulosTipoOcorrencia := '01';
            toRemessaBaixar  : ATitulosTipoOcorrencia := '02';
            toRemessaConcederAbatimento  : ATitulosTipoOcorrencia := '04';
            toRemessaCancelarAbatimento  : ATitulosTipoOcorrencia := '05';
            toRemessaAlterarVencimento  : ATitulosTipoOcorrencia := '06';
            toRemessaProtestar  : ATitulosTipoOcorrencia := '09';
//            toRemessaSustarProtestoBaixarTitulo: ATitulosTipoOcorrencia := '17';
//            toRemessaAlterarValorTitulo: ATitulosTipoOcorrencia := '19';
//            toRemessaAlterarOutrosDados: ATitulosTipoOcorrencia := '31';
         end;

         case Titulos[NumeroRegistro].EspecieDocumento of
              edDuplicataMercantil: aTitulosEspecieDocumento := '01';
              edOutros: aTitulosEspecieDocumento := '07';
         end;

         case Titulos[NumeroRegistro].AceiteDocumento of
             adNao: aTitulosAceite:='N';
             adSim: aTitulosAceite:='A';
         end;



         Registro := '1'; //  IDENT. DO REGISTRO
         Registro := Registro + Formatar(ACedenteTipoInscricao,2,false,'0'); // IDENT.TIPO INSCR.EMPRESA
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,25,false,' '); // NUMERO DO CGC DA EMPRESA
         Registro := Registro + Formatar('0',10,False,'0'); // USO DO BANCO
         Registro := Registro + Formatar('',35); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,2,false,'0'); //AG ONDE O CLIENTE MANT�M C/C
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoAgencia,1,false,'0'); //DIGITO AG
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,6,false,'0'); // C/C PARA CR�DITO DA COBRAN�A
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1); //DIGITO C/C
         Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25,true,' '); // IDENT. DO TITULO NA EMPRESA
         Registro := Registro + Formatar('',12); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero,8,True,' '); // IDENT. DO TITULO NO BANCO COM DIG VERIFICADOR
         Registro := Registro + Formatar('',25); // USO DO BANCO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Carteira,1); // CODIGO DA CARTEIRA
         Registro := Registro + Formatar(aTitulosTipoOcorrencia,2,false,'0'); // IDENT. DA TRANSACAO(OCORRENCIA)
         Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,10); // NUMERO DA DUPLICATA, ETC...
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataVencimento); // DATA DE VENCIMENTO DO TITULO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); // VALOR NOMINAL DO TITULO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0'); // BANCO ENCARREGADO DA COBRAN�A
         Registro := Registro + '00000';
         Registro := Registro + Formatar(aTitulosEspecieDocumento,2,false,'0'); // ESP�CIE DO TITULO
         Registro := Registro + Formatar(aTitulosAceite,1); // IDENT. DE ACEITE DO TITULO
         Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDocumento); // DATA DE EMISSAO DO TITULO
         Registro := Registro + '00'; // Primeira Instrucao
         Registro := Registro + '00'; // Segunda Instrucao
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); // VALOR DE MORA A SER COBRADO POR DIA DE ATRASO
         if Titulos[NumeroRegistro].DataDesconto=0 then begin
            Registro := Registro + Formatar('0',6,False,'0'); // DATA LIMITE P/ CONCESS�O DESC.
         end else begin
            Registro := Registro + FormatDateTime('ddmmyy',Titulos[NumeroRegistro].DataDesconto); // DATA LIMITE P/ CONCESS�O DESC.
         end;
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); // VALOR DESCONTO A SER CONCEDIDO
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorIOF * 100); // VALOR DE IOF
         Registro := Registro + FormatCurr('0000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); // VALOR DO ABATIMENTO

         Registro := Registro + Formatar(ASacadoTipoInscricao,2,false,'0'); // IDENT. TIPO INSCRI��O DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,14,false,'0'); // CGC/CPF DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40,true,' '); // NOME DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+
                                ' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40); // ENDERE�O DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,12); // BAIRRO DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0'); // CEP DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true); // CIDADE DO SACADO
         Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false); // ENDERE�O DO SACADO
         Registro := Registro + Formatar('',40,true,' '); // NOME DO SACADOR/AVALISTA
         Registro := Registro + ' '; // BLOQUETE (NAO USO)
         Registro := Registro + '  '; // RESERVADO
         Registro := Registro + Formatar(IntToStr(NumeroRegistro+2),6,false,'0'); // NUMERO SEQUENCIAL DO REGISTRO

         Remessa.Add(Registro);
         NumeroRegistro := NumeroRegistro + 1;
      end;
      { GERAR REGISTRO TRAILER DA REMESSA }

      Remessa.Add('9'+ // IDENT. DO REGISTRO
                  Formatar(' ',393,False,' ')+ // USO DO BANCO
                  Formatar(IntToStr(NumeroRegistro+2),6,false,'0')); // QUANTIDADE TOTAL DE REGISTROS

   end;

   Result := TRUE;
end;



function TRLBanco033.GerarRemessa(var ACobranca: TRLBRemessa; var Remessa: TStringList) : boolean;
begin
  ACobranca.LayoutArquivo := laCNAB240;  // padrao 240   DEIXAR ASSIM
  case ACobranca.LayoutArquivo of
    laCNAB240 : Result := GerarRemessaCNAB240(ACobranca, Remessa);
    laCNAB400 : Result := GerarRemessaCNAB400(ACobranca, Remessa);
  end;
end;

function TRLBanco033.LerRetorno(var ACobranca: TRLBRemessa; Retorno: TStringList) : boolean;
var
  ACodigoBanco,
  ANomeCedente,
  ATipoInscricao : string;
  NumeroRegistro : integer;
  ATitulo : TRLBTitulo;
begin
  NumeroRegistro := 0;
  ATitulo := TRLBTitulo.Create(nil);
  try
    with ACobranca do
    begin
      Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}
      if Retorno.Count <= 0 then
        Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

      case length(Retorno[0]) of
        240 :
             begin
               LayoutArquivo := laCNAB240;
               Result := LerRetornoCNAB240(ACobranca, Retorno);
             end;
         else
         begin
           LayoutArquivo := laOutro;
           Raise Exception.CreateFmt('Tamanho de registro inv�lido: %d',[length(Retorno[0])]);
         end;
       end;
    end;
    ATitulo.Free;
    Result := TRUE
  except
    ATitulo.Free;
    Result := FALSE;
    Raise;
  end;
end;

{$ENDIF}

function TRLBanco033.GerarRemessaCNAB240(var ACobranca: TRLBRemessa;  var Remessa: TStringList): boolean;
var
  ACedenteTipoInscricao, ASacadoTipoInscricao,
  Registro : string;
  NumeroRegistro, NumeroLote, vNumeroR : integer;
begin
  Result := FALSE;
  NumeroRegistro := 0;
  vNumeroR := 0;
  NumeroLote := 1;
  Registro := '';
  Remessa.Clear;

  if ACobranca.Titulos.Count < 1 then
    Exception.Create('N�o h� t�tulos para gerar remessa');

  with ACobranca do
  begin
    if LayoutArquivo <> laCNAB240 then
      Raise Exception.Create('CNAB240 � o �nico layout dispon�vel para o banco ' + CodigoBanco + ' - ' + NomeBanco);

    { GERAR REGISTRO-HEADER DO ARQUIVO }
    case Titulos[NumeroRegistro].Cedente.TipoInscricao of
      tiPessoaFisica  : ACedenteTipoInscricao := '1';
      tiPessoaJuridica: ACedenteTipoInscricao := '2';
      tiOutro         : ACedenteTipoInscricao := '3';
    end;

    if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
      Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

    Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
    Registro := Registro + '0000'; //4 a 7 -Lote de servi�o
    Registro := Registro + '0'; //8 -Tipo de registro - Registro header de arquivo
    Registro := Registro + Formatar('',8); //9 a 16 Uso exclusivo FEBRABAN/CNAB
    Registro := Registro + ACedenteTipoInscricao; //17 - Tipo de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //18 a 32 -N�mero de inscri��o do cedente
    // dados codigo transmissao ex:020800002248719
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia+'0000' + Titulos[NumeroRegistro].Cedente.ContaBancaria.Convenio,15,false,'0'); //38 a 47 - Codigo do cedente
    Registro := Registro + Formatar('',25); // 48 a 72 Brancos
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //73 a 102 - Nome do cedente
    Registro := Registro + Formatar('Banco Santander',30,True,' '); // 103-132 nome do banco
    Registro := Registro + Formatar('',10); // 133 a 142 brancos
    Registro := Registro + '1'; // 143 a 143 codigo remessa
    Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //144 a 151 - Data do de gera��o do arquivo
    Registro := Registro + Formatar('',6);
    Registro := Registro + Formatar(IntToStr(NumeroArquivo),6,false,'0'); //158 a 163 - N�mero seq�encial do arquivo
    Registro := Registro + '040'; // 164 a 166 - Versao do layout
    Registro := Registro + Formatar('',74); // brancos
    Remessa.Add(Registro);
    Registro := '';

    { GERAR REGISTRO-HEADER DA REMESSA }
    Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 -C�digo do banco
    Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote de servi�o
    Registro := Registro + '1'; //8 - Tipo do registro - Registro header de lote
    Registro := Registro + 'R'; //9 - Tipo de opera��o: R (Remessa) ou T (Retorno)
    Registro := Registro + '01'; //10 a 11 - Tipo de servi�o: 01 (Cobran�a)
    Registro := Registro + Formatar('',2); //12 a 13 - Brancos
    Registro := Registro + '030'; //14 a 16 - N�mero da vers�o do layout do lote
    Registro := Registro + ' '; //17 - Branco
    Registro := Registro + ACedenteTipoInscricao; //18 - Tipo de inscri��o do cedente
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.NumeroCPFCGC,15,false,'0'); //19 a 33 - N�mero de inscri��o do cedente
    Registro := Registro + Formatar('',20);; //34 a 53 - brancos
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia+'0000' + Titulos[NumeroRegistro].Cedente.ContaBancaria.Convenio,15,false,'0'); //54 a 68 - Codigo do cedente
    Registro := Registro + Formatar('',5); // 69 a 73 - Brancos
    Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.Nome,30,true,' '); //74 a 103 - Nome do cedente
    Registro := Registro + Formatar('',40);//Formatar(Copy(Titulos[NumeroRegistro].Instrucoes.Text,1,40),40,true,' '); //104 a 143 - Mensagem 1 para todos os boletos do lote
    Registro := Registro + Formatar('',40);//Formatar(Copy(Titulos[NumeroRegistro].Instrucoes.Text,41,80),40,true,' '); //144 a 183 - Mensagem 2 para todos os boletos do lote
    Registro := Registro + Formatar(IntToStr(NumeroArquivo),8,false,'0'); //184 a 191 - N�mero do arquivo
    Registro := Registro + FormatDateTime('ddmmyyyy',DataArquivo); //192 a 199 - Data de gera��o do arquivo
    Registro := Registro + Formatar('',41); //200 a 240 - Uso exclusivo FEBRABAN/CNAB
    Remessa.Add(Registro);
    Registro := '';

    { GERAR TODOS OS REGISTROS DETALHE DA REMESSA }
       //*********************** SEGMENTO P ****************************
    while NumeroRegistro <= (Titulos.Count - 1) do
    begin
      if Formatar(CodigoBanco,3,false,'0') <> Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') then
         Raise Exception.CreateFmt('O t�tulo (Nosso N�mero: %s) n�o pertence ao banco %s (%s)',[Titulos[NumeroRegistro].NossoNumero,CodigoBanco,NomeBanco]);

      {SEGMENTO P}
      if Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.Banco.Codigo,3,false,'0') <> Formatar(CodigoBanco,3,false,'0') then
         Raise Exception.CreateFmt('Titulo n�o pertence ao banco %s - %s',[CodigoBanco,NomeBanco]);

      case Titulos[NumeroRegistro].Cedente.TipoInscricao of
         tiPessoaFisica  : ACedenteTipoInscricao := '1';
         tiPessoaJuridica: ACedenteTipoInscricao := '2';
         tiOutro         : ACedenteTipoInscricao := '9';
      end;

      Registro := Formatar(CodigoBanco,3,false,'0'); //1 a 3 - C�digo do banco
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); //4 a 7 - N�mero do lote
      Registro := Registro + '3'; //8 - Tipo do registro: Registro detalhe
      Registro := Registro + Formatar(IntToStr(3*NumeroRegistro+1 + vNumeroR),5,false,'0'); //9 a 13 - N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q) ou R
      Registro := Registro + 'P'; //14 - C�digo do segmento do registro detalhe
      Registro := Registro + ' '; //15 - Uso exclusivo FEBRABAN/CNAB: Branco
      case Titulos[NumeroRegistro].TipoOcorrencia of //16 a 17 - C�digo de movimento
         toRemessaRegistrar                 : Registro := Registro + '01';
         toRemessaBaixar                    : Registro := Registro + '02';
         toRemessaConcederAbatimento        : Registro := Registro + '04';
         toRemessaCancelarAbatimento        : Registro := Registro + '05';
         toRemessaConcederDesconto          : Registro := Registro + '07';
         toRemessaCancelarDesconto          : Registro := Registro + '08';
         toRemessaAlterarVencimento         : Registro := Registro + '06';
         toRemessaProtestar                 : Registro := Registro + '09';
         toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
         toRemessaDispensarJuros            : Registro := Registro + '31';
         toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
      else
         Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; //case Titulos[NumeroRegistro].TipoOcorrencia
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.CodigoAgencia,4,false,'0'); //18 a 21 - Ag�ncia mantenedora da conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.fDigitoAgencia,1,false,'0'); //22 a 22 - Ag�ncia mantenedora da conta
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,9,false,'0'); //23 a 31 - N�mero da conta corrente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //32 a 32 - N�mero da conta corrente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.NumeroConta,9,false,'0'); //33 a 41 - N�mero da conta corrente
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Cedente.ContaBancaria.DigitoConta,1,false,'0'); //42 - D�gito verificador da conta
      Registro := Registro + '  '; // 43 a 44 - brancos
      Registro := Registro + Formatar(Titulos[NumeroRegistro].NossoNumero+Titulos[NumeroRegistro].DigitoNossoNumero,13,False,'0'); //45 a 57 - Nosso n�mero - identifica��o do t�tulo no banco
      Registro := Registro + '5'; //58 - C�digo da Carteira
      Registro := Registro + '1'; //59 - Forma de cadastramento do t�tulo no banco: com cadastramento
      Registro := Registro + '1'; //60- Tipo de documento: Tradicional
      Registro := Registro + '  '; // 61 a 62 brancos
      Registro := Registro + Formatar(Titulos[NumeroRegistro].NumeroDocumento,15,False,'0'); //63 a 77 - N�mero que identifica o t�tulo na empresa
      Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); //78 a 85 - Data de vencimento do t�tulo
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDocumento * 100); //86 a 100 - Valor nominal do t�tulo
      Registro := Registro + Formatar('',5,false,'0'); //101 a 105 - Ag�ncia cobradora. Se ficar em branco, a caixa determina automaticamente pelo CEP do sacado
      Registro := Registro + ' '; //106 - D�gito da ag�ncia cobradora

      //*************** Especie do documento  *******************************
      case Titulos[NumeroRegistro].EspecieDocumento of {//107 a 108 - Esp�cie do documento
         edApoliceSeguro                : Registro := Registro + '20'; {AP  AP�LICE DE SEGURO}
         edCheque                       : Registro := Registro + '01'; {CH  CHEQUE}
         edDuplicataMercantil           : Registro := Registro + '02'; {DM  DUPLICATA MERCANTIL}
         edDuplicataMercantialIndicacao : Registro := Registro + '03'; {DMI DUPLICATA MERCANTIL P/ INDICA��O}
         edDuplicataRural               : Registro := Registro + '06'; {DR  DUPLICATA RURAL}
         edDuplicataServico             : Registro := Registro + '04'; {DS  DUPLICATA DE SERVI�O}
         edDuplicataServicoIndicacao    : Registro := Registro + '05'; {DSI DUPLICATA DE SERVI�O P/ INDICA��O}
         edFatura                       : Registro := Registro + '18'; {FAT FATURA}
         edLetraCambio                  : Registro := Registro + '07'; {LC  LETRA DE C�MBIO}
         edMensalidadeEscolar           : Registro := Registro + '21'; {ME  MENSALIDADE ESCOLAR}
         edNotaCreditoComercial         : Registro := Registro + '08'; {NCC NOTA DE CR�DITO COMERCIAL}
         edNotaCreditoExportacao        : Registro := Registro + '09'; {NCE NOTA DE CR�DITO A EXPORTA��O}
         edNotaCreditoIndustrial        : Registro := Registro + '10'; {NCI NOTA DE CR�DITO INDUSTRIAL}
         edNotaCreditoRural             : Registro := Registro + '11'; {NCR NOTA DE CR�DITO RURAL}
         edNotaDebito                   : Registro := Registro + '19'; {ND  NOTA DE D�BITO}
         edNotaPromissoria              : Registro := Registro + '12'; {NP  NOTA PROMISS�RIA}
         edNotaPromissoriaRural         : Registro := Registro + '13'; {NPR NOTA PROMISS�RIA RURAL}
         edNotaSeguro                   : Registro := Registro + '16'; {NS  NOTA DE SEGURO}
         edParcelaConsorcio             : Registro := Registro + '22'; {PC  PARCELA DE CONSORCIO}
         edRecibo                       : Registro := Registro + '17'; {RC  RECIBO}
         edTriplicataMercantil          : Registro := Registro + '14'; {TM  TRIPLICATA MERCANTIL}
         edTriplicataServico            : Registro := Registro + '15' {TS  TRIPLICATA DE SERVI�O}
      else
         Registro := Registro + '99'; {OUTROS}
      end; //case Titulos[NumeroRegistro].EspecieDocumento
      //*********************************************************************

      //**************Aceite Documento **************************************
      case Titulos[NumeroRegistro].AceiteDocumento of //109 - Identifica��o de t�tulo Aceito / N�o aceito
         adSim : Registro := Registro + 'A';
         adNao : Registro := Registro + 'N';
      end; //case Titulos[NumeroRegistro].AceiteDocumento
      //*********************************************************************

      Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDocumento); //110 a 117 - Data da emiss�o do documento

      //*************************  Mora Juros  ******************************
      if Titulos[NumeroRegistro].ValorMoraJuros > 0 then
      begin
         Registro := Registro + '1'; //118 - C�digo de juros de mora: Valor por dia
         if Titulos[NumeroRegistro].DataMoraJuros <> 0 then
            Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataMoraJuros) //119 a 126 - Data a partir da qual ser�o cobrados juros
         else
            Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorMoraJuros * 100); //127 a 141 - Valor de juros de mora por dia
      end
      else
      begin
         Registro := Registro + '3'; //118 - C�digo de juros de mora  (n�o h� juros)
         Registro := Registro + Formatar('',8,false,'0'); //119 a 126 - Data a partir da qual ser�o cobrados juros
         Registro := Registro + Formatar('',15,false,'0');//127 a 141 - Valor de juros de mora por dia
      end;
      //*******************  Descontos  *********************
      if Titulos[NumeroRegistro].ValorDesconto > 0 then
      begin
         Registro := Registro + '1'; //142 - C�digo de desconto: Valor fixo at� a data informada
         if Titulos[NumeroRegistro].DataDesconto <> 0 then
            Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataDesconto) //143 a 150 - Data do desconto
         else
            Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
         Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorDesconto * 100); //151 a 165 - Valor do desconto por dia
      end
      else
      begin
         Registro := Registro + '0'; //142 - C�digo de desconto: Sem desconto
         Registro := Registro + Formatar('',8,false,'0'); //143 a 150 - Data at� a qual ser� concedido desconto
         Registro := Registro + Formatar('',15,false,'0'); //151 a 165 - Valor do desconto por dia
      end;
      //*********************************************************************
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorIOF * 100); //166 a 180 - Valor do IOF a ser recolhido
      Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorAbatimento * 100); //181 a 195 - Valor do abatimento
      Registro := Registro + Formatar(Titulos[NumeroRegistro].SeuNumero,25); //196 a 220 - Identifica��o do t�tulo na empresa
      //**********************  Protesto  ***********************************
      if (Titulos[NumeroRegistro].DataProtesto <> 0) and (Titulos[NumeroRegistro].DataProtesto > Titulos[NumeroRegistro].DataVencimento) then
      begin
         Registro := Registro + '1'; //221 - C�digo de protesto: Protestar em XX dias corridos
         Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataProtesto, Titulos[NumeroRegistro].DataVencimento)),2,false,'0'); //221 - Prazo para protesto (em dias corridos)
      end
      else
      begin
         Registro := Registro + '0'; //221 - C�digo de protesto: N�o protestar
         Registro := Registro + Formatar('',2,false,'0'); //222 a 223 - Prazo para protesto (em dias corridos)
      end;
      //**********************  Codigo p/ Baixa/Devolucao  ******************
      if (Titulos[NumeroRegistro].DataBaixa <> 0) and (Titulos[NumeroRegistro].DataBaixa > Titulos[NumeroRegistro].DataVencimento) then
      begin
         Registro := Registro + '1'; //224 - C�digo para baixa/devolu��o: Baixar/devolver}
         Registro := Registro + Formatar(IntToStr(DaysBetween(Titulos[NumeroRegistro].DataBaixa,Titulos[NumeroRegistro].DataVencimento)),3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
      end
      else
      begin
         Registro := Registro + '2'; //224 - C�digo para baixa/devolu��o: N�o baixar/n�o devolver
         Registro := Registro + Formatar('',3,false,'0'); //225 a 227 - Prazo para baixa/devolu��o (em dias corridos)
      end;
       //********************************************************************
      Registro := Registro + '00'; //228 a 229 - C�digo da moeda: Real
      Registro := Registro + Formatar('',11); //230 a 240 - Uso exclusivo FEBRABAN/CNAB

      Remessa.Add(Registro);
      Registro := '';

      {SEGMENTO Q}
      case Titulos[NumeroRegistro].Sacado.TipoInscricao of
        tiPessoaFisica  : ASacadoTipoInscricao := '1';
        tiPessoaJuridica: ASacadoTipoInscricao := '2';
        tiOutro         : ASacadoTipoInscricao := '9';
      end;

      Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
      Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
      Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
      Registro := Registro + Formatar(IntToStr(3*NumeroRegistro+2+vNumeroR),5,false,'0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
      Registro := Registro + 'Q'; {C�digo do segmento do registro detalhe}
      Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
      case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
         toRemessaRegistrar                 : Registro := Registro + '01';
         toRemessaBaixar                    : Registro := Registro + '02';
         toRemessaConcederAbatimento        : Registro := Registro + '04';
         toRemessaCancelarAbatimento        : Registro := Registro + '05';
         toRemessaConcederDesconto          : Registro := Registro + '07';
         toRemessaCancelarDesconto          : Registro := Registro + '08';
         toRemessaAlterarVencimento         : Registro := Registro + '06';
         toRemessaProtestar                 : Registro := Registro + '09';
         toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
         toRemessaDispensarJuros            : Registro := Registro + '31';
         toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
      else
         Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
      end; {case Titulos[NumeroRegistro].TipoOcorrencia}
      {Dados do sacado}
      Registro := Registro + Formatar(ASacadoTipoInscricao,1,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.NumeroCPFCGC,15,false,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Nome,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Rua+' '+Titulos[NumeroRegistro].Sacado.Endereco.Numero+' '+Titulos[NumeroRegistro].Sacado.Endereco.Complemento,40);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Bairro,15);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.CEP,8,true,'0');
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Cidade,15,true);
      Registro := Registro + Formatar(Titulos[NumeroRegistro].Sacado.Endereco.Estado,2,false);
      {Dados do sacador/avalista}
      Registro := Registro + '0'; {Tipo de inscri��o: N�o informado}
      Registro := Registro + Formatar('',15,false,'0'); {N�mero de inscri��o}
      Registro := Registro + Formatar('',40); {Nome do sacador/avalista}

      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('000',3); {Uso exclusivo FEBRABAN/CNAB}
      Registro := Registro + Formatar('',19); // brancos

      Remessa.Add(Registro);
      Registro := '';

      {SEGMENTO R}
          Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
          Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
          Registro := Registro + '3'; {Tipo do registro: Registro detalhe}
          Registro := Registro + Formatar(IntToStr(3*NumeroRegistro+3+vNumeroR),5,false,'0'); {N�mero seq�encial do registro no lote - Cada t�tulo tem 2 registros (P e Q)}
          Registro := Registro + 'R'; {C�digo do segmento do registro detalhe}
          Registro := Registro + ' '; {Uso exclusivo FEBRABAN/CNAB: Branco}
          case Titulos[NumeroRegistro].TipoOcorrencia of {C�digo de movimento}
            toRemessaRegistrar                 : Registro := Registro + '01';
            toRemessaBaixar                    : Registro := Registro + '02';
            toRemessaConcederAbatimento        : Registro := Registro + '04';
            toRemessaCancelarAbatimento        : Registro := Registro + '05';
            toRemessaConcederDesconto          : Registro := Registro + '07';
            toRemessaCancelarDesconto          : Registro := Registro + '08';
            toRemessaAlterarVencimento         : Registro := Registro + '06';
            toRemessaProtestar                 : Registro := Registro + '09';
            toRemessaCancelarInstrucaoProtesto : Registro := Registro + '10';
            toRemessaDispensarJuros            : Registro := Registro + '31';
            toRemessaAlterarNomeEnderecoSacado : Registro := Registro + '31';
          else
             Raise Exception.CreateFmt('Ocorr�ncia inv�lida em remessa - Nosso n�mero: %s / Seu n�mero: %s',[Titulos[NumeroRegistro].NossoNumero,Titulos[NumeroRegistro].SeuNumero]);
          end; {case Titulos[NumeroRegistro].TipoOcorrencia}
          Registro := Registro + '0'; {cod desconto - 0 -isento}
          Registro := Registro + '00000000'; {data desconto}
          Registro := Registro + '000000000000000'; {valor desconto}
          Registro := Registro + Formatar('',24);  {branco}
          if tipoMultaBoleto = 'P' then //porcentagem
             Registro := Registro + '2' //c�digo multa porcentagem
          else
             Registro := Registro + '1'; //c�digo multa valor
          Registro := Registro + FormatDateTime('ddmmyyyy',Titulos[NumeroRegistro].DataVencimento); {data multa}
          Registro := Registro + FormatCurr('000000000000000',Titulos[NumeroRegistro].ValorRecebido * 100);{valor multa}
          Registro := Registro + Formatar('',10);  {branco}
          Registro := Registro + Formatar('',40);  {mensagem 1}
          Registro := Registro + Formatar('',40);  {mensagem 2}
          Registro := Registro + Formatar('',61); // brancos

          Remessa.Add(Registro);
          Registro := '';
      //registro R

      NumeroRegistro := NumeroRegistro + 1;
    end; {GERAR TODOS OS REGISTROS DETALHE DA REMESSA}

     {REGISTRO TRAILER DO LOTE}
    Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
    Registro := Registro + Formatar(IntToStr(NumeroLote),4,false,'0'); {N�mero do lote}
    Registro := Registro + '5'; {Tipo do registro: Registro trailer do lote}
    Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
    {Quantidade de registros do lote, incluindo header e trailer do lote.
     At� este momento Remessa cont�m:
     1 registro header de arquivo - � preciso exclu�-lo desta contagem
     1 registro header de lote
     Diversos registros detalhe
     Falta incluir 1 registro trailer de lote
     Ou seja Quantidade = Remessa.Count - 1 header de arquivo + 1 trailer de lote = Remessa.Count}
    Registro := Registro + Formatar(IntToStr(Remessa.Count),6,false,'0');
    {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar('',217); {Uso exclusivo FEBRABAN/CNAB}

    Remessa.Add(Registro);
    Registro := '';

    {GERAR REGISTRO TRAILER DO ARQUIVO}
    Registro := Formatar(CodigoBanco,3,false,'0'); {C�digo do banco}
    Registro := Registro + '9999'; {Lote de servi�o}
    Registro := Registro + '9'; {Tipo do registro: Registro trailer do arquivo}
    Registro := Registro + Formatar('',9); {Uso exclusivo FEBRABAN/CNAB}
    Registro := Registro + Formatar(IntToStr(NumeroLote),6,false,'0'); {Quantidade de lotes do arquivo}
    Registro := Registro + Formatar(IntToStr(Remessa.Count + 1),6,false,'0'); {Quantidade de registros do arquivo, inclusive este registro que est� sendo criado agora}
    Registro := Registro + Formatar('',211); {Uso exclusivo FEBRABAN/CNAB}

    Remessa.Add(Registro);

    Result := TRUE;

  End;
end;

function TRLBanco033.LerRetornoCNAB240(var ACobranca: TRLBRemessa; Retorno: TStringList): boolean;
var
  ACodigoBanco,
  ANomeCedente,
  ATipoInscricao,
  ANumeroCPFCGC,
  ACodigoCedente,
  ACodigoAgencia,
  ADigitoCodigoAgencia,
  ANumeroConta,
  ADigitoNumeroConta,
  ATipoOcorrencia : string;
  NumeroRegistro : integer;
  ATitulo : TRLBTitulo;
begin
  NumeroRegistro := 0;
  ATitulo := TRLBTitulo.Create(nil);
  TRY
    with ACobranca do
    begin
       Titulos.Clear; {Zera o conjunto de t�tulos, antes de incluir os t�tulos do arquivo retorno}

       if Retorno.Count <= 0 then
          Raise Exception.Create('O retorno est� vazio. N�o h� dados para processar');

       if length(Retorno[0]) <> 240 then
       begin
          LayoutArquivo := laOutro;
          Raise Exception.CreateFmt('Tamanho de registro diferente de 240 bytes. Tamanho = %d bytes',[length(Retorno[0])]);
       end;

       LayoutArquivo := laCNAB240;

       {Ver se o arquivo � mesmo RETORNO DE COBRAN�A}
       if Copy(Retorno.Strings[NumeroRegistro],143,1) <> '2' then
          Raise Exception.Create(NomeArquivo+' n�o � um arquivo de retorno de cobran�a com layout CNAB240');

       { L� registro HEADER}
       ACodigoBanco := Copy(Retorno.Strings[NumeroRegistro],1,3);
       if ACodigoBanco <> CodigoBanco then
          Raise Exception.CreateFmt('Este n�o � um retorno de cobran�a do banco %s - %s',[CodigoBanco,NomeBanco]);

       if Copy(Retorno.Strings[NumeroRegistro],8,1) <> '0' then
          Raise Exception.Create('Este n�o � um registro HEADER v�lido para arquivo de retorno de cobran�a com layout CNAB240');

       {Dados do cedente do t�tulo}
       ATipoInscricao := Copy(Retorno.Strings[NumeroRegistro],17,1);
       ANumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],18,15);
       //ACodigoCedente := Copy(Retorno.Strings[NumeroRegistro],33,16);
       ACodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],33,4);
       ADigitoCodigoAgencia := Copy(Retorno.Strings[NumeroRegistro],37,1);
       ANumeroConta := Copy(Retorno.Strings[NumeroRegistro],38,9);
       ADigitoNumeroConta := Copy(Retorno.Strings[NumeroRegistro],47,1);
       ANomeCedente := Trim(Copy(Retorno.Strings[NumeroRegistro],73,30));

       DataArquivo := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],148,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],146,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],144,2)));
       NumeroArquivo := StrToInt(Trim(Copy(Retorno.Strings[NumeroRegistro],158,6)));

       NumeroRegistro := 1;

       {L� registro HEADER DE LOTE}
       {Verifica se � um lote de retorno de cobran�a}
       if Copy(Retorno.Strings[NumeroRegistro],9,3) <> 'T01' then
          Raise Exception.Create('Este n�o � um lote de retorno de cobran�a');

       {L� os registros DETALHE}
       NumeroRegistro := NumeroRegistro + 1;
       {L� at� o antepen�ltimo registro porque o pen�ltimo cont�m apenas o TRAILER DO LOTE e o �ltimo cont�m apenas o TRAILER DO ARQUIVO}
       while (NumeroRegistro < Retorno.Count - 2) do
       begin
          {Registro detalhe com tipo de segmento = T}
          if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'T' then
          begin
             {Dados do titulo}
             with ATitulo do
             begin
                {Tipo de ocorr�ncia}
                ATipoOcorrencia := Copy(Retorno.Strings[NumeroRegistro],16,2);
                OcorrenciaOriginal := ATipoOcorrencia;
                DescricaoOcorrenciaOriginal := VerificaOcorrenciaOriginal(OcorrenciaOriginal, LayoutArquivo);
                case StrToInt(ATipoOcorrencia) of
                   2 : TipoOcorrencia := toRetornoRegistroConfirmado;
                   3 : TipoOcorrencia := toRetornoRegistroRecusado;
                   6 : TipoOcorrencia := toRetornoLiquidado;
                   9 : TipoOcorrencia := toRetornoBaixado;
                   12: TipoOcorrencia := toRetornoRecebimentoInstrucaoConcederAbatimento;
                   13: TipoOcorrencia := toRetornoRecebimentoInstrucaoCancelarAbatimento;
                   14: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarVencimento;
                   17: TipoOcorrencia := toRetornoLiquidado;
                   19: TipoOcorrencia := toRetornoRecebimentoInstrucaoProtestar;
                   20: TipoOcorrencia := toRetornoRecebimentoInstrucaoSustarProtesto;
                   23: TipoOcorrencia := toRetornoEncaminhadoACartorio;
                   24: TipoOcorrencia := toRetornoRetiradoDeCartorio;
                   25: TipoOcorrencia := toRetornoProtestado;
                   26: TipoOcorrencia := toRetornoComandoRecusado;
                   27: TipoOcorrencia := toRetornoRecebimentoInstrucaoAlterarDados;
                   28: TipoOcorrencia := toRetornoDebitoTarifas;
                   30: TipoOcorrencia := toRetornoRegistroRecusado;
                   36: TipoOcorrencia := toRetornoRecebimentoInstrucaoConcederDesconto;
                   37: TipoOcorrencia := toRetornoRecebimentoInstrucaoCancelarDesconto;
                   43: TipoOcorrencia := toRetornoProtestoOuSustacaoEstornado;
                   44: TipoOcorrencia := toRetornoBaixaOuLiquidacaoEstornada;
                   45: TipoOcorrencia := toRetornoDadosAlterados;
                else
                   TipoOcorrencia := toRetornoOutrasOcorrencias;
                end; {case StrToInt(ATipoOcorrencia)}

                {Nosso n�mero SEM D�GITO}
                NossoNumero := Copy(Retorno.Strings[NumeroRegistro],41,12);
                SeuNumero := Trim(Copy(Retorno.Strings[NumeroRegistro],55,15));
                if Copy(Retorno.Strings[NumeroRegistro],70,8)<>'00000000' then
                   DataVencimento := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],74,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],72,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],70,2)));
                ValorDocumento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],78,15))/100;

                {Dados do cedente do t�tulo}
                with Cedente do
                begin
                   if ATipoInscricao = '1' then
                      TipoInscricao := tiPessoaFisica
                   else if ATipoInscricao = '2' then
                      TipoInscricao := tiPessoaJuridica
                   else
                      TipoInscricao := tiOutro;
                   NumeroCPFCGC := ANumeroCPFCGC;
                   CodigoCedente := ACodigoCedente;
                   with ContaBancaria do
                   begin
                      Banco.Codigo := ACodigoBanco;
                      CodigoAgencia := ACodigoAgencia;
                      DigitoAgencia := ADigitoCodigoAgencia;
                      NumeroConta := ANumeroConta;
                      DigitoConta := ADigitoNumeroConta;
                   end;
                   Nome := ANomeCedente;
                end; {with ACedente}

                {Dados do sacado do t�tulo}
                with Sacado do
                begin
                   if Copy(Retorno.Strings[NumeroRegistro],128,1) = '1' then
                      TipoInscricao := tiPessoaFisica
                   else if Copy(Retorno.Strings[NumeroRegistro],128,1) = '2' then
                      TipoInscricao := tiPessoaJuridica
                   else
                      TipoInscricao := tiOutro;
                   NumeroCPFCGC := Copy(Retorno.Strings[NumeroRegistro],129,15);
                   Nome := Trim(Copy(Retorno.Strings[NumeroRegistro],144,40));
                end; {with ACedente}

                ValorDespesaCobranca := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],194,15))/100;
                MotivoRejeicaoComando := Trim(Copy(Retorno.Strings[NumeroRegistro],209,10));
                DescricaoMotivoRejeicaoComando := VerificaMotivoRejeicaoComando(OcorrenciaOriginal, MotivoRejeicaoComando, LayoutArquivo);
             end; {with ATitulo}

             NumeroRegistro := NumeroRegistro + 1;
          end; {if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'T'}

          {Registro detalhe com tipo de segmento = U}
          if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'U' then
          begin
             with ATitulo do
             begin
                ValorMoraJuros := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],18,15))/100;
                ValorDesconto := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],33,15))/100;
                ValorAbatimento := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],48,15))/100;
                ValorIOF := StrToFloat(Copy(Retorno.Strings[NumeroRegistro],63,15))/100;
                ValorOutrasDespesas := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],108,15)))/100;
                ValorOutrosCreditos := StrToFloat(Trim(Copy(Retorno.Strings[NumeroRegistro],123,15)))/100;
                DataOcorrencia:= EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],142,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],140,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],138,2)));

                if TipoOcorrencia = toRetornoLiquidado then
                Begin
                   DataCredito := EncodeDate(StrToInt(Copy(Retorno.Strings[NumeroRegistro],150,4)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],148,2)),StrToInt(Copy(Retorno.Strings[NumeroRegistro],146,2)));
                   DataBaixa   := DataCredito;
                End;
             end; {with ATitulo}

             NumeroRegistro := NumeroRegistro + 1;
          end; {if Copy(Retorno.Strings[NumeroRegistro],14,1) = 'U'}

          {Insere o t�tulo}
          Titulos.Add(ATitulo);
       end;
     end;

    ATitulo.Free;
    Result := TRUE
  EXCEPT
    ATitulo.Free;
    Result := FALSE;
    Raise; {Propaga o erro}
  END;
end;

function TRLBanco033.VerificaMotivoRejeicaoComando(sOcorrenciaOriginal, sMotivoRejeicaoComando: String; sLayoutArquivo: TLayoutArquivo): String;
begin
     if (sMotivoRejeicaoComando = '  ') or (sMotivoRejeicaoComando = '00') then begin
      Result:='';
      Exit;
   end;

   case sLayoutArquivo of
      laCNAB240: begin
         if (sOcorrenciaOriginal = '02') or (sOcorrenciaOriginal = '03') or (sOcorrenciaOriginal = '26') or (sOcorrenciaOriginal = '30') then begin
            case StrToInt(sMotivoRejeicaoComando) of
               01: Result:='01-C�digo do banco inv�lido' ;
               02: Result:='02-C�digo do registro detalhe inv�lido' ;
               03: Result:='03-C�digo do segmento inv�lido' ;
               04: Result:='04-C�digo de movimento n�o permitido para carteira' ;
               05: Result:='05-C�digo de movimento inv�lido' ;
               06: Result:='06-Tipo/N�mero de inscri��o do cedente inv�lidos' ;
               07: Result:='07-Ag�ncia/Conta/DV inv�lido' ;
               08: Result:='08-Nosso n�mero inv�lido' ;
               09: Result:='09-Nosso n�mero duplicado' ;
               10: Result:='10-Carteira inv�lida' ;
               11: Result:='11-Forma de cadastramento do t�tulo inv�lido' ;
               12: Result:='12-Tipo de documento inv�lido' ;
               13: Result:='13-Identifica��o da emiss�o do bloqueto inv�lida' ;
               14: Result:='14-Identifica��o da distribui��o do bloqueto inv�lida' ;
               15: Result:='15-Caracter�sticas da cobran�a incompat�veis' ;
               16: Result:='16-Data de vencimento inv�lida' ;
               17: Result:='17-Data de vencimento anterior a data de emiss�o' ;
               18: Result:='18-Vencimento fora do prazo de opera��o' ;
               19: Result:='19-T�tulos a cargo de bancos correspondendtes com vencimento inferiror a XX dias' ;
               20: Result:='20-Valor do t�tulo inv�lido' ;
               21: Result:='21-Esp�cie do t�tulo inv�lida' ;
               22: Result:='22-Esp�cie do t�tulo n�o permitida para a carteira' ;
               23: Result:='23-Aceite inv�lido' ;
               24: Result:='24-Data da emiss�o inv�lida' ;
               25: Result:='25-Data da emiss�o posterior a data de entrada' ;
               26: Result:='26-C�digo de juros de mora inv�lido' ;
               27: Result:='27-Valor/Taxa de juros de mora inv�lido' ;
               28: Result:='28-C�digo do desconto inv�lido' ;
               29: Result:='29-Valor do desconto maior ou igual ao valor do t�tulo' ;
               30: Result:='30-Desconto a conceder n�o confere' ;
               31: Result:='31-Concess�o de desconto - J� existe desconto anterior' ;
               32: Result:='32-Valor do IOF iv�lido' ;
               33: Result:='33-Valor do abatimento inv�lido' ;
               34: Result:='34-Valor do abatimento maior ou igual ao valor do t�tulo' ;
               35: Result:='35-Valor a conceder n�o confere' ;
               36: Result:='36-Concess�o de abatimento - J� existe abatimento anterior' ;
               37: Result:='37-C�digo para protesto inv�lido' ;
               38: Result:='38-Prazo para protesto inv�lido' ;
               39: Result:='39-Pedido de protesto n�o permitido para o t�tulo' ;
               40: Result:='40-T�tulo com ordem de protesto emitida' ;
               41: Result:='41-Pedido de cancelamento/susta��o para t�tulos sem instru��o de protesto' ;
               42: Result:='42-C�digo para Baixa/Devolu��o Inv�lido' ;
               43: Result:='43-Prazo para baixa/devolu��o inv�lido' ;
               44: Result:='44-C�digo da moeda inv�lido' ;
               45: Result:='45-Nome do sacado n�o informado' ;
               46: Result:='46-Tipo/N�mero de inscri��o do sacado inv�lidos' ;
               47: Result:='47-Endereco do sacado n�o informado' ;
               48: Result:='48-CEP inv�lido' ;
               49: Result:='49-CEP sem pra�a de cobran�a (n�o localizado)' ;
               50: Result:='50-CEP referente a um banco correspondente' ;
               51: Result:='51-CEP incompat�vel com a Unidade da Federa��o' ;
               52: Result:='52-Unidade da Federa��o inv�lida' ;
               53: Result:='53-Tipo/N�mero de inscri��o do Sacador/Avalista inv�lido' ;
               54: Result:='54-Sacador/Avalista n�o informado' ;
               55: Result:='55-Nosso n�mero no banco correspondente n�o informado' ;
               56: Result:='56-C�digo do banco correspondente n�o informado' ;
               57: Result:='57-C�digo da multa inv�lido' ;
               58: Result:='58-Data da multa inv�lida' ;
               59: Result:='59-Valor/Percentual da multa inv�lido' ;
               60: Result:='60-Movimento para t�tulo n�o cadastrado' ;
               61: Result:='61-Altera��o da ag�ncia cobradora/DV inv�lida' ;
               62: Result:='62-Tipo de emiss�o inv�lido' ;
               63: Result:='63-Entrada para t�tulo j� cadastrada' ;
               64: Result:='64-N�mero da linha inv�lido' ;
               65: Result:='65-C�digo do banco para d�bido inv�lido' ;
               66: Result:='66-Ag�ncia/Conta/DV para d�bito inv�lido' ;
               67: Result:='67-Dados para d�bito incompat�vel com a identifica��o da emiss�o do bloqueto' ;
               68: Result:='68-D�bito autom�tico agendado';
               69: Result:='69-D�bito n�o agendado - Erro nos dados da remessa';
               70: Result:='70-D�bito n�o agendado - Sacado n�o consta do cadastro de autorizante';
               71: Result:='71-D�bito n�o agendado - Cedente n�o autorizado pelo sacado';
               72: Result:='72-D�bito n�o agendado - Cedente n�o participa da modalidade d�bito autom�tico';
               73: Result:='73-D�bito n�o agendado - C�digo de moeda diferente de Real (R$)';
               74: Result:='74-D�bito n�o agendado - Data de vencimento inv�lida';
               75: Result:='75-D�bito n�o agendado, conforme seu pedido, titulo n�o registrado';
               76: Result:='76-D�bito n�o agendado, Tipo/N�mero da inscri��o do debitado, inv�lido';
               77: Result:='77-Transferencia para desconto n�o permitida para carteira do t�tulo';
               78: Result:='78-Data inferior ou igual ao vencimento para d�bito autom�tico';
               79: Result:='79-Data juros de mora inv�lida';
               80: Result:='80-Data do desconto Inv�lida' ;
               81: Result:='81-Tentativas de d�bito esgotadas - Baixado' ;
               82: Result:='82-Tentativas de d�bito esgotadas - Pendente' ;
               83: Result:='83-Limite excedido' ;
               84: Result:='84-N�mero autoriza��o inexistente' ;
               85: Result:='85-T�tulo com pagamento vinculado';
               86: Result:='86-Seu n�mero inv�lido' ;
               88: Result:='88-Arquivo em duplicidade' ;
               99: Result:='99-Contrato inexistente' ;
            end;
         end;
         if (sOcorrenciaOriginal = '28') then begin
            case StrToInt(sMotivoRejeicaoComando) of
               01: Result:='01-Tarifa de extrato de posi��o' ;
               02: Result:='02-Tarifa de manuten�a� de t�tulo vencido' ;
               03: Result:='03-Tarifa de susta��o' ;
               04: Result:='04-Tarifa de Protesto' ;
               05: Result:='05-Tarifa de outras instur��es' ;
               06: Result:='06-Tarifa de outras ocorrencias' ;
               07: Result:='07-Tarifa de envio de duplicata ao sacado' ;
               08: Result:='08-Custas de protesto' ;
               09: Result:='09-Custas de susta��o de protestos' ;
               10: Result:='10-Custas de cart�rio distribuidor' ;
               11: Result:='11-Custas de edital' ;
               12: Result:='12-Tarifa sobre devolu��o de t�tulo vencido' ;
               13: Result:='13-Tarifa sobre registro cobrada na baixa/liquida��o' ;
               14: Result:='14-Tarifa sobre reapresenta��o autom�tica' ;
               15: Result:='15-Tarifa sobre rateio de cr�dito' ;
               16: Result:='16-Tarifa sobre informa��es via fax' ;
               17: Result:='17-Tarifa sobre prorroga��o de vencimento' ;
               18: Result:='18-Tarifa sobre altera��o de abatimento/desconto' ;
               19: Result:='19-Tarifa sobre arquivo mensal (em ser)' ;
               20: Result:='20-Tarifa de emiss�o de bloquto pr�-emitido pelo banco' ;
            end;
         end;
         if (sOcorrenciaOriginal = '06') or (sOcorrenciaOriginal = '09') or (sOcorrenciaOriginal = '17') then begin
            case StrToInt(sMotivoRejeicaoComando) of
               01: Result:='01-Por saldo' ;
               02: Result:='02-Por Conta' ;
               03: Result:='03-No pr�prio banco' ;
               04: Result:='04-Compensa��o elet�nica' ;
               05: Result:='05-Compensa��o convencional' ;
               06: Result:='06-Por meio elet�nico' ;
               07: Result:='07-Ap�s feriado local' ;
               08: Result:='08-Em cart�rio' ;
               09: Result:='09-Comandada banco' ;
               10: Result:='10-Comandada cliente arquivo' ;
               11: Result:='11-Comandada cliente on-line' ;
               12: Result:='12-Decurso prazo - Cliente' ;
               13: Result:='13-Decurso prazo - Banco' ;
               14: Result:='14-Protestado' ;
               15: Result:='15-T�tulo exclu�do' ;
            end;
         end;
      end;
      laCNAB400: begin
         case StrToInt(sMotivoRejeicaoComando) of
            01: Result:='01-Identifica��o inv�lida' ;
            02: Result:='02-Varia��o da carteira inv�lida' ;
            03: Result:='03-Valor dos juros por um dia inv�lido' ;
            04: Result:='04-Valor do desconto inv�lido' ;
            05: Result:='05-Esp�cie de t�tulo inv�lida para carteira' ;
            06: Result:='06-Esp�cie de valor vari�vel inv�lido' ;
            07: Result:='07-Prefixo da ag�ncia usu�ria inv�lido' ;
            08: Result:='08-Valor do t�tulo/ap�lice inv�lido' ;
            09: Result:='09-Data de vencimento inv�lida' ;
            10: Result:='10-Fora do prazo' ;
            11: Result:='11-Inexist�ncia de margem para desconto' ;
            12: Result:='12-O Banco n�o tem ag�ncia na pra�a do sacado' ;
            13: Result:='13-Raz�es cadastrais' ;
            14: Result:='14-Sacado interligado com o sacador' ;
            15: Result:='15-T�tulo sacado contra org�o do Poder P�blico' ;
            16: Result:='16-T�tulo preenchido de forma irregular' ;
            17: Result:='17-T�tulo rasurado' ;
            18: Result:='18-Endere�o do sacado n�o localizado ou incompleto' ;
            19: Result:='19-C�digo do cedente inv�lido' ;
            20: Result:='20-Nome/endereco do cliente n�o informado /ECT/' ;
            21: Result:='21-Carteira inv�lida' ;
            22: Result:='22Quantidade de valor vari�vel inv�lida' ;
            23: Result:='23-Faixa nosso n�mero excedida' ;
            24: Result:='24-Valor do abatimento inv�lido' ;
            25: Result:='25-Novo n�mero do t�tulo dado pelo cedente inv�lido' ;
            26: Result:='26-Valor do IOF de seguro inv�lido' ;
            27: Result:='27-Nome do sacado/cedente inv�lido ou n�o informado' ;
            28: Result:='28-Data do novo vencimento inv�lida' ;
            29: Result:='29-Endereco n�o informado' ;
            30: Result:='30-Registro de t�tulo j� liquidado' ;
            31: Result:='31-Numero do bordero inv�lido' ;
            32: Result:='32-Nome da pessoa autorizada inv�lido' ;
            33: Result:='33-Nosso n�mero j� existente' ;
            34: Result:='34-Numero da presta��o do contrato inv�lido' ;
            35: Result:='35-Percentual de desconto inv�lido' ;
            36: Result:='36-Dias para fichamento de protesto inv�lido' ;
            37: Result:='37-Data de emiss�o do t�tulo inv�lida' ;
            38: Result:='38-Data do vencimento anterior a data da emiss�o do t�tulo' ;
            39: Result:='39-Comando de altera��o indevido para a carteira' ;
            40: Result:='40-Tipo de moeda inv�lido' ;
            41: Result:='41-Abatimento n�o permitido' ;
            42: Result:='42-CEP do sacado inv�lido /ECT/' ;
            43: Result:='43-Codigo de unidade variavel incompativel com a data emiss�o do t�tulo' ;
            44: Result:='44-Dados para debito ao sacado inv�lidos' ;
            45: Result:='45-Carteira' ;
            46: Result:='46-Convenio encerrado' ;
            47: Result:='47-T�tulo tem valor diverso do informado' ;
            48: Result:='48-Motivo de baixa inv�lido para a carteira' ;
            49: Result:='49-Abatimento a cancelar n�o consta do t�tulo' ;
            50: Result:='50-Comando incompativel com a carteira' ;
            51: Result:='51-Codigo do convenente inv�lido' ;
            52: Result:='52-Abatimento igual ou maior que o valor do t�tulo' ;
            53: Result:='53-T�tulo j� se encontra situa��o pretendida' ;
            54: Result:='54-T�tulo fora do prazo admitido para a conta 1' ;
            55: Result:='55-Novo vencimento fora dos limites da carteira' ;
            56: Result:='56-T�tulo n�o pertence ao convenente' ;
            57: Result:='57-Varia��o incompativel com a carteira' ;
            58: Result:='58-Impossivel a transferencia para a carteira indicada' ;
            59: Result:='59-T�tulo vencido em transferencia para a carteira 51' ;
            60: Result:='60-T�tulo com prazo superior a 179 dias em transferencia para carteira 51' ;
            61: Result:='61-T�tulo j� foi fichado para protesto' ;
            62: Result:='62-Altera��o da situa��o de debito inv�lida para o codigo de responsabilidade' ;
            63: Result:='63-DV do nosso n�mero inv�lido' ;
            64: Result:='64-T�tulo n�o passivel de debito/baixa - situa��o anormal' ;
            65: Result:='65-T�tulo com ordem de n�o protestar-n�o pode ser encaminhado a cartorio' ;
            67: Result:='66-T�tulo/carne rejeitado' ;
            80: Result:='80-Nosso n�mero inv�lido' ;
            81: Result:='81-Data para concess�o do desconto inv�lida' ;
            82: Result:='82-CEP do sacado inv�lido' ;
            83: Result:='83-Carteira/varia��o n�o localizada no cedente' ;
            84: Result:='84-T�tulo n�o localizado na existencia' ;
            99: Result:='99-Outros motivos' ;
         end;
      end;
   end;
end;

function TRLBanco033.VerificaOcorrenciaOriginal(sOcorrenciaOriginal: String; aLayoutArquivo: TLayoutArquivo): String;
begin
     if sOcorrenciaOriginal='  ' then begin
      Result:='';
      Exit;
   end;
   case aLayoutArquivo of
      laCNAB240 : begin
         case StrToInt(sOcorrenciaOriginal) of
            02: Result:='02-Entrada confirmada' ;
            03: Result:='03-Entrada rejeitada' ;
            04: Result:='04-Transferencia de carteira/entrada' ;
            05: Result:='05-Transferencia de carteira/baixa' ;
            06: Result:='06-Liquida��o' ;
            09: Result:='09-Baixa' ;
            11: Result:='11-Titulos em carteira /em ser/' ;
            12: Result:='12-Confirma��o recebimento instru��o de abatimento' ;
            13: Result:='13-Confirma��o recebimento instru��o de cancelamento abatimento' ;
            14: Result:='14-Confirma��o recebimento instru��o altera��o de vencimento' ;
            15: Result:='15-Franco de pagamento' ;
            17: Result:='17-Liquida��o ap�s baixa ou liquida��o t�tulo n�o registrado';
            19: Result:='19-Confirma��o de recebimento de instru��es para protesto' ;
            20: Result:='20-Confirma��o recebimento instru��o de sust��o/cancelamento de protesto' ;
            23: Result:='23-Remessa a cartorio' ;
            24: Result:='24-Retirada de cartorio e manuten��o em carteira' ;
            25: Result:='25-Protestado e baixado /baixa por ter sido protestado/' ;
            26: Result:='26-Instru��o rejeitada';
            27: Result:='27-Confirma��o do pedido de altera��o de outros dados' ;
            28: Result:='28-Manuten��o de tarifas/custas' ;
            29: Result:='29-Ocorrencias do sacado' ;
            30: Result:='30-Altera��o de dados rejeitada' ;
         end;
      end;
      laCNAB400 : begin
         case StrToInt(sOcorrenciaOriginal) of
            02: Result:='02-Confirma��o de Entrada de T�tulo' ;
            03: Result:='03-Comando recusado' ;
            05: Result:='05-Liquidado sem registro' ;
            06: Result:='06-Liquida��o Normal' ;
            07: Result:='07-Liquida��o por Conta' ;
            08: Result:='08-Liquida��o por Saldo' ;
            09: Result:='09-Baixa de T�tulo' ;
            10: Result:='10-Baixa Solicitada' ;
            11: Result:='11-Titulos em Ser' ;
            12: Result:='12-Abatimento Concedido' ;
            13: Result:='13-Abatimento Cancelado' ;
            14: Result:='14-Altera��o de Vencimento do Titulo' ;
            15: Result:='15-Liquida��o em Cart�rio' ;
            19: Result:='19-Confirma��o de recebimento de instru��es para protesto' ;
            20: Result:='20-D�bito em Conta' ;
            21: Result:='21-Altera��o do Nome do Sacado' ;
            22: Result:='22-Altera��o do Endere�o do Sacado' ;
            23: Result:='23-Indica��o de encaminhamento a cart�rio' ;
            24: Result:='24-Sustar Protesto' ;
            25: Result:='25-Dispensar Juros' ;
            28: Result:='28-Manuten��o de titulo vencido' ;
            72: Result:='72-Altera��o de tipo de cobran�a' ;
            96: Result:='96-Despesas de Protesto' ;
            97: Result:='97-Despesas de Susta��o de Protesto' ;
            98: Result:='98-D�bito de Custas Antecipadas' ;
         end;
      end;
   end;
end;

initialization
  RegisterClass(TRLBanco033);

{$HINTS ON}
{$WARNINGS ON}

end.
