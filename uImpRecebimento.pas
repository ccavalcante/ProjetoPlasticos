unit uImpRecebimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB,  ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TfImpRecebimento = class(TForm)
    rp: TRLReport;
    RLBand1: TRLBand;
    D: TDataSource;
    rpB: TRLReport;
    RLBand5: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLBand6: TRLBand;
    RLLabel4: TRLLabel;
    RLBand7: TRLBand;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLBand8: TRLBand;
    RLDBText17: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    edRecebido2: TRLDBResult;
    RLLabel5: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLPanel1: TRLPanel;
    RLLabel21: TRLLabel;
    lExtenso2: TRLMemo;
    RLPanel2: TRLPanel;
    RLLabel17: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    Q: TZQuery;
    RLSystemInfo23: TRLSystemInfo;
    RLDBText85: TRLDBText;
    QDocumento: TWideStringField;
    QVenci: TDateTimeField;
    QTotal: TFloatField;
    QidBaixa: TIntegerField;
    QDtPagto: TDateTimeField;
    QValPago: TFloatField;
    Qnome: TWideStringField;
    Qemail: TWideStringField;
    RLBand9: TRLBand;
    RLLabel22: TRLLabel;
    Qcodrec: TIntegerField;
    Qidcli: TIntegerField;
    qForma: TZQuery;
    qFormaforma: TWideStringField;
    qFormavalor: TFloatField;
    qCheq: TZQuery;
    qCheqtipo: TWideStringField;
    qCheqbanco: TWideStringField;
    qCheqnumero: TWideStringField;
    qCheqagencia: TWideStringField;
    qCheqconta: TWideStringField;
    qCheqvalor: TFloatField;
    Qrazao: TWideStringField;
    qCheqvenci: TDateTimeField;
    qCheqemitente: TWideStringField;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel18: TRLLabel;
    RLBand3: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText16: TRLDBText;
    RLBand4: TRLBand;
    RLPanel4: TRLPanel;
    RLLabel3: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLPanel5: TRLPanel;
    lForma1: TRLLabel;
    lvalor1: TRLLabel;
    RLPanel6: TRLPanel;
    lForma2: TRLLabel;
    lValor2: TRLLabel;
    RLPanel7: TRLPanel;
    lTotal: TRLLabel;
    edRecebido: TRLDBResult;
    lCredito: TRLLabel;
    RLPanel12: TRLPanel;
    lAssina: TRLLabel;
    RLPanel13: TRLPanel;
    RLPanel8: TRLPanel;
    RLPanel9: TRLPanel;
    RLMemo1: TRLMemo;
    RLPanel10: TRLPanel;
    RLLabel2: TRLLabel;
    RLPanel11: TRLPanel;
    RLMemo2: TRLMemo;
    RLPanel3: TRLPanel;
    RLLabel7: TRLLabel;
    lNome: TRLLabel;
    lExtenso: TRLMemo;
    RLLabel6: TRLLabel;
    RLLabel23: TRLLabel;
    lData: TRLLabel;
    QidBaixa2: TIntegerField;
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLGroup1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vIdBx : String;
  public
    { Public declarations }
  end;

var
  fImpRecebimento: TfImpRecebimento;

implementation

uses uDM, tbExtenso, uFuncao;

{$R *.dfm}

procedure TfImpRecebimento.FormCreate(Sender: TObject);
begin
  vIdBx := '';
end;

procedure TfImpRecebimento.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vIdBx := vIdBx + QidBaixa.Text+',';
  if Qidbaixa2.AsInteger > 0 then
    vIdBx := vIdBx + QidBaixa2.Text+',';
end;

procedure TfImpRecebimento.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  vChq :Real;
  txt:String;
  sql2 : String;
