unit uCADClasF;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao,  DB,  ActnList, ImgList,
  Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls,
  Mask,  Buttons, CheckDBGrid, System.Actions, System.ImageList,
  ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset, ZDataset, Vcl.Samples.Gauges;

type
  TfCADClasF = class(TfCadPadrao)
    dUF: TDataSource;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    DBNavigator1: TDBNavigator;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Bevel1: TBevel;
    UF: TZQuery;
    UFID: TIntegerField;
    UFIDCF: TIntegerField;
    UFUF: TWideStringField;
    UFIDSTRIB: TIntegerField;
    UFCFOP: TWideStringField;
    UFCSOSN: TWideStringField;
    UFCSOSN2: TWideStringField;
    UFPIS: TWideStringField;
    UFPPIS: TFloatField;
    UFCONFINS: TWideStringField;
    UFPCOFINS: TFloatField;
    UFREDUCAO: TFloatField;
    UFCODIPI: TWideStringField;
    UFIPI: TFloatField;
    UFMVA: TFloatField;
    UFICMS_UF: TFloatField;
    TID: TIntegerField;
    TNCM: TWideStringField;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    qPro: TZQuery;
    dPro: TDataSource;
    Gauge1: TGauge;
    uUF: TZUpdateSQL;
    UFMARGEMST: TFloatField;
    UFcsosn_cpf: TWideStringField;
    qProID: TIntegerField;
    qProIDGRUPO: TIntegerField;
    qProNOME: TWideStringField;
    qProIDSITTRIB: TIntegerField;
    qProIDNOPER: TIntegerField;
    qProCF: TWideStringField;
    qProICMS: TFloatField;
    qProIPI: TFloatField;
    qProIDNOPER2: TIntegerField;
    qProPIS: TWideStringField;
    qProCONFINS: TWideStringField;
    qProPPIS: TFloatField;
    qProPCOFINS: TFloatField;
    qProMVA: TFloatField;
    qProCODIPI: TWideStringField;
    qProcest: TWideStringField;
    procedure acSalvarExecute(Sender: TObject);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure UFNewRecord(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure UFBeforeInsert(DataSet: TDataSet);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure TNewRecord(DataSet: TDataSet);
    procedure ToolButton4Click(Sender: TObject);
    procedure UFAfterPost(DataSet: TDataSet);
    procedure DBEdit3Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCADClasF: TfCADClasF;
  estado : Array[1..27] of String=( 'AC','AL','AM','AP','BA','CE','DF',
                                    'ES','GO','MA','MG','MS','MT','PA',
                                    'PB','PE','PI','PR','RJ','RN','RO',
                                    'RR','RS','SC','SE','SP','TO'     );

implementation

{$R *.dfm}

uses uDM;

procedure TfCADClasF.acSalvarExecute(Sender: TObject);
begin

 SelectNext(ActiveControl, True, True);

 if TNCM.Value = '' then
 begin
  Application.MessageBox('NCM Não Preenchido!','Atenção');
  DBEdit3.SetFocus;
 end
 else
   inherited;

end;

procedure TfCADClasF.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit3.SetFocus;
end;

procedure TfCADClasF.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit3.SetFocus;
end;

procedure TfCADClasF.EdPesqChange(Sender: TObject);
begin
  inherited;
  T.Close;
  T.SQL.Clear;
  T.SQL.Add('select * from clasf WHERE  '+
                ' (NCM LIKE :pesq ) '+
                ' order by NCM ');
  T.ParamByName('pesq').Value := '%'+trim(edPesq.Text)+'%';
  T.Open;
end;

procedure TfCADClasF.UFNewRecord(DataSet: TDataSet);
begin
  UFID.value    := InsereCodigo('clasf_it', 'ID' );
  UFIDCF.Value  := TID.Value;

end;

procedure TfCADClasF.BitBtn1Click(Sender: TObject);
var
  I      : integer;

begin
  inherited;

  for I := 1 to 27 do begin
     if not (UF.Locate('UF', estado[I], [])) then
     begin
        UF.Insert;
        UFUF.Value := estado[I];
        UF.Post;
     end;
  end;
  Uf.Close;
  UF.Open;



end;

procedure TfCADClasF.FormCreate(Sender: TObject);
begin
 inherited;
 UF.Open;


end;

procedure TfCADClasF.TAfterScroll(DataSet: TDataSet);
begin
  uf.Close;
  uf.ParamByName('id').Value := TID.Value;
  uf.Open;

end;

procedure TfCADClasF.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.value            := InsereCodigo('clasf', 'ID' );

end;

procedure TfCADClasF.ToolButton4Click(Sender: TObject);
var
  I      : integer;
begin
  if Application.MessageBox('Deseja Atualizar conforme o cadastro de Produtos?','Atenção', mb_yesno) = idNo then
     Exit;

  qPro.Close;
  qPro.Open;
  qPro.FetchAll;
  gauge1.Visible   := true;
  Gauge1.MaxValue  := qPro.RecordCount;
  while qPro.Eof = false do
  begin
    Gauge1.Progress  := qPro.RecNo;

    if not (T.Locate('NCM', qProNCM.Value, [])) then
    begin
      T.Insert;
      TNCM.Value := qProNCM.Value;
      T.Post;

      for I := 1 to 27 do
      begin
        if not(UF.Locate('UF', estado[I], [])) then
        begin
          UF.Insert;
          UFUF.Value := estado[I];
          if estado[I] = 'SP' then
          begin
             UFIDSTRIB.Value  := qProIDSTRIB.Value;
             UFCFOP.Value     := qProcfop.Value;
             UFCSOSN.Value    := qProcsosn.Value;
             UFCSOSN2.Value   := qProCSOSN2.Value;
             UFPIS.Value      := qProPIS.Value;
             UFPPIS.Value     := qPropPIS.Value;
             UFCONFINS.Value  := qProCOFINS.Value;
             UFPCOFINS.Value  := qPropCOFINS.Value;
             UFMARGEMST.Value := qProMARGEMST.Value;
             UFREDUCAO.Value  := qProREDUCAO.Value;
             UFCODIPI.Value   := qProCODIPI.Value;
             UFIPI.Value      := qPropIPI.Value;
             UFMVA.Value      := qProMVA.Value;
             UFICMS_UF.Value  := qProIcms.Value;
          end;
          UF.Post;
        end;
      end;
      UF.Close;
      UF.Open;

    end;
    qPro.Next;
  end;
  gauge1.Visible   := false;



end;

procedure TfCADClasF.UFAfterPost(DataSet: TDataSet);
begin
  inherited;
  uf.ApplyUpdates;

end;

procedure TfCADClasF.UFBeforeInsert(DataSet: TDataSet);
begin
  inherited;
 if T.State in [dsinsert] then
  begin
   T.Post;
   T.Edit;
  end;
end;

procedure TfCADClasF.DBEdit3Exit(Sender: TObject);
begin

  if not (T.State in [dsEdit, dsInsert]) then
     Exit;

  if dbedit3.Text =  '' then
     Exit;

  dm.qIBPT.close;
  dm.qIBPT.ParamByName('ncm').Value := dbedit3.Text;
  dm.qIBPT.Open;
  if dm.qIBPT.IsEmpty  then
  begin
    Application.MessageBox('NCM não localizado no cadastro do IBPT, verifique!','Atenção');
    TNCM.Clear;
    Dbedit3.Clear;
    DBEdit3.SetFocus;
  end;


end;

procedure TfCADClasF.DBGrid1TitleClick(Column: TColumn);
begin
  T.Close;
  T.SQL.Clear;
  T.SQL.Add('select * from clasf WHERE  '+
                ' (NCM LIKE :pesq ) '+
                ' order by '+Column.FieldName);
  T.ParamByName('pesq').Value := '%'+trim(edPesq.Text)+'%';
  T.Open;

  inherited;

end;

end.
