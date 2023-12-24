unit RLBLayout;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, ImgList, DB , RLPreviewForm, System.ImageList
 {$IFDEF VER150}
   ,Variants
 {$ELSE}
  {$IFDEF VER140}
    ,Variants, RLSaveDialog, RLFilters, RLPDFFilter
  {$ENDIF}
 {$ENDIF}
  ;
type
  TFrmRLBLayout = class(TForm)
    ImageList: TImageList;
    BoletoPadrao: TRLReport;
    RLBand3: TRLBand;
    RLDraw50: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw43: TRLDraw;
    RLDraw42: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw36: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw33: TRLDraw;
    imgBanco3: TRLImage;
    RLDraw81: TRLDraw;
    txtLinhaDigitavel: TRLDBText;
    RLDraw82: TRLDraw;
    txtNumeroBanco3: TRLDBText;
    RLLabel145: TRLLabel;
    txtLocalPagamento3: TRLDBText;
    txtDataVencimento3: TRLDBText;
    RLLabel146: TRLLabel;
    RLDraw83: TRLDraw;
    RLLabel147: TRLLabel;
    txtNomeCedente3: TRLDBText;
    RLLabel148: TRLLabel;
    txtCodigoCedente3: TRLDBText;
    RLLabel149: TRLLabel;
    txtDataDocumento3: TRLDBText;
    RLLabel150: TRLLabel;
    txtNumeroDocumento3: TRLDBText;
    RLLabel151: TRLLabel;
    txtEspecieDoc3: TRLDBText;
    RLLabel152: TRLLabel;
    txtAceite3: TRLDBText;
    RLLabel153: TRLLabel;
    txtDataProcessamento3: TRLDBText;
    RLLabel154: TRLLabel;
    txtNossoNumero3: TRLDBText;
    RLLabel155: TRLLabel;
    RLLabel156: TRLLabel;
    txtCarteira3: TRLDBText;
    RLLabel157: TRLLabel;
    txtEspecie3: TRLLabel;
    RLLabel158: TRLLabel;
    txtQuantidade3: TRLDBText;
    RLLabel159: TRLLabel;
    txtValorMoeda3: TRLDBText;
    RLLabel160: TRLLabel;
    txtValorDocumento3: TRLDBText;
    RLLabel161: TRLLabel;
    txtInstrucoes3: TRLDBMemo;
    RLLabel162: TRLLabel;
    txtDesconto3: TRLDBText;
    RLLabel163: TRLLabel;
    txtMoraMulta3: TRLDBText;
    RLLabel164: TRLLabel;
    RLLabel165: TRLLabel;
    txtNomeSacado3: TRLDBText;
    RLLabel166: TRLLabel;
    txtCpfCnpjSacado3: TRLDBText;
    txtEnderecoSacado3: TRLDBText;
    RLLabel167: TRLLabel;
    txtCidadeSacado3: TRLDBText;
    txtCodigoBaixa3: TRLDBText;
    RLLabel168: TRLLabel;
    imgCodigoBarra: TRLDBImage;
    RLLabel170: TRLLabel;
    RLLabel175: TRLLabel;
    txtSacadorAvalista3: TRLDBText;
    txtReferencia3: TRLDBText;
    RLDraw14: TRLDraw;
    RLDraw15: TRLDraw;
    RLDraw13: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw10: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw1: TRLDraw;
    imgBanco1: TRLImage;
    txtNumeroBanco1: TRLDBText;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    txtNomeCedente1: TRLDBText;
    txtCodigoCedente1: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    txtNomeSacado1: TRLDBText;
    RLLabel9: TRLLabel;
    txtDataVencimento1: TRLDBText;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    txtNossoNumero1: TRLDBText;
    RLLabel14: TRLLabel;
    txtNumeroDocumento1: TRLDBText;
    txtEspecie1: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    txtValorDocumento1: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    txtLocalPagamento1: TRLDBText;
    RLLabel37: TRLLabel;
    txtDataProcessamento1: TRLDBText;
    RLLabel8: TRLLabel;
    RLDraw29: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw37: TRLDraw;
    RLDraw34: TRLDraw;
    RLDraw28: TRLDraw;
    RLDraw27: TRLDraw;
    RLDraw26: TRLDraw;
    RLDraw25: TRLDraw;
    RLDraw24: TRLDraw;
    RLDraw21: TRLDraw;
    RLDraw23: TRLDraw;
    RLDraw22: TRLDraw;
    RLDraw20: TRLDraw;
    RLDraw19: TRLDraw;
    RLDraw18: TRLDraw;
    RLDraw17: TRLDraw;
    RLDraw16: TRLDraw;
    imgBanco2: TRLImage;
    txtNumeroBanco2: TRLDBText;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    txtLocalPagamento2: TRLDBText;
    RLLabel69: TRLLabel;
    txtNomeCedente2: TRLDBText;
    RLLabel70: TRLLabel;
    txtDataDocumento2: TRLDBText;
    RLLabel71: TRLLabel;
    txtNumeroDocumento2: TRLDBText;
    RLLabel72: TRLLabel;
    txtEspecieDoc2: TRLDBText;
    RLLabel73: TRLLabel;
    txtAceite2: TRLDBText;
    RLLabel74: TRLLabel;                           
    txtDataProcessamento2: TRLDBText;
    RLLabel75: TRLLabel;
    txtCarteira2: TRLDBText;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    txtEspecie2: TRLLabel;
    RLLabel78: TRLLabel;
    txtQuantidade2: TRLDBText;
    RLLabel79: TRLLabel;
    txtValorMoeda2: TRLDBText;
    RLLabel80: TRLLabel;
    txtInstrucoes2: TRLDBMemo;
    RLLabel81: TRLLabel;
    txtDataVencimento2: TRLDBText;
    RLLabel82: TRLLabel;
    txtCodigoCedente2: TRLDBText;
    RLLabel83: TRLLabel;
    txtNossoNumero2: TRLDBText;
    RLLabel84: TRLLabel;
    txtValorDocumento2: TRLDBText;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    txtNomeSacado2: TRLDBText;
    txtEnderecoSacado2: TRLDBText;
    txtCidadeSacado2: TRLDBText;
    RLLabel89: TRLLabel;
    txtCpfCnpjSacado2: TRLDBText;
    RLLabel90: TRLLabel;
    txtCodigoBaixa2: TRLDBText;
    RLMemo2: TRLMemo;
    RLLabel91: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel102: TRLLabel;
    txtSacadorAvalista2: TRLDBText;
    BoletoCarne: TRLReport;
    RLBand1: TRLBand;
    RLDraw30: TRLDraw;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw54: TRLDraw;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLImage1: TRLImage;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel94: TRLLabel;
    RLDraw65: TRLDraw;
    RLLabel95: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel4: TRLDBText;
    RLLabel109: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel113: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel119: TRLLabel;
    RLLabel121: TRLLabel;
    RLLabel123: TRLLabel;
    RLLabel124: TRLLabel;
    RLLabel126: TRLLabel;
    RLLabel128: TRLLabel;
    RLLabel130: TRLLabel;
    RLLabel132: TRLLabel;
    RLLabel135: TRLLabel;
    RLImage2: TRLDBImage;
    RLLabel10: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel15: TRLLabel;
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
    RLDBMemo1: TRLDBMemo;
    RLDBText14: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel19: TRLLabel;
    RLLabel36: TRLLabel;
    RLDraw66: TRLDraw;
    RLDBText21: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw67: TRLDraw;
    RLLabel42: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLLabel46: TRLLabel;
    RLDBText24: TRLDBText;
    RLDraw70: TRLDraw;
    RLLabel47: TRLLabel;
    RLDBText25: TRLDBMemo;
    RLDBText26: TRLDBText;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw71: TRLDraw;
    ImgLoja: TRLImage;
    RLDBResult1: TRLDBResult;
    LCont: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel53: TRLLabel;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    RLLabel54: TRLLabel;
    RLDraw74: TRLDraw;
    RLLabel55: TRLLabel;
    RLDraw75: TRLDraw;
    RLLabel56: TRLLabel;
    RLDraw76: TRLDraw;
    RLLabel57: TRLLabel;
    RLDraw77: TRLDraw;
    RLLabel58: TRLLabel;
    endBeneficiario: TRLMemo;
    RLLabel59: TRLLabel;
    endBene1: TRLMemo;
    endBene2: TRLMemo;
    endBene3: TRLMemo;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLDBText29: TRLDBText;
    RLDBText30: TRLDBText;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel65: TRLLabel;
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure BoletoCarneBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure BoletoPadraoBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRLBLayout: TFrmRLBLayout;
implementation

