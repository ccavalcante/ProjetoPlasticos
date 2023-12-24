unit uFechamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, StdCtrls, jpeg, ExtCtrls, Mask, DB,
   ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, DBGrids;

type
  TfFechamento = class(TForm)
    Image1: TImage;
    EdValor: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdSenha: TEdit;
    XiButton4: TXiButton;
    Qtd05: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Tot05: TEdit;
    Label6: TLabel;
    Ed05: TEdit;
    Tot010: TEdit;
    Qtd010: TEdit;
    Ed010: TEdit;
    Tot025: TEdit;
    Qtd025: TEdit;
    Ed025: TEdit;
    Tot050: TEdit;
    Qtd050: TEdit;
    Ed050: TEdit;
    Tot1: TEdit;
    Qtd1: TEdit;
    Ed1: TEdit;
    Ed2: TEdit;
    Qtd2: TEdit;
    Tot2: TEdit;
    Ed5: TEdit;
    Qtd5: TEdit;
    Tot5: TEdit;
    Ed10: TEdit;
    Qtd10: TEdit;
    Tot10: TEdit;
    Ed20: TEdit;
    Qtd20: TEdit;
    Tot20: TEdit;
    Ed50: TEdit;
    Qtd50: TEdit;
    Tot50: TEdit;
    Ed100: TEdit;
    Qtd100: TEdit;
    Tot100: TEdit;
    Ed01: TEdit;
    Qtd01: TEdit;
    Tot01: TEdit;
    EdCheque: TEdit;
    Label8: TLabel;
    Label3: TLabel;
    edDebito: TEdit;
    Label7: TLabel;
    edCredito: TEdit;
    Label9: TLabel;
    edDinheiro: TEdit;
    edValNoCx: TEdit;
    Label10: TLabel;
    edData: TMaskEdit;
    Label11: TLabel;
    Bevel1: TBevel;
    dCartao: TDataSource;
    qCartao: TZQuery;
    uCartao: TZUpdateSQL;
    qCartaoID: TIntegerField;
    qCartaoVALOR: TFloatField;
    DBGrid1: TDBGrid;
    Bandeira: TZQuery;
    BandeiraId: TIntegerField;
    qCartaoIDMOV: TIntegerField;
    qCartaoIDtpcartao: TIntegerField;
    Label12: TLabel;
    Label13: TLabel;
    edNotas: TLabel;
    edMoedas: TLabel;
    Label16: TLabel;
    edCartoes: TLabel;
    Bandeiratp: TWideStringField;
    BandeiraNome: TWideStringField;
    BandeiraTipo: TWideStringField;
    qCartaoBANDEIRA: TWideStringField;
    Q: TZQuery;
    Qid: TIntegerField;
    Qcomanda: TWideStringField;
    Qativa: TWideStringField;
    QEm_Uso: TWideStringField;
    QEmCaixa: TWideStringField;
    Qco: TLargeintField;
    qA: TZQuery;
    qAvalor: TFloatField;
    qMov: TZQuery;
    qMovforma: TWideStringField;
    qMovvalor: TFloatField;
    lDeposito: TLabel;
    edDeposito: TEdit;
    qRec: TZQuery;
    qRecforma: TWideStringField;
    qRecvalor: TFloatField;
    Label14: TLabel;
    edPix: TEdit;
    procedure XiButton4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdValorExit(Sender: TObject);
    procedure Qtd05KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd01KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd010KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd025KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd050KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd1KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd2KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd5KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd10KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd20KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd50KeyPress(Sender: TObject; var Key: Char);
    procedure Qtd100KeyPress(Sender: TObject; var Key: Char);
    procedure EdChequeKeyPress(Sender: TObject; var Key: Char);
    procedure EdSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure EdValorKeyPress(Sender: TObject; var Key: Char);
    procedure edDinheiroKeyPress(Sender: TObject; var Key: Char);
    procedure edDebitoKeyPress(Sender: TObject; var Key: Char);
    procedure edCreditoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edValNoCxKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
    procedure qCartaoAfterPost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Tot01KeyPress(Sender: TObject; var Key: Char);
    procedure Tot05KeyPress(Sender: TObject; var Key: Char);
    procedure Tot010KeyPress(Sender: TObject; var Key: Char);
    procedure Tot025KeyPress(Sender: TObject; var Key: Char);
    procedure Tot050KeyPress(Sender: TObject; var Key: Char);
    procedure Tot1KeyPress(Sender: TObject; var Key: Char);
    procedure Tot2KeyPress(Sender: TObject; var Key: Char);
    procedure Tot5KeyPress(Sender: TObject; var Key: Char);
    procedure Tot10KeyPress(Sender: TObject; var Key: Char);
    procedure Tot20KeyPress(Sender: TObject; var Key: Char);
    procedure Tot50KeyPress(Sender: TObject; var Key: Char);
    procedure Tot100KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1Exit(Sender: TObject);
    procedure edDepositoKeyPress(Sender: TObject; var Key: Char);
    procedure edPixKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    Valor, Dinheiro, Cheque, Debito, Credito, Deposito, Pix,
    T01, T05, T010, T025, T050, T1, T2, T5, T10, T20, T50, T100 : real;
    IdConta : Integer;
    Procedure Somar;
  end;

