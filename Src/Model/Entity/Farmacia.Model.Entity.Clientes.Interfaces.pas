unit Farmacia.Model.Entity.Clientes.Interfaces;

interface

type
  iModelClientes = interface
    ['{95A17A0F-9D2F-4D6D-8D2A-87FDDF27B450}']
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
  end;


implementation

end.
