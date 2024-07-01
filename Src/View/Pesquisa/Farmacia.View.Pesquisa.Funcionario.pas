unit Farmacia.View.Pesquisa.Funcionario;

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
  Farmacia.View.Cadastro.Funcionario,
  Farmacia.Util.Types;

type
  TFormPesquisaFuncionario = class(TFormPesquisaPai, iRouter4DComponent)
    GridCodigo: TcxGridDBColumn;
    GridNome: TcxGridDBColumn;
    GridTipo: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure SpbConsultarClick(Sender: TObject);
  private

  public
    function Render : TForm;
    procedure unRender;
  end;

var
  FormPesquisaFuncionario: TFormPesquisaFuncionario;

implementation

{$R *.dfm}

uses Farmacia.Service.Conexao;

procedure TFormPesquisaFuncionario.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroFuncionario.FuncionarioShow(TpUpdate, FDados) then
    FDados
      .Funcionarios
        .Select
        .DataSet.Locate('COD_FUNCIONARIO', FDados.Funcionarios.Cadastro.GetCodigo, []);
end;

procedure TFormPesquisaFuncionario.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroFuncionario.FuncionarioShow(TpDelete, FDados) then
    FDados
      .Funcionarios
        .Select;
end;

procedure TFormPesquisaFuncionario.BtnNewClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroFuncionario.FuncionarioShow(TpInsert, FDados) then
    FDados
      .Funcionarios
        .Select
        .DataSet.Locate('COD_FUNCIONARIO', FDados.Funcionarios.Cadastro.GetCodigo, []);
end;

procedure TFormPesquisaFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  DS.DataSet := FDados.Funcionarios.DataSet;
  FDados.Funcionarios.Select;
  GridPesquisaDBTableViewColumnHeaderClick(GridPesquisaDBTableView, GridPesquisaDBTableView.Columns[0]);
end;

function TFormPesquisaFuncionario.Render: TForm;
begin
  Result := Self;
end;

procedure TFormPesquisaFuncionario.SpbConsultarClick(Sender: TObject);
begin
  inherited;
  TFormCadastroFuncionario.FuncionarioShow(TpSelect, FDados);
end;

procedure TFormPesquisaFuncionario.unRender;
begin
  //
end;

end.