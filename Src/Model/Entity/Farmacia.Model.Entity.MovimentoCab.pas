unit Farmacia.Model.Entity.MovimentoCab;

interface

uses
  Farmacia.Model.Entity.MovimentoCab.Interfaces;

type
  TModelMovimentoCab = class(TInterfacedObject, iModelMovimentoCab)
  private
    FCodMovimento:Integer;
    FCodPaciente:Integer;
    FNomPaciente:String;
    FDocPaciente:String;
    FTelPaciente:String;
    FVlrSubtotal:Double;
    FVlrDesconto:Double;
    FVlrAcrescimo:Double;
    FVlrFrete:Double;
    FVlrTotal:Double;
    FObsMovimento:String;
    FQtdServicos:Double;
    FCodUsuarioAlt:Integer;
    FDatCadastro:TDateTime;
    FDatAlteracao:TDateTime;
  public
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

    constructor Create;
    destructor Destroy; override;
    class function New : iModelMovimentoCab;
  end;

implementation

{ TModelMovimentoCab }

constructor TModelMovimentoCab.Create;
begin

end;

destructor TModelMovimentoCab.Destroy;
begin

  inherited;
end;

class function TModelMovimentoCab.New: iModelMovimentoCab;
begin
  Result := Self.Create;
end;

function TModelMovimentoCab.CodMovimento(pValue:Integer):iModelMovimentoCab;
begin
  Result := Self;
  FCodMovimento:= pValue;
end;

function TModelMovimentoCab.CodPaciente(pValue:Integer):iModelMovimentoCab;
begin
  Result := Self;
  FCodPaciente:= pValue;
end;

function TModelMovimentoCab.NomPaciente(pValue:String):iModelMovimentoCab;
begin
  Result := Self;
  FNomPaciente:= pValue;
end;

function TModelMovimentoCab.DocPaciente(pValue:String):iModelMovimentoCab;
begin
  Result := Self;
  FDocPaciente:= pValue;
end;

function TModelMovimentoCab.TelPaciente(pValue:String):iModelMovimentoCab;
begin
  Result := Self;
  FTelPaciente:= pValue;
end;

function TModelMovimentoCab.VlrSubtotal(pValue:Double):iModelMovimentoCab;
begin
  Result := Self;
  FVlrSubtotal:= pValue;
end;

function TModelMovimentoCab.VlrDesconto(pValue:Double):iModelMovimentoCab;
begin
  Result := Self;
  FVlrDesconto:= pValue;
end;

function TModelMovimentoCab.VlrAcrescimo(pValue:Double):iModelMovimentoCab;
begin
  Result := Self;
  FVlrAcrescimo:= pValue;
end;

function TModelMovimentoCab.VlrFrete(pValue:Double):iModelMovimentoCab;
begin
  Result := Self;
  FVlrFrete:= pValue;
end;

function TModelMovimentoCab.VlrTotal(pValue:Double):iModelMovimentoCab;
begin
  Result := Self;
  FVlrTotal:= pValue;
end;

function TModelMovimentoCab.ObsMovimento(pValue:String):iModelMovimentoCab;
begin
  Result := Self;
  FObsMovimento:= pValue;
end;

function TModelMovimentoCab.QtdServicos(pValue:Double):iModelMovimentoCab;
begin
  Result := Self;
  FQtdServicos:= pValue;
end;

function TModelMovimentoCab.CodUsuarioAlt(pValue:Integer):iModelMovimentoCab;
begin
  Result := Self;
  FCodUsuarioAlt:= pValue;
end;

function TModelMovimentoCab.DatCadastro(pValue:TDateTime):iModelMovimentoCab;
begin
  Result := Self;
  FDatCadastro:= pValue;
end;

function TModelMovimentoCab.DatAlteracao(pValue:TDateTime):iModelMovimentoCab;
begin
  Result := Self;
  FDatAlteracao:= pValue;
end;

function TModelMovimentoCab.GetCodMovimento:Integer;
begin
  Result := FCodMovimento;
end;

function TModelMovimentoCab.GetCodPaciente:Integer;
begin
  Result := FCodPaciente;
end;

function TModelMovimentoCab.GetNomPaciente:String;
begin
  Result := FNomPaciente;
end;

function TModelMovimentoCab.GetDocPaciente:String;
begin
  Result := FDocPaciente;
end;

function TModelMovimentoCab.GetTelPaciente:String;
begin
  Result := FTelPaciente;
end;

function TModelMovimentoCab.GetVlrSubtotal:Double;
begin
  Result := FVlrSubtotal;
end;

function TModelMovimentoCab.GetVlrDesconto:Double;
begin
  Result := FVlrDesconto;
end;

function TModelMovimentoCab.GetVlrAcrescimo:Double;
begin
  Result := FVlrAcrescimo;
end;

function TModelMovimentoCab.GetVlrFrete:Double;
begin
  Result := FVlrFrete;
end;

function TModelMovimentoCab.GetVlrTotal:Double;
begin
  Result := FVlrTotal;
end;

function TModelMovimentoCab.GetObsMovimento:String;
begin
  Result := FObsMovimento;
end;

function TModelMovimentoCab.GetQtdServicos:Double;
begin
  Result := FQtdServicos;
end;

function TModelMovimentoCab.GetCodUsuarioAlt:Integer;
begin
  Result := FCodUsuarioAlt;
end;

function TModelMovimentoCab.GetDatCadastro:TDateTime;
begin
  Result := FDatCadastro;
end;

function TModelMovimentoCab.GetDatAlteracao:TDateTime;
begin
  Result := FDatAlteracao;
end;

end.
