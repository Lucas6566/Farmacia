unit Farmacia.Model.Entity.MovimentoDetalhes.Interfaces;

interface

type
  iModelMovimentoDetalhes = interface
    ['{8B2EE61E-9E5E-4DA1-A46F-71A0B449BA27}']
    function SeqDetalhe(pValue:Integer):iModelMovimentoDetalhes;
    function CodMovimento(pValue:Integer):iModelMovimentoDetalhes;
    function SeqMovimento(pValue:Integer):iModelMovimentoDetalhes;
    function CodServico(pValue:Integer):iModelMovimentoDetalhes;
    function DesServico(pValue:String):iModelMovimentoDetalhes;
    function TipServico(pValue:Integer):iModelMovimentoDetalhes;
    function QtdServicos(pValue:Double):iModelMovimentoDetalhes;
    function VlrServico(pValue:Double):iModelMovimentoDetalhes;
    function VlrDesconto(pValue:Double):iModelMovimentoDetalhes;
    function VlrAcrescimo(pValue:Double):iModelMovimentoDetalhes;
    function VlrFrete(pValue:Double):iModelMovimentoDetalhes;
    function VlrTotal(pValue:Double):iModelMovimentoDetalhes;
    function ObsServico(pValue:String):iModelMovimentoDetalhes;
    function CodUsuarioAlt(pValue:Integer):iModelMovimentoDetalhes;
    function DatCadastro(pValue:TDateTime):iModelMovimentoDetalhes;
    function DatAlteracao(pValue:TDateTime):iModelMovimentoDetalhes;

    function GetSeqDetalhe:Integer;
    function GetCodMovimento:Integer;
    function GetSeqMovimento:Integer;
    function GetCodServico:Integer;
    function GetDesServico:String;
    function GetTipServico:Integer;
    function GetQtdServicos:Double;
    function GetVlrServico:Double;
    function GetVlrDesconto:Double;
    function GetVlrAcrescimo:Double;
    function GetVlrFrete:Double;
    function GetVlrTotal:Double;
    function GetObsServico:String;
    function GetCodUsuarioAlt:Integer;
    function GetDatCadastro:TDateTime;
    function GetDatAlteracao:TDateTime;
  end;

implementation

end.
