unit Farmacia.Model.Entity.FormaPagamento;

interface

uses
  Farmacia.Model.Entity.FormaPagamento.Interfaces;

type
  TModelFormaPagamento = class(TInterfacedObject, iModelFormaPagamento)
  private
    FCodPagamento:Integer;
    FDesPagamento:String;
    FTipPagamento:Integer;
    FCodUsuarioAlt:Integer;
    FDatCadastro:TDateTime;
    FDatAlteracao:TDateTime;
  public
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

    constructor Create;
    destructor Destroy; override;
    class function New : iModelFormaPagamento;
  end;

implementation

{ TModelFormaPagamento }

constructor TModelFormaPagamento.Create;
begin

end;

destructor TModelFormaPagamento.Destroy;
begin

  inherited;
end;

class function TModelFormaPagamento.New: iModelFormaPagamento;
begin
  Result := Self.Create;
end;

function TModelFormaPagamento.CodPagamento(pValue:Integer):iModelFormaPagamento;
begin
  Result := Self;
  FCodPagamento:= pValue;
end;

function TModelFormaPagamento.DesPagamento(pValue:String):iModelFormaPagamento;
begin
  Result := Self;
  FDesPagamento:= pValue;
end;

function TModelFormaPagamento.TipPagamento(pValue:Integer):iModelFormaPagamento;
begin
  Result := Self;
  FTipPagamento:= pValue;
end;

function TModelFormaPagamento.CodUsuarioAlt(pValue:Integer):iModelFormaPagamento;
begin
  Result := Self;
  FCodUsuarioAlt:= pValue;
end;

function TModelFormaPagamento.DatCadastro(pValue:TDateTime):iModelFormaPagamento;
begin
  Result := Self;
  FDatCadastro:= pValue;
end;

function TModelFormaPagamento.DatAlteracao(pValue:TDateTime):iModelFormaPagamento;
begin
  Result := Self;
  FDatAlteracao:= pValue;
end;

function TModelFormaPagamento.GetCodPagamento:Integer;
begin
  Result := FCodPagamento;
end;

function TModelFormaPagamento.GetDesPagamento:String;
begin
  Result := FDesPagamento;
end;

function TModelFormaPagamento.GetTipPagamento:Integer;
begin
  Result := FTipPagamento;
end;

function TModelFormaPagamento.GetCodUsuarioAlt:Integer;
begin
  Result := FCodUsuarioAlt;
end;

function TModelFormaPagamento.GetDatCadastro:TDateTime;
begin
  Result := FDatCadastro;
end;

function TModelFormaPagamento.GetDatAlteracao:TDateTime;
begin
  Result := FDatAlteracao;
end;

end.
