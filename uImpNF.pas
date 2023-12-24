unit uImpNF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, IBCustomDataSet, IBQuery;

type
  TfImpNF = class(TForm)
    rp: TRLReport;
    D: TDataSource;
    Q: TIBQuery;
    QID: TIntegerField;
    QNF: TIntegerField;
    QEMISSAO: TDateField;
    QSAIDA: TDateField;
    QHORA: TTimeField;
    QTIPO: TIBStringField;
    QCFOP: TIBStringField;
    QNATOPER: TIBStringField;
    QIDPRODUTOR: TIntegerField;
    QNOME: TIBStringField;
    QCNPJ: TIBStringField;
    QIE: TIBStringField;
    QENDERECO: TIBStringField;
    QBAIRRO: TIBStringField;
    QCEP: TIBStringField;
    QCIDADE: TIBStringField;
    QFONE: TIBStringField;
    QUF: TIBStringField;
    QBASE_ICMS: TIBBCDField;
    QVAL_ICMS: TIBBCDField;
    QBASE_IPI: TIBBCDField;
    QVAL_IPI: TIBBCDField;
    QT_PROD: TIBBCDField;
    QT_NF: TIBBCDField;
    QFRETE: TIBBCDField;
    QIDTRANSPORTADORA: TIntegerField;
    QTRANS_NOME: TIBStringField;
    QTRANS_CNPJ: TIBStringField;
    QTRANS_IE: TIBStringField;
    QTRANS_PLACA: TIBStringField;
    QTRANS_UFPLACA: TIBStringField;
    QTRANS_ENDE: TIBStringField;
    QTRANS_CIDADE: TIBStringField;
    QTRANS_UF: TIBStringField;
    QQUANTIDADE: TIBStringField;
    QESPECIE: TIBStringField;
    QMARCA: TIBStringField;
    QNUMERO: TIBStringField;
    QPBRUTO: TIBBCDField;
    QPLIQUIDO: TIBBCDField;
    QOBS: TBlobField;
    QTPFRETE: TIBStringField;
    QTPNF: TIBStringField;
    QID1: TIntegerField;
    QIDNF: TIntegerField;
    QIDPRODUTO: TIntegerField;
    QDESCRICAO: TIBStringField;
    QST: TIBStringField;
    QUNIDADE: TIBStringField;
    QQTD: TIBBCDField;
    QUNIT: TIBBCDField;
    QTOTAL: TIBBCDField;
    QICMS: TIBBCDField;
    rpProge: TRLReport;
    RLBand4: TRLBand;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLDBText66: TRLDBText;
    RLDBText67: TRLDBText;
    RLBand5: TRLBand;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLDBText71: TRLDBText;
    RLDBText72: TRLDBText;
    RLDBText73: TRLDBText;
    RLDBText74: TRLDBText;
    RLDBText75: TRLDBText;
    RLBand6: TRLBand;
    lS2: TRLLabel;
    lE2: TRLLabel;
    RLDBText76: TRLDBText;
    RLDBText77: TRLDBText;
    RLDBText78: TRLDBText;
    RLDBText79: TRLDBText;
    RLDBText80: TRLDBText;
    RLDBText81: TRLDBText;
    RLDBText82: TRLDBText;
    RLDBText83: TRLDBText;
    RLDBText84: TRLDBText;
    RLDBText85: TRLDBText;
    RLDBText86: TRLDBText;
    RLDBText87: TRLDBText;
    RLDBText88: TRLDBText;
    RLDBText89: TRLDBText;
    RLDBText90: TRLDBText;
    RLBand3: TRLBand;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLBand2: TRLBand;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLBand1: TRLBand;
    lS: TRLLabel;
    lE: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    QST1: TIBStringField;
    qServ: TIBQuery;
    qServID: TIntegerField;
    qServIDNF: TIntegerField;
    qServIDPRODUTO: TIntegerField;
    qServDESCRICAO: TIBStringField;
    qServST: TIBStringField;
    qServUNIDADE: TIBStringField;
    qServQTD: TIBBCDField;
    qServUNIT: TIBBCDField;
    qServTOTAL: TIBBCDField;
    qServICMS: TIBBCDField;
    qServTIPO: TIBStringField;
    RLDBText91: TRLDBText;
    QT_SERV: TIBBCDField;
    QVAL_ISS: TIBBCDField;
    QTIPO1: TIBStringField;
    RLDBText92: TRLDBText;
    RLDBMemo1: TRLDBMemo;
    RLDBText93: TRLDBText;
    RLDBText94: TRLDBText;
    RLDBText95: TRLDBText;
    RLDBText96: TRLDBText;
    RLDBText97: TRLDBText;
    RLDBText98: TRLDBText;
    QSERV1: TIBStringField;
    QVALSERV1: TIBBCDField;
    QSERV2: TIBStringField;
    QVALSERV2: TIBBCDField;
    QSERV3: TIBStringField;
    QVALSERV3: TIBBCDField;
    QSERV4: TIBStringField;
    QVALSERV4: TIBBCDField;
    QSERV5: TIBStringField;
    QVALSEV5: TIBBCDField;
    QSERV6: TIBStringField;
    QVALSER6: TIBBCDField;
    RLDBText99: TRLDBText;
    RLDBText100: TRLDBText;
    RLDBText101: TRLDBText;
    RLDBText102: TRLDBText;
    RLDBText103: TRLDBText;
    RLDBText104: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    qFinan: TIBQuery;
    qFinanVENCI: TDateField;
    qFinanVALOR: TIBBCDField;
    lVenci: TRLLabel;
    lValor: TRLLabel;
    lValor2: TRLLabel;
    lVenci2: TRLLabel;
    lValor3: TRLLabel;
    lVenci3: TRLLabel;
    RLDBText23: TRLDBText;
    mFinan: TRLMemo;
    RLDBText105: TRLDBText;
    RLDBText106: TRLDBText;
    QMARGEMST: TIBBCDField;
    QBASEST: TIBBCDField;
    QVALICMSST: TIBBCDField;
    RLDBText107: TRLDBText;
    RLDBText109: TRLDBText;
    RLDBText110: TRLDBText;
    QDESCONTO: TIBBCDField;
    QDESPESAS: TIBBCDField;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3AfterPrint(Sender: TObject);
    procedure rpBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpNF: TfImpNF;
  FinanNF : String;

