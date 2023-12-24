unit uEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBGrids, StdCtrls, ExtCtrls, ActnList, DBCtrls, DB, XiButton, Mask,
  system.Actions, IBX.IBQuery, Vcl.Grids,
  Vcl.Imaging.jpeg, Vcl.Dialogs, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ComCtrls, Data.Bind.Components, Data.Bind.ObjectScope;

type
  TfEstoque = class(TForm)
    Image1: TImage;
    grEstoque: TDBGrid;
    ActionList1: TActionList;
    acSair: TAction;
    edTotal: TEdit;
    XiButton4: TXiButton;
    dsEstoque: TDataSource;
    Label1: TLabel;
    XiButton1: TXiButton;
    acOk: TAction;
    acImprimir: TAction;
    EdCod: TEdit;
    gdPro: TDBGrid;
    Label3: TLabel;
    Label4: TLabel;
    ckDet: TCheckBox;
    XiButton2: TXiButton;
    XiButton3: TXiButton;
    acAjuste: TAction;
    qEstoque: TZQuery;
    qEstoqueid: TIntegerField;
    qEstoquedescricao: TWideStringField;
    qEstoquetipo: TWideStringField;
    qEstoqueQtd: TFloatField;
    qEstoqueLote: TZQuery;
    qEstoqueLoteid: TIntegerField;
    qEstoqueLotedescricao: TWideStringField;
    qEstoqueLotetipo: TWideStringField;
    qEstoqueLotedata: TDateTimeField;
    qEstoqueLoteqtd: TFloatField;
    qEstoqueLotetpestqoue: TWideStringField;
    edDEsProd: TEdit;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    qEstoquereferencia: TWideStringField;
    qEstoquebarras: TWideStringField;
    qEstoqueLotebarras: TWideStringField;
    qEstoqueLotereferencia: TWideStringField;
    Label2: TLabel;
    ckTodas: TCheckBox;
    rdTipo: TRadioGroup;
    qEstoquetp_prod: TWideStringField;
    qEstoqueLotetp_prod: TWideStringField;
    Label11: TLabel;
    cbEmp: TComboBox;
    qEstoqueLotetp_mov: TWideStringField;
    qEstoqueQtd_cx: TFloatField;
    qEstoqueLoteQtd_cx: TFloatField;
    edTotalM: TEdit;
    Label5: TLabel;
    cbEst: TComboBox;
    Label6: TLabel;
    XiButton5: TXiButton;
    acInv: TAction;
    qGrupo: TZQuery;
    qGrupoid: TIntegerField;
    qGrupodescricao: TWideStringField;
    dGrupo: TDataSource;
    Label67: TLabel;
    cbGrupo: TDBLookupComboBox;
    qEstoqueLoteMov: TIntegerField;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    cbTipo: TComboBox;
    cbMov: TComboBox;
    Label10: TLabel;
    rdStatus: TRadioGroup;
    qEstoqueLotecor: TWideStringField;
    qEstoqueLotetamanho: TWideStringField;
    qEstoquecor: TWideStringField;
    qEstoquetamanho: TWideStringField;
    qEstoqueqtdVendida: TFloatField;
    qEstoqueLoteqtdVendida: TFloatField;
    qEstoqueQtdDisponivel: TFloatField;
    qEstoqueLoteQtdDisponivel: TFloatField;
    procedure acSairExecute(Sender: TObject);
    procedure EdCodKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grEstoqueKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure acOkExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure gdProKeyPress(Sender: TObject; var Key: Char);
    procedure acImprimirExecute(Sender: TObject);
    procedure ckDetClick(Sender: TObject);
    procedure acAjusteExecute(Sender: TObject);
    procedure edDEsProdChange(Sender: TObject);
    procedure edDEsProdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure rdTipoClick(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure acInvExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure grEstoqueTitleClick(Column: TColumn);
    procedure cbGrupoCloseUp(Sender: TObject);
    procedure cbGrupoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEstClick(Sender: TObject);
  private
    { Private declarations }
    campo, ordem : String;
    buscaprodutopor : Integer;
  public
    { Public declarations }
  end;

var
  fEstoque: TfEstoque;
  

implementation

uses uDM, uImpEstoque, uInventario;

{$R *.dfm}

procedure TfEstoque.acSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfEstoque.cbEmpClick(Sender: TObject);
begin
  acOk.Execute;
end;

procedure TfEstoque.cbEstClick(Sender: TObject);
begin
 acOk.Execute;
end;

procedure TfEstoque.cbGrupoCloseUp(Sender: TObject);
begin
  acOk.Execute;
end;

procedure TfEstoque.cbGrupoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = VK_DOWN) or (key = VK_UP) then
     acOk.Execute;
end;

procedure TfEstoque.ckDetClick(Sender: TObject);
begin
  acInv.Enabled := not ckDet.Checked;

  if ckDet.checked then
  begin
    cbMov.visible := true;
    cbTipo.Visible := true;
    Label9.visible := true;
    label10.visible := true;
  end
  else
  begin
    cbMov.visible := false;
    cbTipo.Visible := false;
    Label9.visible := false;
    label10.visible := false;
  end;

  campo := '2';
  ordem := 'ASC';

  acOk.Execute();
