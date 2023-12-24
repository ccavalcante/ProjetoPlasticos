unit UCadFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uCadPadrao, ZSqlUpdate, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ActnList, ImgList, Grids, DBGrids, ComCtrls,
  StdCtrls, ToolWin, jpeg, ExtCtrls, DBCtrls, Mask, System.Actions,
  System.ImageList, Vcl.Buttons;

type
  TfCadFornecedor = class(TfCadPadrao)
    TID: TIntegerField;
    TNOME: TWideStringField;
    TENDERECO: TWideStringField;
    TBAIRRO: TWideStringField;
    TCIDADE: TWideStringField;
    TCEP: TWideStringField;
    TUF: TWideStringField;
    Ttel1: TWideStringField;
    Ttel2: TWideStringField;
    Tfax: TWideStringField;
    TCONTATO: TWideStringField;
    TEMAIL: TWideStringField;
    TIE: TWideStringField;
    TCNPJ: TWideStringField;
    TCONTA: TWideStringField;
    TAGENCIA: TWideStringField;
    TBANCO: TWideStringField;
    TTIPOPAGTO: TIntegerField;
    TOBS: TWideStringField;
    TEX: TIntegerField;
    TSITE: TWideStringField;
    TTIPOPESSOA: TWideStringField;
    Tfantasia: TWideStringField;
    Tnum: TWideStringField;
    Tidcidade: TIntegerField;
    Tdia_venci: TIntegerField;
    ScrollBox1: TScrollBox;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit19: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit21: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit14: TDBEdit;
    rgTipo: TDBRadioGroup;
    DBEdit17: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label14: TLabel;
    Label10: TLabel;
    Label21: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label20: TLabel;
    Label16: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Tativo: TWideStringField;
    DBCheckBox2: TDBCheckBox;
    Tpais: TIntegerField;
    Label51: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Label24: TLabel;
    DBComboBox4: TDBComboBox;
    Label25: TLabel;
    DBLookupComboBox8: TDBLookupComboBox;
    Label26: TLabel;
    DBEdit22: TDBEdit;
    DBText1: TDBText;
    Tcontribuinte: TWideStringField;
    DBCheckBox3: TDBCheckBox;
    DBRadioGroup1: TDBRadioGroup;
    Ttipo: TWideStringField;
    Panel1: TPanel;
    Label44: TLabel;
    Label45: TLabel;
    cbCid2: TDBLookupComboBox;
    cbUf2: TComboBox;
    qCid2: TZQuery;
    qCid2id: TIntegerField;
    qCid2nome: TWideStringField;
    qCid2uf: TWideStringField;
    dCid2: TDataSource;
    qCon1: TZQuery;
    qCon1id: TIntegerField;
    qCon1descricao: TWideStringField;
    dCon1: TDataSource;
    Label34: TLabel;
    cbCond: TDBLookupComboBox;
    DBComboBox2: TDBComboBox;
    Label33: TLabel;
    Label6: TLabel;
    cbCusto: TDBLookupComboBox;
    Bevel1: TBevel;
    Tidcondfpto: TIntegerField;
    Tidcusto: TIntegerField;
    Tforma_pgto: TWideStringField;
    btnCpf: TSpeedButton;
    TEmUso: TWideStringField;
    procedure TNewRecord(DataSet: TDataSet);
    procedure acInserirExecute(Sender: TObject);
    procedure acEditarExecute(Sender: TObject);
    procedure TAfterScroll(DataSet: TDataSet);
    procedure rgTipoClick(Sender: TObject);
    procedure DBEdit14Exit(Sender: TObject);
    procedure acSalvarExecute(Sender: TObject);
    procedure TidcidadeValidate(Sender: TField);
    procedure DBLookupComboBox4CloseUp(Sender: TObject);
    procedure DBComboBox4Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbUf2Change(Sender: TObject);
    procedure acExcluirExecute(Sender: TObject);
    procedure acCancelarExecute(Sender: TObject);
    procedure acImprimirExecute(Sender: TObject);
    procedure cbCid2Click(Sender: TObject);
    procedure EdPesqChange(Sender: TObject);
    procedure btnCpfClick(Sender: TObject);
  private
    vTemCNPJ : boolean;
    procedure ativaQ;
  public
    { Public declarations }
  end;

var
  fCadFornecedor: TfCadFornecedor;

implementation

uses uDM, uFuncao, uImpFornec, uBuscaCNPJ, uBuscaCPF;

{$R *.dfm}

