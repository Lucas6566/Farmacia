unit Farmacia.View.Pesquisa.Movimento;

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
  Farmacia.View.Cadastro.Movimento,
  Farmacia.Util.Types, Vcl.Menus, cxButtons;

type
  TFormPesquisaMovimento = class(TFormPesquisaPai, iRouter4DComponent)
    GridCodigo: TcxGridDBColumn;
    GridCodCliente: TcxGridDBColumn;
    GridNomeCliente: TcxGridDBColumn;
    GridVlrSubTotal: TcxGridDBColumn;
    GridVlrDesconto: TcxGridDBColumn;
    GridVlrAcrescimo: TcxGridDBColumn;
    GridVlrTotal: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure BtnNewClick(Sender: TObject);
    procedure SpbConsultarClick(Sender: TObject);
  private

  public
    function Render : TForm;
    procedure unRender;
  end;

var
  FormPesquisaMovimento: TFormPesquisaMovimento;

implementation

{$R *.dfm}

procedure TFormPesquisaMovimento.BtnAlterarClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroMovimento.MovimentoShow(TpUpdate, FDados) then
    FDados
      .MovimentoCab
        .Select
        .DataSet.Locate('COD_MOVIMENTO', FDados.MovimentoCab.Cadastro.GetCodMovimento, []);
end;

procedure TFormPesquisaMovimento.btnExcluirClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroMovimento.MovimentoShow(TpDelete, FDados) then
    FDados
      .MovimentoCab
        .Select;
end;

procedure TFormPesquisaMovimento.BtnNewClick(Sender: TObject);
begin
  inherited;
  if TFormCadastroMovimento.MovimentoShow(TpInsert, FDados) then
    FDados
      .MovimentoCab
        .Select
        .DataSet.Locate('COD_MOVIMENTO', FDados.MovimentoCab.Cadastro.GetCodMovimento, []);
end;

procedure TFormPesquisaMovimento.FormCreate(Sender: TObject);
begin
  inherited;
  DS.DataSet := FDados.MovimentoCab.DataSet;
  FDados.MovimentoCab.Select;
  GridPesquisaDBTableViewColumnHeaderClick(GridPesquisaDBTableView, GridPesquisaDBTableView.Columns[0]);
end;

function TFormPesquisaMovimento.Render: TForm;
begin
  Result := Self;
end;

procedure TFormPesquisaMovimento.SpbConsultarClick(Sender: TObject);
begin
  inherited;
  TFormCadastroMovimento.MovimentoShow(TpSelect, FDados);
end;

procedure TFormPesquisaMovimento.unRender;
begin
  //
end;

end.