var
  fFechamento: TfFechamento;
  conf_fecha : string;
  inserindo  : String;

implementation

uses uDM, uMenu, uEscolheConta, uVisuCaixa;

{$R *.dfm}

procedure TfFechamento.XiButton4Click(Sender: TObject);
var vSistema, vDif, vSang, vDeixadoCaixa : real;
     Sql, usu, vComanda :  string;
     idcx, vA, vF : integer;
begin

 vSang := 0;
 if EdSenha.Text = '' then
   begin
     Application.MessageBox('Por Favor, Digite a senha de Usuario!', 'Aviso');
     EdSenha.SetFocus;
     exit;
   end;


 DM.qSelect.Close;
 DM.qSelect.SQL.Clear;
 DM.qSelect.SQL.Add('select Id from usuario where senha = '+QuotedStr(EdSenha.Text));
 DM.qSelect.Open;

 if dm.qSelect.RecordCount = 0 then
  begin
   Application.MessageBox('Senha Inválida!', 'Aviso');
   EdSenha.Clear;
   EdSenha.SetFocus;
   Exit;
  end;

  usu := DM.qSelect.fieldbyname('Id').text;
  //if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
   if dm.qUserId.AsInteger <> strtoint(usu) then
    begin
     Application.MessageBox('Usuário Diferente do Usuário Logado, verifique', 'Atenção!');
     EdSenha.Clear;
     EdSenha.SetFocus;
     Exit;
    end;

  // verifica se usuario tem acesso.
  dm.qSel.close;
  dm.qSel.SQL.Clear;
  dm.qSel.SQL.Add(' select usuario.id, max(permissao.id), permissao.permitido '+
                  ' from usuario '+
                  ' Left join permissao on permissao.Idusuario = usuario.id '+
                  ' left join menu on menu.Id = permissao.IdMenu '+
                  ' where usuario.id = '+ usu +
                  ' and usuario.senha = '+ QuotedStr(EdSenha.Text) +
                  ' and menu.nome = ''FechamentodeCaixa1'' '+
                  ' group by usuario.id, permissao.permitido ');
  dm.qSel.open;
  if dm.qSel.FieldByName('permitido').Text = 'F' then
  begin
     Application.MessageBox('Usuário sem permissão para Fechamento de Caixa!', 'Atenção!');
     EdSenha.Clear;
     EdSenha.SetFocus;
     Exit;
  end;

  {if DM.qParametrocaixa_fecharcomanda.AsString = 'S'  then
  begin
    vComanda := '';

    Q.Open;

     while not Q.Eof do
     begin
       vComanda := vComanda +Qcomanda.AsString+ ',' ;
       Q.Next;

     end;

     Q.Close;
     vComanda := copy(vComanda,1,length(vComanda)-1);
     if vComanda <> '' then
     begin
       Application.MessageBox(pchar('Comanda(s) em aberto! ' +vComanda), 'Atenção!');
       exit;
     end;
  end;   }


    Sql := ' select '+
           ' coalesce( sum( total ) ,0) tot '+
           ' from movcaixa '+
           ' where '+
           ' IdConta = 1' + //IntToStr(contaPadrao)+
           ' and data = '+QuotedStr(FormatDateTime('dd-mm-yyyy', StrToDate(edData.Text))) ;
     {if dm.qParametroCaixa_PorPontoVenda.Text = 'N' then
     Sql := Sql + ' and IdUsu = ' + usu ;    }

     dm.qPesq.close;
     dm.qPesq.SQL.clear;
     dm.qPesq.SQL.Add(sql);
     dm.qPesq.open;
     if dm.qPesq.IsEmpty = false then
     begin
      vSistema := dm.qPesq.fieldbyname('tot').value;
     end;

    //

    // if Application.MessageBox('Depois de Fechado o Caixa não será possível realizar outra abertura neste dia. Confirma Fechamento?', 'Confirmação', MB_YESNO)=idno then
    //  Exit;

    // sangria

    vDeixadoCaixa := StrToFloat(FormatFloat('#0.00', StrToFloat(edValNoCx.Text)));
    vSang := Dinheiro  + cheque + deposito - vDeixadoCaixa ;
    if vSang > 0 then
    begin
       if Application.MessageBox(pchar('Confirma Sangria de R$ '+
                                 formatfloat('###,###,##0.00', vSang ) +
                                 '? '), 'Confirmação', MB_YESNO) = idyes then
       begin
        // abrir tela pedindo a conta
        Application.CreateForm( TfEscolheConta, fEscolheConta );
        fEscolheConta.showModal;
        fEscolheConta.Free;
        if nConta <> '' then
        begin
         DM.Cx.Open;
         DM.Cx.Insert;
         DM.CxData.Value         := StrToDate(edData.Text);
         //DM.CxHora.Value         := Time;
         DM.CxIdConta.Value      := 1;//contaPadrao;
         DM.CxIdMov.Value        := 0;
         DM.CxSegundaForma.Value := 'N';
         DM.CxIdUsuario.Value        := strtoint(usu);
         //DM.CxIdTpCartao.Value   := 0;
         DM.CxTpMov.Value        := 'S';
         Dm.CxDescri.value       := 'SANGRIA FECHAMENTO';
         DM.CxValor.Value        := vSang * (-1);
         DM.CxTotal.Value        := vSang * (-1);
         DM.CxF_Cheque.Value     := 0;
         DM.CxF_Dinheiro.Value   := vSang * (-1);
         DM.CxFpgto.Value        := 'DINHEIRO';
         //DM.Cxidturno.Value      := buscaTurno(strtoint(usu));
         DM.Cx.Post;
         DM.Cx.ApplyUpdates;

         DM.Cx.Open;
         DM.Cx.Insert;
         DM.CxData.Value         := StrToDate(edData.Text);
         //DM.CxHora.Value         := Time;
         DM.CxIdConta.Value      := strtoint(nConta);
         DM.CxIdMov.Value        := 0;
         DM.CxSegundaForma.Value := 'N';
         DM.CxIdUsuario.Value        := strtoint(usu);
         //DM.CxIdTpCartao.Value   := 0;
         DM.CxTpMov.Value        := 'E';
         Dm.CxDescri.value       := 'SANGRIA FECHAMENTO';
         DM.CxValor.Value        := vSang;
         DM.CxTotal.Value        := vSang;
         DM.CxF_Cheque.Value     := 0;
         DM.CxF_Dinheiro.Value   := vSang;
         DM.CxFpgto.Value        := 'DINHEIRO';
         //DM.Cxidturno.Value      := buscaTurno(strtoint(usu));
         DM.Cx.Post;
         DM.Cx.ApplyUpdates;
        end;
       end;
      // else
       //  vDeixadoCaixa := FormatFloat('##0.00', vSang);

    end;
    //

     // fechamento
     DM.Cx.Open;
     DM.Cx.Insert;
     DM.CxData.Value       := StrToDate(edData.Text);
     //DM.CxHora.Value       := Time;
     DM.CxTpMov.Value      := 'F';
     DM.CxIdConta.Value    := 1;//contaPadrao;
     DM.CxIdUsuario.Value  := strtoint(usu);
     DM.CxIdMov.Value      := 0;
     DM.CxValor.Value      := Valor;
     DM.CxFpgto.Value      := 'DINHEIRO';
     DM.CxValorFpgto.Value := Valor;
     DM.CxJuros.Value      := 0;
     DM.CxDesconto.Value   := 0;
     DM.CxTotal.Value      := Valor;
     DM.CxF_Dinheiro.Value := Dinheiro;
     DM.CxF_Cheque.Value   := Cheque;
     DM.CxF_Debito.Value   := Debito;
     DM.CxF_Credito.Value  := Credito;
     DM.CxF_pix.Value      := Pix;
     //DM.CxValorDeixadoCx.Value := vDeixadoCaixa;
     //DM.CxIdTpCartao.Value := 0;
     //DM.Cxidturno.Value      := buscaTurno(strtoint(usu));

     idcx := dm.cxid.value;
     DM.Cx.Post;
     DM.Cx.ApplyUpdates;

     // grava fechamento
     {dm.qFecha.close;
     DM.qFecha.Open;
     if dm.qFecha.Locate('idmov', idcx, []) then
        DM.qFecha.Edit
     else
        DM.qFecha.Insert;
     DM.qFechaIDMOV.Value      := idcx;
     qA.Close;
     qA.ParamByName('co').Value  := 1;//contaPadrao;
     qA.ParamByName('usu').Value := strtoint(usu);
     qA.ParamByName('dt').AsDate := StrToDate(edData.Text);
     qA.Open;
     DM.qFechaAbertura.Value   := qAvalor.AsFloat;

     qMov.Close;
     qMov.ParamByName('co').Value  := 1;//contaPadrao;
     qMov.ParamByName('usu').Value := usu;
     qMov.ParamByName('dt').AsDate := StrToDate(edData.Text);
     qMov.Open;
     if qMov.Locate('forma', 'DINHEIRO', []) then DM.qFechaS_Din.Value  := qMovvalor.AsFloat;
     if qMov.Locate('forma', 'CHEQUE', []) then DM.qFechaS_Che.Value    := qMovvalor.AsFloat;
     if qMov.Locate('forma', 'DEBITO', []) then DM.qFechaS_Deb.Value    := qMovvalor.AsFloat;
     if qMov.Locate('forma', 'CREDITO', []) then DM.qFechaS_Cre.Value   := qMovvalor.AsFloat;

     qRec.Close;
     qRec.ParamByName('co').Value  := 1;//contaPadrao;
     qRec.ParamByName('usu').Value := strtoint(usu);
     qRec.ParamByName('dt').AsDate := StrToDate(edData.Text);
     qRec.Open;
     DM.qFechas_depo.Value   := qRecvalor.AsFloat;

     DM.qFechaU_Din.Value      := Dinheiro;
     DM.qFechaU_Che.Value      := Cheque;
     DM.qFechaU_Deb.Value      := Debito;
     DM.qFechaU_Cre.Value      := Credito;
     DM.qFechaU_Depo.Value     := Deposito;
     DM.qFechaFechamento.Value := Valor;
     DM.qFechaDeixado.Value    := vDeixadoCaixa;
     DM.qFechaCODEMP.Value     := 1;
     DM.qFecha.Post;
     DM.qFecha.ApplyUpdates;   } //Nao vou precisar por Enquanto.

     // fim

     {qCartao.first;
     while qCartao.eof = false do
     begin
         qCartao.edit;
         qCartaoidmov.value := idcx;
         qCartao.post;

         qCartao.Next;
     end;
     qCartao.ApplyUpdates;
     ExecSql('delete from movcartao where coalesce(valor,0) = 0'); }

    Application.MessageBox(pchar('Caixa Fechado com R$ '+ FormatFloat('###,###,###,##0.00', Valor)), 'Aviso');

    {if (DM.qParametropaf.Value = 'N') and (dm.qParametroECF.text = 'S') then
    begin
          if FValoresIni.ECF <> '' then
          begin
             if Application.MessageBox('Deseja Tirar Redução Z?', 'Confirmação', MB_YESNO+MB_DEFBUTTON2)=idyes then begin
                fMenu.ReduoZ1Click(Application);
             end
             else
                GravarLogRedZ(DM.qSelect.FieldByName('Id').Value, 'Botão Não');
          end;
    end;   }

    {if dm.qParametroDiferenca.Value > 0 then
    begin
       vDif := (vSistema - Valor);
       if (vDif < 0) and (vDif > (dm.qParametroDiferenca.Value*(-1))) then
          Application.MessageBox('Caixa Fechado sem diferenças', 'Aviso')
       else
       if (vDif >= 0) and (vDif < dm.qParametroDiferenca.Value) then
          Application.MessageBox('Caixa Fechado sem diferenças', 'Aviso');
    end; }

    conf_fecha := 'S';

    Close;

    if fVisuCaixa = nil then
       Application.CreateForm(TfVisuCaixa, fVisuCaixa);

    fVisuCaixa.ShowModal;
    fVisuCaixa.Free;


