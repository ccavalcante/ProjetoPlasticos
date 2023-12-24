unit uBlocoK;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  DBGrids, StdCtrls, ExtCtrls, ActnList, DBCtrls, DB, XiButton, Mask,
  system.Actions, IBX.IBQuery, Vcl.Grids,
  Vcl.Imaging.jpeg, Vcl.Dialogs, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Vcl.ComCtrls, Data.Bind.Components, Data.Bind.ObjectScope, Datasnap.DBClient,
  CheckDBGrid, Vcl.Samples.Gauges;

type
  TfBlocoK = class(TForm)
    Image1: TImage;
    ActionList1: TActionList;
    acSair: TAction;
    XiButton4: TXiButton;
    acInv: TAction;
    CDS: TClientDataSet;
    dCDS: TDataSource;
    CheckDBGrid1: TCheckDBGrid;
    Gauge1: TGauge;
    XiButton1: TXiButton;
    XiButton2: TXiButton;
    acBuscar: TAction;
    Label11: TLabel;
    cbEmp: TComboBox;
    rdTipo: TRadioGroup;
    Label1: TLabel;
    edDt1: TDateTimePicker;
    edDt2: TDateTimePicker;
    ckTodas: TCheckBox;
    qContador: TZQuery;
    qContadorId: TIntegerField;
    qContadorNOME: TWideStringField;
    qContadorCPF: TWideStringField;
    qContadorCNPJ: TWideStringField;
    qContadorCRC: TWideStringField;
    qContadorCEP: TWideStringField;
    qContadorENDERECO: TWideStringField;
    qContadorNUM: TWideStringField;
    qContadorCOMPL: TWideStringField;
    qContadorBAIRRO: TWideStringField;
    qContadorFONE: TWideStringField;
    qContadorFAX: TWideStringField;
    qContadorEMAIL: TWideStringField;
    qContadorIDCIDADE: TWideStringField;
    qContadorCIDADE: TWideStringField;
    qContadorUF: TWideStringField;
    SaveDialog1: TSaveDialog;
    qEst: TZQuery;
    qEstidproduto: TIntegerField;
    qEstreferencia: TWideStringField;
    qEstbarras: TWideStringField;
    qEstdescricao: TWideStringField;
    qEsttpmov: TWideStringField;
    qEstdesTipo: TWideStringField;
    CDSidproduto: TIntegerField;
    CDSreferencia: TWideStringField;
    CDSbarras: TWideStringField;
    CDSdescricao: TWideStringField;
    CDStpmov: TWideStringField;
    CDSdesTipo: TWideStringField;
    qEstunid: TWideStringField;
    CDSunid: TWideStringField;
    qEstundade: TWideStringField;
    CDSundade: TWideStringField;
    qEstidgrupo: TIntegerField;
    CDSidgrupo: TIntegerField;
    qEstncm: TWideStringField;
    qEsticms: TFloatField;
    qEstcest: TWideStringField;
    CDSncm: TWideStringField;
    CDSicms: TFloatField;
    CDScest: TWideStringField;
    qEstx: TWideStringField;
    CDSx: TWideStringField;
    qEstqAtual: TFloatField;
    CDSqAtual: TFloatField;
    CDSqNovo: TFloatField;
    ckTodos: TCheckBox;
    procedure acSairExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acInvExecute(Sender: TObject);
    procedure CheckDBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure CDSqNovoValidate(Sender: TField);
    procedure acBuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ckTodasClick(Sender: TObject);
    procedure ckTodosClick(Sender: TObject);
  private
    { Private declarations }
    buscaprodutopor : Integer;
    sArquivo    : TextFile;
    sTotalReg   : Integer;
    vPerfil     : String;
    vTotalLinha : TStrings;
    procedure bloco0(pDT1, pDT2: TDate);
    procedure bloco9;
    procedure blocoK(dt1, dt2: TDate);
    procedure InsereTotalReg(pTotal: Integer);
    function TiraCaracterN(Texto: String): String;
    function verificaDados(tab: String): boolean;
  public
    { Public declarations }
    emp:integer;
  end;

var
  fBlocoK: TfBlocoK;
  

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfBlocoK.acSairExecute(Sender: TObject);
begin
  close;
end;

