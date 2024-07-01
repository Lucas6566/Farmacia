unit Farmacia.Model.Entity.MovimentoDetalhes;

interface

uses
  Farmacia.Model.Entity.MovimentoDetalhes.Interfaces;

type
  TModelMovimentoDetalhes = class(TInterfacedObject, iModelMovimentoDetalhes)
  private
    FSeqDetalhe:Integer;
    FCodMovimento:Integer;
    FSeqMovimento:Integer;
    FCodServico:Integer;
    FDesServico:String;
    FTipServico:Integer;
    FQtdServicos:Double;
    FVlrServico:Double;
    FVlrDesconto:Double;
    FVlrAcrescimo:Double;
    FVlrFrete:Double;
    FVlrTotal:Double;
    FObsServico:String;
    FCodUsuarioAlt:Integer;
    FDatCadastro:TDateTime;
    FDatAlteracao:TDateTime;
  public
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

    constructor Create;
    destructor Destroy; override;
    class function New : iModelMovimentoDetalhes;
  end;

implementation

{ TModelMovimentoDetalhes }

constructor TModelMovimentoDetalhes.Create;
begin

end;

destructor TModelMovimentoDetalhes.Destroy;
begin

  inherited;
end;

class function TModelMovimentoDetalhes.New: iModelMovimentoDetalhes;
begin
  Result := Self.Create;
end;

function TModelMovimentoDetalhes.SeqDetalhe(pValue:Integer):iModelMovimentoDetalhes;
begin
  Result := Self;
  FSeqDetalhe:= pValue;
end;

function TModelMovimentoDetalhes.CodMovimento(pValue:Integer):iModelMovimentoDetalhes;
begin
  Result := Self;
  FCodMovimento:= pValue;
end;

function TModelMovimentoDetalhes.SeqMovimento(pValue:Integer):iModelMovimentoDetalhes;
begin
  Result := Self;
  FSeqMovimento:= pValue;
end;

function TModelMovimentoDetalhes.CodServico(pValue:Integer):iModelMovimentoDetalhes;
begin
  Result := Self;
  FCodServico:= pValue;
end;

function TModelMovimentoDetalhes.DesServico(pValue:String):iModelMovimentoDetalhes;
begin
  Result := Self;
  FDesServico:= pValue;
end;

function TModelMovimentoDetalhes.TipServico(pValue:Integer):iModelMovimentoDetalhes;
begin
  Result := Self;
  FTipServico:= pValue;
end;

function TModelMovimentoDetalhes.QtdServicos(pValue:Double):iModelMovimentoDetalhes;
begin
  Result := Self;
  FQtdServicos:= pValue;
end;

function TModelMovimentoDetalhes.VlrServico(pValue:Double):iModelMovimentoDetalhes;
begin
  Result := Self;
  FVlrServico:= pValue;
end;

function TModelMovimentoDetalhes.VlrDesconto(pValue:Double):iModelMovimentoDetalhes;
begin
  Result := Self;
  FVlrDesconto:= pValue;
end;

function TModelMovimentoDetalhes.VlrAcrescimo(pValue:Double):iModelMovimentoDetalhes;
begin
  Result := Self;
  FVlrAcrescimo:= pValue;
end;

function TModelMovimentoDetalhes.VlrFrete(pValue:Double):iModelMovimentoDetalhes;
begin
  Result := Self;
  FVlrFrete:= pValue;
end;

function TModelMovimentoDetalhes.VlrTotal(pValue:Double):iModelMovimentoDetalhes;
begin
  Result := Self;
  FVlrTotal:= pValue;
end;

function TModelMovimentoDetalhes.ObsServico(pValue:String):iModelMovimentoDetalhes;
begin
  Result := Self;
  FObsServico:= pValue;
end;

function TModelMovimentoDetalhes.CodUsuarioAlt(pValue:Integer):iModelMovimentoDetalhes;
begin
  Result := Self;
  FCodUsuarioAlt:= pValue;
end;

function TModelMovimentoDetalhes.DatCadastro(pValue:TDateTime):iModelMovimentoDetalhes;
begin
  Result := Self;
  FDatCadastro:= pValue;
end;

function TModelMovimentoDetalhes.DatAlteracao(pValue:TDateTime):iModelMovimentoDetalhes;
begin
  Result := Self;
  FDatAlteracao:= pValue;
end;

function TModelMovimentoDetalhes.GetSeqDetalhe:Integer;
begin
  Result := FSeqDetalhe;
end;

function TModelMovimentoDetalhes.GetCodMovimento:Integer;
begin
  Result := FCodMovimento;
end;

function TModelMovimentoDetalhes.GetSeqMovimento:Integer;
begin
  Result := FSeqMovimento;
end;

function TModelMovimentoDetalhes.GetCodServico:Integer;
begin
  Result := FCodServico;
end;

function TModelMovimentoDetalhes.GetDesServico:String;
begin
  Result := FDesServico;
end;

function TModelMovimentoDetalhes.GetTipServico:Integer;
begin
  Result := FTipServico;
end;

function TModelMovimentoDetalhes.GetQtdServicos:Double;
begin
  Result := FQtdServicos;
end;

function TModelMovimentoDetalhes.GetVlrServico:Double;
begin
  Result := FVlrServico;
end;

function TModelMovimentoDetalhes.GetVlrDesconto:Double;
begin
  Result := FVlrDesconto;
end;

function TModelMovimentoDetalhes.GetVlrAcrescimo:Double;
begin
  Result := FVlrAcrescimo;
end;

function TModelMovimentoDetalhes.GetVlrFrete:Double;
begin
  Result := FVlrFrete;
end;

function TModelMovimentoDetalhes.GetVlrTotal:Double;
begin
  Result := FVlrTotal;
end;

function TModelMovimentoDetalhes.GetObsServico:String;
begin
  Result := FObsServico;
end;

function TModelMovimentoDetalhes.GetCodUsuarioAlt:Integer;
begin
  Result := FCodUsuarioAlt;
end;

function TModelMovimentoDetalhes.GetDatCadastro:TDateTime;
begin
  Result := FDatCadastro;
end;

function TModelMovimentoDetalhes.GetDatAlteracao:TDateTime;
begin
  Result := FDatAlteracao;
end;

end.
