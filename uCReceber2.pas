unit uCReceber2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, jpeg, ExtCtrls, ActnList,
  DBCtrls, DB,   XiButton, CheckDBGrid,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate, System.Actions, math;

type
  TfCReceber2 = class(TForm)
    Image1: TImage;
    ActionList1: TActionList;
    Novo: TAction;
    Baixa: TAction;
    sair: TAction;
    EdTotal: TEdit;
    EdValTot: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    XiButton3: TXiButton;
    XiButton4: TXiButton;
    DBMemo1: TDBMemo;
    Label4: TLabel;
    Label1: TLabel;
    EdCod: TEdit;
    EdNom: TEdit;
    ckTodas: TCheckBox;
    acParcial: TAction;
    btnBxParcial: TXiButton;
    Shape1: TShape;
    Label5: TLabel;
    Label6: TLabel;
    Shape2: TShape;
    DBGrid1: TCheckDBGrid;
    XiButton7: TXiButton;
    acReneg: TAction;
    acRecebidas: TAction;
    XiButton8: TXiButton;
    acJuntar: TAction;
    edVencidas: TEdit;
    Label7: TLabel;
    qCli: TZQuery;
    T: TZQuery;
    upT: TZUpdateSQL;
    D: TDataSource;
    acExcluir: TAction;
    XiButton2: TXiButton;
    acExtrato: TAction;
    XiButton5: TXiButton;
    acEditar: TAction;
    XiButton9: TXiButton;
    TId: TIntegerField;
    TEmissao: TDateTimeField;
    TIdCliente: TIntegerField;
    TVenci: TDateTimeField;
    TValor: TFloatField;
    TBaixa: TWideStringField;
    TidBaixa: TIntegerField;
    TDtPagto: TDateTimeField;
    TValPago: TFloatField;
    TidVenda: TIntegerField;
    TIdUsuario: TIntegerField;
    TEx: TIntegerField;
    Tx: TWideStringField;
    TNOME: TWideStringField;
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
    TJuros: TFloatField;
    TDesconto: TFloatField;
    TTotal: TFloatField;
    TFpgto1: TWideStringField;
    TValor1: TFloatField;
    TFpgto2: TWideStringField;
    TValor2: TFloatField;
    Tidcondpgto: TIntegerField;
    Tobs: TWideMemoField;
    XiButton1: TXiButton;
    Tidnf: TIntegerField;
    TTipo: TWideStringField;
    Tdoc_bx_parcial: TWideStringField;
    XiButton6: TXiButton;
    acVenda: TAction;
    Tgerado_boleto: TWideStringField;
    Tnf: TIntegerField;
    Tidemp: TIntegerField;
    Tfantasia: TWideStringField;
    Label8: TLabel;
    cbEmp: TComboBox;
    Tsincronizado: TWideStringField;
    XiButton10: TXiButton;
    acBoleto: TAction;
    Tbenviando: TWideStringField;
    Tbimpresso: TWideStringField;
    TidVendaOriginal: TIntegerField;
    TDocumento: TWideStringField;
    Tusuario_baixa: TIntegerField;
    TidBaixa2: TIntegerField;
    TNomeBanco: TWideStringField;
    Temail_vencidas: TWideStringField;
    Tidretorno: TIntegerField;
    Tnn_sicred: TWideStringField;
    Tbconta: TIntegerField;
    TgeradoBol: TWideStringField;
    TnParc: TIntegerField;
    Tprotesto: TWideStringField;
    acProtesto: TAction;
    XiButton11: TXiButton;
    Label9: TLabel;
    Shape3: TShape;
    SaveDialog1: TSaveDialog;
    cbFormas: TComboBox;
    Label10: TLabel;
    procedure NovoExecute(Sender: TObject);
    procedure BaixaExecute(Sender: TObject);
    procedure sairExecute(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ckTodasClick(Sender: TObject);
    procedure acParcialExecute(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure acRenegExecute(Sender: TObject);
    procedure acRecebidasExecute(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure acExtratoExecute(Sender: TObject);
    procedure TAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acVendaExecute(Sender: TObject);
    procedure TJurosValidate(Sender: TField);
    procedure TDescontoValidate(Sender: TField);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure acBoletoExecute(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure acProtestoExecute(Sender: TObject);
    procedure cbFormasClick(Sender: TObject);
    procedure TAfterOpen(DataSet: TDataSet);
    procedure TValorValidate(Sender: TField);
  private
    procedure BaixaNegativa;
    procedure AtivaT;
    { Private declarations }
  public
    { Public declarations }
    TotalBaixa, vValor, vJuros : Real;

    MenorVenci : TDate;
    Procedure Seleciona;
    Procedure Total;
  end;

var
  fCReceber2: TfCReceber2;
  TotCli, TotalBaixaParcial : real;
  NovoCRec : Integer;
  nDocBx   : String;


implementation

uses uDM, uBaixaRec, uFuncao, uRenegociacao, uBxParcial, tbExtenso, StrUtils,
     uCReceber, uCRRenegociacao,  uNovoCReceber2,
     uSenhaCad, uCRecebidas,  uImpExtrato,
  uEditarCRec, uValoresReceb, uMenu, uGridVenda;

{$R *.dfm}

procedure TfCReceber2.NovoExecute(Sender: TObject);
begin
if EdCod.Text = '' then
 begin
  Application.MessageBox('Cliente não preenchido. Por favor, verifique!','Atenção', MB_ICONINFORMATION);
  EdCod.SetFocus;
 end
else
 begin
   Application.CreateForm(TfNovoCReceber2, fNovoCReceber2);
   IdCliNovo := StrToInt(EdCod.Text);

   fNovoCReceber2.T.Close;
   fNovoCReceber2.T.ParamByName('Cli').Value := IdCliNovo;
   fNovoCReceber2.T.ParamByName('cod').Value := 9999999;
   fNovoCReceber2.T.Open;

   fNovoCReceber2.ShowModal;
   fNovoCReceber2.Free;

    T.Close;
    T.Open;

   TotalBaixa := 0;
   EdTotal.Clear;
  end;
end;

procedure TfCReceber2.BaixaNegativa;
var
  gerado, idseq : String;
begin
   gerado := 'N';
   T.First;
   while T.Eof = false do
   begin
     if TX.Text = 'T' then
     begin
        if (TTotal.AsFloat >= 0) or
           ( (TTotal.AsFloat < 0) and ((TTotal.AsFloat*(-1)) <= (TotalBaixa*(-1)) ) ) then
        begin
           T.Edit;
           TBaixa.Value     := 'S';
           TUsuario_baixa.Value := DM.qUserId.Value;
           TDtPagto.Value   := date;
           TValPago.AsFloat := TTotal.AsFloat;
           TValor1.AsFloat  := TTotal.AsFloat;
           T.Post;
        end
        else
        if (TTotal.AsFloat < 0) and ((TTotal.AsFloat*(-1)) > (TotalBaixa*(-1)) ) then
        begin
           T.Edit;
           TBaixa.Value     := 'S';
           TUsuario_baixa.Value := DM.qUserId.Value;
           TDtPagto.Value   := date;
           TValPago.AsFloat := TTotal.AsFloat;
           TValor1.AsFloat  := TTotal.AsFloat;
           T.Post;
              // gera novo
           if (gerado = 'N') and (TotalBaixa <> 0) then
           begin
              dm.CRec.Open;
              dm.CRec.Insert;
              dm.CRecDOCUMENTO.Value  := 'CR_'+copy(fCReceber2.TDocumento.Text,4,10);
              dm.CRecnParc.AsInteger := 1;
              dm.CRecIdVenda.Value    := 0;
              dm.CRecIdCLIENTE.Value  := fCReceber2.TIdCliente.Value;
              dm.CRecEMISSAO.Value    := Date;
              dm.CRecidcondpgto.Value := fCReceber2.Tidcondpgto.Value;
              dm.CRecVALOR.Value      := TotalBaixa;
              dm.CRecTOTAL.Value      := TotalBaixa;
              dm.CRecVENCI.Value      := Date;
              dm.CRecBAIXA.Value      := 'N';
              dm.CRecTIPO.Value       := 'V';
              dm.CRecEX.Value         := 0;
              dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
              dm.CRecgerado_boleto.Value  := 'N';
              if dm.qParametrogerar_cred_emp_origem.Text = 'S' then //brubalar
                  dm.CRecidemp.Value      := fCReceber2.Tidemp.AsInteger
              else
                  dm.CRecidemp.Value      := 1;
              dm.CRec.Post;
              idseq := dm.CRecId.Text;
              dm.CRec.Close;
              gerado := 'S';
           end;
        end;

     end;
     T.Next;

   end;

   if gerado = 'S' then
   begin
      Application.MessageBox('Baixado e gerado crédito da diferença com sucesso!','Atenção');
      reciboCreditoTotal(idSeq);
   end
   else
      Application.MessageBox('Baixado crédito com sucesso!','Atenção');

   {T.Close;
   T.ParamByName('cli').value := strtoint(edCod.text);
   T.ParamByName('emp').value := cbEmp.ItemIndex;
   T.Open;  }
   AtivaT;

   BxParcialREC      := 'N';
   TotalBaixa        := 0;
   TotalBaixaParcial := 0;
   EdTotal.Clear;

   TOTAL;
end;

procedure TfCReceber2.BaixaExecute(Sender: TObject);
var texto, ValorExt, vExt, temBx : String;
    X : TextFile;
    Soma, TotalEmAberto, sP, sN : real;
    Datavenc: Tdate;
    empi : integer;
begin
 empi := 0;
 sP := 0;
 sN := 0;
 T.first;
 while T.Eof = false do
 begin
    if TX.Text = 'T' then
    begin
       if empi = 0 then
          empi := Tidemp.AsInteger;

       if empi <> Tidemp.AsInteger then
          empi := -1;

       if TTotal.AsFloat > 0 then
          sP := Sp +  TTotal.AsFloat
       else
       if TTotal.AsFloat < 0 then
          sN := SN +  TTotal.AsFloat;
    end;
    T.Next;
 end;

 if empi = -1 then
 begin
    Application.MessageBox('Por favor, selecione EMPRESAS iguais para fazer a baixa.', 'Atenção');
    Exit;
 end;

 temBx := 'N'; // baixa Normal

 if ((sP > 0) and (sN < 0)) and (sP = (sN * (-1))) then
    temBx := 'A';  // quando valor positivo e igual ao negativo


 if (temBx = 'A') or (TotalBaixa <> 0) then
 begin
   TotalEmAberto     := TotCli - TotalBaixa;
   if TotalBaixaParcial = 0 then
      TotalBaixaParcial := TotalBaixa;

   if (temBx = 'A') then
   begin
        baixaNegativa;
        exit;
   end
   else
   if (TotalBaixa < 0) then
   begin
        if (dm.qParametronao_baixar_negativo.Text = 'S') then
        begin
          Application.messageBox('Baixa não permitida.', 'Atenção' );
          exit;
        end;
        baixaNegativa;
        exit;
   end;

    T.first;
    while (T.Eof = false) do
    begin
       if TX.Text = 'T' then Break;
       T.Next;
    end;

   Application.CreateForm(TfBaixaRec, fBaixaRec);

   dm.Cx.Open;
   dm.Cx.Insert;
   DM.CxData.Value      := now; // Date;
   DM.CxTpMov.Value     := 'R';
   DM.CxIdUsuario.Value := dm.qUserId.Value;
   DM.CxIdMov.Value     := TID.Value;
   DM.CxDescri.Value    := 'RECEBIMENTO DE CLIENTE';
   DM.CxValor.Value     := RoundTo(TotalBaixa,-2);  //Add round Nilton 08/06/2022 creceber grava com mais de 2 casas
   DM.CxTotal.Value     := RoundTo(TotalBaixa,-2);
   DM.CxDesconto.Value  := 0;
   DM.Cxjuros.Value     := 0;

   if dm.qParametrogerar_cred_emp_origem.Text = 'S' then
      DM.Cxidemp.Value     := Tidemp.AsInteger
   else
      DM.Cxidemp.Value     := dm.qUseridemp.AsInteger;

   if dm.qParametrofolha_separacao_mod_3.Text <> 'S' then //brubalar vir com conta em branco
    begin
       if (dm.qParametrogerar_contas_sep.Text = 'S')  and
          (copy(TDocumento.Text, 1, 3 ) = 'NF_')      and
          (DM.qParametroconta_com_desc.AsInteger > 0) then
          DM.CxIdConta.Value   := DM.qParametroconta_com_desc.AsInteger
       else
       if (dm.qParametrogerar_contas_sep.Text = 'S')  and
          (copy(TDocumento.Text, 1, 3 ) <> 'NF_')      and
          (DM.qParametroconta_sem_desc.AsInteger > 0) then
          DM.CxIdConta.Value   := DM.qParametroconta_sem_desc.AsInteger
       else
          DM.CxIdConta.Value   := 1;
    end;

   fBaixaRec.origem := 'B';

   if dm.qParametrogerar_cred_emp_origem.Text = 'S' then
      fBaixaRec.nEmp       := Tidemp.AsInteger
   else
      fBaixaRec.nEmp       := dm.qUseridemp.AsInteger;
   fBaixaRec.Valorbaixa := TotalBaixa;
   fBaixaRec.ValorPago  := TotalBaixa;
   fBaixaRec.nCodVenda  := TidVenda.AsInteger;
   if TotalBaixa < 0 then
   begin
      fBaixaRec.DBEdit2.ReadOnly := true;
      fBaixaRec.DBEdit3.ReadOnly := true;
   end;

   fBaixaRec.ShowModal;
   fBaixaRec.Free;

   if (Conf_Bx_REC = 'N') and (novoCRec > 0) then
   begin
      ExecSql(' update creceber set doc_bx_parcial = null '+
              ' where idcliente = '+TIDCliente.text +' and doc_bx_parcial = ' + quotedstr(nDocBx) );
      ExecSql(' delete from creceber where id = ' + inttostr(novoCRec) );

      //delete cheques
      ExecSql(' delete from cheques where idmovcaixa = ' + DM.CxId.Text );

   end
   else
   if (Conf_Bx_REC = 'N') and (novoCRec = 0) then
   begin
      //delete cheques
      ExecSql(' delete from cheques where idmovcaixa = ' + DM.CxId.Text );
   end
   else
   begin
      nDocBx   := '';
      novoCRec := 0;
   end;

   if DM.Cx.State in [dsEdit, dsInsert] then
      DM.Cx.Cancel;

   {T.Close;
   T.ParamByName('cli').value := strtoint(edCod.text);
   T.ParamByName('emp').value := cbEmp.ItemIndex;
   T.Open;   }
   AtivaT;

   BxParcialREC      := 'N';
   TotalBaixa        := 0;
   TotalBaixaParcial := 0;
   EdTotal.Clear;

   TOTAL;


 end
else
 Application.MessageBox('Não há conta selecionada para baixar!','Aviso');

end;

procedure TfCReceber2.sairExecute(Sender: TObject);
begin
  //execSQL('update cliente set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text);
  close;
end;

procedure TfCReceber2.Seleciona;
var Cod , Dias : integer;
begin
 Cod := TId.AsInteger;
 TotalBaixa := 0;
 vValor := 0;

 {if TX.AsString = 'T' then
  BEGIN
   ExecSQL('Update creceber set X = '+QuotedStr('F')+
           ' where Id = '+ TId.text);

  END
  else
  BEGIN
   ExecSQL('Update creceber set X = '+QuotedStr('T')+
           ' where Id = '+TId.Text);


  END;
  }

  T.Close;
  T.Open;

  T.First;
  while T.Eof = False do begin
     if TX.Value =  'T' then
        TotalBaixa := TotalBaixa +  TTotal.AsFloat;
     vValor     := vValor     + TTotal.AsFloat;
     T.Next;
  end;
 EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);

 T.Locate('Id', Cod , []);

end;

procedure TfCReceber2.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
if ( Key = #13 ) or ( key = #32 ) then
   begin
     if key = #13 then begin
       if TX.Value = 'T' then begin
          Application.CreateForm(TfValoresReceb, fValoresReceb);
          fValoresReceb.ShowModal;
          fValoresReceb.Free;
       end;
     end;

     key := #0;
     if T.State in [dsedit] then
      T.Post;

     Seleciona;
   end;

end;

procedure TfCReceber2.Total;
 var Vencidas : Real;
begin
  T.First;
  TotCli := 0;
  Vencidas := 0;

  TotalBaixa := 0;
  vValor := 0;
  vJuros := 0;
  nVendas := '';
  while T.Eof = False do
   begin
     if TVENCI.Value < Date then
       Vencidas := Vencidas + TTotal.AsFloat;
     TotCli := TotCli + TTotal.AsFloat;

     if TX.Value =  'T' then
      begin
       TotalBaixa := TotalBaixa +  TTotal.AsFloat;
       if Tidvenda.AsInteger > 0 then begin
          if nVendas = '' then
             nVendas := Tidvenda.Text
          else
          if not( Pos(trim(Tidvenda.Text), nVendas) > 0) then
             nVendas := nVendas + ',' + Tidvenda.Text;
       end;

      end;
      vValor     := vValor  +  TTotal.AsFloat;

    T.Next;
   end;

 T.First;

 EdValTot.Text := FormatFloat('##,###,###,##0.00', TotCli);
 edVencidas.Text := FormatFloat('##,###,###,##0.00', Vencidas);

 EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);




end;

procedure TfCReceber2.TValorValidate(Sender: TField);
begin
  TTotal.AsFloat := Tvalor.AsFloat + Tjuros.AsFloat - TDesconto.AsFloat;
end;

procedure TfCReceber2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if edCod.Text <> '' then
    execSQL('update cliente set emuso = ''N'', iduusarioEmUso = 0 where id = '+edCod.text);
Action := caFree;
fCReceber2 := nil;
end;

procedure TfCReceber2.FormCreate(Sender: TObject);
begin
   if dm.qParametrop_mod_boleto.Text = 'N' then
   begin
      acBoleto.Enabled := false;
      dbgrid1.Columns[11].Visible := false;
      dbgrid1.Columns[12].Visible := false;
   end;

   if dm.qParametrobaixa_sem_troco.text = 'S' then
      Baixa.Caption := 'F6 - Baixa Total';

   EmpresaComboZero( cbEmp );

   dm.qFormas.close;
   dm.qFormas.open;
   dm.qFormas.First;
   dbgrid1.Columns[10].PickList.Clear;
   dbgrid1.Columns[11].PickList.Clear;
   while dm.qFormas.Eof = false do
   begin
      dbgrid1.Columns[13].PickList.Add(uppercase(dm.qFormasDescricao.AsString) );
      dbgrid1.Columns[14].PickList.Add(uppercase(dm.qFormasDescricao.AsString) );
      dm.qFormas.Next;
   end;

   FormasComboBox(cbFormas);

end;

procedure TfCReceber2.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if TVENCI.Value < Date then
  begin
   DBGrid1.Canvas.Brush.Color := $00B5FBF5;
   DBGrid1.Canvas.Font.Color := clBlack;
  end;

 if Tprotesto.Text = 'S' then
  begin
   DBGrid1.Canvas.Brush.Color := $0060BDFB;
   DBGrid1.Canvas.Font.Color := clBlack;
  end;

 if TX.Value = 'T'  then
   begin
     DBGrid1.Canvas.Brush.Color := $009D9DFF; // Vermelho
     DBGrid1.Canvas.Font.color := clBlack; // Vermelho
   end;


 DBGrid1.DefaultDrawDataCell(Rect, DBGrid1.Columns[DataCol].Field ,state);
end;

procedure TfCReceber2.cbEmpClick(Sender: TObject);
begin
   {T.Close;
   T.ParamByName('cli').value := trim(edCod.Text);
   T.ParamByName('emp').value := cbEmp.ItemIndex;
   T.Open;
   Total; }

   AtivaT;

end;

procedure TfCReceber2.cbFormasClick(Sender: TObject);
begin
  AtivaT;
end;

procedure TfCReceber2.ckTodasClick(Sender: TObject);
begin
   TotalBaixa := 0;
   vValor := 0;
   nVendas := '';

   T.First;
   while T.Eof = False do
    begin
     T.Edit;
     if ckTodas.Checked then
      TX.Value := 'T'
     else
      TX.value := 'F';
     T.Post;


     if Tx.text = 'T' then begin
       TotalBaixa := TotalBaixa +  TTotal.AsFloat;
       if Tidvenda.AsInteger > 0 then begin
          if nVendas = '' then
             nVendas := Tidvenda.Text
          else
          if not( Pos(trim(Tidvenda.Text), nVendas) > 0) then
             nVendas := nVendas + ',' + Tidvenda.Text;
       end;

     end;
     vValor     := vValor  + TTotal.AsFloat;

     T.Next;
    END;

   T.Close;
   T.Open;
   EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);
end;


procedure TfCReceber2.acParcialExecute(Sender: TObject);
 var NovoValor : Real;
     CodRec, vIdNF, vIdEmp, nReg : Integer;
     txDoc, txPed : String;
begin

  T.First;
  nReg := 0;
  vIdNF :=0;
  vIdEmp := 1;

  MenorVenci := DAte+365;
  while T.Eof = False do begin
    if TX.Value =  'T' then
    begin
       nReg := nReg + 1;
       CodRec    := TidVenda.AsInteger;
       if Tidnf.AsInteger > 0 then
        vIdNF := Tidnf.AsInteger;
       vIdEmp := Tidemp.AsInteger;
       txDoc := txDoc + trim(TDocumento.Text) + ',' ;
       txPed := txPed + trim(TidVenda.Text) + ',' ;
       if Tvenci.value < menorVenci then
       begin
          MenorVenci := TVenci.value;
       end;
    end;
    T.Next;
  end;
  if copy(txDoc, Length(txDoc), 1) = ',' then
     txDoc := copy(txDoc, 1, Length(txDoc) - 1);
  if copy(txPed, Length(txPed), 1) = ',' then
     txPed := copy(txPed, 1, Length(txPed) - 1);


 Application.CreateForm(TfBxParcial, fBxParcial);
 fBxParcial.ShowModal;
 fBxParcial.Free;

 if ConfirmadoBP = 'N' then begin
    ExecSql(' update creceber set x = ''F'' where x = ''T'' ');

    T.Close;
    T.Open;
    total;

    Exit;
 end;

  {DM.qParametro.Edit;
  DM.qParametroSeq_Reneg.Value := DM.qParametroSeq_Reneg.Value + 1;
  DM.qParametro.Post;
  DM.qParametro.ApplyUpdates;}

 if TotalBaixa > ValorBaixado then
   begin
     //CodRec  := DM.qParametroSeq_Reneg.Value;
     //CodRec    := TidVenda.AsInteger;

     DM.CRec.Open;

     NovoValor := TotalBaixa - ValorBaixado;

     DM.CRec.Insert;
     DM.CRecDOCUMENTO.Value  := 'BP '+IntToStr(CodRec);
     dm.CRecnParc.AsInteger := 1;
     DM.CRecIdCLIENTE.Value  := TIDCliente.value;
     DM.CRecEMISSAO.Value    := Date;
     DM.CRecIDVenda.Value    := CodRec;
     DM.CRecidnf.AsInteger := vIdNF;
     DM.CRecidemp.AsInteger := vIdEmp;
     DM.CRecIDUsuario.Value  := dm.qUserId.Value;
     DM.CRecTipo.Value       := TTipo.Value;
     nDOcBx := trim('BP '+IntToStr(CodRec));

     DM.CRecVALOR.Value      := NovoValor;
     DM.CRecVENCI.Value      := MenorVenci;

     if (trim(txDoc) <> '') or (trim(txPed) <> '') then
       if trim(TObs.asString) <> '' then
           DM.CRecobs.AsString := trim(DM.CRecObs.asString) + ' | Baixa Parcial => Doc:['+ txDoc +'] => Ped:['+txPed+']'
       else
           DM.CRecobs.AsString := trim(DM.CRecObs.asString) + 'Baixa Parcial => Doc:['+ txDoc +'] => Ped:['+txPed+']';

     novoCRec := Dm.CRecId.Value;

     Application.CreateForm(TfRenegociacao, fRenegociacao);
     ConfirmadoRN := 'S';

     fRenegociacao.ShowModal;
     fRenegociacao.Free;

     if confirmadoRN = 'N' then
     begin
        DM.CRec.Cancel;
        DM.CRec.ApplyUpdates;

        TotalBaixaParcial := 0;
        TotalBaixa        := 0;
        ckTodas.Checked := false;
        ckTodasClick(Application);
     end
     else
     begin
       T.First;
       while T.Eof = false do
       begin
         if TX.Value = 'T' then
         begin
           T.edit;
           Tdoc_bx_parcial.Value := nDocBx;
           T.post;
        end;
        T.Next;
       end;

       TotalBaixaParcial := TotalBaixa;
       TotalBaixa        := ValorBaixado;
       BxParcialREC      := 'S';
       if ConfirmadoRN = 'S' then
          Baixa.Execute;
     end;
   end
  else
   begin
    Application.MessageBox('Valor da baixa parcial não pode ser maior que o selecionado!', 'Atenção');
   end;

end;


procedure TfCReceber2.acProtestoExecute(Sender: TObject);
begin
//
 if Tprotesto.Text = 'S' then
  begin
   if Application.MessageBox('Deseja tirar boleto de protesto?', 'Confirmação', MB_YESNO)=idyes then
    begin
     T.Edit;
     Tprotesto.Value := 'N';
     Tx.Value := 'F';
     T.Post;
    end;
  end
 else
  begin
   if Application.MessageBox('Deseja colocar boleto em protesto?', 'Confirmação', MB_YESNO)=idyes then
    begin
     T.Edit;
     Tprotesto.Value := 'S';
     Tx.Value := 'F';
     T.Post;
    end;
  end;

end;

procedure TfCReceber2.DBGrid1CellClick(Column: TColumn);
var Cod : Integer;

begin


 if DBGrid1.SelectedIndex = 9 then
  begin
   TotalBaixa := 0;
   vValor := 0;


   Cod := TID.Value;

   nVendas := '';
    T.First;
    while T.Eof = False do
     begin
      if TX.Value =  'T' then
      begin
        TotalBaixa :=  TotalBaixa +  TTotal.AsFloat;
        if nVendas = '' then
           nVendas := Tidvenda.Text
        else
           nVendas := nVendas + ',' + Tidvenda.Text;
       end;
       vValor := vValor + TTotal.AsFloat;

      T.Next;
     end;

    EdTotal.Text := FormatFloat('##,###,###,##0.00', TotalBaixa);

    T.Close;
    T.Open;
    T.Locate('Id', Cod , []);


  end;
end;

procedure TfCReceber2.acRenegExecute(Sender: TObject);
var
  nvEmp, nvVenda, vIdNf :Integer;
  txDoc, txPed : String;
begin

  Application.CreateForm(TfSenhaCad, fSenhaCad);
  fSenhaCad.ShowModal;
  fSenhaCad.Free;
  if RespCad = 'N' then
     Exit;
  if temPermissao(IdUsuario, 'RENEG_CRECEBER') = false then
     Exit;

  GravaLogFinan(IdUsuario, Tid.Value, TIdCliente.asInteger, 'Contas a Receber', 'RENEGOCIAÇÃO', 'Renegociação de lançamentos','C');

 nvEmp := 0;
 T.First;
 while T.Eof = False do
 begin
   if TX.Value = 'T' then
   begin
      if TTipo.Text = 'R' then
       begin
        if TidVendaOriginal.AsInteger > 0 then
         nvVenda := TidVendaOriginal.AsInteger;
       end
      else
       begin
        if TidVenda.AsInteger > 0 then
         nvVenda := TidVenda.AsInteger;
       end;

      if Tidnf.AsInteger > 0 then
        vIdNf := Tidnf.AsInteger;

      if nvEmp = 0 then
         nvEmp := Tidemp.AsInteger
      else
      if nvEmp <> Tidemp.AsInteger then
         nvEmp := 9; //mais de um

      txDoc := txDoc + trim(TDocumento.Text) + ',' ;
      txPed := txPed + trim(TidVenda.Text) + ',' ;
   end;
   T.Next;
 end;

 if nvEmp = 9 then
 begin
    Application.MessageBox('Selecione lançamentos referentes a uma única empresa','Atenção');
    Exit;
 end;

 if copy(txDoc, Length(txDoc), 1) = ',' then
    txDoc := copy(txDoc, 1, Length(txDoc) - 1);
 if copy(txPed, Length(txPed), 1) = ',' then
    txPed := copy(txPed, 1, Length(txPed) - 1);

 Application.CreateForm(TfCRRenegociacao, fCRRenegociacao);
 TotalReneg := TotalBaixa;
 IdCli      := TIDCliente.Value;
 fCRRenegociacao.nvEmpresa := nvEmp;
 fCRRenegociacao.vIdVendaReneg := nvVenda;
 fCRRenegociacao.vIdNFOrig     := vIdNf;
 fCRRenegociacao.txD := txDoc;
 fCRRenegociacao.txP := txPed;
 fCRRenegociacao.ShowModal;
 fCRRenegociacao.Free;

 if RenegConfirmada = 'N' then
    begin
       ExecSql('delete from creceber where Idcliente = ' + EdCod.Text +
            ' and tipo = ''R'' and IdVenda = '+ inttostr(seqq) + ' and substring(documento, 1, 1) = ''R'' ');
    end
 else
 if RenegConfirmada = 'S' then
  begin
    T.First;
    while T.Eof = False do
     begin
      if TX.Value = 'T' then
       begin
        T.Edit;
        TBAIXA.Value := 'S';
        TUsuario_baixa.Value := DM.qUserId.Value;
        TVALPAGO.Value := 0; //TVALOR.Value; // DM.qCReceberVALOR.Value;
        TDTPAGTO.Value := Date;
        TEx.Value := 1;
        T.Post;
       end;
      T.Next;
    end;
   T.ApplyUpdates;

   T.Close;
   T.Open;

   Total;

  end;


end;

procedure TfCReceber2.acVendaExecute(Sender: TObject);
begin
  if TTipo.Value <> 'V' then
  begin
     Application.MessageBox('Lançamento não foi gerado por uma venda. Por favor, verifique!', 'Atenção');
     Exit
  end;


  if dm.qParametrofolhaSeparacao_mod_5.text = 'S' then // GRANELLI
    ImprimirPedidoModelo5(TidVenda.Value)
  else if dm.qParametrofolha_separacao_mod_3.text = 'S' then // brubalar
    ImprimirPedidoDZ(TidVenda.Value)
  else if dm.qParametropd_imp_matricial.text = 'S' then
   begin
      visualiza := 'S';
      vimpPDF := 'N';
      ImprimirPedidoMatricial(TidVenda.Value, vimpPDF, vNomePDF); // itu acos
   end
  else
    ImprimirPedido(TidVenda.Value);


                       {
  if not FormEstaCriado(TfVenda) then
  begin
     if StatusVenda = '' then
     begin
        StatusVenda := 'E';
        CodVenda    := TidVenda.Value;
     end;
     vCopiar := true; // pra alterar qunatidade e preço
  end;
  fMenu.CriarForm(TfVenda );
                                  }

end;

procedure TfCReceber2.AtivaT;
begin
   T.Close;
   T.ParamByName('cli').value := trim(edCod.Text);
   T.ParamByName('emp').value := cbEmp.ItemIndex;
   T.ParamByName('fpgto').asString := cbFormas.text;
   T.Open;
   Total;
end;

procedure TfCReceber2.acRecebidasExecute(Sender: TObject);
 var Cli, Emp: String;
begin
 Cli := edCod.text;
 Emp := DM.qUserId.Text;

 ExecSql(' update creceber set x = ''F'' where x = ''T'' ');

 Application.CreateForm(TfCRecebidas, fCRecebidas);

 fCRecebidas.EdCod.Text := edCod.text;
 fCRecebidas.EdNom.Text := EdNom.text;

 fCRecebidas.T.Close;
 fCRecebidas.T.ParamByName('cli').value := Cli;
 fCRecebidas.T.ParamByName('dd').Value := 0;
 fCRecebidas.T.ParamByName('di').Value := Date;
 fCRecebidas.T.ParamByName('df').Value := Date;
 fCRecebidas.T.Open;

 fCRecebidas.totTotal;

 fCRecebidas.vAberto := true;

 fCRecebidas.Show;


end;

procedure TfCReceber2.DBMemo1Exit(Sender: TObject);
begin
  if T.State in [dsEdit,dsInsert] then
     T.Post;
end;



procedure TfCReceber2.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

  Key := NaoInsereDBGrid(TDBGrid(Sender),
    TDBGrid(Sender).DataSource.DataSet, Key);
end;

procedure TfCReceber2.acExcluirExecute(Sender: TObject);
var
  vExclui : Boolean;
begin
  vExclui := false;
  if Application.MessageBox('Confirma exclusão de conta(s) selecionada(s)?','Confirmação',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2 ) = idyes then
  begin
    Application.CreateForm(TfSenhaCad, fSenhaCad);
    fSenhaCad.ShowModal;
    fSenhaCad.Free;

    if IdUsuario = 0 then Exit;

    if RespCad = 'N' then  Exit;

    if temPermissao(IdUsuario, 'EXCL_CRECEBER') = false then
     Exit;

    T.First;
    while not T.Eof do
    begin
      if Tx.AsString = 'T' then
      begin
        T.Edit;
        TEx.Value := 1;
        Tobs.asstring := Tobs.asstring + ' Excluida em: ' + datetostr(date) + ' por: ' + inttostr(IdUsuario);
        vExclui := true;
        GravaLogFinan(IdUsuario, Tid.Value, TidCliente.asInteger, 'Contas a Receber', 'EXCLUIR', 'Excluir lançamento', 'C');
        T.Post;
        T.Next;
      end
      else
        T.Next;
    end;

    if vExclui then
    begin
      Application.MessageBox('Conta(s) excluída(s)', 'Aviso') ;
      T.Close;
      T.Open;
    end
    else
      Application.MessageBox('Selecione sonta(s) para exclusão', 'Atenção');
  end;
end;

procedure TfCReceber2.acExtratoExecute(Sender: TObject);
var
  sql, opcao:string;
begin

 {case Application.MessageBox('Deseja imprimir(Sim), Visualizar(Não)?', 'Confirmação', mb_yesnocancel+ mb_defbutton2) of
  idyes : opcao := 'B';
  idno  : opcao := 'V';
  else
   exit;
 end;}
 opcao := 'V';

 if nVendas = '' then
    nVendas := '0';


 T.ApplyUpdates;
 Application.CreateForm(TfImpExtrato, fImpExtrato);
 sql := ' select distinct creceber.id, creceber.idvenda, creceber.emissao, '+
                       ' creceber.venci, creceber.valor, Cliente.NOME, '+
                       ' venda_i.idproduto, produto.descricao,  venda_i.total ValIt, venda.data, '+
                       ' venda.id idcx, creceber.documento, ''V'' tt '+
                       ' , venda_i.qtd, venda_i.unit, Cliente.email '+
                       ' From creceber '+
                       ' left join Cliente on Cliente.Id = creceber.IdCliente '+
                       ' left join venda_i on venda_i.idvenda = creceber.idvenda '+
                       ' left join venda on venda.id = venda_i.idvenda '+
                       ' left join produto on produto.id = venda_i.idproduto '+
                       ' where   creceber.ex = 0 and creceber.baixa = ''N'' and '+
                       '         creceber.X = ''T'' and creceber.tipo <> ''D''and venda.id in ( '+nVendas+' ) '+
                       ' union all '+
                       ' select distinct creceber.id, creceber.idvenda, creceber.emissao, '+
                       ' creceber.venci, creceber.valor, Cliente.NOME, venda_i.idproduto, '+
                       ' produto.descricao,  venda_i.total ValIt, venda.data, venda.id idcx, '+
                       ' creceber.documento, ''D'' tt '+
                       ' , venda_i.qtd, venda_i.unit, Cliente.email '+
                       ' From creceber '+
                       ' left join Cliente on Cliente.Id = creceber.IdCliente '+
                       ' left join venda_i on venda_i.idvenda = creceber.IdVenda '+
                       ' left join venda on venda.id = venda_i.idvenda '+
                       ' left join produto on produto.id = venda_i.idproduto '+
                       ' where   creceber.ex = 0 and creceber.baixa = ''N'' and '+
                       '         creceber.x = ''T'' and creceber.tipo = ''D'' and creceber.Idcliente > 0 '+
                       ' order by  2 ';
 fImpExtrato.Q.Close;
 fImpExtrato.Q.SQL.clear;
 fImpExtrato.Q.Sql.add( sql );
 fImpExtrato.Q.Open;

 if opcao = 'B' then
 begin
    fImpExtrato.lTotal.Caption := 'Total: '+EdTotal.Text;
    fImpExtrato.rpListaA4.Print;  //rpLista.Print;
 end
 else
 if opcao = 'V' then
 begin
    fImpExtrato.lTotal2.Caption := 'Total: '+EdTotal.Text;

    vEnv_EmailDest := fImpExtrato.Qemail.Text;
    vEnv_Report    := fImpExtrato.rpListaA4;
    fImpExtrato.rpListaA4.PreviewModal;
 end;
 fImpExtrato.Free;

end;

procedure TfCReceber2.TAfterOpen(DataSet: TDataSet);
begin
  dbgrid1.enabled := (T.RecordCount > 0);

end;

procedure TfCReceber2.TAfterPost(DataSet: TDataSet);
begin
   T.ApplyUpdates;
end;

procedure TfCReceber2.TAfterScroll(DataSet: TDataSet);
begin
  if Tbenviando.asString = 'S' then
    acBoleto.enabled := false
  else
    acBoleto.enabled := true;

end;

procedure TfCReceber2.TDescontoValidate(Sender: TField);
begin
   TTotal.AsFloat := Tvalor.AsFloat + Tjuros.AsFloat - TDesconto.AsFloat;

end;

procedure TfCReceber2.TJurosValidate(Sender: TField);
begin
   TTotal.AsFloat := Tvalor.AsFloat + Tjuros.AsFloat - TDesconto.AsFloat;
end;

procedure TfCReceber2.FormActivate(Sender: TObject);
begin

 MenorVenci        := Date;
 TotalBaixaParcial := 0;
 BxParcialREC      := 'N';

 if trim(edCod.Text) <> '' then
 begin
   {T.Close;
   T.ParamByName('cli').value := trim(edCod.Text);
   T.ParamByName('emp').value := cbEmp.ItemIndex;
   T.Open;  }
   AtivaT;

   Total;
 end;


end;

procedure TfCReceber2.acBoletoExecute(Sender: TObject);
begin
  try
    GeraBoleto(strtoint(trim(edCod.text)));
  finally
    dbgrid1.Refresh;
  end;

  T.refresh;
end;

procedure TfCReceber2.acEditarExecute(Sender: TObject);
begin
  if EdCod.Text = '' then
  begin
    Application.MessageBox('Cliente não preenchido. Por favor, verifique!','Atenção');
    EdCod.SetFocus;
  end
  else
  begin

    T.Edit;

    Application.CreateForm(TfSenhaCad, fSenhaCad);
    fSenhaCad.ShowModal;
    fSenhaCad.Free;
    if IdUsuario = 0 then Exit;

    if RespCad = 'N' then
      Exit;

    if temPermissao(IdUsuario, 'EDIT_CRECEBER') = false then
      Exit;

    GravaLogFinan(IdUsuario, Tid.Value, TIdCliente.asInteger, 'Contas a Receber', 'EDITAR', 'Editar lançamento','C');

    Application.CreateForm(TfEditarCRec, fEditarCRec);
    fEditarCRec.ShowModal;
    fEditarCRec.Free;
    ExecSql(' update creceber set x = ''F'' where x = ''T'' and idcliente = '+ trim(edCod.Text) +'; ');
   { T.Close;
    T.Open;   }
    AtivaT;


    TotalBaixa := 0;
    EdTotal.Clear;
  end;
end;



end.
