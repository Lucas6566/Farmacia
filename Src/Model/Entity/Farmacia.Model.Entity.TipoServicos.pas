unit Farmacia.Model.Entity.TipoServicos;

interface

uses
  Farmacia.Model.Entity.TipoServicos.Interfaces;

type
  TModelTipoServicos = class(TInterfacedObject, iModelTipoServicos)
  private
    FCodigo : Integer;
    FDescricao : String;
  public
    function Codigo( aValue : Integer ): iModelTipoServicos;
    function Descricao( aValue : String ): iModelTipoServicos;

    function GetCodigo : Integer;
    function GetDescricao : String;

    constructor Create;
    destructor Destroy; override;
    class function New : iModelTipoServicos;
  end;

implementation


{ TModelTipoServicos }

function TModelTipoServicos.Codigo(aValue: Integer): iModelTipoServicos;
begin
  Result := Self;
  FCodigo := aValue;
end;

constructor TModelTipoServicos.Create;
begin

end;

function TModelTipoServicos.Descricao(aValue: String): iModelTipoServicos;
begin
  Result := Self;
  FDescricao := aValue;
end;

destructor TModelTipoServicos.Destroy;
begin

  inherited;
end;

function TModelTipoServicos.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TModelTipoServicos.GetDescricao: String;
begin
  Result := FDescricao;
end;

class function TModelTipoServicos.New: iModelTipoServicos;
begin
  Result := Self.Create;
end;

end.