end;

procedure TfFechamento.FormActivate(Sender: TObject);
begin

 T01:= 0;
 T05:= 0;
 T010:= 0;
 T025:= 0;
 T050:= 0;
 T1:= 0;
 T2:= 0;
 T5:= 0;
 T10:= 0;
 T20:= 0;
 T50:= 0;
 T100:= 0;
 Dinheiro := 0;
 Cheque := 0;
 Debito := 0;
 Credito := 0;
 Valor := 0;
 EdValor.Text := FormatFloat('##0.00', Valor);
end;

procedure TfFechamento.EdValorExit(Sender: TObject);
begin
Valor := StrToFloat(EdValor.Text);
end;

procedure TfFechamento.Qtd05KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T05 := (StrToFloat(Ed05.Text)*StrToFloat(Qtd05.Text));
  Tot05.Text := FormatFloat('##0.00', T05);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd01KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T01 := (StrToFloat(Ed01.Text)*StrToFloat(Qtd01.Text));
  Tot01.Text := FormatFloat('##0.00', T01);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd010KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T010 := (StrToFloat(Ed010.Text)*StrToFloat(Qtd010.Text));
  Tot010.Text := FormatFloat('##0.00', T010);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd025KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T025 := (StrToFloat(Ed025.Text)*StrToFloat(Qtd025.Text));
  Tot025.Text := FormatFloat('##0.00', T025);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd050KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T050 := (StrToFloat(Ed050.Text)*StrToFloat(Qtd050.Text));
  Tot050.Text := FormatFloat('##0.00', T050);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T1 := (StrToFloat(Ed1.Text)*StrToFloat(Qtd1.Text));
  Tot1.Text := FormatFloat('##0.00', T1);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T2 := (StrToFloat(Ed2.Text)*StrToFloat(Qtd2.Text));
  Tot2.Text := FormatFloat('##0.00', T2);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T5 := (StrToFloat(Ed5.Text)*StrToFloat(Qtd5.Text));
  Tot5.Text := FormatFloat('##0.00', T5);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd10KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T10 := (StrToFloat(Ed10.Text)*StrToFloat(Qtd10.Text));
  Tot10.Text := FormatFloat('##0.00', T10);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd20KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T20 := (StrToFloat(Ed20.Text)*StrToFloat(Qtd20.Text));
  Tot20.Text := FormatFloat('##0.00', T20);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd50KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T50 := (StrToFloat(Ed50.Text)*StrToFloat(Qtd50.Text));
  Tot50.Text := FormatFloat('##0.00', T50);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Qtd100KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13]) then
  key:=#0;
