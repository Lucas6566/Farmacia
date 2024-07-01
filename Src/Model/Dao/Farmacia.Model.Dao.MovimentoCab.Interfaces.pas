unit Farmacia.Model.Dao.MovimentoCab.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.MovimentoCab.Interfaces;

type
  iCrudMovimentoCab = interface
    ['{96306441-D561-4830-ACDD-B0B368FA0C97}']
    function AlimentarDados:iModelMovimentoCab;
    function Cadastro:iModelMovimentoCab;

    function OpenQuery:iCrudMovimentoCab;
    function DataSet:TDataSet;
    function Select:iCrudMovimentoCab;
    function Insert:iCrudMovimentoCab;
    function Update:iCrudMovimentoCab;
    function Delete:iCrudMovimentoCab;
  end;


implementation

end.