procedure TfBlocoK.CDSqNovoValidate(Sender: TField);
begin
   CDSX.Value   := 'T';

end;

procedure TfBlocoK.CheckDBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if (gdSelected in State) then
  begin
     checkdbGrid1.Canvas.Brush.Color := $00FCA258;
     checkdbGrid1.Canvas.Font.Color  := clWhite;
  end
  else
  begin
    if CDSX.Value = 'T' then  //cancelado
        checkdbGrid1.Canvas.Brush.Color := $0075BAFF;
  end;
  checkdbGrid1.DefaultDrawDataCell(Rect, checkdbGrid1.Columns[DataCol].Field ,state);

end;

procedure TfBlocoK.CheckDBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if tira_delete_grid(key, shift) then
      abort;

   if cds.state = dsinsert then
      cds.cancel;
end;

procedure TfBlocoK.CheckDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
   begin
      if (CheckDBGrid1.SelectedIndex = 7) and (CDSqNovo.AsFloat = 0) then
      begin
         cds.Edit;
         cdsx.Text := 'T';
         cds.Post;
      end;
      if cds.Eof = false then
         cds.Next
      else
         cds.First;
      CheckDBGrid1.SelectedIndex := 7;
   end;

end;

procedure TfBlocoK.ckTodasClick(Sender: TObject);
begin
   eddt1.Enabled := not ckTodas.Checked;
   eddt2.Enabled := not ckTodas.Checked;
end;

procedure TfBlocoK.ckTodosClick(Sender: TObject);
var
   tp : String;
begin
   if ckTodos.Checked then
      tp := 'T'
   else
      tp := 'F';

   Gauge1.Visible  := true;
   Gauge1.MaxValue := cds.RecordCount;
   cds.First;
   while cds.Eof = false do
   begin
     Application.ProcessMessages;
     Gauge1.Progress := cds.RecNo;
     cds.Edit;
     cdsX.Value := tp;
     cds.Post;

     cds.Next;
   end;
   cds.First;
   Gauge1.Visible  := false;

end;

procedure TfBlocoK.FormActivate(Sender: TObject);
begin
   CheckDBGrid1.SelectedIndex := 7;
end;

procedure TfBlocoK.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  fBlocoK := nil;
end;

procedure TfBlocoK.FormCreate(Sender: TObject);
begin
  edDt1.Date := strtodate( '01/' + formatdatetime('mm/yyyy', date ));
  edDt2.Date := date;

  EmpresaComboZero( cbEmp );
  cbEmp.ItemIndex := 1; // Empresa 1

end;

procedure TfBlocoK.acBuscarExecute(Sender: TObject);
var
  vDt : integer;
  vDt1, vDt2 : TDate;
  vTp : String;
begin
    gauge1.Visible := true;
    CDS.Close;
    CDS.CreateDataSet;

    if ckTodas.Checked then
       vDt := 0
    else
    begin
       vDt := 1;
       vDt1 := eddt1.Date;
       vDt2 := eddt2.Date;
    end;

    case rdTipo.ItemIndex of
      0: vTp := 'T';
      1: vTp := 'P';
      2: vTp := 'S';
      3: vTp := 'M';
    end;
    qEst.close;
    qEst.ParamByName('emp').Value := strtoint(copy(cbEmp.Text,1,1));
    qEst.ParamByName('st').Value  := vTp;
    qEst.ParamByName('dd').Value  := vDt;
    qEst.ParamByName('di').Value  := vDt1;
    qEst.ParamByName('df').Value  := vDt2;
    qEst.Open;
    gauge1.MaxValue := qEst.RecordCount;

    qEst.First;
    while qEst.Eof = false do
    begin

      Application.ProcessMessages;
      CDS.Append;
      CDS.FieldByName('IDproduto').asinteger := qEstidproduto.AsInteger;
      CDS.FieldByName('referencia').AsString := qEstreferencia.AsString;
      CDS.FieldByName('barras').AsString     := qEstbarras.AsString;
      CDS.FieldByName('descricao').AsString  := qEstdescricao.AsString;
      CDS.FieldByName('destipo').AsString    := qEstdesTipo.AsString;
      CDS.FieldByName('tpmov').AsString      := qEsttpmov.AsString;
      CDS.FieldByName('qatual').asfloat      := qEstqAtual.asfloat;
      CDS.FieldByName('qnovo').asfloat       := 0;
      CDS.FieldByName('x').AsString          := 'F';
      CDS.FieldByName('unid').AsString       := qEstunid.AsString;
      CDS.FieldByName('undade').AsString     := qEstundade.AsString;
      CDS.FieldByName('idgrupo').AsString    := qEstidgrupo.AsString;
      CDS.FieldByName('ncm').AsString        := qEstncm.AsString;
      CDS.FieldByName('icms').AsString       := qEsticms.AsString;
      CDS.FieldByName('cest').AsString       := qEstcest.AsString;

      CDS.post;

      qEst.Next;
    end;
    CDS.First;
    gauge1.Visible := false;