if Key = #13 then
 begin
  T100 := (StrToFloat(Ed100.Text)*StrToFloat(Qtd100.Text));
  Tot100.Text := FormatFloat('##0.00', T100);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.EdChequeKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;
if Key = #13 then
 begin
  Cheque := StrToFloat(EdCheque.Text);
  EdCheque.Text := FormatFloat('##0.00', Cheque);

  Somar;

  SelectNext(ActiveControl, True, True);

  Key := #0;
 end;
end;

procedure TfFechamento.EdSenhaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.EdValorKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;
end;

procedure TfFechamento.Somar;
begin
  Cheque   := StrToFloat(EdCheque.Text);
  Debito   := StrToFloat(edDebito.Text);
  Credito  := StrToFloat(edCredito.Text);
  Deposito := StrToFloat(edDeposito.Text);
  Pix      := StrToFloat(edPix.Text);

  Dinheiro := T01 + T05 + T010 + T025 + T050 + T1 + T2 + T5 + T10 + T20 + T50 + T100;

  edDinheiro.Text := FormatFloat('##0.00', Dinheiro);

  Valor := Dinheiro + Cheque + Debito + Credito + Deposito + Pix;

  EdValor.Text := FormatFloat('##0.00', Valor);

  edMoedas.Caption  := formatfloat('#0.00', (T01 + T05 + T010 + T025 + T050 + T1) );
  edNotas.Caption   := formatfloat('#0.00', (T2 + T5 + T10 + T20 + T50 + T100) );
  edCartoes.Caption := formatfloat('#0.00', (Debito + Credito) );
  
