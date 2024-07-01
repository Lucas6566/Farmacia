unit Farmacia.Model.Dao.FormaPagamento.Interfaces;

interface

uses
  Data.DB,
  Farmacia.Model.Entity.FormaPagamento.Interfaces;

type
  iCrudFormaPagamento = interface
    ['{C805143F-1182-4DA2-9A1E-A3097054E5E4}']
    function AlimentarDados:iModelFormaPagamento;
    function Cadastro:iModelFormaPagamento;
    function DataSet:TDataSet;
    function Select:iCrudFormaPagamento;
    function Insert:iCrudFormaPagamento;
    function Update:iCrudFormaPagamento;
    function Delete:iCrudFormaPagamento;
  end;


implementation

end.