end;

procedure TfBlocoK.acInvExecute(Sender: TObject);

var
  NomeArquivo1   : String;
  vDTfim, vDTIni : TDate;
begin
  vDTIni := eddt1.Date;
  vDTfim := eddt2.Date;

  if vDTfim < vDTIni then
  begin
     application.MessageBox('Data Final não pode ser menor que a inicial','Erro',mb_iconstop);
     eddt1.SetFocus;
     exit;
  end;
  if strtodate(formatdatetime('dd/mm/yyyy',vDTfim)) > strtodate(formatdatetime('dd/mm/yyyy',date)) then
  begin
     application.MessageBox('Data Final não pode ser maior que a data atual','Erro',mb_iconstop);
     eddt2.setfocus;
     exit;
  end;
  if not DirectoryExists( ExtractFilePath(Application.ExeName) +'\Sped') then
           CreateDir(ExtractFilePath(Application.ExeName) +'\Sped' );

  if cds.Eof = false then
     cds.Next
  else
     cds.first;

  if Application.MessageBox('Confirma a geração do arquivo?', 'Atenção', mb_yesno ) = idNo then
     Exit;

    gauge1.Visible  := true;
    gauge1.MaxValue := 10;
    screen.Cursor := crSQLWait;
    // zera contador total de registros
    sTotalReg := 0;
    vPerfil := 'A';

    // gera arquivo de SPED                                       // DM.tSHNUM_LAUDO.Text
    NomeArquivo1 := ExtractFilePath(Application.ExeName)+'Sped\'+'000'+FormatDateTime('ddmmyyyy',Date)+FormatDateTime('hhmmss', Time)+'.TXT';

    // verifica se existe arquivo
    if FileExists(NomeArquivo1) then
       DeleteFile(PChar(NomeArquivo1));
    AssignFile(sArquivo,NomeArquivo1);
    Rewrite(sArquivo);
    gauge1.Progress := gauge1.Progress + 1;

    //showmessage('0');
    Bloco0(vDTIni, vDTfim);
    gauge1.Progress := gauge1.Progress + 1;

    //showmessage('K');
    BlocoK(vDTIni, vDTfim);
    gauge1.Progress := gauge1.Progress + 1;


    //showmessage('9');
    Bloco9();
    gauge1.Progress := gauge1.Progress + 1;

    InsereTotalReg(sTotalReg);

    gauge1.Progress := gauge1.Progress + 1;

    CloseFile(sArquivo);
        // assina arquio
        //PAFECF.AssinaArquivo(NomeArquivo1);
   screen.Cursor := crDefault;
   gauge1.Progress := gauge1.MaxValue;
   Application.MessageBox(PChar('Arquivo gerado com sucesso em: '+#10+NomeArquivo1), 'Aviso');

   gauge1.Progress := 0;
   gauge1.Visible  := false;


  close;

end;

procedure TfBlocoK.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13) and not (ActiveControl is TDBGrid) then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;
end;

///
///
Function TfBlocoK.TiraCaracterN(Texto : String): String;
var
  vTexto : string;
begin   //tirar caracter não imprimível (0 ao 31)
  vTexto := StringReplace(Texto,#00,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#01,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#02,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#03,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#04,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#05,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#06,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#07,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#08,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#09,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#10,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#11,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#12,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#13,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#14,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#15,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#16,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#17,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#18,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#19,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#20,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#21,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#22,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#23,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#24,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#25,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#26,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#27,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#28,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#29,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#30,'',[rfReplaceAll]);
  vTexto := StringReplace(vTexto,#31,'',[rfReplaceAll]);

  Result := vTexto;
end;

procedure TfBlocoK.bloco0(pDT1, pDT2 : TDate);
var
   Linha, vFantasia, vUnid : String;
   vQtdeLinha, vQtB, i, vCod : integer;
   vListaUn : TStrings;
begin
  vQtdeLinha := 0;
  vTotalLinha:= TStringList.Create;
  vListaUn := TStringList.Create;

  vFantasia  := copy(trim(dm.qEmpresaFantasia.Text), 1,60);
  if vFantasia = '' then
    vFantasia := copy(DM.qEmpresaRazao.Text, 1, 60);

  Linha := '|0000';
  Linha := Linha + '|017'; //versão layout  013 - 2019
  Linha := Linha + '|0';   //arquivo original
  Linha := Linha + '|' + formatdatetime('ddmmyyyy', pDt1);
  Linha := Linha + '|' + formatdatetime('ddmmyyyy', pDt2);
  Linha := Linha + '|' + dm.qEmpresaRazao.AsString ;
  Linha := Linha + '|' + dm.qEmpresacnpj.AsString + '|' ; //CNPJ (CPF em branco)se for CPF mudar
  Linha := Linha + '|' + dm.qEmpresaUF.AsString ; //estado
  Linha := Linha + '|' + dm.qEmpresaIE.AsString ; //IE
  Linha := linha + '|' + ZeroEsquerda(trim(dm.qEmpresaIdCidade.asstring),7);//Id cidade IBGE
  Linha := linha + '|' + dm.qEmpresaIM.AsString;//Inscrição Municipal da entidade.
  Linha := linha + '|' ;  //cod suframa
  Linha := Linha + '|' + vPerfil; //perfil empresa
  Linha := Linha + '|1|'; // Indicador de atividade
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1; // acumular linha
  vTotalLinha.Add('|9900|0000|1|');

  //bloco 0001
  Linha := '|0001|0|'; //0 há registro
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1; // acumular linha
  vTotalLinha.Add('|9900|0001|1|');

  //bloco 0005
  Linha := '|0005';
  Linha := Linha + '|' + vFantasia ; //fantasia
  Linha := Linha + '|' + ZeroEsquerda(trim(dm.qEmpresaCEP.asstring),8) ;      //cep
  Linha := Linha + '|' + dm.qEmpresaEndereco.AsString ; //logradouro + endereço
  Linha := Linha + '|' + dm.qEmpresaNum.AsString ;      //nº
  Linha := Linha + '|'  ; //complemento
  Linha := Linha + '|' + dm.qEmpresaBairro.AsString ; //bairro
  Linha := Linha + '|' + dm.qEmpresaTELEFONE.AsString ; //DDtelefone
  Linha := Linha + '|'  ; //fax
  Linha := Linha + '||' ; //email
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1; // acumular linha
  vTotalLinha.Add('|9900|0005|1|');

  //bloco 0015   CONTRIBUINTE SUBSTITUTO   estar
  //Linha := '|0015'; //
  //Linha := Linha + '|' + dm.qParametroUF.AsString ; //estado
  //Linha := Linha + '|' + dm.qParametroIE.AsString + '|' ; //IE
  //writeLn(sArquivo,Linha);
  //vQtdeLinha := vQtdeLinha +1; // acumular linha
  //vTotalLinha := #13 +vTotalLinha+ '|9900|0015|1|';

  //0100 contabilista
  if vPerfil <> 'C' then
  begin
    qContador.Close;
    qContador.Open;
    qcontador.First;

    //verificaDados('0100');

    Linha := '|0100';
    Linha := Linha + '|' + qContadorNome.AsString ;            //nome
    Linha := Linha + '|' + ZeroEsquerda(qContadorCpf.asstring,11) ;//cpf
    Linha := Linha + '|' + qContadorCRC.AsString ;             //nº da inscrição
    Linha := Linha + '|' + qContadorCNPJ.AsString ;            //cnpj
    Linha := Linha + '|' + ZeroEsquerda(trim(qContadorCEP.AsString),8) ;  //cep
    Linha := Linha + '|' + qContadorENdereco.AsString ; //endereço
    Linha := Linha + '|' + qContadorNUM.AsString ;      //nº
    Linha := Linha + '|' + qContadorCOMPL.AsString ;    //complemento
    Linha := Linha + '|' + qContadorBAIRRO.AsString ;   //bairro
    Linha := Linha + '|' + qContadorFONE.AsString ;     //dd+fone
    Linha := Linha + '|' + qContadorFAX.AsString ;      //faz
    Linha := Linha + '|' + qContadorEMAIL.AsString ;    //e-mail
    Linha := Linha + '|' + qContadorIdCidade.AsString + '|'; //cod município do IBGE
    writeLn(sArquivo,Linha);
    vQtdeLinha := vQtdeLinha +1; // acumular linha
    qContador.Close;
    vTotalLinha.Add('|9900|0100|1|');
  end;
  gauge1.Progress := gauge1.Progress + 1;

    //0190: IDENTIFICAÇÃO DAS UNIDADES DE MEDIDA
    vQtB :=0;
    gauge1.MaxValue := gauge1.MaxValue + CDS.RecordCount;
    cds.first;
    while not cds.eof do
    begin
      if CDSqNovo.asfloat > 0  then
      begin
        gauge1.Progress := gauge1.Progress + 1;
        vUnid := '|0190|' +trim(CDSundade.Text) + '|' + trim(cdsUnid.Text) + '|';
        if vListaUn.IndexOf(vUnid) = -1 then // se = -1 não existe
          vListaUn.Add(vUnid);
      end;
      CDS.Next;
    end;

    for i:=0 to vListaUn.count-1 do
    begin
     writeLn(sArquivo,vListaUn[i]);
     vQtdeLinha := vQtdeLinha +1; // acumular linha
     vQtB := vQtB +1; //linha do bloco
    end;
    if vQtB > 0 then vTotalLinha .Add('|9900|0190|'+ InttoStr(vQtB) +'|');

    //0200: TABELA DE IDENTIFICAÇÃO DO ITEM
    vQtB :=0;
    gauge1.MaxValue := gauge1.MaxValue + CDS.RecordCount;
    CDS.first;
    while not CDS.eof do
    begin
      if CDSqNovo.asfloat > 0  then
      begin
        verificaDados('0200');

        gauge1.Progress := gauge1.Progress + 1;
        Linha := '|0200';
        Linha := Linha + '|' + CDSidproduto.Text ; //cod unidade
        Linha := Linha + '|' + TRIM(CDSdescricao.Text) ; //descrição
        Linha := Linha + '|' + TRIM(CDSbarras.Text) ; //cod barras
        Linha := Linha + '|' ; //cód. anterior
        Linha := Linha + '|' + TRIM(CDSundade.Text) ; //unidade
        Linha := Linha + '|' + ZeroEsquerda(trim(CDSIdgrupo.Text),2) ; // id grupo tipo produto
        Linha := Linha + '|' + cdsncm.Text ; //  ncm
        Linha := Linha + '|'  ; //EX ipi
        Linha := Linha + '|'  ; //des genero
        Linha := Linha + '|'  ; //cod serviço
        Linha := Linha + '|' + FormatFloat('###0.00',cdsicms.Value) ; //icms
        Linha := Linha + '|' + ZeroEsquerda(trim(cdscest.Text),7) + '|'; //CEST
        writeLn(sArquivo,Linha);
        vQtdeLinha := vQtdeLinha +1; // acumular linha
        vQtB := vQtB +1; //linha do bloco
      end;
      cds.Next;
    end;

    if vQtB > 0 then vTotalLinha.Add('|9900|0200|'+ InttoStr(vQtB) +'|');

  //0205:
  {Linha := '|0205';
  Linha := Linha + '|' ; //descrição tirei Enter
  Linha := Linha + '|' + formatdatetime('ddmmyyyy', pDt1);
  Linha := Linha + '|' + formatdatetime('ddmmyyyy', pDt1);
  Linha := Linha + '||' ; //descrição tirei Enter

  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1; // acumular linha
  vTotalLinha.Add('|9900|0205|1|');}


  //0400: TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
  {with qCFOP do // TABELA DE NATUREZA DA OPERAÇÃO/PRESTAÇÃO
  begin
    close;
    Params[0].asDate := pDT1;
    Params[1].asDate := pDT2;
    open;
    FetchAll;
  end;

  qCFOP.First;
  vQtB := 0;
  while not qCFOP.Eof do
  begin
    Linha := '|0400';
    Linha := Linha + '|' + trim(qCFOPCfop.Text) ; //cod obs
    Linha := Linha + '|' + trim(qCFOPNATOPER.Text)+'|' ; //descrição tirei Enter
    qCFOP.Next;
    writeLn(sArquivo,Linha);
    vQtB := vQtB + 1;
    vQtdeLinha := vQtdeLinha +1; // acumular linha
  end;
  vTotalLinha.Add('|9900|0400|'+ InttoStr(vQtB) +'|');}

  //0450: TABELA DE INFORMAÇÃO COMPLEMENTAR DO DOCUMENTO FISCAL
  {
  with qObsNf do // query observção NF  select da natureza de operação
  begin
    close;
    Params[0].asDate := pDT1;
    Params[1].asDate := pDT2;
    open;
    FetchAll;
  end;
  gauge1.MaxValue := gauge1.MaxValue + qObsNf.RecordCount;

  qObsNf.First;
  vQtB := 0;
  while not qObsNf.Eof do
  begin
    gauge1.Progress := gauge1.Progress + 1;
    if qObsNfnf.Text <> '' then
    begin
      Linha := '|0450';
      Linha := Linha + '|' + qObsNfnf.asString; //IntToStr(vCod) ; //cod obs
      Linha := Linha + '|' + trim(Copy(TiraCaracterN(qObsNfdescr.asString),1,255))+ '|';

      writeLn(sArquivo,Linha);
      vQtdeLinha := vQtdeLinha +1; // acumular linha
      vQtB := vQtB +1;
    end;
    qObsNf.Next;
  end;
  if vQtB >0 then vTotalLinha.Add('|9900|0450|'+ InttoStr(vQtB) +'|');
  }

  //0460: TABELA DE OBSERVAÇÕES DO LANÇAMENTO FISCAL
  {vQtB := 0;
  vCod := 0;
  gauge1.MaxValue := gauge1.MaxValue + qObsNF.RecordCount;
  qObsNf.First;
  while not qObsNf.Eof do
  begin
    gauge1.Progress := gauge1.Progress + 1;
    if qObsNfnf.Text <> '' then
    begin
      vCod := vCod + 1;
      Linha := '|0460';
      Linha := Linha + '|' + IntToStr(vCod) ;// qObsNfnf.asString ; //cod obs
      Linha := Linha + '|' + trim(Copy(TiraCaracterN(qObsNfdescr.asString),1,255))+ '|';

      writeLn(sArquivo,Linha);
      vQtdeLinha := vQtdeLinha +1; // acumular linha
      vQtB := vQtB +1;
    end;
    qObsNf.Next;
  end;
  if vQtB >0 then
     vTotalLinha.Add('|9900|0460|'+ InttoStr(vQtB) +'|');
  }

  Linha := '|0990|'  + inttoStr(vQtdeLinha +1 ) + '|';//qunatidade de linha incluir ela
  writeLn(sArquivo,Linha);
  sTotalReg := sTotalReg + (vQtdeLinha +1);
  vTotalLinha.Add('|9900|0990|1|');


end;

procedure TfBlocoK.blocoK(dt1, dt2: TDate);
var
   Linha : String;
   vQtdeLinha, vQtB, vCod : integer;
begin

  vQtdeLinha := 0;
  Linha :='|K001|0|';      //com dados
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1;
  vTotalLinha.Add('|9900|K001|1|');

  Linha :='|K100';
  Linha := Linha + '|' + formatdatetime('ddmmyyyy', dt1 ) ; //data ini
  Linha := Linha + '|' + formatdatetime('ddmmyyyy', dt2 ) + '|' ; //data fim;
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1;
  vTotalLinha.Add('|9900|K100|1|');

  //k200
  cds.First;
  gauge1.MaxValue := gauge1.MaxValue + cds.RecordCount;
  vQtB := 0;
  while not cds.Eof do
  begin
    gauge1.Progress := gauge1.Progress + 1;
    if CDSqNovo.asfloat > 0 then
    begin
      Linha :='|K200';
      Linha := Linha + '|' +formatdatetime('ddmmyyyy', dt2 ) ; //DT_EST 	Data do estoque final. 	N 	8 	- 	O
      Linha := Linha + '|' +CDSidproduto.Text ; // 03 	COD_ITEM 	Código do item (campo 02 do Registro 0200). 	C 	60 	- 	O
      Linha := Linha + '|' + FormatFloat('###0.000', CDSqNovo.asfloat ) ; // 04 	QTD 	Quantidade em estoque. 	N 	- 	12,3
      Linha := Linha + '|0' ; // 0: Estoque de propriedade do informante e em seu poder;
                            // 1: Estoque de propriedade do informante e em posse de terceiros;
                            // 2: Estoque de propriedade de terceiros e em posse do informante. 	C 	1 	- 	O
      Linha := Linha + '|'; // 06 	COD_PART 	Código do participante (campo 02 do Registro 0150):
      Linha := Linha + '|';
      writeLn(sArquivo,Linha);
      vQtdeLinha := vQtdeLinha +1; // acumular linha
      vQtB := vQtB +1;
    end;
    cds.Next;
  end;
  if vQtB >0 then
     vTotalLinha.Add('|9900|K200|'+ InttoStr(vQtB) +'|');


  //k210
  {with qSaidas do // query observção NF
  begin
    close;
    Params[0].asdate := DT1;
    Params[1].asdate := DT2;
    open;
    FetchAll;
  end;
  gauge1.MaxValue := gauge1.MaxValue + qSaidas.RecordCount;
  qSaidas.First;
  vQtB := 0;
  vCod := 0;
  while not qSaidas.Eof do
  begin
    gauge1.Progress := gauge1.Progress + 1;
    vCod := vCod + 1;
    Linha :='|K210';
    Linha := Linha + '|' + formatdatetime('ddmmyyyy', dt1 ) ; //DT os i
    Linha := Linha + '|' + formatdatetime('ddmmyyyy', dt2 ) ; //DT osf;
    Linha := Linha + '|' + inttostr(vCod) ; // codio ordem C - 30
    Linha := Linha + '|' + qSaidasIDP.text ; // COD_ITEM 	Código do item (campo 02 do Registro 0200). 	C 	60 	- 	O
    Linha := Linha + '|' + FormatFloat('###0.000', qSaidasQTD.asfloat); // qtd 3 casa decimal sempre positivo
    Linha := Linha + '|';
    writeLn(sArquivo,Linha);
    vQtdeLinha := vQtdeLinha +1;
    vQtB := vQtB +1;
    qSaidas.Next;
  end;
  if vQtB >0 then
     vTotalLinha.Add('|9900|K210|'+ InttoStr(vQtB) +'|');
   }

  //K280
 { gauge1.MaxValue := gauge1.MaxValue + cds.RecordCount;   02/10/2020 e-mail Thaís
  cds.First;
  vQtB := 0;
  while not cds.Eof do
  begin
    gauge1.Progress := gauge1.Progress + 1;
    Linha :='|K280';
    Linha := Linha + '|' + formatdatetime('ddmmyyyy', dt1 ) ; // Data do estoque final escriturado que está sendo corrigido. 	N 	008* 	- 	O
    Linha := Linha + '|' + CDSidproduto.Text ; // COD_ITEM 	Código do item (campo 02 do Registro 0200). 	C 	060 	- 	O
    Linha := Linha + '|'  ; // QTD_COR_POS 	Quantidade de correção positiva de apontamento ocorrido em período de apuração anterior. 	N 	- 	03 	OC
    Linha := Linha + '|'  ; // QTD_COR_NEG 	Quantidade de correção negativa de apontamento ocorrido em período de apuração anterior. 	N 	- 	03 	OC
    Linha := Linha + '|0' ; // 0 = Estoque de propriedade do informante e em seu poder;
                            // 1 = Estoque de propriedade do informante e em posse de terceiros;
                            // 2 = Estoque de propriedade de terceiros e em posse do informante. 	C 	001 	- 	O
    Linha := Linha + '|' ; //qEstIDCLI.Text;  // 07 	COD_PART 	Código do participante (campo 02 do Registro 0150):
    Linha := Linha + '|';
    writeLn(sArquivo,Linha);
    vQtdeLinha := vQtdeLinha +1;
    vQtB := vQtB +1;
    cds.Next;
  end;
  if vQtB >0 then
     vTotalLinha.Add('|9900|K280|'+ InttoStr(vQtB) +'|');     }

  //K290
  Linha :='|K290';
  Linha := Linha + '|' ; // 	DT_INI_OP 	Data de início da ordem de produção. 	N 	8 	- 	OC
  Linha := Linha + '|' ; // 	DT_FIN_OP 	Data de conclusão da ordem de produção. 	N 	8 	- 	OC
  Linha := Linha + '||' ; // COD_DOC_OP 	Código de identificação da ordem de produção. 	C 	30 	- 	OC
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1;
  vTotalLinha.Add('|9900|K290|1|');

  Linha := '|K990|'  + inttoStr(vQtdeLinha +1 ) + '|';//qunatidade de linha incluir ela
  writeLn(sArquivo,Linha);
  sTotalReg := sTotalReg + (vQtdeLinha +1);
  vTotalLinha.Add('|9900|K990|1|');

end;


procedure TfBlocoK.bloco9;
var
   Linha : String;
   vQtdeLinha, i : integer;
begin
  vQtdeLinha := 0;
  Linha :='|9001|0|';
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +1;
  vTotalLinha.Add('|9900|9001|1|');

  gauge1.MaxValue := gauge1.MaxValue + vTotalLinha.count;
  for i:=0 to vTotalLinha.count-1 do
  begin
    gauge1.Progress := gauge1.Progress + 1;
    writeLn(sArquivo,vTotalLinha[i]);    //totalizador por bloco
    vQtdeLinha := vQtdeLinha +1;
  end;

  Linha := '|9900|9900|'  + inttoStr(vTotalLinha.count +3) + '|';
  writeLn(sArquivo,Linha);

  Linha := '|9900|9990|1|';
  writeLn(sArquivo,Linha);

  Linha := '|9900|9999|1|';
  writeLn(sArquivo,Linha);
  vQtdeLinha := vQtdeLinha +3;

  Linha := '|9990|'  + inttoStr(vQtdeLinha +2 ) + '|';//qunatidade de linha incluir ela e a última
  writeLn(sArquivo,Linha);
  sTotalReg := sTotalReg + (vQtdeLinha+1);
end;

procedure TfBlocoK.InsereTotalReg(pTotal: Integer);
var
  Linha : string;
begin
  Linha := '|9999|'  + inttoStr(pTotal +1) + '|';//quantidade de linha totais + ela mesmo
  writeLn(sArquivo,Linha);
end;


function TfBlocoK.verificaDados(tab:String):boolean;
var
 Res:Boolean;
begin
  Res := true;
  if tab = '0100' then
  begin
     if (qContadorID.AsInteger = 0) or (trim(qContadorNOME.text) = '') or
        (trim(qContadorCPF.text) = '') or (length( trim(qContadorCPF.text)) < 11 ) or
        (trim(qContadorCNPJ.text) = '') or (length( trim(qContadorCNPJ.text)) < 14 ) or
        (trim(qContadorCRC.text) = '') or (trim(qContadorEMAIL.text) = '') then
     begin
       Application.MessageBox('Dados Obrigatórios não preenchido no cadastro de contador, Verifique!','Atenção');
       Res := false;
     end;
  end
  else
  if tab = '0150' then
  begin
    {if (trim(qParticipanteIDCIDADE.Text) = '') or  (trim(qParticipanteENDERECO.Text) = '') or
       (trim(qParticipanteCNPJ.Text) = '') then
     begin
       Application.MessageBox(pchar('Dados Obrigatórios não preenchido no cadastro de '+ #13+#10 +
                              'Cliente/Fornecedores ('+qParticipanteNOME.Value+'), Verifique!'),'Atenção');
       Res := false;
     end;
  end
  else
  if tab = '0200' then
  begin
    if (trim(qProdutoCEST.Text) = '0000000') then
     begin
       Application.MessageBox(pchar('Dados Obrigatórios não preenchido no cadastro de '+ #13+#10 +
                              'Produtos ( CEST:'+qProdutoCEST.text+'), Verifique!'),'Atenção');
       Res := false;
     end;}
  end;

end;




end.