uses uDM;

{$R *.dfm}

procedure TFrmRLBLayout.RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  ImageList.GetBitmap(BoletoPadrao.DataSource.DataSet.FieldByName('ImagemBanco').AsInteger,imgBanco1.Picture.Bitmap);
  ImageList.GetBitmap(BoletoPadrao.DataSource.DataSet.FieldByName('ImagemBanco').AsInteger,imgBanco3.Picture.Bitmap);
  if trim(BoletoPadrao.DataSource.DataSet.FieldByName('NumeroBanco').Text) = '104-0' then
  begin
     imgBanco2.Picture.Bitmap := nil;
     txtNumeroBanco2.Visible := false;
  end
   else
    ImageList.GetBitmap(BoletoPadrao.DataSource.DataSet.FieldByName('ImagemBanco').AsInteger,imgBanco2.Picture.Bitmap);


    RLLabel3.Caption    := 'Beneficiário';
    RLLabel69.Caption   := 'Beneficiário';
    RLLabel147.Caption  := 'Beneficiário';

    RLLabel6.Caption    := 'Agência/Codigo do Beneficiário';
    RLLabel82.Caption   := 'Agência/Codigo do Beneficiário';
    RLLabel148.Caption  := 'Agência/Codigo do Beneficiário';

    RLLabel88.Caption   := 'Pagador';
    RLLabel165.Caption  := 'Pagador';

    RLLabel67.Caption   := 'RECIBO DO PAGADOR';

    endbene1.Lines.Text := 'End.:' + endBene;
    endbene2.Lines.Text := 'End.:' + endBene;
    endbene3.Lines.Text := 'End.:' + endBene;

    if copy(trim(BoletoPadrao.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '104' then
    begin
       RLLabel123.Caption   := 'Instruções (Texto de responsabilidade do beneficiário.)';

       endbeneficiario.Visible    := true;
       endbeneficiario.Lines.Text := 'End.:' + endBene;
       RlDbText5.Left := 196;
       RLDbtext5.top  := 70;
    end;

    if copy(trim(BoletoPadrao.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '237' then
    begin
     // RLDBText29.Font.Size:= 11;  //RER 08/08/2016
     // txtLinhaDigitavel.Font.Size := 11;
    end;

    if copy(trim(BoletoPadrao.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '033' then
    begin
      RLDBText29.Font.Size:= 11;
      txtLinhaDigitavel.Font.Size := 11;
    end;


end;

procedure TFrmRLBLayout.BoletoCarneBeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  I: Integer;
begin
  LCont.Caption := '/ '+IntToStr(BoletoCarne.DataSource.DataSet.RecordCount);
  for I := 1 to ComponentCount -1 do
  begin
    if Components[I] is TRLDBText then
      TRLDBText(Components[I]).DataSource := BoletoCarne.DataSource
    else if Components[I] is TRLDBMemo then
      TRLDBMemo(Components[I]).DataSource := BoletoCarne.DataSource
    else if Components[I] is TRLDBImage then
      TRLDBImage(Components[I]).DataSource := BoletoCarne.DataSource;
  end;
end;

procedure TFrmRLBLayout.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  ImageList.GetBitmap(BoletoCarne.DataSource.DataSet.FieldByName('ImagemBanco').AsInteger,RLImage1.Picture.Bitmap);
  // ImageList.GetBitmap(BoletoCarne.DataSource.DataSet.FieldByName('ImagemBanco').AsInteger,ImgLoja.Picture.Bitmap);

  endbeneficiario.Visible := false;
  RlDbText5.Left := 154;
  RLDbtext5.top  := 81;

  RLLabel95.Caption   := 'Beneficiário';
  RLLabel97.Caption   := 'Agência/Codigo do Beneficiário';
  RLLabel38.Caption   := 'Agência/Codigo do Beneficiário';
  RLLabel130.Caption  := 'Pagador';
  RLLabel47.Caption   := 'Pagador';
  RLLabel67.Caption   := 'RECIBO DO PAGADOR';

  if copy(trim(BoletoCarne.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '104' then
  begin
    RLLabel123.Caption   := 'Instruções (Texto de responsabilidade do beneficiário.)';

    endbeneficiario.Visible    := true;
    endbeneficiario.Lines.Text := 'End.:' + endBene;
    RlDbText5.Left := 196;
    RLDbtext5.top  := 70;

    endbene1.Lines.Text := 'End.:' + endBene;
    endbene2.Lines.Text := 'End.:' + endBene;
    endbene3.Lines.Text := 'End.:' + endBene;
  end;

  if copy(trim(BoletoCarne.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '237' then
  begin
    endbeneficiario.Visible    := true;
    endbeneficiario.Lines.Text := 'End.:' + endBene;
    RlDbText5.Left := 200;
    RLDbtext5.top  := 70; 
  end;


  if (copy(trim(BoletoCarne.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '033') or    //Líder Santander
     (copy(trim(BoletoCarne.DataSource.DataSet.FieldByName('NumeroBanco').Text),1,3 ) = '237') then  //RER bradesco 
    RLDBText2.Font.Size := 11;

end;

procedure TFrmRLBLayout.BoletoPadraoBeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  I: Integer;
begin
  for I := 1 to ComponentCount -1 do
  begin
    if Components[I] is TRLDBText then
      TRLDBText(Components[I]).DataSource := BoletoPadrao.DataSource
    else if Components[I] is TRLDBMemo then
      TRLDBMemo(Components[I]).DataSource := BoletoPadrao.DataSource
    else if Components[I] is TRLDBImage then
      TRLDBImage(Components[I]).DataSource := BoletoPadrao.DataSource;
  end;
end;

end.
