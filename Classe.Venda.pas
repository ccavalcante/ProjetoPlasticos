unit Classe.Venda;

interface

  type
    TVenda = class
  private
    FValor: Currency;
    FID: Integer;
    FIdCliente: Integer;
    FIdVendedor: Integer;
    procedure SetID(const Value: Integer);
    procedure SetIdCliente(const Value: Integer);
    procedure SetIdVendedor(const Value: Integer);
    procedure SetValor(const Value: Currency);
    public
      property ID : Integer read FID write SetID;
      property IdCliente : Integer read FIdCliente write SetIdCliente;
      property IdVendedor : Integer read FIdVendedor write SetIdVendedor;
      property Valor : Currency read FValor write SetValor;

      function VerificaEmUso : Boolean;
      function NFEmitida : Boolean;
    end;

implementation

{ TVenda }

uses uDM;

function TVenda.VerificaEmUso : Boolean;
begin
  Result := False;

  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add(' select id from Venda where EmUso = ''S'' and ex = 0 and id = :id');
  DM.qPesq.Params[0].AsInteger := ID;
  DM.qPesq.Open;

  if DM.qPesq.RecordCount > 0 then
    Result := True;

end;

function TVenda.NFEmitida: Boolean;
begin
    Result := False;

  DM.qPesq.Close;
  DM.qPesq.SQL.Clear;
  DM.qPesq.SQL.Add(' select id from Venda where NotaFiscal <> 0 and ex = 0 and id = :id');
  DM.qPesq.Params[0].AsInteger := ID;
  DM.qPesq.Open;

  if DM.qPesq.RecordCount > 0 then
    Result := True;
end;

procedure TVenda.SetID(const Value: Integer);
begin
  FID := Value;
end;

procedure TVenda.SetIdCliente(const Value: Integer);
begin
  FIdCliente := Value;
end;

procedure TVenda.SetIdVendedor(const Value: Integer);
begin
  FIdVendedor := Value;
end;

procedure TVenda.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.
