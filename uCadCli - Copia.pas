unit uCadCli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList, Vcl.ExtDlgs, XiButton,
  Vcl.OleCtnrs, ComObj, OleCtrls, SHDocVw, Vcl.Buttons, CheckDBGrid;

type
  TfCadCli = class(TfCadPadrao)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    lRG: TLabel;
    DBEdit10: TDBEdit;
    lCPF: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    Label17: TLabel;
    DBEdit16: TDBEdit;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    DBComboBox4: TDBComboBox;
    DBLookupComboBox8: TDBLookupComboBox;
    DBRadioGroup1: TDBRadioGroup;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label19: TLabel;
    Button2: TButton;
    DBEdit17: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    Label22: TLabel;
    DBEdit20: TDBEdit;
    Label23: TLabel;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    DBComboBox1: TDBComboBox;
    Label25: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Bevel1: TBevel;
    TId: TIntegerField;
    TNome: TWideStringField;
    TEndereco: TWideStringField;
    TNum: TWideStringField;
    TBairro: TWideStringField;
    TCEP: TWideStringField;
    TCidade: TWideStringField;
    TUF: TWideStringField;
    Temail: TWideStringField;
    Trg: TWideStringField;
    Tcpf: TWideStringField;
    Ttel1: TWideStringField;
    Ttel2: TWideStringField;
    Ttel3: TWideStringField;
    Tobs: TWideMemoField;
    Tex: TIntegerField;
    TlimiteCredito: TFloatField;
    Tidcidade: TIntegerField;
    Ttppessoa: TWideStringField;
    Trazao: TWideStringField;
    Tcomple: TWideStringField;
    TEnd_entrega: TWideStringField;
    TNum_entrega: TWideStringField;
    TBairro_entrega: TWideStringField;
    TCep_entrega: TWideStringField;
    TidCidade_entrega: TIntegerField;
    TUF_entrega: TWideStringField;
    TComple_entrega: TWideStringField;
    Tdtnasc: TDateTimeField;
    Tdtcadastro: TDateTimeField;
    Tativo: TWideStringField;
    DBCheckBox1: TDBCheckBox;
    Label51: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Tpais: TIntegerField;
    Label26: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Tpais_entrega: TIntegerField;
    Tcontribuinte: TWideStringField;
    TprodutorR: TWideStringField;
    Tidtabela: TIntegerField;
    rgTabelaPreco: TDBRadioGroup;
    Tidvendedor: TIntegerField;
    TabSheet3: TTabSheet;
    Tinadimplente: TWideStringField;
    Timagem_serasa: TWideStringField;
    DBCheckBox4: TDBCheckBox;
    DBText1: TDBText;
    Label76: TLabel;
    DBEdit63: TDBEdit;
    XiButton3: TXiButton;
    OpenPictureDialog1: TOpenPictureDialog;
    Tdia_fecha: TIntegerField;
    qPais: TZQuery;
    tPaisID: TIntegerField;
    tPaisNOME: TWideStringField;
    dPais: TDataSource;
    qCid: TZQuery;
    qCidid: TIntegerField;
    qCidNome: TWideStringField;
    qCidUF: TWideStringField;
    dCid: TDataSource;
    ScrollBox1: TScrollBox;
    WebBrowser1: TWebBrowser;
    pRep: TPanel;
    Label28: TLabel;
    edPespRep: TEdit;
    Label29: TLabel;
    edFor: TEdit;
    edNomeFor: TEdit;
    gdFor: TDBGrid;
    Tidweb: TIntegerField;
    Tsincronizado: TWideStringField;
    Tcidade_entrega: TWideStringField;
    Tidcomercial: TIntegerField;
    Tidemp: TIntegerField;
    qTab: TZQuery;
    dTab: TDataSource;
    qTabId: TIntegerField;
    qTabDescricao: TWideStringField;
    qCial: TZQuery;
    dCial: TDataSource;
    qCialId: TIntegerField;
    qCialDescricao: TWideStringField;
    Tforma_pgto: TWideStringField;
    TabSheet4: TTabSheet;
    Label27: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label32: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label30: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    Label31: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    DBText2: TDBText;
    Label33: TLabel;
    DBComboBox2: TDBComboBox;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBLookupComboBox9: TDBLookupComboBox;
    DBLookupComboBox10: TDBLookupComboBox;
    DBLookupComboBox11: TDBLookupComboBox;
    DBLookupComboBox12: TDBLookupComboBox;
    qCon1: TZQuery;
    dCon1: TDataSource;
    qCon1id: TIntegerField;
    qCon1descricao: TWideStringField;
    qCon2: TZQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    dCon2: TDataSource;
    Tidcond1: TIntegerField;
    Tidcond2: TIntegerField;
    TidTrans: TIntegerField;
    TidRedes: TIntegerField;
    qTra: TZQuery;
    IntegerField2: TIntegerField;
    dTra: TDataSource;
    qTranome: TWideStringField;
    qRed: TZQuery;
    IntegerField3: TIntegerField;
    WideStringField2: TWideStringField;
    dRed: TDataSource;
    DBComboBox3: TDBComboBox;
    Label38: TLabel;
    Tfoma_pgto2: TWideStringField;
    Tcontato: TWideStringField;
    Label39: TLabel;
    DBEdit22: TDBEdit;
    lLimite: TLabel;
    edLimite: TDBEdit;
    DBCheckBox2: TDBCheckBox;
    Bevel2: TBevel;
    ckContrib: TDBCheckBox;
    lWeb: TLabel;
    edweb: TDBText;
    Shape1: TShape;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    Web: TTabSheet;
    DBText3: TDBText;
    dCond1: TDataSource;
    Label40: TLabel;
    cbCond: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qCond: TZQuery;
    dCond: TDataSource;
    uCond: TZUpdateSQL;
    qCondId: TIntegerField;
    qCondIdCliente: TIntegerField;
    qCondIdCond: TIntegerField;
    qCondSincronizado: TWideStringField;
    qCondIdemp: TIntegerField;
    qCondIdweb: TIntegerField;
    qCondex: TIntegerField;
    qConddescricao: TWideStringField;
    CheckDBGrid1: TCheckDBGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    DBCheckBox3: TDBCheckBox;
    Tusa_codigo: TWideStringField;
    Label41: TLabel;
    DBComboBox5: TDBComboBox;
    TtipoFrete: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure TcpfValidate(Sender: TField);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure DBEdit14Enter(Sender: TObject);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit16Enter(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure DBComboBox4Change(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure TidcidadeValidate(Sender: TField);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit15Click(Sender: TObject);
    procedure DBEdit14Click(Sender: TObject);
    procedure DBEdit16Click(Sender: TObject);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure XiButton3Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure DBCheckBox4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edForExit(Sender: TObject);
    procedure edNomeForChange(Sender: TObject);
    procedure edNomeForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPesqChange(Sender: TObject);
    procedure gdForKeyPress(Sender: TObject; var Key: Char);
    procedure acSalvarExecute(Sender: TObject);
    procedure TBeforePost(DataSet: TDataSet);
    procedure TidCidade_entregaValidate(Sender: TField);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure ToolButton4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qCondNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure qCondAfterPost(DataSet: TDataSet);
    procedure BitBtn4Click(Sender: TObject);
  private
    ord, campo : String;
    procedure ativaQ;
    procedure botoes(tp: boolean);
    { Private declarations }
  public
    { Public declarations }
    Function SalvaFoto : String;
    procedure ExibeFoto;
  end;

var
  fCadCli: TfCadCli;

implementation

uses uFuncao, uDM, uImpressoes, StrUtils, uRelClientes;

{$R *.dfm}

procedure TfCadCli.ativaQ;
begin

  T.close;
  T.sql.Clear;
  T.SQL.Add(' select * from Cliente where ex = 0 and '+
            ' (nome like :pesq or tel1 like :pesq or id like :pesq or cpf like :pesq) '+
            ' and ((:rr = 0) or (idvendedor = :rr)) '+
            ' order by ' + campo + '  '+ ord );
  if (pRep.Visible) then
  begin
    T.ParamByName('pesq').Value := '%' + trim(edPespRep.Text) + '%';
    if (trim(edFor.Text) <> '') then
      T.ParamByName('rr').Value := strtoint(edFor.text)
    else
      T.ParamByName('rr').Value := 0;
  end
  else
  begin
     T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
     T.ParamByName('rr').Value := 0;
  end;
  T.Open;

end;

procedure TfCadCli.BitBtn1Click(Sender: TObject);
begin
  if cbCond.Text = '' then
     Exit;

  if not (qCond.Locate('idcond', cbCond.KeyValue, [])) then
  begin
     qCond.Insert;
     qCondIdCond.Value := cbCond.KeyValue;
     qCond.Post;

     qCond.Close;
     qCond.ParamByName('id').Value := Tid.value;
     qCond.Open;
     cbCond.KeyValue := 0;
  end;
end;

procedure TfCadCli.BitBtn2Click(Sender: TObject);
begin
  if qCond.IsEmpty then
     Exit;

  qCond.Edit;
  qCondex.Value           := 1;
  qCondSincronizado.Value := 'N';
  qCond.Post;

  qCond.Close;
  qCond.ParamByName('id').Value := Tid.value;
  qCond.Open;
  cbCond.KeyValue := 0;

end;

procedure TfCadCli.BitBtn3Click(Sender: TObject);
begin
  qCon1.First;
  while qCon1.eof = false do
  begin
     if not (qCond.Locate('idcond', qCon1id.Value, [] )) then
     begin
        qCond.Insert;
        qCondIdCond.AsInteger := qCon1id.AsInteger;
        qCond.Post;
     end;
     qCon1.Next;
  end;

  qCond.Close;
  qCond.ParamByName('id').Value := Tid.AsInteger;
  qCond.Open;

end;

procedure TfCadCli.BitBtn4Click(Sender: TObject);
begin
  qCond.First;
  while qCond.eof = false do
  begin
    qCond.edit;
    qCondEx.value := 1;
    qCond.Post;

    qCond.Next;
  end;
  qCond.Close;
  qCond.ParamByName('id').Value := Tid.AsInteger;
  qCond.Open;

end;

procedure TfCadCli.acExcluirExecute(Sender: TObject);
begin
  Execsql('update cliente set sincronizado = ''N'' where id = ' + Tid.text );
  inherited;
  T.ApplyUpdates;
  sleep(100);

  atualizaWeb;

  AtivaQ;

end;

procedure TfCadCli.acImprimirExecute(Sender: TObject);
begin
  inherited;
  if TId.AsString <>'' then
  begin
    Application.CreateForm(TfImpressoes, fImpressoes);
    fImpressoes.qCli.Close;
    fImpressoes.qCli.Params[0].AsInteger := TId.AsInteger;
    fImpressoes.qCli.Open;

    vEnv_EmailDest := Temail.text;
    vEnv_Report    := fImpressoes.rpIMpCliente;

    fImpressoes.rpIMpCliente.PreviewModal;
    fImpressoes.Free;
  end;
end;

procedure TfCadCli.acInserirExecute(Sender: TObject);
begin
  inherited;
  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(true);

  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

end;

procedure TfCadCli.acSalvarExecute(Sender: TObject);
begin

  if dm.qParametroclientes_repre.Value = 'S' then
  begin
     if not (Tidvendedor.AsInteger > 0) then
     Begin
        Application.MessageBox('Representante não informado, verifique!','Atenção');
        PageControl1.ActivePageIndex := 3;
        DBLookupComboBox3.SetFocus;
        exit;
     End;
  end;

  if Tidtabela.IsNull then
     Tidtabela.AsInteger := 0;

  if Tidcomercial.IsNull then
     Tidcomercial.AsInteger := 0;

  inherited;

  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(false);

  atualizaWeb;

  AtivaQ;


end;

procedure TfCadCli.acCancelarExecute(Sender: TObject);
begin
  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(false);

  inherited;

end;

procedure TfCadCli.acEditarExecute(Sender: TObject);
begin
  inherited;
  if dm.qParametromod_pedidosWeb.Text = 'S' then
     botoes(true);

 DBEdit1.ReadOnly := True;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;


end;

procedure TfCadCli.TcpfValidate(Sender: TField);
begin
  inherited;
 if Tcpf.Text = '' then
  Exit;

  if Ttppessoa.Value = 'F' then
   begin
     if not CPF(Tcpf.Text) then
      begin
       Application.MessageBox('CPF Inválido!', 'Atenção');
       DBEdit11.SetFocus;
      end;
   end
  else
   begin
    if not CNPJ(Tcpf.Text) then
     begin
      Application.MessageBox('CNPJ Inválido!', 'Atenção');
      DBEdit11.SetFocus;
     end;
   end;
end;

procedure TfCadCli.DBEdit14Exit(Sender: TObject);
begin
  inherited;
 if not (T.State in [dsinsert, dsedit]) then
  Exit;

  if (Length(Ttel1.Text) < 10) and (Length(Ttel1.Text) > 2)  then
   begin
    Application.MessageBox('Telefone Incompleto!', 'Atenção');
    DBEdit14.SetFocus;
    Exit;
   end;

 IF (Ttel1.Text <> '') and (length(trim(Ttel1.Text)) > 2 ) THEN BEGIN
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select nome from cliente '+
                      ' where (Tel1 = '+QuotedStr(DBEdit14.Text) +
                      '    or Tel2 = '+QuotedStr(DBEdit14.Text) +
                      '    or Tel3 = '+QuotedStr(DBEdit14.Text) +
                      ' ) and id <> ' + Tid.text );
   DM.qSelect.Open;

   if DM.qSelect.RecordCount > 0 then
    Application.MessageBox(PChar('Telefone Cadastrado Para o Cliente '+DM.qSelect.FieldByName('nome').Text), 'Aviso');
 end;

end;

procedure TfCadCli.DBEdit15Exit(Sender: TObject);
begin
  inherited;
 if not (T.State in [dsinsert, dsedit]) then
  Exit;

  if (Length(Ttel2.Text) < 10) and (Length(Ttel2.Text) > 2)  then
   begin
    Application.MessageBox('Telefone Incompleto!', 'Atenção');
    DBEdit15.SetFocus;
    Exit;
   end;

 IF (Ttel2.Text <> '') and (length(trim(Ttel2.Text)) > 2 ) THEN BEGIN
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select nome from cliente '+
                    ' where (Tel1 = '+QuotedStr(DBEdit15.Text) +
                    '    or Tel2 = '+QuotedStr(DBEdit15.Text) +
                    '    or Tel3 = '+QuotedStr(DBEdit15.Text) +
                    ' ) and id <> ' + Tid.text );
   DM.qSelect.Open;

   if DM.qSelect.RecordCount > 0 then
    Application.MessageBox(PChar('Telefone Cadastrado Para o Cliente '+DM.qSelect.FieldByName('nome').Text), 'Aviso');
 end;

