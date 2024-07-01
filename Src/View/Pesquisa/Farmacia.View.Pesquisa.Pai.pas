unit Farmacia.View.Pesquisa.Pai;

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
  Farmacia.Service.LayoutGrid,
  Farmacia.Controller.Cadastros.Interfaces,
  Farmacia.Controller.Cadastros, Vcl.Menus, cxButtons;

type
  TFormPesquisaPai = class(TForm)
    PnlMainCenter: TPanel;
    PnlButton: TPanel;
    PnlClient: TPanel;
    GridPesquisa: TcxGrid;
    GridPesquisaDBTableView: TcxGridDBTableView;
    GridPesquisaLevel: TcxGridLevel;
    PnlTop: TPanel;
    PnlTopTitle: TPanel;
    LblTitleForm: TcxLabel;
    PnlTopInfo: TPanel;
    LblSearch: TLabel;
    EdtSearch: TcxTextEdit;
    Panel1: TPanel;
    BtnNew: TSpeedButton;
    BtnAlterar: TSpeedButton;
    btnExcluir: TSpeedButton;
    DS: TDataSource;
    SpbConsultar: TSpeedButton;
    btnServPesquisa: TcxButton;
    procedure GridPesquisaDBTableViewColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnServPesquisaClick(Sender: TObject);
  private
    FLayoutGrid : iLayoutGrid;

  protected
    FDados : iControllerCadastros;
    FField : String;
  public

  end;

var
  FormPesquisaPai: TFormPesquisaPai;

implementation

{$R *.dfm}


procedure TFormPesquisaPai.btnServPesquisaClick(Sender: TObject);
begin
  if EdtSearch.Text <> '' then
    DS.DataSet.Locate(FField, EdtSearch.Text, []);
end;

procedure TFormPesquisaPai.FormCreate(Sender: TObject);
begin
  FDados := TControllerCadastros.New;
end;

procedure TFormPesquisaPai.FormShow(Sender: TObject);
begin
  FLayoutGrid := TLayoutGrid.New;

  FLayoutGrid.SetGrid(GridPesquisaDBTableView)
             .StartLayout;

end;

procedure TFormPesquisaPai.GridPesquisaDBTableViewColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  FField := AColumn.DataBinding.FilterFieldName;
  LblSearch.Caption := 'Fitrar ' + AColumn.Caption;
end;



end.