end;

procedure TfFechamento.edDinheiroKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;
if Key = #13 then
 begin
  Dinheiro := StrToFloat(edDinheiro.Text);
  edDinheiro.Text := FormatFloat('##0.00', Dinheiro);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.edPixKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
    key:=#0;

  if Key = #13 then
  begin
    PiX := StrToFloat(edPix.Text);
    edPix.Text := FormatFloat('##0.00', Pix);

    Somar;

    SelectNext(ActiveControl, True, True);
    Key := #0;
  end;
end;

procedure TfFechamento.edDebitoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;

if Key = #13 then
 begin
  Debito := StrToFloat(edDebito.Text);
  edDebito.Text := FormatFloat('##0.00', Debito);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;


end;

procedure TfFechamento.edDepositoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;
if Key = #13 then
 begin
  Deposito := StrToFloat(EdDeposito.Text);
  EdDeposito.Text := FormatFloat('##0.00', Deposito);

  Somar;
  edPix.SetFocus;
  Key := #0;
 end;

end;

procedure TfFechamento.edCreditoKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;

if Key = #13 then
 begin
  Credito := StrToFloat(edCredito.Text);
  edCredito.Text := FormatFloat('##0.00', Credito);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
 
end;

procedure TfFechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 fFechamento := nil;
end;

