unit Farmacia.Model.Entity.Clientes;

interface


uses
  Farmacia.Model.Entity.Clientes.Interfaces;

type
  TModelClientes = class(TInterfacedObject, iModelClientes)
  private
    FCodigo : Integer;
    FNome : String;
    FIndDocumento: Integer;
    FDocumento: String;
    FCep: String;
    FLogradouro: String;
    FNumEndereco: Integer;
    FBairro: String;
    FCidade: String;
    FUf: String;
    FComplemento: String;
    FEndEletronico: String;
    FTelFixo: String;
    FFax: String;
    FCelular: String;
    FCodigoUsuario : Integer;
    FDataCadastro : TDate;
    FDataAlteracao : TDate;
  public
    function Codigo( aValue : Integer ): iModelClientes;
    function Nome( aValue : String ): iModelClientes;
    function IndDocumento( aValue : Integer ): iModelClientes;
    function Documento( aValue : String ): iModelClientes;
    function Cep( aValue : String ): iModelClientes;
    function Logradouro( aValue : String ): iModelClientes;
    function NumEndereco( aValue : Integer ): iModelClientes;
    function Bairro( aValue : String ): iModelClientes;
    function Cidade( aValue : String ): iModelClientes;
    function Uf( aValue : String ): iModelClientes;
    function Complemento( aValue : String ): iModelClientes;
    function EndEletronico( aValue : String ): iModelClientes;
    function TelFixo( aValue : String ): iModelClientes;
    function Fax( aValue : String ): iModelClientes;
    function Celular( aValue : String ): iModelClientes;
    function CodigoUsuario( aValue : Integer ): iModelClientes;
    function DataCadastro( aValue : TDate ): iModelClientes;
    function DataAlteracao( aValue : TDate ): iModelClientes;

  	function GetCodigo : Integer;
    function GetNome : String;
    function GetIndDocumento: Integer;
    function GetDocumento: String;
    function GetCep: String;
    function GetLogradouro: String;
    function GetNumEndereco: Integer;
    function GetBairro: String;
    function GetCidade: String;
    function GetUf: String;
    function GetComplemento: String;
    function GetEndEletronico: String;
    function GetTelFixo: String;
    function GetFax: String;
    function GetCelular: String;
    function GetCodigoUsuario : Integer;
    function GetDataCadastro : TDate;
    function GetDataAlteracao : TDate;

    constructor Create;
    destructor Destroy; override;
    class function New : TModelClientes;
  end;


implementation

{ TModelClientes }

function TModelClientes.Bairro(aValue: String): iModelClientes;
begin
  Result := Self;
  FBairro := aValue;
end;

function TModelClientes.Celular(aValue: String): iModelClientes;
begin
  Result := Self;
  FCelular := aValue;
end;

function TModelClientes.Cep(aValue: String): iModelClientes;
begin
  Result := Self;
  FCep := aValue;
end;

function TModelClientes.Cidade(aValue: String): iModelClientes;
begin
  Result := Self;
  FCidade := aValue;
end;

function TModelClientes.Codigo(aValue: Integer): iModelClientes;
begin
  Result := Self;
  FCodigo := aValue;
end;

function TModelClientes.CodigoUsuario(aValue: Integer): iModelClientes;
begin
  Result := Self;
  FCodigoUsuario := aValue;
end;

function TModelClientes.Complemento(aValue: String): iModelClientes;
begin
  Result := Self;
  FComplemento := aValue;
end;

constructor TModelClientes.Create;
begin

end;

function TModelClientes.DataAlteracao(aValue: TDate): iModelClientes;
begin
  Result := Self;
  FDataAlteracao := aValue;
end;

function TModelClientes.DataCadastro(aValue: TDate): iModelClientes;
begin
  Result := Self;
  FDataCadastro := aValue;
end;

destructor TModelClientes.Destroy;
begin

  inherited;
end;

function TModelClientes.Documento(aValue: String): iModelClientes;
begin
  Result := Self;
  FDocumento := aValue;
end;

function TModelClientes.EndEletronico(aValue: String): iModelClientes;
begin
  Result := Self;
  FEndEletronico := aValue;
end;

function TModelClientes.Fax(aValue: String): iModelClientes;
begin
  Result := Self;
  FFax := aValue;
end;

function TModelClientes.GetBairro: String;
begin
  Result := FBairro;
end;

function TModelClientes.GetCelular: String;
begin
  Result := FCelular
end;

function TModelClientes.GetCep: String;
begin
  Result := FCep;
end;

function TModelClientes.GetCidade: String;
begin
  Result := FCidade
end;

function TModelClientes.GetCodigo: Integer;
begin
  Result := FCodigo;
end;

function TModelClientes.GetCodigoUsuario: Integer;
begin
  Result := FCodigoUsuario;
end;

function TModelClientes.GetComplemento: String;
begin
  Result := FComplemento;
end;

function TModelClientes.GetDataAlteracao: TDate;
begin
  Result := FDataAlteracao;
end;

function TModelClientes.GetDataCadastro: TDate;
begin
  Result := FDataCadastro;
end;

function TModelClientes.GetDocumento: String;
begin
  Result := FDocumento;
end;

function TModelClientes.GetEndEletronico: String;
begin
  Result := FEndEletronico;
end;

function TModelClientes.GetFax: String;
begin
  Result := FFax;
end;

function TModelClientes.GetIndDocumento: Integer;
begin
  Result := FIndDocumento;
end;

function TModelClientes.GetLogradouro: String;
begin
  Result := FLogradouro;
end;

function TModelClientes.GetNome: String;
begin
  Result := FNome;
end;

function TModelClientes.GetNumEndereco: Integer;
begin
  Result := FNumEndereco;
end;

function TModelClientes.GetTelFixo: String;
begin
  Result := FTelFixo;
end;

function TModelClientes.GetUf: String;
begin
  Result := FUf;
end;

function TModelClientes.IndDocumento(aValue: Integer): iModelClientes;
begin
  Result := Self;
  FIndDocumento := aValue;
end;

function TModelClientes.Logradouro(aValue: String): iModelClientes;
begin
  Result := Self;
  FLogradouro := aValue;
end;

class function TModelClientes.New: TModelClientes;
begin
  Result := Self.Create;
end;

function TModelClientes.Nome(aValue: String): iModelClientes;
begin
  Result := Self;
  FNome := aValue;
end;

function TModelClientes.NumEndereco(aValue: Integer): iModelClientes;
begin
  Result := Self;
  FNumEndereco := aValue;
end;

function TModelClientes.TelFixo(aValue: String): iModelClientes;
begin
  Result := Self;
  FTelFixo := aValue;
end;

function TModelClientes.Uf(aValue: String): iModelClientes;
begin
  Result := Self;
  FUf := aValue;
end;

end.
