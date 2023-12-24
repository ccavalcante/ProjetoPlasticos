unit uImpNutricional_M2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Vcl.StdCtrls, RLReport, Datasnap.DBClient, RLRichText, Vcl.ComCtrls;

type
  TFImpNutricionalM2 = class(TForm)
    qNutricional: TZQuery;
    qNutricionaldias_validade: TIntegerField;
    qNutricionalficha_tecnica: TWideMemoField;
    dsNutricional: TDataSource;
    qNutricionalComposicaoQuali: TWideMemoField;
    qNutricionalSubstituto: TWideMemoField;
    qNutricionalgarantia: TWideStringField;
    qNutricionalModoUso: TWideMemoField;
    qNutricionalPrazovalidade: TWideStringField;
    qNutricionalConservacao: TWideMemoField;
    qNutricionalrestricao: TWideStringField;
    qGarantia: TZQuery;
    dsGarantia: TDataSource;
    qGarantiagarantia: TWideStringField;
    qGarantiavalor: TFloatField;
    qGarantiaunidade: TWideStringField;
    qNutricionaldescricao: TWideStringField;
    qGarantia2: TZQuery;
    dsGarantia2: TDataSource;
    qNutricionalIndicacaoUso: TWideMemoField;
    qNutricionalclassificacao: TWideMemoField;
    cdsDados: TClientDataSet;
    cdsDadosCampo: TWideStringField;
    cdsDadosConteudo: TMemoField;
    dsDados: TDataSource;
    rlNovoHorizontal: TRLReport;
    RLPanelLeft: TRLPanel;
    RLPanelCabecalho: TRLPanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    RLDBText45: TRLDBText;
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
    RLRichTextClassificacao: TRLRichText;
    RLRichTextComposicaoQualitativa: TRLRichText;
    RLRichTextEventuaisSubs: TRLRichText;
    RLRichTextNiveisGarantia: TRLRichText;
    RLRichTextIndicacaoUso: TRLRichText;
    RLRichTextRestricoes: TRLRichText;
    RLRichTextModoUso: TRLRichText;
    RLPanelClient: TRLPanel;
    RLRichTextConservacao: TRLRichText;
    RLRichTextPrazoValidade: TRLRichText;
    RLRichText1: TRLRichText;
    RLPanelTabelaReferenciaConsumo: TRLPanel;
    qTabelaReferencia: TZQuery;
    RLLabel1: TRLLabel;
    RLLabelTituloGarantia: TRLLabel;
    RLLabelTituloVlrReferencia: TRLLabel;
    RLLabelTituloQtd100g: TRLLabel;
    RLLabelTituloPerc100g: TRLLabel;
    qTabelaReferenciaID: TIntegerField;
    qTabelaReferenciaIDPRODUTO: TIntegerField;
    qTabelaReferenciaTIPOTABELA: TIntegerField;
    qTabelaReferenciaGARANTIA: TWideStringField;
    qTabelaReferenciaVALORREFERENCIA: TFloatField;
    qTabelaReferenciaQTDFORNECIDA_100G: TFloatField;
    qTabelaReferenciaQTDPERCFORNECIDA_100G: TFloatField;
    RLLabelNomeProduto: TRLLabel;
    RLLabelNomeFantasia: TRLLabel;
    RLPanelTabelaReferenciaMicrominerais_mgDia: TRLPanel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLPanelTabelaReferenciaMicrominerais_GDia: TRLPanel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLPanelTabelaReferenciaVitaminasDia: TRLPanel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    rllbDataFabricacao: TRLLabel;
    rllbDataValidade: TRLLabel;
    rllbLote: TRLLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    procedure RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure rlNovoHorizontalBeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure RLBand20BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    idProduto : Integer;
    DataFab   : TDateTime;
    LoteProd  : String;
    procedure TestaDetailGrid;
  public
    { Public declarations }
    procedure ImprimirEtiqueta(pIdProduto : Integer; pDataFab : TDateTime; pLote : String);
  end;

implementation

{$R *.dfm}

uses uDM;

procedure TFImpNutricionalM2.FormCreate(Sender: TObject);
begin
  TestaDetailGrid;
end;

procedure TFImpNutricionalM2.ImprimirEtiqueta(pIdProduto : Integer; pDataFab : TDateTime; pLote : String);
begin
  idProduto := pIdProduto;

  qNutricional.Close;
  qNutricional.ParamByName('produto').AsInteger := idProduto;
  qNutricional.Open;

  qGarantia.Close;
  qGarantia.ParamByName('produto').AsInteger := idProduto;
  qGarantia.Open;

  qGarantia2.Close;
  qGarantia2.ParamByName('produto').AsInteger := idProduto;
  qGarantia2.Open;

  DataFab  := pDataFab;
  LoteProd := pLote;

  try
    DM.RLPreviewSetup1.ZoomFactor := 120; //ajuste para visualização da etiqueta.

    rlNovoHorizontal.PreviewModal;
  finally
    //retorna para o padrão após a visualização.
    DM.RLPreviewSetup1.ZoomFactor := 80;
  end;
