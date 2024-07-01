unit Farmacia.Model.Dao.TipoServicos.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.TipoServicos.Interfaces;

type
  iCrudTipoServicos = interface
    ['{3CC21BA4-C2D4-4B01-BE3D-1DB53B395DB7}']
    function AlimentaDados : iModelTipoServicos;
    function Cadastro : iModelTipoServicos;

    function OpenQuery : iCrudTipoServicos;
    function DataSet : TDataSet;
    function Select : iCrudTipoServicos;
    function Insert : iCrudTipoServicos;
    function Update : iCrudTipoServicos;
    function Delete : iCrudTipoServicos;
  end;

implementation

end.
