unit Farmacia.View.Cadastro.Pai;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Farmacia.Util.Types,
  Vcl.Buttons,
  Farmacia.Util.FunctionSQL,
  Data.DB,
  Farmacia.Controller.Cadastros.Interfaces,
  Farmacia.Controller.Cadastros;

type
  TFormCadastroPai = class(TForm)
    PnlBackground: TPanel;
    Panel2: TPanel;
    SpbGravar: TSpeedButton;
    SpbCancelar: TSpeedButton;
    DS: TDataSource;
    procedure SpbCancelarClick(Sender: TObject);
    procedure SpbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  protected
    FTypeOperation : TTypeOperation;
    FDados : iControllerCadastros;
    FForm : TForm;

    procedure ClearFields;
    procedure ReadOnlyFields;
    procedure ButtonCfg;
    function GetCodigo(pTable, pField : String): String;
  public

  end;

var
  FormCadastroPai: TFormCadastroPai;

implementation

{$R *.dfm}

{ TFormCadastroPai }

procedure TFormCadastroPai.ButtonCfg;
begin
  if FTypeOperation = TpSelect then
  begin
    SpbGravar.Visible := False;
    SpbCancelar.Caption := 'Fechar';
  end
  else begin
    SpbGravar.Visible := True;
    SpbCancelar.Caption := 'Cancelar';
  end;
end;

procedure TFormCadastroPai.ClearFields;
var
  I: Integer;
begin
  for I := 0 to FForm.ComponentCount -1 do begin
    if FForm.Components[i] is TEdit then
      (FForm.Components[i] as TEdit).Text := '';
    if FForm.Components[i] is TComboBox then
      (FForm.Components[i] as TComboBox).ItemIndex := -1;
  end;
end;

procedure TFormCadastroPai.FormCreate(Sender: TObject);
begin
  FDados := TControllerCadastros.New;
end;

procedure TFormCadastroPai.FormShow(Sender: TObject);
begin
  if FTypeOperation = TpSelect then
    ReadOnlyFields;
  ButtonCfg;
end;

function TFormCadastroPai.GetCodigo(pTable, pField: String): String;
begin
  Result := '';
  if FTypeOperation = TpInsert then
    Result := IntToStr(GetCodigoSql(pTable, pField));
end;

procedure TFormCadastroPai.ReadOnlyFields;
var
  I: Integer;
begin
  for I := 0 to FForm.ComponentCount -1 do begin
    if FForm.Components[i] is TEdit then
      (FForm.Components[i] as TEdit).ReadOnly := True;
    if FForm.Components[i] is TEdit then
      (FForm.Components[i] as TEdit).ReadOnly := True;
    if FForm.Components[i] is TComboBox then
      (FForm.Components[i] as TComboBox).Enabled := True;
  end;

end;

procedure TFormCadastroPai.SpbCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCadastroPai.SpbGravarClick(Sender: TObject);
begin
  ModalResult := mrOk;
end;

end.