end;

procedure TfCadCli.DBEdit16Exit(Sender: TObject);
begin
  inherited;
 if not (T.State in [dsinsert, dsedit]) then
  Exit;

  if (Length(Ttel3.Text) < 10) and (Length(Ttel3.Text) > 2)  then
   begin
    Application.MessageBox('Telefone Incompleto!', 'Atenção');
    DBEdit16.SetFocus;
    Exit;
   end;

 IF (Ttel3.Text <> '') and (length(trim(Ttel3.Text)) > 2 ) THEN BEGIN
   DM.qSelect.Close;
   DM.qSelect.SQL.Clear;
   DM.qSelect.SQL.Add('select nome from cliente '+
                    ' where (Tel1 = '+QuotedStr(DBEdit16.Text) +
                    '    or Tel2 = '+QuotedStr(DBEdit16.Text) +
                    '    or Tel3 = '+QuotedStr(DBEdit16.Text) +
                    ' ) and id <> ' + Tid.text );
   DM.qSelect.Open;

   if DM.qSelect.RecordCount > 0 then
     Application.MessageBox(PChar('Telefone Cadastrado Para o Cliente '+DM.qSelect.FieldByName('nome').Text), 'Aviso');
  end;
  
end;

procedure TfCadCli.DBGrid1TitleClick(Column: TColumn);
begin

 if ord = 'ASC' then
    ord := 'DESC'
  else
    ord := 'ASC';
 campo := Column.FieldName;
 ativaQ;

