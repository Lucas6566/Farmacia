unit Farmacia.Model.Entity.MovimentoPag.Interfaces;

interface

type
  iModelMovimentoPag = interface
    ['{CF935E30-ACC0-4B01-B77F-E25044106029}']
    function SeqPagamento(pValue:Integer):iModelMovimentoPag;
    function CodMovimento(pValue:Integer):iModelMovimentoPag;
    function SeqMovimento(pValue:Integer):iModelMovimentoPag;
    function CodPagamento(pValue:Integer):iModelMovimentoPag;
    function DesPagamento(pValue:String):iModelMovimentoPag;
    function VlrReceber(pValue:Double):iModelMovimentoPag;

    function GetSeqPagamento:Integer;
    function GetCodMovimento:Integer;
    function GetSeqMovimento:Integer;
    function GetCodPagamento:Integer;
    function GetDesPagamento:String;
    function GetVlrReceber:Double;
  end;

implementation

end.
