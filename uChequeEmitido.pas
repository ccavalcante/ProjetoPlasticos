unit uChequeEmitido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XiButton, Mask, DBCtrls,
  ActnList, Grids, DBGrids, DB, System.Actions, IBX.IBCustomDataSet, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfChequeEmitido = class(TForm)
    Label3: TLabel;
    DBEdit3: TDBEdit;
    XiButton1: TXiButton;
    ActionList1: TActionList;
    salvar: TAction;
    sair: TAction;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    XiButton2: TXiButton;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    edNomCli: TEdit;
    D: TDataSource;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    lnCheque: TLabel;
    Label5: TLabel;
    lLancado: TLabel;
    Label4: TLabel;
    lTotal: TLabel;
    Label10: TLabel;
    lDiferenca: TLabel;
    Bevel1: TBevel;
    Image3: TImage;
    T: TZQuery;
    TCONTA: TWideStringField;
    TVALOR: TFloatField;
    uT: TZUpdateSQL;
    TCODIGO: TIntegerField;
    TBANCO: TWideStringField;
    TFORNECEDOR: TIntegerField;
    TNUMERO: TWideStringField;
    TAGENCIA: TWideStringField;
    TCODEMP: TIntegerField;
    TDEVOLVIDO: TIntegerField;
    TIDTHR030: TIntegerField;
    TST: TIntegerField;
    TIDTHR050: TIntegerField;
    TX: TWideStringField;
    TIDCONTA: TIntegerField;
    TOBS: TWideStringField;
    gdPesq: TDBGrid;
    Tidemp: TIntegerField;
    Label41: TLabel;
    cbEmp: TDBLookupComboBox;
    TEMISSAO: TDateTimeField;
    TVENCI: TDateTimeField;
    edCod: TDBEdit;
    EdNome: TEdit;
    gdFor: TDBGrid;
    Label11: TLabel;
    qChequeL: TZQuery;
    dsChequeL: TDataSource;
    DBGrid1: TDBGrid;
    qChequeLbanco: TWideStringField;
    qChequeLAGENCIA: TWideStringField;
    qChequeLconta: TWideStringField;
    qChequeLvalor: TFloatField;
    qChequeLvenci: TDateTimeField;
    qChequeLnumero: TWideStringField;
    btnExcluir: TButton;
    qChequeLcodigo: TIntegerField;
    procedure sairExecute(Sender: TObject);
    procedure salvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure NovoCheque;
    procedure TNewRecord(DataSet: TDataSet);
    procedure edNomCliChange(Sender: TObject);
    procedure edNomCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure EdNomeChange(Sender: TObject);
    procedure EdNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    cValorE, vChequeVistaE, vChequePreE : real;
    chDiferenca : real;
    procedure total;
    { Private declarations }
  public
    vNovoCheque : boolean;
    vQtdCheques : Integer;
    vValorLancado    : Real;

    { Public declarations }
  end;

var
  fChequeEmitido: TfChequeEmitido;
  cFornecedorE, cFinanE, cIdCaixaE: Integer;
  chTotal, chLancado : Real;
  cTipoE, cAgenciaE, cCCE, cBCE : String;

  nCheque : integer;
  conf_ch, telabaixa : String;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfChequeEmitido.sairExecute(Sender: TObject);
begin
 if chLancado > 0 then
 begin
  conf_ch := 'S';
  //chLancado := 0;  //Removido para passar o total de cheque lançado para forma de pagamento
 end
 else
  conf_ch := 'N';


 close;

end;

procedure TfChequeEmitido.salvarExecute(Sender: TObject);
Var
  vValor : Real;
begin
  //total;
  if dbedit3.text <> '' then
  begin
    try
      vvalor := strtoFloat(TiraCaracter(dbedit3.text,'.'));
    except
      Application.MessageBox('Valor não informado. Por favor, verifique!','Atenção');
      DBEdit3.SetFocus;
      Exit;
    end;
  end;


  if (TVALOR.Value = 0) or (dbedit3.text = '') or (vValor = 0) then
  begin
   Application.MessageBox('Valor não informado. Por favor, verifique!','Atenção');
   DBEdit3.SetFocus;
   Exit;
  end;

  if TFORNECEDOR.Value = 0 then
  begin
   Application.MessageBox('Fornecedor não preenchido. Por favor, verifique!','Atenção');
   DBEdit9.SetFocus;
   Exit;
  end;
  T.Post;
  T.ApplyUpdates;

  vQtdCheques := vQtdCheques + 1;
  vValorLancado := vValorLancado + vValor;

  Total;

  if telabaixa = 'N' then
    novoCheque
  else
  if (chLancado < chTotal) then
  begin
    novoCheque;
    qChequeL.Close;
    qChequeL.Open;
  end
  else
  begin
   conf_ch := 'S';
   close;
  end;