end;

procedure TfEstoque.ckTodasClick(Sender: TObject);
begin
   eddt1.Enabled := not ckTodas.Checked;
   eddt2.Enabled := not ckTodas.Checked;

   acOk.Execute;

end;

procedure TfEstoque.EdCodKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if EdCod.Text <> '' then
    begin
      qEstoqueLote.Close;
      qEstoque.Close;

      edTotal.Clear;
      edTotalM.Clear;

      edDesProd.Clear;
      DM.qSelPesq.Close;
      DM.qSelPesq.SQL.Clear;
      case rdTipo.ItemIndex of
          1: DM.qSelPesq.SQL.Add(' select produto.id, produto.cod_Manual, produto.barras, produto.descricao, '+
                          '  produto.tipo, produto.referencia  from produto ' +
                          ' where produto.ex = 0 and produto.' +
                           trim(dm.qParametropesqproduto.Text)  +'  like :pesq ' );
          2: DM.qSelPesq.SQL.Add(' select sa.id, sa.cod_Manual, sa.barras, sa.descricao, '+
                          '  ''S'' tipo, '''' referencia  from semi_acabado sa ' +
                          ' where sa.ex = 0 and sa.id like :pesq ' );
          3: DM.qSelPesq.SQL.Add(' select produto.id, produto.cod_Manual, produto.barras, produto.descricao, '+
                          '  produto.tipo, produto.referencia  from produto ' +
                          ' where produto.ex = 0 and produto.id = :pesq ' );
      end;
      DM.qSelPesq.ParamByName('pesq').Value := trim(EdCod.Text);
      DM.qSelPesq.Open;

      if not DM.qSelPesq.IsEmpty then
      begin
        edDesProd.OnChange := NIL;
        edDesProd.Text     := DM.qSelPesq.FieldByName('descricao').AsString;
        edDesProd.OnChange := edDEsProdChange;
        buscaprodutopor    := DM.qSelPesq.FieldByName('id').asinteger;
        acOk.Execute;
        gdPro.Visible := False;
      end
      else
      begin
        gdPro.Visible := False;
        EdCod.Clear;
        edDesProd.SetFocus;
      end;

    end
    else
    BEGIN
      gdPro.Visible := False;
      EdCod.Clear;
      edDesProd.Clear;
      edDesProd.SetFocus;
    END;
  end;
end;

procedure TfEstoque.edDEsProdChange(Sender: TObject);
begin
  if (edDesProd.Text <> '')  then
  begin
    DM.qSelPesq.Close;
    DM.qSelPesq.SQL.Clear;
    case rdTipo.ItemIndex of
       1, 3: DM.qSelPesq.SQL.Add(' select produto.id, produto.cod_Manual, produto.barras, produto.descricao, '+
                          '  produto.tipo, produto.referencia  from produto ' +
                          ' where produto.ex = 0 and produto.descricao like :pesq ' );
          2: DM.qSelPesq.SQL.Add(' select sa.id, sa.cod_Manual, sa.barras, sa.descricao, '+
                          '  ''S'' tipo, '''' referencia  from semi_acabado sa ' +
                          ' where sa.ex = 0 and sa.descricao like :pesq ' );
    end;
    DM.qSelPesq.ParamByName('pesq').Value := '%'+trim(edDesProd.Text)+'%';
    DM.qSelPesq.Open;

    if DM.qSelPesq.IsEmpty then
     gdPro.Visible := False
    else
     gdPro.Visible := True;
  END
  else
    gdPro.Visible := False;

end;


procedure TfEstoque.edDEsProdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN THEN
    IF gdPro.Visible THEN
      gdPro.SetFocus;
end;

procedure TfEstoque.FormActivate(Sender: TObject);
begin
  qGrupo.Close;
  qGrupo.Open;
  qGrupo.FetchAll;
  cbGrupo.KeyValue := qGrupoid.Value;

end;

procedure TfEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qEstoqueLote.Close;
  qEstoque.Close;
  Action := caFree;
  fEstoque := nil;

end;

procedure TfEstoque.FormCreate(Sender: TObject);
begin
  edDt1.Date := date - 10;
  edDt2.Date := date;

  EmpresaComboZero( cbEmp );
  cbEmp.Items.Delete(0);
  cbEmp.Update;
  cbEmp.ItemIndex := 0; // Empresa 1

  campo := '2';
  ordem := 'ASC';

  if dm.qParametromostrar_multiplo.Text = 'N' then
     grEstoque.Columns[8].Visible := false;


  if ckDet.checked then
  begin
    cbMov.visible := true;
    cbTipo.Visible := true;
    Label9.visible := true;
    label10.visible := true;
  end
  else
  begin
    cbMov.visible := false;
    cbTipo.Visible := false;
    Label9.visible := false;
    label10.visible := false;
  end;

  if dm.qParametrousa_referencia_base.asString = 'S' then
  begin
    grEstoque.Columns[3].Visible := true;
    grEstoque.Columns[4].Visible := true;
  end
  else
  begin
    grEstoque.Columns[3].Visible := false;
    grEstoque.Columns[4].Visible := false;
  end;