procedure TfFechamento.edValNoCxKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, DecimalSeparator]) then
  key:=#0;

if Key = #13 then
 begin
  edValNoCx.Text := FormatFloat('##0.00', StrToFloat(edValNoCx.Text));

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;

end;

procedure TfFechamento.FormCreate(Sender: TObject);
begin


  edData.Text := FormatDateTime('dd/mm/yyyy',  date );  //DataMovimento
  conf_fecha := 'N';
  {dbgrid1.Visible := true;
  qCartao.close;
  qCartao.ParamByName('id').value := 0;
  qCartao.Open;  }

  {if dm.qParametrocaixa_fpgtocadastro.Text = 'S' then
  begin
    Bandeira.open;
    bandeira.first;
    inserindo := 'S';
    while bandeira.eof = false do
    begin
      qCartao.insert;
      qCartaoid.Value         := InsereCodigo( 'movcartao', 'id');
      qCartaoidmov.value      := 0;
      qCartaoidtpcartao.value := bandeiraid.value;
      qCartaobandeira.value   := bandeiratp.value;
      qCartaoValor.value      := 0;
      qCartao.Post;

      bandeira.next;
    end;
    qCartao.ApplyUpdates;
    inserindo := 'N';
  end
  else
  begin
      qCartao.insert;
      qCartaoid.Value         := InsereCodigo( 'movcartao', 'id');
      qCartaoidmov.value      := 0;
      qCartaoidtpcartao.value := 0;
      qCartaobandeira.value   := 'CREDITO';
      qCartaoValor.value      := 0;
      qCartao.Post;

      qCartao.insert;
      qCartaoid.Value         := InsereCodigo( 'movcartao', 'id');
      qCartaoidmov.value      := 0;
      qCartaoidtpcartao.value := 0;
      qCartaobandeira.value   := 'DEBITO';
      qCartaoValor.value      := 0;
      qCartao.Post;

      qCartao.insert;
      qCartaoid.Value         := InsereCodigo( 'movcartao', 'id');
      qCartaoidmov.value      := 0;
      qCartaoidtpcartao.value := 0;
      qCartaobandeira.value   := 'REFEICAO';
      qCartaoValor.value      := 0;
      qCartao.Post;

      {if dm.qParametrousar_forma_deposito.Text = 'S' then
      begin
        qCartao.insert;
        qCartaoid.Value         := InsereCodigo( 'movcartao', 'id');
        qCartaoidmov.value      := 0;
        qCartaoidtpcartao.value := 0;
        qCartaobandeira.value   := 'DEPÓSITO';
        qCartaoValor.value      := 0;
        qCartao.Post;
      end;
  end;}





end;

procedure TfFechamento.edDataKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.qCartaoAfterPost(DataSet: TDataSet);
var
  rg : integer;

begin

 if inserindo = 'S' then
    exit;

     Debito := 0;
     Credito := 0;
     rg := qCartao.recno;
     qCartao.first;
     while qCartao.eof = false do
     begin
         if copy( qCartaoBandeira.text,1,3) = 'CRE' then
            Credito := Credito + qCartaoValor.value;
         if (copy( qCartaoBandeira.text,1,3) = 'DEB') then
            Debito := Debito + qCartaoValor.value;
         if copy( qCartaoBandeira.text,1,3) = 'REF' then
            Debito := Debito + qCartaoValor.value;
         qCartao.Next;
     end;
     edDebito.Text  := FormatFloat( '#0.00', debito  );   // FloattoStr(Debito);
     edCredito.Text := Formatfloat( '#0.00', credito );   // FloattoStr(Credito);

     somar;

     qCartao.first;
     qCartao.recno := rg;

end;

procedure TfFechamento.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  qCartao.Next;
  dbgrid1.SelectedIndex := 1;
  Key := #0;
 end;

end;

procedure TfFechamento.Tot01KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T01 := StrToFloat(Tot01.Text);
  Qtd01.Text := FormatFloat('##0', StrToFloat(Tot01.Text)/StrToFloat(Ed01.Text));
  Tot01.Text := FormatFloat('##0.00', T01);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot05KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T05 := StrToFloat(Tot05.Text);
  Qtd05.Text := FormatFloat('##0', StrToFloat(Tot05.Text)/StrToFloat(Ed05.Text));
  Tot05.Text := FormatFloat('##0.00', T05);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;

end;

procedure TfFechamento.Tot010KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T010 := StrToFloat(Tot010.Text);
  Qtd010.Text := FormatFloat('##0', StrToFloat(Tot010.Text)/StrToFloat(Ed010.Text));
  Tot010.Text := FormatFloat('##0.00', T010);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot025KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T025 := StrToFloat(Tot025.Text);
  Qtd025.Text := FormatFloat('##0', StrToFloat(Tot025.Text)/StrToFloat(Ed025.Text));
  Tot025.Text := FormatFloat('##0.00', T025);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot050KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T050 := StrToFloat(Tot050.Text);
  Qtd050.Text := FormatFloat('##0', StrToFloat(Tot050.Text)/StrToFloat(Ed050.Text));
  Tot050.Text := FormatFloat('##0.00', T050);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot1KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T1 := StrToFloat(Tot1.Text);
  Qtd1.Text := FormatFloat('##0', StrToFloat(Tot1.Text)/StrToFloat(Ed1.Text));
  Tot1.Text := FormatFloat('##0.00', T1);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot2KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T2 := StrToFloat(Tot2.Text);
  Qtd2.Text := FormatFloat('##0', StrToFloat(Tot2.Text)/StrToFloat(Ed2.Text));
  Tot2.Text := FormatFloat('##0.00', T2);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot5KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T5 := StrToFloat(Tot5.Text);
  Qtd5.Text := FormatFloat('##0', StrToFloat(Tot5.Text)/StrToFloat(Ed5.Text));
  Tot5.Text := FormatFloat('##0.00', T5);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot10KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T10 := StrToFloat(Tot10.Text);
  Qtd10.Text := FormatFloat('##0', StrToFloat(Tot10.Text)/StrToFloat(Ed10.Text));
  Tot10.Text := FormatFloat('##0.00', T10);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot20KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T20 := StrToFloat(Tot20.Text);
  Qtd20.Text := FormatFloat('##0', StrToFloat(Tot20.Text)/StrToFloat(Ed20.Text));
  Tot20.Text := FormatFloat('##0.00', T20);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot50KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T50 := StrToFloat(Tot50.Text);
  Qtd50.Text := FormatFloat('##0', StrToFloat(Tot50.Text)/StrToFloat(Ed50.Text));
  Tot50.Text := FormatFloat('##0.00', T50);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.Tot100KeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9',#8,#13, ',']) then
  key:=#0;
if Key = #13 then
 begin
  T100 := StrToFloat(Tot100.Text);
  Qtd100.Text := FormatFloat('##0', StrToFloat(Tot100.Text)/StrToFloat(Ed100.Text));
  Tot100.Text := FormatFloat('##0.00', T100);

  Somar;

  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfFechamento.DBGrid1Exit(Sender: TObject);
begin
  if qCartao.State in [dsEdit] then
     qCartao.Post;

end;


end.

