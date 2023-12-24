unit uDevolucao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, db,
  jpeg, ActnList,  XiButton,   OleCtrls, winInet, math, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, ZAbstractTable,
  System.Actions;

type
  TfDevolucao = class(TForm)
    ActionList1: TActionList;
    acExcluir: TAction;
    acSalvar: TAction;
    acSair: TAction;
    dT: TDataSource;
    dL: TDataSource;
    DBGrid1: TDBGrid;
    XiButton4: TXiButton;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    T: TZQuery;
    L: TZQuery;
    upL: TZUpdateSQL;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Image1: TImage;
    lCliente: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    TId: TIntegerField;
    TData: TDateTimeField;
    TIdVendedor: TIntegerField;
    TIdCliente: TIntegerField;
    TValor: TFloatField;
    TIdUsuario: TIntegerField;
    Tx: TWideStringField;
    TEx: TIntegerField;
    LId: TIntegerField;
    LIdProduto: TIntegerField;
    LTipo: TWideStringField;
    LQtd: TFloatField;
    LUnit: TFloatField;
    LTotal: TFloatField;
    Lx: TWideStringField;
    LUnidade: TWideStringField;
    Ldescricao: TWideStringField;
    Label7: TLabel;
    TObs: TWideMemoField;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Lbarras: TWideStringField;
    Lreferencia: TWideStringField;
    Lqtd_cx: TFloatField;
    Tidemp: TIntegerField;
    Label24: TLabel;
    Tnome: TWideStringField;
    TIdvenda: TIntegerField;
    Tchave: TWideStringField;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    XiButton3: TXiButton;
    acVenda: TAction;
    Label3: TLabel;
    DBEdit5: TDBEdit;
    TStatus: TWideStringField;
    LIdDev: TIntegerField;
    LtipoProd: TWideStringField;
    Lmultiplo: TFloatField;
    edCodcli: TDBEdit;
    EdVend: TDBEdit;
    qPed: TZQuery;
    qPedId: TIntegerField;
    qPedData: TDateTimeField;
    qPedIdVendedor: TIntegerField;
    qPedIdCliente: TIntegerField;
    qPedTotal: TFloatField;
    qPedNotaFiscal: TIntegerField;
    qPedidemp: TIntegerField;
    qPedIdProduto: TIntegerField;
    qPedTipo: TWideStringField;
    qPedQtd: TFloatField;
    qPedvUnitLiq: TFloatField;
    qPedvTotLiq: TFloatField;
    qPedqtd_cx: TFloatField;
    edNomCli: TEdit;
    edNomVend: TEdit;
    qPednomecli: TWideStringField;
    qPednomevend: TWideStringField;
    qPednf: TIntegerField;
    qPedchave: TWideStringField;
    lNF: TLabel;
    uT: TZUpdateSQL;
    Tidnf_dev: TIntegerField;
    Tnomevend: TWideStringField;
    Lidvenda_i: TIntegerField;
    qPedidvenda_i: TIntegerField;
    qPedstatus: TWideStringField;
    qPedex: TIntegerField;
    Lqtd_dev: TFloatField;
    Ltotal_dev: TFloatField;
    Label11: TLabel;
    EdCod: TEdit;
    Label12: TLabel;
    edDesc: TEdit;
    Label18: TLabel;
    edQtdCx: TEdit;
    Label19: TLabel;
    edMultiplo: TEdit;
    edQtd: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    edUnit: TEdit;
    edTotal: TEdit;
    Label10: TLabel;
    qPro: TZQuery;
    qProid: TIntegerField;
    qProcod_manual: TIntegerField;
    qProdescricao: TWideStringField;
    qProtipo: TWideStringField;
    qProvalor: TFloatField;
    qProroyalties: TFloatField;
    qProbarras: TWideStringField;
    qProreferencia: TWideStringField;
    qProcubagem: TFloatField;
    qPromultiplo: TFloatField;
    qProcustofinal: TFloatField;
    qProunidade_nfe: TWideStringField;
    qPromargem: TFloatField;
    qProqtdestoque: TFloatField;
    dPro: TDataSource;
    GridPesqPro: TDBGrid;
    Lqtd_cx_dev: TFloatField;
    gdPesq: TDBGrid;
    gdVend: TDBGrid;
    Lunit_dev: TFloatField;
    Tpcomissao: TFloatField;
    qPedmultiplo: TFloatField;
    cbEmp: TDBLookupComboBox;
    Label9: TLabel;
    qPedvcusto: TFloatField;
    Lvcusto: TFloatField;
    lFantasia: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acExcluirExecute(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LAfterPost(DataSet: TDataSet);
    procedure LNewRecord(DataSet: TDataSet);
    procedure TNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure TBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdVendKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit11Exit(Sender: TObject);
    procedure acVendaExecute(Sender: TObject);
    procedure EdCodExit(Sender: TObject);
    procedure edDescChange(Sender: TObject);
    procedure edDescKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridPesqProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridPesqProKeyPress(Sender: TObject; var Key: Char);
    procedure edQtdCxExit(Sender: TObject);
    procedure edQtdCxKeyPress(Sender: TObject; var Key: Char);
    procedure edUnitExit(Sender: TObject);
    procedure edUnitKeyPress(Sender: TObject; var Key: Char);
    procedure edTotalEnter(Sender: TObject);
    procedure Lqtd_devValidate(Sender: TField);
    procedure Lqtd_cx_devValidate(Sender: TField);
    procedure edCodcliExit(Sender: TObject);
    procedure edCodcliKeyPress(Sender: TObject; var Key: Char);
    procedure edNomCliChange(Sender: TObject);
    procedure edNomCliExit(Sender: TObject);
    procedure edNomCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure EdVendKeyPress(Sender: TObject; var Key: Char);
    procedure EdVendExit(Sender: TObject);
    procedure edNomVendChange(Sender: TObject);
    procedure edNomVendExit(Sender: TObject);
    procedure edNomVendKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdVendKeyPress(Sender: TObject; var Key: Char);
    procedure LBeforePost(DataSet: TDataSet);
    procedure Lunit_devValidate(Sender: TField);

  private
    buscaprodutopor : Integer;
    procedure addItem;
    procedure Financeiro;
    procedure calculaTotal;
    procedure reciboCredito(cod: integer);
    { Private declarations }
  public
    Sair : String;
    pROCEDURE SOMAITENS;
  end;

var
  fDevolucao: TfDevolucao;
  CodDev    : Integer;
  mudaFoco  : String;
  Inserida  : String;
  alterando : string;

implementation

uses Udm, uFuncao, uNF, uRelFinanceiro, uGridDev;

{$R *.dfm}


procedure TfDevolucao.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not ((ActiveControl is TDBMemo) or
                       (ActiveControl is TDBGrid)  or
                       (ActiveControl = DBedit4 )  ) then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;

end;

procedure TfDevolucao.FormShow(Sender: TObject);
begin
  WindowState := wsMaximized;

  if Inserida = 'S' then
     Exit;

  if StatusDev = 'I' then
  begin
    Inserida := 'S';
    T.Close;
    T.ParamByName('Id').Value := 0;
    T.Open;
    T.Insert;

    L.Close;
    L.ParamByName('Id').Value := TID.Value;
    L.Open;
  end
  else
  IF StatusDev = 'E' THEN
  begin
    Inserida := 'S';
    T.Close;
    T.ParamByName('Id').Value := CodDev;
    T.Open;

    L.Close;
    L.ParamByName('Id').Value := TID.Value;
    L.Open;
    T.Edit;

    edNomCli.Text  := Tnome.Text;
    edNomVend.Text := Tnomevend.Text;
    gdPesq.Visible := false;
    gdVend.Visible := false;

    SOMAITENS;

  end;


end;

procedure TfDevolucao.acExcluirExecute(Sender: TObject);
begin
 if not (LidProduto.asInteger > 0 ) then
    Exit;

 IF Application.MessageBox('Confirma exclusão de produto?', 'Confirmação', MB_YESNO)=idno then
  Exit;

  try
     Execsql('update venda_i set devolvido = ''N'' where id = ' + Lidvenda_i.Text );
     sleep(100);

     ExecSql('delete from Dev_i where id = ' + LId.Text );
     sleep(200);
  finally

     L.Close;
     L.ParamByName('id').Value := Tid.Value;
     L.Open;

     SOMAITENS;
  end;

end;

procedure TfDevolucao.acSalvarExecute(Sender: TObject);
var
  vX : Char;
begin

 if L.RecordCount = 0 then exit;

 if L.IsEmpty then exit;

 L.Last;
 L.First;
 while L.Eof = false do
 begin
    if Lidproduto.AsInteger = 0 then
    begin
         L.Delete;
         L.First;
    end;
    L.Next;
 end;
 L.First;

 SelectNext(ActiveControl, True, True);

 if Application.MessageBox('Confirma devolução?', 'Confirmação', MB_YESNO)=idno then
    Exit;

   //limpa itens que nao serao devolvidos
   L.First;
   while L.Eof = false do
   begin
       if (Lidproduto.AsInteger = 0) or not (Lqtd_dev.AsFloat > 0) then
       begin
          L.Delete;
          L.First;
       end
       else
          L.Next;
   end;
   L.ApplyUpdates;
   sleep(100);

   L.Close;
   L.ParamByName('Id').Value := TID.Value;
   L.Open;
   L.First;

   TX.Text           := 'F';
   Tex.Value         := 0;
   TIdUsuario.Value  := DM.qUserId.Value;
   CodDev            := TId.Value;

   if T.State in [dsedit, dsinsert] then
      T.Post;
   T.ApplyUpdates;

   if Tid.AsInteger > 0 then
      Execsql('delete from estoque where iddev = '+ Tid.Text );

   // estoque
   while L.Eof = false do
   begin
      if Lqtd_dev.AsFloat > 0 then
      begin        //Nilton, volta o estoque da empresa 1, NF que volta para a empresa Fiscal 08/06/2022
         Estoque( {Tidemp.AsInteger}1, 0, 0, 0, 0, 0, Lidproduto.Value, 0, Tid.AsInteger, LTipo.Value, 'E', Lqtd_dev.Value,0 );
         sleep(100);
         Execsql('update venda_i set devolvido = ''S'' where id = ' + Lidvenda_i.Text );
      end;
      L.Next;
   end;

   // financeiro
   financeiro;

   ImprimirDev( CodDev );

   sleep(100);


   if Application.MessageBox('Deseja emitir nota de entrada?', 'Confirmação', mb_yesno) = idYes  then
   begin
      vX := #13;
      if not FormEstaCriado(TfNf) then
      begin
         if (StatusDev = 'E') and (Tidnf_dev.AsInteger > 0) then
         begin
            StatusNF := 'E';
            CodNF    := Tidnf_dev.AsInteger;
         end
         else
         begin
            StatusNF := 'I';
            CodNF    := 0;
         end;
         Application.CreateForm(TfNf, fNF);
         fNF.nf_entrada         := 'S';
         fNF.edPedido.Text      := TID.AsString;
         fNF.edPedidoKeyPress(application, vX );
      end;
      fnf.Show;
   end;

   Close;

end;

procedure TfDevolucao.acVendaExecute(Sender: TObject);
begin
  if TIdvenda.AsInteger = 0 then
     Exit;

  qPed.Close;
  qPed.ParamByName('id').Value := TIdvenda.AsInteger;
  qPed.Open;

  if qPed.IsEmpty then
  begin
     Application.MessageBox('Venda não localizada ou já devolvida. Por favor, verifique!', 'Atenção' );
     Tidvenda.AsInteger := 0;
     Dbedit3.SetFocus;
     exit;
  end;

  if (dm.qParametronao_usar_expedicao.Text = 'N') and (trim(qPedStatus.Text) = 'D') then
  begin
     Application.MessageBox('Venda não expedida. Por favor, verifique!', 'Atenção' );
     Tidvenda.AsInteger := 0;
     Dbedit3.SetFocus;
     exit;
  end;

  if (trim(qPedStatus.Text) = 'C') or (qPedEx.asinteger = 1) then
  begin
     Application.MessageBox('Venda cancelada. Por favor, verifique!', 'Atenção' );
     Tidvenda.AsInteger := 0;
     Dbedit3.SetFocus;
     exit;
  end;

  TIdVendedor.AsInteger := qPedIdVendedor.AsInteger;
  edVendExit(application);
  TIdCliente.AsInteger  := qPedIdCliente.AsInteger;
  Tidemp.AsInteger      := qPedidemp.AsInteger; //1; voltado para a empresa do pedido
  TValor.asfloat        := qPedTotal.AsFloat;
  Tchave.Text           := qPedchave.Text;
  Tnome.Text            := qPednomecli.Text;
  edNomCli.text         := qPednomecli.Text;
  edNomVend.text        := qPednomevend.Text;
  lNF.Caption := 'Nota Fiscal:' + formatfloat('000000', qPednf.AsInteger);

  while qPed.Eof = false do
  begin
     additem;
     qPed.Next;
  end;

  L.Close;
  L.ParamByName('id').Value := Tid.Value;
  L.Open;
  sleep(100);
  gdPesq.Visible := false;
  gdVend.Visible := false;


end;

procedure TfDevolucao.DBEdit11Exit(Sender: TObject);
begin
  somaitens;
end;

procedure TfDevolucao.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then begin
    try
      StrToDate(DBEdit4.Text);
      except on EConvertError do
      begin
        Application.MessageBox('Data invalida. Por favor, verifique!', 'Atenção');
        dbedit4.Text := datetostr(Date);
        dbedit4.SetFocus;
      end;
    end;
 end;

end;

procedure TfDevolucao.EdVendExit(Sender: TObject);
begin
   if EdVend.Text <> '' then
   begin
    //EdNomCli.Clear;

    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add('Select Id, Nome, coalesce(comissao,0) comissao from Vendedor where EX = 0 and ativo = ''S'' AND Id = '+EdVend.Text);
    DM.qSelect.Open;
    if not DM.qSelect.IsEmpty then
    begin
      edNomVend.OnChange := nil;
      EdNomVend.Text     := DM.qSelect.FieldByName('Nome').AsString;
      edNomVend.OnChange := edNomVendChange;
      Tidvendedor.text   := edVend.text;
      Tpcomissao.asFloat := dm.qSelect.FieldByName('comissao').asFloat;
      edCod.SetFocus;
    end
    else
    begin
      EdVend.Clear;
      EdNomVend.SetFocus;
    end;
  end;


end;

procedure TfDevolucao.EdVendKeyPress(Sender: TObject; var Key: Char);
begin
 somente_numero_sem_virgula(key);
end;

procedure TfDevolucao.edCodcliExit(Sender: TObject);
begin
  if EdCodCli.Text <> '' then
  begin
     EdNomCli.Clear;
     DM.qPesq.Close;
     DM.qPesq.SQL.Clear;
     DM.qPesq.SQL.Add(' Select cliente.Id, cliente.Nome, cliente.razao, cliente.ativo, cliente.idtabela, cliente.idvendedor, cliente.inadimplente '+
                     ' , cliente.idcomercial, cliente.idemp  '+
                     ' , coalesce(vendedor.ativo, ''S'') vend_ativo, coalesce(vendedor.ex, 0) vend_excluido ' +
                     ' from Cliente '+
                     ' left join vendedor on vendedor.id = cliente.idvendedor '+
                     ' where cliente.ativo = ''S'' and  cliente.EX = 0 AND cliente.Id = '+EdCodCli.Text );
     DM.qPesq.Open;
     if not DM.qPesq.IsEmpty then
     begin
       if (dm.qPesq.FieldByName('vend_ativo').asString = 'N') then
        begin
          application.MessageBox('Cliente com representante inativo. Não é possível inserir. Por favor, verifique!', 'Atenção');
          edCodCli.clear;
          EdNomCli.clear;
          TIdCliente.Clear;
          edCodCli.SetFocus;
          exit;
        end;

        if (dm.qPesq.FieldByName('vend_excluido').asInteger = 1) then
        begin
          application.MessageBox('Cliente com representante excluído. Não é possível inserir. Por favor, verifique!', 'Atenção');
          edCodCli.clear;
          EdNomCli.clear;
          TIdCliente.Clear;
          edCodCli.SetFocus;
          exit;
        end;

       if (DM.qPesq.FieldByName('idvendedor').asinteger > 0) then
       begin
           edVend.text := trim(DM.qPesq.FieldByName('idvendedor').text);
           edVendExit(Application);
       end;

       if (trim(edCodCli.Text) <> '1') or (trim(Tnome.text)= '') then
       begin
          edNomCli.OnChange  := nil;
          EdNomCli.Text      := DM.qPesq.FieldByName('razao').AsString;
          edNomCli.OnChange  := edNomCliChange;
          gdPesq.Visible     := false;
       end
       else
          EdNomCli.Text      := Tnome.text;

       Tidcliente.text       := edCodCli.text;
       Tnome.text            := DM.qPesq.FieldByName('razao').AsString;
       lFantasia.Caption     := DM.qPesq.FieldByName('Nome').AsString;

       if dm.qParametroclientes_repre.Text = 'N' then
       begin
          if trim(edCodcli.text) = '1' then
             edCod.SetFocus
          else
             edVend.SetFocus;
       end
       else
       begin
          edVend.Enabled    := false;
          edNomVend.Enabled := false;
          if trim(edCodcli.text) = '1' then
             edCod.SetFocus
          else
             EdCod.SetFocus;
       end;

     end
     else
     begin
        Application.MessageBox('Codigo não localizado/inativo. Por favor, verifique!','Atenção');
        EdCodCli.Clear;
        EdNomCli.SetFocus;
     end;

  end;

end;

procedure TfDevolucao.edCodcliKeyPress(Sender: TObject; var Key: Char);
begin
 somente_numero_sem_virgula(key);
end;

procedure TfDevolucao.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfDevolucao.EdCodExit(Sender: TObject);
begin
   if mudafoco = 'S' then
   begin
      mudafoco := 'N';
      exit;
   end;

   if (EdCod.Text <> '') then
   begin
         qPro.Close;
         qPro.ParamByName('emp').AsInteger := 1; //empresa matriz
         qPro.parambyname('cc').asinteger  := buscaProdutoPor;
         qPro.parambyname('cod').value     := trim(edCod.text);
         qPro.Open;

         if qPro.RecordCount > 0 then
         begin
            edDesc.onChange     := nil;
            edDesc.text         := qProDescricao.value;
            edDesc.onChange     := edDescChange;
            GridPesqPro.Visible := False;
            edQtdCx.Text        := formatfloat('#0', 1 );
            if qPromultiplo.AsFloat > 0 then
               edMultiplo.Text     := formatfloat('#0.###', qPromultiplo.AsFloat )
            else
               edMultiplo.Text     := formatfloat('#0.###', 1 );
            edQtd.Text          := formatfloat('#0.#', strtofloat(edQtdCx.text) * qPromultiplo.AsFloat );
            edUnit.Text         := formatfloat('#0.0000000', qProvalor.AsFloat );
            edTotal.Text        := formatfloat('#0.00', strtofloat(edQtd.text) * qProvalor.AsFloat );
            edQtdCx.SelectAll;
            edQtdCx.setfocus;
         end
         else
         begin
              Application.MessageBox('Produto não encontrado!','Atenção');
              EdCod.Clear;
              EdCod.SetFocus;
         end;
    end
    else
    begin
       edDesc.Clear;
       eddesc.SetFocus;
    end;

end;

procedure TfDevolucao.edDescChange(Sender: TObject);
begin
   if EdDesc.Text <> '' then
   begin
      GridPesqPro.Visible := True;
      posicionagrid(GridPesqpro, edCod);
      qPro.Close;
      qPro.ParamByName('emp').AsInteger := 1; //empresa matriz
      qPro.ParamByName('cc').AsInteger  := 3;
      qPro.ParamByName('pesq').Value    := '%' +trim(edDesc.text) +'%';
      qPro.Open;
      if qPro.IsEmpty then
       GridPesqPro.Visible := False;
      end
   else
     begin
      GridPesqPro.Visible := False;
     end;

end;

procedure TfDevolucao.edDescKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF Key = VK_DOWN THEN
 IF GridPesqPro.Visible THEN
  GridPesqPro.SetFocus;

end;

procedure TfDevolucao.edNomCliChange(Sender: TObject);
begin

  if (EdCodCli.Text = '') and (edNomCli.Text <> '')  then
  begin
    posicionagrid(gdPesq, edCodcli );
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' select Id, nome, razao, idtabela, idvendedor, inadimplente from Cliente '+
                     ' where ativo = ''S'' and ((nome like '+QuotedStr('%'+EdNomCli.Text+'%')+
                     ' ) or ( razao like '+QuotedStr('%'+EdNomCli.Text+'%')+ ' )) ' +
                     ' Order by nome ');
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
     gdPesq.Visible := False
    else
     gdPesq.Visible := True;

 END
 else
  gdPesq.Visible := False;
  lFantasia.Caption := '';
