unit uCadRapPro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls, DB,
  ActnList, ZSqlUpdate, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, System.Actions;

type
  TfCadRapPro = class(TForm)
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit7: TDBEdit;
    lCPFCNPJ: TLabel;
    DBEdit14: TDBEdit;
    Image1: TImage;
    XiButton5: TXiButton;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    ActionList1: TActionList;
    acConf: TAction;
    T: TZQuery;
    U: TZUpdateSQL;
    D: TDataSource;
    acSair: TAction;
    Bevel1: TBevel;
    rdTipo: TRadioGroup;
    edIcms: TDBEdit;
    Label10: TLabel;
    Label9: TLabel;
    edAl: TDBEdit;
    Label15: TLabel;
    DBEdit13: TDBEdit;
    DBEdit4: TDBEdit;
    Label1: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    XiButton1: TXiButton;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    TId: TIntegerField;
    Tdescricao: TWideStringField;
    Ttipo: TWideStringField;
    Test_seguranca: TFloatField;
    Test_minimo: TFloatField;
    Tft_conv_un: TWideStringField;
    Tft_conv_qtde: TFloatField;
    Tft_conv_2un: TWideStringField;
    Tproduzido: TWideStringField;
    Tbarras: TWideStringField;
    Treferencia: TWideStringField;
    Tvalor: TFloatField;
    Tqtdestoque: TFloatField;
    TCusto_montagem: TFloatField;
    Tcod_Manual: TIntegerField;
    Tcest: TWideStringField;
    TNCM: TWideStringField;
    TeIPI: TWideStringField;
    Tobs: TWideMemoField;
    TPrecoCompra: TFloatField;
    TIcms: TFloatField;
    TPIS: TWideStringField;
    TpPIS: TFloatField;
    TCOFINS: TWideStringField;
    TpCOFINS: TFloatField;
    TIPI: TWideStringField;
    TpIPI: TFloatField;
    Tcsosn: TWideStringField;
    Tcfop: TWideStringField;
    Tcfop_fora: TWideStringField;
    Tmargem: TFloatField;
    Tex: TIntegerField;
    Tidfornecedor: TIntegerField;
    TRoyalties: TFloatField;
    TIDSTRIB: TIntegerField;
    TREDUCAO: TFloatField;
    TMARGEMST: TFloatField;
    TST: TFloatField;
    TST2: TFloatField;
    TCSOSN2: TWideStringField;
    TMVA: TFloatField;
    TCODIPI: TWideStringField;
    TIDTIPO_TRIBUTACAO: TIntegerField;
    TIDORIGEM: TIntegerField;
    Tunidade_nfe: TWideStringField;
    Tvalor2: TFloatField;
    TpesoLiq: TFloatField;
    Tpesobru: TFloatField;
    Tmultiplo: TFloatField;
    Tcubagem: TFloatField;
    TDUN14: TWideStringField;
    TCustoProcesso: TFloatField;
    TCustoMP: TFloatField;
    TCustoproducao: TFloatField;
    TCustoOperacional: TFloatField;
    TCustoFinal: TFloatField;
    TVendaSugerido: TFloatField;
    TIdCxMaster: TIntegerField;
    TEmbalagem: TWideStringField;
    Taltura: TFloatField;
    Tlargura: TFloatField;
    Tcomprimento: TFloatField;
    Tidweb: TIntegerField;
    Tsincronizado: TWideStringField;
    TcustoCxMaster: TFloatField;
    TmaxDesconto: TFloatField;
    Label6: TLabel;
    DBEdit8: TDBEdit;
    Tcst: TWideStringField;
    Tidgrupo: TIntegerField;
    Tmateria_prima: TWideStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acConfExecute(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    descric, vNCM, vBarras, vCSOSN, vCFOP  : String;
    vPrecoCompra, vICMS : Real;
    Procedure CalculaValores;
  end;

var
  fCadRapPro: TfCadRapPro;
  NovoCodigoPRO, NovoTipoPRO : String;
  conf_Novo : String;

implementation

uses uDM, uFuncao, StrUtils;

{$R *.dfm}

procedure TfCadRapPro.FormActivate(Sender: TObject);
begin
   Tdescricao.value   := descric;
   TNCM.value         := vNCM;
   TPrecoCompra.value := vPrecoCompra;
   Tbarras.value      := vBarras;
   Tcfop.value        := vCFOP;
   TIcms.value        := vICMS;

end;

procedure TfCadRapPro.FormCreate(Sender: TObject);
begin

  T.close;
  T.Open;
  T.Insert;

end;

procedure TfCadRapPro.FormKeyPress(Sender: TObject; var Key: Char);
begin
if Key = #13 then
 begin
  SelectNext(ActiveControl, True, True);
  Key := #0;
 end;
end;

procedure TfCadRapPro.acConfExecute(Sender: TObject);
var
  tt:string;
begin
 if rdTipo.ItemIndex = 0 then
  begin
   if Tncm.Text = '' then
    begin
     Application.MessageBox('NCM do Produto Não Preenchido!','Atenção');
     DBEdit13.SetFocus;
     Exit;
    end
  end;

 if TDESCRICAO.Value = '' then
  Application.MessageBox('Descrição do Produto Não Preenchida!','Atenção')
 else
  begin
   conf_novo := 'S';
   descric := TDescricao.Text;
   case rdTipo.ItemIndex of
     0 : tt := 'P';
     1 : tt := 'M';
   end;
   TTipo.text := tt;
   T.Post;
   T.ApplyUpdates;
   NovoCodigoPRO := TID.Text;
   NovoTipoPRO   := TTipo.Text;
   Close;
  end;

end;

procedure TfCadRapPro.CalculaValores;
begin

end;

procedure TfCadRapPro.DBEdit7Exit(Sender: TObject);
begin
 if TMARGEM.Value > 0 then
  begin
   Tvalor.Value := TPRECOCOMPRA.Value + (TPRECOCOMPRA.Value * (TMARGEM.Value / 100));
  end;
end;

procedure TfCadRapPro.DBEdit11Exit(Sender: TObject);
begin
 if TPRECOCOMPRA.Value > 0 then
  begin
   if Tvalor.Value > 0 then
      TMARGEM.Value := ((Tvalor.Value - TPRECOCOMPRA.Value) / TPRECOCOMPRA.Value) * 100
   else
      TMargem.Value := 0;
  end;
end;

procedure TfCadRapPro.acSairExecute(Sender: TObject);
begin
   T.Cancel;

   NovoTipoPRO   := '';
   NovoCodigoPRO := '0';
   conf_novo     := 'N';
   Close;
end;

procedure TfCadRapPro.DBEdit13Exit(Sender: TObject);
begin

 DM.qIBPT.Close;
 DM.qIBPT.ParamByName('ncm').Value := Tncm.Text;
 DM.qIBPT.Open;
 if DM.qIBPT.RecordCount = 0 then
 begin
   Application.MessageBox('NCM sem registro no IBPT, por Favor verifique!','Atenção');
   dbedit13.SetFocus;
   exit;
 end;

end;

procedure TfCadRapPro.TNewRecord(DataSet: TDataSet);
begin
  TId.Value        := InsereCodigo('produto', 'id');
  Ttipo.Value      := 'P';
  Tproduzido.Value := 'N';
  Tidfornecedor.Value := 0;
  TRoyalties.Value    := 0;
  Tunidade_nfe.Value  := 'UN';
  TIDORIGEM.Value     := 0;
  TIDTIPO_TRIBUTACAO.Value := 1;
  Tmultiplo.Value     := 1;
  Tcubagem.Value      := 0;
  TEmbalagem.Value    := 'N';
  TSincronizado.Value := 'N';
  Taltura.Value       := 0;
  Tlargura.Value      := 0;
  Tcomprimento.Value  := 0;
  TmaxDesconto.Value  := 0;
  Tmateria_prima.Value := 'N';

end;

end.
