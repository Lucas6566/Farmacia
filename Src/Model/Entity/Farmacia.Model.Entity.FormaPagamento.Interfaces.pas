unit Farmacia.Model.Entity.FormaPagamento.Interfaces;

interface

type
  iModelFormaPagamento = interface
    ['{B9A93D8C-ECFD-4567-8BFB-E00B3F85F857}']
    function CodPagamento(pValue:Integer):iModelFormaPagamento;
    function DesPagamento(pValue:String):iModelFormaPagamento;
    function TipPagamento(pValue:Integer):iModelFormaPagamento;
    function CodUsuarioAlt(pValue:Integer):iModelFormaPagamento;
    function DatCadastro(pValue:TDateTime):iModelFormaPagamento;
    function DatAlteracao(pValue:TDateTime):iModelFormaPagamento;

    function GetCodPagamento:Integer;
    function GetDesPagamento:String;
    function GetTipPagamento:Integer;
    function GetCodUsuarioAlt:Integer;
    function GetDatCadastro:TDateTime;
    function GetDatAlteracao:TDateTime;
  end;

implementation

end.