end;

procedure TfCadCli.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  inherited;
  if Tpais_entrega.Text <> '1058' then
  begin
     TUF_entrega.Value         := 'EX' ;
     DBComboBox1.Enabled       := False;
     DBComboBox1Change(Application);
     DBLookupComboBox1.Enabled := False;
  end
 else
  begin
    DBComboBox1.Enabled       := True;
    DBComboBox1Change(Application);
    DBLookupComboBox1.Enabled := True;
  end;

end;

procedure TfCadCli.DBLookupComboBox4CloseUp(Sender: TObject);
begin

  if TPAIS.Text <> '1058' then
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := False;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := False;
  end
 else
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := True;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := True;
  end;

end;

procedure TfCadCli.FormActivate(Sender: TObject);
begin
  inherited;
  qPais.close;
  qPais.open;

  qCial.close;
  qCial.open;

  qTab.close;
  qTab.open;

  dm.qEmpresa.close;
  dm.qEmpresa.open;

  qCon1.close;
  qCon1.open;

  qCon2.close;
  qCon2.open;

  qTra.close;
  qTra.open;

  qRed.close;
  qRed.open;


end;

procedure TfCadCli.FormCreate(Sender: TObject);
begin
  if dm.qParametroclientes_repre.Value = 'S' then
  begin
     edPesq.Visible  := false;
     label1.Visible  := false;
     pRep.Visible    := true;
  end
  else
  begin
     edPesq.Visible := true;
     label1.Visible := true;
     pRep.Visible   := false;
  end;
  campo := ' nome ';
  ord   := ' asc ';

  ativaQ;

  StatusTela(True);
  PageControl1.TabIndex := 0;

  if DM.qUser.Locate('Nome_1', 'OBSCLI', []) then
  begin
   if DM.qUserPermitido.Text = 'F' then
    begin
     Label18.Visible := False;
     DBMemo1.Visible := False;
    end;
  end;

  if dm.qParametrovenda_escolherpreco.AsString = 'N' then
    rgTabelaPreco.Visible := false;

  dm.qVend.close;
  dm.qVend.open;

  if dm.qParametropd_duas_cond.Text = 'N' then
  begin
     label35.Visible            := false;
     DBLookupComboBox10.Visible := false;
     label38.Visible            := false;
     DBComboBox3.Visible        := false;
  end;

  if dm.qParametromod_pedidosWeb.Text = 'N' then
  begin
     lWeb.Visible   := false;
     edWeb.Visible  := false;
     shape1.Visible := false;
     PageControl1.Pages[4].TabVisible := false;
  end;


