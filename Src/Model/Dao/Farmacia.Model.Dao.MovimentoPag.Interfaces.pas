unit Farmacia.Model.Dao.MovimentoPag.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.MovimentoPag.Interfaces;

type
  iCrudMovimentoPag = interface
    ['{FEAA7FC0-7086-48C9-A315-9B69D99B497C}']
    function AlimentarDados:iModelMovimentoPag;
    function Cadastro:iModelMovimentoPag;

  	function OpenQuery:iCrudMovimentoPag;
    function DataSet:TDataSet;
    function Select:iCrudMovimentoPag;
    function Insert:iCrudMovimentoPag;
    function Update:iCrudMovimentoPag;
    function Delete:iCrudMovimentoPag;
  end;


implementation

end.
