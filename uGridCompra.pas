unit uGridCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, jpeg, ExtCtrls, ActnList, StdCtrls, Buttons,
  XiButton, DBCtrls, System.Actions, Data.DB, Vcl.ComCtrls, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZSqlUpdate;

type
  TfGridCompra = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    ActionList1: TActionList;
    inserir: TAction;
    alterar: TAction;
    excluir: TAction;
    imprimir: TAction;
    sair: TAction;
    XiButton2: TXiButton;
    XiButton1: TXiButton;
    XiButton3: TXiButton;
    XiButton5: TXiButton;
    XiButton6: TXiButton;
    Label1: TLabel;
    edPesq: TEdit;
    Label5: TLabel;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    ckTodas: TCheckBox;
    Label11: TLabel;
    cbEmp: TComboBox;
    qCompra: TZQuery;
    qCompraid: TIntegerField;
    qCompraDATA: TDateTimeField;
    qCompraIDFORNECEDOR: TIntegerField;
    qCompraNOME: TWideStringField;
    qCompraVALOR: TFloatField;
    qCompraNUMNOTA: TIntegerField;
    dCompra: TDataSource;
    qComprafantasia: TWideStringField;
    cbSt: TComboBox;
    Label2: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    Shape5: TShape;
    Label12: TLabel;
    Shape6: TShape;
    Label13: TLabel;
    qComprastatus: TWideStringField;
    XiButton4: TXiButton;
    acDupl: TAction;
    Co: TZQuery;
    IT: TZQuery;
    coNova: TZQuery;
    uCoNova: TZUpdateSQL;
    ITNova: TZQuery;
    uITNova: TZUpdateSQL;
    CoId: TIntegerField;
    CoDATA: TDateTimeField;
    CoNUMNOTA: TIntegerField;
    CoidCusto: TIntegerField;
    CoidFornecedor: TIntegerField;
    Coidcondpgto: TIntegerField;
    CoValor: TFloatField;
    CoDESCONTO: TFloatField;
    CoTotal: TFloatField;
    CoVALICMS: TFloatField;
    CoBASEICMS: TFloatField;
    CoVALIPI: TFloatField;
    CoFRETE: TFloatField;
    CoOUTROS: TFloatField;
    Cobaseicmsst: TFloatField;
    Covaloricmsst: TFloatField;
    Covlrseguro: TFloatField;
    Covlrdesconto: TFloatField;
    Cocfop: TIntegerField;
    Comodelo: TWideStringField;
    Coserie: TWideStringField;
    Cosubserie: TWideStringField;
    Cotpfrete: TIntegerField;
    CoidUsuario: TIntegerField;
    CoOBS: TWideStringField;
    CoEx: TIntegerField;
    CoX: TWideStringField;
    Coidemp: TIntegerField;
    Conf_ref: TIntegerField;
    Costatus: TWideStringField;
    ITId: TIntegerField;
    ITidCompra: TIntegerField;
    ITidProduto: TIntegerField;
    ITQtd: TFloatField;
    ITUnitario: TFloatField;
    ITDESCONTO: TFloatField;
    ITTotal: TFloatField;
    ITST2: TFloatField;
    ITFRETE2: TFloatField;
    ITUNITLIQ: TFloatField;
    ITFRETE: TFloatField;
    ITIPI: TFloatField;
    ITST: TFloatField;
    ITicms: TFloatField;
    ITcfop: TIntegerField;
    ITCST: TWideStringField;
    ITTIPO: TWideStringField;
    ITsubserie: TWideStringField;
    ITtpfrete: TIntegerField;
    ITidoc: TIntegerField;
    coNovaId: TIntegerField;
    coNovaDATA: TDateTimeField;
    coNovaNUMNOTA: TIntegerField;
    coNovaidCusto: TIntegerField;
    coNovaidFornecedor: TIntegerField;
    coNovaidcondpgto: TIntegerField;
    coNovaValor: TFloatField;
    coNovaDESCONTO: TFloatField;
    coNovaTotal: TFloatField;
    coNovaVALICMS: TFloatField;
    coNovaBASEICMS: TFloatField;
    coNovaVALIPI: TFloatField;
    coNovaFRETE: TFloatField;
    coNovaOUTROS: TFloatField;
    coNovabaseicmsst: TFloatField;
    coNovavaloricmsst: TFloatField;
    coNovavlrseguro: TFloatField;
    coNovavlrdesconto: TFloatField;
    coNovacfop: TIntegerField;
    coNovamodelo: TWideStringField;
    coNovaserie: TWideStringField;
    coNovasubserie: TWideStringField;
    coNovatpfrete: TIntegerField;
    coNovaidUsuario: TIntegerField;
    coNovaOBS: TWideStringField;
    coNovaEx: TIntegerField;
    coNovaX: TWideStringField;
    coNovaidemp: TIntegerField;
    coNovanf_ref: TIntegerField;
    coNovastatus: TWideStringField;
    ITNovaId: TIntegerField;
    ITNovaidCompra: TIntegerField;
    ITNovaidProduto: TIntegerField;
    ITNovaQtd: TFloatField;
    ITNovaUnitario: TFloatField;
    ITNovaDESCONTO: TFloatField;
    ITNovaTotal: TFloatField;
    ITNovaST2: TFloatField;
    ITNovaFRETE2: TFloatField;
    ITNovaUNITLIQ: TFloatField;
    ITNovaFRETE: TFloatField;
    ITNovaIPI: TFloatField;
    ITNovaST: TFloatField;
    ITNovaicms: TFloatField;
    ITNovacfop: TIntegerField;
    ITNovaCST: TWideStringField;
    ITNovaTIPO: TWideStringField;
    ITNovasubserie: TWideStringField;
    ITNovatpfrete: TIntegerField;
    ITNovaidoc: TIntegerField;
    qCompradesconto: TFloatField;
    qCompratotal: TFloatField;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure sairExecute(Sender: TObject);
    procedure inserirExecute(Sender: TObject);
    procedure alterarExecute(Sender: TObject);
    procedure excluirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure imprimirExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edPesqChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure cbEmpChange(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure edDt1Change(Sender: TObject);
    procedure edDt2Change(Sender: TObject);
    procedure cbStChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acDuplExecute(Sender: TObject);
  private
    orde, campo:String;
    procedure ativaQ;
    { Private declarations }
  public
    { Public declarations }
    Procedure AtualizaEstoque;
  end;

var
  fGridCompra : TfGridCompra;
  StatusC, NF : String;
  reg         : integer;
implementation

uses uDM, uFuncao, uCompra, uSenhaCad;

{$R *.dfm}

procedure TfGridCompra.DBGrid1TitleClick(Column: TColumn);
var Ordem : String;
begin
  if Orde = 'desc' then
     Orde := 'asc'
  else
     Orde := 'desc';

  Campo := uppercase(Column.Field.FieldName);

 if Campo = 'NOME' then
    Campo := 'fornecedor.NOME'
 else
 if Campo = 'FANTASIA' then
    Campo := 'empresa.fantasia'
 else
    Campo := 'compra.' + Column.Field.FieldName;
 ativaQ;

end;

procedure TfGridCompra.sairExecute(Sender: TObject);
begin
   Close;
end;

procedure TfGridCompra.inserirExecute(Sender: TObject);
begin
 if not FormEstaCriado(TfCompra) then
 begin
    StatusC := 'I';
    Application.CreateForm(TfCompra, fCompra);
 end;
 fCompra.Show;

end;

procedure TfGridCompra.acDuplExecute(Sender: TObject);
var
  I, codNovo: Integer;
begin
  if qCompra.IsEmpty THEN
     Exit;

  if Application.MessageBox('Deseja duplicar esta compra?', 'Confirmação', mb_yesno ) = idNo then
     Exit;

  Co.Close;
  Co.ParamByName('ID').Value := qCompraid.Text;
  Co.Open;

  It.Close;
  It.ParamByName('ID').Value := qCompraID.Text;
  It.Open;

  CoNova.Close;
  CoNova.Open;

  ItNova.Close;
  ItNova.Open;

  CoNova.Insert;
  for I := 0 to co.FieldCount -1 do
    coNova.FieldByName(co.Fields[i].FieldName).Value := co.Fields[i].Value;

  CoNovaID.Value           := InsereCodigo('compra', 'Id');
  CoNovaData.value         := Date;
  coNovastatus.Value       := 'ABERTO';
  coNovaNUMNOTA.text       := '';
  codNovo                  := CoNovaID.value;
  CoNOva.Post;
  CoNova.ApplyUpdates;


  while IT.Eof = false do
  begin
    application.ProcessMessages;

    itNova.Insert;
    for I := 0 to it.FieldCount -1 do
      itNova.FieldByName(it.Fields[i].FieldName).Value := it.Fields[i].Value;

    ITNovaId.Value           := InsereCodigo('compra_i', 'Id');
    ITNovaIdcompra.Value     := codNovo;

    ITNova.Post;
    ITNova.ApplyUpdates;

    IT.Next;
  end;


  if not FormEstaCriado(TfCompra) then
  begin
     StatusC := 'E';
     CodCompra    := codNovo;
     Application.CreateForm(TfCompra, fCompra);
  end;
  fCompra.Show;

end;

procedure TfGridCompra.alterarExecute(Sender: TObject);
begin
 if qCompra.IsEmpty THEN
    Exit;

 if trim(qCompraStatus.Value) <> 'ABERTO' then
 BEGIN
    Application.MessageBox(pChar('Compra com status '+qCompraStatus.asString+'. Não é possível mais alterar.'+#13+' Por favor, verifique!'), 'Atenção');
    Exit;
 END;

 if not FormEstaCriado(TfCompra) then
 begin
    StatusC := 'E';
    CodCompra := qCompraID.Value;
    reg := qCompra.RecNo;
    Application.CreateForm(TfCompra, fCompra);
 end;
 fCompra.Show;

end;

procedure TfGridCompra.excluirExecute(Sender: TObject);
var
  vStatus : string;
begin
  if qCompra.IsEmpty THEN
    Exit;

  if (trim(qCompraStatus.Value) <> 'ABERTO') and (trim(qCompraStatus.Value) <> 'EFETIVADO') then
  BEGIN
     Application.MessageBox(pChar('Compra com status '+qCompraStatus.asString+'. Não é possível cancelar.'+#13+'Por favor, verifique!'), 'Atenção');
     Exit;
  END;

  DM.qSelect.Close;
  DM.qSelect.SQL.Clear;
  DM.qSelect.SQL.Add('select cpagar.id  from cpagar WHERE cpagar.tipo = ''C'' and cpagar.idcompra = '+
                     IntToStr(qCompraID.Value)+' AND cpagar.baixa = '+QuotedStr('S'));
  DM.qSelect.Open;
  IF DM.qSelect.IsEmpty THEN
  BEGIN
    vStatus := '';
    if qCompraStatus.asstring = 'EFETIVADO' then
      vStatus := 'Compra com status efetivado, será excluído financeiro e estoque. ' ;

    if Application.MessageBox(pchar(vStatus+ 'Deseja cancelar? '),'Confirmação', MB_YESNO+MB_DEFBUTTON2+MB_ICONQUESTION) = idyes then
    begin
      if qCompraStatus.asstring = 'EFETIVADO' then
      begin
        Application.CreateForm(TfSenhaCad, fSenhaCad);
        fSenhaCad.ShowModal;
        fSenhaCad.Free;

        if (IdUsuario = 0) or (RespCad = 'N') then Exit;

        if temPermissao(IdUsuario, 'CANCEL_COMPRA_EFE') = false then  Exit;
      end;

      AtualizaEstoque;
      ExecSQL('update compra set status = ''CANCELADO'', ex = 1 where ID       = '+IntToStr(qCompraID.Value));
      ExecSQL('update cpagar set ex = 1 where tipo = ''C'' and IDCompra = '+IntToStr(qCompraID.Value));
      ativaQ;
    end;
  end
  ELSE
    Application.MessageBox('Já existem parcelas baixadas dessa compra. Não é possível cancelar!','Atenção');

end;

procedure TfGridCompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fGridCompra := nil;
end;

procedure TfGridCompra.FormCreate(Sender: TObject);
begin
   orde   := 'DESC';
   campo  := 'compra.id ';
   edDt1.DateTime := Date - 30;
   edDt2.DateTime := Date ;

   EmpresaComboZero( cbEmp );

end;

procedure TfGridCompra.imprimirExecute(Sender: TObject);
begin
  if qCompra.IsEmpty THEN
    Exit;

  if trim(qCompraStatus.Value) = 'CANCELADO' then
  BEGIN
     Application.MessageBox('Compra cancelada. Por favor, verifique!', 'Atenção');
     Exit;
  END;

 fCompra.Imprimir(qCompraID.Value);

end;

procedure TfGridCompra.AtualizaEstoque;
VAR QtdTot  : Real;
begin

 ExecSQL('delete from estoque where idcompra = '+IntToStr(qCompraID.Value));

 DM.qPesq.Close;
 DM.qPesq.SQL.Clear;
 DM.qPesq.SQL.Add('select idproduto, tipo from compra_i where IDCompra = '+ qCompraID.Text);
 DM.qPesq.Open;
 DM.qPesq.First;
 while DM.qPesq.Eof = false do
  begin
      DM.qSelect.Close;
      DM.qSelect.SQL.Clear;
      DM.qSelect.SQL.Add(' select estoque.IDPRODUTO, SUM(estoque.quantidade) as Qt from estoque '+
                           ' where idemp = 1 and estoque.IDPRODUTO =  '+ DM.qPesq.fieldbyname('IDPRODUTO').Text+
                           ' and estoque.tpmov = ' + quotedstr(DM.qPesq.fieldbyname('tipo').Text)+
                           ' group by IDProduto '+
                           ' order by IDPRODUTO ');
      DM.qSelect.Open;
      if DM.qSelect.IsEmpty then
         QtdTot := 0
        else
         QtdTot := dm.qSelect.fieldbyname('Qt').Value;
      if DM.qPesq.fieldbyname('tipo').Text <> 'S' then
         ExecSQL('UPDATE produto SET QTDESTOQUE = '+
               PontoVirgula(FormatFloat('#0.000', QtdTot ))+
               ' Where ID = '+ DM.qPesq.fieldbyname('IDPRODUTO').Text )
      else
      if DM.qPesq.fieldbyname('tipo').Text = 'S' then
         ExecSQL('UPDATE semi_acabado SET QTDESTOQUE = '+
               PontoVirgula(FormatFloat('#0.000', QtdTot ))+
               ' Where ID = '+ DM.qPesq.fieldbyname('IDPRODUTO').Text );

      DM.qPesq.Next;
  end;

end;

procedure TfGridCompra.cbEmpChange(Sender: TObject);
begin
   ativaQ;
end;

procedure TfGridCompra.cbStChange(Sender: TObject);
begin
   ativaQ;

end;

procedure TfGridCompra.ckTodasClick(Sender: TObject);
begin
 if ckTodas.Checked then
  begin
    edDt1.Enabled := false;
    edDt2.Enabled := false;
  end
  else
  begin
    edDt1.Enabled := true;
    edDt2.Enabled := true;
  end;
  ativaQ;
end;

procedure TfGridCompra.FormActivate(Sender: TObject);
begin
   ativaQ;

end;

procedure TfGridCompra.ativaQ;
var
  dd : integer;
  di, df : TDate;
  sql, st, stt : string;
begin

  di := eddt1.Date;
  df := eddt2.Date;
  if ckTodas.Checked then
     dd := 0
  else
     dd := 1;

  if cbst.ItemIndex = 0 then
     st := 'T'
  else
  begin
     st  := 'X';
     stt := uppercase(trim(cbSt.Text));
  end;


  sql := ' select compra.id, compra.DATA, compra.IDFORNECEDOR , '+
         ' fornecedor.NOME, compra.VALOR, compra.NUMNOTA, empresa.fantasia, '+
         ' compra.status, compra.desconto, compra.total '+
         ' from compra '+
         ' left join fornecedor ON fornecedor.id = compra.IDFORNECEDOR '+
         ' left join empresa on empresa.id = compra.idemp ' +
         ' where '+
         ' ((:dd = 0) or (compra.data between :di and :df)) and ' +
         ' ((:emp = 0) or (compra.idemp = :emp)) and ' +
         ' fornecedor.nome like :pesq '+
         ' and (( :st = ''T'') or (:st = ''X'' and compra.status = :stt)) '+
         ' Order By '+ campo +' ' + orde;

  qCompra.Close;
  qCompra.SQL.Clear;
  qCompra.SQL.Add( sql );
  qCompra.ParamByName('dd').asinteger  := dd;
  qCompra.ParamByName('di').asdate     := di;
  qCompra.ParamByName('df').asdate     := df;
  qCompra.ParamByName('pesq').value    := '%'+trim(edpesq.Text)+'%';
  qCompra.ParamByName('emp').asinteger := strtoint(copy(cbEmp.text,1,1));
  qCompra.ParamByName('st').value      := st;
  qCompra.ParamByName('stt').value     := stt;
  qCompra.Open;

end;


procedure TfGridCompra.edDt1Change(Sender: TObject);
begin
   eddt2.OnChange := nil;
   eddt2.Date     := eddt1.Date;
   eddt2.OnChange := edDt2Change;
   ativaQ;

end;

procedure TfGridCompra.edDt2Change(Sender: TObject);
begin
   if eddt2.Date < eddt1.Date then
   begin
      eddt1.OnChange := nil;
      eddt1.Date     := eddt2.Date;
      eddt1.OnChange := edDt1Change;
   end;
   ativaQ;

end;

procedure TfGridCompra.edPesqChange(Sender: TObject);
begin
  ativaQ;

end;

procedure TfGridCompra.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     dbGrid1.Canvas.Brush.Color := $00FCA258;
     dbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if qCompraStatus.Value = 'EFETIVADO' then  //efetivado
        dbGrid1.Canvas.Brush.Color := $00D5FFAA
    else
    if (qCompraStatus.Value = 'CANCELADO') then //cancelado
       dbGrid1.Canvas.Brush.Color := $009191FF
  end;
  dbGrid1.DefaultDrawDataCell(Rect, dbGrid1.Columns[DataCol].Field ,state);

end;

procedure TfGridCompra.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(key, shift) then
     abort;
end;

end.
