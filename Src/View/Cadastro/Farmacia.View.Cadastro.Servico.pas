unit Farmacia.View.Cadastro.Servico;

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
  Vcl.Buttons,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Farmacia.Util.Types,
  Farmacia.Service.Conexao,
  Data.DB,
  Farmacia.Controller.Cadastros.Interfaces, dxSkinsCore, dxSkinBlack,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxButtons,
  Farmacia.View.Pesquisa.Generic;

type
  TFormCadastroServico = class(TFormCadastroPai)
    EdtDesc: TEdit;
    Label2: TLabel;
    Label1: TLabel;
    EdtCodigo: TEdit;
    EdtValor: TEdit;
    Label3: TLabel;
    Panel3: TPanel;
    EdtDescTipoServico: TEdit;
    Label4: TLabel;
    EdtCodTipoServico: TEdit;
    btnTipoPesquisa: TcxButton;
    procedure SpbGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpbCancelarClick(Sender: TObject);
    procedure btnTipoPesquisaClick(Sender: TObject);
  private
    FDados : iControllerCadastros;

    procedure OpenRegister;
    procedure IncludeData;
    procedure GetRegister;
    procedure IncludeRegister;
    procedure GetRegisterTipoServico;
  public
    class function ServicoShow(pTypeOperation: TTypeOperation; pDados: iControllerCadastros): Boolean;
  end;

var
  FormCadastroServico: TFormCadastroServico;

implementation

{$R *.dfm}

{ TFormCadastroServico }

procedure TFormCadastroServico.btnTipoPesquisaClick(Sender: TObject);
var
  lCodigo : String;
begin
  inherited;
  lCodigo := TFormPesquisaGeneric.ShowFormGerneric('TIPO_SERVICOS','DES_TIPO', 'COD_TIPO', 'Servi�o', FDados.TipoServicos.Select.DataSet);
  if lCodigo <> '' then begin
    FDados.TipoServicos.Select.DataSet.Locate('COD_TIPO', lCodigo, []);
    GetRegisterTipoServico;
  end;
end;

procedure TFormCadastroServico.FormCreate(Sender: TObject);
begin
  inherited;
  FForm := Self;
end;

procedure TFormCadastroServico.GetRegister;
begin
  FDados.Servicos.AlimentaDados;

  EdtCodigo.Text         :=  FDados.Servicos.Cadastro.GetCodigo.ToString;
  EdtDesc.Text           :=  FDados.Servicos.Cadastro.GetDescricao;
  EdtCodTipoServico.Text :=  FDados.Servicos.Cadastro.GetTipoServico.ToString;
  EdtValor.Text          :=  FDados.Servicos.Cadastro.GetValor.ToString;
end;

procedure TFormCadastroServico.GetRegisterTipoServico;
begin
  FDados.TipoServicos.AlimentaDados;
  EdtCodTipoServico.Text  := FDados.TipoServicos.Cadastro.GetCodigo.ToString;
  EdtDescTipoServico.Text := FDados.TipoServicos.Cadastro.GetDescricao;
end;

procedure TFormCadastroServico.IncludeData;
begin
  FDados
    .Servicos
      .Cadastro
         .Codigo(StrToInt(EdtCodigo.Text))
         .Descricao(EdtDesc.Text)
         .TipoServico(StrToIntDef(EdtCodTipoServico.Text,0))
         .Valor(StrToFloatDef(EdtValor.Text,0));
end;

procedure TFormCadastroServico.IncludeRegister;
begin
  case FTypeOperation of
    TpInsert : begin
      FDados
        .Servicos
          .Insert;
    end;

    TpUpdate : begin
      FDados
        .Servicos
          .Update;
    end;

    TpDelete : begin
      FDados
        .Servicos
          .Delete;
    end;
  end;
end;

procedure TFormCadastroServico.OpenRegister;
begin
  case FTypeOperation of
    TpInsert : begin
      EdtCodigo.Text := GetCodigo('Servicos', 'Cod_Servico');
    end else
      GetRegister;
  end;
end;

class function TFormCadastroServico.ServicoShow(pTypeOperation: TTypeOperation;
  pDados: iControllerCadastros): Boolean;
begin
  Result := False;

  FormCadastroServico := TFormCadastroServico.Create(nil);
  try
    FormCadastroServico.FTypeOperation := pTypeOperation;
    FormCadastroServico.FDados := pDados;
    FormCadastroServico.OpenRegister;
    FormCadastroServico.ShowModal;
    if FormCadastroServico.ModalResult = mrOk then
      Result := True;
  finally
    FreeAndNil(FormCadastroServico);
  end;
end;

procedure TFormCadastroServico.SpbCancelarClick(Sender: TObject);
begin
  inherited;
  //
end;

procedure TFormCadastroServico.SpbGravarClick(Sender: TObject);
begin
  inherited;
  IncludeData;
  IncludeRegister;
end;

end.