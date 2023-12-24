unit uCADAliqInter;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao,  DB,  ActnList, ImgList,
  Grids, DBGrids, ComCtrls, StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls,
  Mask,  CheckDBGrid, System.Actions, System.ImageList, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfCADAliqInter = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    lCPFCNPJ: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit14: TDBEdit;
    dsTipoTribu: TDataSource;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    Label6: TLabel;
    cbTipoTrib: TComboBox;
    qTipoTribu: TZQuery;
    qTipoTribuID: TIntegerField;
    qTipoTribuTIPO: TWideStringField;
    TID: TIntegerField;
    TUF: TWideStringField;
    TALIQINTERESTADUAL: TFloatField;
    TALIQDESTINO: TFloatField;
    TALIQNT003: TFloatField;
    TFCP: TFloatField;
    TIDUSU: TIntegerField;
    TIDTIPO_TRIBUTACAO: TIntegerField;
    Ttipo: TWideStringField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbTipoTribExit(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure acExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCADAliqInter: TfCADAliqInter;

implementation

uses uDM;

{$R *.dfm}

procedure TfCADAliqInter.acExcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Excluir?','Atenção', mb_yesno+mb_defbutton2) = idNo then
     Exit;

  T.delete;
  T.ApplyUpdates;
  sleep(200);

  T.Close;
  T.Open;
  sleep(200);

end;

procedure TfCADAliqInter.acInserirExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADAliqInter.acEditarExecute(Sender: TObject);
begin
  inherited;
 DBEdit1.Enabled := false;
 DBEdit1.Color := $00CEFDFC;
 DBEdit2.SetFocus;
end;

procedure TfCADAliqInter.EdPesqChange(Sender: TObject);
begin
  inherited;
  T.Close;
  T.SQL.Clear;
  T.SQL.Add('select a.*, t.tipo from aliq_interestadual a ' +
                  ' inner join tipo_tributacao t on (a.idtipo_tributacao = t.id) ' +
                  ' WHERE '+
                  ' (a.UF LIKE '+QuotedStr('%'+EdPesq.Text+'%')+ ') '+
                  ' order by a.UF ');
  T.Open;
end;

procedure TfCADAliqInter.acSalvarExecute(Sender: TObject);
begin
 if TUF.Value = '' then
 begin
  Application.MessageBox('UF Não Preenchido!','Atenção');
  DBEdit2.SetFocus;
 end
 else
   if TALIQINTERESTADUAL.Value = 0 then
   begin
    Application.MessageBox('Aliq. InterEstadual Não Preenchida!','Atenção');
    DBEdit14.SetFocus;
   end
   else
     if TALIQDESTINO.Value = 0 then
     begin
       Application.MessageBox('Aliq. UF Destino Não Preenchida!','Atenção');
       DBEdit8.SetFocus;
     end
     else
       inherited;  
end;

procedure TfCADAliqInter.FormShow(Sender: TObject);
begin
  inherited;
  qTipoTribu.Open;
  cbTipoTrib.Enabled := true;
end;

procedure TfCADAliqInter.TNewRecord(DataSet: TDataSet);
begin
  TID.Value := InsereCodigo('NOPER', 'id');

end;

procedure TfCADAliqInter.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qTipoTribu.Close;
end;

procedure TfCADAliqInter.cbTipoTribExit(Sender: TObject);
begin
  inherited;
  if cbTipoTrib.ItemIndex >0 then
  begin
    T.Close;
    T.SQL.Clear;
    T.SQL.Add(' select a.*, t.tipo from aliq_interestadual a ' +
                ' inner join tipo_tributacao t on (a.idtipo_tributacao = t.id) ' +
                ' WHERE (T.TIPO = '+QuotedStr(cbTipoTrib.Text )+ ') '+
                ' order by a.UF ' );
    T.Open;  
  end;
end;

end.