procedure TfCadFornecedor.TNewRecord(DataSet: TDataSet);
begin
  inherited;
  TID.Value         := InsereCodigo('fornecedor','ID' );
  TTipo.Text        := 'F';
  TTipoPessoa.Text  := 'J';
  TEx.Value         := 0;
  Tdia_venci.Value  := 10;
  TAtivo.Text       := 'S';
  Tpais.value       := 1058;
  Tidcusto.Value    := 0;
  Tidcondfpto.Value := 0;
  TEmUso.AsString   := 'N';

end;

procedure TfCadFornecedor.acExcluirExecute(Sender: TObject);
begin
  inherited;
  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;

end;

procedure TfCadFornecedor.acImprimirExecute(Sender: TObject);
begin
  Application.CreateForm(TfImpFornec, fImpFornec);
  vEnv_EmailDest := '';
  vEnv_Report    := fImpFornec.rpListaFor;
  fImpFornec.rpListaFor.PreviewModal;
  fImpFornec.Free;

end;

procedure TfCadFornecedor.acInserirExecute(Sender: TObject);
begin
  inherited;

  cbUf2.Enabled  := false;
  cbCid2.Enabled := false;

  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit16.SetFocus;
end;

procedure TfCadFornecedor.acCancelarExecute(Sender: TObject);
begin
  inherited;
  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;

end;

procedure TfCadFornecedor.acEditarExecute(Sender: TObject);
begin
  inherited;
  cbUf2.Enabled  := false;
  cbCid2.Enabled := false;

  DBEdit1.ReadOnly := True;
  DBEdit1.Color := $00CEFDFC;
  DBEdit16.SetFocus;
end;

procedure TfCadFornecedor.TAfterScroll(DataSet: TDataSet);
begin
   rgTipoClick(Application);
   DBComboBox4Change(Application);
end;

procedure TfCadFornecedor.TidcidadeValidate(Sender: TField);
begin
  inherited;
TCidade.Value := DM.qCidNome.Value;
end;

procedure TfCadFornecedor.rgTipoClick(Sender: TObject);
begin
 if rgtipo.ItemIndex  = 1 then
    begin
      Label22.caption := 'Apelido';
      Label3.caption  := 'Nome';
      Label15.Caption := 'CPF';
      Label14.Caption := 'RG';
      TCNPJ.EditMask  := '###.###.###-##;0;_';
      DBedit14.MaxLength := 11;
    end;
 if rgtipo.ItemIndex  = 0 then
    begin
      Label22.caption := 'Fantasia';
      Label3.caption  := 'Razão Social';
      Label15.Caption := 'CNPJ';
      Label14.Caption := 'IE';
      TCNPJ.EditMask  := '##.###.###/####-##;0;_';
      DBedit14.MaxLength := 14;
    end;
end;

procedure TfCadFornecedor.DBComboBox4Change(Sender: TObject);
begin
  inherited;

  DM.qCid.Close;
  DM.qCid.ParamByName('UF').Value := DBComboBox4.Text;
  DM.qCid.Open;

end;

procedure TfCadFornecedor.DBEdit14Exit(Sender: TObject);
var
  vNome, vTp : string;
begin
  vTemCNPJ := false;
  if TCNPJ.Text <> '' then
  begin
    if rgTipo.ItemIndex = 0 then
    begin
      vTp := 'CNPJ';
      if not CNPJ(TCNPJ.Text) then
      begin
        Application.MessageBox('CNPJ inválido!', 'Atenção');
        DBEdit14.SetFocus;
        exit;
      end;
    end
    else
      if rgTipo.ItemIndex = 1 then
      begin
        vTp := 'CPF';
        if not CPF(TCNPJ.Text) then
        begin
          Application.MessageBox('CPF inválido!', 'Atenção');
          DBEdit14.SetFocus;
          exit;
        end;
      end;

     vNome := QueryConsulta(' select nome from fornecedor where id <> '+ QuotedStr(TID.AsString) + ' and cnpj = ' + QuotedStr(TCNPJ.Text));
     if vNome <> '' then
     begin
       Application.MessageBox(pchar( vTp+' já cadastrado para o fornecedor ' + vNome + ' .Por favor, verifique!'), 'Atenção');
       DBEdit14.SetFocus;
       vTemCNPJ := true;
     end;
  end;
end;

procedure TfCadFornecedor.DBLookupComboBox4CloseUp(Sender: TObject);
begin
  inherited;
  if TPAIS.AsInteger <> 1058 then
  begin
    TUF.Value := 'EX' ;
    DBComboBox4.Enabled       := False;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := False;
  end
 else
  begin
    TUF.Value := dm.qParametroUF.Value ;
    DBComboBox4.Enabled       := True;
    DBComboBox4Change(Application);
    DBLookupComboBox8.Enabled := True;
  end;

end;

