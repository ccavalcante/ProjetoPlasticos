unit uImpOp_Fases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, jpeg, DB, Math, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfImpOp_Fases = class(TForm)
    rp: TRLReport;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLBand6: TRLBand;
    lTitulo: TRLLabel;
    RLBand3: TRLBand;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLBand2: TRLBand;
    RLLabel9: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText2: TRLDBText;
    lLote: TRLLabel;
    lData: TRLLabel;
    dbLote: TRLDBText;
    dbData: TRLDBText;
    RLBand4: TRLBand;
    RLDBResult1: TRLDBResult;
    lTipoE: TRLLabel;
    dbTipoE: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBResult2: TRLDBResult;
    RLDBResult3: TRLDBResult;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    rpRomaneioSubOp: TRLReport;
    RLBand5: TRLBand;
    RLDBText4: TRLDBText;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLBand7: TRLBand;
    RLBand8: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand9: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLBand10: TRLBand;
    RLDBResult6: TRLDBResult;
    RLLabel18: TRLLabel;
    qRomSubOp: TZQuery;
    dRomSubOp: TDataSource;
    RLLabel19: TRLLabel;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLDBText20: TRLDBText;
    RLDBText19: TRLDBText;
    RLLabel22: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText26: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel29: TRLLabel;
    RLDBText27: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText30: TRLDBText;
    RLDraw2: TRLDraw;
    RLLabel8: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    qRom: TZQuery;
    dRom: TDataSource;
    RLBand11: TRLBand;
    RLPanel1: TRLPanel;
    qRomSubOpidproduto: TIntegerField;
    qRomSubOpqtde: TFloatField;
    qRomSubOpun: TWideStringField;
    qRomSubOpdesc_mp: TWideStringField;
    qRomSubOpdesc_SA: TWideStringField;
    qRomSubOpdesc_pc: TWideStringField;
    qRomSubOpdesc_pr: TWideStringField;
    qRomSubOpNomeFor: TWideStringField;
    qRomSubOpendFor: TWideStringField;
    qRomSubOpnumFor: TWideStringField;
    qRomSubOpcidFor: TWideStringField;
    qRomSubOpufFor: TWideStringField;
    qRomSubOptel1For: TWideStringField;
    qRomSubOptel2For: TWideStringField;
    qRomNomeFor: TWideStringField;
    qRomid: TIntegerField;
    RLGroup1: TRLGroup;
    RLSubDetail2: TRLSubDetail;
    RLBand12: TRLBand;
    RLDBResult4: TRLDBResult;
    RLLabel11: TRLLabel;
    RLBand13: TRLBand;
    RLDBText6: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    RLLabel12: TRLLabel;
    RLBand14: TRLBand;
    RLDBText8: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText31: TRLDBText;
    RLBand15: TRLBand;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText32: TRLDBText;
    RLDBText33: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText34: TRLDBText;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel42: TRLLabel;
    RLDBText39: TRLDBText;
    RLLabel43: TRLLabel;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLLabel44: TRLLabel;
    RLDBText42: TRLDBText;
    RLLabel45: TRLLabel;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLLabel46: TRLLabel;
    RLDBText45: TRLDBText;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLDBText46: TRLDBText;
    RLLabel49: TRLLabel;
    qRomSubOpId: TIntegerField;
    qRomSubOpData: TDateTimeField;
    qRomSubOpHora: TWideStringField;
    qRomSubOpIdSubOP: TIntegerField;
    qRomSubOpTipo: TWideStringField;
    qRomSubOpIdFornecedor: TIntegerField;
    qRomSubOpQuantidade: TFloatField;
    qRomSubOpBaixadoEst: TWideStringField;
    qRomSubOpIdUsuario: TIntegerField;
    qRomSubOpqtde_prod: TFloatField;
    qRomSubOpx: TWideStringField;
    RLBand63: TRLBand;
    RLSystemInfo33: TRLSystemInfo;
    RLLabel143: TRLLabel;
    RLDBText47: TRLDBText;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLDBText48: TRLDBText;
    qRomSubOpqtdM: TFloatField;
    lHora: TRLLabel;
    lHora2: TRLLabel;
    RLBand16: TRLBand;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLDBText21: TRLDBText;
    qRomSubOpCorPro: TWideStringField;
    qRomSubOpCorSemi: TWideStringField;
    qRomSubOptamanhoPro: TWideStringField;
    qRomSubOptamanhoSemi: TWideStringField;
    RLLabel54: TRLLabel;
    RLDBText37: TRLDBText;
    RLLabel55: TRLLabel;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLDBText51: TRLDBText;
    RLLabel58: TRLLabel;
    RLDBText52: TRLDBText;
    RLLabel59: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel60: TRLLabel;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    qRomSubOprefpro: TWideStringField;
    qRomSubOprefSemi: TWideStringField;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    qRomSubOpValor: TFloatField;
    RLLabel61: TRLLabel;
    RLDBText59: TRLDBText;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLDBText60: TRLDBText;
    RLLabel64: TRLLabel;
    RLDBText61: TRLDBText;
    RLLabel65: TRLLabel;
    RLDBText62: TRLDBText;
    RLLabel66: TRLLabel;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    procedure RLPanel1AfterPrint(Sender: TObject);
    procedure RLSubDetail1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail2BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rpRomaneioSubOpBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand12AfterPrint(Sender: TObject);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand10AfterPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fImpOp_Fases: TfImpOp_Fases;

