unit Farmacia.Model.Entity.Funcionarios;

interface

uses
  Farmacia.Model.Entity.Funcionarios.Interfaces;

type
  TModelFuncionarios = class(TInterfacedObject, iModelFuncionarios)
  private
    FCodigo : Integer;
    FNome : String;
    FTipo : Integer;
    FCodigoUsuario : Integer;
    FDtaCadastro : TDate;
    FDtaAlteracao : TDate;
  public
    function Codigo( aValue : Integer ): iModelFuncionarios;
    function Nome( aValue : String ): iModelFuncionarios;
    function Tipo( aValue : Integer ): iModelFuncionarios;
    function CodigoUsuario( aValue : Integer ): iModelFuncionarios;
    function DtaCadastro( aValue : TDate ): iModelFuncionarios;
    function DtaAlteracao( aValue : TDate ): iModelFuncionarios;

  	function GetCodigo : Integer;
    function GetNome : String;
    function GetTipo : Integer;
    function GetCodigoUsuario : Integer;
    function GetDtaCadastro : TDate;
    function GetDtaAlteracao : TDate;

    constructor Create;
    destructor Destroy; override;
    class function New : TModelFuncionarios;
  end;

implementation

{ TModelFuncionarios }

function TModelFuncionarios.Codigo(aValue: Integer): iModelFuncionarios;
begin
  Result := Self;
  FCodigo := aValue;
end;

function TModelFuncionarios.CodigoUsuario(aValue: Integer): iModelFuncionarios;
begin
  Result := Self;
  FCodigoUsuario := aValue;
end;

constructor TModelFuncionarios.Create;
begin

end;

destructor TModelFuncionarios.Destroy;
begin

  inherited;
end;

function TModelFuncionarios.DtaAlteracao(aValue: TDate): iModelFuncionarios;
begin
  Result := Self;
  FDtaAlteracao := aValue;
end;

function TModelFuncionarios.DtaCadastro(aValue: TDate): iModelFuncionarios;
begin
  Result := Self;
  FDtaCadastro := aValue;
end;

function TModelFuncionarios.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TModelFuncionarios.GetCodigoUsuario: Integer;
begin
  Result := FCodigoUsuario;
end;

function TModelFuncionarios.GetDtaAlteracao: TDate;
begin
  Result := FDtaAlteracao;
end;

function TModelFuncionarios.GetDtaCadastro: TDate;
begin
  Result := FDtaCadastro;
end;

function TModelFuncionarios.GetNome: String;
begin
  Result := FNome;
end;

function TModelFuncionarios.GetTipo: Integer;
begin
  Result := FTipo;
end;

class function TModelFuncionarios.New: TModelFuncionarios;
begin
  Result := Self.Create;
end;

function TModelFuncionarios.Nome(aValue: String): iModelFuncionarios;
begin
  Result := Self;
  FNome := aValue;
end;

function TModelFuncionarios.Tipo(aValue: Integer): iModelFuncionarios;
begin
  Result := Self;
  FTipo := aValue;
end;

end.