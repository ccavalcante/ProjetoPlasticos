unit uBaixaRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, ActnList, Buttons, DB,
  XiButton, Grids, DBGrids,   ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, System.Actions;

type
  TfBaixaRec = class(TForm)
    ActionList1: TActionList;
    Baixa: TAction;
    sair: TAction;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit3: TDBEdit;
    Image1: TImage;
    acedcodconta: TAction;
    Cxx: TZQuery;
    dCxx: TDataSource;
    CxxValorFpgto: TFloatField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    lData: TLabel;
    edDt: TDateTimePicker;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    CxxFpgto: TWideStringField;
    Label7: TLabel;
    edCod: TDBEdit;
    EdNome: TEdit;
    gdFor: TDBGrid;
    CxxId: TIntegerField;
    CxxIdConta: TIntegerField;
    CxxidMov: TIntegerField;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    Label9: TLabel;
    DBEdit5: TDBEdit;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    btnCheque: TBitBtn;
    pCheque: TPanel;
    Label12: TLabel;
    lRec: TLabel;
    cbConta: TDBLookupComboBox;
    qConta: TZQuery;
    dConta: TDataSource;
    qContaid: TIntegerField;
    qContanome: TWideStringField;
    cbConta2: TDBLookupComboBox;
    Label11: TLabel;
    procedure BaixaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeChange(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Exit(Sender: TObject);
    procedure btnChequeClick(Sender: TObject);
    procedure DBEdit2Click(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure cbContaExit(Sender: TObject);
    procedure CxxNewRecord(DataSet: TDataSet);
  private
    inserido : String;
    procedure LancaCheque(idm, idc, idd :integer; vl:real );
    procedure VisCheque(pTipo : boolean);
    procedure reciboCredito(cod: integer);
    { Private declarations }
  public
    { Public declarations }
    ValorPago, ValorBaixa: Real;
    TipoMov, GeradoCredito, vCH_Lancado, origem : String;
    CodBaixa, nCodVenda, nEmp : Integer;
    reg : integer;
  end;

var
  fBaixaRec: TfBaixaRec;
  BxParcialREC, Conf_Bx_REC : string;

implementation

uses uDM, uFuncao, uSenhaCad, uCReceber2, uCheque, uRelFinanceiro, uVenda;

{$R *.dfm}
procedure TfBaixaRec.VisCheque(pTipo : boolean);
begin
   btnCheque.Visible := pTipo;
   pCheque.Visible   := pTipo;
end;

procedure TfBaixaRec.BaixaExecute(Sender: TObject);
 var Porcentagem, ValorRecebido, pVal1, pVal2, valrec1,
     valrec2, ValorResta, valDesc, valJuro,  vTroco : Real;
    cod2, idcrec, idcrec2 : integer;
    segunda, forma1, forma2 : String;

begin
  SelectNext(ActiveControl, false, false);

  if nEmp = 0 then
     nEmp := 1;

  cod2:= 0;

  if {(trim(edCod.Text) = '')}(trim(cbConta.text) = '') or (dm.CxIdConta.AsInteger = 0)  then
  begin
     Application.messageBox('Por favor, informe uma conta para continuar. ', 'Atenção' );
     //edCod.SetFocus;
     cbConta.SetFocus;
     exit;
  end;

  if ((trim(DBComboBox1.Text) = 'TRANSF.BANCARIA') {or (trim(DBComboBox2.Text) = 'TRANSF.BANCARIA')})or
     ((trim(DBComboBox1.Text) = 'PIX') {or (trim(DBComboBox2.Text) = 'PIX')})
     {and (dm.qpesq.fieldbyname('tipo').Text <> 'B')} then
  begin
     dm.qPesq.close;
     dm.qPesq.SQL.clear;
     dm.qPesq.SQL.add('select tipo from conta where id = ' + inttoStr(cbConta.keyValue));
     dm.qPesq.open;
     if dm.qPesq.Fields[0].asString <> 'B' then
     begin
       Application.messageBox('Por favor, informe uma conta bancária para a forma de pagamento 1.', 'Atenção' );
       //edCod.SetFocus;
       cbConta.setFocus;
       exit;
     end;
  end;

  if (trim(DBComboBox2.Text) = 'TRANSF.BANCARIA')or
     (trim(DBComboBox2.Text) = 'PIX') then
  begin
     dm.qPesq.close;
     dm.qPesq.SQL.clear;
     dm.qPesq.SQL.add('select tipo from conta where id = ' + inttoStr(cbConta2.keyValue));
     dm.qPesq.open;
     if dm.qPesq.Fields[0].asString <> 'B' then
     begin
       Application.messageBox('Por favor, informe uma conta bancária para a forma de pagamento 2.', 'Atenção' );
       //edCod.SetFocus;
       cbConta2.setFocus;
       exit;
     end;
  end;

  if (trim(DBComboBox1.Text) = 'CHEQUE') or (trim(DBComboBox2.Text) = 'CHEQUE') then
  begin
     if vCH_Lancado = 'N' then // valor cheques
     begin
        if Application.messageBox('Cheques não informados, deseja continuar assim mesmo?', 'Atenção', mb_yesno ) = idno then
        begin
           dbedit2.SetFocus;
           exit;
        end;
     end;
  end;

  forma1        := 'Dinheiro';
  forma2        := 'Dinheiro';
  Porcentagem   := 0;
  ValorRecebido := 0;
  pVal1         := 0;
  pVal2      := 0;
  valrec1    := 0;
  valrec2    := 0;
  ValorResta := 0;
  valDEsc    := 0;
  valJuro    := 0;
  idcrec     := 0;
  if (dm.CxTotal.asfloat < 0) and (dm.qParametronao_baixar_negativo.Text = 'S') then
  begin
     Application.messageBox('Baixa não permitida para valores negativos', 'Atenção' );
     exit;
  end;


  if dm.qParametrobaixa_sem_troco.text = 'S' then
  begin
     if dm.CxTotal.asfloat < (dm.CxValorFpgto.asfloat + CxxVALorFPGTO.asfloat)  then
     begin
        Application.messageBox(pchar('Valor dos pagamentos não pode ser maior que valor total! [Ttl: ' +
                    formatfloat('###,###,##0.00', dm.CxTotal.AsFloat) + '- Pg1: ' +
                    formatfloat('###,###,##0.00', dm.CxValorFpgto.AsFloat) + '- Pg2: ' +
                    formatfloat('###,###,##0.00', cxxvalorfpgto.AsFloat) +']'), 'Atenção' );
        exit;
     end;
  end;

  if dm.CxTotal.asfloat > (dm.CxValorFpgto.asfloat + CxxVALorFPGTO.asfloat)  then
  begin
     Application.messageBox(pchar('Valor total diferente do valor dos pagamentos ' + dm.CxTotal.AsString + '-' + dm.CxValorFpgto.AsString + '-'+ cxxvalorfpgto.AsString), 'Atenção' );
     exit;
  end;

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then
     Exit;

  if origem = 'V' then
     GravaLogFinan(IdUsuario, DM.CxId.Value, fVenda.TIdCliente.AsInteger, 'Movimento Caixa', 'BAIXA', 'baixa contas a receber','C')
  else
     GravaLogFinan(IdUsuario, DM.CxId.Value, fCReceber2.TIdCliente.AsInteger, 'Movimento Caixa', 'BAIXA', 'baixa contas a receber','C');
  //GravaLogFinan(IdUsuario, DM.CxId.Value, 'Movimento Caixa', 'BAIXA', 'baixa contas a receber');

  IF (Origem = 'B') or( Origem = 'C') then   //Origem V = Venda
  begin
     if dm.CxValorFPgto.Value <> 0 then  // > 0
     begin
           DM.CxValor.Value        := DM.CxValorFpgto.Value;
           DM.CxValorFpgto.Value   := DM.CxValorFpgto.Value;
           DM.CxTotal.Value        := DM.CxValorFpgto.Value;
           DM.CxSegundaForma.Value := 'N';
           dM.CxF_Dinheiro.Value   := DM.CxValorFpgto.Value ;
           DM.CxData.Value         := edDt.Date;
           DM.Cxidemp.Value        := nEmp;
           case DBComboBox1.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := DM.CxValorFpgto.Value ;
              1 : dM.CxF_Cheque.Value   := DM.CxValorFpgto.Value ;
              2 : dM.CxF_Debito.Value   := DM.CxValorFpgto.Value ;
              3 : dM.CxF_Credito.Value  := DM.CxValorFpgto.Value ;
           end;
           valrec1 := DM.CxValorFpgto.Value;
           forma1  := DM.CxFpgto.Value;
           valDesc := DM.CxDesconto.AsFloat;
           valJuro := DM.CxJuros.AsFloat;
           idcrec  := DM.CxidMov.AsInteger;
           if (VALdESC > 0) or (VALjuro > 0) then
              totalbaixaparcial := totalbaixaparcial + valJuro - valDesc;
           vTroco  := dm.CxTroco.AsFloat;
           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           CodBaixa := DM.CxId.Value;

     end;
     sleep(50);

     //forma 2
     if CxxValorFPgto.Value > 0 then
          begin
           DM.Cx.Open;
           DM.Cx.Insert;
           DM.CxData.Value := now; // Date;
           DM.CxTpMov.Value := 'R';
           DM.CxIdUsuario.Value := dm.qUserId.Value;
           DM.CxIdMov.Value := idcrec;  //dm.CRecID.Value;
           DM.CxValor.Value := CxxValorFPgto.Value ;
           DM.CxFpgto.Value := CxxFPgto.text;
           DM.CxValorFpgto.Value := CxxValorFPgto.Value;
           DM.CxJuros.Value      := 0;
           DM.CxDesconto.Value   := 0;
           DM.CxTotal.Value := CxxValorFPgto.Value;
           DM.CxSegundaForma.Value := 'S';
           DM.CxDescri.Value := 'RECEBIMENTO DE CLIENTE';
           DM.Cxidemp.Value  := nEmp;
           case DBComboBox2.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := CxxValorFPgto.Value;
              1 : dM.CxF_Cheque.Value   := CxxValorFPgto.Value;
              2 : dM.CxF_Debito.Value   := CxxValorFPgto.Value;
              3 : dM.CxF_Credito.Value  := CxxValorFPgto.Value;
           end;
           valrec2 := DM.CxValorFpgto.Value;
           forma2  := DM.CxFpgto.Value;
           DM.CxIdConta.asInteger := CxxIdConta.asInteger;
           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           Cod2 := DM.CxId.Value;
           segunda := 'S';
      end;
      sleep(50);

      //atualiza tabela Pagamentos
      ValorResta := ValorPago + valjuro - valDesc;
      ValorBaixa := ValorPago + valjuro - valDesc;
      begin
        fCReceber2.T.First;
        while fCReceber2.T.Eof = false do
         begin
           if fCReceber2.Tx.Value = 'T' then
           begin
               if (BxParcialREC = 'S') then
               begin
                if (valorBaixa > 0) then //valorbaixa  - 01/08/2019-regis
                begin
                 if valorBaixa > fCReceber2.TValor.Value then
                 begin
                    ValorRecebido := fCReceber2.TValor.Value;
                    valorbaixa := valorBaixa - fCReceber2.TValor.Value;
                 end
                 else
                 if valorBaixa < fCReceber2.TValor.Value then
                 begin
                    ValorRecebido := valorBaixa;
                    ValorBaixa    := 0;
                 end;

                 pVal1  := (ValRec1 * 100 ) / ValorRecebido;
                 pVal2  := (ValRec2 * 100)  / ValorRecebido;

                 reg := fCReceber2.T.RecNo;
                 fCReceber2.T.Edit;
                 fCReceber2.TidBaixa.Value      := codbaixa;
                 fCReceber2.TBaixa.Value        := 'S';
                 fCReceber2.TUsuario_baixa.Value := DM.qUserId.Value;
                 fCReceber2.Tsincronizado.Value := 'N';
                 fCReceber2.TDTPagto.Value      := edDt.Date;
                 fCReceber2.TVAlPago.Value      := ValorRecebido ;
                 fCReceber2.Tvalor1.Value       := ValorRecebido * pVal1 / 100 ;
                 fCReceber2.TFPgto1.text       := forma1;
                 if segunda = 'S' then
                 begin
                   fCReceber2.TidBaixa2.Value  := cod2;
                   fCReceber2.TFPgto2.text     := forma2;
                   fCReceber2.Tvalor2.Value    := ValorRecebido * pVal2 / 100 ;
                 end;

                 if (valdesc > 0) or (valJuro > 0) then // desconto/juros
                 begin
                    fCReceber2.TDesconto.Value     := valdesc;
                    fCReceber2.TJuros.Value        := valjuro;
                    fCReceber2.TTotal.Value        := fCReceber2.Tvalor1.Value ;
                    fCReceber2.TVAlPago.Value      := fCReceber2.Tvalor1.Value ;
                    if (fCReceber2.TTipo.Text = 'V') and (fCReceber2.TidVenda.AsInteger > 0) then
                       Execsql('update venda set '+
                          ' desconto = ( coalesce(desconto,0) + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) + ') , '+
                          ' total = ' + ' valor '+
                          ' - (coalesce(desconto,0)  + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) +
                          ' ) where id = ' + fCReceber2.TidVenda.Text );

                    valDesc := 0;
                 end;
                 fCReceber2.T.post;

                 if (dm.qParametrocomissao_pagar.text = 'S') then
                    addComissao('CR:'+trim(fCReceber2.TDocumento.text),
                                fCReceber2.Tidvenda.asinteger,
                                0,
                                fCReceber2.TId.AsInteger,
                                fCReceber2.Tidemp.AsInteger,
                                fCReceber2.TValPago.asfloat,
                                fCReceber2.TDtPagto.AsDateTime );

                 fCReceber2.T.RecNo := reg;
                end
                else
                begin   // nao faz nada na parcela porque nao tem mais valor da baixa
                 reg := fCReceber2.T.RecNo;
                 fCReceber2.T.Edit;
                 fCReceber2.TidBaixa.Value      := codbaixa;
                 fCReceber2.TBaixa.Value        := 'S';
                 fCReceber2.TUsuario_baixa.Value := DM.qUserId.Value;
                 fCReceber2.Tsincronizado.Value := 'N';
                 fCReceber2.TDTPagto.Value      := edDt.Date;
                 fCReceber2.TVAlPago.Value      := ValorBaixa ;   //0;
                 fCReceber2.Tvalor1.Value       := ValRec1;
                 fCReceber2.TFPgto1.Value       := forma1;
                 if segunda = 'S' then begin
                   fCReceber2.TidBaixa2.Value   := cod2;
                   fCReceber2.TFPgto2.Value     := forma2;
                   fCReceber2.Tvalor2.Value     := ValRec2;
                 end;
                 fCReceber2.T.post;

                 if dm.qParametrocomissao_pagar.text = 'S' then
                    addComissao('CR:'+trim(fCReceber2.TDocumento.text),
                                fCReceber2.Tidvenda.asinteger,
                                0,
                                fCReceber2.TId.AsInteger,
                                fCReceber2.Tidemp.AsInteger,
                                fCReceber2.TValPago.asfloat ,
                                fCReceber2.TDtPagto.AsDateTime);

                 fCReceber2.T.RecNo := reg;
                end;

               end
               else
               begin //BAIXA NORMAL

                 Porcentagem := (100 - (( totalbaixaparcial * 100) / valorResta   ));

                 if Porcentagem = 0 then
                    ValorRecebido := fCReceber2.TTOTAL.asfloat
                 else
                    ValorRecebido := fCReceber2.TTOTAL.asfloat - (fCReceber2.TTOTAL.asfloat * Porcentagem / 100);

                 pVal1  := (ValRec1 * 100 ) / valorResta; // ValorRecebido;
                 pVal2  := (ValRec2 * 100)  / valorResta; // ValorRecebido;

                 reg := fCReceber2.T.RecNo;
                 fCReceber2.T.Edit;
                 fCReceber2.TidBaixa.Value      := codbaixa;
                 fCReceber2.TBaixa.Value        := 'S';
                 fCReceber2.TUsuario_baixa.Value := DM.qUserId.Value;
                 fCReceber2.Tsincronizado.Value := 'N';
                 fCReceber2.TDTPagto.Value      := edDt.Date;
                 fCReceber2.TVAlPago.Value      := ValorRecebido ;
                 fCReceber2.Tvalor1.Value       := ValorRecebido * pVal1 / 100 ;
                 fCReceber2.TFPgto1.text        := forma1;
                 if segunda = 'S' then begin
                   fCReceber2.TidBaixa2.Value   := cod2;
                   fCReceber2.TFPgto2.text      := forma2;
                   fCReceber2.Tvalor2.Value     := ValorRecebido * pVal2 / 100 ;
                 end;

                 if (valdesc > 0) or (valJuro > 0) then // desconto/juros
                 begin
                    fCReceber2.TDesconto.Value     := valdesc;
                    fCReceber2.TJuros.Value        := valjuro;
                    fCReceber2.TTotal.Value        := fCReceber2.Tvalor1.Value + valjuro - valdesc ;
                    fCReceber2.TVAlPago.Value      := fCReceber2.TTotal.Value;
                    fCReceber2.Tvalor1.Value       := fCReceber2.TTotal.Value;

                    if (fCReceber2.TTipo.Text = 'V') and (fCReceber2.TidVenda.AsInteger > 0) then
                       Execsql('update venda set '+
                          ' desconto = ( coalesce(desconto,0) + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) + ') , '+
                          ' total = ' +
                          ' valor '+
                          ' - ( coalesce(desconto,0)  + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) +
                          ' ) where id = ' + fCReceber2.TidVenda.Text );

                    valDesc := 0;
                    valJuro := 0;
                 end;

                 fCReceber2.T.post;

                 if (dm.qParametrocomissao_pagar.text = 'S') then
                    addComissao('CR:'+trim(fCReceber2.TDocumento.text),
                                fCReceber2.Tidvenda.asinteger,
                                0,
                                fCReceber2.TId.AsInteger,
                                fCReceber2.Tidemp.AsInteger,
                                fCReceber2.TValPago.asfloat,
                                fCReceber2.TDtPagto.AsDateTime );

                 fCReceber2.T.RecNo := reg;

               end;

               //gera credito para nf avulsa
               if (dm.qParametropd_cred_nf_avulsa.Text = 'S')  and
                  (copy(fCReceber2.TDocumento.Text,1,3) = 'NFA' ) then
               begin
                  dm.CRec.Open;
                  dm.CRec.Insert;
                  dm.CRecDOCUMENTO.Value  := 'CR_'+copy(fCReceber2.TDocumento.Text,4,10);
                  dm.CRecnParc.AsInteger := 1;
                  dm.CRecIdVenda.Value    := 0;
                  dm.CRecIdCLIENTE.Value  := fCReceber2.TIdCliente.Value;
                  dm.CRecEMISSAO.Value    := Date;
                  dm.CRecidcondpgto.Value := fCReceber2.Tidcondpgto.Value;
                  dm.CRecVALOR.Value      := fCReceber2.TValor.Value * (-1);
                  dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
                  dm.CRecVENCI.Value      := Date;
                  dm.CRecBAIXA.Value      := 'N';
                  dm.CRecTIPO.Value       := 'V';
                  dm.CRecEX.Value         := 0;
                  dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
                  dm.CRecgerado_boleto.Value  := 'N';
                  dm.CRecidemp.Value      := nEmp; // 1;
                  idcrec2 := dm.CRecID.AsInteger;
                  dm.CRec.Post;

                  reciboCredito(idcrec2);
                  dm.CRec.Close;
               end;
           end;
           fCReceber2.T.Next;
         end;
         fCReceber2.T.ApplyUpdates;
      end;

       //gera credito troco
       if (vTroco > 0) then
       begin
               if Application.MessageBox('Deseja gerar crédito do valor do troco?', 'Confirmação', mb_yesno+mb_defbutton2 ) = idYes then
               begin
                dm.CRec.close;
                dm.CRec.Open;
                dm.CRec.Insert;
                dm.CRecDOCUMENTO.Value  := 'CR_'+copy(fCReceber2.TDocumento.Text,4,10);
                dm.CRecnParc.AsInteger := 1;
                dm.CRecIdVenda.Value    := 0;
                dm.CRecIdCLIENTE.Value  := fCReceber2.TIdCliente.Value;
                dm.CRecEMISSAO.Value    := Date;
                dm.CRecidcondpgto.Value := fCReceber2.Tidcondpgto.Value;
                dm.CRecVALOR.Value      := vTroco * (-1);
                dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
                dm.CRecVENCI.Value      := Date;
                dm.CRecBAIXA.Value      := 'N';
                dm.CRecTIPO.Value       := 'V';
                dm.CRecEX.Value         := 0;
                dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
                dm.CRecgerado_boleto.Value  := 'N';
                dm.CRecidemp.Value      := nEmp; // 1;
                idcrec2 := dm.CRecID.AsInteger;
                dm.CRec.Post;
                sleep(200);

                reciboCredito(idcrec2);
                sleep(200);
                dm.CRec.Close;

               end
               else
               begin
                 dm.Cx.Locate('id', codbaixa, []);
                 dm.Cx.Edit;
                 DM.CxValor.Value        := DM.CxValor.Value - DM.CxTroco.Value;
                 DM.CxValorFpgto.Value   := DM.CxValor.Value;
                 DM.CxTotal.Value        := DM.CxValor.Value;
                 DM.Cx.Post;
                 DM.Cx.ApplyUpdates;
               end;
       end;


  end
  else
  if origem = 'V' then //Venda
  begin
      if dm.CxValorFPgto.Value <> 0 then  // > 0
     begin
           DM.CxValor.Value        := DM.CxValorFpgto.Value;
           DM.CxValorFpgto.Value   := DM.CxValorFpgto.Value;
           DM.CxTotal.Value        := DM.CxValorFpgto.Value;
           DM.CxSegundaForma.Value := 'N';
           dM.CxF_Dinheiro.Value   := DM.CxValorFpgto.Value ;
           DM.CxData.Value         := edDt.Date;
           DM.Cxidemp.Value        := nEmp;
           case DBComboBox1.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := DM.CxValorFpgto.Value ;
              1 : dM.CxF_Cheque.Value   := DM.CxValorFpgto.Value ;
              2 : dM.CxF_Debito.Value   := DM.CxValorFpgto.Value ;
              3 : dM.CxF_Credito.Value  := DM.CxValorFpgto.Value ;
           end;
           valrec1 := DM.CxValorFpgto.Value;
           forma1  := DM.CxFpgto.Value;
           valDesc := DM.CxDesconto.AsFloat;
           valJuro := DM.CxJuros.AsFloat;
           idcrec  := DM.CxidMov.AsInteger;
           if (VALdESC > 0) or (VALjuro > 0) then
              totalbaixaparcial := totalbaixaparcial + valJuro - valDesc;
           vTroco  := dm.CxTroco.AsFloat;
           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           CodBaixa := DM.CxId.Value;

     end;
     sleep(50);

     //forma 2
     if CxxValorFPgto.Value > 0 then
          begin
           DM.Cx.Open;
           DM.Cx.Insert;
           DM.CxData.Value := now; // Date;
           DM.CxTpMov.Value := 'V';
           DM.CxIdUsuario.Value := dm.qUserId.Value;
           DM.CxIdMov.Value := idcrec;  //dm.CRecID.Value;
           DM.CxValor.Value := CxxValorFPgto.Value ;
           DM.CxFpgto.Value := CxxFPgto.text;
           DM.CxValorFpgto.Value := CxxValorFPgto.Value;
           DM.CxJuros.Value      := 0;
           DM.CxDesconto.Value   := 0;
           DM.CxTotal.Value := CxxValorFPgto.Value;
           DM.CxSegundaForma.Value := 'S';
           DM.CxDescri.Value := 'RECEBIMENTO DE CLIENTE';
           DM.Cxidemp.Value  := nEmp;
           case DBComboBox2.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := CxxValorFPgto.Value;
              1 : dM.CxF_Cheque.Value   := CxxValorFPgto.Value;
              2 : dM.CxF_Debito.Value   := CxxValorFPgto.Value;
              3 : dM.CxF_Credito.Value  := CxxValorFPgto.Value;
           end;
           valrec2 := DM.CxValorFpgto.Value;
           forma2  := DM.CxFpgto.Value;
           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           Cod2 := DM.CxId.Value;
           segunda := 'S';
      end;
      sleep(50);

      //atualiza tabela Pagamentos
      ValorResta := ValorPago + valjuro - valDesc;
      ValorBaixa := ValorPago + valjuro - valDesc;
      begin
        fVenda.qRece.First;
        while fVenda.qRece.Eof = false do
         begin

               if (BxParcialREC = 'S') then
               begin
                if (valorBaixa > 0) then //valorbaixa  - 01/08/2019-regis
                begin
                 if valorBaixa > fVenda.qReceValor.Value then
                 begin
                    ValorRecebido := fVenda.qReceValor.Value;
                    valorbaixa := valorBaixa - fVenda.qReceValor.Value;
                 end
                 else
                 if valorBaixa < fVenda.qReceValor.Value then
                 begin
                    ValorRecebido := valorBaixa;
                    ValorBaixa    := 0;
                 end;

                 pVal1  := (ValRec1 * 100 ) / ValorRecebido;
                 pVal2  := (ValRec2 * 100)  / ValorRecebido;

                 //reg := fVenda.qRece.RecNo;
                 fVenda.qRece.Edit;
                 fVenda.qReceidBaixa.Value      := codbaixa;
                 fVenda.qReceBaixa.Value        := 'S';
                 fVenda.qRecesincronizado.Value := 'N';
                 fVenda.qReceDTPagto.Value      := edDt.Date;
                 fVenda.qReceVAlPago.Value      := ValorRecebido ;
                 fVenda.qRecevalor1.Value       := ValorRecebido * pVal1 / 100 ;
                 fVenda.qReceFPgto1.text       := forma1;
                 if segunda = 'S' then
                 begin
                   fVenda.qReceidBaixa2.Value      := cod2;
                   fVenda.qReceFPgto2.text     := forma2;
                   fVenda.qRecevalor2.Value     := ValorRecebido * pVal2 / 100 ;
                 end;

                 if (valdesc > 0) or (valJuro > 0) then // desconto/juros
                 begin
                    fVenda.qReceDesconto.Value     := valdesc;
                    fVenda.qReceJuros.Value        := valjuro;
                    fVenda.qReceTotal.Value        := fVenda.qRecevalor1.Value ;
                    fVenda.qReceVAlPago.Value      := fVenda.qRecevalor1.Value ;
                    if (fVenda.qReceTipo.Text = 'V') and (fVenda.qReceidVenda.AsInteger > 0) then
                       Execsql('update venda set '+
                          ' desconto = ( coalesce(desconto,0) + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) + ') , '+
                          ' total = ' + ' valor '+
                          ' - (coalesce(desconto,0)  + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) +
                          ' ) where id = ' + fVenda.qReceidVenda.Text );

                    valDesc := 0;
                 end;
                 fVenda.qRece.post;

                 if (dm.qParametrocomissao_pagar.text = 'S') then
                    addComissao('CR:'+trim(fVenda.qReceDocumento.text),
                                fVenda.qReceidvenda.asinteger,
                                0,
                                fVenda.qReceId.AsInteger,
                                fVenda.qReceidemp.AsInteger,
                                fVenda.qReceValPago.asfloat,
                                fVenda.qReceDtPagto.AsDateTime );

                 fVenda.qRece.RecNo := reg;
                end
                else
                begin   // nao faz nada na parcela porque nao tem mais valor da baixa
                 //reg := fCReceber2.T.RecNo;
                 fVenda.qRece.Edit;
                 fVenda.qReceidBaixa.Value      := codbaixa;
                 fVenda.qReceBaixa.Value        := 'S';
                 fVenda.qRecesincronizado.Value := 'N';
                 fVenda.qReceDTPagto.Value      := edDt.Date;
                 fVenda.qReceVAlPago.Value      := ValorBaixa ;   //0;
                 fVenda.qRecevalor1.Value       := ValRec1;
                 fVenda.qReceFPgto1.Value       := forma1;
                 if segunda = 'S' then begin
                   fVenda.qReceidBaixa2.Value   := cod2;
                   fVenda.qReceFPgto2.Value     := forma2;
                   fVenda.qRecevalor2.Value     := ValRec2;
                 end;
                 fVenda.qRece.post;

                 if dm.qParametrocomissao_pagar.text = 'S' then
                    addComissao('CR:'+trim(fVenda.qReceDocumento.text),
                                fVenda.qReceidvenda.asinteger,
                                0,
                                fVenda.qReceId.AsInteger,
                                fVenda.qReceidemp.AsInteger,
                                fVenda.qReceValPago.asfloat ,
                                fVenda.qReceDtPagto.AsDateTime);

                 //fCReceber2.T.RecNo := reg;
                end;

               end
               else
               begin //BAIXA NORMAL

                 //Porcentagem := (100 - (( totalbaixaparcial * 100) / valorResta   ));

                 ///if Porcentagem = 0 then
                    ValorRecebido := fVenda.qReceTOTAL.asfloat;
                 //else
                    //ValorRecebido := fVenda.qReceTOTAL.asfloat {- (fVenda.qReceTOTAL.asfloat * Porcentagem / 100)};

                 pVal1  := (ValRec1 * 100 ) / valorResta; // ValorRecebido;
                 pVal2  := (ValRec2 * 100)  / valorResta; // ValorRecebido;

                 //reg := fCReceber2.T.RecNo;
                 fVenda.qRece.Edit;
                 fVenda.qReceidBaixa.Value      := codbaixa;
                 fVenda.qReceBaixa.Value        := 'S';
                 fVenda.qRecesincronizado.Value := 'N';
                 fVenda.qReceDTPagto.Value      := edDt.Date;
                 fVenda.qReceVAlPago.Value      := ValorRecebido ;
                 fVenda.qRecevalor1.Value       := ValorRecebido * pVal1 / 100 ;
                 fVenda.qReceFPgto1.text        := forma1;
                 if segunda = 'S' then begin
                   fVenda.qReceidBaixa2.Value   := cod2;
                   fVenda.qReceFPgto2.text      := forma2;
                   fVenda.qRecevalor2.Value     := ValorRecebido * pVal2 / 100 ;
                 end;

                 if (valdesc > 0) or (valJuro > 0) then // desconto/juros
                 begin
                    fVenda.qReceDesconto.Value     := valdesc;
                    fVenda.qReceJuros.Value        := valjuro;
                    fVenda.qReceTotal.Value        := fVenda.qRecevalor1.Value + valjuro - valdesc ;
                    fVenda.qReceVAlPago.Value      := fVenda.qReceTotal.Value;
                    fVenda.qRecevalor1.Value       := fVenda.qReceTotal.Value;

                    if (fVenda.qReceTipo.Text = 'V') and (fVenda.qReceidVenda.AsInteger > 0) then
                       Execsql('update venda set '+
                          ' desconto = ( coalesce(desconto,0) + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) + ') , '+
                          ' total = ' +
                          ' valor '+
                          ' - ( coalesce(desconto,0)  + ' + PontoVirgula(FormatFloat('#0.00', valdesc )) +
                          ' ) where id = ' + fVenda.qReceidVenda.Text );

                    valDesc := 0;
                    valJuro := 0;
                 end;

                 fVenda.qRece.post;

                 if (dm.qParametrocomissao_pagar.text = 'S') then
                    addComissao('CR:'+trim(fVenda.qReceDocumento.text),
                                fVenda.qReceidvenda.asinteger,
                                0,
                                fVenda.qReceId.AsInteger,
                                fVenda.qReceidemp.AsInteger,
                                fVenda.qReceValPago.asfloat,
                                fVenda.qReceDtPagto.AsDateTime );

                 //fCReceber2.T.RecNo := reg;

               end;

               //gera credito para nf avulsa
               if (dm.qParametropd_cred_nf_avulsa.Text = 'S')  and
                  (copy(fVenda.qReceDocumento.Text,1,3) = 'NFA' ) then
               begin
                  dm.CRec.Open;
                  dm.CRec.Insert;
                  dm.CRecDOCUMENTO.Value  := 'CR_'+copy(fVenda.qReceDocumento.Text,4,10);
                  dm.CRecnParc.AsInteger := 1;
                  dm.CRecIdVenda.Value    := 0;
                  dm.CRecIdCLIENTE.Value  := fVenda.qReceIdCliente.Value;
                  dm.CRecEMISSAO.Value    := Date;
                  dm.CRecidcondpgto.Value := fVenda.qReceidcondpgto.Value;
                  dm.CRecVALOR.Value      := fVenda.qReceValor.Value * (-1);
                  dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
                  dm.CRecVENCI.Value      := Date;
                  dm.CRecBAIXA.Value      := 'N';
                  dm.CRecTIPO.Value       := 'V';
                  dm.CRecEX.Value         := 0;
                  dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
                  dm.CRecgerado_boleto.Value  := 'N';
                  dm.CRecidemp.Value      := nEmp; // 1;
                  idcrec2 := dm.CRecID.AsInteger;
                  dm.CRec.Post;

                  reciboCredito(idcrec2);
                  dm.CRec.Close;
               end;

           fVenda.qRece.Next;
         end;
         fVenda.qRece.ApplyUpdates;
      end;

       //gera credito troco
       if (vTroco > 0) then
       begin
               if Application.MessageBox('Deseja gerar crédito do valor do troco?', 'Confirmação', mb_yesno+mb_defbutton2 ) = idYes then
               begin
                dm.CRec.close;
                dm.CRec.Open;
                dm.CRec.Insert;
                dm.CRecDOCUMENTO.Value  := 'CR_'+copy(fVenda.qReceDocumento.Text,4,10);
                dm.CRecnParc.AsInteger := 1;
                dm.CRecIdVenda.Value    := 0;
                dm.CRecIdCLIENTE.Value  := fVenda.qReceIdCliente.Value;
                dm.CRecEMISSAO.Value    := Date;
                dm.CRecidcondpgto.Value := fVenda.qReceidcondpgto.Value;
                dm.CRecVALOR.Value      := vTroco * (-1);
                dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
                dm.CRecVENCI.Value      := Date;
                dm.CRecBAIXA.Value      := 'N';
                dm.CRecTIPO.Value       := 'V';
                dm.CRecEX.Value         := 0;
                dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
                dm.CRecgerado_boleto.Value  := 'N';
                dm.CRecidemp.Value      := nEmp; // 1;
                idcrec2 := dm.CRecID.AsInteger;
                dm.CRec.Post;
                sleep(200);

                reciboCredito(idcrec2);
                sleep(200);
                dm.CRec.Close;

               end
               else
               begin
                 dm.Cx.Locate('id', codbaixa, []);
                 dm.Cx.Edit;
                 DM.CxValor.Value        := DM.CxValor.Value - DM.CxTroco.Value;
                 DM.CxValorFpgto.Value   := DM.CxValor.Value;
                 DM.CxTotal.Value        := DM.CxValor.Value;
                 DM.Cx.Post;
                 DM.Cx.ApplyUpdates;
               end;
       end;

  end; // fim baixa

  if dm.qParametroimpReciboFinan.Text = 'S' then
  begin
    if cod2 > 0 then
       reciboPagRec(nEmp,'R', inttostr(codbaixa) +','+inttostr(cod2) )
    else
       reciboPagRec(nEmp,'R', inttostr(codbaixa));
  end;

  //vValorTotal := 0; thais 25/03
  Conf_Bx_REC := 'S';
  close;