end;

procedure TfChequeEmitido.total;
begin
  //chLancado   := chlancado + Tvalor.AsFloat;  //mudar aqui pra while
  qChequeL.Close;
  qChequeL.Open;
  chLancado := 0;
  while qChequeL.eof = false do
  begin
    chLancado   := chlancado + qChequeLValor.asFloat;
    qChequeL.next;
  end;

  if chtotal = 0 then
    chdiferenca := 0
  else
    chdiferenca := chtotal - chlancado;

  if TVENCI.asDatetime > TEMISSAO.asDatetime then
   vChequePreE := vChequePreE + tVALOR.Value
  else
   vChequeVistaE := vChequeVistaE + TVALOR.Value;

  if vNovoCheque then
  begin
    lnCheque.Caption := InttoStr(vQtdCheques);
    lLancado.Caption := FormatFloat('###,###,###,##0.00', vValorLancado);
  end
  else
  begin

    nCheque     := qChequeL.RecordCount;//nCheque + 1;
    lnCheque.Caption   := inttostr(nCheque);
    llancado.Caption   := formatfloat( '###,###,###,##0.00', chlancado   );
    lTotal.Caption     := formatfloat( '###,###,###,##0.00', chTotal     );
    lDiferenca.Caption := formatfloat( '###,###,###,##0.00', chDiferenca );
  end;

  if (T.state in [dsInsert, dsEdit]) and (chDiferenca > 0) then
    TValor.asFloat := chdiferenca;

end;


procedure TfChequeEmitido.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) and not(ActiveControl is TDBGrid) THEN
  BEGIN
   SelectNext(ActiveControl, True, True);
   Key := #0;
  END;
end;

procedure TfChequeEmitido.FormShow(Sender: TObject);
begin
  if vNovoCheque then
  begin
    label4.Visible := false;
    lTotal.Visible := false;
    label10.Visible := false;
    lDiferenca.Visible := false;
  end;
  total;
end;

procedure TfChequeEmitido.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
   Key := #0;
   TFORNECEDOR.AsInteger := DM.qPesq.FieldByName('id').AsInteger;
   edNomCli.Text         := DM.qPesq.FieldByName('nome').AsString;
   gdPesq.Visible        := False;
   DBEdit3.SetFocus;
  end;
end;

procedure TfChequeEmitido.FormCreate(Sender: TObject);
begin
 vChequeVistaE := 0;
 vChequePreE   := 0;
 nCheque       := 0;
 chtotal       := 0;
 chlancado     := 0;
 chdiferenca   := 0;

 vNovoCheque := false;
 vQtdCheques := 0;
 vValorLancado := 0;

end;

procedure TfChequeEmitido.btnExcluirClick(Sender: TObject);
begin
  if qChequeL.RecordCount = 0 then
    exit;

  if Application.MessageBox('Confirma Excluir Cheque?','Confirmação',MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION) = idyes then
  begin
    //T.Delete; //Mudar para execSQL
    execSQL('delete from chemitido where codigo = '+qChequeLCodigo.text);

    qChequeL.Close;
    qChequeL.Open;

    total;
  end;
end;

procedure TfChequeEmitido.DBEdit3Exit(Sender: TObject);
begin
  if telabaixa = 'N' then
    Exit;

  try
    strtofloat( TiraCaracter(dbedit3.Text, '.'));
  Except
    Application.Messagebox('Valor não informado. Por favor, verifique!', 'Atenção');
    dbedit3.setfocus;
    exit;
  end;

  if strtofloat( formatfloat('#0.00', (strtofloat( TiraCaracter(dbedit3.Text, '.')) + chLancado))) <= strtofloat( formatfloat('#0.00',chTotal)) then
     lnCheque.Caption   := inttostr(nCheque)
  else
  if strtofloat( formatfloat('#0.00', (strtofloat( TiraCaracter(dbedit3.Text, '.')) + chLancado))) >= strtofloat( formatfloat('#0.00',chTotal)) then
  begin
     Application.MessageBox('O valor do cheque não pode ser maior que valor da baixa', 'Atenção');
     TVALOR.AsFloat := chTotal - chlancado;
     dbedit3.SetFocus;
  end;


end;

procedure TfChequeEmitido.DBEdit9Exit(Sender: TObject);
begin
  if (DBEdit9.Text = '') or (DBEdit9.Text = '0') then
    edNomCli.SetFocus
  else
  begin
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' Select id , nome from '+
                     ' fornecedor where id = '+QuotedStr(DBEdit9.Text));
    DM.qPesq.Open;

    if not DM.qPesq.IsEmpty then
    begin
    edNomCli.Text := DM.qPesq.FieldByName('nome').AsString;
    dbedit3.SetFocus;
    end
    else
      edNomCli.SetFocus;
  end;
