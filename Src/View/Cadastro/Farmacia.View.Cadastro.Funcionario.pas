unit Farmacia.View.Cadastro.Funcionario;

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
  Farmacia.View.Cadastro.Pai,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.ComCtrls,
  Farmacia.Util.Types,
  Farmacia.Util.FunctionSQL, Data.DB, Farmacia.Controller.Cadastros.Interfaces;

type
  TFormCadastroFuncionario = class(TFormCadastroPai)
    EdtCodigo: TEdit;
    Label1: TLabel;
    EdtNome: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    CbxTipoFuncionario: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SpbGravarClick(Sender: TObject);
    procedure SpbCancelarClick(Sender: TObject);
  private
    procedure OpenRegister;
    procedure IncludeData;
    procedure GetRegister;
    procedure IncludeRegister;
  public
    class function FuncionarioShow(pTypeOperation : TTypeOperation; pDados: iControllerCadastros): Boolean;
  end;

var
  FormCadastroFuncionario: TFormCadastroFuncionario;

implementation

{$R *.dfm}

uses Farmacia.Service.Conexao;

{ TFormCadastroFuncionario }

procedure TFormCadastroFuncionario.FormCreate(Sender: TObject);
begin
  inherited;
  FForm := Self;
end;

class function TFormCadastroFuncionario.FuncionarioShow(
  pTypeOperation: TTypeOperation; pDados: iControllerCadastros): Boolean;
begin
  Result := False;
  FormCadastroFuncionario := TFormCadastroFuncionario.Create(nil);
  try
    FormCadastroFuncionario.FTypeOperation := pTypeOperation;
    FormCadastroFuncionario.FDados := pDados;
    FormCadastroFuncionario.OpenRegister;
    FormCadastroFuncionario.ShowModal;
    if FormCadastroFuncionario.ModalResult = mrOk then
      Result := True;
  finally
    FreeAndNil(FormCadastroFuncionario);
  end;
end;

procedure TFormCadastroFuncionario.GetRegister;
begin
  FDados.Funcionarios.AlimentaDados;

  EdtCodigo.Text := FDados.Funcionarios.Cadastro.GetCodigo.ToString;
  EdtNome.Text   := FDados.Funcionarios.Cadastro.GetNome;
  CbxTipoFuncionario.ItemIndex := FDados.Funcionarios.Cadastro.GetTipo;
end;

procedure TFormCadastroFuncionario.IncludeData;
begin
  FDados
    .Funcionarios
      .Cadastro
        .Codigo(StrToInt(EdtCodigo.Text))
        .Nome(EdtNome.Text)
        .Tipo(CbxTipoFuncionario.ItemIndex);
end;

procedure TFormCadastroFuncionario.IncludeRegister;
begin
  case FTypeOperation of
    TpInsert : begin
      FDados
        .Funcionarios
          .Insert;
    end;

    TpUpdate : begin
      FDados
        .Funcionarios
          .Update;
    end;

    TpDelete : begin
      FDados
        .Funcionarios
          .Delete;
    end;
  end;
end;

procedure TFormCadastroFuncionario.OpenRegister;
begin
  case FTypeOperation of
    TpInsert : begin
      EdtCodigo.Text := GetCodigo('Funcionarios', 'Cod_Funcionario');
    end else
      GetRegister;
  end;
end;

procedure TFormCadastroFuncionario.SpbCancelarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFormCadastroFuncionario.SpbGravarClick(Sender: TObject);
begin
  IncludeData;
  IncludeRegister;
  inherited;
end;


end.