end;

procedure TfCadCli.gdForKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
 begin
   Key := #0;

  if not DM.qPesq.IsEmpty then
   begin
    edFor.Text:= DM.qPesq.FIELDBYNAME('Id').Text;
    edForExit(Application);
    gdFor.Visible := False;
   end;
 end;

end;

procedure TfCadCli.PageControl1Change(Sender: TObject);
begin
  inherited;

 if T.state in [dsEdit, dsInsert] then
  xibutton3.Enabled := true
 else
  xibutton3.Enabled := false;

 if PageControl1.TabIndex = 2 then
  ExibeFoto;

end;

procedure TfCadCli.qCondAfterPost(DataSet: TDataSet);
begin
  inherited;
  qCond.ApplyUpdates;

end;

procedure TfCadCli.qCondNewRecord(DataSet: TDataSet);
begin
  qCondid.Value           := InsereCodigo('cliente_cond', 'Id');
  qCondIdCliente.Value    := Tid.Value;
  qCondSincronizado.Value := 'N';
  qCondIdemp.Value        := dm.qUseridemp.Value;
  qCondIdweb.Value        := 0;
  qCondex.Value           := 0;

end;

function TfCadCli.SalvaFoto: String;
 var NomeArq, nWeb : string;
     Sair, Posi : integer;

