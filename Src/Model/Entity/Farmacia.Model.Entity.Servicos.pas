unit Farmacia.Model.Entity.Servicos;

interface

uses
  Farmacia.Model.Entity.Servicos.Interfaces;

type
  TModelServicos = class(TInterfacedObject, iModelServicos)
  private
    FCodigo : Integer;
    FDescricao : String;
    FValor : Currency;
    FTipoServico : Integer;

  public
    function Codigo( aValue : Integer ): iModelServicos;
    function Descricao( aValue : String ): iModelServicos;
    function Valor( aValue : Currency ): iModelServicos;
    function TipoServico( aValue : Integer ): iModelServicos;

    function GetCodigo : Integer;
    function GetDescricao : String;
    function GetValor : Currency;
    function GetTipoServico : Integer;

    constructor Create;
    destructor Destroy; override;
    class function New : iModelServicos;
  end;


implementation

{ TModelServicos }

function TModelServicos.Codigo(aValue: Integer): iModelServicos;
begin
  Result := Self;
  FCodigo := aValue;
end;

constructor TModelServicos.Create;
begin

end;

function TModelServicos.Descricao(aValue: String): iModelServicos;
begin
  Result := Self;
  FDescricao := aValue;
end;

destructor TModelServicos.Destroy;
begin

  inherited;
end;

function TModelServicos.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TModelServicos.GetDescricao: String;
begin
  Result := FDescricao;
end;

function TModelServicos.GetTipoServico: Integer;
begin
  Result := FTipoServico;
end;

function TModelServicos.GetValor: Currency;
begin
  Result := FValor;
end;

class function TModelServicos.New: iModelServicos;
begin
  Result := Self.Create;
end;

function TModelServicos.TipoServico(aValue: Integer): iModelServicos;
begin
  Result := Self;
  FTipoServico := aValue;
end;

function TModelServicos.Valor(aValue: Currency): iModelServicos;
begin
  Result := Self;
  FValor := aValue;
end;

end.