end;

procedure TfEstoque.grEstoqueKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_UP THEN
 begin
  if edDesProd.enabled then
  begin
   IF (qEstoqueLote.Active) and (qEstoqueLote.Bof) THEN
      edDesProd.SetFocus
   else
   IF (qEstoque.Active) and (qEstoque.Bof) THEN
      edDesProd.SetFocus;
  end;
 end;
end;

procedure TfEstoque.grEstoqueTitleClick(Column: TColumn);
var
  cam:String;
begin
  if ordem = 'ASC' then
     ordem := 'DESC'
  else
     ordem := 'ASC';

  cam := uppercase(column.FieldName);
  if ckDet.Checked then
  begin
    if cam = 'ID'         then campo := '1'
    else
    if cam = 'DESCRICAO'  then campo := '2'
    else
    if cam = 'BARRAS'     then campo := '6'
    else
    if cam = 'REFERENCIA' then campo := '5'
    else
    if cam = 'TP_PROD'    then campo := '4'
    else
    if cam = 'MOV'        then campo := '12'
    else
    if cam = 'TP_MOV'     then campo := '9'
    else
    if cam = 'TPESTOQUE'  then campo := '8'
    else
    if cam = 'QTD'        then campo := '10'
    else
    if cam = 'QTD_CX'     then campo := '11'
    else
    if cam = 'DATA'       then campo := '3';
  end
  else
  begin
    if cam = 'ID'         then campo := '1'
    else
    if cam = 'DESCRICAO'  then campo := '2'
    else
    if cam = 'BARRAS'     then campo := '5'
    else
    if cam = 'REFERENCIA' then campo := '4'
    else
    if cam = 'TP_PROD'    then campo := '3'
    else
    if cam = 'MOV'        then campo := '1'
    else
    if cam = 'TP_MOV'     then campo := '1'
    else
    if cam = 'TIPO'       then campo := '6'
    else
    if cam = 'QTD'        then campo := '7'
    else
    if cam = 'QTD_CX'     then campo := '8';
  end;

  acOk.Execute;

end;

procedure TfEstoque.rdTipoClick(Sender: TObject);
begin

  buscaprodutopor := 0;
  edCod.clear;
  edDesprod.Clear;
  gdPro.Visible := false;
  label3.Enabled    := (rdTipo.ItemIndex in [1,2,3]);
  label4.Enabled    := (rdTipo.ItemIndex in [1,2,3]);
  edCod.Enabled     := (rdTipo.ItemIndex in [1,2,3]);
  edDesProd.Enabled := (rdTipo.ItemIndex in [1,2,3]);
  label67.Enabled   := (rdTipo.ItemIndex = 1);
  cbGrupo.Enabled   := (rdTipo.ItemIndex = 1);

  case rdTipo.ItemIndex of
    0: begin
         label3.Caption := 'Referência';
         grEstoque.Columns[1].Visible := true;
         grEstoque.Columns[10].Title.Caption := 'Qtde Multiplo';
       end;
    1: begin
         label3.Caption := 'Referência';
         grEstoque.Columns[1].Visible := true;
         grEstoque.Columns[10].Title.Caption := 'Qtde Multiplo';
       end;
    2: begin
         label3.Caption := 'Código';
         grEstoque.Columns[1].Visible := false;
         grEstoque.Columns[10].Title.Caption := 'Qtde Multiplo';
       end;
    3: begin
         label3.Caption := 'Código';
         grEstoque.Columns[1].Visible := false;
         grEstoque.Columns[10].Title.Caption := 'Qtde Conversão';
       end;
  end;

  acOk.Execute;

end;

procedure TfEstoque.gdPesqKeyPress(Sender: TObject; var Key: Char);
 var X : Char;
begin
 if Key = #13 then
  begin
   Key := #0;
   X := #13;

   EdCod.Text := DM.qPesq.FieldByName('referencia').Value;
   EdCodKeyPress(Application, X);
   gdPro.Visible := False;
  end;
end;

procedure TfEstoque.gdProKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
 begin
   if not DM.qSelPesq.IsEmpty then
   begin
    if rdTipo.ItemIndex in [1] then
       EdCod.Text      := DM.qSelPesq.fieldbyname( trim(dm.qParametropesqproduto.text) ).Text
    else
    if rdTipo.ItemIndex in [2,3] then
       EdCod.Text      := DM.qSelPesq.fieldbyname('id').Text;
    edDesProd.OnChange := nil;
    edDesProd.Text     := DM.qSelPesq.fieldbyname('descricao').Text;
    edDesProd.OnChange := edDEsProdChange;
    gdPro.Visible      := False;
    EdCodKeyPress(Application, key);
   end;
   Key := #0;
end;
end;

procedure TfEstoque.acAjusteExecute(Sender: TObject);
var
  temP : integer;
  vQtde : real;
  vQtdSt, vTp, temTp, temDes : string;
