unit uDFixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, XiButton, Mask, DBCtrls,
  ActnList, Grids, DBGrids, DB,
  CheckDBGrid, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, System.Actions;

type
  TfDFixa = class(TForm)
    Image1: TImage;
    XiButton1: TXiButton;
    ActionList1: TActionList;
    acGerar: TAction;
    XiButton2: TXiButton;
    acSair: TAction;
    dFixa: TDataSource;
    CheckDBGrid1: TCheckDBGrid;
    cbMes: TComboBox;
    cbAno: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ckTodas: TCheckBox;
    edTotal: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Exec: TZQuery;
    tFixa: TZQuery;
    Label5: TLabel;
    cbAnoF: TComboBox;
    Label6: TLabel;
    cbMesF: TComboBox;
    Label7: TLabel;
    uFixa: TZUpdateSQL;
    Label8: TLabel;
    Shape3: TShape;
    Label9: TLabel;
    Shape1: TShape;
    tFixaId: TIntegerField;
    tFixaidCusto: TIntegerField;
    tFixaidFornecedor: TIntegerField;
    tFixaDescricao: TWideStringField;
    tFixaDia_Venci: TIntegerField;
    tFixaValor: TFloatField;
    tFixaidUsuario: TIntegerField;
    tFixaAtivo: TWideStringField;
    tFixaX: TWideStringField;
    tFixanome: TWideStringField;
    tFixadescri: TWideStringField;
    Label41: TLabel;
    cbEmp: TDBLookupComboBox;
    tFixaidemp: TIntegerField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure acGerarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckTodasClick(Sender: TObject);
    procedure somaitens;
    procedure tFixaAfterPost(DataSet: TDataSet);
    procedure tFixaAfterOpen(DataSet: TDataSet);
    procedure cbAnoFExit(Sender: TObject);
    procedure cbMesExit(Sender: TObject);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure tFixaBeforePost(DataSet: TDataSet);
    procedure CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbEmpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDFixa: TfDFixa;

implementation

uses uDM, StrUtils, uFuncao, DateUtils;

{$R *.dfm}

