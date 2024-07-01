unit Farmacia.Model.Dao.Clientes.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.Clientes.Interfaces;

type
  iCrudClientes = interface
    ['{B27CE4C5-163C-4DF5-BF1D-06113CBE07E2}']
    function AlimentaDados : iModelClientes;
    function Cadastro : iModelClientes;

    function OpenQuery : iCrudClientes;
    function DataSet : TDataSet;
    function Select : iCrudClientes;
    function Insert : iCrudClientes;
    function Update : iCrudClientes;
    function Delete : iCrudClientes;
  end;


implementation

end.
