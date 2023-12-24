unit uAbertCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, StdCtrls, jpeg, ExtCtrls, Mask, Vcl.DBCtrls;

type
  TfAbertCaixa = class(TForm)
    Image1: TImage;
    EdValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdSenha: TEdit;
    XiButton4: TXiButton;
    Label3: TLabel;
    edDataMOv: TMaskEdit;
    pTurno: TPanel;
    Label4: TLabel;
    cbTurno: TDBLookupComboBox;
    procedure XiButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdSenhaExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor, ValorInicial : real;
  end;

var
  fAbertCaixa: TfAbertCaixa;
  conf_abertura : String;
  user_fe : integer;

implementation

uses uDM, {UnitDeclaracoes, }uMenu;

{$R *.dfm}

procedure TfAbertCaixa.XiButton4Click(Sender: TObject);
var Sql, log, sen, mot : String;
  usu, va, vf : integer;
begin

  if strtodate(edDataMov.text) > date then
  begin
     Application.MessageBox('Data de Abertura não pode ser maior que Data Atual!', 'Atenção');
     edDataMOv.SetFocus;
     exit;
  end;

  if (pTurno.Visible) and (cbTurno.KeyValue = null) then
  begin
     Application.MessageBox('informe o turno!', 'Atenção');
     cbTurno.SetFocus;
     exit;
  end;


 usu := dm.qUserId.asInteger;
 log := dm.qUserUser.Value;
 sen := dm.qUserSenha.value;

 if EdSenha.Text = '' then
   begin
     Application.MessageBox('Por Favor, Digite a senha de Usuario!', 'Aviso');
     EdSenha.SetFocus;
     exit;
   end;

 DM.qSelect.Close;
 DM.qSelect.SQL.Clear;
 {if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
    DM.qSelect.SQL.Add(' select Id, User, Senha from usuario where ativo = ''S'' and '+
                       ' Id  = ' + inttostr(usu) +
                       ' and senha = '+QuotedStr(EdSenha.Text))
 else  }
    DM.qSelect.SQL.Add(' select Id, User, Senha from usuario where  '+
                       ' senha = '+QuotedStr(EdSenha.Text));
 DM.qSelect.Open;

 if dm.qSelect.RecordCount = 0 then
  begin
   Application.MessageBox('Usuário/Senha Inválida!', 'Aviso');
   EdSenha.Clear;
   EdSenha.SetFocus;
   Exit;
  end;

  usu := dm.qSelect.FieldByName('ID').asInteger;

     Sql := 'select max(ID) ID from movcaixa '+
            ' WHERE IdConta = 1 and TpMov = ''F'' '+              //'+IntToStr(contaPadrao)+'
            ' and Data = '+QuotedStr(FormatDateTime('dd-mm-yyyy', date));           //DataMovimento
    //if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
     // Sql := Sql + ' and IDUsuario = ' + inttostr(usu);   //caixa total do dia 12/08/2021

     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     vF := dm.qIns.fieldbyname('ID').asInteger;

    Sql := ' select max(ID) ID from movcaixa '+
           ' WHERE IdConta = 1 and TpMov = ''A'' '+          // '+IntToStr(contaPadrao)+'
           ' and Data = '+QuotedStr(FormatDateTime('dd-mm-yyyy', date)) ;         //DataMovimento
    //if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
     //Sql := Sql + ' and IDUsuario = ' + inttostr(usu);   //caixa total do dia 12/08/2021

    DM.qIns.SQL.Clear;
    DM.qIns.SQL.Add(Sql);
    DM.qIns.Open;
    vA := dm.qIns.fieldbyname('ID').asInteger;

    if (vA > 0) and (vA > vF) then
    begin
      Application.MessageBox('Já Existe uma Abertura de Caixa!', 'Aviso'); // para este Usuário
      EdSenha.Clear;
      EdSenha.SetFocus;
      Exit;
    end;

    Valor := StrToFloat(EdValor.Text);

    if valor <> valorInicial then
    begin
      mot := inputbox('Valor Abertura Diferente do Valor Deixado no Caixa!','Informe o motivo:', '' );
      if mot = '' then
         exit;
      mot := 'Vlr Deixado R$ ' + FormatFloat('#0.00',valorinicial) + ' / ' +
             'Vlr Informado R$ ' + FormatFloat('#0.00', valor) + ' / ' +
             'Motivo: ' + Mot;
    end;


     DM.Cx.Open;
     DM.Cx.Insert;
     DM.CxData.Value    := strtodate(edDataMov.text);
     //DM.CxHora.Value    := Time;
     DM.CxTpMov.Value   := 'A';
     DM.CxIdConta.Value := 1;//contaPadrao;
     DM.CxIdUsuario.Value   := DM.qSelect.FieldByName('Id').Value;
     DM.CxIdMov.Value   := 0;
     DM.CxValor.Value   := Valor;
     DM.CxFpgto.Value      := 'DINHEIRO';
     DM.CxValorFpgto.Value := Valor;
     DM.CxJuros.Value      := 0;
     DM.CxDesconto.Value   := 0;
     DM.CxTotal.Value      := Valor;
     //DM.CxIdTpCartao.Value := 0;
     //DM.Cxmotivo.asString  := Mot;

     {if pTurno.Visible then
        DM.Cxidturno.Value := cbTurno.KeyValue
     else
        DM.Cxidturno.Value := 0;   }

     DM.CxDescri.Value    := 'ABERTURA';
     DM.Cx.Post;
     DM.Cx.ApplyUpdates;

     //DataMovimento := strtodate(edDataMov.text);

     {ExecSql( ' update usuario set data_movimento = '+ QuotedStr(FormatDateTime('yyyy-mm-dd', date)) + //DataMovimento       //
              ' where id = ' +  inttostr(usu) ); }
     SLEEP(500);

     DM.qUser.Close;
     DM.qUser.ParamByName('user').value      := Log;
     DM.qUser.ParamByName('senha').Value     := sen;
     DM.qUser.Open;
     SLEEP(100);

      // leitura x
     {if (DM.qParametropaf.Value = 'N') and (dm.qParametroECF.text = 'S')  then
     begin

          if TemECF = 'BEMA'  then
          begin // cupom fiscal bematech
             try
               iRetorno := Bematech_FI_LeituraX();
               if iRetorno < 1 then
                  Analisa_iRetorno();
             except
               //
             end;
          end
          else
          if (TemECF = 'EPSON') OR (TemECF = 'BEMAB') then
          begin
            try
              if dm.acbrecf1.Ativo = false then
              begin
                dm.acbrEcf1.Ativar;
              end;
            finally
              try
                 DM.ACBrECF1.EnviaComando('0805');
              except
              end;
            //    dm.acbrEcf1.LeituraX;
            end;
          end;
          //
          SLEEP(300);

     end;"}

     Application.MessageBox(pchar('Caixa Aberto com R$ '+ FormatFloat('###,###,###,##0.00',Valor)), 'Aviso');
     conf_abertura := 'S';

     fMenu.StatusBar1.Panels[2].Text := '   '+DM.qUserNome.Value;
     fMenu.StatusBar1.Panels[3].Text := '  Data Movimento: ' + formatdatetime('DD/MM/YYYY', date);     //DM.qUserdata_movimento.Value
     fMenu.StatusBar1.Refresh;

     Close;


end;

procedure TfAbertCaixa.FormActivate(Sender: TObject);
var
  Sql, vPontoA, utValor : String;
begin
 if pTurno.Visible then
   begin
     cbTurno.SetFocus;
   end;

   VerificaCaixaAbertura(dm.qUserId.AsInteger);
  if caixafe = 'Z' then
  begin
     Application.messagebox('Caixa já esta fechado nesta data!','Atenção');
     exit;
  end
  else
  if caixafe = 'N' then
  begin
     Application.messagebox('Operações Obrigatórias do Caixa não foram finalizados!','Atenção');
     exit;
  end;

   edDataMov.text := datetostr(Date);

   if User_fe = 0 then
      User_fe := dm.qUserId.Value;

   {if dm.qParametroCaixa_PorPontoVenda.Text = 'S' then
    vPontoA := ' and idconta = '+IntToStr(contaPadrao)
   else }
    vPontoA := '';

   // pediu para mostrar ultimo valor deixado
   {if dm.qParametromostrar_vlr_deixadocx.Text = 'N' then
   begin
       //utValor := ' and IdUsu  = ' + dm.qUserId.text
       utValor := '';
       vPontoA := '';
   end
   else }
    utValor := '';

   //busca valor ultimo fechamento
   {if  dm.qParametroabre_cx_zerado.Text = 'N' then
   begin
     Sql := ' select coalesce(ValorDeixadoCx ,0) tot '+
          ' from movcaixa '+
          ' where TpMov = ''F'' '+ utValor + vPontoA +
          ' order by id desc limit 1';
     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(Sql);
     DM.qIns.Open;
     Valor := dm.qIns.fieldbyname('tot').asFloat;
     EdValor.Text := FormatFloat('##########0.00', Valor);
   end
   else
   begin}
     Valor := 0;
     EdValor.Text := FormatFloat('##########0.00', 0);
   //end;

   ValorInicial := Valor;

end;

procedure TfAbertCaixa.EdValorExit(Sender: TObject);
begin
Valor := StrToFloat(EdValor.Text);
end;

procedure TfAbertCaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
IF Key = #13 THEN
 BEGIN
  SelectNext(ActiveControl, True, True);
  Key := #13;
 END;
end;

procedure TfAbertCaixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 fAbertCaixa := nil;
end;

procedure TfAbertCaixa.EdSenhaExit(Sender: TObject);
var
  ult, vpon : String;
begin
 DM.qSelect.Close;
 DM.qSelect.SQL.Clear;
 //if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
    DM.qSelect.SQL.Add(' select Id, User, Senha from usuario where '+
                       ' id = ' + dm.qUserId.text +
                       ' and senha = '+ QuotedStr(EdSenha.Text));
 {else
    DM.qSelect.SQL.Add(' select Id, User, Senha from usuario where ativo = ''S'' '+
                       ' and senha = '+ QuotedStr(EdSenha.Text));   }

 DM.qSelect.Open;

 if dm.qSelect.RecordCount = 0 then
  begin
   Application.MessageBox('Usuário/Senha Inválida!', 'Aviso');
   EdSenha.Clear;
   EdSenha.SetFocus;
   Exit;
  end;

  ult  := '';
  vpon := '';
  {if dm.qParametromostrar_vlr_deixadocx.Text = 'N' then
    ult := ' and IdUsu  = ' + dm.qSelect.fieldbyname('Id').text
   else }
    ult := '';

  {if dm.qParametroCaixa_PorPontoVenda.Text = 'S' then
  begin
    vpon := ' and idconta = '+IntToStr(contaPadrao);
    if ult = '' then
       ult := ' and IdUsu  = ' + dm.qSelect.fieldbyname('Id').text;
  end;  }

 // pediu para mostrar ultimo valor deixado
 {if dm.qParametromostrar_vlr_deixadocx.Text = 'N' then
 begin
    //ult := ult + ' and IdUsu  = ' + dm.qSelect.fieldbyname('Id').text
    ult := '';
    vpon := '';
 end
 else
    ult := '';}

  {if dm.qParametroabre_cx_zerado.Text = 'N' then
  begin
     DM.qIns.SQL.Clear;
     DM.qIns.SQL.Add(' select ID, ValorDeixadoCx  from movcaixa '+
                  ' WHERE TpMov = ''F'' ' + vpon +  ult +
                  ' order by id desc ');
     DM.qIns.Open;
     valor := DM.qIns.FieldByName('ValorDeixadoCx').AsFloat;
  end
  else }
     Valor := 0;

  valorInicial := Valor;
  EdValor.Text := FormatFloat('##0.00', valor );


end;

procedure TfAbertCaixa.FormCreate(Sender: TObject);
begin
   user_fe := 0;
   conf_abertura := 'N';

   pTurno.Visible := false; //(dm.qParametrousa_turno.Text = 'S');
   if pTurno.Visible then
   begin
     {dm.qTurno.close;
     dm.qTurno.open;
     dm.qTurno.First;
     cbTurno.ListSource.DataSet.Last;
     cbTurno.ListSource.DataSet.First;
     //cbTurno.KeyValue := dm.qTurnoID.AsInteger;}
   end;


end;

end.