procedure TfDFixa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  IF (Key = #13) and not(ActiveControl is TDBGrid) THEN
  BEGIN
    SelectNext(ActiveControl, True, True);
    Key := #0;
  END;
end;

procedure TfDFixa.FormCreate(Sender: TObject);
var
  i, ano: Integer;
begin
  if MonthOf(Date) = 12 then
  begin
    ano := YearOf(Date) + 1;
    cbMes.ItemIndex := 0;
    for i := 0 to cbAno.Items.Count do
    begin
      cbAno.ItemIndex := i;
      if cbAno.Items.Strings[i] = IntToStr(ano) then
        break;
    end;
  end
  else
  begin
    cbMes.ItemIndex := MonthOf(Date);
    ano := YearOf(Date);
    for i := 0 to cbAno.Items.Count do
    begin
      cbAno.ItemIndex := i;
      if cbAno.Items.Strings[i] = IntToStr(ano) then
        break;
    end;
  end;

  cbMesF.ItemIndex := cbMes.ItemIndex;
  cbAnoF.ItemIndex := cbAno.ItemIndex;

  ExecSQL('update dfixa set X = ''T'' ');

  if dm.qUseridemp.AsInteger = 1 then
  begin
    if dm.qEmpresa.Locate('empresa_padrao', 'S', []) then
      cbEmp.KeyValue := dm.qEmpresaid.AsInteger
    else
      cbEmp.KeyValue := dm.qUseridemp.AsInteger;
  end
  else
    cbEmp.KeyValue := dm.qUseridemp.AsInteger;

  tFixa.close;
  tFixa.ParamByName('emp').Value := cbEmp.KeyValue;
  tFixa.Open;
  dm.qCPagar.Open;

end;

procedure TfDFixa.acSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfDFixa.acGerarExecute(Sender: TObject);
var
  LL, i, vez, dd, mm, aa, mmf, aaf: Integer;
  semVenci, semValor: String;
begin

  tFixa.First;
  while tFixa.Eof = false do
  begin
    if (tFixaX.Text = 'T') and ((tFixaDia_Venci.Text = '') or
      (tFixaDia_Venci.Text = '0') or (tFixaDia_Venci.Value > 31) or
      (tFixaDia_Venci.Value < 1)) then
      semVenci := 'S';
    if (tFixaX.Text = 'T') and not((tFixaValor.AsFloat > 0)) then
      semValor := 'S';
    tFixa.Next;
  end;

  if semVenci = 'S' then
  begin
    Application.MessageBox
      ('Fornecedor com Dia de Vencimento incorreto, Verifique!', 'Atenção');
    exit;
  end;

  if semValor = 'S' then
  begin
    Application.MessageBox('Fornecedor sem Valor Cadastrado, Verifique!',
      'Atenção');
    exit;
  end;

  IF Application.MessageBox('Confirma Geração de Despesas?', 'Confirmação',
    MB_YESNO) = idno then
    exit;

  mm := cbMes.ItemIndex + 1;
  aa := strtoint(cbAno.Text);
  mmf := cbMesF.ItemIndex + 1;
  aaf := strtoint(cbAnoF.Text);

  // calcula quantos meses
  vez := 1;
  if aaf > aa then
    vez := (12 - mm) + mmf
  else if aaf = aa then
    if mmf > mm then
      vez := (mmf - mm) + 1
    else
      vez := 1;

  LL := 0;
  tFixa.First;
  while tFixa.Eof = false do
  begin
    i := 0;
    mm := cbMes.ItemIndex + 1; // inicial
    aa := strtoint(cbAno.Text); // inicial

    if (tFixaX.Text = 'T') and (tFixaDia_Venci.AsInteger > 0) then
    begin

      dd := tFixaDia_Venci.Value;
      for i := 1 to vez do
      begin

        if (dd > 28) and (mm = 2) then
          dd := 28
        else if (dd > 30) and (mm in [4, 6, 9, 11]) then
          dd := 30;

        dm.qPesq.close;
        dm.qPesq.SQL.Clear;
        dm.qPesq.SQL.Add(' Select month(venci) mes, year(venci) ano ' +
          ' from cpagar ' + ' where ex = 0 and tipo = ''D'' and idfornecedor = '
          + tFixaidFornecedor.Text + ' and month(venci) = ' + IntToStr(mm) +
          ' and year(venci) = ' + IntToStr(aa) + ' and idcompra = ' +
          tFixaId.Text + ' and idemp =  ' + IntToStr(cbEmp.KeyValue));
        dm.qPesq.Open;
        if dm.qPesq.IsEmpty then
        begin

          LL := LL + 1;

          dm.qCPagar.Insert;
          dm.qCPagarDOCUMENTO.Value := tFixaId.Text + '/' + IntToStr(i);
          dm.qCPagarIDFORNECEDOR.Value := tFixaidFornecedor.Value;
          dm.qCPagarEMISSAO.Value := Date;
          dm.qCPagaridcondpgto.Value := 1;
          dm.qCPagarVALOR.Value := tFixaValor.Value;
          dm.qCPagarVENCI.Value := StrToDate(IntToStr(dd) + '/' + IntToStr(mm) +
            '/' + IntToStr(aa));
          dm.qCPagarEx.Value := 0;
          dm.qCPagarBAIXA.Value := 'N';
          dm.qCPagarVALOR.Value := tFixaValor.Value;
          dm.qCPagarX.Value := 'F';
          dm.qCPagaridcompra.Value := tFixaId.Value;
          dm.qCPagarTIPO.Value := 'D';
          dm.qCPagarFPGTO.Value := 'DINHEIRO';
          dm.qCPagarIDUSUARIO.Value := dm.qUserId.Value;
          dm.qCPagarOBS.Value := 'DESPESA FIXA';
          dm.qCPagaridemp.Value := cbEmp.KeyValue;
          dm.qCPagaridcusto.Value := tFixaidCusto.AsInteger;
          dm.qCPagar.Post;
          dm.qCPagar.ApplyUpdates;
        end
        else
        begin
          Application.MessageBox(pchar('Despesa Fixa do Fornecedor : ' +
            tFixaId.Text + ' - ' + tFixanome.Text + #13 + #10 +
            'Referente ao período ' + IntToStr(mm) + '/' + IntToStr(aa) + #13 +
            #10 + 'já está lançado!'), 'Atenção');
        end;

        mm := mm + 1;
        sleep(100);
        if mm > 12 then
        begin
          mm := 1;
          aa := aa + 1;
        end;

      end; // for

    end; // if

    tFixa.Next;

  end;
  if LL > 0 then
    Application.MessageBox('Despesas Geradas com Sucesso!', 'Aviso');

  close;
end;

procedure TfDFixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fDFixa := nil;

end;

procedure TfDFixa.ckTodasClick(Sender: TObject);
begin
  if ckTodas.Checked then
  begin
    Exec.close;
    Exec.ParamByName('X').Value := 'T';
    Exec.ExecSQL;
  end
  else
  begin
    Exec.close;
    Exec.ParamByName('X').Value := 'F';
    Exec.ExecSQL;
  end;
  Exec.ApplyUpdates;

  tFixa.close;
  tFixa.Open;

end;

procedure TfDFixa.somaitens;
var
  tot: real;
begin
  tot := 0;
  tFixa.First;
  while tFixa.Eof = false do
  begin
    if tFixaX.Text = 'T' then
      tot := tot + tFixaValor.Value;
    tFixa.Next;
  end;
  tFixa.First;
  edTotal.Text := formatfloat('###,###,###,##0.00', tot);

end;

procedure TfDFixa.tFixaAfterPost(DataSet: TDataSet);
begin
  somaitens;
end;

procedure TfDFixa.tFixaBeforePost(DataSet: TDataSet);
begin
  if tFixaDia_Venci.Value > 31 then
  begin
    Application.MessageBox('Dia de Vencimento Incorreto, Verifique!',
      'Atenção');
    tFixa.Cancel;
  end;

end;

procedure TfDFixa.tFixaAfterOpen(DataSet: TDataSet);
begin
  somaitens;
end;

procedure TfDFixa.cbAnoFExit(Sender: TObject);
begin
  if strtoint(cbAno.Text) > strtoint(cbAnoF.Text) then
  begin
    cbAno.Text := cbAnoF.Text;
    cbMesF.ItemIndex := cbMes.ItemIndex;
  end
  else if strtoint(cbAno.Text) = strtoint(cbAnoF.Text) then
  begin
    if cbMesF.ItemIndex < cbMes.ItemIndex then
      cbMesF.ItemIndex := cbMes.ItemIndex;
  end;
end;

procedure TfDFixa.cbEmpClick(Sender: TObject);
begin
  tFixa.close;
  tFixa.ParamByName('emp').Value := cbEmp.KeyValue;
  tFixa.Open;

end;

procedure TfDFixa.cbMesExit(Sender: TObject);
begin
  if strtoint(cbAno.Text) = strtoint(cbAnoF.Text) then
  begin
    if cbMesF.ItemIndex < cbMes.ItemIndex then
      cbMesF.ItemIndex := cbMes.ItemIndex;
  end;

end;

procedure TfDFixa.CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if (gdSelected in State) then
  begin
    CheckDBGrid1.Canvas.Brush.Color := $00FCA258;
    CheckDBGrid1.Canvas.Font.Color := clWhite;
  end
  else
  begin
    if tFixaX.Value = 'T' then
      CheckDBGrid1.Canvas.Brush.Color := $00D8FFB0;
    // verde     // $009D9DFF; Vermelho

    if (tFixaDia_Venci.AsInteger = 0) then
      CheckDBGrid1.Canvas.Brush.Color := $009D9DFF;
  end;
  CheckDBGrid1.DefaultDrawDataCell(Rect, CheckDBGrid1.Columns[DataCol]
    .Field, State);

end;

procedure TfDFixa.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if tira_delete_grid(Key, Shift) then
    abort;

end;

procedure TfDFixa.CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    if CheckDBGrid1.SelectedIndex = 3 then
    begin
      if tFixaDia_Venci.Value > 31 then
      begin
        Application.MessageBox('Dia de Vencimento Incorreto, Verifique!',
          'Atenção');
        tFixa.Cancel;
      end;
    end;
  end;

end;

end.