end;

procedure TfDevolucao.edNomCliExit(Sender: TObject);
begin
  if EdNomCli.Text = '' then
     gdPesq.Visible := false;

end;

procedure TfDevolucao.edNomCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus;

end;

procedure TfDevolucao.edQtdCxExit(Sender: TObject);
begin
  if (trim(edQtdCx.Text) <> '') and (trim(edMultiplo.Text) <> '') then
  begin
     {if pos('.', edQtdCx.Text) > 0 then
        edQtd.Text := formatfloat('###,###,##0.000', strtofloat(edQtdCx.Text * edMultiplo.Text) )
     else}
        edQtd.Text := floattostr(strtofloat(edQtdCx.Text) * strtofloat(edMultiplo.Text) );
  end;

end;

procedure TfDevolucao.edQtdCxKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfDevolucao.edTotalEnter(Sender: TObject);
begin

   try
     strtofloat(edQtd.text);
   except
     Exit;
   end;

   if trim(edCod.Text) = '' then
      Exit;

   if not (T.State in [dsinsert, dsedit]) then
      Exit;

   L.Append;
   LIdProduto.Value   := qProid.Value;
   LQtd.Value         := 0;
   LTotal.Value       := 0;
   LQtd_cx.Value      := 0;
   Lunit_dev.Value    := strtofloat(edunit.Text);
   LQtd_cx_dev.Value  := strtofloat(edQtdCx.text);
   Lqtd_dev.Value     := strtofloat(edQtd.text);
   Ltotal_dev.Value   := strtofloat(edunit.Text) * strtofloat(edQtd.text) ;
   LTipo.Value        := qProtipo.Value;
   Lidvenda_i.Value   := 0; // inclucao manual, sem vinculo com venda
   LMultiplo.Value    := qProMultiplo.asFloat;
   LvCusto.asFloat    := qProcustofinal.asFloat;
   L.Post;
   sleep(100);

   L.Close;
   L.ParamByName('id').Value := Tid.Value;
   L.Open;
   sleep(100);

   EdCod.Clear;
   edDesc.Clear;
   edQtdcx.Clear;
   edMultiplo.Clear;
   edQtd.Clear;
   edUnit.Clear;
   edTotal.Clear;
   GridPesqPro.Visible := false;
   edCod.SetFocus;