end;

procedure TFImpNutricionalM2.RLBand20BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  Inttostr(cdsDados.RecordCount);
end;

procedure TFImpNutricionalM2.RLBand8BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  qNutricional.Prior;
end;

procedure TFImpNutricionalM2.rlNovoHorizontalBeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  parentAtual : TWinControl;
  rllbGarantia : TRLLabel;
  rllbVlrReferencia : TRLLabel;
  rllbQtd100g       : TRLLabel;
  rllbPerc100g      : TRLLabel;
  controleTop       : Integer;
  txtGarantia       : String;
const
  TEXTOFORMATADO = '{\rtf1\ansi\ansicpg1252\deff0\deflang1046{\fonttbl{\f0\fnil\fcharset0 Small Fonts;}{\f1\fnil\fcharset0 Calibri;}}'+
                   '\viewkind4\uc1\pard\sa200\sl276\slmult1\lang22\b\f0\fs12 %s\b0 %s \f1\fs22\par'+
                   '}';
  Procedure VerificarPosicionamento(campo : TRLRichText);
  begin
    if parentAtual = rlPanelClient then
    begin
      campo.Parent := parentAtual;
      Exit;
    end;

    if (campo.Top + campo.Height) > (RLPanelLeft.Height - 20) then
    begin
      campo.Parent := RLPanelClient;
      parentAtual := RlPanelClient;
    end;
  end;

  procedure CriarTabelaReferencia(rlPanel : TRlPanel; pTipoTabela : Integer);
  begin
    qTabelaReferencia.Close;
    qTabelaReferencia.ParamByName('idProduto').AsInteger  := idProduto;
    qTabelaReferencia.ParamByName('TipoTabela').AsInteger := pTipoTabela;
    qTabelaReferencia.Open;
    controleTop := RLLabelTituloGarantia.Top;
    while not qTabelaReferencia.Eof do
    begin
      rllbGarantia := TRLLabel.Create(rlPanel);
      rllbGarantia.Parent := rlPanel;
      rllbGarantia.AutoSize := False;
      rllbGarantia.Width  := RLLabelTituloGarantia.Width;
      rllbGarantia.Height := RLLabelTituloGarantia.Height;
      rllbGarantia.Caption := qTabelaReferenciaGARANTIA.AsString;
      rllbGarantia.Left := RLLabelTituloGarantia.Left;
      rllbGarantia.Font := RLLabelTituloGarantia.Font;
      rllbGarantia.Font.Style := rllbGarantia.Font.Style - [fsBold];
      rllbGarantia.Top  := controleTop + rllbGarantia.Height + 1;

      rllbVlrReferencia := TRLLabel.Create(rlPanel);
      rllbVlrReferencia.Parent := rlPanel;
      rllbVlrReferencia.AutoSize := False;
      rllbVlrReferencia.Width := RLLabelTituloVlrReferencia.Width;
      rllbVlrReferencia.Height := rllbGarantia.Height;
      rllbVlrReferencia.Caption := FormatFloat('###,###,##0.00', qTabelaReferenciaVALORREFERENCIA.AsCurrency);
      rllbVlrReferencia.Left    := RLLabelTituloVlrReferencia.Left - 4;
      rllbVlrReferencia.Font    := rllbGarantia.Font;
      rllbVlrReferencia.Top     := rllbGarantia.Top;
      rllbVlrReferencia.Alignment := taRightJustify;

      rllbQtd100g := TRLLabel.Create(rlPanel);
      rllbQtd100g.Parent := rlPanel;
      rllbQtd100g.AutoSize  := False;
      rllbQtd100g.Width := RLLabelTituloQtd100g.Width;
      rllbQtd100g.Height := rllbGarantia.Height;
      rllbQtd100g.Caption := FormatFloat('###,##0.00',qTabelaReferenciaQTDFORNECIDA_100G.AsCurrency);;
      rllbQtd100g.Left    := RLLabelTituloQtd100g.Left - 4;
      rllbQtd100g.Font    := rllbGarantia.Font;
      rllbQtd100g.Top     := rllbGarantia.Top;
      rllbQtd100g.Alignment := taRightJustify;

      rllbPerc100g := TRLLabel.Create(rlPanel);
      rllbPerc100g.Parent := rlPanel;
      rllbPerc100g.AutoSize := False;
      rllbPerc100g.Width    := RLLabelTituloPerc100g.Width;
      rllbPerc100g.Height := rllbGarantia.Height;
      rllbPerc100g.Caption := FormatFloat('###,##0.00',qTabelaReferenciaQTDPERCFORNECIDA_100G.AsCurrency);
      rllbPerc100g.Left    := RLLabelTituloPerc100g.Left - 4;
      rllbPerc100g.Font    := rllbGarantia.Font;
      rllbPerc100g.Top     := rllbGarantia.Top;
      rllbPerc100g.Alignment := taRightJustify;

      controleTop := rllbGarantia.Top;
      qTabelaReferencia.Next;
    end;
    rlPanel.Height := controleTop + 10;

    rlPanel.Visible := not qTabelaReferencia.IsEmpty;
    rlPanel.Align   := faTop;
  end;

