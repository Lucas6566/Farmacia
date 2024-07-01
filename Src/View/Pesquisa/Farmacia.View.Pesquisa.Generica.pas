unit Farmacia.View.Pesquisa.Generica;

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
  Vcl.ExtCtrls, Vcl.Menus, cxButtons;

type
  TFormPesquisaGenerica = class(TFormPesquisaPai)
    GridGeneric: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnAdiPesquisarClick(Sender: TObject);
  private
    FDS : TDataSource;
    FField : String;
  public
    class function ShowFormGerneric(pTable, pField, pFieldCaption, pTittlePesq : String; pDS: TDataSource): String;
  end;

var
  FormPesquisaGenerica: TFormPesquisaGenerica;

implementation

{$R *.dfm}

{ TFormPesquisaGenerica }

procedure TFormPesquisaGenerica.btnAdiPesquisarClick(Sender: TObject);
begin
  inherited;
  if FDS.DataSet.FieldByName(FField).DataType = ftString then
    FDS.DataSet.Locate(FField, EdtSearch.Text+'%', [])
  else
    FDS.DataSet.Locate(FField, EdtSearch.Text, []);
  FDS.DataSet.Open;
end;

procedure TFormPesquisaGenerica.FormCreate(Sender: TObject);
begin
  inherited;
  FormPesquisaGenerica.GridGeneric.DataBinding.DataController.DataSource := FDS;
  FormPesquisaGenerica.GridGeneric.DataBinding.FieldName := FField;
end;

class function TFormPesquisaGenerica.ShowFormGerneric(pTable, pField,
  pFieldCaption, pTittlePesq: String; pDS: TDataSource): String;
begin
  FormPesquisaGenerica := TFormPesquisaGenerica.Create(nil);
  try
    FormPesquisaGenerica.LblTitleForm.Caption := pTittlePesq;
    FormPesquisaGenerica.GridGeneric.Caption := pFieldCaption;
    FormPesquisaGenerica.FField := pField;
    FormPesquisaGenerica.FDS := pDS;

    FormPesquisaGenerica.ShowModal;
  finally
    FreeAndNil(FormPesquisaGenerica);
  end;
end;

end.
