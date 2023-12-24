unit uCadProcesso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, CheckDBGrid, XiButton,
  System.Actions, System.ImageList;

type
  TfCadProcesso = class(TfCadPadrao)
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    qProcItem: TZQuery;
    upProcItem: TZUpdateSQL;
    dProcItem: TDataSource;
    qProcItemId: TIntegerField;
    qProcItemIdProduto: TIntegerField;
    qProcItemIdProcesso: TIntegerField;
    Bevel1: TBevel;
    Label13: TLabel;
    CheckDBGrid5: TCheckDBGrid;
    TId: TIntegerField;
    btExcluirI: TXiButton;
    edCod: TEdit;
    EdNom: TEdit;
    gdPesq: TDBGrid;
    Label10: TLabel;
    cbUn: TComboBox;
    BtAddPi: TXiButton;
    qProcItemUnidade: TWideStringField;
    qProcItemdescricao: TWideStringField;
    TDescricao: TWideStringField;
    Tordem: TIntegerField;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    qT: TZQuery;
    IntegerField1: TIntegerField;
    WideStringField1: TWideStringField;
    IntegerField2: TIntegerField;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Tcusto: TFloatField;
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TNewRecord(DataSet: TDataSet);
    procedure EdPesqChange(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure acCancelarExecute(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure EdNomChange(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edCodKeyPress(Sender: TObject; var Key: Char);
    procedure btExcluirIClick(Sender: TObject);
    procedure gdPesqKeyPress(Sender: TObject; var Key: Char);
    procedure EdNomKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtAddPiClick(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure TBeforePost(DataSet: TDataSet);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }  
  end;

var
  fCadProcesso: TfCadProcesso;

implementation

uses uDM, uFuncao;

{$R *.dfm}

procedure TfCadProcesso.acInserirExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

  btExcluirI.Enabled := true;
  BtAddPi.Enabled    := true;

  edCod.ReadOnly        := False;
  edNom.ReadOnly        := False;
  edCod.Color           := clWhite;
  edNom.Color           := clWhite;


end;

procedure TfCadProcesso.acEditarExecute(Sender: TObject);
begin
  inherited;
  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit2.SetFocus;

  qProcItem.Edit;

  btExcluirI.Enabled := true;
  BtAddPi.Enabled    := true;

  edCod.ReadOnly        := False;
  edNom.ReadOnly        := False;
  edCod.Color           := clWhite;
  edNom.Color           := clWhite;


end;

procedure TfCadProcesso.acExcluirExecute(Sender: TObject);
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

procedure TfCadProcesso.FormCreate(Sender: TObject);
begin
  inherited;

  btExcluirI.Enabled := false;
  BtAddPi.Enabled    := false;
  edCod.ReadOnly     := true;
  edNom.ReadOnly     := true;
  EdCod.Color        := StringToColor('$00CEFDFC');
  edNom.Color        := StringToColor('$00CEFDFC');

end;

procedure TfCadProcesso.acSalvarExecute(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);

  if  (Tdescricao.Text = '' ) then begin
     Application.MessageBox('Descrição não preenchida.','Atenção');
     DBEdit2.SetFocus;
     exit;
  end;

  dm.qPesq.close;
  dm.qPesq.SQL.Clear;
  dm.qPesq.SQL.Add('select * from processo where descricao = ' + quotedstr(trim(Tdescricao.Text)) );
  dm.qPesq.Open;
  if T.State in [dsInsert] then
  begin
     if dm.qPesq.RecordCount >= 1 then
     begin
       Application.MessageBox('Processo ja Cadastrado, Por Favor Tente Novamente','Atenção');
       dbedit2.SetFocus;
       exit;
     end;
  end;  


  inherited;

  if qProcItem.State in [dsInsert, dsEdit] then
    qProcItem.Post;

  btExcluirI.Enabled := false;
  BtAddPi.Enabled    := false;

  edCod.ReadOnly     := true;
  edNom.ReadOnly     := true;
  EdCod.Color        := StringToColor('$00CEFDFC');
  edNom.Color        := StringToColor('$00CEFDFC');

end;

procedure TfCadProcesso.TNewRecord(DataSet: TDataSet);
begin
  inherited;

  TId.Value    := InsereCodigo('processo', 'id');
  TOrdem.Value := 0;

  qProcItem.Close;
  qProcItem.ParamByName('IDp').Value := 0;
  qProcItem.Open;
  qProcItem.Insert;

end;

procedure TfCadProcesso.EdPesqChange(Sender: TObject);
begin
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';

  T.Open;
end;

procedure TfCadProcesso.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
//  inherited;

end;

procedure TfCadProcesso.DBGrid1TitleClick(Column: TColumn);
begin
  inherited;
  T.Close;
  T.ParamByName('pesq').Value := '%' + trim(edPesq.Text) + '%';
 
  T.Open;   
end;

procedure TfCadProcesso.acCancelarExecute(Sender: TObject);
begin
  inherited;  
  btExcluirI.Enabled := false;
end;

procedure TfCadProcesso.TAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if (T.State = dsBrowse)  then
  begin
    qProcItem.Close;
    qProcItem.ParamByName('IDp').value := TId.value;
    qProcItem.Open;
  end;
end;

procedure TfCadProcesso.TBeforePost(DataSet: TDataSet);
begin

  qT.Close;
  qT.ParamByName('od').Value := Tordem.AsInteger;
  qT.ParamByName('dd').Value := TId.AsInteger;
  qT.Open;
  if qT.IsEmpty = false then
    Tordem.AsInteger := 0;

end;

procedure TfCadProcesso.EdNomChange(Sender: TObject);
begin
  if (EdNom.Text <> '')  then
  begin

    gdPesq.left := edCod.Left;
    gdPesq.Top  := edCod.Top + edCod.Height + 2;

    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' select id, descricao nome, ft_conv_un, ft_conv_2un from produto where tipo = ''M'' and produto.ativo = ''S'' and ' +
                     ' descricao like '+QuotedStr('%'+EdNom.Text+'%'));
    DM.qPesq.Open;

    if DM.qPesq.IsEmpty then
      gdPesq.Visible := False
    else
     gdPesq.Visible := True;
  end
  else
     gdPesq.Visible := False;

end;

procedure TfCadProcesso.edCodExit(Sender: TObject);
begin
  inherited;
  cbUn.Items.Clear;
  if edCod.Text <> '' then begin
    DM.qPesq.Close;
    DM.qPesq.SQL.Clear;
    DM.qPesq.SQL.Add(' select id, descricao nome, ft_conv_un, ft_conv_2un from produto where tipo = ''M'' and produto.ativo = ''S'' and ' +
                     ' id =  '+ edCod.Text );
    DM.qPesq.Open;

    if not Dm.qPesq.IsEmpty then begin
       EdNom.Text := DM.qPesq.FieldByName('nome').Value;
       gdPesq.Visible := False;
       cbUn.Items.Add(DM.qPesq.FieldByName('ft_conv_un').text);
       cbUn.Items.Add(DM.qPesq.FieldByName('ft_conv_2un').text);
       cbUn.Update;
       cbUn.ItemIndex := 0;

       cbUn.SetFocus;
    end;
  end;
  
end;

procedure TfCadProcesso.edCodKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  somente_numero(key);
end;

procedure TfCadProcesso.btExcluirIClick(Sender: TObject);
begin
  if qProcItem.IsEmpty then
     Exit;

  if Application.MessageBox('Deseja realmente Excluir esta Matéria-Prima?','Confirmação', mb_yesno + mb_defbutton2 ) = idNo then
     Exit;
  qProcItem.Delete;
  qProcItem.ApplyUpdates;

end;

procedure TfCadProcesso.gdPesqKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
  begin
    Key := #0;

    EdCod.Text := DM.qPesq.FieldByName('id').Value;
    EdCodExit(Application );
    gdPesq.Visible := False;
  end;
end;

procedure TfCadProcesso.EdNomKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = vk_down then
     if gdPesq.Visible then
        gdPesq.SetFocus;

end;

procedure TfCadProcesso.BtAddPiClick(Sender: TObject);
begin

    if trim(edCod.Text) = '' then begin
       Application.MessageBox('Informe a Matéria-Prima!','Atenção');
       edCod.SetFocus;
       exit;
    end;

    if trim(edNom.Text) = '' then begin
       Application.MessageBox('Informe a Matéria-Prima!','Atenção');
       edNom.SetFocus;
       exit;
    end;

    if trim(cbUn.Text) = '' then begin
       Application.MessageBox('Informe a Unidade!','Atenção');
       cbUn.SetFocus;
       exit;
    end;

    //inserir
    qProcItem.Insert;
    qProcItemId.Value         := InsereCodigo('processo_I','id');
    qProcItemIdProcesso.Value := TId.value;
    qProcItemIdProduto.Value  := StrToInt(EdCod.Text);
    qProcItemUnidade.Value    := trim(cbUn.text);
    qProcItem.post;

    qProcItem.Close;
    qProcItem.Params[0].Text := TId.Text;
    qProcItem.Open;

    EdCod.Clear;
    EdNom.Clear;
    cbUn.Items.Clear;
    CheckDBGrid5.SetFocus;

end;

end.
