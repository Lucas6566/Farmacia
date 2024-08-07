unit Farmacia.View.Pesquisa.Cliente;

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
  Farmacia.View.Pesquisa.Pai,
  cxGraphics,
  cxControls,
  cxLookAndFeels,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinBlack,
  cxStyles,
  cxCustomData,
  cxFilter,
  cxData,
  cxDataStorage,
  cxEdit,
  cxNavigator,
  dxDateRanges,
  dxScrollbarAnnotations,
  Data.DB,
  cxDBData,
  cxContainer,
  cxTextEdit,
  Vcl.Buttons,
  Vcl.StdCtrls,
  cxLabel,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  Vcl.ExtCtrls,
  Router4D.Interfaces,
  Router4D,
  Farmacia.View.Cadastro.Cliente,
  Farmacia.Util.Types, Vcl.Menus, cxButtons;

type
  TFormPesquisaCliente = class(TFormPesquisaPai, iRouter4DComponent)
    GridCodigo: TcxGridDBColumn;
    GridNome: TcxGridDBColumn;
    GridNumDoc: TcxGridDBColumn;
    GridTelefone: TcxGridDBColumn;
    GridEletronico: TcxGridDBColumn;
    GridBairro: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure SpbConsultarClick(Sender: TObject);
  private

  public
    function Render : TForm;
    procedure unRender;
  end;

var
  FormPesquisaCliente: TFormPesquisaCliente;

implementation

{$R *.dfm}

uses Farmacia.Service.Conexao;

procedure TFormPesquisaCliente.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroCliente.ClienteShow(TpUpdate, FDados) then
    FDados
      .Clientes
        .Select
        .DataSet.Locate('COD_CLIENTE', FDados.Clientes.Cadastro.GetCodigo, []);
end;

procedure TFormPesquisaCliente.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroCliente.ClienteShow(TpDelete, FDados) then
    FDados
      .Clientes
        .Select;
end;

procedure TFormPesquisaCliente.BtnNewClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroCliente.ClienteShow(TpInsert, FDados) then
    FDados
      .Clientes
        .Select
        .DataSet.Locate('COD_CLIENTE', FDados.Clientes.Cadastro.GetCodigo, []);
end;

procedure TFormPesquisaCliente.FormCreate(Sender: TObject);
begin
  inherited;
  DS.DataSet := FDados.Clientes.DataSet;
  FDados.Clientes.Select;
  GridPesquisaDBTableViewColumnHeaderClick(GridPesquisaDBTableView, GridPesquisaDBTableView.Columns[0]);
end;

function TFormPesquisaCliente.Render: TForm;
begin
  Result := Self;
end;

procedure TFormPesquisaCliente.SpbConsultarClick(Sender: TObject);
begin
  inherited;
  TFormCadastroCliente.ClienteShow(TpSelect, FDados);
end;

procedure TFormPesquisaCliente.unRender;
begin
  //
end;

end.
