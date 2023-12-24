unit uControleCheque;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  ActnList, StdCtrls, Grids, DBGrids, DBCtrls, Buttons, Mask,
  ExtCtrls, ComCtrls,  jpeg, XiButton, sysUtils, System.Actions, CheckDBGrid,
  ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset;


type
  TfControleCheque = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    acDevolver: TAction;
    acCompensado: TAction;
    acEstornar: TAction;
    D: TDataSource;
    edPesq: TEdit;
    Label16: TLabel;
    XiButton1: TXiButton;
    XiButton3: TXiButton;
    XiButton5: TXiButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    XiButton6: TXiButton;
    Label2: TLabel;
    edCodConta: TEdit;
    edDesConta: TEdit;
    gdPesq: TDBGrid;
    XiButton2: TXiButton;
    acNovo: TAction;
    XiButton4: TXiButton;
    acDepositar: TAction;
    XiButton7: TXiButton;
    acRepassar: TAction;
    edValor: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edTot: TEdit;
    acImp: TAction;
    XiButton8: TXiButton;
    XiButton9: TXiButton;
    acExcluir: TAction;
    acRetorno: TAction;
    Label5: TLabel;
    EdCPF: TEdit;
    DtIni: TDateTimePicker;
    DtFim: TDateTimePicker;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    Label7: TLabel;
    edDestino: TEdit;
    Image3: TImage;
    DBGrid1: TCheckDBGrid;
    dRep: TDataSource;
    XiButton11: TXiButton;
    acVisu: TAction;
    XiButton12: TXiButton;
    acHistorico: TAction;
    acDev11: TAction;
    XiButton13: TXiButton;
    ckTodos: TCheckBox;
    T: TZQuery;
    upT: TZUpdateSQL;
    Rep: TZQuery;
    uRep: TZUpdateSQL;
    TNOME: TWideStringField;
    TTPCONTA: TWideStringField;
    TDesSt: TWideStringField;
    TDestino: TWideStringField;
    RepId: TIntegerField;
    RepIDCHEQUE: TIntegerField;
    RepNOME: TWideStringField;
    RepENDERECO: TWideStringField;
    RepTELEFONE: TWideStringField;
    RepIDFORNECEDOR: TIntegerField;
    TEMPRESA: TWideStringField;
    TnUser: TWideStringField;
    Tdescricao: TWideStringField;
    Tx: TWideStringField;
    Tvalor: TFloatField;
    Tst: TIntegerField;
    Tid: TIntegerField;
    Tidusu: TIntegerField;
    Tidmovcaixa: TIntegerField;
    Tnumero: TWideStringField;
    Tidconta: TIntegerField;
    Tidcliente: TIntegerField;
    Temitente: TWideStringField;
    Tbanco: TWideStringField;
    Tcpf: TWideStringField;
    Tagencia: TWideStringField;
    Tconta: TWideStringField;
    Tcodemp: TIntegerField;
    Tcodvenda: TIntegerField;
    Tdevolvido: TIntegerField;
    Tcodfinan: TIntegerField;
    Ttipo: TWideStringField;
    Tstanterior: TIntegerField;
    Tcontaanterior: TIntegerField;
    Ttel: TWideStringField;
    Tex: TIntegerField;
    Tcelu: TWideStringField;
    Trecado: TWideStringField;
    Tmotdev1: TWideStringField;
    Tmotdev2: TWideStringField;
    Tobs: TWideMemoField;
    XiButton10: TXiButton;
    Label8: TLabel;
    cbEmp: TComboBox;
    Tidemp: TIntegerField;
    Tfantasia: TWideStringField;
    Repidemp: TIntegerField;
    Temissao: TDateTimeField;
    Tdtoperacao: TDateTimeField;
    Tvenci: TDateTimeField;
    Tdtdev1: TDateTimeField;
    Tdtdev2: TDateTimeField;
    RepDATA: TDateTimeField;
    Shape7: TShape;
    Label14: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    Shape5: TShape;
    Label12: TLabel;
    Shape6: TShape;
    Label13: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    Shape2: TShape;
    Label11: TLabel;
    Shape11: TShape;
    Label19: TLabel;
    procedure acSairExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure edCodContaExit(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure edDesContaChange(Sender: TObject);
    procedure edDesContaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ComboBox1Change(Sender: TObject);
    procedure edPesqChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure acCompensadoExecute(Sender: TObject);
    procedure acDevolverExecute(Sender: TObject);
    procedure acEstornarExecute(Sender: TObject);
    procedure acNovoExecute(Sender: TObject);
    procedure acDepositarExecute(Sender: TObject);
    procedure acRepassarExecute(Sender: TObject);
    procedure acImpExecute(Sender: TObject);
    procedure edValorExit(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure acExcluirExecute(Sender: TObject);
    procedure EdCPFChange(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure edDestinoChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCodContaKeyPress(Sender: TObject; var Key: Char);
    procedure acVisuExecute(Sender: TObject);
    procedure acHistoricoExecute(Sender: TObject);
    procedure acDev11Execute(Sender: TObject);
    procedure ckTodosClick(Sender: TObject);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RepNewRecord(DataSet: TDataSet);
    procedure acRetornoExecute(Sender: TObject);
    procedure cbEmpClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DtIniExit(Sender: TObject);
    procedure DtFimExit(Sender: TObject);
  private
    { Private declarations }
    Ordem,Status : String;
    IdConta : Integer;
    mudando : String;
    idcon : Integer;
    procedure addCaixa(idc:integer; val: real; histo: string);
    procedure addRec(histo: string);
    function buscaConta(mov: integer): integer;
  public
    { Public declarations }
    Procedure AtivaT;
    Procedure Total;
  end;

var
    fControleCheque: TfControleCheque;


  implementation

uses uDM,  uFuncao, uRepasse, uCheque, uDeposito, uImpCheque, uVisualizaCheque,
     uHistoricoCheque, uEscolheStatusCheque;

{$R *.dfm}


procedure TfControleCheque.acSairExecute(Sender: TObject);
begin
if T.Modified = true then
 begin
   if Application.MessageBox('Lançamento de Cheque Alterado, Deseja Cancelá-lo?','Confirmação',mb_yesno+mb_defbutton1+mb_iconquestion)= idyes then
     T.Cancel
    else
     T.Post;
 end;
   close;
end;

procedure TfControleCheque.acVisuExecute(Sender: TObject);
begin
  Application.CreateForm(TfVisualizaCheque, fVisualizaCheque);
  fVisualizaCheque.ShowModal;
  fVisualizaCheque.Free;

  AtivaT;
end;

procedure TfControleCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and not(ActiveControl is TDBGrid) then
  Begin
   SelectNext(ActiveControl,True,True);
   Key:= #0;
  End;
end;

procedure TfControleCheque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fControleCheque := nil;
end;

procedure TfControleCheque.TAfterScroll(DataSet: TDataSet);
begin
  if mudando = 'S' then
    Exit;

  IF trim(TDESST.Value) = 'DEPOSITADO' THEN
  BEGIN
    acDevolver.Enabled := True;
    acCompensado.Enabled := True;
    acDepositar.Enabled := False;
  END
  ELSE
  BEGIN
    acDevolver.Enabled := FALSE;
    acCompensado.Enabled := False;
    if trim(TDESST.Value) = 'COMPENSADO' then
      acDepositar.Enabled := False
    else
      acDepositar.Enabled := True;
  END;

 if trim(TDESST.Value) = 'ABERTO' THEN
  begin
    acRepassar.Enabled := True;
    acExcluir.Enabled := True;
  end
 else
  begin
    acRepassar.Enabled := False;
    acExcluir.Enabled := False;
  end;

 if trim(TDESST.Value) = 'REPASSADO' then
 begin
    acDepositar.Enabled := False;
    acExcluir.Enabled   := True;
 end;

end;

procedure TfControleCheque.edCodContaExit(Sender: TObject);
begin
if (edCodConta.Text = '') or (edCodConta.Text = '0') then
 begin
   IdConta := 0;
   edDesConta.Clear;
   edDesConta.SetFocus;
 end
 else
 begin
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('Select ID, TITULAR, TIPO from '+
                      'CONTA where ID = '+edCodConta.Text);
  DM.qSelect.Open;

  if not DM.qSelect.IsEmpty then
   begin
    edDesConta.Text := DM.qSelect.FieldByName('TITULAR').AsString;
    gdPesq.Visible := false;
    IdConta := StrToInt(edCodConta.Text);

    edPesq.SetFocus;
   end
   else
   BEGIN
    IdConta := 0;
    edCodConta.Clear;
    edDesConta.Clear;
    edDesConta.SetFocus;
   END;
 end;

 AtivaT;
end;

procedure TfControleCheque.edCodContaKeyPress(Sender: TObject; var Key: Char);
begin
 somente_numero_sem_virgula(key);

end;

procedure TfControleCheque.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;

end;

procedure TfControleCheque.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   edCodConta.Text := DM.qSelect.fieldbyname('id').Text;

   EdCodContaExit(Application);
  end;
end;

procedure TfControleCheque.edDesContaChange(Sender: TObject);
begin
 if EdDesConta.Text <> '' then
  begin
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('Select id, titular from conta where titular like '+QuotedStr('%'+EdCodConta.Text+'%'));
   DM.qSelect.Open;

   if DM.qSelect.IsEmpty then
    gdPesq.Visible := False
   else
    gdPesq.Visible := True;
  end;
end;

procedure TfControleCheque.edDesContaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_down Then
  if gdPesq.Visible then
   gdPesq.SetFocus;
end;

procedure TfControleCheque.ComboBox1Change(Sender: TObject);
begin
   edCodConta.Enabled := True;
   edDesConta.Enabled := True;
   Label2.Enabled := True;

 if ComboBox1.Text = 'TODOS' then
  Status := 'T'
 else if ComboBox1.Text = 'ABERTOS' then
  Status := 'A'
 ELSE IF ComboBox1.Text = 'DEPOSITADOS' THEN
  Status := 'D'
 ELSE IF ComboBox1.Text = 'COMPENSADOS' THEN
  Status := 'C'
 ELSE IF ComboBox1.Text = 'DEVOLVIDOS' THEN
  Status := 'V'
 ELSE IF ComboBox1.Text = 'DEVOLVIDOS (SEM FUNDO)' THEN
  Status := 'M'
 ELSE IF ComboBox1.Text = 'REPASSADOS' THEN
  begin
   Status := 'R';
   IdConta := 0;
   edCodConta.Enabled := False;
   edDesConta.Enabled := False;
   Label2.Enabled := False;
  end
 ELSE
  begin
   Status := 'V';
   IdConta := 0;
   edCodConta.Enabled := False;
   edDesConta.Enabled := False;
   Label2.Enabled := False;
  end;

  AtivaT;
end;

procedure TfControleCheque.AtivaT;
var
  dt : string;
  Emp : integer;
begin
 Emp    := strtoint(copy(cbEmp.text,1,1));

 if checkBox1.Checked then
   dt := 'T'
  else
   dt := '';

 T.Close;
 T.ParamByName('conta').Value := IdConta;
 T.ParamByName('stat').Value := Status;
  IF edPesq.Text = '' THEN
    T.ParamByName('PESQ').Value := '                                                  '
   ELSE
    T.ParamByName('PESQ').Value := '%'+edPesq.Text+'%';
  IF edValor.Text = '' THEN
    T.ParamByName('val').Value := 0
   ELSE
    T.ParamByName('val').Value := edValor.Text;
  IF edCPF.Text = '' THEN
    T.ParamByName('CPF').Value := '                   '
   ELSE
    T.ParamByName('CPF').Value := '%'+edCPF.Text+'%';

 T.ParamByName('dt').Value := dt;
 if dt = '' then
 begin
     T.ParamByName('di').asDate := dtini.Date;
     T.ParamByName('df').asDate := dtfim.Date;
 end;
 if edDestino.Text <> '' then
    T.ParamByName('dest').Value := '%'+edDestino.Text+'%'
   else
    T.ParamByName('dest').Value := '                   ';

 T.ParamByName('emp').Value := Emp;
 T.Open;

 mudando := 'N';

 Total;

end;

procedure TfControleCheque.cbEmpClick(Sender: TObject);
begin
  AtivaT;
end;

procedure TfControleCheque.edPesqChange(Sender: TObject);
begin
  AtivaT;
end;

procedure TfControleCheque.FormActivate(Sender: TObject);
begin

 gdPesq.Visible := False;
 dtini.Enabled := not checkBox1.Checked;
 dtfim.Enabled := not checkBox1.Checked;

 ativaT;

end;

procedure TfControleCheque.FormCreate(Sender: TObject);
begin
  Status  := 'T';
  IdConta := 0;
  ExecSQL('update cheques set x = ''F'' Where  X = ''T'' ' );
  dtini.Date := Date;
  dtfim.Date := Date;
  EmpresaComboZero( cbEmp );
end;

procedure TfControleCheque.DBGrid1TitleClick(Column: TColumn);
 VAR dt, campo,SQL: String;
begin
 if checkBox1.Checked then
    dt := 'T'
   else
    dt := '';
 IF uppercase(Column.FieldName)='DESST' THEN
   campo:='5'
 else
 if Column.FieldName='DESTINO' then
   campo:='6'
 else
   campo:=Column.FieldName;

 IF ORDEM = 'DESC' THEN
  ORDEM := 'ASC' ELSE ORDEM := 'DESC';

  sql := ' select cliente.NOME, conta.tipo AS TPCONTA, '+
         ' cast( concat( cast(cheques.codemp as char), '' - '', parametro.fantasia ) as char)  EMPRESA, '+
         ' concat( cast(cheques.idusu as char), '' - '', usuario.nome) nUser, '+
         ' cast( case '+
         '   when (cheques.st = 0) AND ((conta.tipo = ''N'') or (cheques.IDCONTA = 0)) then '+
         '     ''ABERTO               '' '+
         '   when (cheques.st = 0) AND (conta.tipo = ''B'') then '+
         '     ''DEPOSITADO           '' '+
         '   WHEN cheques.st = 1 THEN '+
         '     ''COMPENSADO           '' '+
         '   when cheques.st = 2 THEN '+
         '     ''DEVOLVIDO            '' '+
         '   when cheques.ST = 3 THEN '+
         '     ''REPASSADO            ''  '+
         '   when cheques.ST = 4 THEN '+
         '     ''DESCONTADO           '' '+
         '   when cheques.ST = 5 THEN '+
         '     ''DEVOLVIDO (SEM FUNDO)'' '+
         ' end as char) DesSt, '+
         ' cast( case '+
         '  when (cheques.st = 0) AND (conta.tipo = ''B'') then conta.titular '+
         '  WHEN cheques.st = 1 THEN conta.titular '+
         '  when cheques.ST = 3 THEN repasse.nome '+
         '  when cheques.ST = 4 THEN conta.titular '+
         '  when cheques.ST = 5 THEN conta.titular '+
         ' end as char)  Destino , '+
         ' bancos.descricao, cheques.x,  cheques.valor, cheques.emissao, '+
         ' cheques.dtoperacao, cheques.st, cheques.id, cheques.idusu, '+
         ' cheques.idmovcaixa, cheques.numero, cheques.idconta, cheques.idcliente, '+
         ' cheques.venci, cheques.emitente, cheques.banco, cheques.cpf, '+
         ' cheques.agencia, cheques.conta, cheques.codemp, cheques.codvenda, cheques.devolvido, '+
         ' cheques.codfinan, cheques.tipo, cheques.stanterior, cheques.contaanterior, cheques.tel, '+
         ' cheques.ex, cheques.celu, cheques.recado, cheques.dtdev1, cheques.dtdev2, cheques.motdev1, '+
         ' cheques.motdev2, cheques.obs, cheques.idemp, empresa.fantasia '+
         ' from cheques '+
         ' LEFT JOIN cliente ON cliente.id = cheques.idcliente '+
         ' LEFT JOIN conta ON conta.id = cheques.idconta '+
         ' left join repasse on repasse.idcheque = cheques.id '+
         ' left join usuario on usuario.id = cheques.idusu '+
         ' left join parametro on parametro.id = 1 '+
         ' left join bancos on bancos.codigo = cheques.banco '+
         ' left join empresa on empresa.id = cheques.idemp '+
         ' Where ((:conta = 0) or (cheques.idconta = :conta)) and '+
         ' ((:stat = ''T'') or '+
         ' (:stat = ''A'' and cheques.ST = 0 and ((conta.tipo = ''N'')  or (cheques.IDCONTA = 0)) ) or '+
         ' (:stat = ''D'' and cheques.st = 0 AND conta.tipo = ''B'') OR '+
         ' (:stat = ''C'' and cheques.ST = 1 AND conta.tipo = ''B'') OR '+
         ' (:stat = ''R'' AND cheques.st = 3) OR '+
         ' (:stat = ''S'' AND cheques.st = 4) OR '+
         ' (:stat = ''M'' AND cheques.st = 5) OR '+
         ' (:stat = ''V'' AND cheques.st = 2)) and '+
         ' ((''                                                  '' = :PESQ) OR '+
         '  (cliente.NOME LIKE :PESQ) OR (cheques.EMITENTE LIKE :PESQ)) and '+
         ' ((''                                                  '' = :CPF) OR  '+
         ' (cheques.CPF LIKE :CPF)) and '+
         ' ((''                             '' = :dest) or '+
         ' ( conta.titular like :dest) or ( repasse.nome like :dest) ) and '+
         ' ((:val = 0) or (cheques.valor = :val)) and cheques.EX = 0 and '+
         ' ((:emp = 0) or (cheques.idemp = :emp)) and  '+
         ' ((:dt = ''T'') or (cheques.dtoperacao between :di and :df)) ' +
         ' ORDER BY '+campo + ' ' + ORDEM;

   T.Close;
   T.SQL.Clear;
   T.SQL.Add(SQL);

   AtivaT;

  //Total;

end;

procedure TfControleCheque.acCompensadoExecute(Sender: TObject);
begin
 if Application.MessageBox('Confirma a Compensação do Cheque Depositados?', 'Confirmação', mb_yesno) = idno then
    exit;

 T.First;
 mudando := 'S';
 while T.Eof = false do
 begin
   if (TX.Text = 'T') and (trim(TDESST.Text) = 'DEPOSITADO') then
   begin
     addCaixa(Tidconta.asinteger, TVALOR.Value,'COMPENSADO CHEQUE DEPOSITADO' );

     T.Edit;
     TST.Value := 1;
     TX.Value  := 'F';
     TDTOPERACAO.AsDateTime := Date;
     TIDUSU.Value           := DM.qUserID.Value;
     T.Post;

     // grada log
     GravaLogCheque( dm.qUserID.AsInteger, TID.AsInteger, DM.CxID.AsInteger, TDESST.Text, 'COMPENSADO' );

   end;
   T.Next;

 end;
 mudando := 'N';
 T.First;

 AtivaT;
end;

 procedure TfControleCheque.acDev11Execute(Sender: TObject);
begin
  if Tid.AsInteger > 0 then
    if Application.MessageBox('A Devolução Gerará uma Pendência para o Cliente. Confirma a Devolução do Cheque Motivo 11 (sem fundo)?','Confirmação', MB_YESNO)=idyes then
    begin
      // 18/06/2020 pedido para nao movimentar
      // addCaixa( buscaConta(Tidmovcaixa.AsInteger), TVALOR.Value*(-1),'## CHEQUE DEVOLVIDO SEM FUNDO ##' );

      addRec('*** CHEQUE DEVOLVIDO SEM FUNDO ***');

      T.Edit;
      TST.Value := 5;
      TDTOPERACAO.AsDateTime:=date;
      TIDUSU.Value := DM.qUserID.Value;
      T.Post;

      GravaLogCheque( dm.qUserID.AsInteger,  TID.AsInteger, dm.CxID.asinteger, TDesSt.Text, 'DEVOLVIDO (SEM FUNDO)' );

      AtivaT;
    end;

end;

procedure TfControleCheque.acDevolverExecute(Sender: TObject);
begin
  if Tid.AsInteger > 0 then
  begin
      // 24/06/2020 pedido para nao gerar financeiro e entrar no caixa
      addCaixa(1,  TVALOR.Value,'## CHEQUE DEVOLVIDO ##' );

      {if Application.MessageBox('A Devolução Gerará uma Pendência para o Cliente. Confirma a Devolução do Cheque?','Confirmação', MB_YESNO)=idyes then
      begin
        // 18/06/2020 pedido para nao movimentar
        //addCaixa(buscaConta(Tidmovcaixa.AsInteger),  TVALOR.Value*(-1),'## CHEQUE DEVOLVIDO ##' );
        addRec('*** CHEQUE DEVOLVIDO ***');
      end;}

      T.Edit;
      TST.Value := 2;
      TX.Value  := 'F';
      TDTOPERACAO.AsDateTime:=date;
      TIDUSU.Value := DM.qUserID.Value;
      T.Post;

      GravaLogCheque( dm.qUserID.AsInteger, TID.AsInteger, DM.CxId.AsInteger, TDESST.Text, 'DEVOLVIDO' );

      AtivaT;
  end;
end;

procedure TfControleCheque.acEstornarExecute(Sender: TObject);
var
  novoStatus : integer;
begin
  Application.CreateForm(TfEscolheStatusCheque, fEscolheStatusCheque);
  fEscolheStatusCheque.ShowModal;
  if fEscolheStatusCheque.nStatus = 99 then
  begin
     fEscolheStatusCheque.Free;
     Exit;
  end
  else
  begin
    novoStatus := fEscolheStatusCheque.nStatus;
     fEscolheStatusCheque.Free;
  end;

  if Application.MessageBox('Confirma a Estorno do Cheque?','Confirmação', MB_YESNO)=idyes then
  begin
   if TST.Value = 2 then
     ExecSQL('update creceber set ex = 1 where idvenda = '+TId.Text+' and tipo = ''C''');

   if TST.Value = 3 then
    ExecSQL('delete from repasse where idcheque = '+TID.Text);

   addCaixa( buscaConta(Tidmovcaixa.AsInteger), TVALOR.Value*(-1),'## ESTORNO DE CONTA ##' );

    T.Edit;
    TST.Value              := novoStatus;
    TDTOPERACAO.AsDateTime :=date;
    TIDUSU.Value           := DM.qUserID.Value;
    T.Post;

   // grada log
   GravaLogCheque( dm.qUserID.AsInteger, TID.AsInteger, DM.CxID.AsInteger, TDESST.Text, 'ESTORNO' );

   AtivaT;

  end;
end;

procedure TfControleCheque.acNovoExecute(Sender: TObject);
begin

      if trim(edCodConta.text) = '' then
      begin
         Application.MessageBox('Conta não informada, verifique!', 'Atenção');
         Exit;
      end;

      DM.qCheq.Close;
      DM.qCheq.ParamByName('Venda').Value := 0;
      DM.qCheq.ParamByName('Emp').Value   := strtoint(copy(cbEmp.text,1,1));//DM.qParametroID.Value;
      DM.qCheq.ParamByName('Cli').Value   := 0;
      DM.qCheq.ParamByName('Tipo').Value  := 'N';
      DM.qCheq.Open;

      Application.CreateForm(TfCheque, fCheque);

      DM.qCheq.Insert;
      DM.qCheqEMISSAO.AsDateTime := Date;
      DM.qCheqVENCI.AsDateTime   := Date;
      DM.qCheqDTOPERACAO.AsDateTime   := Date;
      DM.qCheqCODVENDA.Value  := 0;
      DM.qCheqCODFINAN.Value  := 0;
      DM.qCheqVALOR.Value     := 0;
      DM.qCheqIDEMP.Value     := strtoint(copy(cbEmp.text,1,1));//DM.qparametroID.Value;
      DM.qCheqDEVOLVIDO.Value := 0;
      DM.qCheqTIPO.Value      := 'N';
      DM.qCheqIDMOVCAIXA.Text := '0';
      DM.qCheqIDCONTA.Text    := edCodConta.Text;
      DM.qCheqST.Value        := 0;
      dm.qCheqIDUSU.Value     := DM.qUserID.Value;

      fCheque.ShowModal;
      fCheque.Free;

      AtivaT;

end;

procedure TfControleCheque.acDepositarExecute(Sender: TObject);
begin
 cCodChe := '';
 cValChe := 0;
 T.First;
 mudando := 'S';
 while T.Eof = false do
 begin
   if (TX.Text = 'T') and (trim(TDesSt.Text) <> 'COMPENSADO'  ) and (trim(TDesSt.Text) <> 'REPASSADO'  ) then
   begin
     if cCodChe = '' then
        cCodChe := TID.Text
     else
        cCodChe := cCodChe + ',' + TID.Text;
     cValChe := cValChe + TVALOR.Value;
   end;
   T.Next;
 end;
 T.First;
 mudando := 'N';
 if trim(cCodChe) = '' then
 begin
   Application.MessageBox('Selecione os registros para serem depositdos!','Atenção');
   exit;
 end;

 Application.CreateForm(TfDeposito, fDeposito);
 fDeposito.ShowModal;

 if conf_chq = 'S'  then
 begin
   // sai da conta caixa.
   dm.qPesq.close;
   dm.qPesq.SQL.Clear;
   dm.qPesq.SQL.Add(' select valor va from cheques where coalesce(contaanterior,0) > 0 and '+
                    ' id in ( '+ cCodChe + ') ' );
   dm.qPesq.Open;
   while dm.qPesq.Eof = false do
   begin
     addCaixa(1, dm.qPesq.FieldByName('va').AsFloat*(-1),'Movendo da Conta Caixa' );
     sleep(100);
     dm.qPesq.Next;
   end;

 end;

 fDeposito.free;

     T.Edit;
     TDTOPERACAO.AsDateTime := Date;
     TIDUSU.Value           := DM.qUserID.Value;
     T.Post;

 ComboBox1Change(Application);

end;

procedure TfControleCheque.acRepassarExecute(Sender: TObject);
begin
 Application.CreateForm(TfRepasse, fRepasse);
 fRepasse.ShowModal;
 fRepasse.Free;

 if (rNome <> '') then
 begin
   Rep.Open;
   T.First;
   while T.eof = false do
   begin
     if (Tx.text = 'T') and (TST.Value <> 3) then
     begin
       Rep.Insert;
       RepIDcheque.Value     := TID.value;
       RepIDFORNECEDOR.Value := 0;
       RepDATA.AsDateTime    := Date;
       RepNOME.Value         := rNome;
       RepENDERECO.Value     := rEnd;
       RepTELEFONE.Value     := rTel;
       Repidemp.Value        := TidEmp.AsInteger;
       Rep.Post;

       T.Edit;
       TX.Text   := 'F';
       TST.Value := 3;
       TDTOPERACAO.AsDateTime := Date;
       TIDUSU.Value           := dm.qUserID.Value;
       T.Post;

       // grada log
       GravaLogCheque( dm.qUserID.AsInteger,  TID.AsInteger, 0 ,  TDesSt.Text, 'REPASSE' );

     end;
     T.Next;
   end;
   Application.MessageBox('Cheque Repassado com Sucesso!','Aviso');
   Rep.Close;
 end;
 //

 ComboBox1Change(Application);

end;

procedure TfControleCheque.acRetornoExecute(Sender: TObject);
begin
  if Tid.AsInteger > 0 then
    if Application.MessageBox('O Retorno Gerará uma Pendência para o Cliente. Confirma o Retorno do Cheque?','Confirmação', MB_YESNO)=idyes then
    begin
      addCaixa(buscaConta(Tidmovcaixa.AsInteger), TVALOR.Value*(-1),'## RETORNADO PARA CLIENTE ##' );

      addRec('*** RETORNADO PARA CLIENTE ***');

      T.Edit;
      TST.Value      := 9;  // Só PARA NAO APARECER
      TEx.Value      := 1;  // cancelar cheque
      TX.Value       := 'F';
      Tidconta.Value := idcon;
      TDTOPERACAO.AsDateTime:=date;
      TIDUSU.Value := DM.qUserID.Value;
      T.Post;

      GravaLogCheque( dm.qUserID.AsInteger, TID.AsInteger, DM.CxId.AsInteger, TDESST.Text, 'RETORNADO' );

      AtivaT;
    end;
end;

procedure TfControleCheque.acImpExecute(Sender: TObject);
begin
 Application.CreateForm(TfImpCheque, fImpCheque);

 vEnv_EmailDest := '';
 vEnv_Report    := fImpCheque.rp;
 fImpCheque.rp.PreviewModal;
 fImpCheque.Free;
end;

procedure TfControleCheque.edValorExit(Sender: TObject);
begin
   AtivaT;

end;

procedure TfControleCheque.Total;
var total : Real;

begin

 total := 0;
 T.First;
 T.DisableControls;
 while T.Eof = false do
  begin
   total := total + TVALOR.Value;

   T.Next;
  end;
 T.EnableControls;
 T.First;


 edTot.Text := FormatFloat('###,###,###,##0.00', total);
end;

procedure TfControleCheque.TNewRecord(DataSet: TDataSet);
begin
 T.Cancel;
 // TId.Value := InsereCodigo('Cheques', 'Id');
  TDTOPERACAO.AsDateTime:=date;
end;

procedure TfControleCheque.acExcluirExecute(Sender: TObject);
begin
 if application.MessageBox('ATENÇÃO!! O cheque será excluído!'+
  #13+'Confirma exclusão do cheque?','Excluir Cheque',MB_YESNO+MB_ICONQUESTION) = idyes then
 begin
  // grada log
  GravaLogCheque( dm.qUserID.AsInteger, TID.AsInteger, TIDMOvcaixa.AsInteger , TDESST.Text, 'EXCLUIDO' );

  ExecSQL('update cheques set ex=1, idusu = '+dm.qUserID.Text+' where id = '+TID.Text);
  T.Close;
  T.Open;
 end;
end;

procedure TfControleCheque.acHistoricoExecute(Sender: TObject);
begin
  Application.CreateForm(TfHistoricoCheque, fHistoricoCheque);
  fHistoricoCheque.idchq := TID.AsInteger;
  fHistoricoCheque.ShowModal;
  fHistoricoCheque.Free;

  AtivaT;
end;

procedure TfControleCheque.RepNewRecord(DataSet: TDataSet);
begin
  RepId.Value    := InsereCodigo('repasse', 'Id');
end;

procedure TfControleCheque.EdCPFChange(Sender: TObject);
begin
  AtivaT;
end;

procedure TfControleCheque.DtIniExit(Sender: TObject);
begin
      AtivaT;

end;

procedure TfControleCheque.DtFimExit(Sender: TObject);
begin
      AtivaT;

end;

procedure TfControleCheque.CheckBox1Click(Sender: TObject);
begin
  if checkBox1.Checked then
  begin
     dtini.Enabled := false;
     dtfim.Enabled := false;
    end
   else
   begin
     dtini.Enabled := true;
     dtfim.Enabled := true;
  end;
  AtivaT;
end;

procedure TfControleCheque.ckTodosClick(Sender: TObject);
var
  x : string;
begin
  X := 'F';
  if ckTodos.Checked then
     X := 'T';

  T.First;
  while not T.Eof do
  begin
    if TX.AsString <> X then
    begin
      T.Edit;
      TX.AsString := X;
      T.Post;
    end;

    T.Next;
  end;

end;

procedure TfControleCheque.edDestinoChange(Sender: TObject);
begin
  AtivaT;
end;

procedure TfControleCheque.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 if (gdSelected in State) then
  begin
     dbGrid1.Canvas.Brush.Color := $00FCA258;
     dbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if (trim(TDESSt.Value) = 'DEPOSITADO') then  //depositado
        dbGrid1.Canvas.Brush.Color := $00FFFFBB
    else
    if (trim(TDESSt.Value) = 'COMPENSADO') then  //compensado
       dbGrid1.Canvas.Brush.Color := $0066B3FF
    else
    if (trim(TDESSt.Value) = 'DEVOLVIDO') then  //devolvido
       dbGrid1.Canvas.Brush.Color := $00FF79BC
    else
    if (trim(TDESSt.Value) = 'REPASSADO') then  //repassado
       dbGrid1.Canvas.Brush.Color := $00A5F58D
    else
    if (trim(TDESSt.Value) = 'DEVOLVIDO (SEM FUNDO)') then  //sem fundo
       dbGrid1.Canvas.Brush.Color := $009F9FFF;
  end;
  dbGrid1.DefaultDrawDataCell(Rect, dbGrid1.Columns[DataCol].Field ,state);

  if (TX.Value = 'T') then //selecionado
  begin
      dbGrid1.Canvas.Brush.Color := $00FF4242;
      dbGrid1.DefaultDrawDataCell(Rect, dbGrid1.Columns[DataCol].Field ,state);
  end;
end;

procedure TfControleCheque.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;
end;

function TfControleCheque.buscaConta(mov:integer):integer;
begin
     if Tidmovcaixa.AsInteger > 0 then
     begin
        dm.qpesq.Close;
        dm.qpesq.SQL.Clear;
        dm.qPesq.SQL.Add('select idconta from movcaixa where id = ' + inttostr(mov) );
        dm.qPesq.Open;
        idcon := dm.qPesq.FieldByName('idconta').AsInteger;
     end
     else
        idcon := TIDConta.AsInteger;
    Result := idcon
end;


procedure TfControleCheque.addCaixa(idc:integer; val:real; histo:string);
begin

     DM.Cx.open;
     DM.Cx.Insert;
     DM.CxDATA.AsDateTime    := now;
     DM.CxF_DINHEIRO.Value   := 0;
     DM.CxF_credito.Value    := 0;
     DM.CxF_debito.Value     := 0;
     DM.CxTROCO.Value        := 0;
     DM.CxTPMOV.Value        := 'M'; // operacoes com cheque
     DM.CxIdUsuario.Value    := DM.qUserID.Value;
     DM.CxDESCONTO.Value     := 0;
     DM.CxJUROS.Value        := 0;
     DM.CxPENDENTE.Value     := 'S';
     DM.CxIDMOV.Value        := TID.Value;
     DM.CxIDCONTA.Value      := idc;
     DM.Cxsegundaforma.Value := 'N';
     DM.CxFPGTO.Value        := 'CHEQUE';
     DM.Cxsegundaforma.Value := 'N';

     DM.CxVALOR.Value        := val;
     DM.CxF_CHEQUE.Value     := VAL;
     DM.CxTOTAL.Value        := val;
     DM.CxDescri.Value       := histo;
     DM.Cxidemp.AsInteger    := Tidemp.AsInteger;

     DM.Cx.Post;
     Dm.Cx.applyUpdates;
     DM.Cx.open;

     T.ApplyUpdates;

end;


procedure TfControleCheque.addRec(histo:string);
begin
     dm.CRec.open;
     DM.CRec.Insert;
     DM.CRecDOCUMENTO.Value    :=  TNUMERO.Value+'-CD/1';
     dm.CRecnParc.AsInteger := 1;
     DM.CRecidvenda.Text       :=  TID.text;
     DM.CRecIDCLIENTE.Value    :=  TIDCLIENTE.Value;
     DM.CRecEMISSAO.AsDateTime :=  TEMISSAO.AsDateTime;
     DM.CRecVENCI.AsDateTime   :=  TVENCI.AsDateTime;
     DM.CRecVALOR.Value        :=  TVALOR.Value;
     DM.CRecTotal.Value        :=  TVALOR.Value;
     DM.CRecTIPO.Value         :=  'C';
     DM.CRecBAIXA.Value        :=  'N';
     DM.CRecX.Value            :=  'F';
     DM.CRecEX.Value           :=  0;
     DM.CRecOBS.asSTRING       :=  histo;
     DM.CRecidemp.Value        :=  Tidemp.Value;
     DM.CRec.Post;
     dm.CRec.close;

end;

end.
