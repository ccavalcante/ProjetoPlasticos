unit uControleChequeEmitidos;

interface

uses
  Windows, Messages, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,  ActnList, StdCtrls, Grids, DBGrids, DBCtrls, Buttons, Mask,
  ExtCtrls, ComCtrls, jpeg, XiButton, SysUtils, System.Actions,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ZSqlUpdate;

type
  TfControleChequeEmitidos = class(TForm)
    ActionList1: TActionList;
    acSair: TAction;
    acCompensado: TAction;
    D: TDataSource;
    edPesq: TEdit;
    Label16: TLabel;
    DBGrid1: TDBGrid;
    XiButton1: TXiButton;
    XiButton5: TXiButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    edCodConta: TEdit;
    edDesConta: TEdit;
    gdPesq: TDBGrid;
    XiButton2: TXiButton;
    acNovo: TAction;
    edTotal: TEdit;
    Label3: TLabel;
    Image3: TImage;
    Label6: TLabel;
    DtIni: TDateTimePicker;
    DtFim: TDateTimePicker;
    ckTodas: TCheckBox;
    T: TZQuery;
    TCODIGO: TIntegerField;
    TBANCO: TWideStringField;
    TFORNECEDOR: TIntegerField;
    TNUMERO: TWideStringField;
    TAGENCIA: TWideStringField;
    TCONTA: TWideStringField;
    TVALOR: TFloatField;
    TCODEMP: TIntegerField;
    TDEVOLVIDO: TIntegerField;
    TIDTHR030: TIntegerField;
    TST: TIntegerField;
    TIDTHR050: TIntegerField;
    TX: TWideStringField;
    TIDCONTA: TIntegerField;
    TOBS: TWideStringField;
    TNOME: TWideStringField;
    TTPCONTA: TWideStringField;
    TDesSt: TWideStringField;
    uT: TZUpdateSQL;
    Label8: TLabel;
    cbEmp: TComboBox;
    Tidemp: TIntegerField;
    Tfantasia: TWideStringField;
    TEMISSAO: TDateTimeField;
    TVENCI: TDateTimeField;
    Shape3: TShape;
    Label9: TLabel;
    Shape1: TShape;
    Label10: TLabel;
    XiButton8: TXiButton;
    acImp: TAction;
    procedure acSairExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
    procedure acNovoExecute(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ckTodasClick(Sender: TObject);
    procedure DtIniChange(Sender: TObject);
    procedure DtFimChange(Sender: TObject);
    procedure gdPesqKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure cbEmpClick(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acImpExecute(Sender: TObject);
  private
    { Private declarations }
    ordem : String;
    Status : String;
    IdConta : Integer;
  public
    { Public declarations }
    Procedure AtivaT;
  end;

var
    fControleChequeEmitidos: TfControleChequeEmitidos;


  implementation

uses uDM, uFuncao, uChequeEmitido, uImpCheque;


{$R *.dfm}


procedure TfControleChequeEmitidos.acSairExecute(Sender: TObject);
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

procedure TfControleChequeEmitidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
if (Key = #13) and not(ActiveControl is TDBGrid) then
  Begin
   SelectNext(ActiveControl,True,True);
   Key:= #0;
  End;
end;

procedure TfControleChequeEmitidos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fControleChequeEmitidos := nil;
end;

procedure TfControleChequeEmitidos.edCodContaExit(Sender: TObject);
begin
if (edCodConta.Text = '') or (edCodConta.Text = '0') then
 begin
  edCodConta.Clear;
  edDesConta.Clear;
  edDesConta.SetFocus;
 end
else
 begin
  DM.qSelPesq.Close;
  DM.qSelPesq.SQL.Clear;
  DM.qSelPesq.SQL.Add('Select * from '+
                      'CONTA where ID = '+edCodConta.Text);
  DM.qSelPesq.Open;

  if not DM.qSelPesq.IsEmpty then
   begin
    edDesConta.Text := DM.qSelPesq.FieldByName('TITULAR').AsString;
    IdConta := StrToInt(edCodConta.Text);
    cCCE := DM.qSelPesq.FieldByName('cc').Text;
    cAgenciaE := DM.qSelPesq.FieldByName('ag').Text;
    cBCE := DM.qSelPesq.FieldByName('bco').Text;

    gdPesq.Visible := False;
    
    edPesq.SetFocus;
   end
  else
   BEGIN
    IdConta := 0;
    edCodConta.Clear;
    edDesConta.SetFocus;
   END;  
 end;

 AtivaT;
end;

procedure TfControleChequeEmitidos.gdPesqKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;

end;

procedure TfControleChequeEmitidos.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
   Key := #0;
   edCodConta.Text := DM.qSelPesq.fieldbyname('id').Text;

   EdCodContaExit(Application);
  end;
end;

procedure TfControleChequeEmitidos.TAfterScroll(DataSet: TDataSet);
begin
  acCompensado.Enabled := not (TDesSt.AsString = 'COMPENSADO');
end;

procedure TfControleChequeEmitidos.TNewRecord(DataSet: TDataSet);
begin
  T.Cancel;
end;

procedure TfControleChequeEmitidos.edDesContaChange(Sender: TObject);
begin
 if (edCodConta.Text = '') and (EdDesConta.Text <> '') then
  begin
   DM.qSelPesq.Close;
   DM.qSelPesq.SQL.Clear;
   DM.qSelPesq.SQL.Add('Select * from conta where titular like '+QuotedStr('%'+EdDesConta.Text+'%'));
   DM.qSelPesq.Open;

   if DM.qSelPesq.IsEmpty then
    gdPesq.Visible := False
   else
    gdPesq.Visible := True;
  end;
end;

procedure TfControleChequeEmitidos.edDesContaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if Key = VK_down Then
  if gdPesq.Visible then
   gdPesq.SetFocus;
end;

procedure TfControleChequeEmitidos.ComboBox1Change(Sender: TObject);
begin
   edCodConta.Enabled := True;
   edDesConta.Enabled := True;
   Label2.Enabled := True;

 if ComboBox1.Text = 'TODOS' then
  Status := 'T'
 else if ComboBox1.Text = 'ABERTOS' then
  Status := 'A'
 ELSE IF ComboBox1.Text = 'COMPENSADOS' THEN
  Status := 'D';

  AtivaT;
end;

procedure TfControleChequeEmitidos.AtivaT;
 var Total : Real;
  Emp : integer;
begin
 Emp    := strtoint(copy(cbEmp.text,1,1));

 T.Close;
 T.ParamByName('conta').Value := IdConta;
 T.ParamByName('stat').Value := Status;
  IF edPesq.Text = '' THEN
    T.ParamByName('PESQ').Value := '                                                  '
   ELSE
    T.ParamByName('PESQ').Value := '%'+edPesq.Text+'%';

 if ckTodas.Checked then
    T.ParamByName('dd').asinteger := 0
 else begin
    T.ParamByName('dd').asinteger  := 1;
    T.ParamByName('di').AsDate     := dtini.Date;
    T.ParamByName('df').AsDate     := dtfim.Date;
 end;
 T.ParamByName('emp').Value := Emp;
 T.Open;
 T.FetchAll;
 T.First;

 Total := 0;
 while T.Eof = false do
  begin
   Total := Total + TVALOR.Value;

   T.Next;
  end;

 edTotal.Text := FormatFloat('###,###,###,##0.00', Total);
 T.First;
end;

procedure TfControleChequeEmitidos.cbEmpClick(Sender: TObject);
begin
  AtivaT;
end;

procedure TfControleChequeEmitidos.ckTodasClick(Sender: TObject);
begin
  if ckTodas.Checked then begin
    dtini.Enabled := false;
    dtfim.Enabled := false;
  end
  else begin
    dtini.Enabled := true;
    dtfim.Enabled := true;
  end;
  AtivaT;

end;

procedure TfControleChequeEmitidos.edPesqChange(Sender: TObject);
begin
AtivaT;
end;

procedure TfControleChequeEmitidos.FormActivate(Sender: TObject);
begin
 ComboBox1Change(Application);
 gdPesq.Visible := False;
end;

procedure TfControleChequeEmitidos.FormCreate(Sender: TObject);
begin

 EmpresaComboZero( cbEmp );

 cktodasclick(Application);
 IdConta :=0;
 dtini.Date := Date;
 dtfim.Date := Date;
 ordem := 'DESC';


end;

procedure TfControleChequeEmitidos.DBGrid1TitleClick(Column: TColumn);
 VAR SQL, campo : String;
begin
 IF ORDEM = 'DESC' THEN
    ORDEM := 'ASC' ELSE ORDEM := 'DESC';

 campo := uppercase(trim(Column.FieldName));
 if campo = 'NOME' then
    campo := 'fornecedor.NOME'
 else
 if campo = 'TPCONTA' then
    campo := 'CONTA.tipo'
 else
 if campo = 'DESST' then
    campo := '5'
 else
 if campo = 'VENCI' then
    campo := '1'
 else
 if campo = 'EMISSAO' then
    campo := '2'
 else
    campo := 'chemitido.'+campo;


 SQL := ' select chemitido.venci, '+
        ' chemitido.emissao, '+
        ' fornecedor.NOME, CONTA.tipo AS TPCONTA, '+
        ' case '+
        '  when (chemitido.st = 0) then  ''ABERTO    '' '+
        '  WHEN chemitido.st = 1   THEN  ''COMPENSADO''  '+
        '  when chemitido.st = 2   THEN  ''DEVOLVIDO ''  '+
        '  else '+
        '    ''          ''  '+
        ' end DesSt, '+
        ' chemitido.* , empresa.fantasia '+
        ' from chemitido '+
        ' LEFT JOIN fornecedor ON fornecedor.id = chemitido.fornecedor '+
        ' LEFT JOIN CONTA ON CONTA.id = chemitido.idconta '+
        ' left join empresa on empresa.id = chemitido.idemp '+
        ' Where ((:conta = 0) or (chemitido.idconta = :conta)) and '+
        '       ((:stat = ''T'') or '+
        '        (:stat = ''A'' and chemitido.st = 0) or '+
        '        (:stat = ''D'' and chemitido.st = 1) OR '+
        '        (:stat = ''V'' AND chemitido.st = 2)) and '+
        '       ((''                                                  '' = :PESQ) OR '+
        '        (fornecedor.NOME LIKE :PESQ))  and '+
        '       ((:emp = 0) or (chemitido.idemp = :emp)) and ' +
        '       ((:dd = 0) or (chemitido.VENCI between :di and :df) ) '+
        ' ORDER BY '+ campo + ' ' + ORDEM;

   T.Close;
   T.SQL.Clear;
   T.SQL.Add(SQL);

   AtivaT;


end;

procedure TfControleChequeEmitidos.DtFimChange(Sender: TObject);
begin
AtivaT;
end;

procedure TfControleChequeEmitidos.DtIniChange(Sender: TObject);
begin
   AtivaT;
end;

procedure TfControleChequeEmitidos.acCompensadoExecute(Sender: TObject);
begin
  if T.IsEmpty then
    Exit;

  if Application.MessageBox('Confirma a Compensação do Cheque?','Confirmação', MB_YESNO)=idyes then
  begin
    if not DM.Cx.active then
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
     DM.CxIDMOV.Value        := Tcodigo.Value;
     DM.CxIDCONTA.Value      := TIDCONTA.Value;
     DM.Cxsegundaforma.Value := 'N';
     DM.CxFPGTO.Value        := 'CHEQUE';
     DM.CxVALOR.Value        := TVALOR.Value * (-1);
     DM.CxF_CHEQUE.Value     := DM.CxVALOR.Value;
     DM.CxTOTAL.Value        := DM.CxVALOR.Value;
     DM.CxValorFpgto.Value   := TVALOR.Value * (-1);
     DM.CxDescri.Value       := 'CHEQUE COMPENSADO';
     DM.Cxidemp.Value        := Tidemp.Value;

     DM.Cx.Post;

    T.Edit;
    TST.Value := 1;
    T.Post;

    AtivaT;
  end;
end;

procedure TfControleChequeEmitidos.acImpExecute(Sender: TObject);
begin
 Application.CreateForm(TfImpCheque, fImpCheque);

 vEnv_EmailDest := '';
 vEnv_Report    := fImpCheque.rpEmitidos;
 fImpCheque.rpEmitidos.PreviewModal;
 fImpCheque.Free;

end;

procedure TfControleChequeEmitidos.acNovoExecute(Sender: TObject);
begin
      if (edCodConta.Text = '') or (edCodConta.Text = '0') then
       begin
        Application.MessageBox('Conta Não Preenchida!','Atenção');
        edCodConta.SetFocus;
        Exit;
       end;

       
      Application.CreateForm(TfChequeEmitido, fChequeEmitido);
      fChequeEmitido.vNovoCheque := true;
      telabaixa := 'N';
      fChequeEmitido.T.Close;
      fChequeEmitido.T.Open;

      fChequeEmitido.T.Insert;
      fChequeEmitido.TEMISSAO.AsDateTime := Date;
      fChequeEmitido.TVENCI.AsDateTime   := Date;
      fChequeEmitido.TFORNECEDOR.Value := 0;
      fChequeEmitido.TIDTHR030.Value := 0;
      fChequeEmitido.TVALOR.Value := 0;
      fChequeEmitido.TDEVOLVIDO.Value := 0;
      fChequeEmitido.TIDTHR050.Value := 0;
      fChequeEmitido.TIDCONTA.Text := edCodConta.Text;
      //fChequeEmitido.edCodExit(Application);
      fChequeEmitido.TST.Value := 0;
      fChequeEmitido.TAGENCIA.Value := cAgenciaE;
      fChequeEmitido.TCONTA.Value := cCCE;
      fChequeEmitido.TBANCO.Value := cBCE;

      fChequeEmitido.ShowModal;

      fChequeEmitido.Free;

      AtivaT;

end;

procedure TfControleChequeEmitidos.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
if (gdSelected in State) then
  begin
     dbGrid1.Canvas.Brush.Color := $00FCA258;
     dbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if (trim(TDESSt.Value) = 'COMPENSADO') then  //compensado
       dbGrid1.Canvas.Brush.Color := $00A5F58D;
  end;
  dbGrid1.DefaultDrawDataCell(Rect, dbGrid1.Columns[DataCol].Field ,state);

end;

procedure TfControleChequeEmitidos.DBGrid1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
      if tira_delete_grid(key, shift) then
       abort;
end;

end.