procedure TfCadFornecedor.EdPesqChange(Sender: TObject);
begin
    ativaQ;

end;

procedure TfCadFornecedor.FormCreate(Sender: TObject);
begin

  StatusTela(True);
  PageControl1.TabIndex := 0;

  cbUf2.ItemIndex := 0;
  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;
  cbUf2Change(Application);

  cbCid2.ListSource.DataSet.Last;
  cbCid2.ListSource.DataSet.First;
  cbcid2.KeyValue := qCid2Id.Value;

  dm.qCusto.close;
  dm.qCusto.open;
  cbCusto.ListSource.DataSet.Last;
  cbCusto.ListSource.DataSet.First;

  qCon1.close;
  qCon1.open;
  cbCond.ListSource.DataSet.Last;
  cbCond.ListSource.DataSet.First;

  ativaQ;

end;

procedure TfCadFornecedor.acSalvarExecute(Sender: TObject);
begin
  SelectNext(ActiveControl, True, True);

  if vTemCNPJ  then exit;

  if Tnome.Text = ''  then
     Tnome.text := Tfantasia.Text;

  if TDia_venci.AsInteger = 0 then
     Tdia_venci.Value := 10;

  inherited;

  cbUf2.Enabled  := true;
  cbCid2.Enabled := true;

end;

procedure TfCadFornecedor.cbCid2Click(Sender: TObject);
begin
  ativaQ;
end;

procedure TfCadFornecedor.cbUf2Change(Sender: TObject);
begin
  qCid2.Close;
  if cbUf2.ItemIndex = 0 then
   qCid2.ParamByName('es').Value := 'TT'
  else
   qCid2.ParamByName('es').Value := cbUF2.Text;
  qCid2.Open;
  cbcid2.KeyValue := qCid2Id.Value;

  ativaQ;

end;

procedure TfCadFornecedor.ativaQ;
begin

  T.close;
  T.sql.Clear;
  T.SQL.Add(' select * from fornecedor where ex = 0 and '+
            ' (nome like :pesq or id like :pesq or fantasia like :pesq) '+
            ' and ((:es = ''TT'') or (uf = :es)) '+
            ' and ((:cd = ''TT'') or (idcidade = :cd)) '+
            ' order by nome ' );

  T.ParamByName('pesq').Value := '%'+trim(edPesq.Text)+'%';

  if cbUF2.ItemIndex = 0 then
     T.ParamByName('es').Value := 'TT'
  else
     T.ParamByName('es').Value := trim(cbUF2.Text);

  if cbCid2.Text = ' Todos' then
     T.ParamByName('cd').Value := 'TT'
  else
     T.ParamByName('cd').Value := qCid2id.text;

  T.Open;

end;


procedure TfCadFornecedor.btnCpfClick(Sender: TObject);
var
  i : integer;
begin
  if not (T.state in [dsEdit, dsInsert]) then
       Exit;

    case rgTipo.ItemIndex of
      1: begin

           Application.CreateForm(TfBuscaCPF, fBuscaCPF);
           fBuscaCPF.EditCNPJ.EditMask   := '';
           fBuscaCPF.EditCNPJ.text       := retornaNumeros(trim(dbedit14.text));
           fBuscaCPF.EditCNPJ.EditMask   := '000.000.000-00;1;_';
           //fBuscaCPF.EditDtNasc.text     := trim(Tdtnasc.text);
           vTipoCli := 'F'; //fornecedor
           fBuscaCPF.ShowModal;
           if tipoDados = 'S'  then
           begin
              for I := 1 to 20 do
              begin
                 if dados[I,1] <> '' then
                    T.FieldByName(uppercase(Dados[I,1])).text := Dados[I, 2];
              end;
           end;
           fBuscaCPF.Free;
         end;

      0: begin
           Application.CreateForm(TfBuscaCNPJ, fBuscaCNPJ);
           fBuscaCNPJ.EditCNPJ.EditMask   := '';
           fBuscaCNPJ.EditCNPJ.text       := retornaNumeros(trim(dbedit14.text));
           fBuscaCNPJ.EditCNPJ.EditMask   := '00.000.000/0000-00;1;_';
           vTipoCli := 'F'; //fornecedor
           fBuscaCNPJ.ShowModal;
           if tipoDadosj = 'S'  then
           begin
              for I := 1 to 20 do
              begin
                 if dadosj[I,1] <> '' then
                    T.FieldByName(uppercase(Dadosj[I,1])).text := Dadosj[I, 2];
              end;
           end;
           fBuscaCNPJ.Free;

           DM.qCid.Close;
           DM.qCid.ParamByName('UF').Value := DBComboBox4.Text;
           DM.qCid.Open;
         end;
    end;
end;

end.