end;

procedure TfDevolucao.edUnitExit(Sender: TObject);
begin
   calculaTotal;

end;

procedure TfDevolucao.calculaTotal;
var
  qt, un, de : real;
begin

  if (trim(edQtd.Text) <> '')      then  qt := strtofloat(edQtd.Text)  else qt     := 0;
  if (trim(edUnit.Text) <> '')     then  un := strtofloat(edUnit.Text) else un     := 0;
  edTotal.Text := formatfloat('###,###,##0.00', (qt * un)) ;

end;

procedure TfDevolucao.edUnitKeyPress(Sender: TObject; var Key: Char);
begin
  somente_numero(key);
end;

procedure TfDevolucao.edNomVendChange(Sender: TObject);
begin
  if (edNomVend.Text <> '')  then
   begin
    posicionagrid(gdVend, edVend);
    DM.qSelect.Close;
    DM.qSelect.SQL.Clear;
    DM.qSelect.SQL.Add(' select Id, nome, coalesce(comissao,0) comissao from Vendedor '+
                     ' where ex = 0 and ativo = ''S'' and  nome like '+QuotedStr('%'+edNomVend.Text+'%')+
                     ' Order by nome ');
    DM.qSelect.Open;

    if DM.qSelect.IsEmpty then
     gdVend.Visible := False
    else
     gdVend.Visible := True;

  END
 else
  gdVend.Visible := False;