begin
  temP := 0;
  if (trim(edCod.text) <> '')  then
  begin
     temP   := DM.qSelPesq.FieldByName('id').asinteger;
     temTp  := DM.qSelPesq.FieldByName('tipo').text;
     temDes := DM.qSelPesq.FieldByName(dm.qParametropesqproduto.Text).text +'-'+
               DM.qSelPesq.FieldByName('descricao').text;
  end
  else
  if (trim(edCod.text) = '') and (qEstoque.Active) and (qEstoque.IsEmpty = false) then
  begin
     temP   := qEstoqueid.AsInteger;
     temTp  := qEstoquetipo.text;
     temDes := qEstoque.FieldByName(dm.qParametropesqproduto.Text).text +'-'+
               qEstoquedescricao.text;
  end
  else
  if (trim(edCod.text) = '') and (qEstoquelote.Active) and (qEstoqueLote.IsEmpty = false) then
  begin
     temP   := qEstoqueloteid.AsInteger;
     temTp  := qEstoquelotetipo.text;
     temDes := qEstoque.FieldByName(dm.qParametropesqproduto.Text).text +'-'+
               qEstoquedescricao.text;
  end;

  if temP > 0 then
  begin
    if InputQuery('Quantidade Ajuste',pchar(temDes + #13+#10 + 'Digite a Quantidade(+(Entrada) -(Saída)) Para o Ajuste de Estoque Selecionado'),vQtdSt) then
    begin
      if (vQtdSt <> '')  then
      begin
        vQtde := StrToFloatDef(vQtdSt, 0);
        if vQtde > 0 then
          vTp := 'E'
        else
        begin
          vTp := 'S';
          vQtde := vQtde * (-1);
        end;

        // ajuste somente no empresa 1
        // 27/05/2020 ajusta da selecionada, mas muda no produto somente da empresa 1
        if vQtde <> 0 then
          Estoque(strtoint(copy(cbEmp.text,1,1)), 0, 0, 0, 0, 0, temP, 0, 0, temTP, vTp, vQtde,0 );
      end;
    end;
  end
  else
  begin
    Application.MessageBox('Informe Produto!', 'Atenção');
   // EdCod.SetFocus;
  end;

  acOk.Execute;
end;

procedure TfEstoque.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm(TfImpEstoque, fImpEstoque);

  if ckDet.Checked then
  begin
    grEstoqueTitleClick(grEstoque.Columns[2]);

    fImpEstoque.lLote.visible   := true;
    fImpEstoque.lData.visible   := true;
    fImpEstoque.lTipoE.visible  := true;
    fImpEstoque.dbLote.visible  := true;
    fImpEstoque.dbTipoE.visible := true;
    fImpEstoque.dbData.visible  := true;
    fImpEstoque.lTitulo.Caption := 'Estoque Detalhado';
    fImpEstoque.bdSomaGrupo.Visible := True;
  end
  else
  begin
    fImpEstoque.lLote.visible    := true;
    fImpEstoque.dbLote.visible   := true;
    fImpEstoque.lLote.Left       := fImpEstoque.lTipoE.left;
    fImpEstoque.dbLote.Left      := fImpEstoque.dbTipoE.left;
    fImpEstoque.RLDBText12.Width := 420;
    fImpEstoque.RLLabel2.visible := false;
    fImpEstoque.lData.visible    := False;
    fImpEstoque.lTipoE.visible   := False;
    fImpEstoque.dbData.visible   := False;
    fImpEstoque.dbTipoE.visible  := False;
    fImpEstoque.lTitulo.Caption  := 'Estoque';
    fImpEstoque.bdSomaGrupo.Visible := False;

  end;

  if trim(EdCod.Text) <> '' then
    fImpEstoque.RLDBResult1.Visible := true
  else
    fImpEstoque.RLDBResult1.Visible := false;

  //filtros
  if cktodas.Checked then
     fImpEstoque.lPeriodo.caption := 'Data Movimento: ' + datetostr(eddt1.date) +' até ' + datetostr(eddt2.date);

  fImpEstoque.lempresa.caption := 'Empresa: ' + cbEmp.Text;

  if cbEst.ItemIndex > 0 then
     fImpEstoque.lestoque.caption := 'Estoque: ' + cbEst.Text;

  if rdTipo.ItemIndex > 0 then
     fImpEstoque.ltipo.caption := 'Tipo: ' + rdtipo.Items.Strings[rdtipo.ItemIndex];

  if Trim(edCod.Text) <> '' then
     fImpEstoque.lproduto.caption := rdtipo.Items.Strings[rdtipo.ItemIndex] + ': ' +
               trim(edCod.text) + ' - ' + trim(eddesprod.text) ;

  if cbgrupo.Text <> 'Todos' then
     fImpEstoque.lgrupo.caption := 'Grupo: ' + trim(cbGrupo.Text);
  //

  vEnv_EmailDest := '';
  vEnv_Report    := fImpEstoque.rpEstoque;
  fImpEstoque.rpEstoque.PreviewModal;
  fImpEstoque.Free;
end;


procedure TfEstoque.acInvExecute(Sender: TObject);
begin

    Application.CreateForm(TfInventario, fInventario);
    if copy( cbEmp.Text, 1,1) = '0' then
       fInventario.emp := 1
    else
       fInventario.emp := strtoint(copy( cbEmp.Text, 1,1));
    fInventario.CDS.Close;
    fInventario.CDS.CreateDataSet;

    qEstoque.First;
    while qEstoque.Eof = false do
    begin

      fInventario.CDS.Append;
      fInventario.CDS.FieldByName('ID').asinteger        := qEstoqueid.AsInteger;
      fInventario.CDS.FieldByName('referencia').AsString := qEstoquereferencia.AsString;
      fInventario.CDS.FieldByName('descricao').AsString  := qEstoquedescricao.AsString;
      fInventario.CDS.FieldByName('tipo').AsString       := qEstoquetipo.AsString;
      fInventario.CDS.FieldByName('tp_prod').AsString    := qEstoquetp_prod.AsString;
      fInventario.CDS.FieldByName('qatual').asfloat      := qEstoqueQtd.asfloat;
      fInventario.CDS.FieldByName('qnovo').asfloat       := 0;
      fInventario.CDS.FieldByName('x').AsString          := 'F';
      fInventario.CDS.post;

      qEstoque.Next;
    end;

    fInventario.CDS.First;
    fInventario.ShowModal;
    fInventario.Free;

    acOk.Execute;

end;

procedure TfEstoque.acOkExecute(Sender: TObject);
var
  vDt, Emp, vCod, gru : integer;
  vDt1, vDt2 : TDate;
  vTotal, vTotalM : real;
  vTp, sql, vEst, vTipo, vTpMov, vStatus : String;
begin


  Emp :=  strtoint(copy(cbEmp.Text,1,1));


  if (cbGrupo.Enabled) and (cbgrupo.KeyValue > 0) then
     gru := cbGrupo.KeyValue
  else
     gru := 0;

  edTotal.Clear;
  edTotalM.Clear;
  vTotal  := 0;
  vTotalM := 0;
  edTotal.Visible  := false;
  edTotalM.Visible := false;
  label2.Visible   := false;
  label5.Visible   := false;

  if ckTodas.Checked then
     vDt := 0
  else
     vDt := 1;
  vDt1 := edDt1.date;
  vDt2 := edDt2.date;

  if trim(EdCod.Text) <> '' then
     vCod := buscaprodutopor
  else
     vCod := 0;

  case rdTipo.ItemIndex of
    0: vTp := 'T';
    1: vTp := 'P';
    2: vTp := 'S';
    3: vTp := 'M';
  end;

  case cbEst.ItemIndex of
    0: vEst := ' ';
    1: vEst := ' having (sum(coalesce(estoque.Quantidade,0)) > 0) ';
    2: vEst := ' having (sum(coalesce(estoque.Quantidade,0)) < 0) ';
    3: vEst := ' having (sum(coalesce(estoque.Quantidade,0)) = 0) ';
  end;

  case cbTipo.itemIndex of
    0: vTipo := 'T';
    1: vTipo := 'E';
    2: vTipo := 'S';
    3: vTipo := 'A';
  end;

  case rdStatus.itemIndex of
    0: vStatus := 'T';
    1: vStatus := 'S';
    2: vStatus := 'N';
  end;

  vTpMov := cbMov.text;

  qEstoqueLote.Close;
  qEstoque.Close;
  if ckDet.Checked then
  begin

    sql := ' select produto.id, produto.descricao, estoque.data, '+
           '  case coalesce( estoque.tpmov, produto.tipo ) '+
           '  when ''P'' then ''Produto'' when ''M'' then ''Matéria-Prima''  '+
           '  end tp_prod, produto.referencia, produto.barras, coalesce(estoque.tpmov,produto.tipo) tipo, '+
           '  estoque.Tipo tpestqoue, '+
           '  max(case when estoque.idvenda > 0 then ''Pedido''  '+
           '           when estoque.idcompra > 0 then ''Compra'' '+
           '           when estoque.idnf > 0 then ''Nota Fiscal''  '+
           '           when (estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or (estoque.idOp_M > 0) then  ''Op'' '+
           '           when estoque.iddev > 0 then ''Devolução'' ' +
           '           when estoque.op_manual = ''S'' then ''OP Manual'''+
           '           else ''Ajuste''  end) tp_mov, '+
           '  sum(coalesce(estoque.Quantidade,0)) Qtd, '+
           '  sum( coalesce(case when produto.tipo = ''M'' then coalesce(produto.ft_conv_qtde, 1)*estoque.Quantidade  '+
           '                     when (produto.tipo = ''P'') and (coalesce(produto.multiplo,0) > 0 ) then estoque.Quantidade / produto.multiplo '+
           '                     else estoque.Quantidade end,0)) Qtd_cx, '+
           '  max(case when estoque.idvenda > 0 then estoque.idvenda  '+
           '  when estoque.idcompra > 0 then estoque.idcompra when estoque.idnf > 0 then nf.nf  '+
           '  when (estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or '+
           ' (estoque.idOp_M > 0) then  estoque.idop '+
           '  when estoque.iddev > 0 then estoque.iddev ' +
           '  else 0 end ) Mov, concat(produto.idcor, '' - '', cor.descricao) cor, produto.tamanho,   ' +
           ' coalesce((select sum(venda_i.Qtd) qtdvenda from venda_i  '+
           ' inner join venda on venda.id = venda_i.idvenda  '+
           ' where venda_i.idproduto = produto.id and venda.status in (''D'', ''G'', ''H'')),0) qtdVendida, '+
           ' sum(coalesce(estoque.Quantidade,0)) - coalesce((select sum(venda_i.Qtd) qtdvenda from venda_i  '+
           ' inner join venda on venda.id = venda_i.idvenda  '+
           ' where venda_i.idproduto = produto.id and venda.status in (''D'', ''G'', ''H'')),0)  QtdDisponivel '+
           ' from produto  '+
           ' left join estoque on produto.id = estoque.idproduto and estoque.tpmov in (''P'',''M'')  and '+
           '   ((:dd = 0) or (estoque.data between :di and :df)) and   ((:emp = 0) or (estoque.idemp = :emp)) '+
           ' left join nf on nf.id = estoque.idnf ' +
           ' left join cor on cor.id = produto.idcor '+
           ' Where produto.ex = 0 and  estoque.tpmov in (''P'', ''M'') and '+
           '       ((:cod = 0) or (produto.id = :cod)) and '+
           '       ((:tp = ''T'') or ((coalesce(estoque.tpmov, '''') = :tp) and (coalesce(produto.tipo,'''') = :tp))  ) and '+
           '       ((:gru = 0) or (produto.idgrupo = :gru)) and '+
           '       ((:tipo = ''T'') or (estoque.tipo = :tipo))   and '+
           '       ((:st = ''T'') or (produto.ativo = :st)) and '  +

           ' ((:tpmov = ''Todos'') or ( ( ((:tpmov = ''Pedido'') and (estoque.idvenda > 0)) or (:tpmov = ''Compra'') and (estoque.idcompra > 0 )) or '+
           '  ((:tpmov = ''Nota Fiscal'') and (estoque.idnf > 0)) or ((:tpmov = ''Op'') and ((estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or (estoque.idOp_M > 0))) or '+
           '  ((:tpmov = ''Devolução'') and (estoque.iddev > 0)) or ((:tpmov = ''OP Manual'') and (estoque.op_manual = ''S'')) or '+
           '  ((:tpmov = ''Ajuste'') and '+
           '  (coalesce(estoque.idvenda,0) = 0 and coalesce(estoque.idcompra,0) = 0  and  '+
           '   coalesce(estoque.idnf,0) = 0 and coalesce(estoque.idop,0) = 0 and coalesce(estoque.idSubop,0) = 0 and coalesce(estoque.idSubop_p,0) = 0 and coalesce(estoque.idOp_M,0) = 0 and '+
           '   coalesce(estoque.iddev,0) = 0 and estoque.op_manual = ''N''))) ) '+

           ' group by cor.descricao, produto.idcor, produto.tamanho, produto.id, produto.descricao, produto.referencia, produto.barras, estoque.tpmov , estoque.data, estoque.tipo, produto.tipo, '+
           ' case when estoque.idvenda > 0 then estoque.idvenda  '+
           '  when estoque.idcompra > 0 then estoque.idcompra when estoque.idnf > 0 then nf.nf  '+
           '  when (estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or '+
           ' (estoque.idOp_M > 0) then  estoque.idop '+
           '  when estoque.iddev > 0 then estoque.iddev ' +
           '  else 0 end '+
           vEst +
           ' union all '+
           ' select sa.id, sa.descricao, estoque.data, ''Semiacabado'' tp_prod, sa.referencia, sa.barras, '+
           ' estoque.tpmov tipo, estoque.Tipo tpestqoue, max(case when estoque.idvenda > 0 then ''Pedido''  '+
           ' when estoque.idcompra > 0 then ''Compra''  when estoque.idnf > 0 then ''Nota Fiscal'' '+
           ' when (estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or (estoque.idOp_M > 0) then '+
           ' ''Op'' '+
           ' when estoque.iddev > 0 then ''Devolução'' ' +
           ' when estoque.op_manual = ''S'' then ''OP Manual'' else ''Ajuste'' end) tp_mov, sum(estoque.Quantidade) Qtd, '+
           ' sum( coalesce(case when coalesce(sa.multiplo,0) > 0 then '+
           '         estoque.Quantidade / sa.multiplo   '+
           ' else   '+
           '   0 end,0) ) Qtd_cx, '+
           '  (case when estoque.idvenda > 0 then estoque.idvenda  '+//max
           '  when estoque.idcompra > 0 then estoque.idcompra when estoque.idnf > 0 then nf.nf  '+
           '  when (estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or '+
           ' (estoque.idOp_M > 0) then  estoque.idop '+
           '  when estoque.iddev > 0 then estoque.iddev ' +
           '  else 0 end ) Mov, concat(sa.idcor, '' - '', cor.descricao) cor, sa.tamanho,  0 QtdVendida, coalesce(sum(estoque.Quantidade),0) QtdDisponivel ' +
           ' from estoque '+
           ' left join semi_acabado sa on sa.id = estoque.idproduto '+
           ' left join nf on nf.id = estoque.idnf ' +
           ' left join cor on cor.id = sa.idcor '+
           ' Where sa.ex = 0 and estoque.tpmov = ''S'' and ((:dd = 0) or (estoque.data between :di and :df)) and '+
           '       ((:cod = 0) or (sa.id = :cod)) and ((:tp = ''T'') or (estoque.tpmov = :tp))  and '+
           '       ((:emp = 0) or (estoque.idemp = :emp)) and '+
           '       ((:tipo = ''T'') or (estoque.tipo = :tipo))  and '+

           ' ((:tpmov = ''Todos'') or ( ( ((:tpmov = ''Pedido'') and (estoque.idvenda > 0)) or (:tpmov = ''Compra'') and (estoque.idcompra > 0 )) or '+
           '  ((:tpmov = ''Nota Fiscal'') and (estoque.idnf > 0)) or ((:tpmov = ''Op'') and ((estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or (estoque.idOp_M > 0))) or '+
           '  ((:tpmov = ''Devolução'') and (estoque.iddev > 0)) or ((:tpmov = ''OP Manual'') and (estoque.op_manual = ''S'')) or '+
           '  ((:tpmov = ''Ajuste'') and '+
           '  (coalesce(estoque.idvenda,0) = 0 and coalesce(estoque.idcompra,0) = 0  and  '+
           '   coalesce(estoque.idnf,0) = 0 and coalesce(estoque.idop,0) = 0 and coalesce(estoque.idSubop,0) = 0 and coalesce(estoque.idSubop_p,0) = 0 and coalesce(estoque.idOp_M,0) = 0 and '+
           '   coalesce(estoque.iddev,0) = 0 and estoque.op_manual = ''N''))) ) '+

           ' group by sa.idcor, cor.descricao, sa.tamanho, sa.referencia, sa.id, sa.descricao, sa.barras, estoque.tpmov ,  estoque.data, estoque.tipo, (case when estoque.idvenda > 0 then estoque.idvenda  '+//max
           '  when estoque.idcompra > 0 then estoque.idcompra when estoque.idnf > 0 then nf.nf  '+
           '  when (estoque.idop > 0) or (estoque.idSubop > 0) or (estoque.idSubop_p > 0) or '+
           ' (estoque.idOp_M > 0) then  estoque.idop '+
           '  when estoque.iddev > 0 then estoque.iddev ' +
           '  else 0 end ) '+
           vEst +
           ' order by ' + campo + ' ' + ordem;

    qEstoqueLote.SQL.Clear;
    qEstoqueLote.SQL.Add(sql);

    dsEstoque.DataSet := qEstoqueLote;
    grEstoque.Columns[6].Visible := true; //id
    grEstoque.Columns[7].Visible := true; //Mov
    grEstoque.Columns[8].Visible := true; //Tipo Est
    grEstoque.Columns[11].Visible := true; //data
    grEstoque.Columns[12].Visible := false; //QtdVendida
    grEstoque.Columns[13].Visible := false; //Qtd Disponivel

    qEstoqueLote.ParamByName('dd').AsInteger  := vDt;
    qEstoqueLote.ParamByName('di').AsDate     := vDt1;
    qEstoqueLote.ParamByName('df').AsDate     := vDt2;
    qEstoqueLote.ParamByName('cod').value     := vCod;
    qEstoqueLote.ParamByName('tp').value      := vTp;
    qEstoqueLote.ParamByName('emp').value     := Emp;
    qEstoqueLote.ParamByName('gru').value     := gru;
    qEstoqueLote.ParamByName('tipo').value    := vTipo;
    qEstoqueLote.ParamByName('tpmov').value   := vTpMov;
    qEstoqueLote.ParamByName('st').value      := vStatus;
    qEstoqueLote.Open;

    if trim(EdCod.Text) <> '' then
    begin
      qEstoqueLote.First;
      while not qEstoqueLote.Eof do
      begin
        vTotal := vTotal + qEstoqueLoteQTD.AsFloat;
        qEstoqueLote.Next;
      end;
    end;
  end
  else
  begin

    sql := ' select produto.id, produto.descricao, case produto.tipo when ''P'' then ''Produto''  '+
           ' when ''M'' then ''Matéria-Prima'' end tp_prod, produto.referencia, produto.barras, '+
           '  produto.tipo tipo, sum(coalesce(estoque.Quantidade,0)) Qtd, '+
           ' sum( coalesce(case when produto.tipo = ''M'' then coalesce(produto.ft_conv_qtde, 1)*estoque.Quantidade  '+
           '                     when (produto.tipo = ''P'') and (coalesce(produto.multiplo,0) > 0 ) then estoque.Quantidade / produto.multiplo '+
           '                     else estoque.Quantidade end,0)) Qtd_cx, concat(produto.idcor, '' - '', cor.descricao) cor, produto.tamanho, '+
           ' coalesce((select sum(venda_i.Qtd) qtdvenda from venda_i  '+
           ' inner join venda on venda.id = venda_i.idvenda  '+
           ' where venda_i.idproduto = produto.id and venda.status in (''D'', ''G'', ''H'') '+
           ' ),0) qtdVendida, '+
           ' sum(coalesce(estoque.Quantidade,0)) - coalesce((select sum(venda_i.Qtd) qtdvenda from venda_i  '+
           ' inner join venda on venda.id = venda_i.idvenda  '+
           ' where venda_i.idproduto = produto.id and venda.status in (''D'', ''G'', ''H'') '+
           ' ),0)  QtdDisponivel '+
           ' from produto '+
           ' left join estoque on estoque.idproduto = produto.id and estoque.tpmov in (''P'',''M'') and '+
           '  ((:emp = 0) or (estoque.idemp = :emp))  and ((:dd = 0) or (estoque.data between :di and :df)) '+
           ' left join cor on cor.id = produto.idcor '+
           ' Where produto.ex = 0 and estoque.tpmov in (''P'',''M'') and  '+
           '     ((:cod = 0) or (produto.id = :cod)) and '+
           '     ((:tp = ''T'') or (coalesce(estoque.tpmov, '''') = :tp) and (coalesce(produto.tipo,'''') = :tp)  ) and '+
           '     ((:gru = 0) or (produto.idgrupo = :gru)) and '+
           '     ((:st = ''T'') or (produto.ativo = :st))  '  +
           ' group by produto.id, produto.descricao, produto.referencia, produto.barras, produto.tipo, cor.descricao, produto.idcor, produto.tamanho '+
           vEst +
           ' union all '+
           ' select sa.id, sa.descricao, ''Semiacabado'' tp_prod,  sa.referencia,	sa.barras, '+
           ' estoque.tpmov tipo, ' +
           ' sum( case when ((:emp = 0) or (estoque.idemp = :emp)) then  estoque.Quantidade else 0 end) Qtd, ' +
           ' sum( coalesce(case when coalesce(sa.multiplo,0) > 0 then '+
           '           case when ((:emp = 0) or (estoque.idemp = :emp)) then  estoque.Quantidade else 0 end / sa.multiplo  '+
           '   else  '+
           '     0 end,0) ) Qtd_cx, concat(sa.idcor, '' - '', cor.descricao) cor, sa.tamanho, ' +
           ' 0 Qtdvendida, sum( case when ((:emp = 0) or (estoque.idemp = :emp)) then  estoque.Quantidade else 0 end) QtdDisponivel '+
           ' from semi_acabado sa  ' +
           ' left join estoque on sa.id = estoque.idproduto and estoque.tpmov = ''S'' ' +
           ' left join cor on cor.id = sa.idcor'+
           ' Where sa.ex = 0 and estoque.tpmov = ''S'' and '  +
           '       ((:dd = 0) or (estoque.data between :di and :df)) and '+
           '       ((:cod = 0) or (sa.id = :cod)) and '+
           '       ((:tp = ''T'') or (:tp = ''S'' and sa.id > 0))   '+
           ' group by sa.id, sa.descricao, sa.barras, estoque.tpmov, cor.descricao, sa.idcor, sa.tamanho, sa.referencia '+
           vEst +
           ' order by ' + campo + ' ' + ordem;

    qEstoque.SQL.Clear;
    qEstoque.SQL.Add(sql);

    dsEstoque.DataSet := qEstoque;
    grEstoque.Columns[6].Visible := false; //id
    grEstoque.Columns[7].Visible := false; //mov
    grEstoque.Columns[8].Visible := false; //tipo Est
    grEstoque.Columns[11].Visible := false; //data
    grEstoque.Columns[12].Visible := true; //QtdVendida
    grEstoque.Columns[13].Visible := true; //Qtd Disponivel

    qEstoque.ParamByName('dd').AsInteger  := vDt;
    qEstoque.ParamByName('di').AsDate     := vDt1;
    qEstoque.ParamByName('df').AsDate     := vDt2;
    qEstoque.ParamByName('cod').value     := vCod;
    qEstoque.ParamByName('tp').value      := vTp;
    qEstoque.ParamByName('emp').value     := Emp;
    qEstoque.ParamByName('gru').value     := gru;
    qEstoque.ParamByName('st').value      := vStatus;

    qEstoque.Open;

    if trim(EdCod.Text) <> '' then
    begin
      qEstoque.First;
      while not qEstoque.Eof do
      begin
        vTotal  := vTotal  + qEstoqueQTD.AsFloat;
        vTotalM := vTotalM + qEstoqueQTD_cx.AsFloat;
        qEstoque.Next;
      end;
    end;

  end;

  if trim(EdCod.Text) <> '' then
  begin
    edTotal.Visible  := true;
    label2.Visible   := true;
    edTotal.Text     := FormatFloat('###,##0.#', vTotal);

    edTotalM.Visible := true;
    label5.Visible   := true;
    edTotalM.Text    := FormatFloat('###,##0.#', vTotalM);
  end;

end;

procedure TfEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not ( (ActiveControl = EdCod) or (ActiveControl is TDBGrid) or (ActiveControl = EdCod)) then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;
end;

end.
