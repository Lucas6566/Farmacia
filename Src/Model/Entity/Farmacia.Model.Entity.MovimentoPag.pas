unit Farmacia.Model.Entity.MovimentoPag;

interface

uses
  Farmacia.Model.Entity.MovimentoPag.Interfaces;

type
  TModelMovimentoPag = class(TInterfacedObject, iModelMovimentoPag)
  private
    FSeqPagamento:Integer;
    FCodMovimento:Integer;
    FSeqMovimento:Integer;
    FCodPagamento:Integer;
    FDesPagamento:String;
    FVlrReceber:Double;
  public
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
	
    constructor Create;
    destructor Destroy; override;
    class function New : iModelMovimentoPag;
  end;

implementation

{ TModelMovimentoPag }

constructor TModelMovimentoPag.Create;
begin

end;

destructor TModelMovimentoPag.Destroy;
begin

  inherited;
end;

class function TModelMovimentoPag.New: iModelMovimentoPag;
begin
  Result := Self.Create;
end;

function TModelMovimentoPag.SeqPagamento(pValue:Integer):iModelMovimentoPag;
begin
  Result := Self;
  FSeqPagamento:= pValue;
end;

function TModelMovimentoPag.CodMovimento(pValue:Integer):iModelMovimentoPag;
begin
  Result := Self;
  FCodMovimento:= pValue;
end;

function TModelMovimentoPag.SeqMovimento(pValue:Integer):iModelMovimentoPag;
begin
  Result := Self;
  FSeqMovimento:= pValue;
end;

function TModelMovimentoPag.CodPagamento(pValue:Integer):iModelMovimentoPag;
begin
  Result := Self;
  FCodPagamento:= pValue;
end;

function TModelMovimentoPag.DesPagamento(pValue:String):iModelMovimentoPag;
begin
  Result := Self;
  FDesPagamento:= pValue;
end;

function TModelMovimentoPag.VlrReceber(pValue:Double):iModelMovimentoPag;
begin
  Result := Self;
  FVlrReceber:= pValue;
end;

function TModelMovimentoPag.GetSeqPagamento:Integer;
begin
  Result := FSeqPagamento;
end;

function TModelMovimentoPag.GetCodMovimento:Integer;
begin
  Result := FCodMovimento;
end;

function TModelMovimentoPag.GetSeqMovimento:Integer;
begin
  Result := FSeqMovimento;
end;

function TModelMovimentoPag.GetCodPagamento:Integer;
begin
  Result := FCodPagamento;
end;

function TModelMovimentoPag.GetDesPagamento:String;
begin
  Result := FDesPagamento;
end;

function TModelMovimentoPag.GetVlrReceber:Double;
begin
  Result := FVlrReceber;
end;

end.