end;

procedure TfDevolucao.edNomVendExit(Sender: TObject);
begin
if EdNomVend.Text = '' then
  gdVend.Visible := false;

end;

procedure TfDevolucao.edNomVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 IF Key = VK_DOWN THEN
  if gdVend.Visible = True then
   gdVend.SetFocus;

end;

procedure TfDevolucao.acSairExecute(Sender: TObject);
begin

  if ((StatusDev = 'I') and (T.Active = true)) then
  begin
    if Application.MessageBox('Deseja cancelar devolução?','Confirmação', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
    begin
      if L.Active then
      begin
       sleep(200);
       if L.State in [dsedit, dsinsert] then
        L.Cancel;
        L.First;
        while L.Eof = false do
         begin
          L.Delete;

          L.First;
         end;
       T.Delete;
      end;
      L.ApplyUpdates;
      T.ApplyUpdates;
      Sair := 'S';
      CodDev := 0;
      Close;
    end;
  end
 else
 if (T.State in [dsedit]) and (StatusDev = 'E') then
 begin
    if Application.MessageBox('Deseja sair sem salvar?','Confirmação', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
    begin
      if L.RecordCount = 0 then
      begin
       L.Cancel;
       T.Delete;
      end
      else
      begin
        L.Cancel;
        T.Cancel;
      end;
      L.ApplyUpdates;
      T.ApplyUpdates;
      Sair := 'S';
      CodDev := 0;
      Close;
    end;
  end
  else
  begin
   Sair := 'S';
   CodDev := 0;
   Close;
  end;
end;


procedure TfDevolucao.FormActivate(Sender: TObject);
begin
  WindowState := wsMaximized;

end;

procedure TfDevolucao.FormClose(Sender: TObject; var Action: TCloseAction);
begin

 if T.Active then T.Close;
 if L.Active then L.Close;
 CodDev := 0;
 StatusDev := '';
 Action := caFree;
 fDevolucao := nil;


end;


procedure TfDevolucao.LAfterPost(DataSet: TDataSet);
BEGIN
  L.ApplyUpdates;
  if alterando = 'S' then
    exit;

  SOMAITENS;

end;

procedure TfDevolucao.LBeforePost(DataSet: TDataSet);
begin
  if LIdProduto.AsInteger = 0 then
  begin
     L.Cancel;
     L.ApplyUpdates;
  end;

end;

procedure TfDevolucao.LNewRecord(DataSet: TDataSet);
begin

 LId.Value     := InsereCodigo('Dev_I', 'Id');
 LIdDev.Value  := TID.Value;
 Lx.value      := 'F';


end;

procedure TfDevolucao.Lqtd_cx_devValidate(Sender: TField);
begin
  Lqtd_dev.AsFloat := Lqtd_cx_dev.AsFloat * Lmultiplo.AsFloat;
end;

procedure TfDevolucao.Lqtd_devValidate(Sender: TField);
begin
  if Lqtd_dev.AsFloat > 0 then
     Ltotal_dev.asfloat := Lqtd_dev.AsFloat * LUnit.AsFloat
  else
     Ltotal_dev.asfloat := 0;
end;

procedure TfDevolucao.Lunit_devValidate(Sender: TField);
begin
  if (Lqtd_dev.AsFloat > 0) and (LUnit_dev.AsFloat > 0) then
     Ltotal_dev.asfloat := Lqtd_dev.AsFloat * LUnit_dev.AsFloat
  else
     Ltotal_dev.asfloat := 0;
end;

procedure TfDevolucao.SOMAITENS;
VAR
  SOMA : Real;
begin

 SOMA := 0;
 alterando := 'S';
 L.First;
 WHILE L.Eof = FALSE DO
  BEGIN
     SOMA := SOMA + LTotal_dev.asfloat;
     L.Next;
  END;

 alterando := 'N';
 IF not (T.State IN [DSEDIT, DSINSERT]) THEN
  T.Edit;
 TValor.Value      := SOMA;

end;

procedure TfDevolucao.TNewRecord(DataSet: TDataSet);
begin
 TId.Value         := InsereCodigo('Dev', 'Id');
 TData.Value       := Date;
 Tex.Value         := 0;
 TIdUsuario.value  := dm.qUserId.Value;
 Tx.Value          := 'F';
 Tstatus.value     := 'A';
 TIdEmp.value      := 1;

end;


procedure TfDevolucao.FormCreate(Sender: TObject);
begin
 WindowState := wsMaximized;
 Inserida      := 'N';
 Sair          := 'N';

 //pesq produto
 if dm.qParametropesqproduto.text = 'ID' then
 begin
    DBGRid1.Columns[0].title.caption := 'Código';
    DBGrid1.Columns[0].FieldName     := 'IDPRODUTO';
    buscaProdutoPor := 0;
    gridpesqpro.Columns[0].title.caption := 'Código';
    gridpesqpro.Columns[0].FieldName := 'IDPRODUTO';
 end
 else
 if dm.qParametropesqproduto.text = 'BARRAS' then
 begin
    DBGRid1.Columns[0].title.caption := 'Cód.Barras';
    DBGrid1.Columns[0].FieldName     := trim(dm.qParametropesqproduto.text);
    buscaProdutoPor := 1;
    gridpesqpro.Columns[0].title.caption := 'Cód.Barras';
    gridpesqpro.Columns[0].FieldName := trim(dm.qParametropesqproduto.text);
 end
 else
 if dm.qParametropesqproduto.text = 'REFERENCIA' then
 begin
    DBGRid1.Columns[0].title.caption := 'Referência';
    DBGrid1.Columns[0].FieldName     := trim(dm.qParametropesqproduto.text);
    buscaProdutoPor := 2;
    gridpesqpro.Columns[0].title.caption := 'Referência';
    gridpesqpro.Columns[0].FieldName := trim(dm.qParametropesqproduto.text);
 end;

 if dm.qParametromostrar_multiplo.Text = 'N' then //param. 139 - nao mostrar multiplos
 begin
    label19.Visible     := false;
    label5.Visible      := false;
    edMultiplo.Visible  := false;
    edQtd.Visible       := false;
    label18.Caption     := 'Qtde';
    dbgrid1.columns[2].Visible       := false;
    dbgrid1.columns[3].Visible       := false;
    dbgrid1.columns[4].Title.caption := 'Qtde';
    edQtdCx.Left := edQtd.Left;
    label18.Left := label5.Left;
    edDesc.Width := (edQtd.Left - edDesc.Left) - 5;

    dbgrid1.columns[8].Visible       := false;
    dbgrid1.columns[9].Visible       := false;

 end;

  lFantasia.Caption := '';
end;

procedure TfDevolucao.FormDeactivate(Sender: TObject);
begin
  Inserida := 'S';

  if Sair = 'S' then
     Exit;

end;

procedure TfDevolucao.TBeforePost(DataSet: TDataSet);
begin
 SOMAITENS;
end;

procedure TfDevolucao.addItem;
begin
   if not (L.Locate('idvenda_i', qPedidvenda_i.AsInteger, [])) then
      L.Append
   else
      L.edit;
   LIdProduto.Value   := qPedidproduto.Value;
   LQtd_cx.Value      := qPedqtd_cx.Value;
   LQtd.Value         := qPedqtd.Value;
   Lunit.Value        := qPedvUnitLiq.Value;
   LTotal.Value       := qPedvTotLiq.Value;
   LTipo.Value        := qPedTipo.Value;
   Lidvenda_i.Value   := qPedidvenda_i.AsInteger;
   Lqtd_cx_dev.Value  := 0;
   Lqtd_dev.Value     := 0;
   Lunit_dev.Value    := qPedvUnitLiq.Value;
   Ltotal_dev.Value   := 0;
   LMultiplo.Value    := qPedMultiplo.Value;
   LvCusto.asFloat    := qPedvCusto.asFloat;
   L.Post;
   sleep(100);
end;

procedure TfDevolucao.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfDevolucao.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;

   EdCodCli.Text := DM.qPesq.FieldByName('Id').Value;
   EdCodCliExit(Application);
   gdPesq.Visible := False;
  end;

end;

procedure TfDevolucao.gdVendKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;


procedure TfDevolucao.gdVendKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;

   EdVend.Text := DM.qSelect.FieldByName('Id').Value;
   EdVendExit(Application);
   gdVend.Visible := False;
  end;

end;

procedure TfDevolucao.GridPesqProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;

end;

procedure TfDevolucao.GridPesqProKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
   Key := #0;

  if not qPro.IsEmpty then
   begin
    EdCod.Text          := qPro.FieldByName(trim(dm.qParametropesqproduto.text)).Text;
    GridPesqPro.Visible := False;

    EdCodExit(Application);
   end;
 end;

end;

procedure TfDevolucao.Financeiro;
begin

     Execsql(' update creceber set ex = 1 where baixa = ''N'' and '+
             ' tipo = ''Z'' and idvenda = '+ TId.text );

     //Deleta comissão a pagar da devolução
     ExecSQL('update comi_pagar set ex = 1 where baixa = ''N'' and  '+
             ' tipo = ''D'' and idvenda = '+ TId.text);

     dm.CRec.Open;
     dm.CRec.Insert;
     dm.CRecDOCUMENTO.Value  := 'CR_'+ IntToStr(Tid.Value)+'.1/1';
     dm.CRecnParc.AsInteger := 1;
     dm.CRecIdVenda.Value    := TId.Value;
     dm.CRecIdCLIENTE.Value  := TIdCliente.Value;
     dm.CRecEMISSAO.Value    := date;
     dm.CRecidcondpgto.Value := 1;
     dm.CRecVALOR.Value      := TValor.AsFloat * (-1);
     dm.CRecTOTAL.Value      := dm.CRecVALOR.Value;
     dm.CRecVENCI.Value      := date;
     dm.CRecBAIXA.Value      := 'N';
     dm.CRecTIPO.Value       := 'Z';   // 'D - depsesas, V - VENDA,  Z - credito devolucao '
     dm.CRecEX.Value         := 0;
     dm.CRecIDUSUARIO.Value  := DM.qUserId.Value;
     dm.CRecgerado_boleto.Value  := 'F';
     dm.CRecidemp.Value          :=  Tidemp.AsInteger;
     dm.CRecFpgto1.Value         := 'DEVOLUCAO';
     dm.CRec.Post;

     reciboCredito(dm.CRecID.AsInteger);
     sleep(200);

     //Adiciona comissão negativa
     if (dm.qParametrocomissao_pagar.text = 'S') then
      addComissao('CR:'+ IntToStr(Tid.Value)+'.1/1',
                  dm.CRecIdVenda.Value,
                  0,
                  dm.CRecId.AsInteger,
                  dm.CRecidemp.AsInteger,
                  dm.CRecVALOR.asFloat,
                  dm.CRecEMISSAO.AsDateTime, 'D' );


end;


procedure TfDevolucao.reciboCredito(cod:integer);
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
