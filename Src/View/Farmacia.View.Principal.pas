unit Farmacia.View.Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Router4D,
  Farmacia.View.Login,
  Farmacia.Service.Conexao,
  Farmacia.Util.Variaveis,
  Vcl.Imaging.pngimage,
  uMPanel;

type
  TFormPrincipal = class(TForm)
    PnlPrincipal: TPanel;
    PnlMainTop: TPanel;
    PnlLogo: TPanel;
    PnlMainFull: TPanel;
    PnlMainCenter: TPanel;
    ImageList: TImageList;
    pnlCadastros: TPanel;
    pnlCadastrosHome: TPanel;
    pnlFuncionario: TmPanelButton;
    imgFuncionario: TImage;
    pnlTipoServicos: TmPanelButton;
    imgTipoServico: TImage;
    pnlServicos: TmPanelButton;
    imgServicos: TImage;
    pnlClientes: TmPanelButton;
    imgClientes: TImage;
    pnlMenu: TPanel;
    pnlMenus: TmPanelButton;
    imgMenu: TImage;
    pnlCadastro: TmPanelButton;
    imgCadastros: TImage;
    pnlRelatorio: TmPanelButton;
    imgRelatorios: TImage;
    pnlMovimento: TmPanelButton;
    imgMovimentos: TImage;
    pnlMovimentos: TPanel;
    PnlVendas: TmPanelButton;
    Image1: TImage;
    pnlMovimentosHome: TPanel;
    procedure SbtHomeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure pnlMenusClick(Sender: TObject);
    procedure pnlCadastroClick(Sender: TObject);
    procedure pnlClientesClick(Sender: TObject);
    procedure pnlFuncionarioClick(Sender: TObject);
    procedure pnlServicosClick(Sender: TObject);
    procedure pnlTipoServicosClick(Sender: TObject);
    procedure pnlMovimentoClick(Sender: TObject);
    procedure PnlVendasClick(Sender: TObject);
  private
    FNameForm : String;
    procedure DesabilitarMenu;
    procedure DesabilitaSubMenu(pPanelMenu, pPanelSub: TPanel; pCaption: String);
    procedure OpenForm(pNameForm: String);
  public
    function Render : TForm;
    procedure unRender;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses Farmacia.View.Main;

{ TFormPrincipal }

procedure TFormPrincipal.DesabilitarMenu;
begin
  pnlCadastros.Visible   := False;
  pnlMovimentos.Visible  := False;
  pnlCadastro.Caption    := '           Cadastros';
  pnlMovimento.Caption   := '           Movimentos';
  pnlRelatorio.Caption   := '           Relatórios';
end;

procedure TFormPrincipal.DesabilitaSubMenu(pPanelMenu, pPanelSub: TPanel;
  pCaption: String);
begin
  if not pPanelSub.Visible then
  begin
    pPanelMenu.Caption  := '           '+pCaption+' >>';
    pPanelSub.Visible := True;
    pPanelSub.Width   := 190;
  end
  else
  begin
    pPanelMenu.Caption  := '           '+pCaption;
    pPanelSub.Visible := False;
    pPanelSub.Width   := 0;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
  Connection := TConexao.Create;

  TRouter4D
    .Render<TFormMain>
      .SetElement(PnlMainCenter, PnlPrincipal);
end;

procedure TFormPrincipal.FormDestroy(Sender: TObject);
begin
  if Assigned(Connection) then
    FreeAndNil(Connection);
end;

procedure TFormPrincipal.OpenForm(pNameForm: String);
begin
  DesabilitarMenu;
  TRouter4D.Link.&To(pNameForm);
end;

procedure TFormPrincipal.pnlCadastroClick(Sender: TObject);
begin
  DesabilitaSubMenu(pnlCadastro, pnlCadastros, 'Cadastros');
end;

procedure TFormPrincipal.pnlClientesClick(Sender: TObject);
begin
  OpenForm('Cliente');
end;

procedure TFormPrincipal.pnlFuncionarioClick(Sender: TObject);
begin
  OpenForm('Funcionario');
end;

procedure TFormPrincipal.pnlMenusClick(Sender: TObject);
begin
  DesabilitarMenu;
end;

procedure TFormPrincipal.pnlMovimentoClick(Sender: TObject);
begin
  DesabilitaSubMenu(pnlMovimento, pnlMovimentos, 'Cadastros');
end;

procedure TFormPrincipal.pnlServicosClick(Sender: TObject);
begin
  OpenForm('Servico');
end;

procedure TFormPrincipal.pnlTipoServicosClick(Sender: TObject);
begin
  OpenForm('TipoServico');
end;

procedure TFormPrincipal.PnlVendasClick(Sender: TObject);
begin
  OpenForm('Movimento');
end;

function TFormPrincipal.Render: TForm;
begin
  Result := Self;
end;

procedure TFormPrincipal.SbtHomeClick(Sender: TObject);
begin
  OpenForm('Principal');
end;

procedure TFormPrincipal.unRender;
begin
  //
end;

end.