begin

  parentAtual := RLPanelLeft;

  RLLabelNomeProduto.Caption := qNutricionaldescricao.AsString;
  RLLabelNomeFantasia.Caption := DM.dParametro.DataSet.FieldByName('fantasia').AsString;

  qGarantia2.First;
  while not qGarantia2.eof do
  begin
    txtGarantia := txtGarantia + qGarantia2.FieldByName('descricao').AsString;
    qGarantia2.Next;
  end;

  rllbDataValidade.Caption   := FormatDateTime('dd/mm/yyyy', DataFab + qNutricionaldias_validade.AsInteger);
  rllbDataFabricacao.Caption := FormatDateTime('dd/mm/yyyy', DataFab);
  rllbLote.Caption           := LoteProd;

  RLRichTextClassificacao.Lines.Text := Format(TEXTOFORMATADO,['Classificação: ', qNutricionalClassificacao.AsString]);
  RLRichTextComposicaoQualitativa.Lines.Text := Format(TEXTOFORMATADO,['Composição Qualitativa: ', qNutricionalComposicaoQuali.AsString]);
  RLRichTextEventuaisSubs.Lines.Text         := Format(TEXTOFORMATADO,['Eventuais Substitutos: ', qNutricionalSubstituto.AsString]);
  RLRichTextNiveisGarantia.Lines.Text        := Format(TEXTOFORMATADO,['Níveis de Garantia: ', txtGarantia]);
  RLRichTextIndicacaoUso.Lines.Text          := Format(TEXTOFORMATADO,['Indicações de uso e espécie animal a que se destina: ',
                                                       qNutricionalIndicacaoUso.AsString]);

  VerificarPosicionamento(RLRichTextIndicacaoUso);

  RLRichTextModoUso.Lines.Text               := Format(TEXTOFORMATADO,['Modo de usar: ', qNutricionalModoUso.AsString]);
  VerificarPosicionamento(RLRichTextModoUso);

  RLRichTextRestricoes.Lines.Text            := Format(TEXTOFORMATADO,['Restrições e outras recomentações: ', qNutricionalRestricao.AsString]);
  VerificarPosicionamento(RLRichTextRestricoes);

  RLRichTextConservacao.Lines.Text           := Format(TEXTOFORMATADO,['Condições de Conservação: ', qNutricionalConservacao.AsString]);
  VerificarPosicionamento(RLRichTextConservacao);

  RLRichTextPrazoValidade.Lines.Text         := Format(TEXTOFORMATADO,['Praço de Validade: ', qNutricionalDias_Validade.AsString]);
  VerificarPosicionamento(RLRichTextPrazoValidade);

  CriarTabelaReferencia(RLPanelTabelaReferenciaConsumo, 0);
  CriarTabelaReferencia(RLPanelTabelaReferenciaMicrominerais_mgDia, 1);
  CriarTabelaReferencia(RLPanelTabelaReferenciaMicrominerais_gDia, 3);
  CriarTabelaReferencia(RLPanelTabelaReferenciaVitaminasDia, 2)

end;

procedure TFImpNutricionalM2.TestaDetailGrid;
var j : Integer;
  function retornaTexto(Texto : String) : String;
  var
    i : Integer;
  begin
    Result := EmptyStr;
    for i := 0 to 2 do
      Result := Result + ' ' + Texto;
  end;

  procedure adicionarregistros(pCampo, pConteudo : String);
  begin
    cdsDados.Insert;
    cdsDados.FieldByName('Campo').AsString := pCampo;
    cdsDados.FieldByName('Conteudo').AsString := retornaTexto(pConteudo);
    cdsDados.Post;
  end;

begin

  for j  := 0 to 20 do
    adicionarregistros('Campo ' + IntToStr(j), 'Conteudo ' + IntToStr(j));


end;

end.
