unit uFinalidadeNotaDev;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ActnList, XiButton, StdCtrls, DBCtrls,
  DB,  Grids, DBGrids, CheckDBGrid, Mask, System.Actions, ZSqlUpdate,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfFinalidadeNotaDev = class(TForm)
    Image2: TImage;
    ActionList1: TActionList;
    XiButton8: TXiButton;
    XiButton3: TXiButton;
    acSair: TAction;
    acConf: TAction;
    Bevel2: TBevel;
    lCli: TLabel;
    lnf: TLabel;
    XiButton1: TXiButton;
    acNovo: TAction;
    acExcluir: TAction;
    acLimpar: TAction;
    XiButton2: TXiButton;
    XiButton4: TXiButton;
    CheckDBGrid1: TCheckDBGrid;
    D: TDataSource;
    dNF_Final: TDataSource;
    Label4: TLabel;
    rdTipo: TRadioGroup;
    gbChave: TGroupBox;
    gbNF: TGroupBox;
    DBEdit24: TDBEdit;
    Label26: TLabel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBComboBox1: TDBComboBox;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Q: TZQuery;
    uQ: TZUpdateSQL;
    QID: TIntegerField;
    QIDNF: TIntegerField;
    QTPNF: TWideStringField;
    QCHAVE: TWideStringField;
    QUF: TWideStringField;
    QEMISSAO: TWideStringField;
    QCNPJ: TWideStringField;
    QMODELO: TWideStringField;
    QSERIE: TWideStringField;
    QNUMERO: TWideStringField;
    qNF_Final: TZQuery;
    qNF_FinalID: TIntegerField;
    qNF_FinalIDNF: TIntegerField;
    qNF_FinalTPNF: TWideStringField;
    qNF_FinalCHAVE: TWideStringField;
    qNF_FinalUF: TWideStringField;
    qNF_FinalEMISSAO: TWideStringField;
    qNF_FinalCNPJ: TWideStringField;
    qNF_FinalMODELO: TWideStringField;
    qNF_FinalSERIE: TWideStringField;
    qNF_FinalNUMERO: TWideStringField;
    Label8: TLabel;
    procedure acSairExecute(Sender: TObject);
    procedure acConfExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acNovoExecute(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acLimparExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure rdTipoClick(Sender: TObject);
    procedure QNewRecord(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure QAfterPost(DataSet: TDataSet);
    procedure QAfterDelete(DataSet: TDataSet);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit5Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFinalidadeNotaDev: TfFinalidadeNotaDev;
  CodNota : integer;

  
implementation

uses uNF, uDM, uFuncao;

{$R *.dfm}

procedure TfFinalidadeNotaDev.acSairExecute(Sender: TObject);
begin
  if Q.State in [dsEdit, dsInsert] then
     Q.Cancel;
  close;

end;

procedure TfFinalidadeNotaDev.acConfExecute(Sender: TObject);
begin
  if Q.State in [dsEdit, dsInsert] then
     Q.Cancel;

  close;
end;

procedure TfFinalidadeNotaDev.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action := caFree;
 fFinalidadeNotaDev := nil;

end;


procedure TfFinalidadeNotaDev.FormCreate(Sender: TObject);
begin
  label8.caption := '';
end;

procedure TfFinalidadeNotaDev.acNovoExecute(Sender: TObject);
var
  val:string;
begin

   SelectNext(ActiveControl, false, false);

   case rdTipo.ItemIndex of
    0,1: begin
          if (trim(dbedit5.Text) <> '') and (length(trim(dbedit5.Text)) < 44) or
             (trim(dbedit5.Text) = '') then
          begin
               Application.MessageBox('Chave de Acesso Incorreta!','Atenção');
               label8.caption := '';
               qChave.Clear;
               dbedit5.clear;
               DBedit5.SetFocus;
               Exit;
          end;
       end;
    2: begin
          val := '';
          if trim(Qserie.text)   = '' then val := val + 'Série'   + #13+#10;
          if trim(QNumero.text)  = '' then val := val + 'Número'  + #13+#10;
          if trim(QModelo.text)  = '' then val := val + 'Modelo'  + #13+#10;
          if trim(QEmissao.text) = '' then val := val + 'Emissão' + #13+#10;
          if trim(QUF.text)      = '' then val := val + 'UF'      + #13+#10;
          if trim(QCNPJ.text)    = '' then val := val + 'CNPJ'    + #13+#10;

          if  val <> '' then
          begin
             Application.MessageBox( pchar('Compos Obriogatórios Não Preenchido!' +
                                     #13+#10 + val ) , 'Atenção');
             if      trim(Qserie.text)   = '' then dbedit24.setfocus
             else if trim(QNumero.text)  = '' then dbedit1.setfocus
             else if trim(QModelo.text)  = '' then dbedit2.setfocus
             else if trim(QEmissao.text) = '' then dbedit3.setfocus
             else if trim(QUF.text)      = '' then dbCombobox1.setfocus
             else if trim(QCNPJ.text)    = '' then dbedit4.setfocus;
             Exit;
          end;
       end;
  end;

  case rdTipo.ItemIndex of
   0: QTpnf.Value := 'NFE';
   1: QTpnf.Value := 'CTE';
   2: QTpnf.Value := 'NF';
  end;

  Q.Post;
  sleep(100);

  Q.Insert;
  rdTipo.ItemIndex := 0;
  rdTipoClick(Application);


end;

procedure TfFinalidadeNotaDev.acExcluirExecute(Sender: TObject);
begin
  if Q.State in [dsEdit, dsInsert] then
     Q.Cancel;

  Q.Delete;


end;

procedure TfFinalidadeNotaDev.acLimparExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir todas a notas relacionadas?','Atenção',
                            mb_yesno )= Idno then
  exit;

  if Q.State in [dsEdit, dsInsert] then
     Q.Cancel;

  Q.First;
  while Q.Eof = false do
  begin
     Q.Delete;
     Q.Next;
  end;
  sleep(100);

  Q.Close;
  Q.ParamByName('ID').Value := CodNota;
  Q.Open;
  Q.FetchAll;

end;

procedure TfFinalidadeNotaDev.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if (Key = #13)  then
  begin
   SelectNext(ActiveControl, True, True);
   Key := #0;
  end;

end;

procedure TfFinalidadeNotaDev.rdTipoClick(Sender: TObject);
begin

  case rdTipo.ItemIndex of
    0: begin
         gbChave.Visible := true;
         gbNf.Visible    := False;
         dbedit5.SetFocus;
       end;
    1: begin
         gbChave.Visible := true;
         gbNf.Visible    := False;
         dbedit5.SetFocus;
       end;
    2: begin
         gbChave.Visible := false;
         gbNf.Visible    := true;
         dbedit24.SetFocus;
       end;
  end;

  if Q.Active = false then
     Exit;

  if not (Q.State in [dsEdit, dsInsert]) then
     Exit;

  QTPNF.Value    := '';
  QChave.Value   := '';
  Qserie.Value   := '';
  Qnumero.Value  := '';
  QModelo.Value  := '';
  QUF.Value      := '';
  QCNPJ.Value    := '';
  Qemissao.Value := '';


end;

procedure TfFinalidadeNotaDev.QNewRecord(DataSet: TDataSet);
begin
  Qid.Value     := InsereCodigo('NF_FINAL', 'id');
  QIDnf.value   := CodNota;

end;

procedure TfFinalidadeNotaDev.FormActivate(Sender: TObject);
begin
   qNF_Final.Close;
   qNF_Final.ParamByName('ID').Value := CodNota;
   qNF_Final.Open;

   Q.Close;
   Q.ParamByName('ID').Value := CodNota;
   Q.Open;
   Q.FetchAll;

   rdTipoClick(Application);

   Q.Append;
   Dbedit5.SetFocus;

end;

procedure TfFinalidadeNotaDev.QAfterPost(DataSet: TDataSet);
begin
  qNF_Final.Close;
  qNF_Final.ParamByName('ID').Value := CodNota;
  qNF_Final.Open;
  qNF_Final.FetchAll;


end;

procedure TfFinalidadeNotaDev.QAfterDelete(DataSet: TDataSet);
begin

  qNF_Final.Close;
  qNF_Final.ParamByName('ID').Value := CodNota;
  qNF_Final.Open;
  qNF_Final.FetchAll;


end;

procedure TfFinalidadeNotaDev.DBEdit3Exit(Sender: TObject);
begin
  if trim(dbedit3.Text) = '/' then
     Exit; 

  if (strtoint(copy(dbedit3.text,1,2 )) < 1) or (strtoint(copy(dbedit3.text,1,2 )) > 12 ) then
  begin
     Application.MessageBox('Mês Incorreto, Verifique!','Atenção');
     exit;
  end;

  if (strtoint(copy(dbedit3.text,4,2 )) > strtoint(formatdatetime('yy', date)) ) or
     (strtoint(copy(dbedit3.text,4,2 )) < (strtoint(formatdatetime('yy', date))-2) ) then
     begin
     Application.MessageBox('Ano Incorreto, Verifique!','Atenção');
     exit;
  end;

end;

procedure TfFinalidadeNotaDev.DBEdit5Change(Sender: TObject);
var
  qt:integer;
begin
   qt := length(dbedit5.text);
   label8.caption := 'Caracteres: ' + inttostr(qt);
   if qt = 44 then
      label8.font.Color := clBlue
   else
   if qt < 44 then
      label8.font.Color := clRed
   else
   if qt = 0 then
      label8.caption := '';
   label8.Refresh;

end;

procedure TfFinalidadeNotaDev.DBEdit5Exit(Sender: TObject);
begin
  QChave.value := trim(retornaNumeros(dbedit5.Text));
  sleep(10);

end;

end.
