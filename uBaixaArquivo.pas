unit uBaixaArquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls, DB, Grids, DBGrids, ComCtrls,
  ActnList, XiButton, Mask, CheckDBGrid, ZSqlUpdate, ZAbstractRODataset,
  ZAbstractDataset, ZDataset,  System.Actions;

type
  TfBaixaArquivo = class(TForm)
    Label1: TLabel;
    edArqRetorno: TEdit;
    AbreArquivo: TOpenDialog;
    btnBusca: TSpeedButton;
    dRet: TDataSource;
    XiButton1: TXiButton;
    ActionList1: TActionList;
    acSair: TAction;
    acImprimir: TAction;
    XiButton2: TXiButton;
    lBanco: TLabel;
    XiButton3: TXiButton;
    acBaixar: TAction;
    Label4: TLabel;
    dDis: TDataSource;
    DBGrid3: TDBGrid;
    XiButton4: TXiButton;
    acBuscar: TAction;
    Label3: TLabel;
    Shape1: TShape;
    DBGrid1: TCheckDBGrid;
    Shape2: TShape;
    Label5: TLabel;
    Shape3: TShape;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    qRet: TZQuery;
    uRet: TZUpdateSQL;
    qDis: TZQuery;
    Banco: TZQuery;
    Image1: TImage;
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
    qDisnossonum: TIntegerField;
    qDisemissao: TDateTimeField;
    qDisvalor: TFloatField;
    qDisvenci: TDateTimeField;
    qDisnome: TWideStringField;
    qDisbaixa: TWideStringField;
    qDisdocumento: TWideStringField;
    qDisidretorno: TIntegerField;
    qDisbconta: TIntegerField;
    qRetID: TIntegerField;
    qRetRETORNO: TIntegerField;
    qRetDATA: TDateTimeField;
    qRetPEDIDO: TWideStringField;
    qRetNOSSONUM: TWideStringField;
    qRetVENCI: TDateTimeField;
    qRetVALORTIT: TFloatField;
    qRetPGTO: TDateTimeField;
    qRetVALORPAGO_1: TFloatField;
    qRetNOMECLI: TWideStringField;
    qRetARQUIVO: TWideStringField;
    qRetOCORRENCIA: TWideStringField;
    qRetBANCO: TWideStringField;
    qRetTIPO: TWideStringField;
    qRetX: TWideStringField;
    qRetL: TWideStringField;
    qRetNN_SICREDI: TWideStringField;
    qRetdestipo: TWideStringField;
    qRetvalorpago: TFloatField;
    qDisidcliente: TIntegerField;
    BancoBAGENCIAD: TWideStringField;
    Bancoendcedende: TWideStringField;
    Banconumcedende: TWideStringField;
    Bancobaicedende: TWideStringField;
    Bancocidcedende: TWideStringField;
    Bancoufcedende: TWideStringField;
    Bancocepcedende: TWideStringField;
    BancoBCNAB: TIntegerField;
    BancotipoMulta: TWideStringField;
    BancotipoProtesto: TWideStringField;
    BancoNomeBanco: TWideStringField;
    qDisidemp: TIntegerField;
    procedure btnBuscaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Geralog;
    procedure acSairExecute(Sender: TObject);
    procedure ValorTtl;
    function VerificaOcorrencia(bco, Ocorrencia: String): String;
    procedure acImprimirExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaCReceber;
    procedure acBaixarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure acBuscarExecute(Sender: TObject);
    procedure DBGrid3DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckBox1Click(Sender: TObject);
    procedure qRetBeforePost(DataSet: TDataSet);
    procedure qRetNewRecord(DataSet: TDataSet);

  private
    { Private declarations }
    nBanco : String;
  public
    { Public declarations }
    nnumeroR, nnumeroD:string;
  end;

var
  fBaixaArquivo: TfBaixaArquivo;

implementation

uses uDM,StrUtils, uFuncao, uBaixaArquivo_I;

{$R *.dfm}

