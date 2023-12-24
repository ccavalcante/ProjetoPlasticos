unit uCADTransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao,  DB,  ActnList, ImgList,
  Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls,
  Mask, CheckDBGrid, System.Actions, System.ImageList, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfCADTransportadora = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    lIERG: TLabel;
    lCPFCNPJ: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBComboBox1: TDBComboBox;
    TID: TIntegerField;
    Label7: TLabel;
    DBComboBox2: TDBComboBox;
    TNOME: TWideStringField;
    TPLACA: TWideStringField;
    TUF_PLACA: TWideStringField;
    TCNPJ: TWideStringField;
    TIE: TWideStringField;
    TENDERECO: TWideStringField;
    TCIDADE: TWideStringField;
    TUF: TWideStringField;
    TBAIRRO: TWideStringField;
    TIDUSU: TIntegerField;
    Ttelefone: TWideStringField;
    Tsite: TWideStringField;
    Tcep: TWideStringField;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label11: TLabel;
    DBEdit7: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Temail: TWideStringField;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    rgTipo: TDBRadioGroup;
    Ttppessoa: TWideStringField;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    DBEdit12: TDBEdit;
    Ttel2: TWideStringField;
    Tcontato: TWideStringField;
    Tobs: TWideMemoField;
    Label18: TLabel;
    DBMemo1: TDBMemo;
    Tmotorista: TWideStringField;
    Tcpf_motorista: TWideStringField;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    Trenavan: TWideStringField;
    Tcap_kg: TIntegerField;
    Tcap_mt: TIntegerField;
    Ttara: TIntegerField;
    Label17: TLabel;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label19: TLabel;
    DBEdit19: TDBEdit;
    Label20: TLabel;
    DBEdit20: TDBEdit;
    Label21: TLabel;
    Label22: TLabel;
    cbCusto: TDBLookupComboBox;
    Label34: TLabel;
    cbCond: TDBLookupComboBox;
    Label33: TLabel;
    DBComboBox3: TDBComboBox;
    Bevel1: TBevel;
    Tidcondfpto: TIntegerField;
    Tidcusto: TIntegerField;
    Tforma_pgto: TWideStringField;
    Tex: TIntegerField;
    qCon: TZQuery;
    qConid: TIntegerField;
    qCondescricao: TWideStringField;
    dCon: TDataSource;
    TEmUso: TWideStringField;
    procedure TNewRecord(DataSet: TDataSet);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCADTransportadora: TfCADTransportadora;

implementation

{$R *.dfm}

uses uDM;

procedure TfCADTransportadora.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
  rgTipoClick(Application);
end;

procedure TfCADTransportadora.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.Value       := InsereCodigo('TRANSPORTADORA', 'id');
  TUF.Value       := 'SP';
  TUF_PLACA.Value := 'SP';
  Ttppessoa.Value := 'J';
  TEmUso.AsString := 'N';
end;

procedure TfCADTransportadora.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADTransportadora.FormCreate(Sender: TObject);
begin
  inherited;
  rgTipoClick(Application);

  qCon.close;
  qCon.open;

  dm.qCusto.close;
  dm.qCusto.open;
end;

procedure TfCADTransportadora.rgTipoClick(Sender: TObject);
begin
 if rgtipo.ItemIndex  = 1 then
    begin
      lCPFCNPJ.Caption   := 'CPF';
      lIERG.Caption      := 'RG';
      TCNPJ.EditMask     := '###.###.###-##;0;_';
      DBedit14.MaxLength := 11;
    end;
 if rgtipo.ItemIndex  = 0 then
    begin
      lCPFCNPJ.Caption   := 'CNPJ';
      lIERG.Caption      := 'IE';
      TCNPJ.EditMask     := '##.###.###/####-##;0;_';
      DBedit14.MaxLength := 14;
    end;

end;

procedure TfCADTransportadora.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

end.
