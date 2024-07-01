unit Farmacia.Controller.Cadastros.Interfaces;

interface

uses
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
  iControllerCadastros = Interface
    ['{FA7ED330-B5F5-4A0F-90F0-6BFB833D41FF}']
    function Clientes : iCrudClientes;
    function Funcionarios : iCrudFuncionarios;
    function Servicos : iCrudServicos;
    function TipoServicos : iCrudTipoServicos;
    function MovimentoCab : iCrudMovimentoCab;
    function MovimentoDetalhes : iCrudMovimentoDetalhes;
    function MovimentoPag : iCrudMovimentoPag;
    function FormaPagamento : iCrudFormaPagamento;
  End;


implementation

end.