begin
  if vIdBx <> '' then
  begin
    vIdBx := copy(vIdBx, 0, length(vIdBx) - 1);
    //aqui preciso refazer o qForma e o qCheque
    //formas
    sql2 :=
            ' select r.fpgto1 forma, sum(r.valor1) valor from creceber r '+
            ' where r.idbaixa in ('+ vIdBx +') group by r.fpgto1 '+
            ' union all '+
            ' select r.fpgto2 forma, sum(r.valor2) valor from creceber r '+
            ' where r.idbaixa in ('+ vIdBx +') and coalesce(r.valor2,0) > 0 group by r.fpgto2 '+
            ' union all '+
            ' select m.fpgto forma, m.valor * (-1) valor from movcaixa m '+
            ' where m.tpmov = ''Z'' and m.id in ('+ vIdBx +') and m.segundaforma = ''N'' '+
            ' union all '+
            ' select m.fpgto forma, m.valor * (-1) valor from movcaixa m '+
            ' where m.tpmov = ''Z'' and m.id in ('+ vIdBx +')  and m.segundaforma = ''S'' ';

    fimpRecebimento.qForma.close;
    fimpRecebimento.qForma.SQL.Clear;
    fimpRecebimento.qForma.SQL.Add(sql2);
    fimpRecebimento.qForma.Open;

    //cheques
    fimpRecebimento.qCheq.close;
    fImpRecebimento.qCheq.SQL.Clear;
    fImpRecebimento.qCheq.SQL.Add(' select ''Rec'' tipo, c.banco, c.numero, c.agencia, c.conta, c.valor, c.venci, c.emitente '+
                                  ' from cheques c '+
                                  ' where c.idmovcaixa in ('+ vIdBx +')  '+

                                  ' union all '+

                                  ' select ''Emi'' tipo, ch.banco, ch.numero, ch.agencia, ch.conta, ch.valor, ch.venci, ''   '' emitente '+
                                  ' from chemitido ch '+
                                  ' where ch.idthr050 in ('+ vIdBx +')  '+

                                  ' union all '+

                                  ' select ''Pag'' tipo, c.banco, c.numero, c.agencia, c.conta, c.valor, c.venci, c.emitente '+
                                  ' from cheques c '+
                                  ' where c.idthr050 in ('+ vIdBx +')  ');
    fimpRecebimento.qCheq.Open;


    //fim
  end;
  vIdBx := '';


 qforma.First;
 lForma1.caption := 'Forma Pgto:' + trim(qFormaforma.text);
 lvalor1.caption := formatfloat('###,###,##0.00', qFormaValor.AsFloat);
 if qForma.RecordCount > 1 then
 begin
    qForma.Next;
    rlPanel6.Visible := true;
    lForma2.caption := 'Forma Pgto:' + trim(qFormaforma.text);
    lvalor2.caption := formatfloat('###,###,##0.00', qFormaValor.AsFloat);
 end
 else
    rlPanel6.Visible := false;

 if qCheq.RecordCount > 0 then
 begin
    RLPanel8.Visible := true;

    if dm.qParametrorecibo_chq_detal.Text = 'N' then //simples - parametro 306
    begin
      RLMemo1.Lines.Clear;
      RLMemo2.Lines.clear;
      txt := 'NUMERO   BCO AG.   CONTA               VALOR';
      //      88888888 333 33333 5555555555 555,555,555.55
      RLMemo1.Lines.Add(txt);
      //if qCheq.RecNo > 50 then  //6
      if qCheq.RecordCount > 1 then
         RLMemo2.Lines.Add(txt);

      qCheq.First;
      while qCheq.Eof = false do
      begin
        //if qCheq.RecNo in [1..50] then  //[1..6]
        if ((qCheq.RecNo mod 2) <> 0) then   //Impar
           RLMemo1.Lines.Add( completa( qCheqnumero.Text, 8)   + ' ' +
                            completa( qCheqbanco.Text, 3) + ' ' +
                            completa( qCheqagencia.Text, 5) + ' ' +
                            completa( qCheqconta.Text, 10) + ' ' +
                            alignRigth( formatfloat('###,###,##0.00', qCheqvalor.asfloat), 14) )
        else
           RLMemo2.Lines.Add( completa( qCheqnumero.Text, 8)   + ' ' +
                            completa( qCheqbanco.Text, 3) + ' ' +
                            completa( qCheqagencia.Text, 5) + ' ' +
                            completa( qCheqconta.Text, 10) + ' ' +
                            alignRigth( formatfloat('###,###,##0.00', qCheqvalor.asfloat), 14) );
        qCheq.Next;
      end;
    end
    else
    if dm.qParametrorecibo_chq_detal.Text = 'S' then //detalhado - parametro 306
    begin
      RLPanel11.Visible := false;
      RLMemo2.Visible   := false;
      RLPanel9.Width    := RLPanel9.Width + RLPanel11.Width;
      RLMemo1.Lines.Clear;
      txt := 'VENCIMENTO  BANCO  Nº.CHEQUE   AG     CTA         NOME                                      VALOR';
      //      88/88/8888  333    33333333    55555  5555555555  XXXXXXXXXXZZZZZZZZZZXXXXXXXXXXZZZZZZ 555,555.55
      RLMemo1.Lines.Add(txt);

      vChq := 0;
      qCheq.First;
      while qCheq.Eof = false do
      begin
        RLMemo1.Lines.Add(
                           completa( qCheqvenci.Text, 10) + '  ' +
                           completa( qCheqbanco.Text, 3) + '    ' +
                           completa( qCheqnumero.Text, 8)   + '    ' +
                           completa( qCheqagencia.Text, 5) + '  ' +
                           completa( qCheqconta.Text, 10) + '  ' +
                           completa( qCheqemitente.Text, 36) + ' ' +
                           alignRigth( formatfloat('###,##0.00', qCheqvalor.asfloat), 10) );
        vChq := vChq + qCheqvalor.asfloat;
        qCheq.Next;
      end;
      RLMemo1.Lines.Add( completa( '', 74) + '-----------------------'  );
      RLMemo1.Lines.Add( completa( '', 74) + 'Total R$ '+ AlignRigth( formatfloat('###,###,##0.00', vChq ), 14) );
      RLMemo1.Lines.Add( '' );
    end;
 end
 else
   RLPanel8.Visible := false;

 lExtenso.Lines.Clear;
 lExtenso.Lines.Add(UpperCase(ValorPorExtenso(edRecebido.Value)));
end;

procedure TfImpRecebimento.RLBand8BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin


 lExtenso2.Lines.Clear;
 lExtenso2.Lines.Add(UpperCase(ValorPorExtenso(edRecebido2.Value)));

end;

procedure TfImpRecebimento.RLGroup1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  rp.NewPage;
end;

end.