begin

  if OpenPictureDialog1.Execute then
  begin
   NomeArq := LowerCase(Trim(OpenPictureDialog1.FileName));
   Posi := pos('\',NomeArq);
   Delete(NomeArq,1, Posi);
   Posi := pos('\',NomeArq);

   if (Posi = 0) then
    Sair := 0
   else
    Sair := 1;

   while Sair = 1 do
    begin
     Delete(NomeArq,1,Posi);
     Posi := pos('\',NomeArq);

     if (Posi = 0) then
      sair := 0;

    end;

   NomeArq := TId.Text+trim( copy(NomeArq, pos('.',NomeArq), length(NomeArq)) ); // RightStr(NomeArq, 4);
   if FileExists(DM.qParametrocaminho_pasta_serasa.Text+NomeArq) then
      DeleteFile(DM.qParametrocaminho_pasta_serasa.Text+NomeArq);
   CopyFile(PCHAR(OpenPictureDialog1.FileName), PChar(DM.qParametrocaminho_pasta_serasa.Text+NomeArq), True);


   if not FileExists(NomeArq) then
   begin
      WebBrowser1.Visible := true;
      nWeb := TrocaCaracter('file://'+ DM.qParametrocaminho_pasta_serasa.Text+NomeArq, '/', '\');
      WebBrowser1.Navigate2(nWeb );
      ScrollBox1.Refresh;
   end
   else
   begin
      WebBrowser1.Navigate('about:blank');
      WebBrowser1.Visible := false;
      NomeArq := '';
   end;

  end;
  Result := NomeArq;

end;

procedure TfCadCli.TNewRecord(DataSet: TDataSet);
begin
  inherited;
 TID.value            := InsereCodigo('cliente', 'ID' );
 TEx.Value            := 0;
 TlimiteCredito.value := 0;
 Ttppessoa.Value      := 'F';
 Tdtcadastro.Value    := Date;
 Tativo.Text          := 'S';
 Tcontribuinte.Value  := 'N';
 TprodutorR.AsString  := 'N';
 if dm.qParametromod_cad_tabela.Text = 'S' then
    Tidtabela.value      := 0
 else
    Tidtabela.value      := 1;
 Tpais.value          := 1058;
 Tpais_entrega.value  := 1058;
 TSincronizado.value  := 'S';
 Tusa_codigo.Value    := 'S';

end;

procedure TfCadCli.ToolButton4Click(Sender: TObject);
begin

    Application.CreateForm(TfRelClientes, fRelClientes);
    fRelClientes.ShowModal;
    fRelClientes.Free;

end;

procedure TfCadCli.XiButton3Click(Sender: TObject);
begin
  inherited;
  OpenPictureDialog1.InitialDir := dm.qParametrocaminho_pasta_serasa.Text;
  Timagem_serasa.Value := SalvaFoto;
end;

procedure TfCadCli.DBEdit14Enter(Sender: TObject);
begin
  inherited;
 IF Ttel1.Text <> '' THEN
    DBEdit14.SelStart := 4
 else
    DBEdit14.SelStart := 1;
end;

procedure TfCadCli.DBEdit15Enter(Sender: TObject);
begin
  inherited;
 IF Ttel2.Text <> '' THEN
    DBEdit15.SelStart := 4
 else
    DBEdit15.SelStart := 1;
end;

procedure TfCadCli.DBEdit16Enter(Sender: TObject);
begin
  inherited;
 IF Ttel3.Text <> '' THEN
    DBEdit16.SelStart := 4
 else
    DBEdit16.SelStart := 1;

end;

procedure TfCadCli.TAfterScroll(DataSet: TDataSet);
begin
  DBRadioGroup1Click(Application);

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := TUF.Text;
  DM.qCid.Open;

  if PageControl1.TabIndex = 2 then
  begin
     ExibeFoto;
     DBCheckBox4Click(Application);
  end;

  if PageControl1.Pages[4].TabVisible then
  begin
     qCond.Close;
     qCond.ParamByName('id').Value := TId.Value;
     qCond.open;
  end;



end;

procedure TfCadCli.TBeforePost(DataSet: TDataSet);
begin
  inherited;
  TSincronizado.value  := 'N';

end;

procedure TfCadCli.DBCheckBox4Click(Sender: TObject);
begin
  inherited;
 { if DBCheckBox4.Checked then
  begin
    Label76.Visible := True;
    DBEdit63.Visible := True;
    XiButton3.Visible := True;
    ImgFoto.Visible := True;
  end
 else
  begin
    Label76.Visible := False;
    DBEdit63.Visible := False;
    XiButton3.Visible := False;
    ImgFoto.Visible := False;
  end;}
end;

procedure TfCadCli.DBComboBox1Change(Sender: TObject);
begin
  inherited;

  qCid.Close;
  qCid.ParamByName('UF').Value := DBComboBox1.Text;
  qCid.Open;

end;

procedure TfCadCli.DBComboBox4Change(Sender: TObject);
begin
  inherited;

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := DBComboBox4.Text;
  DM.qCid.Open;
end;

procedure TfCadCli.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;

  if DBRadioGroup1.ItemIndex = 0 then
   begin
    Label11.Visible := false;
    dbedit8.Visible := false;
    Tcpf.EditMask := '###.###.###-##;0;_';
    lCPF.Caption := 'CPF';
    lRG.Caption := 'RG';
    ckContrib.Visible := false;
   end
  else
   begin
    Label11.Visible := true;
    dbedit8.Visible := true;
    Tcpf.EditMask := '##.###.###/####-##;0;_';
    lCPF.Caption := 'CNPJ';
    lRG.Caption := 'IE';
    ckContrib.Visible := true;
   end;

end;

procedure TfCadCli.edForExit(Sender: TObject);
begin
 if edFor.Text = '' then
     edNomeFor.SetFocus
    else
     begin
        DM.qPesq.close;
        DM.qPesq.SQL.Clear;
        DM.qPesq.SQL.Add('select id, nome from vendedor '+
                         ' where ex = 0 and ID = '+edFor.Text);
        DM.qPesq.Open;
        if DM.qPesq.RecordCount > 0 then
         begin
           edNomeFor.Text := DM.qPesq.FieldByName('nome').Text;
           gdFor.Visible := false;
           ativaQ;
         end
        else
         begin
          edNomeFor.Clear;
          edFor.Clear;
          edNomeFor.SetFocus;
         end;
     end;
end;

procedure TfCadCli.edNomeForChange(Sender: TObject);
begin
 if (edNomeFor.Text <> '') then
   begin
    gdFor.Visible := True;

    gdFor.Left := pRep.left + edFor.Left;
    gdFor.Top  := pRep.top + edFor.Top + edFor.Height + 1;
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('Select id, nome from vendedor '+
                      ' where ex = 0 and nome like '+QuotedStr('%'+edNomeFor.Text+'%'));
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
     gdFor.Visible := False;
    end
  else
   gdFor.Visible := False;

end;

procedure TfCadCli.edNomeForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
IF Key = VK_DOWN THEN
 IF gdFor.Visible THEN
  gdFor.SetFocus;

end;

procedure TfCadCli.EdPesqChange(Sender: TObject);
begin
  ativaQ;

end;

procedure TfCadCli.ExibeFoto;
 var Foto, nWeb : String;
begin

 Foto := trim(DM.qParametrocaminho_pasta_serasa.Text) + Timagem_serasa.Text;
 WebBrowser1.Navigate('about:blank');

 if not FileExists(Foto) then
 begin
    exit;
 end
 else
 begin
    WebBrowser1.Navigate('about:blank');
    nWeb := TrocaCaracter('file://'+ foto, '/', '\');
    WebBrowser1.Navigate2(nWeb );
    ScrollBox1.Refresh;
 end;

end;

procedure TfCadCli.TidcidadeValidate(Sender: TField);
begin
  inherited;
 TCidade.Value := DM.qCidNome.Value;
end;

procedure TfCadCli.TidCidade_entregaValidate(Sender: TField);
begin
  inherited;
  TCidade_entrega.Value := DM.qCidNome.Value;

end;

procedure TfCadCli.Button2Click(Sender: TObject);
begin
  inherited;
  if T.State in [dsinsert, dsedit] then
  begin
    TEnd_entrega.Text := TEndereco.Text;
    TNum_entrega.Text := TNum.Text;
    TBairro_entrega.Text := TBairro.Text;
    TComple_entrega.Text := Tcomple.Text;
    TUF_entrega.Text := TUF.Text;
    TCep_entrega.Text := TCEP.Text;
    DBComboBox1Change(Application);
    TidCidade_entrega.Value := Tidcidade.Value;
  end;
end;

procedure TfCadCli.DBEdit15Click(Sender: TObject);
begin
 IF Ttel2.Text <> '' THEN
    DBEdit15.SelStart := 4
 else
    DBEdit15.SelStart := 1;

end;

procedure TfCadCli.DBEdit14Click(Sender: TObject);
begin
 IF Ttel1.Text <> '' THEN
    DBEdit14.SelStart := 4
 else
    DBEdit14.SelStart := 1;


end;

procedure TfCadCli.DBEdit16Click(Sender: TObject);
begin
 IF Ttel3.Text <> '' THEN
    DBEdit16.SelStart := 4
 else
    DBEdit16.SelStart := 1;

end;

procedure TfCadCli.botoes(tp:boolean);
begin
  BitBtn1.Enabled := tp;
  BitBtn2.Enabled := tp;
  BitBtn3.Enabled := tp;
  BitBtn4.Enabled := tp;
end;


end.