implementation

uses uDM;

{$R *.dfm}

procedure TfImpNF.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 if QTIPO.Value = 'S' then
  begin
   lS.Visible := True;
   lE.Visible := false;
  end
 else
  begin
   lS.Visible := False;
   lE.Visible := True;
  end;
end;

procedure TfImpNF.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
Q.Prior;
end;

procedure TfImpNF.RLBand3AfterPrint(Sender: TObject);
begin
Q.Next;
end;

procedure TfImpNF.rpBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  lVenci.Caption := '';
  lValor.Caption := '';

  lVenci2.Caption := '';
  lValor2.Caption := '';

  lVenci3.Caption := '';
  lValor3.Caption := '';


 if qFinan.RecordCount <> 0 then
  begin
   lVenci.Caption := FormatDateTime('dd/mm/yyyy', qFinanVENCI.Value);
   lValor.Caption := FormatFloat('###,###,###,##0.00', qFinanVALOR.Value);

   qFinan.Next;
   if qFinan.Eof = false then
    begin
     lVenci2.Caption := FormatDateTime('dd/mm/yyyy', qFinanVENCI.Value);
     lValor2.Caption := FormatFloat('###,###,###,##0.00', qFinanVALOR.Value);
    end;

   qFinan.Next;
   if qFinan.Eof = false then
    begin
     lVenci3.Caption := FormatDateTime('dd/mm/yyyy', qFinanVENCI.Value);
     lValor3.Caption := FormatFloat('###,###,###,##0.00', qFinanVALOR.Value);
    end;
  end;
end;

procedure TfImpNF.RLBand2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 if QTIPO1.Value = 'S' then
  begin
   RLDBText16.Visible := False;
   RLDBText17.Visible := False;
   RLDBText18.Visible := False;
   RLDBText19.Visible := False;
   RLDBText20.Visible := False;
   RLDBText21.Visible := False;
   RLDBText22.Visible := False;
   RLLabel4.Visible := False;
  end
 else
  begin
   RLDBText16.Visible := True;
   RLDBText17.Visible := True;
   RLDBText18.Visible := True;
   RLDBText19.Visible := True;
   RLDBText20.Visible := True;
   RLDBText21.Visible := True;
   RLDBText22.Visible := True;
   RLLabel4.Visible := True;
  end;
end;

procedure TfImpNF.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
 if QTIPO.Value = 'S' then
  begin
   lS2.Visible := True;
   lE2.Visible := false;
  end
 else
  begin
   lS2.Visible := False;
   lE2.Visible := True;
  end;
end;

end.
