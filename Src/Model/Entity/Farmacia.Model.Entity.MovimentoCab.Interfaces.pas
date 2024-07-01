unit Farmacia.Model.Entity.MovimentoCab.Interfaces;

interface

type
  iModelMovimentoCab = interface
    ['{EBEA7071-7554-4DFB-BCB9-56486E5E0233}']
    function CodMovimento(pValue:Integer):iModelMovimentoCab;
    function CodPaciente(pValue:Integer):iModelMovimentoCab;
    function NomPaciente(pValue:String):iModelMovimentoCab;
    function DocPaciente(pValue:String):iModelMovimentoCab;
    function TelPaciente(pValue:String):iModelMovimentoCab;
    function VlrSubtotal(pValue:Double):iModelMovimentoCab;
    function VlrDesconto(pValue:Double):iModelMovimentoCab;
    function VlrAcrescimo(pValue:Double):iModelMovimentoCab;
    function VlrFrete(pValue:Double):iModelMovimentoCab;
    function VlrTotal(pValue:Double):iModelMovimentoCab;
    function ObsMovimento(pValue:String):iModelMovimentoCab;
    function QtdServicos(pValue:Double):iModelMovimentoCab;
    function CodUsuarioAlt(pValue:Integer):iModelMovimentoCab;
    function DatCadastro(pValue:TDateTime):iModelMovimentoCab;
    function DatAlteracao(pValue:TDateTime):iModelMovimentoCab;

    function GetCodMovimento:Integer;
    function GetCodPaciente:Integer;
    function GetNomPaciente:String;
    function GetDocPaciente:String;
    function GetTelPaciente:String;
    function GetVlrSubtotal:Double;
    function GetVlrDesconto:Double;
    function GetVlrAcrescimo:Double;
    function GetVlrFrete:Double;
    function GetVlrTotal:Double;
    function GetObsMovimento:String;
    function GetQtdServicos:Double;
    function GetCodUsuarioAlt:Integer;
    function GetDatCadastro:TDateTime;
    function GetDatAlteracao:TDateTime;
  end;

implementation

end.
