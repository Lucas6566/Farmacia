unit Farmacia.Controller.Cadastros;

interface

uses
  Farmacia.Controller.Cadastros.Interfaces,
  Farmacia.Model.Dao.Clientes.Interfaces,
  Farmacia.Model.Dao.Clientes,
  Farmacia.Model.Dao.Funcionarios.Interfaces,
  Farmacia.Model.Dao.Funcionarios,
  Farmacia.Model.Dao.Servicos.Interfaces,
  Farmacia.Model.Dao.Servicos,
  Farmacia.Model.Dao.TipoServicos.Interfaces,
  Farmacia.Model.Dao.TipoServicos,
  Farmacia.Model.Dao.MovimentoCab.Interfaces,
  Farmacia.Model.Dao.MovimentoCab,
  Farmacia.Model.Dao.MovimentoDetalhes.Interfaces,
  Farmacia.Model.Dao.MovimentoDetalhes,
  Farmacia.Model.Dao.MovimentoPag.Interfaces,
  Farmacia.Model.Dao.MovimentoPag,
  Farmacia.Model.Dao.FormaPagamento.Interfaces,
  Farmacia.Model.Dao.FormaPagamento;

type
  TControllerCadastros = Class(TInterfacedObject, iControllerCadastros)
  private
    FClientes : iCrudClientes;
    FFuncionarios : iCrudFuncionarios;
    FServicos : iCrudServicos;
    FTipoServicos : iCrudTipoServicos;
    FMovimentoCab : iCrudMovimentoCab;
    FMovimentoDetalhes : iCrudMovimentoDetalhes;
    FMovimentoPag : iCrudMovimentoPag;
    FFormaPagamento : iCrudFormaPagamento;
  public
    function Clientes : iCrudClientes;
    function Funcionarios : iCrudFuncionarios;
    function Servicos : iCrudServicos;
    function TipoServicos : iCrudTipoServicos;
    function MovimentoCab : iCrudMovimentoCab;
    function MovimentoDetalhes : iCrudMovimentoDetalhes;
    function MovimentoPag : iCrudMovimentoPag;
    function FormaPagamento : iCrudFormaPagamento;

    constructor Create;
    destructor Destroy; override;
    class function New : iControllerCadastros;
  End;

implementation

{ TControllerCadastro }

function TControllerCadastros.Clientes: iCrudClientes;
begin
  if not Assigned(FClientes) then
    FClientes := TCrudClientes.New;
  Result := FClientes
end;

constructor TControllerCadastros.Create;
begin

end;

destructor TControllerCadastros.Destroy;
begin

  inherited;
end;

function TControllerCadastros.FormaPagamento: iCrudFormaPagamento;
begin
  if not Assigned(FFormaPagamento) then
    FFormaPagamento := TCrudFormaPagamento.New;
  Result := FFormaPagamento
end;

function TControllerCadastros.Funcionarios: iCrudFuncionarios;
begin
  if not Assigned(FFuncionarios) then
    FFuncionarios := TCrudFuncionarios.New;
  Result := FFuncionarios
end;

function TControllerCadastros.MovimentoCab: iCrudMovimentoCab;
begin
  if not Assigned(FMovimentoCab) then
    FMovimentoCab := TCrudMovimentoCab.New;
  Result := FMovimentoCab;
end;

function TControllerCadastros.MovimentoDetalhes: iCrudMovimentoDetalhes;
begin
  if not Assigned(FMovimentoDetalhes) then
    FMovimentoDetalhes := TCrudMovimentoDetalhes.New;
  Result := FMovimentoDetalhes
end;

function TControllerCadastros.MovimentoPag: iCrudMovimentoPag;
begin
  if not Assigned(FMovimentoPag) then
    FMovimentoPag := TCrudMovimentoPag.New;
  Result := FMovimentoPag
end;

class function TControllerCadastros.New: iControllerCadastros;
begin
  Result := Self.Create;
end;

function TControllerCadastros.Servicos: iCrudServicos;
begin
  if not Assigned(FServicos) then
    FServicos := TCrudServicos.New;
  Result := FServicos
end;

function TControllerCadastros.TipoServicos: iCrudTipoServicos;
begin
  if not Assigned(FTipoServicos) then
    FTipoServicos := TCrudTipoServicos.New;
  Result := FTipoServicos
end;

end.
