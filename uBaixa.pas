unit uBaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, jpeg, ExtCtrls, ActnList, Buttons, DB,
  XiButton, Grids, DBGrids,   ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, System.Actions;

type
  TfBaixa = class(TForm)
    ActionList1: TActionList;
    Baixa: TAction;
    sair: TAction;
    XiButton1: TXiButton;
    XiButton4: TXiButton;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    DBEdit3: TDBEdit;
    acDesconto: TAction;
    acCredito: TAction;
    Image1: TImage;
    acedcodconta: TAction;
    Cxx: TZQuery;
    dCxx: TDataSource;
    CxxValorFpgto: TFloatField;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    lData: TLabel;
    edDt: TDateTimePicker;
    CxxFpgto: TWideStringField;
    Label1: TLabel;
    gdFor: TDBGrid;
    EdNome: TEdit;
    edCod: TDBEdit;
    GroupBox1: TGroupBox;
    btnEmitido: TBitBtn;
    btnRecebidos: TBitBtn;
    pCheque: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    lEmit: TLabel;
    lRec: TLabel;
    cbConta: TDBLookupComboBox;
    qConta: TZQuery;
    qContaid: TIntegerField;
    qContanome: TWideStringField;
    dConta: TDataSource;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    DBEdit5: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit6: TDBEdit;
    Label13: TLabel;
    CxxidMov: TIntegerField;
    procedure BaixaExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure EdCodExit(Sender: TObject);
    procedure EdCodKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomeChange(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure btnEmitidoClick(Sender: TObject);
    procedure btnRecebidosClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBComboBox2Change(Sender: TObject);
    procedure cbContaExit(Sender: TObject);
  private
    inserido : String;
    totCheques : real;
    procedure LCheque(tp:string);
    function buscarchLancado(cod: integer): real;

    { Private declarations }
  public
    { Public declarations }
    ValorPago : Real;
    TipoMov, GeradoCredito, vDocsBaixa : String;
    CodBaixa : Integer;
    reg : integer;
  end;

var
  fBaixa: TfBaixa;
  cCodCli, cCodCompra, vIdEm, vIdcC : Integer;
  BxParcialPg, origem, conf_bx, vTpFin:string;


implementation

uses uDM, uFuncao, uSenhaCad, uCheque, uChequeEmitido, uSelCheque, uCPagarN2;

{$R *.dfm}


//
procedure TfBaixa.BaixaExecute(Sender: TObject);
var
  valorB, vCred:real;
  cod2, nEmp:integer;
  idcodpag:String;
  vSomaFormas : Real;
begin
  if nEmp = 0 then
     nEmp := 1;

  cod2 := 0;


  if cbConta.KeyValue = null then
   begin
     application.MessageBox('Por favor, informe uma conta para continuar.', 'Atenção' );
     cbConta.SetFocus;
     exit;
   end;

   vSomaFormas := dm.CxValorFpgto.asFloat + CxxVALorFPGTO.asFloat;
  if dm.CxTotal.asFloat > ({dm.CxValorFpgto.asFloat + CxxVALorFPGTO.asFloat}vSomaFormas)  then
   begin
     ShowMessage('Valor total diferente do valor dos pagamentos, por favor verifique. '+#13+
                 'Total da baixa: ' + FormatFloat('#0.00',dm.CxTotal.asFloat)+#13 +
                 'Forma 1: ' + FormatFloat('#0.00',dm.CxValorFpgto.asFloat) + #13+
                 'Forma 2: '+ FormatFloat('#0.00',cxxvalorfpgto.asFloat) );
     exit;
   end;


   if (trim(dbcombobox1.text) = 'CHEQUE') or ((trim(dbcombobox1.text) = 'CHEQUE')) then
   begin
      if totCheques = 0 then
      begin
         application.MessageBox('Por favor, informe os cheques para continuar.','Atenção',48);
         dbedit2.SetFocus;
         exit;
      end;
   end;


  // if (ActiveControl = DBComboBox1) or (ActiveControl = DBComboBox2) then
  // SelectNext(ActiveControl, True, True);

  {if (lkTp.Visible) and (lkTp.KeyValue = 0)  then
   begin
    application.MessageBox('Tipo de Cartão Não Preenchido','Atenção',48);
    lkTp.SetFocus;
    exit;
   end;
  }

 Application.CreateForm(TfSenhaCad, fSenhaCad);
 fSenhaCad.ShowModal;
 fSenhaCad.Free;
 if RespCad = 'N' then
    Exit;

  IF (Origem = 'B') or( Origem = 'C') then
    GravaLogFinan(IdUsuario, DM.CxId.Value, cCodCli, 'Contas a Pagar', 'BAIXA', 'baixa contas a pagar', vtpFin)
  else
    GravaLogFinan(IdUsuario, DM.CxId.Value, cCodCli, 'Comissão a Pagar', 'BAIXA', 'Baixa comissão a pagar', 'V');


  valorB := DM.CxValorFpgto.Value - strtofloat(lemit.caption); //cheques emitidos
  IF (Origem = 'B') or( Origem = 'C') then //PAGAMENTOS fornecedores pelo compras
  BEGIN
    if valorB > 0 then // (dm.CxValorFPgto.Value > 0) then
    begin
           DM.CxValor.Value        := valorB *(-1);
           DM.CxValorFpgto.Value   := valorB *(-1);
           DM.CxTotal.Value        := DM.CxValor.Value;
           DM.CxSegundaForma.Value := 'N';
           dM.CxF_Dinheiro.Value   := valorB ;
           DM.CxFpgto.Value        := DM.CxFpgto.Value ;
           DM.CxData.Value         := edDt.Date;

           case DBComboBox1.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := valorB ;
              1 : dM.CxF_Cheque.Value   := valorB ;
              2 : dM.CxF_Debito.Value   := valorB ;
              3 : dM.CxF_Credito.Value  := valorB ;
           end;

           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           CodBaixa := DM.CxId.Value;
           vCred :=0;                  //11/8/23 todas formas
           if (DM.CxTroco.asfloat > 0) {and (strtofloat(lRec.caption) > 0)} then
             if Application.MessageBox('Deseja gerar crédito do troco para esse fornecedor?','Confirmação',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idyes then
             begin
               vCred := DM.CxTroco.asfloat;
              ExecSQL(' insert into cpagar (id, emissao, idfornecedor, documento, Venci, ' +
              ' valor, baixa, IdUsuario, obs, tipo, total, idcusto,idemp,ex) ' +
              ' values ((select max(id) + 1 from cpagar ), cast(GETDATE() as date), '+ inttostr(cCodCli) +
              ', ''CRED_TROCO'', cast(GETDATE()as date),'+PontoVirgula(floattostr(DM.CxTroco.asfloat * -1))+
              ', ''N'', '+ inttostr(IdUsuario)+' ,  ' + QuotedStr( 'Crédito baixa documento(s)'+ vDocsBaixa )+ ', ''D'', ' +
              PontoVirgula(floattostr(DM.CxTroco.asfloat * -1))+',' + inttostr(vIdcC)+',' + inttostr(vIdEm)+ ',0 )' )
             end;
    end
    else
    if strtofloat(lemit.caption) > 0 then //cheques emitidos salvar movcaixa pra histórico
    begin
           DM.CxLancamentoCheque.AsString := 'S';
           DM.CxValor.Value        := valorB *(-1);
           DM.CxValorFpgto.Value   := valorB *(-1);
           DM.CxTotal.Value        := DM.CxValor.Value;
           DM.CxSegundaForma.Value := 'N';
           dM.CxF_Dinheiro.Value   := valorB ;
           DM.CxFpgto.Value        := DM.CxFpgto.Value ;
           DM.CxData.Value         := edDt.Date;

           case DBComboBox1.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := valorB ;
              1 : dM.CxF_Cheque.Value   := valorB ;
              2 : dM.CxF_Debito.Value   := valorB ;
              3 : dM.CxF_Credito.Value  := valorB ;
           end;

           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           CodBaixa := DM.CxId.Value;
           valorB := strtofloat(lemit.caption);
    end;
    sleep(50);
    if CxxValorFPgto.Value > 0 then
    begin
           DM.Cx.Open;
           DM.Cx.Insert;
           DM.CxData.Value := now; // Date;
           DM.CxTpMov.Value := 'Z';
           DM.CxIdUsuario.Value := dm.qUserId.Value;
           if CxxidMov.AsInteger > 0 then
            DM.CxIdMov.Value := CxxidMov.AsInteger
           else
            DM.CxidMov.AsInteger := dm.qCPagarID.Value;
           DM.CxValor.Value := CxxValorFPgto.Value * (-1);
           DM.CxFpgto.Value := CxxFPgto.text;
           DM.CxValorFpgto.Value := CxxValorFPgto.Value * (-1);
           DM.CxJuros.Value := 0;
           DM.CxDesconto.Value := 0;
           DM.CxTotal.Value := DM.CxValor.Value;
           DM.CxSegundaForma.Value := 'S';
           DM.CxDescri.Value := 'PAGAMENTO DE FORNECEDOR';

           case DBComboBox2.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := CxxValorFPgto.Value * (-1);
              1 : dM.CxF_Cheque.Value   := CxxValorFPgto.Value * (-1);
              2 : dM.CxF_Debito.Value   := CxxValorFPgto.Value * (-1);
              3 : dM.CxF_Credito.Value  := CxxValorFPgto.Value * (-1);
           end;
           nEmp := DM.Cxidemp.asinteger;
           DM.Cx.Post;
           Cod2 := DM.CxId.Value;
           DM.Cx.ApplyUpdates;
    end;
    sleep(50);
    //atualiza tabela Pagamentos
    if CxxValorFPgto.asfloat > 0 then
        valorB := valorB + CxxValorFPgto.asfloat;

    if fCPagarN2 <> nil then
    begin
         fCPagarN2.T.First;
         while fCPagarN2.T.Eof = false do
         begin
            if (trim(fCPagarN2.Tx.Text) = 'T') and (valorB > 0) then
            begin
               fCPagarN2.T.Edit;
               fCPagarN2.TDtPagto.Value := edDt.Date;//now; //Date;
               if (BxParcialPg = 'S')  then
               begin
                  if fCPagarN2.Ttotal.AsFloat = valorB then
                     fCPagarN2.TValPago.Value := valorB
                  else
                  if fCPagarN2.Ttotal.AsFloat <  valorB then
                  begin
                     fCPagarN2.TValPago.Value := fCPagarN2.Ttotal.AsFloat;
                     valorB := valorB - fCPagarN2.Ttotal.AsFloat;
                  end
                  else
                  if fCPagarN2.Ttotal.AsFloat >  valorB then
                     fCPagarN2.TValPago.Value := valorB;
               end
               else
                  fCPagarN2.TValPago.Value := fCPagarN2.Ttotal.AsFloat;
               fCPagarN2.TBaixa.Value   := 'S';
               if idcodpag = '' then
                  idcodpag := fCPagarN2.Tid.Text
               else
                  idcodpag := idcodpag + ','  + fCPagarN2.Tid.Text;
               fCPagarN2.T.Post;
            end;
            fCPagarN2.T.Next;
         end;
    end
    else
    begin
        //alterado de dm.qCPagar para dm.qCPagarCompra
        dm.qCPagarCompra.First;
        while dm.qCPagarCompra.Eof = false do
        begin
            if dm.qCPagarComprax.Value = 'T' then
            begin
              reg := dm.qCPagarCompra.RecNo;
              dm.qCPagarCompra.Edit;
              dm.qCPagarCompraIdBaixa.Value := codbaixa;
              dm.qCPagarCompraBaixa.Value    := 'S';
              dm.qCPagarCompraDTPagto.Value   := edDt.Date;
              dm.qCPagarCompraVAlPago.Value   := dm.qCPagarTotal.Value;
              dm.qCPagarCompra.post;
              if idcodpag = '' then
                 idcodpag := dm.qCPagarCompraid.text//fCPagarN2.Tid.Text
              else
                 idcodpag := idcodpag + ','  + dm.qCPagarCompraid.text;//fCPagarN2.Tid.Text;
              dm.qCPagarCompra.RecNo := reg;
            end;
            dm.qCPagarCompra.Next;
        end;
        dm.qCPagarCompra.ApplyUpdates;
    end;

  end // fim baixa pelo copmpras
  else
  IF (Origem = 'Z') then //PAGAMENTOS  comissao
   BEGIN
     if dm.CxValorFPgto.Value > 0 then
          begin
           DM.CxValor.Value        := DM.CxValorFpgto.Value *(-1);
           DM.CxValorFpgto.Value   := DM.CxValorFpgto.Value *(-1);
           DM.CxTotal.Value        := DM.CxValor.Value;
           DM.CxSegundaForma.Value := 'N';
           dM.CxF_Dinheiro.Value   := DM.CxValorFpgto.Value ;
           DM.CxFpgto.Value        := DM.CxFpgto.Value;
           DM.CxData.Value         := edDt.Date;
           nEmp                    := DM.Cxidemp.asinteger;
           DM.Cx.Post;
           DM.Cx.ApplyUpdates;
           CodBaixa := DM.CxId.Value;
          end;
     sleep(50);
     if CxxValorFPgto.Value > 0 then
          begin
           DM.Cx.Open;
           DM.Cx.Insert;
           DM.CxData.Value := now; // Date;
           DM.CxTpMov.Value := 'Z';
           DM.CxIdUsuario.Value := dm.qUserId.Value;
           DM.CxIdMov.Value := dm.qComiPagarID.Value;
           DM.CxValor.Value := CxxValorFPgto.Value * (-1);
           DM.CxFpgto.Value := CxxFPgto.text;
           DM.CxValorFpgto.Value := CxxValorFPgto.Value * (-1);
           DM.CxJuros.Value := 0;
           DM.CxDesconto.Value := 0;
           DM.CxTotal.Value := DM.CxValor.Value;
           DM.CxSegundaForma.Value := 'S';
           DM.CxDescri.Value := 'PAGAMENTO DE VENDEDOR';
           case DBComboBox2.ItemIndex of
              0 : dM.CxF_Dinheiro.Value := CxxValorFPgto.Value * (-1);
              1 : dM.CxF_Cheque.Value   := CxxValorFPgto.Value * (-1);
              2 : dM.CxF_Debito.Value   := CxxValorFPgto.Value * (-1);
              3 : dM.CxF_Credito.Value  := CxxValorFPgto.Value * (-1);
           end;
           DM.Cx.Post;
           Cod2 := DM.CxId.Value;
           DM.Cx.ApplyUpdates;
          end;
      sleep(50);

      //atualiza tabela Pagamentos
      dm.qComiPagar.First;
      while dm.qComiPagar.Eof = false do
       begin
         if dm.qComiPagarx.Value = 'T' then
            begin
              reg := dm.qComiPagar.RecNo;
              dm.qComiPagar.Edit;
              dm.qComiPagarIdBaixa.Value := codbaixa;
              dm.qComiPagarBaixa.Value    := 'S';
              dm.qComiPagarDTPagto.Value   := edDt.Date;
              dm.qComiPagarVAlPago.Value   := dm.qComiPagarTotal.Value;
              dm.qComiPagar.post;
              dm.qComiPagar.RecNo := reg;
            end;
         dm.qComiPagar.Next;
       end;
      dm.qComiPagar.ApplyUpdates;

  end; // fim baixa pelo copmpras


  //salva idbaixa no cpagar
  if idCodPag <> '' then
     Execsql('update cpagar set idbaixa = ' + inttostr(codbaixa) +', idbaixa2 = ' + inttostr(cod2) +
             ' where id in (' + idcodpag + ')' );

  sleep(100);
  if dm.qParametroimpReciboFinan.Text = 'S' then
  begin
     if cod2 > 0 then
        reciboPagRec(nEmp,'P', inttostr(codbaixa) +','+inttostr(cod2), vCred )
    else
        reciboPagRec(nEmp,'P', inttostr(codbaixa), vCred  );
  end;
  sleep(100);
  conf_bx := 'S';
  close;

end;

procedure TfBaixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) and not (ActiveControl is TDBGrid) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfBaixa.gdForKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Key := #0;
  if not DM.qPesq.IsEmpty then
   begin
    edCod.Text:= DM.qPesq.FIELDBYNAME('ID').Text;
    edCodExit(Application);
    gdfor.Visible := False;
   end;
 end;

end;

procedure TfBaixa.FormActivate(Sender: TObject);
begin
  if inserido = 'S' then
     Exit;

  Cxx.Open;
  Cxx.Append;
  CxxidMov.AsInteger := DM.CxidMov.Value;
  Cxx.Edit;

  Dbedit2.Text := formatfloat('#0.00', ValorPago);
  DM.Cx.Edit;
  DM.CxVALorFPGTO.Value := DM.CxTOTAL.Value; // - CxxValorFPgto.Value;
  DM.CxFPGTO.Value := 'DINHEIRO'; //;DBComboBox1.text;

  {edDt.Date := now; //Date;
  edDt.Time := time; //Date; }

  //edCodExit(Application);
  inserido := 'S';

end;

procedure TfBaixa.sairExecute(Sender: TObject);
begin
  conf_bx := 'N';
  close;
end;

procedure TfBaixa.DBEdit2Exit(Sender: TObject);
begin

  if dm.CxValorFpgto.Value < 0 then
  begin
     application.MessageBox('Valor inválido','Atenção',48);
     dbedit2.SetFocus;
     exit;
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
    if dbcombobox2.Visible then
       DBComboBox2.ItemIndex := 0;
  end;

  if trim(dbcombobox1.text) = 'CHEQUE' then
     btnEmitido.SetFocus;

  if dm.CxValorFpgto.Value >= dm.CxTOTAL.Value then
   begin
    DM.CxTROCO.Value := (dm.CxTOTAL.Value - dm.CxValorFpgto.Value) *-1;
    Xibutton1.SetFocus;
   end
  else
   if (DM.CxTOTAL.AsFloat - DM.CxVALorFPGTO.AsFloat) > 0 then
    begin
     CxxVALorFPGTO.Value := DM.CxTOTAL.Value - DM.CxVALorFPGTO.Value;
     DBComboBox2Change(Application);

     DM.CxTROCO.Value := (dm.CxTOTAL.Value - (dm.CxValorFpgto.Value + CxxValorFpgto.Value))*-1;

     DBComboBox2.SetFocus;
    end;




end;

procedure TfBaixa.LCheque(tp:string);
var
  codbx :integer;
begin

     if tp = 'E' then
     begin

        DM.qSelPesq.Close;
        DM.qSelPesq.SQL.Clear;
        DM.qSelPesq.SQL.Add('Select * from conta where id = '+DM.CxIDCONTA.text);
        DM.qSelPesq.Open;

        cAgenciaE :=  DM.qSelPesq.fieldbyname('ag').Text;
        cCCE      :=  DM.qSelPesq.fieldbyname('cc').Text;
        cBCE      :=  DM.qSelPesq.fieldbyname('bco').Text;
        cIdCaixaE :=  DM.CxIDCONTA.asinteger;
        codbx     :=  DM.CxID.asInteger;

        Application.CreateForm(TfChequeEmitido, fChequeEmitido);

        telaBaixa := 'S';
        chTotal  := dm.CxTOTAL.Value - totCheques; // cValor;
        nCheque  := 0;
        fChequeEmitido.T.Close;
        fChequeEmitido.T.Open;

        fChequeEmitido.T.Insert;
        fChequeEmitido.TEMISSAO.asdateTime := Date;
        fChequeEmitido.TVENCI.asdateTime   := Date;
        fChequeEmitido.TFORNECEDOR.Value := 0;
        fChequeEmitido.TIDTHR030.Value   := 0;
        fChequeEmitido.TVALOR.Value      := chTotal;
        fChequeEmitido.TCODEMP.Value     := DM.qUserIDEMP.Value;
        fChequeEmitido.TDEVOLVIDO.Value  := 0;
        fChequeEmitido.TIDCONTA.text     := inttoStr(cbConta.keyValue);//EdCod.Text;
        fChequeEmitido.TST.Value         := 0;
        fChequeEmitido.TAGENCIA.Value    := cAgenciaE;
        fChequeEmitido.TCONTA.Value      := cCCE;
        fChequeEmitido.TBANCO.Value      := cBCE;
        fChequeEmitido.TFORNECEDOR.Value := cCodcli;
        fChequeEmitido.TIDTHR050.Value   := codbx;
        if fChequeEmitido.TIDCONTA.Text <> '' then
          fChequeEmitido.EdNome.Text := DM.qSelPesq.fieldbyname('titular').Text;

        fChequeEmitido.qChequeL.close;
        fChequeEmitido.qChequeL.Params[0].asinteger := codbx;
        fChequeEmitido.qChequeL.open;
        fChequeEmitido.qChequeL.first;
        while not fChequeEmitido.qChequeL.eof do
        begin
          chLancado := chLancado +fChequeEmitido.qChequeLvalor.asfloat;
          fChequeEmitido.qChequeL.next;
        end;

        if chTotal = 0 then
          chTotal :=  dm.CxTOTAL.Value ;

        fChequeEmitido.Width := 960;
        fChequeEmitido.DBGrid1.Visible := true;
        fChequeEmitido.ShowModal;

        if conf_Ch = 'S' then
        begin            //Alterado nilton 01/11/2022 Agora pega a soma do repassado com a soma dos lançados Nilton 01/11/2022
           totCheques := {totCheques}StrtoFloat(lRec.caption) + {chLancado}buscarchLancado(codbx); //chlancado já e a quantidade de cheques que foram lançados
           dm.CxValorFpgto.Value := totCheques;
           DM.CxTROCO.Value := (dm.CxTOTAL.Value - dm.CxValorFpgto.Value) *-1;
           lEmit.Caption := formatfloat('#0.00', buscarchLancado(codbx));
           xibutton1.SetFocus;
        end
        else
        begin
          codbaixa := codbx;
          if codbx > 0 then
             ExecSql('delete from chemitido where idthr050 = ' + inttostr(codbx));
          //add Nilton 01/11/2022 Atualiza valor da baixa em cheque
          totCheques := StrtoFloat(lRec.caption) + buscarchLancado(codbx); //chlancado já e a quantidade de cheques que foram lançados
          dm.CxValorFpgto.Value := totCheques;
          DM.CxTROCO.Value := (dm.CxTOTAL.Value - dm.CxValorFpgto.Value) *-1;
          lEmit.Caption := formatfloat('#0.00', buscarchLancado(codbx));
          //Fim add Nilton
        end;
        fChequeEmitido.Free;

     end
     else
     if tp = 'R' then
     begin // terceiros
         Application.CreateForm(TfSelCheque, fSelCheque);

         fSelCheque.TipoSelecaoCh := 'R';
         idCheqTerc    := '';
         fSelCheque.vIdCaixa_SelCH := DM.CxId.AsInteger;
         codbx     :=  DM.CxID.asInteger;

         // voltar linhas para status 0 para selecionar de novo 30/03/22 thais
         //deletar repasse
         ExecSQL('DELETE from REPASSE where REPASSE.IDCHEQUE in (select Id from CHEQUES where idthr050 = '+DM.CxId.Text+' and st = 3) ');
         ExecSQL('update CHEQUES set st = 0, idthr050 = NULL where idthr050 = '+DM.CxId.Text+' and st = 3');

         if fCPagarN2 <> nil then
          begin
           fSelCheque.vIdFornecedor_SelCH := fCPagarN2.TIdFornecedor.AsInteger;
           fSelCheque.vNomeFornecedor_SelCH := fCPagarN2.EdNom.Text;
          end;

       //  ValorEmCheque := dm.CxTOTAL.Value - totCheques; // DM.CxValorFpgto.Value;

         fSelCheque.T.Close;
         fSelCheque.T.Open;

         fSelCheque.ShowModal;

         idCheqTerc := copy( fSelCheque.idscheques_SelCH, 1, length(fSelCheque.idscheques_SelCH)-1);

                       //Alterado nilton 01/11/2022 Agora pega a soma dos cheques já lançados
         totCheques := {totCheques}buscarchLancado(codbx) + fSelCheque.ValorSelecaoCheque_SelCH;
         DM.CxValorFpgto.Value := totCheques;
         lRec.Caption := formatfloat('#0.00', fSelCheque.ValorSelecaoCheque_SelCH);

         DM.CxTROCO.Value := (dm.CxTOTAL.Value - dm.CxValorFpgto.Value) *-1;

         fSelCheque.Free;
         xibutton1.SetFocus;
     end;

     DBEdit2Exit(Application);

end;




procedure TfBaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 // temporario
  Cxx.Cancel;
  Cxx.Close;
 //

Action := caFree;
fBaixa:=nil;
end;

procedure TfBaixa.DBComboBox2Change(Sender: TObject);
begin
 CxxVALorFPGTO.Value := DM.CxTOTAL.Value - DM.CxVALorFPGTO.Value;
 CxxFPGTO.Value    := copy(DBComboBox2.text,1, 20);

end;

procedure TfBaixa.btnEmitidoClick(Sender: TObject);
begin
  LCheque('E');
end;

procedure TfBaixa.btnRecebidosClick(Sender: TObject);
begin
  LCheque('R');
end;

procedure TfBaixa.DBComboBox1Change(Sender: TObject);
begin
 DM.CxVALorFPGTO.Value := DM.CxTOTAL.Value; // - CxxValorFPgto.Value;
 DM.CxFPGTO.Value      := copy(DBComboBox1.text,1,20);

 if trim(dbcombobox1.text) = 'CHEQUE' then
    groupbox1.Visible := true
 else
    groupbox1.Visible := false;

 pCheque.Visible := groupbox1.Visible;
end;

procedure TfBaixa.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(Key);
end;

procedure TfBaixa.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(Key);
end;

procedure TfBaixa.DBEdit7Exit(Sender: TObject);
begin
  dm.Cxtotal.AsFloat      := dm.CxValor.AsFloat + dm.CxJuros.AsFloat - dm.CxDesconto.AsFloat;
  dm.CxValorFpgto.AsFloat := dm.Cxtotal.AsFloat;
  CxxValorFpgto.AsFloat   := 0;
  dbedit2.SetFocus;
end;

procedure TfBaixa.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;



procedure TfBaixa.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;


procedure TfBaixa.DBEdit5Exit(Sender: TObject);
begin
  dm.Cxtotal.AsFloat      := dm.CxValor.AsFloat + dm.CxJuros.AsFloat - dm.CxDesconto.AsFloat;
  dm.CxValorFpgto.AsFloat := dm.Cxtotal.AsFloat;
  CxxValorFpgto.AsFloat   := 0;
  dbedit2.SetFocus;
end;

procedure TfBaixa.DBEdit3Exit(Sender: TObject);
begin
 DM.CxTROCO.Value := (dm.CxTOTAL.Value - (dm.CxValorFpgto.Value + CxxValorFpgto.Value))*-1;
end;

procedure TfBaixa.FormCreate(Sender: TObject);
begin
idcheqTerc := '';

      DBComboBox1.Items.Clear;
      DBComboBox1.Items.Add('DINHEIRO');
      DBComboBox1.Items.Add('CHEQUE');
      DBComboBox1.Items.Add('DEBITO');
      DBComboBox1.Items.Add('CREDITO');
      DBComboBox1.Items.Add('BOLETO');

      DBComboBox2.Items.Clear;
      DBComboBox2.Items.Add('DINHEIRO');
     // DBComboBox2.Items.Add('CHEQUE');
      DBComboBox2.Items.Add('DEBITO');
      DBComboBox2.Items.Add('CREDITO');
      DBComboBox2.Items.Add('BOLETO');


  qConta.close;
  qConta.Open;


  if dm.qParametrofolha_separacao_mod_3.Text = 'S' then    //brubalar
   begin
     Label11.Visible := False;
     Label12.Visible := False;
     DBEdit5.Visible := False;
     DBEdit7.Visible := False;
     cbConta.KeyValue := null;
   end
  else
   cbConta.keyValue := qContaID.asInteger;

  edDt.Date := now; //Date;
  edDt.Time := time; //Date
end;

procedure TfBaixa.EdCodExit(Sender: TObject);
begin
if (EdCod.Text <> '') then
 begin
  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add('Select conta.id, conta.titular Nome from conta where conta.id = '+EdCod.Text);
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

procedure TfBaixa.EdCodKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero_sem_virgula( key );
end;

procedure TfBaixa.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfBaixa.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfBaixa.EdNomeChange(Sender: TObject);
begin
 if (edNome.Text <> '') then
   begin
    gdFor.Left := edCod.Left;
    gdFor.Top  := edCod.Top + edCod.Height + 1;
    gdFor.Visible := True;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, titular nome '+
                        ' from conta where titular like '+QuotedStr('%'+edNome.Text+'%'));
    DM.qPesq.Open;
    if DM.qPesq.IsEmpty then
     gdfor.Visible := False;
    end
  else
   gdfor.Visible := False;

end;

procedure TfBaixa.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF gdfor.Visible THEN
  gdfor.SetFocus;

end;


function TfBaixa.buscarchLancado(cod:integer):real;
begin
  dm.qpesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select sum(valor) val from chemitido where idthr050 = ' + inttostr(cod));
  dm.qPesq.Open;
  Result := dm.qPesq.FieldByName('val').AsFloat;

end;



procedure TfBaixa.cbContaExit(Sender: TObject);
begin
  if cbConta.KeyValue = null then
   begin
     application.MessageBox('Por favor, informe uma conta para continuar.', 'Atenção' );
     cbConta.SetFocus;
     exit;
   end;

end;

end.
