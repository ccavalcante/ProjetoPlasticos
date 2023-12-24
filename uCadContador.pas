unit uCadContador;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, jpeg, ExtCtrls, StdCtrls, Mask, DBCtrls, DB,
    ActnList, System.Actions, ZSqlUpdate, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  TfCadContador = class(TForm)
    DS: TDataSource;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    Label26: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    XiButton5: TXiButton;
    ActionList1: TActionList;
    acConf: TAction;
    Label1: TLabel;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    dCid: TDataSource;
    Label12: TLabel;
    acSair: TAction;
    Image3: TImage;
    DBEdit7: TDBEdit;
    Label13: TLabel;
    Label6: TLabel;
    XiButton1: TXiButton;
    Label14: TLabel;
    DBEdit5: TDBEdit;
    qCid: TZQuery;
    T: TZQuery;
    U: TZUpdateSQL;
    qCidid: TIntegerField;
    qCidNome: TWideStringField;
    qCidUF: TWideStringField;
    TId: TIntegerField;
    TNOME: TWideStringField;
    TCPF: TWideStringField;
    TCNPJ: TWideStringField;
    TCRC: TWideStringField;
    TCEP: TWideStringField;
    TENDERECO: TWideStringField;
    TNUM: TWideStringField;
    TCOMPL: TWideStringField;
    TBAIRRO: TWideStringField;
    TFONE: TWideStringField;
    TFAX: TWideStringField;
    TEMAIL: TWideStringField;
    TIDCIDADE: TWideStringField;
    TCIDADE: TWideStringField;
    TUF: TWideStringField;
    procedure T2NewRecord(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure acConfExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBComboBox1Exit(Sender: TObject);
    procedure acSairExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadContador: TfCadContador;
  nvEmail : String;
implementation

uses uDM;

{$R *.dfm}

procedure TfCadContador.T2NewRecord(DataSet: TDataSet);
begin
   TCIDADE.Value := DM.qUserCidade.Value;
   TUF.Value     := DM.qUserUF.Value;

end;

procedure TfCadContador.TNewRecord(DataSet: TDataSet);
begin
  Tid.Value := InsereCodigo('contador', 'id')
end;

procedure TfCadContador.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if (Key = #13) then
   begin
      SelectNext(ActiveControl, True, True);
      Key := #0;
   end;
end;

procedure TfCadContador.acConfExecute(Sender: TObject);
begin

   T.Post;
   T.ApplyUpdates;
   nvEmail := trim(Temail.Value);
   Close;

end;

procedure TfCadContador.FormCreate(Sender: TObject);
begin

   if trim(DBComboBox1.Text) <> '' then
   begin
      qCid.Close;
      qCid.ParamByName('uf').Value := DBComboBox1.Text;
      qCid.Open;
      qCid.FetchAll;
   end;
   T.Close;
   T.Open;
   if T.IsEmpty then
      T.Insert
   else
      T.Edit;
end;

procedure TfCadContador.acSairExecute(Sender: TObject);
begin
   nvEmail := '';
   Close;
end;

procedure TfCadContador.DBComboBox1Change(Sender: TObject);
begin
   qCid.Close;
   qCid.ParamByName('uf').Value := DBComboBox1.Text;
   qCid.Open;
end;

procedure TfCadContador.DBLookupComboBox2Exit(Sender: TObject);
begin
   TCIDADE.Text := DBLookupComboBox2.Text;
end;

procedure TfCadContador.FormActivate(Sender: TObject);
begin
   dbedit2.SetFocus;
end;

procedure TfCadContador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   qCid.Close;
end;

procedure TfCadContador.DBComboBox1Exit(Sender: TObject);
begin
   qCid.Close;
   qCid.ParamByName('uf').Value := DBComboBox1.Text;
   qCid.Open;

end;

end.
