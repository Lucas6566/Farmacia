unit Farmacia.Model.Entity.TipoServicos.Interfaces;

interface

type
  iModelTipoServicos = interface
    ['{B4A5F01B-BDE2-4771-9F43-6E07072895EE}']
    function Codigo( aValue : Integer ): iModelTipoServicos;
    function Descricao( aValue : String ): iModelTipoServicos;

    function GetCodigo : Integer;
    function GetDescricao : String;
  end;

implementation

end.
