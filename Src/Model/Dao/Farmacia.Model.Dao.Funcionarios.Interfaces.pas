unit Farmacia.Model.Dao.Funcionarios.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.Funcionarios.Interfaces;

type
  iCrudFuncionarios = interface
    ['{0A6DD146-81E3-4B89-B54C-955FF0B27D57}']
    function AlimentaDados : iModelFuncionarios;
    function Cadastro : iModelFuncionarios;

    function OpenQuery : iCrudFuncionarios;
    function DataSet : TDataSet;
    function Select : iCrudFuncionarios;
    function Insert : iCrudFuncionarios;
    function Update : iCrudFuncionarios;
    function Delete : iCrudFuncionarios;
  end;

implementation

end.