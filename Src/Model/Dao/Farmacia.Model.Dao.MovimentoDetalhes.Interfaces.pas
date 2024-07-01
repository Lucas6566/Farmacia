unit Farmacia.Model.Dao.MovimentoDetalhes.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.MovimentoDetalhes.Interfaces;

type
  iCrudMovimentoDetalhes = interface
    ['{C76E9F4D-4A23-4DF9-8479-C800BAE597EC}']
    function AlimentarDados:iModelMovimentoDetalhes;
    function Cadastro:iModelMovimentoDetalhes;
    function DataSet:TDataSet;
    function Select:iCrudMovimentoDetalhes;
    function Insert:iCrudMovimentoDetalhes;
    function Update:iCrudMovimentoDetalhes;
    function Delete:iCrudMovimentoDetalhes;
    function DeleteItem:iCrudMovimentoDetalhes;
  end;

implementation

end.
