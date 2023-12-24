unit uImpRefBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLReport;

type
  TfImpRefBase = class(TForm)
    rpImpPedido: TRLReport;
    lCancelada: TRLAngleLabel;
    RLBand16: TRLBand;
    RLDBText54: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    lTitulo: TRLLabel;
    RLBand17: TRLBand;
    RLDraw3: TRLDraw;
    RLLabel45: TRLLabel;
    RLDBResult11: TRLDBResult;
    RLDBResult12: TRLDBResult;
    RLLabel1: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLLabel2: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLBand19: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel46: TRLLabel;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel55: TRLLabel;
    RLDBText67: TRLDBText;
    RLLabel58: TRLLabel;
    RLLabel4: TRLLabel;
    RLPanel1: TRLPanel;
    RLDBText4: TRLDBText;
    RLPanel2: TRLPanel;
    RLLabel12: TRLLabel;
    RLPanel3: TRLPanel;
    RLDBText12: TRLDBText;
    RLLabel232: TRLLabel;
    RLLabel235: TRLLabel;
    RLLabel326: TRLLabel;
    RLBand20: TRLBand;
    RLSystemInfo8: TRLSystemInfo;
    RLLabel678: TRLLabel;
    RLBand7: TRLBand;
    RLDBText75: TRLDBText;
    RLDBText76: TRLDBText;
    RLDBText77: TRLDBText;
    RLDBText211: TRLDBText;
    RLDBMemo8: TRLDBMemo;
    RLDBText278: TRLDBText;
    Q: TZQuery;
    D: TDataSource;
    Qidvenda: TIntegerField;
    Qdata: TDateTimeField;
    Qcond_pgto: TWideStringField;
    Qcliente: TWideStringField;
    Qendereco: TWideStringField;
    Qcidadeuf: TWideStringField;
    Qcep: TWideStringField;
    Qcnpj: TWideStringField;
    Qie: TWideStringField;
    Qtel1: TWideStringField;
    Qvendedor: TWideStringField;
    Qtransportadora: TWideStringField;
    Qreferencia_base: TWideStringField;
    Qidcor: TIntegerField;
    Qreferencia: TWideStringField;
    Qcor: TWideStringField;
    Qqtd: TFloatField;
    QUnit: TFloatField;
    QTotItem: TFloatField;
    Qvalor: TFloatField;
    QDesconto: TFloatField;
    Qtotal: TFloatField;
    Qdescpro: TWideStringField;
    Qidgrupo: TIntegerField;
    RLDBText11: TRLDBText;
    RLLabel5: TRLLabel;
    RLPanel6: TRLPanel;
    RLDBText2: TRLDBText;
    RLPanel7: TRLPanel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLPanel8: TRLPanel;
    RLDBText6: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText7: TRLDBText;
    RLPanel9: TRLPanel;
    RLDBText8: TRLDBText;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLPanel10: TRLPanel;
    RLDBText9: TRLDBText;
    RLPanel11: TRLPanel;
    RLDBText10: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel28: TRLLabel;
    RLLabel15: TRLLabel;
    Qobs: TWideMemoField;
    Qemail: TWideStringField;
    Qtppessoa: TWideStringField;
    M1: TRLMemo;
    M2: TRLMemo;
    M3: TRLMemo;
    M4: TRLMemo;
    M5: TRLMemo;
    qRefSemi: TZQuery;
    qRefSemitamanho: TWideStringField;
    dRefSemi: TDataSource;
    qRefSemiqtd: TFloatField;
    lTam1: TRLLabel;
    lTam2: TRLLabel;
    lTam3: TRLLabel;
    lTam4: TRLLabel;
    lTam5: TRLLabel;
    procedure RLBand19BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand7BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpRefBase: TfImpRefBase;

implementation

Uses uDM;

{$R *.dfm}

procedure TfImpRefBase.RLBand19BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Qtppessoa.asString = 'F' then
   begin
     QCNPJ.editmask := '###.###.###-##;0;_';
     rllabel12.caption := 'CPF';
     rllabel7.Caption  := 'RG';
   end
   else
   begin
     QCNPJ.editmask := '##.###.###/####-##;0;_';
     rllabel12.caption := 'CNPJ';
     rllabel7.Caption  := 'IE';
   end;
end;

procedure TfImpRefBase.RLBand7BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
Var
  vTamanho, vtamanhoOld, vDesc, vDescOld, vrefBase : String;
  vPreencheu : Integer;
  I: Integer;
  vTotal, vSF1, vSF2, vSF3, vSF4, vSF5, vSFTot : Real;