end;

procedure TfChequeEmitido.edCodExit(Sender: TObject);
begin
 if (EdCod.Text <> '') then
 begin
   DM.qPesq.Close;
   DM.qPesq.SQL.Clear;
   DM.qPesq.SQL.Add('Select conta.id, conta.titular Nome, ag, cc, bco  from conta where conta.id = '+EdCod.Text);
   DM.qPesq.Open;
   if not DM.qPesq.IsEmpty then
   begin
     EdNome.Text := DM.qPesq.FieldByName('Nome').AsString;
     cAgenciaE   := DM.qPesq.FieldByName('ag').Text;
     cCCE        := DM.qPesq.FieldByName('cc').Text;
     cBCE        := DM.qPesq.FieldByName('bco').Text;
     gdfor.Visible := false;

     if T.State = dsInsert then
     begin
       TBANCO.asstring   := cBCE;
       TCONTA.AsString   := cCCE;
       TAGENCIA.AsString := cAgenciaE;
     end;
     DBEdit3.SetFocus;
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

procedure TfChequeEmitido.edNomCliChange(Sender: TObject);
begin
  if (edNomCli.Text <> '') and (TFORNECEDOR.AsString = '') then
   begin
    posicionagrid(gdPesq, dbedit9);
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add('select ID, NOME from FORNECEDOR '+
                     ' where NOME like '+ quotedstr('%'+edNomCli.Text+'%')+
                     ' Order by NOME ');
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
     gdPesq.Visible := False
    else
     gdPesq.Visible := True;
  END
 else
  gdPesq.Visible := False;
end;

procedure TfChequeEmitido.edNomCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   IF Key = VK_DOWN THEN
  if gdPesq.Visible = True then
   gdPesq.SetFocus
  else
   DBEdit3.SetFocus;
end;

procedure TfChequeEmitido.edNomCliKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_up then
    begin
      Key := 0;
      if dm.qPesq.Bof then
         edNomCli.SetFocus;
    end;
end;

procedure TfChequeEmitido.EdNomeChange(Sender: TObject);
begin
  if (edNome.Text <> '') and (edCod.Text = '') then
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

procedure TfChequeEmitido.EdNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF Key = VK_DOWN THEN
    IF gdfor.Visible THEN
      gdfor.SetFocus;
end;

procedure TfChequeEmitido.FormActivate(Sender: TObject);
begin
  if edCod.Text <> '' then
   begin
    edCodExit(Application);
   end;

  if TFORNECEDOR.Value > 0 then
  begin
    DBEdit9Exit(Application);
    DBEdit9.Enabled := False;
  end
  else
  begin
    DBEdit9.Enabled := True;
    DBEdit9.SetFocus;
  end;

 chDiferenca := chTotal - chLancado;

 lnCheque.Caption   := inttostr(nCheque);
 llancado.Caption   := formatfloat( '###,###,###,##0.00', chlancado   );
 lTotal.Caption     := formatfloat( '###,###,###,##0.00', chTotal     );
 lDiferenca.Caption := formatfloat( '###,###,###,##0.00', chDiferenca );

 BuscarEmpUsuario( cbEmp );

end;

procedure TfChequeEmitido.TNewRecord(DataSet: TDataSet);
begin
  TX.Value          := 'F';
  Tcodemp.AsInteger := dm.qUseridemp.AsInteger;
  Tidemp.AsInteger  := dm.qUseridemp.AsInteger;

end;

procedure TfChequeEmitido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 fChequeEmitido :=  nil;
end;


Procedure TfChequeEmitido.NovoCheque;
var
  conta:integer;
begin


      conta          := Tidconta.Value;
      cFornecedorE   := Tfornecedor.Value;
      cIDcaixaE      := TIDthr050.Value;


    T.Insert;
    TEMISSAO.AsDateTime := Date;
    TVENCI.AsDateTime   := Date;
    TFORNECEDOR.Value := 0;
    TIDTHR030.Value   := 0;
    TVALOR.Value      := chDiferenca;
    TDEVOLVIDO.Value  := 0;
    TIDCONTA.Value    := Conta;
    TST.Value         := 0;
    TAGENCIA.Value    := cAgenciaE;
    TCONTA.Value      := cCCE;
    TBANCO.Value      := cBCE;
    TFORNECEDOR.Value := cFornecedorE;
    TIDTHR050.Value   := cIDCaixaE;

    Dbedit3.SetFocus;
    DBedit3.SelectAll;


end;



end.