end;

procedure TfBaixaRec.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (key = #13) and not (ActiveControl is TDBGrid) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfBaixaRec.gdForKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Key := #0;
  if not DM.qPesq.IsEmpty then
   begin
    edCod.Text:= DM.qPesq.FIELDBYNAME('ID').Text;
    //edCodExit(Application);
    gdfor.Visible := False;
   end;
 end;


end;

procedure TfBaixaRec.FormActivate(Sender: TObject);
begin
 // temporario

 if inserido = 'S' then
    Exit;

 Cxx.Open;
 Cxx.Append;
 Cxx.Edit;

 Dbedit2.Text := formatfloat('#0.00', ValorPago);

 DM.Cx.Edit;

 DM.CxVALorFPGTO.Value := DM.CxTOTAL.Value; // - CxxValorFPgto.Value;
 DM.CxFPGTO.Value := 'DINHEIRO'; //;DBComboBox1.text;

 //edCodExit(Application);
 inserido := 'S';

end;

procedure TfBaixaRec.sairExecute(Sender: TObject);
begin
  //vValorTotal := 0; thais 25/03
  Conf_Bx_REC := 'N';
  close;
end;

procedure TfBaixaRec.DBEdit7Exit(Sender: TObject);
begin
  dm.Cxtotal.AsFloat      := dm.CxValor.AsFloat + dm.CxJuros.AsFloat - dm.CxDesconto.AsFloat;
  dm.CxValorFpgto.AsFloat := dm.Cxtotal.AsFloat;
  CxxValorFpgto.AsFloat   := 0;
  dbedit2.SetFocus;
// DBComboBox1.SetFocus
end;

procedure TfBaixaRec.DBEdit8Exit(Sender: TObject);
begin
 //   DBComboBox1.SetFocus
end;

procedure TfBaixaRec.DBEdit10Exit(Sender: TObject);
begin
DBEdit7Exit(Application);
end;

procedure TfBaixaRec.DBEdit11Exit(Sender: TObject);
begin
DBEdit8Exit(Application);
end;

procedure TfBaixaRec.DBEdit2Click(Sender: TObject);
begin
  if dm.CxValorFpgto.Value > 1000 then
    dm.CxValorFpgto.DisplayFormat := ''
  else
    dm.CxValorFpgto.DisplayFormat := '###,###,##0.00'
end;

procedure TfBaixaRec.DBEdit2Exit(Sender: TObject);
begin
  if dm.qParametropd_cred_nf_avulsa.Text = 'S' then
  begin
    if dm.CxValorFpgto.Value < 0 then
    begin
     application.MessageBox('Valor inválido','Atenção',48);
     dbedit2.SetFocus;
     exit;
    end;
  end;

  if dm.CxValorFpgto.Value >= dm.CxTOTAL.Value then
  begin
    CxxFpgto.Value := '';
    CxxValorFpgto.Value := 0;
     if dbcombobox2.Visible then
        DBComboBox2.Enabled:=false;
     if dbedit3.Visible then
        dbedit3.Enabled:=false;
  end
  else
  begin
    if dbcombobox2.Visible then
       DBComboBox2.Enabled:=true;

    if dbedit3.Visible then
       dbedit3.Enabled:=true;

    if (dbcombobox2.Visible) and (DBComboBox2.Text = '') then
       DBComboBox2.ItemIndex := 0;
  end;



  dm.CxValorFpgto.DisplayFormat := '###,###,##0.00' ;

   if (dm.CxValorFpgto.Value >= dm.CxTOTAL.Value) and (DBComboBox1.text <> 'CHEQUE') then
    begin
     DM.CxTROCO.Value := (dm.CxTOTAL.Value - dm.CxValorFpgto.Value) * -1 ;
     Xibutton1.SetFocus;
    end
   else
    if (DM.CxTOTAL.AsFloat - DM.CxVALorFPGTO.AsFloat) > 0 then
     begin
      DBComboBox2Change(Application);
      DM.CxTROCO.Value := (dm.CxTOTAL.Value - (dm.CxValorFpgto.Value + CxxValorFpgto.Value)) * -1 ;
      DBComboBox2.SetFocus;
     end;

end;

procedure TfBaixaRec.LancaCheque(idm, idc, idd :integer; vl:real );
begin
      vCH_Lancado := 'N';

      DM.qCheq.Close;
      DM.qCheq.ParamByName('Venda').Value := 0;
      DM.qCheq.ParamByName('Emp').Value   := nEmp;
      DM.qCheq.ParamByName('Cli').Value   := 0;
      DM.qCheq.ParamByName('Tipo').Value  := 'N';
      DM.qCheq.Open;

      Application.CreateForm(TfCheque, fCheque);

      fCheque.qCheq.Close;
      fCheque.qCheq.ParamByName('Venda').Value := 0;
      if origem = 'V' then
        fCheque.qCheq.ParamByName('Cli').Value   := fVenda.TIdCliente.AsInteger
      else
        fCheque.qCheq.ParamByName('Cli').Value   := fCReceber2.TIdCliente.AsInteger;
      fCheque.qCheq.ParamByName('Tipo').Value  := 'N';
      fCheque.qCheq.ParamByName('cx').Value    := idd;
      fCheque.qCheq.open;

      while not fCheque.qCheq.eof do
      begin
        fCheque.vValorTotalCH := fCheque.vValorTotalCH + fCheque.qCheqVALOR.asfloat;
        fCheque.qCheq.next;
      end;

      DM.qCheq.Insert;
      DM.qCheqEMISSAO.AsDateTime := Date;
      DM.qCheqVENCI.AsDateTime   := Date;
      DM.qCheqDTOPERACAO.asDateTime := Date;
      DM.qCheqCODVENDA.Value     := nCodVenda;
      DM.qCheqCODFINAN.Value     := idm;
      DM.qCheqVALOR.Value        := vl;
      DM.qCheqidemp.Value        := nEmp;
      DM.qCheqDEVOLVIDO.Value    := 0;
      DM.qCheqTIPO.Value         := 'N';
      DM.qCheqIDMOVCAIXA.value   := idd;
      DM.qCheqIDCONTA.value      := idc;
      DM.qCheqST.Value           := 0;
      dm.qCheqIDUSU.Value        := DM.qUserID.Value;
      if origem = 'V' then
        dm.qCheqIDCLIENTE.Value    := fVenda.TIdCliente.AsInteger
      else
        dm.qCheqIDCLIENTE.Value    := fCReceber2.TIdCliente.AsInteger;

      if origem = 'V' then
      begin
        fCheque.cMovimentoCH  := fVenda.Tid.AsInteger;
        fCheque.cClienteCH    := fVenda.TIdCliente.AsInteger;
      end
      else
      begin
        fCheque.cMovimentoCH  := fCReceber2.TidVenda.AsInteger;
        fCheque.cClienteCH    := fCReceber2.TIdCliente.AsInteger;
      end;
      fCheque.cTipoCH       := 'N';

      if trim(DBComboBox1.Text) = 'CHEQUE' then
       fCheque.cValorVendaCH := DM.CxTotal.AsFloat
      else
       fCheque.cValorVendaCH := DM.CxTotal.AsFloat - dm.CxValorFpgto.value;

      fCheque.ShowModal;

      lRec.Caption := formatfloat('#0.00', fCheque.vValorTotalCH);

      if fCheque.vValorTotalCH > 0 then
       begin
         if trim(DBComboBox1.Text) = 'CHEQUE' then //forma1
          BEGIN
            dm.CxValorFpgto.value := fCheque.vValorTotalCH;
            DM.CxTROCO.Value := (dm.CxTOTAL.Value - dm.CxValorFpgto.Value) * -1 ;
            DBEdit2Exit(Application);

            if fCheque.vValorTotalCH < dm.CxTotal.Value then
             begin
              DBComboBox2.Enabled := true;
              DBComboBox2.SetFocus;
             end
            else
             XiButton1.SetFocus;
          END
         else
          if trim(DBComboBox2.Text) = 'CHEQUE' then //forma1
          BEGIN
            CxxValorFpgto.value := fCheque.vValorTotalCH;
            DBEdit3Exit(Application);

            XiButton1.SetFocus;
          END;


         vCH_Lancado := 'S';
       end;

      fCheque.vValorTotalCH := 0;
      fCheque.Free;

end;

procedure TfBaixaRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // temporario
  Cxx.Cancel;
  Cxx.Close;
 //

Action := caFree;
fBaixaRec := nil;
end;

procedure TfBaixaRec.DBComboBox2Change(Sender: TObject);
begin
 CxxVALorFPGTO.Value := DM.CxTOTAL.Value - DM.CxVALorFPGTO.Value;
 CxxFPGTO.Value    := copy(DBComboBox2.text,1, 20);

 if (DBComboBox2.Text = 'TRANSF.BANCARIA') or (DBComboBox2.Text = 'PIX') {and (dm.qPesq.FieldByName('tipo').Text <> 'B')} then
 BEGIN
    dm.qPesq.close;
    dm.qPesq.SQL.clear;
    dm.qPesq.SQL.add('select tipo from conta where id = ' + inttoStr(cbConta.keyValue));
    dm.qPesq.open;
    if dm.qPesq.Fields[0].asString <> 'B' then
    begin
      edCod.Clear;
      //dm.CxIdConta.Clear;
      CxxIdConta.clear;
      Application.MessageBox('Selecione uma conta bancaria, por favor!', 'Atenção');
      //edCod.Setfocus;
      cbConta2.setFocus;
    end;
 END;

 if trim(dbcombobox2.text) = 'CHEQUE' then
   VisCheque(true);
end;

procedure TfBaixaRec.btnChequeClick(Sender: TObject);
begin
  if  trim(DBComboBox1.Text) = 'CHEQUE'  then //forma1
   LancaCheque(dm.CxidMov.Value, dm.CxIdConta.Value, dm.Cxid.Value, dm.CxValorFpgto.Value )
  else
  if  trim(DBComboBox2.Text) = 'CHEQUE'  then
    LancaCheque(dm.CxidMov.Value, dm.CxIdConta.Value, dm.Cxid.Value, CxxValorFpgto.Value ); //forma2  //CxxidMov.Value, CxxIdConta.Value, Cxxid.Value,


end;

procedure TfBaixaRec.cbContaExit(Sender: TObject);
begin
   if {(trim(edCod.Text) = '')}(trim(cbConta.text) = '') or (dm.CxIdConta.AsInteger = 0)  then
  begin
     Application.messageBox('Por favor, informe uma conta para continuar. ', 'Atenção' );
     //edCod.SetFocus;
     cbConta.SetFocus;
     exit;
  end
end;

procedure TfBaixaRec.CxxNewRecord(DataSet: TDataSet);
begin
  CxxIdConta.asInteger := 1;
end;

procedure TfBaixaRec.DBComboBox1Change(Sender: TObject);
begin
 DM.CxVALorFPGTO.Value := DM.CxTOTAL.Value; // - CxxValorFPgto.Value;
 DM.CxFPGTO.Value := copy(DBComboBox1.text,1, 20);
 if (DBComboBox1.Text = 'TRANSF.BANCARIA') or (DBComboBox1.Text = 'PIX')
  {and (dm.qPesq.FieldByName('tipo').Text <> 'B')} then
 BEGIN
     dm.qPesq.close;
     dm.qPesq.SQL.clear;
     dm.qPesq.SQL.add('select tipo from conta where id = ' + inttoStr(cbConta.keyValue));
     dm.qPesq.open;
     if dm.qPesq.Fields[0].asString <> 'B' then
     begin
        edCod.Clear;
        dm.CxIdConta.Clear;
        Application.MessageBox('Selecione uma conta bancaria, por favor!', 'Atenção');
        //edCod.Setfocus;
        cbConta.setFocus;
     end;
 END;

 if trim(dbcombobox1.text) = 'CHEQUE' then
   VisCheque(true);
end;

procedure TfBaixaRec.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(Key);
end;

procedure TfBaixaRec.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(Key);
end;

procedure TfBaixaRec.edCodExit(Sender: TObject);
begin
if (EdCod.Text <> '') then
 begin
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add(' Select conta.id, conta.titular Nome , tipo, case when tipo = ''B'' then ''Bancaria'' else '''' end destipo  '+
                   ' from conta where conta.id = '+EdCod.Text);
  DM.qPesq.Open;
  if not DM.qPesq.IsEmpty then
   begin
    EdNome.Text := DM.qPesq.FieldByName('Nome').AsString;
    gdfor.Visible := false;
    dbcombobox1.SetFocus;
   end
  else
   begin
     edCod.Clear;
     edNome.Clear;
     edNome.SetFocus;
   end;
 end
else
 begin
   edNome.Clear;
   edNome.SetFocus;
 end;

end;

procedure TfBaixaRec.edCodKeyPress(Sender: TObject; var Key: Char);
begin
    somente_numero_sem_virgula( key );
end;

procedure TfBaixaRec.EdNomeChange(Sender: TObject);
begin
 if (edNome.Text <> '') then
   begin
    gdFor.Left := edCod.Left;
    gdFor.Top  := edCod.Top + edCod.Height + 1;
    gdFor.Visible := True;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' Select id, titular nome, tipo, case when tipo = ''B'' then ''Bancaria'' else '''' end destipo  '+
                     ' from conta where titular like '+QuotedStr('%'+edNome.Text+'%'));
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     gdfor.Visible := False;
    end
  else
   gdfor.Visible := False;

end;

procedure TfBaixaRec.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF gdfor.Visible THEN
  gdfor.SetFocus;
end;

procedure TfBaixaRec.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfBaixaRec.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfBaixaRec.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;



procedure TfBaixaRec.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;


procedure TfBaixaRec.DBEdit5Exit(Sender: TObject);
begin
  dm.Cxtotal.AsFloat      := dm.CxValor.AsFloat + dm.CxJuros.AsFloat - dm.CxDesconto.AsFloat;
  dm.CxValorFpgto.AsFloat := dm.Cxtotal.AsFloat;
  CxxValorFpgto.AsFloat   := 0;
  dbedit2.SetFocus;
end;

procedure TfBaixaRec.DBEdit3Exit(Sender: TObject);
begin
 DM.CxTROCO.Value := (dm.CxTOTAL.Value - (dm.CxValorFpgto.Value + CxxValorFpgto.Value)) * -1 ;

end;

procedure TfBaixaRec.FormCreate(Sender: TObject);
begin

   lData.Visible       := true;
   edDt.Visible        := true;
   edDt.Date           := now;  //date;
   edDt.Time           := time; //Date;
   nEmp    := 0;
   Conf_Bx_REC := 'N';
   if dm.qParametrobaixa_sem_troco.text = 'S' then
   begin
      label6.Visible  := false;
      dbedit4.Visible := false;
   end;

   qConta.close;
   qConta.open;

   if dm.qParametrofolha_separacao_mod_3.Text = 'S' then    //brubalar
   begin
    cbConta.KeyValue := null;
    cbConta2.KeyValue := null;
   end
   else
   begin
    cbConta.keyValue := qContaid.asInteger;
    cbConta2.keyValue := qContaid.asInteger;
   end;


end;

procedure TfBaixaRec.reciboCredito(cod:integer);
begin

  Application.CreateForm(TfRelFinanceiro, fRelFinanceiro);

  fRelFinanceiro.qRecibo.close;
  fRelFinanceiro.qRecibo.ParamByName('id').Value := cod;
  fRelFinanceiro.qRecibo.Open;

  vEnv_EmailDest := fRelFinanceiro.qReciboemail.Text;
  vEnv_Report    := fRelFinanceiro.rpRecibo;
  fRelFinanceiro.rpRecibo.PreviewModal;

  fRelFinanceiro.Free;

end;


end.

