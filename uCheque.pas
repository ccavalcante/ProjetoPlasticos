unit uCheque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XiButton, Mask, DBCtrls,
  ActnList, Grids, DBGrids, DB, System.Actions, ZSqlUpdate, DateUtils,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfCheque = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    XiButton1: TXiButton;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    ActionList1: TActionList;
    salvar: TAction;
    sair: TAction;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label8: TLabel;
    EdDesBco: TEdit;
    XiButton2: TXiButton;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    edNomCli: TEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label11: TLabel;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    ckVerCheque: TCheckBox;
    DBGrid1: TDBGrid;
    dCheq: TDataSource;
    Button1: TButton;
    acVerCheque: TAction;
    Image3: TImage;
    rdCpf: TComboBox;
    qCheq: TZQuery;
    qCheqId: TIntegerField;
    WideStringField1: TWideStringField;
    qCheqIDCLIENTE: TIntegerField;
    qCheqNUMERO: TWideStringField;
    qCheqAGENCIA: TWideStringField;
    qCheqCONTA: TWideStringField;
    WideStringField2: TWideStringField;
    qCheqCODEMP: TIntegerField;
    qCheqCODVENDA: TIntegerField;
    qCheqDEVOLVIDO: TIntegerField;
    qCheqCODFINAN: TIntegerField;
    qCheqTIPO: TWideStringField;
    qCheqST: TIntegerField;
    qCheqIDMOVCAIXA: TIntegerField;
    qCheqSTANTERIOR: TIntegerField;
    qCheqCONTAANTERIOR: TIntegerField;
    qCheqX: TWideStringField;
    qCheqIDCONTA: TIntegerField;
    qCheqCPF: TWideStringField;
    qCheqTEL: TWideStringField;
    qCheqEX: TIntegerField;
    qCheqIDUSU: TIntegerField;
    qCheqCELU: TWideStringField;
    qCheqRECADO: TWideStringField;
    qCheqMOTDEV1: TWideStringField;
    qCheqMOTDEV2: TWideStringField;
    uCheq: TZUpdateSQL;
    gdPesq: TDBGrid;
    qCheqVALOR: TFloatField;
    gdPesq2: TDBGrid;
    qCheqOBS: TWideMemoField;
    qCheqidemp: TIntegerField;
    Label41: TLabel;
    cbEmp: TDBLookupComboBox;
    qCheqEMISSAO: TDateTimeField;
    qCheqVENCI: TDateTimeField;
    qCheqDTOPERACAO: TDateTimeField;
    qCheqDTDEV1: TDateTimeField;
    qCheqDTDEV2: TDateTimeField;
    Label10: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Bevel1: TBevel;
    edVal: TLabel;
    edLan: TLabel;
    edDif: TLabel;
    Label16: TLabel;
    cbConta: TDBLookupComboBox;
    lFantasia: TLabel;
    procedure sairExecute(Sender: TObject);
    procedure salvarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure ckVerChequeClick(Sender: TObject);
    Procedure somacheques;
    procedure qCheqAfterPost(DataSet: TDataSet);
    procedure qCheqAfterDelete(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure acVerChequeExecute(Sender: TObject);
    procedure rdCpfChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edNomCliChange(Sender: TObject);
    procedure EdDesBcoChange(Sender: TObject);
    procedure EdDesBcoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure gdPesq2KeyPress(Sender: TObject; var Key: Char);
    procedure qCheqNewRecord(DataSet: TDataSet);
    procedure qCheqBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vValorTotalCH, cValorVendaCH : real;
    cClienteCH, cMovimentoCH, novoIdContaCH  : Integer;
    cTipoCH, idChequesCH : String;
    cFinan, cIdBaixa, cIdConta, cUsu : Integer;
    cBco, cAgencia, cCC, cEmitente, cTelefone, cCPF : String;
    cVenci : TDate;
    cDia, cEmp : Integer;
    cValorAnt : Real;
    vL,vW : integer;

    Procedure NovoCheque;
  end;

var
  fCheque: TfCheque;


implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfCheque.sairExecute(Sender: TObject);
begin
  if qCheq.Active then
  begin
    if qCheq.RecordCount = 0 then
     vValorTotalCH := 0
    else
     somacheques;
  end;

  close;
end;

procedure TfCheque.salvarExecute(Sender: TObject);
var
  ultID : String;
  vValor : Real;
begin
 if not (dm.qCheq.state in [dsEdit, dsInsert]) then
   dm.qCheq.Edit;

 if (DM.qCheqIDCLIENTE.asinteger = 0 ) then
 begin
   Application.MessageBox('Cliente Não Preenchido!','Atenção');
   DBEdit9.SetFocus;
   Exit;
 end;

   {if DM.qCheqVENCI.Value > DM.qCheqEMISSAO.Value then
   begin
      vChequePre := vChequePre + DM.qCheqVALOR.Value;
      DM.qCheqIDCONTA.Value := 0;
   end
   else
   begin
      vChequeVista := vChequeVista + DM.qCheqVALOR.Value;
      if cIdConta > 0  then
         DM.qCheqIDCONTA.Value := cIdConta;
   end;}
 //Verifica se valor co cheque é 0
 if dbedit3.text <> '' then
 begin
   try
    vValor := dm.qCheqVALOR.asFloat;
   Except
    application.messagebox('Valor inválido. Por favor, verifique!', 'Atenção');
    dbedit3.setFocus;
    exit;
   end;
 end;

 if (dm.qCheqVALOR.asFloat = 0) or (dbedit3.text = '') or (dbedit3.text = '0') or (vValor = 0) then
 begin
   Application.messagebox('Valor do cheque não pode ser zero. Por favor, verifique!', 'Atenção');
   dbedit3.setFocus;
   exit;
 end;


  cEmp     := dm.qCheqidemp.AsInteger;

  cClienteCH := dm.qCheqIDCLIENTE.AsInteger;
  cTipoCH    := dm.qCheqTIPO.Value;

  DM.qCheq.Post;
  DM.qCheq.applyUpdates;

   cBco      := DM.qCheqBANCO.Text;
   cAgencia  := DM.qCheqAGENCIA.Text;
   cCC       := DM.qCheqCONTA.Text;
   cEmitente := DM.qCheqEMITENTE.Text;
   cTelefone := DM.qCheqTEL.Text;
   cCPF      := DM.qCheqCPF.Text;
   cValorAnt := DM.qCheqVALOR.Value;
   cDia      := DayOf(DM.qCheqVENCI.AsDateTime);
   cVenci    := DM.qCheqVENCI.AsDateTime;
   cIDBaixa  := DM.qCheqidmovcaixa.Value;
   cIDConta  := novoIdContaCH;
   cClienteCH  := dm.qCheqIDCLIENTE.Value;
   cEmp      := dm.qCheqIDEmp.Value;
   cUsu      := dm.qCheqIDUSU.Value;
   cFinan    := DM.qCheqCODFINAN.AsInteger;

  ultId := inttostr(BuscaUltimoID('cheques'));
  if trim(idChequesCH) = '' then
     idChequesCH :=  ultId
  else
     idChequesCH := idChequesCH + ',' + ultId;


  // grada log
  GravaLogCheque( dm.qUserID.AsInteger, dm.qCheqID.AsInteger, 0 , 'ABERTOS', 'NOVO' );

   //AtualizaGrid
   qCheq.Close;
   qCheq.ParamByName('Venda').asinteger := cMovimentoCH;
   qCheq.ParamByName('Cli').asinteger   := cClienteCH;
   qCheq.ParamByName('Tipo').asstring   := cTipoCH;
   qCheq.ParamByName('cx').asinteger    := DM.qCheqidmovcaixa.Value;
   qCheq.Open;

   somacheques;
   novoIdContaCH := cbConta.KeyValue;

{  if vValorTotal >= cValorVenda then
  begin
     close
  end
  else
  begin }



   sleep(100);

   if Application.MessageBox('Deseja lançar outro cheque?','Confirmação', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2) = idyes then
      novoCheque
   else
   begin
     close;
   end;
  //end;

end;

Procedure TfCheque.NovoCheque;
begin
        cValorAnt := cValorVendaCH - vValorTotalCH;

        DM.qCheq.Insert;
        DM.qCheqEMISSAO.AsDateTime := Date;
        DM.qCheqVENCI.AsDateTime   := Date;
        DM.qCheqDTOperacao.asDateTime := date;
        DM.qCheqIDEMP.Value        := cEmp;
        DM.qCheqDEVOLVIDO.Value    := 0;
        DM.qCheqST.Value           := 0;

        DM.qCheqIDUSU.Value       := cUsu;
        DM.qCheqIDCLIENTE.Value   := cClienteCH;
        DM.qCheqCODVENDA.Value    := cMovimentoCH;
        DM.qCheqCODEMP.Value      := cEmp;
        DM.qCheqCODFINAN.Value    := cFinan;
        DM.qCheqTIPO.Value        := cTipoCH;
        DM.qCheqIDMOVCAIXA.Value  := cIDBaixa;
        DM.qCheqIDCONTA.Value     := cIDConta;
        DM.qCheqBANCO.Text        := cBco;
        DM.qCheqAGENCIA.Text      := cAgencia;
        DM.qCheqCONTA.Text        := cCC;
        DM.qCheqEMITENTE.Text     := cEmitente;
        DM.qCheqTEL.Text          := cTelefone;
        DM.qCheqCPF.Text          := cCPF;
        DM.qCheqVALOR.Value       := cValorAnt;
            case MonthOf(cVenci + 30) of
             1,3,5,7,8,10,12 : begin
                                DM.qCheqVENCI.AsDateTime := StrToDate(IntToStr(cDia)+'/'+FormatDateTime('mm/yyyy', cVenci + 30));
                               end;
             2 : begin
                  if cDia > 28 then
                   DM.qCheqVENCI.AsDateTime := StrToDate('28/'+FormatDateTime('mm/yyyy', cVenci + 30))
                  else
                   DM.qCheqVENCI.AsDateTime := StrToDate(IntToStr(cDia)+'/'+FormatDateTime('mm/yyyy', cVenci + 30));
                 end;
             4,6,9,11 : begin
                         if cDia > 30 then
                          DM.qCheqVENCI.AsDateTime := StrToDate('30/'+FormatDateTime('mm/yyyy', cVenci + 30))
                         else
                          DM.qCheqVENCI.AsDateTime := StrToDate(IntToStr(cDia)+'/'+FormatDateTime('mm/yyyy', cVenci + 30));
                        end;
            end;

       //AtualizaGrid
        qCheq.Close;
        qCheq.ParamByName('Venda').asinteger := cMovimentoCH;
        qCheq.ParamByName('Cli').asinteger   := cClienteCH;
        qCheq.ParamByName('Tipo').asstring  := cTipoCH;
        qCheq.ParamByName('cx').asinteger    := cIDBaixa;
        qCheq.Open;

        cbConta.Enabled := false;

        DBEdit9Exit(Application);
        dbedit1exit(Application);
        DBEdit3.SetFocus;


end;


procedure TfCheque.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not(ActiveControl is TDBGrid) then
 BEGIN
  SelectNext(ActiveControl, True, True);
  Key := #0;
 END;
end;

procedure TfCheque.FormShow(Sender: TObject);
begin
 if (DM.qCheqIDCLIENTE.Value > 0) then
 begin
   DBEdit9Exit(Application);
   Dbedit9.ReadOnly  := true;
   edNomCli.ReadOnly := true;
 end
 else
    DBEdit9.SetFocus;

 vL := Left;
 vW := Width;
 ckVerCheque.Checked := false;
 ckVerChequeClick(Application);

 if cEmp > 0 then
   dm.qEmpresa.Locate('id', cEmp,[]);


 somacheques;
end;

procedure TfCheque.gdPesq2KeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   dm.qCheqIDCLIENTE.Value := DM.qSelect.fieldbyname('id').Value;
   dbedit9.Text := DM.qSelect.fieldbyname('id').Value;
   dbedit9Exit(Application);
  end;

end;

procedure TfCheque.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   dbedit1.text  := DM.qSelect.fieldbyname('id').Value;
   dbedit1Exit(Application);
  end;

end;

procedure TfCheque.DBEdit1Exit(Sender: TObject);
begin
 if (DBEdit1.Text = '') or (DBEdit1.Text = '0') then
 begin
  edDesBco.SetFocus;
 end
 else
 begin
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add(' Select Codigo, Descricao from bancos'+
                     ' where codigo = '+QuotedStr(DBEdit1.Text));
  DM.qSelect.Open;
  if not DM.qSelect.IsEmpty then
   begin
    EdDesBco.OnChange := nil;
    EdDesBco.Text     := DM.qSelect.FieldByName('Descricao').AsString;
    EdDesBco.OnChange := EdDesBcoChange;
    gdPesq.Visible := false;

    DBEdit8.SetFocus;
   end
   else
   begin
     dbedit1.clear;
     dbedit1.setfocus;
   end;

 end;
end;

procedure TfCheque.FormCreate(Sender: TObject);
begin
  width := 560;

  novoIdContaCH := 1;
  vValorTotalCH    := 0;

  dm.qConta.Open;
  lFantasia.Caption := '';
end;

procedure TfCheque.DBEdit9Exit(Sender: TObject);
begin
if (DBEdit9.Text = '') or (DBEdit9.Text = '0') then
 begin
  edNomCli.SetFocus;
 end
else
 begin
  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('Select ID , nome, razao, tppessoa from '+
                      'cliente where id = '+QuotedStr(DBEdit9.Text));
  DM.qSelect.Open;

  if not DM.qSelect.IsEmpty then
   begin
    edNomCli.OnChange := nil;
    edNomCli.Text := DM.qSelect.FieldByName('razao').AsString;
    lFantasia.Caption := DM.qSelect.FieldByName('nome').AsString;
    edNomCli.OnChange := edNomCliChange;
    gdPEsq2.Visible := false;

    rdCpf.ItemIndex := 0;
    rdCpfChange(Application);

    DBEdit3.SetFocus;
   end
  else
   edNomCli.SetFocus;
 end;
end;

procedure TfCheque.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;

end;

procedure TfCheque.EdDesBcoChange(Sender: TObject);
begin
     if EdDesBco.Text <> '' then
     begin
       gdPesq.left := dbedit1.left;
       gdPesq.top  := dbedit1.top + dbedit1.height+1;
       DM.qSelect.Close;
       DM.qSelect.SQL.Clear;
       DM.qSelect.SQL.Add('Select codigo id, descricao nome from bancos where descricao like '+QuotedStr('%'+EdDesBco.Text+'%'));
       DM.qSelect.Open;
       if DM.qSelect.IsEmpty then
          gdPesq.Visible := False
       else
          gdPesq.Visible := True;
     end;

end;

procedure TfCheque.EdDesBcoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_down Then
  if gdPesq.Visible then
   gdPesq.SetFocus;

end;

procedure TfCheque.edNomCliChange(Sender: TObject);
begin
   if EdNOMcLI.Text <> '' then
   begin
     gdPesq2.left := dbedit9.left;
     gdPesq2.top  := dbedit9.top + dbedit9.height+1;
     DM.qSelect.Close;
     DM.qSelect.SQL.Clear;
     DM.qSelect.SQL.Add('Select id, nome, razao from cliente where nome like '+QuotedStr('%'+EdNomCli.Text+'%'));
     DM.qSelect.Open;
     if DM.qSelect.IsEmpty then
        gdPesq2.Visible := False
     else
        gdPesq2.Visible := True;
   end;
   lFantasia.Caption := '';
end;

procedure TfCheque.edNomCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_down Then
  if gdPesq2.Visible then
   gdPesq2.SetFocus;

end;

procedure TfCheque.ckVerChequeClick(Sender: TObject);
begin
  if ckVerCheque.Checked then
    begin
      fCheque.Left  := vL - 197;
      fCheque.Width := vW + 394;
    end
   else
    begin
      fCheque.Left  := vL;
      fCheque.Width := vW;
    end;
  fCheque.Refresh;

end;

Procedure TfCheque.somacheques;
var
  tc:real;
begin
  if qCheq.active then
  begin
    tc := 0;
    qCheq.first;
    while qCheq.Eof = false do
    begin
      tc := tc + qCheqValor.AsFloat;

      qCheq.Next;
    end;

    vValorTotalCH := tc;

    edVal.Caption := formatfloat('#0.00', cValorVendaCH);
    edLan.Caption := formatfloat('#0.00', vValorTotalCH);
    edDif.Caption := formatfloat('#0.00', cValorVendaCH - vValorTotalCH );
  end;

end;


procedure TfCheque.qCheqAfterPost(DataSet: TDataSet);
begin
  somacheques;
end;

procedure TfCheque.qCheqBeforePost(DataSet: TDataSet);
begin
  qCheqCODEMP.AsInteger := qCheqidemp.AsInteger;
end;

procedure TfCheque.qCheqNewRecord(DataSet: TDataSet);
begin
   qCheqidemp.AsInteger := dm.qUseridemp.AsInteger;
end;

procedure TfCheque.rdCpfChange(Sender: TObject);
begin
    if rdCpf.ItemIndex = 1 then
       Dm.qCheqCPF.EditMask := '##.###.###/####-##'
    else
       Dm.qCheqCPF.EditMask := '###.###.###-##';

end;

procedure TfCheque.qCheqAfterDelete(DataSet: TDataSet);
begin

  somacheques;


end;

procedure TfCheque.Button1Click(Sender: TObject);
begin
  qCheq.Delete;
end;

procedure TfCheque.acVerChequeExecute(Sender: TObject);
begin
   ckVercheque.Checked := true;
   ckVerChequeClick(Application);
end;

end.