implementation

uses uDM, uCnsOP;

{$R *.dfm}

{ TfImpOP }



procedure TfImpOp_Fases.RLBand10AfterPrint(Sender: TObject);
begin
  qRomSubOP.next;
end;

procedure TfImpOp_Fases.RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  qRomSubOP.prior;
end;

procedure TfImpOp_Fases.RLBand12AfterPrint(Sender: TObject);
begin
  qRomSubOP.next;
end;

procedure TfImpOp_Fases.RLBand12BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  qRomSubOP.prior;
end;

procedure TfImpOp_Fases.RLBand9BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  lHora.Caption  := Copy(qRomSubOpHora.asString, 1, 8);
  lHora2.Caption := Copy(qRomSubOpHora.asString, 1, 8);

  {if (dm.qParametrousar_setor.asString = 'S') and (qRomSubOpTipo.asString = 'INTERNO') then
  begin
    RLLABEL19.Caption := 'Setor: ';
    RLLABEL35.Caption := 'Setor: ';
  end
  else  }
  begin
    RLLABEL19.Caption := 'Nome: ';
    RLLABEL35.Caption := 'Nome: ';
  end;

end;

procedure TfImpOp_Fases.RLPanel1AfterPrint(Sender: TObject);
begin
  rlpanel1.Height := rlpanel1.Height - 20;
end;

procedure TfImpOp_Fases.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   qRomSubOp.Close;
   qRomSubOp.ParamByName('ID').Value := qRomID.asinteger;
   qRomSubOp.Open;
end;

procedure TfImpOp_Fases.RLSubDetail2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
   qRomSubOp.Close;
   qRomSubOp.ParamByName('ID').Value := qRomID.asinteger;
   qRomSubOp.Open;
end;

procedure TfImpOp_Fases.rpRomaneioSubOpBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  //if dm.qParametrousa_referencia_base.asString <> 'S' then
  begin
    //Cor
    rllabel53.visible  := false;
    rldbtext21.visible := false;
    rllabel55.visible  := false;
    rldbtext49.visible := false;
    rllabel57.visible  := false;
    rldbtext51.visible := false;
    rllabel59.visible  := false;
    rldbtext53.visible := false;

    //Tamanho
    rllabel54.visible  := false;
    rldbtext37.visible := false;
    rllabel56.visible  := false;
    rldbtext50.visible := false;
    rllabel58.visible  := false;
    rldbtext52.visible := false;
    rllabel53.visible  := false;
    rldbtext21.visible := false;
    rllabel60.visible  := false;
    rldbtext54.visible := false;


    //Referencia
    rldbtext55.visible := false;
    rldbtext56.visible := false;
    rldbtext57.visible := false;
    rldbtext58.visible := false;

    //Ajusta rlDraw
    RLDraw2.height := 36;
    RLDraw3.height := 36;
    rlband9.Height := rlband9.Height - 37;
    rlband15.Height := rlband15.Height - 37;

  end;

  rlDraw5.Height := rldraw3.Height;
  rlDraw6.Height := rldraw3.Height;
  rlDraw7.Height := rldraw2.Height;
  rlDraw8.Height := rldraw2.Height;

end;

end.