begin
  lTam1.Caption := '';
  lTam2.Caption := '';
  lTam3.Caption := '';
  lTam4.Caption := '';
  lTam5.Caption := '';

  M1.lines.clear;
  M2.lines.clear;
  M3.lines.clear;
  M4.lines.clear;
  M5.lines.clear;


  vRefBase :=  Qreferencia_base.asString;


  dm.qPesq.close;
  dm.qPesq.SQL.clear;
  if Qidcor.text <> '' then
  begin


    dm.qPesq.SQL.add('select tamanho, '+
                     ' case TAMANHO   '+
                     '   when ''PP'' then -500 '+
                     '     when ''P'' then -400 '+
                     '     when ''M'' then -300  '+
                     '     when ''G'' then -200  '+
                     '     when ''GG'' then -100 '+
                     ' else -600  '+
                     ' end tam from produto where referencia_base = '+quotedStr(Qreferencia_base.text)+' and produto.idcor = '+Qidcor.text+
                     '                       and idgrupo = '+ Qidgrupo.text +' and isnumeric(tamanho) = 0  '+
                     '                       group by tamanho  '+
                     ' union all '+
                     ' select tamanho, tamanho tam  from produto where referencia_base = '+quotedStr(Qreferencia_base.text)+' and produto.idcor = '+Qidcor.text+
                     '                       and idgrupo = '+ Qidgrupo.text +' and isnumeric(tamanho) > 0 '+
                     '                       group by tamanho '+
                     '             order by 2');
  end
  else
  begin


    dm.qPesq.SQL.add('select tamanho, '+
                     ' case TAMANHO   '+
                     '   when ''PP'' then -500 '+
                     '     when ''P'' then -400 '+
                     '     when ''M'' then -300  '+
                     '     when ''G'' then -200  '+
                     '     when ''GG'' then -100 '+
                     ' else -600  '+
                     ' end tam from produto where referencia_base = '+quotedStr(Qreferencia_base.text)+
                     '                       and idgrupo = '+ Qidgrupo.text +' and isnumeric(tamanho) = 0  '+
                     '                       group by tamanho  '+
                     ' union all '+
                     ' select tamanho, tamanho tam  from produto where referencia_base = '+quotedStr(Qreferencia_base.text)+' and produto.idcor = '+Qidcor.text+
                     '                       and idgrupo = '+ Qidgrupo.text +' and isnumeric(tamanho) > 0 '+
                     '                       group by tamanho '+
                     '             order by 2');
  end;
  dm.qPesq.open;//pega todos os tamanhos
  vPreencheu := 0;



  while dm.qPesq.eof = false do
  begin
    vTamanho := dm.qPesq.FieldByName('tamanho').asString;
    if vTamanho <> vTamanhoOld then
    begin
      case vPreencheu of
        0: lTam1.Caption := dm.qPesq.FieldByName('tamanho').asString;
        1: lTam2.Caption := dm.qPesq.FieldByName('tamanho').asString;
        2: lTam3.Caption := dm.qPesq.FieldByName('tamanho').asString;
        3: lTam4.Caption := dm.qPesq.FieldByName('tamanho').asString;
        4: lTam5.Caption := dm.qPesq.FieldByName('tamanho').asString;
      end;
      vPreencheu := vPreencheu + 1;
      vTamanhoOld := vTamanho;
    end;

    dm.qPesq.next;
  end;

  qRefSemi.close;
  qRefSemi.ParamByName('ref').asString := Qreferencia_base.asString;
  qRefSemi.ParamByName('cor').asinteger := Qidcor.asInteger;
  qRefSemi.ParamByName('venda').asInteger := Qidvenda.asInteger;
  qRefSemi.open;
  qRefSemi.first;
  vDescOld := '';
  //Limpando os memos

  //Cria linhas com 0 para estoque, vendas e produção
  if lTam1.Caption <> '' then
    M1.lines.add(FormatFloat('#0.##', 0));



  if lTam2.Caption <> '' then
    M2.lines.add(FormatFloat('#0.##', 0));


  if lTam3.Caption <> '' then
  M3.lines.add(FormatFloat('#0.##', 0));


  if lTam4.Caption <> '' then
    M4.lines.add(FormatFloat('#0.##', 0));


  if lTam5.Caption <> '' then
    M5.lines.add(FormatFloat('#0.##', 0));




  vSF1 := 0;
  vSF1 := 0;
  vSF1 := 0;
  vSF1 := 0;
  vSF1 := 0;
  vSF1 := 0;
  vSFTot := 0;


    qRefSemi.first;
    vTotal := 0;
    while qRefSemi.eof = false do
    begin
      //if trim(mProcesso.lines[i]) = trim((copy(qRefSemiDescricao.asString + ' '+ qRefSemiDescricao_1.asString,0,55))) then
      begin
        if qRefSemiTamanho.asString = lTam1.Caption then
        begin
          m1.lines[0] := (FormatFloat('#0.##', qRefSemiQtd.asFloat));

          vSF1 := vSF1 + qRefSemiQtd.asFloat;


        end;

        if qRefSemiTamanho.asString = lTam2.Caption then
        begin
          m2.lines[0] := (FormatFloat('#0.##', qRefSemiQtd.asFloat));

          vSF2 := vSF2 + qRefSemiQtd.asFloat;
        end
        else
        if qRefSemiTamanho.asString = lTam3.Caption then
        begin
          m3.lines[0] := (FormatFloat('#0.##', qRefSemiQtd.asFloat));

          vSF3 := vSF3 + qRefSemiQtd.asFloat;
        end
        else
        if qRefSemiTamanho.asString = lTam4.Caption then
        begin
          m4.lines[0] := (FormatFloat('#0.##', qRefSemiQtd.asFloat));

          vSF4 := vSF4 + qRefSemiQtd.asFloat;
        end
        else
        if qRefSemiTamanho.asString = lTam5.Caption then
        begin
          m5.lines[0] := (FormatFloat('#0.##', qRefSemiQtd.asFloat));
           vSF5 := vSF5 + qRefSemiQtd.asFloat;
        end;
        vTotal :=  vTotal + qRefSemiQtd.asFloat;
      end;
      qRefSemi.Next;
    end;

end;

end.
