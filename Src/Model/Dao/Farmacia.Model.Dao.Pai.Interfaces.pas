unit Farmacia.Model.Dao.Pai.Interfaces;

interface

uses
  Data.DB,
  Datasnap.DBClient;

type
  iDaoPai = interface
    ['{EDDB30C9-6DD9-4F59-AB4D-19FD90D80C00}']
    function GetInstancia: iDaoPai;
    function GetParam : String;
    function AddParam(pKey, pParam, pValue: String): iDaoPai;
    function ClientDataSet : TClientDataSet;
  end;

implementation

end.