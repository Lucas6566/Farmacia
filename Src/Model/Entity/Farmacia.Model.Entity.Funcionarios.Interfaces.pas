unit Farmacia.Model.Entity.Funcionarios.Interfaces;

interface

type
  iModelFuncionarios = interface
    ['{E3F6443B-CDE3-48F4-A2C7-1BBCBEF89ACE}']
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
  end;



implementation

end.
