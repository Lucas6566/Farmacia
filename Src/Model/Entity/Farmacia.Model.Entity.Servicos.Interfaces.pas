unit Farmacia.Model.Entity.Servicos.Interfaces;

interface

type
  iModelServicos = interface
    ['{D3CD4E3B-7E33-439A-B4DC-1FAB055129A8}']
    function Codigo( aValue : Integer ): iModelServicos;
    function Descricao( aValue : String ): iModelServicos;
    function Valor( aValue : Currency ): iModelServicos;
    function TipoServico( aValue : Integer ): iModelServicos;

    function GetCodigo : Integer;
    function GetDescricao : String;
    function GetValor : Currency;
    function GetTipoServico : Integer;
  end;

implementation

end.