procedure TfBaixaArquivo.btnBuscaClick(Sender: TObject);
begin
   AbreArquivo.InitialDir := Extractfilepath(Application.ExeName)+'Retorno';
   if AbreArquivo.Execute = true then begin
      EdArqRetorno.Text := AbreArquivo.FileName;
      if Application.MessageBox('Deseja carregar arquivo de retorno?','Aten��o',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idyes then
         geralog;
   end;
   EdArqRetorno.Text := '';
end;

procedure  TfBaixaArquivo.geralog;
var ARQ : TStringList;
    I:integer;
    tipoarq:integer;
    Linha, tipo_reg, empresa, nEmp, seg,
    retorno, dataret, PEDIDO, nossonum, datavenci, valortit, nossonum_sicredi,
    datapg, valorpg, nomecli, {nBanco,} vTar, vSTar : String;
    numOco, oco, tipo : string;

begin

  nnumeroR := '';
  nnumeroD := '';
  qDis.Close;


  ARQ := TStringList.Create;
  ARQ.LoadFromFile(AbreArquivo.FileName);
  Linha := arq[0];
  tipoarq := length(Linha);
  if tipoarq <= 240 then
    begin
      nBanco    := Midstr( linha, 1, 3);

      banco.open;
      banco.Locate('bco', nBanco, [] );

      retorno   := Midstr( Linha, 158, 6);
      dataret   := Midstr( Linha, 144, 2) + '/'+ Midstr( Linha, 146, 2) + '/' + Midstr( Linha, 148, 4);
      //verifica banco
      if nBanco = '001' then  lbanco.Caption := 'Banco do Brasil'
      else
      if nBanco = '033' then  lbanco.Caption := 'Banco Santander'
      else
      if nBanco = '104' then  lbanco.Caption := 'Banco Caixa'
      else
      if nBanco = '756' then lbanco.Caption := 'Banco Sicoob';


      if (nBanco = '237') or (nBanco = '341') then begin
        Application.MessageBox(pchar('Banco '+ nBanco +' configurado apenas para retorno com layout CNAB400'),'Aten��o');
        exit;
      end;


      // verificar se ja foi baixado
      qRet.close;
      qRet.SQL.Clear;
      qRet.SQL.Add(' select coalesce( retorno.valorpago,0) valorpago, retorno.*, ''Cliente'' destipo '+
                         ' from retorno where retorno.retorno = '+quotedstr(retorno) +
                         ' and retorno.l <> ''I'' and retorno.banco = '  + quotedstr(trim(nBanco)) +
                         ' order by retorno.l desc,  retorno.tipo, retorno.nossonum ' );
      qRet.Open;
      if not qRet.IsEmpty  then begin
        if Application.MessageBox('Arquivo j� carregado. Deseja repetir o processo?','Confirma��o', MB_YESNO)= idno then begin
           qRet.close;
           Exit;
         end
        else begin
         ExecSQL( ' update retorno set retorno.L = ''I'' where retorno.retorno = '+ trim(inttostr(strtoint(retorno)))+
                  '  and retorno.banco = '  + quotedstr(trim(nBanco)) );
         qRet.close;
         qRet.open;

         // verifica se ja foi baixado
         dm.qPesq.close;
         dm.qPesq.SQL.Clear;
         dm.qPesq.SQL.Add( ' select creceber.id codigo from creceber '+
                           ' left join retorno on retorno.id = creceber.idretorno '+
                           ' where retorno.retorno = ' + quotedstr(retorno) +
                           '       and retorno.banco = ' + quotedstr(trim(nBanco)) );
         dm.qPesq.Open;
         if dm.qPesq.RecordCount > 0 then begin
            Application.MessageBox('Arquivo com lan�amentos j� baixados.','Confirma��o');
            qRet.close;
            Exit;
         end;

        end;
      end;

      qRet.First;
      FOR I := 0 TO ARQ.Count - 1 DO BEGIN
        LINHA :=  ARQ[I];
				tipo_reg := MidStr(Linha, 8,1);//Tipo de Registro
        seg      := MidStr(Linha,14,1);//seguimento

        if (tipo_reg = '0') then begin
           empresa  := MidStr(Linha, 19,14);//cnpj   Linha
           if trim(empresa) <> trim(Bancocnpjcedente.AsString) then begin  // verificando o arquivo
              Application.MessageBox(pchar('Arquivo retorno n�o pertence a empresa cadastrada.'+#13 +
                                           'CNPJ requerido: ' + trim(Bancocnpjcedente.AsString) +  #13 +
                                           'CNPJ informado: ' + trim(empresa)  )
                                           ,'Aten��o');
              break;
           end;
        end;

        if (tipo_reg = '3') and (seg = 'T') then begin
           PEDIDO      := MidStr(Linha, 59,10);  //testar caixa
           if nBanco = '104' then
             begin
               tipo        := MidStr(Linha, 49,1) ;
     					 nossonum    := MidStr(Linha, 50,7);
    					 nomecli     := '';
    			     datavenci   := MidStr(Linha, 74,2)+'/'+MidStr(Linha, 76,2)+'/'+MidStr(Linha, 78,4);
    			     valortit    := MidStr(Linha, 82,13)+','+MidStr(Linha, 95,2);
             end
            else
           if nBanco = '033' then
             begin
               PEDIDO      := MidStr(Linha, 55,15);  //testar caixa
               tipo        := MidStr(Linha, 41,1) ;
     					 nossonum    := MidStr(Linha, 42,11);
    					 nomecli     := '';
    			     datavenci   := MidStr(Linha, 70,2)+'/'+MidStr(Linha, 72,2)+'/'+MidStr(Linha, 74,4);
    			     valortit    := MidStr(Linha, 78,13)+','+MidStr(Linha, 91,2);
             end
             else
             if nBanco = '756' then
             begin
               tipo        := MidStr(Linha, 38,1) ;
     					 nossonum    := MidStr(Linha, 39,8);
    					 nomecli     := MidStr(Linha, 149,40);
    			     datavenci   := MidStr(Linha, 74,2)+'/'+MidStr(Linha, 76,2)+'/'+MidStr(Linha, 78,4);
    			     valortit    := MidStr(Linha, 82,13)+','+MidStr(Linha, 95,2);
               numOco      := MidStr(Linha, 16, 2) //ocorrencia
             end
            else
             begin
               tipo        := MidStr(Linha, 45,1); // 1- distribuidor 2- revendedor
     					 nossonum    := MidStr(Linha, 46,9);
    					 nomecli     := MidStr(Linha, 149,40);
    			     datavenci   := MidStr(Linha, 74,2)+'/'+MidStr(Linha, 76,2)+'/'+MidStr(Linha, 78,4);
    			     valortit    := MidStr(Linha, 82,13)+','+MidStr(Linha, 95,2);
             end;

           //sem pedido
           if trim(PEDIDO) = '' then begin
                    dm.qPesq.close;
                    dm.qPesq.SQL.Clear;
                    dm.qPesq.SQL.Add(' select boleto.numero_doc, cliente.nome from boleto '+
                                     ' left join cliente on cliente.id = boleto.idcliente '+
                                     ' where boletos.idthr030 = ' + inttostr(strtoint(nossonum)) );
                    dm.qPesq.Open;
                    Pedido      := dm.qPesq.fieldbyname('numero_doc').Text;
                    nomecli     := dm.qPesq.fieldbyname('nome').Text;
           end;
           if trim(nomecli) = '' then begin
                    dm.qPesq.close;
                    dm.qPesq.SQL.Clear;
                    dm.qPesq.SQL.Add(' select cliente.nome from creceber '+
                                     ' left join cliente on cliente.id = creceber.idcliente '+
                                     ' where creceber.id = ' + inttostr(strtoint(nossonum)) );
                    dm.qPesq.Open;
                    nomecli     := dm.qPesq.fieldbyname('nome').Text;
           end;

        end;

        if (tipo_reg = '3') and (seg = 'U') then begin
			     datapg      := MidStr(Linha, 138,2)+'/'+MidStr(Linha, 140,2)+'/'+MidStr(Linha, 142,4);
           valorpg     := MidStr(Linha, 78,13)+','+MidStr(Linha, 91,2);
           if nBanco = '104' then
               numOco      := MidStr(Linha, 16, 2)
           else
           if nBanco = '033' then
               numOco      := MidStr(Linha, 16, 2)
           else
              if nBanco <> '756' then //pega antes em T
               numOco      := MidStr(Linha, 154, 4);


          if nBanco = '001' then//brasil
             if MidStr(Linha, 146,8) = '00000000' then  //data de eftiva��o de cr�dito - se n�o tem ira data de pagamento q � data de ocorrencia
               datapg := '  /  /  ';

          if nBanco = '756' then //sicoob           //protesto
             if (valorpg = '0000000000000,00') or (numOco = '25') then
               datapg := '  /  /  ';

          if nBanco = '033' then  //santander Data da ocorr�ncia/Data da efetiva��o do cr�dito vem preenchido mesmo com valor pago = 0
             if strtofloat(valorpg) = 0 then
               datapg := '  /  /  ';

           if trim(numOco) <> '' then oco := VerificaOcorrencia(nBanco, numOco);
           if (copy(trim(nossonum),1,1) = '0') {and ((tipo = '1') or (tipo = '2'))} then begin   // gravando no arquivo de log
               qRet.Insert;
               qRetRetorno.Value    := strtoint(retorno);
               if not ((dataret = '  /  /  ') or (dataret = '00/00/00') ) then
                  qRetdata.Value       := strtodatetime(dataret)
                else
                  qRetdata.Value       := date;
               qRetpedido.Value     := trim(pedido);
               qRetTipo.Value       := tipo;
               qRetNossoNum.Value   := trim(nossonum);
               if not ((datavenci = '  /  /  ') or (datavenci = '00/00/00') or (datavenci = '00/00/0000')) then
                  qRetVenci.Value      := strtodatetime(datavenci) ;
               qRetvalortit.Value   := strtofloat( valortit );
               qRetVALORPAGO_1.Value  := strtoFloat( valorpg );
               qRetNomeCli.Value    := nomecli;
               qRetArquivo.Value    := ExtractFileName(edArqRetorno.Text);
               if oco <> '' then qRetOcorrencia.value := oco;
               qRetbanco.Value      := nbanco;
               if not ((datapg = '  /  /  ') or (datapg = '00/00/00') or (datapg = '00/00/0000')) then
                  qRetPGTO.Value    := strtodatetime(datapg) ;
               qRetX.value          := 'F';
               qRetL.value          := 'N';
               qRet.Post;
           end;
           PEDIDO      := '';
    			 nossonum    := '';
           datavenci   := '';
           valortit    := '';
	         datapg      := '';
           valorpg     := '';
			     nomecli     := '';
           oco         := '';
           tipo        := '';
        end;
      end;
    end
  else
  if tipoarq = 400 then
    begin  //  retorno 400
      nBanco    := Midstr( linha, 77, 3);

      banco.open;
      banco.Locate('bco', nBanco, [] );

      retorno   := Midstr( Linha, 109, 5);
      dataret   := Midstr( Linha, 95, 2) + '/'+ Midstr( Linha, 97, 2) + '/' + Midstr( Linha, 99, 2);
      //verifica banco
      if nBanco = '237' then  lbanco.Caption := 'Banco Bradesco';
      if nBanco = '341' then  lbanco.Caption := 'Banco Itau';

      if nBanco = '748' then  begin
         lbanco.Caption := 'Banco SICREDI';
         retorno   := Midstr( Linha, 111, 7);
         dataret   := Midstr( Linha, 101, 2) + '/'+ Midstr( Linha, 99, 2) + '/' + Midstr( Linha, 95, 4);
      end;

      if (nBanco = '104') or (nBanco = '001') or (nBanco = '033')  then begin
        Application.MessageBox(pchar('Banco '+ nBanco +' configurado apenas para retorno com layout CNAB400'),'Aten��o');
        exit;
      end;

      // verificar se ja foi baixado
      qRet.close;
      qRet.SQL.Clear;
      if nBanco = '748' then  begin
         uRet.RefreshSQL.Clear;
         uRet.RefreshSQL.Add(' select coalesce( retorno.valorpago,0) valorpago, retorno.*, '+
                             ' ''Cliente'' destipo '+
                             ' from retorno where retorno.ID = :ID');

         qRet.SQL.Add(' select coalesce( retorno.valorpago,0) valorpago, retorno.*, '+
                         ' ''Cliente'' destipo '+
                         ' from retorno where retorno.retorno = ' + quotedstr(retorno) +
                         ' and retorno.l <> ''I'' and retorno.banco = '  + quotedstr(trim(nBanco)) +
                         ' order by retorno.l desc, retorno.tipo, retorno.nossonum' );
      end
      else begin
         qRet.SQL.Add(' select coalesce( retorno.valorpago,0) valorpago, retorno.*, ''Cliente'' destipo '+
                         ' from retorno where retorno.retorno = ' + quotedstr(retorno) +
                         ' and retorno.l <> ''I'' and retorno.banco = '  + quotedstr(trim(nBanco)) +
                         ' order by retorno.l desc, retorno.tipo, retorno.nossonum' );
      end;

      qRet.Open;

      if not qRet.IsEmpty  then begin
        if Application.MessageBox('Arquivo j� carregado. Deseja repetir o processo?','Confirma��o', MB_YESNO)= idno then begin
          qRet.close;
          Exit;
        end
        else
        begin
         ExecSQL( ' update retorno set retorno.l = ''I'' where retorno.retorno = '+ trim(inttostr(strtoint(retorno)))+
                  '  and retorno.banco = '  + quotedstr(trim(nBanco)) );
         qRet.close;
         qRet.open;
         // verifica se ja foi baixado
         dm.qPesq.close;
         dm.qPesq.SQL.Clear;
         dm.qPesq.SQL.Add( ' select creceber.id codigo from creceber '+
                           ' left join retorno on retorno.id = creceber.idretorno '+
                           ' where retorno.retorno = ' + quotedstr(retorno) +
                           '       and retorno.banco = ' + quotedstr(trim(nBanco)) );
         dm.qPesq.Open;
         if dm.qPesq.RecordCount > 0 then begin
            Application.MessageBox('Arquivo com lan�amentos j� Baixados.','Confirma��o');
            qRet.close;
            Exit;
         end;
        end;
      end;

      FOR I := 0 TO ARQ.Count - 1 DO BEGIN
        LINHA :=  ARQ[I];
				tipo_reg := MidStr(Linha, 1,1);//Tipo de Registro
        //seg      := MidStr(Linha,14,1);//seguimento

        if (tipo_reg = '0') then begin
           nEmp  := MidStr(Linha, 47,30);//nome  Linha
           if nBanco = '748' then
               empresa  := MidStr(Linha, 32,14) //cnpj   Linha
        end;

        if (tipo_reg = '1') then begin
           if nBanco <> '748' then
              empresa  := MidStr(Linha, 04,14);//cnpj   Linha

           if trim(empresa) <> trim(Bancocnpjcedente.AsString) then begin  // verificando o arquivo
              Application.MessageBox(pchar('Arquivo retorno n�o pertence a empresa cadastrada.'+#13+#13 +
                                           'CNPJ cadastrado:' + trim(Bancocnpjcedente.AsString) + trim(BancoNOMECEDENTE.AsString) +  #13+#13 +
                                           'CNPJ informado :' + trim(nEmp)  ),'Aten��o');
              break;
           end;
        end;

        if (tipo_reg = '1') then begin
           PEDIDO      := MidStr(Linha, 117,10);
					 if nbanco = '237' then
              begin
                 tipo        := MidStr(Linha, 71,1);
                 nossonum    := MidStr(Linha, 72,10);
              end
           else
					 if nbanco = '341' then
              begin
                tipo        := MidStr(Linha, 63,1);
                nossonum    := MidStr(Linha, 64,7);
              end
           else
					 if nbanco = '748' then
              begin
                nossonum_sicredi := MidStr(Linha, 48,8);
                   tipo     := '1';
                   dm.qPesq.close;
                   dm.qPesq.SQL.Clear;
                   dm.qPesq.SQL.Add( ' select nosso_numero NN from boleto '+
                                     ' where nn_sicredi = ' + quotedstr( nossonum_sicredi ) );
                   dm.qPesq.Open;
                nossonum   := trim(dm.qPesq.fieldbyname('NN').text);
                nossonum   := copy(nossonum, 2,length(nossonum));
              end;

			     datavenci   := MidStr(Linha, 147,2)+'/'+MidStr(Linha, 149,2)+'/'+MidStr(Linha, 151,2);
			     valortit    := MidStr(Linha, 153,11)+','+MidStr(Linha, 164,2);

					 if nbanco = '748' then
              nomecli     := ''    //MidStr(Linha, 149,40);
           else
					 if nbanco = '237' then
              nomecli     := ''    //MidStr(Linha, 149,40);
           else
					 if nbanco = '341' then
              nomecli     := MidStr(Linha, 325,30);

           if trim(nomecli) = '' then begin
                  if (tipo = '1') and (copy(nossonum,1,1)='0') then begin
                    dm.qPesq.close;
                    dm.qPesq.SQL.Clear;
                    dm.qPesq.SQL.Add(' select cliente.nome from creceber '+
                                     ' left join cliente on cliente.id = creceber.idcliente '+
                                     ' where creceber.id = ' + inttostr(strtoint(nossonum)) );
                    dm.qPesq.Open;
                    nomecli     := dm.qPesq.fieldbyname('nome').Text;
                  end;
           end;

           if nbanco = '748' then
    			     datapg      := MidStr(Linha, 335,2)+'/'+MidStr(Linha, 333,2)+'/'+MidStr(Linha, 329,4)
           else
		    	     datapg      := MidStr(Linha, 296,2)+'/'+MidStr(Linha, 298,2)+'/'+MidStr(Linha, 300,2);

           if nbanco = '748' then
              valorpg     := MidStr(Linha, 254,11)+','+MidStr(Linha, 265,2)
           else
           if nbanco = '237' then
              valorpg     := MidStr(Linha, 254,11)+','+MidStr(Linha, 265,2)
           else
					 if nbanco = '341' then
              begin
                 vtar     := MidStr(Linha, 176,11)+','+MidStr(Linha, 187,2);
                 vsTar    := MidStr(Linha, 254,11)+','+MidStr(Linha, 265,2);
                 if strtofloat(vtar) > strtofloat(valortit) then
                    valorpg := floattostr(strtofloat(vtar)-strtofloat(vsTar))
                  else
                    valorpg := floattostr(strtofloat(vtar)+strtofloat(vsTar));
              end;

           numOco      := MidStr(Linha, 109, 2);
           if trim(numOco) <> '' then
             oco := VerificaOcorrencia(nBanco,numOco);

            if (nbanco = '748') and (trim(numOco) = '28') then // SICRED ver se n�o � TARIFA
             begin
              nossonum := '';
             end;

            if (nbanco = '341') and ((trim(numOco) = '02') or (trim(numOco) = '29')) then // Itau ver se n�o � TARIFA
             begin
              nossonum := '';
             end;

           // gravando no arquivo de log
           if  (copy(nossonum,1,1)='0') then begin
               qRet.Insert;
               qRetRetorno.Value    := strtoint(retorno);
               if not ((dataret = '  /  /  ') or (dataret = '00/00/00') or (dataret = '00/00/0000') ) then
                  qRetdata.Value       := strtodatetime(dataret)
                else
                  qRetdata.Value       := date;
               qRetpedido.Value     := trim(pedido);
               qRettipo.Value       := tipo;
               qRetNossoNum.Value   := trim(nossonum);
               if not ((datavenci = '  /  /  ') or (datavenci = '00/00/00') or (datavenci = '00/00/0000') ) then
                  qRetVenci.Value      := strtodatetime(datavenci);
               qRetvalortit.Value   := strtofloat( valortit );
               qRetNomeCli.Value    := nomecli;
               qRetArquivo.Value    := ExtractFileName(edArqRetorno.Text);
               if oco <> '' then
                  qRetOcorrencia.value := oco;
               qRetbanco.Value      := nbanco;
               if not ((datapg = '  /  /  ') or (datapg = '00/00/00')  or (datapg = '00/00/0000') ) then
                  qRetpgto.Value       := strtodatetime(datapg);
               qRetValorPago_1.Value  := strtoFloat( valorpg );
               if oco = '06' then
                  qRetX.value          := 'T'
               else
                  qRetX.value          := 'F';

               qRetL.value          := 'N';
               qRetNN_SICREDI.Text  := nossonum_sicredi;
               qRet.Post;
           end;
           PEDIDO           := '';
     			 nossonum         := '';
     			 nossonum_sicredi := '';
	         datavenci   := '';
	         valortit    := '';
	         datapg      := '';
           valorpg     := '';
			     nomecli     := '';
           oco         := '';
           tipo        := '';
        end;
      end;
    end;

  qRet.ApplyUpdates;
  qRet.close;
  qRet.Open;
  Dbgrid1.SetFocus;


end;



procedure TfBaixaArquivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  fBaixaArquivo := nil;
end;

procedure TfBaixaArquivo.acSairExecute(Sender: TObject);
begin
   close;
end;



procedure TfBaixaArquivo.ValorTtl;
var  vt: real;
Begin

   vt := 0;
   if  (qDis.Active = true) and (qDis.IsEmpty = false) then
    Begin
     DBGrid3.DataSource := nil;
     qDis.First;
     while qDis.Eof = false do begin
      vt := vt + qDisValor.Value;
      qDis.Next;
     end;
     DbGrid3.DataSource := dDis;
    end;

   //edTotal.text := FormatFloat('###,###,###,##0.00', vt );


end;


function TfBaixaArquivo.VerificaOcorrencia(bco, Ocorrencia: String): String;
begin
  if Ocorrencia = '' then
  begin
    Result:='';
    Exit;
  end;

  if bco = '104' then
  begin
    case StrToInt(Ocorrencia) of
      02 : Result := 'Entrada Confirmada';
      03 : Result := 'Entrada Rejeitada';
      04 : Result := 'Transfer�ncia de Carteira/Entrada';
      05 : Result := 'Transfer�ncia de Carteira/Baixa';
      06 : Result := 'Liquida��o';
      07 : Result := 'Confirma��o do Recebimento da Instru��o de Desconto';
      08 : Result := 'Confirma��o do Recebimento do Cancelamento do Desconto';
      09 : Result := 'Baixa';
      11 : Result := 'T�tulos em Carteira (Em Ser)';
      12 : Result := 'Confirma��o Recebimento Instru��o de Abatimento';
      13 : Result := 'Confirma��o Recebimento Instru��o de Cancelamento Abatimento';
      14 : Result := 'Confirma��o Recebimento Instru��o Altera��o de Vencimento';
      15 : Result := 'Franco de Pagamento';
      17 : Result := 'Liquida��o Ap�s Baixa ou Liquida��o T�tulo N�o Registrado';
      19 : Result := 'Confirma��o Recebimento Instru��o de Protesto';
      20 : Result := 'Confirma��o Recebimento Instru��o de Susta��o/Cancelamento de Protesto';
      23 : Result := 'Remessa a Cart�rio (Aponte em Cart�rio)';
      24 : Result := 'Retirada de Cart�rio e Manuten��o em Carteira';
      25 : Result := 'Protestado e Baixado (Baixa por Ter Sido Protestado)';
      26 : Result := 'Instru��o Rejeitada';
      27 : Result := 'Confirma��o do Pedido de Altera��o de Outros Dados';
      28 : Result := 'D�bito de Tarifas/Custas';
      29 : Result := 'Ocorr�ncias do Sacado';
      30 : Result := 'Altera��o de Dados Rejeitada';
      33 : Result := 'Confirma��o da Altera��o dos Dados do Rateio de Cr�dito';
      34 : Result := 'Confirma��o do Cancelamento dos Dados do Rateio de Cr�dito';
      35 : Result := 'Confirma��o do Desagendamento do D�bito Autom�tico';
      36 : Result := 'Confirma��o de envio de e-mail/SMS';
      37 : Result := 'Envio de e-mail/SMS rejeitado';
      38 : Result := 'Confirma��o de altera��o do Prazo Limite de Recebimento (a data deve ser';
      39 : Result := 'Confirma��o de Dispensa de Prazo Limite de Recebimento';
      40 : Result := 'Confirma��o da altera��o do n�mero do t�tulo dado pelo cedente';
      41 : Result := 'Confirma��o da altera��o do n�mero controle do Participante';
      42 : Result := 'Confirma��o da altera��o dos dados do Sacado';
      43 : Result := 'Confirma��o da altera��o dos dados do Sacador/Avalista';
      44 : Result := 'T�tulo pago com cheque devolvido';
      45 : Result := 'T�tulo pago com cheque compensado';
      46 : Result := 'Instru��o para cancelar protesto confirmada';
      47 : Result := 'Instru��o para protesto para fins falimentares confirmada';
      48 : Result := 'Confirma��o de instru��o de transfer�ncia de carteira/modalidade de cobran�a';
      49 : Result := 'Altera��o de contrato de cobran�a';
      50 : Result := 'T�tulo pago com cheque pendente de liquida��o';
      51 : Result := 'T�tulo DDA reconhecido pelo sacado';
      52 : Result := 'T�tulo DDA n�o reconhecido pelo sacado';
      53 : Result := 'T�tulo DDA recusado pela CIP';
      54 : Result := 'Confirma��o da Instru��o de Baixa de T�tulo Negativado sem Protesto';
      55 : Result := 'Confirma��o de Pedido de Dispensa de Multa';
      56 : Result := 'Confirma��o do Pedido de Cobran�a de Multa';
      57 : Result := 'Confirma��o do Pedido de Altera��o de Cobran�a de Juros';
      58 : Result := 'Confirma��o do Pedido de Altera��o do Valor/Data de Desconto';
      59 : Result := 'Confirma��o do Pedido de Altera��o do Cedente do T�tulo';
      60 : Result := 'Confirma��o do Pedido de Dispensa de Juros de Mora';
    end;
  end
  else
  if bco = '033' then
  begin
    case StrToInt(Ocorrencia) of
            02: Result:='Entrada confirmada' ;
            03: Result:='Entrada rejeitada' ;
            04: Result:='Transferencia de carteira/entrada' ;
            05: Result:='Transferencia de carteira/baixa' ;
            06: Result:='Liquida��o' ;
            09: Result:='Baixa' ;
            11: Result:='Titulos em carteira /em ser/' ;
            12: Result:='Confirma��o recebimento instru��o de abatimento' ;
            13: Result:='Confirma��o recebimento instru��o de cancelamento abatimento' ;
            14: Result:='Confirma��o recebimento instru��o altera��o de vencimento' ;
            15: Result:='Franco de pagamento' ;
            17: Result:='Liquida��o ap�s baixa ou liquida��o t�tulo n�o registrado';
            19: Result:='Confirma��o de recebimento de instru��es para protesto' ;
            20: Result:='Confirma��o recebimento instru��o de sust��o/cancelamento de protesto' ;
            23: Result:='Remessa a cartorio' ;
            24: Result:='Retirada de cartorio e manuten��o em carteira' ;
            25: Result:='Protestado e baixado /baixa por ter sido protestado/' ;
            26: Result:='Instru��o rejeitada';
            27: Result:='Confirma��o do pedido de altera��o de outros dados' ;
            28: Result:='Manuten��o de tarifas/custas' ;
            29: Result:='Ocorrencias do sacado' ;
            30: Result:='Altera��o de dados rejeitada' ;
    end;
  end
  else
  if bco = '341' then
  begin
   case StrToInt(Ocorrencia) of
   02: Result:='ENTRADA CONFIRMADA';
   03: Result:='ENTRADA REJEITADA';
   04: Result:='ALTERA��O DE DADOS - NOVA ENTRADA';
   05: Result:='ALTERA��O DE DADOS � BAIXA';
   06: Result:='LIQUIDA��O NORMAL';
   07: Result:='LIQUIDA��O PARCIAL � COBRAN�A INTELIGENTE (B2B)';
   08: Result:='LIQUIDA��O EM CART�RIO';
   09: Result:='BAIXA SIMPLES';
   10: Result:='BAIXA POR TER SIDO LIQUIDADO';
   11: Result:='EM SER (S� NO RETORNO MENSAL)';
   12: Result:='ABATIMENTO CONCEDIDO';
   13: Result:='ABATIMENTO CANCELADO';
   14: Result:='VENCIMENTO ALTERADO';
   15: Result:='BAIXAS REJEITADAS';
   16: Result:='INSTRU��ES REJEITADAS';
   17: Result:='ALTERA��O DE DADOS REJEITADOS';
   18: Result:='COBRAN�A CONTRATUAL - INSTRU��ES/ALTERA��ES REJEITADAS/PENDENTES';
   19: Result:='CONFIRMA RECEBIMENTO DE INSTRU��O DE PROTESTO';
   20: Result:='CONFIRMA RECEBIMENTO DE INSTRU��O DE SUSTA��O DE PROTESTO /TARIFA';
   21: Result:='CONFIRMA RECEBIMENTO DE INSTRU��O DE N�O PROTESTAR';
   23: Result:='T�TULO ENVIADO A CART�RIO/TARIFA';
   24: Result:='INSTRU��O DE PROTESTO REJEITADA / SUSTADA / PENDENTE';
   25: Result:='ALEGA��ES DO SACADO';
   26: Result:='TARIFA DE AVISO DE COBRAN�A';
   27: Result:='TARIFA DE EXTRATO POSI��O (B40X)';
   28: Result:='TARIFA DE RELA��O DAS LIQUIDA��ES';
   29: Result:='TARIFA DE MANUTEN��O DE T�TULOS VENCIDOS';
   30: Result:='D�BITO MENSAL DE TARIFAS (PARA ENTRADAS E BAIXAS)';
   32: Result:='BAIXA POR TER SIDO PROTESTADO';
   33: Result:='CUSTAS DE PROTESTO';
   34: Result:='CUSTAS DE SUSTA��O';
   35: Result:='CUSTAS DE CART�RIO DISTRIBUIDOR';
   36: Result:='CUSTAS DE EDITAL';
   37: Result:='TARIFA DE EMISS�O DE BOLETO/TARIFA DE ENVIO DE DUPLICATA';
   38: Result:='TARIFA DE INSTRU��O';
   39: Result:='TARIFA DE OCORR�NCIAS';
   40: Result:='TARIFA MENSAL DE EMISS�O DE BOLETO/TARIFA MENSAL DE ENVIO DE DUPLICATA';
   41: Result:='D�BITO MENSAL DE TARIFAS � EXTRATO DE POSI��O (B4EP/B4OX)';
   42: Result:='D�BITO MENSAL DE TARIFAS � OUTRAS INSTRU��ES';
   43: Result:='D�BITO MENSAL DE TARIFAS � MANUTEN��O DE T�TULOS VENCIDOS';
   44: Result:='D�BITO MENSAL DE TARIFAS � OUTRAS OCORR�NCIAS';
   45: Result:='D�BITO MENSAL DE TARIFAS � PROTESTO';
   46: Result:='D�BITO MENSAL DE TARIFAS � SUSTA��O DE PROTESTO';
   47: Result:='BAIXA COM TRANSFER�NCIA PARA DESCONTO';
   48: Result:='CUSTAS DE SUSTA��O JUDICIAL';
   51: Result:='TARIFA MENSAL REF A ENTRADAS BANCOS CORRESPONDENTES NA CARTEIRA';
   52: Result:='TARIFA MENSAL BAIXAS NA CARTEIRA';
   53: Result:='TARIFA MENSAL BAIXAS EM BANCOS CORRESPONDENTES NA CARTEIRA';
   54: Result:='TARIFA MENSAL DE LIQUIDA��ES NA CARTEIRA';
   55: Result:='TARIFA MENSAL DE LIQUIDA��ES EM BANCOS CORRESPONDENTES NA CARTEIRA';
   56: Result:='CUSTAS DE IRREGULARIDADE';
   57: Result:='INSTRU��O CANCELADA';
   59: Result:='BAIXA POR CR�DITO EM C/C ATRAV�S DO SISPAG';
   60: Result:='ENTRADA REJEITADA CARN�';
   61: Result:='TARIFA EMISS�O AVISO DE MOVIMENTA��O DE T�TULOS (2154)';
   62: Result:='D�BITO MENSAL DE TARIFA - AVISO DE MOVIMENTA��O DE T�TULOS (2154)';
   63: Result:='T�TULO SUSTADO JUDICIALMENTE';
   64: Result:='ENTRADA CONFIRMADA COM RATEIO DE CR�DITO';
   69: Result:='CHEQUE DEVOLVIDO';
   71: Result:='ENTRADA REGISTRADA, AGUARDANDO AVALIA��O';
   72: Result:='BAIXA POR CR�DITO EM C/C ATRAV�S DO SISPAG SEM T�TULO CORRESPONDENTE';
   73: Result:='CONFIRMA��O DE ENTRADA NA COBRAN�A SIMPLES � ENTRADA N�O ACEITA NA COBRAN�A CONTRATUAL';
   76: Result:='CHEQUE COMPENSADO';
   end;
  end
  else
  if bco = '237' then
  begin
  case StrToInt(Ocorrencia) of
   02: Result:='02-Entrada confirmada' ;
   03: Result:='03-Entrada rejeitada' ;
   06: Result:='06-Liquida��o' ;
   09: Result:='09-Baixa Autom. via Arquivo' ;
   10: Result:='10-Baixado conforme instru��es da Ag�ncia' ;
   11: Result:='11-Em Ser - Arquivo de T�tulos pendentes' ;
   12: Result:='12-Abatimento Concedido' ;
   13: Result:='13-Abatimento Cancelado' ;
   14: Result:='14-Vencimento Alterado' ;
   15: Result:='15-Liquida��o em Cart�rio' ;
   16: Result:='16-T�tulo Pago em Cheque � Vinculado' ;
   17: Result:='17-Liquida��o ap�s baixa ou T�tulo n�o registrado';
   18: Result:='18-Acerto de Deposit�ria';
   19: Result:='19-Confirma��o Receb. Inst. de Protesto' ;
   20: Result:='20-Confirma��o Recebimento Instru��o Susta��o de Protesto' ;
   21: Result:='21-Acerto do Controle do Participante';
   22: Result:='22-T�tulo Com Pagamento Cancelado';
   23: Result:='23-Entrada do T�tulo em Cart�rio';
   24: Result:='24-Entrada rejeitada por CEP Irregular';
   25: Result:='25-Confirma��o Receb.Inst.de Protesto Falimentar';
   27: Result:='27-Baixa Rejeitada';
   28: Result:='28-D�bito de tarifas/custas';
   29: Result:='29-Ocorr�ncias do Sacado';
   30: Result:='30-Altera��o de Outros Dados Rejeitados';
   32: Result:='32-Instru��o Rejeitada';
   33: Result:='33-Confirma��o Pedido Altera��o Outros Dados';
   34: Result:='34-Retirado de Cart�rio e Manuten��o Carteira';
   35: Result:='35-Desagendamento do d�bito autom�tico';
   40: Result:='40-Estorno de pagamento';
   55: Result:='55-Sustado judicial';
   68: Result:='68-Acerto dos dados do rateio de Cr�dito';
   69: Result:='69-Cancelamento dos dados do rateio';
   end;
  end
  else
  if bco = '001' then
  begin
  case StrToInt(Ocorrencia) of
   0101: Result:='Sacado alega que n�o recebeu a mercadoria';
   0102: Result:='Sacado alega que a mercadoria chegou atrasada';
   0103: Result:='Sacado alega que a mercadoria chegou avariada';
   0104: Result:='Sacado alega que a mercadoria n�o confere com o pedido';
   0105: Result:='Sacado alega que a mercadoria chegou incompleta';
   0106: Result:='Sacado alega que a mercadoria est� � disposi��o ao cedente';
   0107: Result:='Sacado alega que devolveu a mercadoria';
   0108: Result:='Sacado alega que a mercadoria est� em desacordo com a Nota Fiscal';
   0109: Result:='Sacado alega que nada deve ou comprou';
   0201: Result:='Sacado alega que n�o recebeu a fatura';
   0202: Result:='Sacado alega que o pedido de compra foi cancelado';
   0203: Result:='Sacado alega que a duplicata foi cancelada';
   0204: Result:='Sacado alega n�o ter recebido a mercadoria, nota fiscal, fatura';
   0205: Result:='Sacado alega que a duplicata/fatura est� incorreta';
   0206: Result:='Sacado alega que o valor est� incorreto';
   0207: Result:='Sacado alega que o faturamento � indevido';
   0208: Result:='Sacado alega que n�o localizou o pedido de compra';
   0301: Result:='Sacado alega que o vencimento correto �:';
   0302: Result:='Sacado solicita a prorroga��o de vencimento para:';
   0303: Result:='Sacado aceita se vencimento prorrogado para:';
   0304: Result:='Sacado alega que pagar� o t�tulo em:';
   0305: Result:='Sacado pagou o t�tulo diretamente ao cedente em:';
   0306: Result:='Sacado pagar� o t�tulo diretamente ao cedente em:';
   0401: Result:='Sacado n�o foi localizado, confirmar endere�o';
   0402: Result:='Sacado mudou-se, transferiu de domic�lio';
   0403: Result:='Sacado n�o recebe no endere�o indicado';
   0404: Result:='Sacado desconhecido no local';
   0405: Result:='Sacado reside fora do per�metro';
   0406: Result:='Sacado com endere�o incompleto';
   0407: Result:='N�o foi localizado o n�mero constante no endere�o do t�tulo';
   0408: Result:='Endere�o n�o localizado/n�o consta nos guias da cidade';
   0409: Result:='Endere�o do sacado alterado para:';
   0501: Result:='Sacado alega que tem desconto ou abatimento de:';
   0502: Result:='Sacado solicita desconto ou abatimento de:';
   0503: Result:='Sacado solicita dispensa dos juros de mora';
   0504: Result:='Sacado se recusa a pagar juros';
   0505: Result:='Sacado se recusa a pagar comiss�o de perman�ncia';
   0601: Result:='Sacado est� em regime de concordata';
   0602: Result:='Sacado est� em regime de fal�ncia';
   0603: Result:='Sacado alega que mant�m entendimentos com sacador';
   0604: Result:='Sacado est� em entendimentos com o cedente';
   0605: Result:='Sacado est� viajando';
   0606: Result:='Sacado recusou-se a aceitar o t�tulo';
   0607: Result:='Sacado sustou protesto judicialmente';
   0608: Result:='Empregado recusou-se a receber o t�tulo';
   0609: Result:='T�tulo reapresentado ao sacado';
   0610: Result:='Estamos nos dirigindo ao nosso correspondente';
   0611: Result:='Correspondente n�o se interessa pelo protesto';
   0612: Result:='Sacado n�o atende aos avisos de nossos correspondentes';
   0613: Result:='T�tulo est� sendo encaminhado ao correspondente';
   0614: Result:='Entrega franco de pagamento ao sacado';
   0615: Result:='Entrega franco de pagamento ao representante';
   0616: Result:='A entrega franco de pagamento � dif�cil';
   0617: Result:='T�tulo recusado pelo cart�rio:';
  end;
  end
  else
  if bco = '748' then
  begin
  case StrToInt(Ocorrencia) of
   02: Result:='Entrada confirmada';
   03: Result:='Entrada rejeitada';
   06: Result:='Liquida��o normal';
   09: Result:='Baixado automaticamente via arquivo ';
   10: Result:='Baixado conforme instru��es da cooperativa de cr�dito';
   12: Result:='Abatimento concedido';
   13: Result:='Abatimento cancelado';
   14: Result:='Vencimento alterado';
   15: Result:='Liquida��o em cart�rio';
   17: Result:='Liquida��o ap�s baixa';
   19: Result:='Confirma��o de recebimento de instru��o de protesto';
   20: Result:='Confirma��o de recebimento de instru��o de susta��o de protesto';
   23: Result:='Entrada de t�tulo em cart�rio';
   24: Result:='Entrada rejeitada por CEP irregular';
   27: Result:='Baixa rejeitada';
   28: Result:='Tarifa';
   29: Result:='Rejei��o do pagador';
   30: Result:='Altera��o rejeitada';
   32: Result:='Instru��o rejeitada';
   33: Result:='Confirma��o de pedido de altera��o de outros dados';
   34: Result:='Retirado de cart�rio e manuten��o em carteira';
   35: Result:='Aceite do pagador';
  end;
  end
  else
  if bco = '756' then
  begin
    case StrToInt(Ocorrencia) of
      02 : Result := 'Entrada Confirmada';
      03 : Result := 'Entrada Rejeitada';
      04 : Result := 'Transfer�ncia de Carteira/Entrada';
      05 : Result := 'Transfer�ncia de Carteira/Baixa';
      06 : Result := 'Liquida��o';
      07 : Result := 'Confirma��o do Recebimento da Instru��o de Desconto';
      08 : Result := 'Confirma��o do Recebimento do Cancelamento do Desconto';
      09 : Result := 'Baixa';
      11 : Result := 'T�tulos em Carteira (Em Ser)';
      12 : Result := 'Confirma��o Recebimento Instru��o de Abatimento';
      13 : Result := 'Confirma��o Recebimento Instru��o de Cancelamento Abatimento';
      14 : Result := 'Confirma��o Recebimento Instru��o Altera��o de Vencimento';
      15 : Result := 'Franco de Pagamento';
      17 : Result := 'Liquida��o Ap�s Baixa ou Liquida��o T�tulo N�o Registrado';
      19 : Result := 'Confirma��o Recebimento Instru��o de Protesto';
      20 : Result := 'Confirma��o Recebimento Instru��o de Susta��o/Cancelamento de Protesto';
      23 : Result := 'Remessa a Cart�rio (Aponte em Cart�rio)';
      24 : Result := 'Retirada de Cart�rio e Manuten��o em Carteira';
      25 : Result := 'Protestado e Baixado (Baixa por Ter Sido Protestado)';
      26 : Result := 'Instru��o Rejeitada';
      27 : Result := 'Confirma��o do Pedido de Altera��o de Outros Dados';
      28 : Result := 'D�bito de Tarifas e Custas';
      29 : Result := 'Ocorr�ncias do Pagador';
      30 : Result := 'Altera��o de Dados Rejeitada';
      33 : Result := 'Confirma��o da Altera��o dos Dados do Rateio de Cr�dito';
      34 : Result := 'Confirma��o do Cancelamento dos Dados do Rateio de Cr�dito';
      35 : Result := 'Confirma��o do Desagendamento do D�bito Autom�tico';
      36 : Result := 'Confirma��o de envio de e-mail/SMS';
      37 : Result := 'Envio de e-mail/SMS rejeitado';
      38 : Result := 'Confirma��o de altera��o do Prazo Limite de Recebimento (a data deve ser';
      39 : Result := 'Confirma��o de Dispensa de Prazo Limite de Recebimento';
      40 : Result := 'Confirma��o da altera��o do n�mero do t�tulo dado pelo Benefici�rio';
      41 : Result := 'Confirma��o da altera��o do n�mero controle do Participante';
      42 : Result := 'Confirma��o da altera��o dos dados do Pagador';
      43 : Result := 'Confirma��o da altera��o dos dados do Pagadorr/Avalista';
      44 : Result := 'T�tulo pago com cheque devolvido';
      45 : Result := 'T�tulo pago com cheque compensado';
      46 : Result := 'Instru��o para cancelar protesto confirmada';
      47 : Result := 'Instru��o para protesto para fins falimentares confirmada';
      48 : Result := 'Confirma��o de instru��o de transfer�ncia de carteira/modalidade de cobran�a';
      49 : Result := 'Altera��o de contrato de cobran�a';
      50 : Result := 'T�tulo pago com cheque pendente de liquida��o';
      51 : Result := 'T�tulo DDA reconhecido pelo Pagador';
      52 : Result := 'T�tulo DDA n�o reconhecido pelo Pagador';
      53 : Result := 'T�tulo DDA recusado pela CIP';
      54 : Result := 'Confirma��o da Instru��o de Baixa/Cancelamento de T�tulo Negativado sem Protesto';
      55 : Result := 'Confirma��o de Pedido de Dispensa de Multa';
      56 : Result := 'Confirma��o do Pedido de Cobran�a de Multa';
      57 : Result := 'Confirma��o do Pedido de Altera��o de Cobran�a de Juros';
      58 : Result := 'Confirma��o do Pedido de Altera��o do Valor/Data de Desconto';
      59 : Result := 'Confirma��o do Pedido de Altera��o do Benefici�rio do T�tulo';
      60 : Result := 'Confirma��o do Pedido de Dispensa de Juros de Mora';
      80 : Result := 'Confirma��o da instru��o de negativa��o';
      85 : Result := 'Confirma��o de Desist�ncia de Protesto';
      86 : Result := 'Confirma��o de cancelamento do Protesto';
    end;
  end;

end;


procedure TfBaixaArquivo.acImprimirExecute(Sender: TObject);
var
  sql : string;
begin

 Application.CreateForm(TfBaixaArquivo_I, fBaixaArquivo_I);

 if nnumeroR = '' then nnumeroR := '0';
 if nnumeroD = '' then nnumeroD := '0';
 sql := ' select ''Cliente'' tipo, creceber.id nossonum, creceber.emissao, creceber.valor, '+
        ' creceber.venci, cliente.nome, creceber.baixa, creceber.idretorno, creceber.documento, '+
        ' creceber.idcliente cod, CReceber.Juros, CReceber.Desconto, CReceber.ValPago , CReceber.DtPagto '+
        ' from creceber '+
        ' left join cliente on cliente.id = creceber.idcliente '+
        ' where creceber.id in ( '+ nnumeroD +' ) '+
        ' order by 1 ';

 fBaixaArquivo_I.Q.Close;
 fBaixaArquivo_I.Q.SQL.Clear;
 fBaixaArquivo_I.Q.SQL.Add( sql );
 fBaixaArquivo_I.Q.Open;

 vEnv_EmailDest := '';
 vEnv_Report    := fBaixaArquivo_I.rp;
 fBaixaArquivo_I.rp.PreviewModal;
 fBaixaArquivo_I.Free;

end;

procedure TfBaixaArquivo.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not (ActiveControl is TDBGrid) then
  begin
   Key := #0;
   SelectNext(ActiveControl, True, True);
  end;
end;

procedure TfBaixaArquivo.BuscaCReceber;
begin

  nnumeroR := '';
  nnumeroD := '';

  qRet.First;
  if qRet.IsEmpty then
     exit;
  while qRet.Eof = false do
    begin
     if (qRetX.Value = 'T') then
      begin
          dm.qPesq.Close;
          dm.qPesq.SQL.Clear;
          dm.qPesq.sql.Add('select creceber.id codigo, creceber.valor, creceber.venci from creceber '+
                           ' left join boleto on boleto.IDTHR030 = creceber.id '+
                           ' where creceber.bimpresso = ''S'' and boleto.banco = '+nBanco + ' and '+
                           ' creceber.id = ' + trim(inttostr(strtoint(qRetNossoNum.Value))) );
          dm.qPesq.Open;
          if dm.qPesq.IsEmpty = false then
          begin
              qRet.Edit;
              qRetL.Text := 'S';
              qRetX.Text := 'F';
              qRet.post;
              if nnumeroD <> '' then
                 nnumeroD := nnumeroD + ',' + trim(dm.qPesq.fieldbyname('codigo').AsString )
                else
                nnumeroD := nnumeroD + trim(dm.qPesq.fieldbyname('codigo').AsString ) ;
          end;
     end;
     qRet.Next;
    end;
  qRet.ApplyUpdates;

  // distribuidor
  if nnumeroD <> '' then
     begin
      qDis.Close;
      qDis.SQL.Clear;
      qDis.SQL.Add(' select creceber.id nossonum, creceber.emissao, creceber.valor, '+
               ' creceber.venci, cliente.nome, creceber.baixa, creceber.idretorno, '+
               ' creceber.documento, '+
               ' creceber.bconta, creceber.idcliente, creceber.idemp '+
               ' from creceber '+
               ' left join cliente on cliente.id = creceber.idcliente '+
               ' where creceber.id  in ( ' + nnumeroD + ' ) '+
               ' order by creceber.id ' );
      qDis.open;
     end;

  //ValorTtl;



end;

procedure TfBaixaArquivo.acBaixarExecute(Sender: TObject);
var
  bx, diaCom, vCodBaixa : integer;
  bxparcialDis:string;
  bxrevend : string;
  dtVenci : TDate;
  vJuros, vDesconto : Real;

begin

  bx := 0;
  bxParcialDis := '';
  if (qDis.Active = false ) then
     exit;

  if (qDis.IsEmpty ) then
     exit;

  if Application.MessageBox('Confirma baixa dos boletos?','Confirma��o',MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION) = idno then
     exit;

  //boleto do distribuidor
  bx := 0;
  if  (qDis.Active = true ) and  (qDis.IsEmpty = false) then
    begin
     DM.Cx.Open;
     qDis.First;
     while qDis.Eof = false do
     begin
      if qDisBaixa.Text = 'N' then begin
        qret.First;
        while qRet.eof = false do
         begin
          if qRetL.Text = 'S' then
           begin
            if  trim(inttostr(strtoint(qRetnossonum.Value))) =  trim(qDisnossonum.Text) then
              begin
                vJuros := 0;
                vDesconto := 0;
                if qDisvalor.asFloat > qRetValorPago.asFloat then
                  vDesconto := qDisValor.asFloat - qRetValorPago.asFloat;

                if qDisvalor.asFloat < qRetValorPago.asFloat then
                  vJuros := qRetValorPago.asFloat - qDisValor.asFloat;


                DM.Cx.Insert;
                DM.CxData.Value := now; // Date;
                DM.CxTpMov.Value := 'R';
                DM.CxIdUsuario.Value := dm.qUserId.Value;
                DM.CxIdMov.Value := qDisNossonum.asInteger;  //dm.CRecID.Value;
                DM.CxValor.Value := qRetvalorpago.AsFloat;
                DM.CxFpgto.Value := 'BOLETO';
                DM.CxValorFpgto.Value := qRetvalorpago.AsFloat;
                DM.CxJuros.Value      := vJuros;
                DM.CxDesconto.Value   := vDesconto;
                DM.CxTotal.Value := qRetvalorpago.AsFloat;
                DM.CxSegundaForma.Value := 'N';
                DM.CxDescri.Value := 'RECEBIMENTO DE CLIENTE';
                DM.Cxidemp.Value  := qDisIdEmp.asInteger;
                DM.CxF_Dinheiro.Value := qRetvalorpago.AsFloat;
                DM.CxIdConta.asInteger:= qDisbconta.asInteger;
                DM.Cx.Post;
                DM.Cx.ApplyUpdates;
                vCodBaixa := DM.CxId.Value;


               GravaLogFinan(dm.qUserId.Value, {DM.CxId.Value}vCodBaixa, qDisIdCliente.asInteger, 'Movimento Caixa', 'BAIXA', 'baixa contas a receber por arquivo','C');

               ExecSQL('update creceber set baixa = ''S'', idretorno = '+ qRetid.Text +   //2019-08-22 00:00:00.000
                       ' , dtpagto = ' + quotedstr(qRetPGTO.text) + //    formatdatetime('yyyy-mm-dd', date )) +
                       ' , valpago = ' + pontovirgula(formatfloat('#0.00', qRetvalorpago.AsFloat )) +
                       ' , fpgto1 = ''BOLETO'' '+
                       ' , Valor1 = ' + pontovirgula(formatfloat('#0.00', qRetvalorpago.AsFloat )) +
                       ' , idbaixa = '+ inttoStr(vCodBaixa) +
                       ' , juros = '+ pontovirgula(formatfloat('#0.00', vJuros )) +
                       ' , desconto = '+ pontovirgula(formatfloat('#0.00', vDesconto )) +
                       ' where id = '+ qDisNossonum.Text  );

               ExecSQL('update boleto set baixado = ''S'' where idthr030 = '+ qDisNossonum.Text  );

               dm.qSelPesq.Close;
               DM.qSelPesq.SQL.Clear;
               DM.qSelPesq.SQL.Add('select * from creceber where id = '+ qDisNossonum.Text) ;
               DM.qSelPesq.Open;

               addComissao('CR:'+trim(DM.qSelPesq.FieldByName('Documento').text),
                              DM.qSelPesq.FieldByName('idvenda').asinteger,
                              0,
                              DM.qSelPesq.FieldByName('Id').AsInteger,
                              DM.qSelPesq.FieldByName('idemp').AsInteger,
                              qRetvalorpago.AsFloat,
                              qRetPGTO.AsDateTime );

               bx := bx + 1;

              end;
           end;
           qRet.Next;
          end;
      end;
      qDis.Next;
     end;
     DM.Cx.close;
     qDis.Close;
     qDis.Open;
     if bx > 0 then
        Application.MessageBox('Boletos baixados com sucesso!','Confirma��o' )
      else
        Application.MessageBox('N�o h� lan�amentos para baixar.','Confirma��o' );
    end;


end;

procedure TfBaixaArquivo.FormActivate(Sender: TObject);
begin
  qDis.close;
  qRet.Close;

end;

procedure TfBaixaArquivo.acBuscarExecute(Sender: TObject);
begin

  if qRet.IsEmpty then
    exit;

  qDis.Close;
  BuscaCReceber;


end;

procedure TfBaixaArquivo.DBGrid3DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (qDisBaixa.Value = 'S') then
  begin
   DBGrid3.Canvas.Brush.Color := $00BFDFFF;
   DBGrid3.Canvas.Font.Color := clBlack;
  end;
 DBGrid3.DefaultDrawDataCell(Rect, DBGrid3.Columns[DataCol].Field ,state);

end;

procedure TfBaixaArquivo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (qRetL.Value = 'S') then
  begin
   DBGrid1.Canvas.Brush.Color := $0080FFFF;
   DBGrid1.Canvas.Font.Color  := clBlack;
  end;
 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
 

 if (qRetX.Value = 'T') then
  begin
   DBGrid1.Canvas.Brush.Color := $008080FF;
   DBGrid1.Canvas.Font.Color  := clBlack;
  end;
 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);


end;

procedure TfBaixaArquivo.CheckBox1Click(Sender: TObject);
var
  tp : string;
begin
  if qRet.active = false then
    exit;

   if checkbox1.Checked then
     tp := 'T'
    else
     tp := 'F';

   qRet.First;
   while qRet.Eof = false do
     begin
       qRet.Edit;
       qRetX.Text := tp;
       qRet.Post;
       qRet.Next;
     end;
   qRet.First;

end;

procedure TfBaixaArquivo.qRetBeforePost(DataSet: TDataSet);
begin
 if (qRetpgto.Text = '') then
    qRetX.Text := 'F';
    
end;

procedure TfBaixaArquivo.qRetNewRecord(DataSet: TDataSet);
begin
  qRetID.AsInteger := InsereCodigo('retorno', 'id');
end;

end.
