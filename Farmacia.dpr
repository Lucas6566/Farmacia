program Farmacia;

uses
  Vcl.Forms,
  Farmacia.View.Principal in 'src\View\Farmacia.View.Principal.pas' {FormPrincipal},
  Farmacia.View.Pesquisa.Pai in 'src\View\Pesquisa\Farmacia.View.Pesquisa.Pai.pas' {FormPesquisaPai},
  Farmacia.View.Pesquisa.Cliente in 'src\View\Pesquisa\Farmacia.View.Pesquisa.Cliente.pas' {FormPesquisaCliente},
  Farmacia.View.Cadastro.Pai in 'src\View\Cadastro\Farmacia.View.Cadastro.Pai.pas' {FormCadastroPai},
  Farmacia.View.Cadastro.Cliente in 'src\View\Cadastro\Farmacia.View.Cadastro.Cliente.pas' {FormCadastroCliente},
  Farmacia.View.Pesquisa.Funcionario in 'src\View\Pesquisa\Farmacia.View.Pesquisa.Funcionario.pas' {FormPesquisaFuncionario},
  Farmacia.View.Cadastro.Funcionario in 'src\View\Cadastro\Farmacia.View.Cadastro.Funcionario.pas' {FormCadastroFuncionario},
  Farmacia.Util.Types in 'src\Util\Farmacia.Util.Types.pas',
  Farmacia.Util.FunctionSQL in 'src\Util\Farmacia.Util.FunctionSQL.pas',
  Farmacia.View.Routers in 'src\View\Routers\Farmacia.View.Routers.pas',
  Farmacia.View.Main in 'Src\View\Farmacia.View.Main.pas' {FormMain},
  Farmacia.Service.LayoutGrid in 'Src\Service\Farmacia.Service.LayoutGrid.pas',
  Farmacia.View.Login in 'Src\View\Farmacia.View.Login.pas' {FormLogin},
  Farmacia.View.Cadastro.TipoServico in 'Src\View\Cadastro\Farmacia.View.Cadastro.TipoServico.pas' {FormCadastroTipoServico},
  Farmacia.View.Cadastro.Servico in 'Src\View\Cadastro\Farmacia.View.Cadastro.Servico.pas' {FormCadastroServico},
  Farmacia.View.Cadastro.Movimento in 'Src\View\Cadastro\Farmacia.View.Cadastro.Movimento.pas' {FormCadastroMovimento},
  Farmacia.View.Pesquisa.Movimento in 'Src\View\Pesquisa\Farmacia.View.Pesquisa.Movimento.pas' {FormPesquisaMovimento},
  Farmacia.View.Pesquisa.Servico in 'Src\View\Pesquisa\Farmacia.View.Pesquisa.Servico.pas' {FormPesquisaServico},
  Farmacia.Model.Connection.Interfaces in 'Src\Model\Farmacia.Model.Connection.Interfaces.pas',
  Farmacia.Model.Connection in 'Src\Model\Farmacia.Model.Connection.pas',
  Farmacia.View.Pesquisa.TipoServico in 'Src\View\Pesquisa\Farmacia.View.Pesquisa.TipoServico.pas' {FormPesquisaTipoServico},
  Farmacia.Model.Entity.TipoServicos in 'Src\Model\Entity\Farmacia.Model.Entity.TipoServicos.pas',
  Farmacia.Model.Entity.TipoServicos.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.TipoServicos.Interfaces.pas',
  Farmacia.Model.Dao.TipoServicos.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.TipoServicos.Interfaces.pas',
  Farmacia.Model.Dao.TipoServicos in 'Src\Model\Dao\Farmacia.Model.Dao.TipoServicos.pas',
  Farmacia.Model.Dao.Pai in 'Src\Model\Dao\Farmacia.Model.Dao.Pai.pas',
  Farmacia.Model.Dao.Pai.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.Pai.Interfaces.pas',
  Farmacia.Model.Entity.Servicos.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.Servicos.Interfaces.pas',
  Farmacia.Model.Entity.Servicos in 'Src\Model\Entity\Farmacia.Model.Entity.Servicos.pas',
  Farmacia.Model.Dao.Servicos.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.Servicos.Interfaces.pas',
  Farmacia.Model.Dao.Servicos in 'Src\Model\Dao\Farmacia.Model.Dao.Servicos.pas',
  Farmacia.Service.Conexao in 'Src\Service\Farmacia.Service.Conexao.pas',
  Farmacia.Model.Entity.Funcionarios.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.Funcionarios.Interfaces.pas',
  Farmacia.Model.Entity.Funcionarios in 'Src\Model\Entity\Farmacia.Model.Entity.Funcionarios.pas',
  Farmacia.Model.Dao.Funcionarios.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.Funcionarios.Interfaces.pas',
  Farmacia.Model.Dao.Funcionarios in 'Src\Model\Dao\Farmacia.Model.Dao.Funcionarios.pas',
  Farmacia.Model.Entity.Clientes.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.Clientes.Interfaces.pas',
  Farmacia.Model.Entity.Clientes in 'Src\Model\Entity\Farmacia.Model.Entity.Clientes.pas',
  Farmacia.Model.Dao.Clientes in 'Src\Model\Dao\Farmacia.Model.Dao.Clientes.pas',
  Farmacia.Model.Dao.Clientes.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.Clientes.Interfaces.pas',
  Farmacia.Util.Variaveis in 'Src\Util\Farmacia.Util.Variaveis.pas',
  Farmacia.Controller.Cadastros in 'Src\Controller\Farmacia.Controller.Cadastros.pas',
  Farmacia.Controller.Cadastros.Interfaces in 'Src\Controller\Farmacia.Controller.Cadastros.Interfaces.pas',
  Farmacia.Model.Dao.MovimentoCab in 'Src\Model\Dao\Farmacia.Model.Dao.MovimentoCab.pas',
  Farmacia.Model.Dao.MovimentoCab.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.MovimentoCab.Interfaces.pas',
  Farmacia.Model.Entity.MovimentoCab in 'Src\Model\Entity\Farmacia.Model.Entity.MovimentoCab.pas',
  Farmacia.Model.Entity.MovimentoCab.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.MovimentoCab.Interfaces.pas',
  Farmacia.Model.Entity.MovimentoDetalhes.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.MovimentoDetalhes.Interfaces.pas',
  Farmacia.Model.Entity.MovimentoDetalhes in 'Src\Model\Entity\Farmacia.Model.Entity.MovimentoDetalhes.pas',
  Farmacia.Model.Dao.MovimentoDetalhes in 'Src\Model\Dao\Farmacia.Model.Dao.MovimentoDetalhes.pas',
  Farmacia.Model.Dao.MovimentoDetalhes.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.MovimentoDetalhes.Interfaces.pas',
  Farmacia.Model.Dao.MovimentoPag in 'Src\Model\Dao\Farmacia.Model.Dao.MovimentoPag.pas',
  Farmacia.Model.Dao.MovimentoPag.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.MovimentoPag.Interfaces.pas',
  Farmacia.Model.Entity.MovimentoPag in 'Src\Model\Entity\Farmacia.Model.Entity.MovimentoPag.pas',
  Farmacia.Model.Entity.MovimentoPag.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.MovimentoPag.Interfaces.pas',
  Farmacia.View.Cadastro.Pagamento in 'Src\View\Cadastro\Farmacia.View.Cadastro.Pagamento.pas' {FormCadastroPagamento},
  Farmacia.Model.Entity.FormaPagamento.Interfaces in 'Src\Model\Entity\Farmacia.Model.Entity.FormaPagamento.Interfaces.pas',
  Farmacia.Model.Entity.FormaPagamento in 'Src\Model\Entity\Farmacia.Model.Entity.FormaPagamento.pas',
  Farmacia.Model.Dao.FormaPagamento in 'Src\Model\Dao\Farmacia.Model.Dao.FormaPagamento.pas',
  Farmacia.Model.Dao.FormaPagamento.Interfaces in 'Src\Model\Dao\Farmacia.Model.Dao.FormaPagamento.Interfaces.pas',
  Farmacia.View.Pesquisa.Generic in 'Src\View\Pesquisa\Farmacia.View.Pesquisa.Generic.pas' {FormPesquisaGeneric};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormPesquisaGeneric, FormPesquisaGeneric);
  Application.Run;
end.
