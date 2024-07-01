unit Farmacia.Service.Conexao;

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
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.ODBC,
  FireDAC.Phys.ODBCDef,
  FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Phys.ODBCBase,
  FireDAC.Comp.UI;

type
  TFormConexao = class(TForm)
    FDConnection: TFDConnection;
    FDGUIxErrorDialog1: TFDGUIxErrorDialog;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysODBCDriverLink1: TFDPhysODBCDriverLink;
    QyBairros: TFDQuery;
    QyBairrosSEQ_BAIRRO: TIntegerField;
    QyBairrosNOM_CIDADE: TWideStringField;
    QyBairrosNOM_BAIRRO: TWideStringField;
    QyBairrosSIG_UF: TWideStringField;
    QyBairrosVLR_FRETE: TBCDField;
    QyBairrosCOD_USUARIO_ALT: TIntegerField;
    QyBairrosDAT_CADASTRO: TSQLTimeStampField;
    QyBairrosDAT_ALTERACAO: TSQLTimeStampField;
    QyClientes: TFDQuery;
    QyClientesCOD_CLIENTE: TIntegerField;
    QyClientesNOM_CLIENTE: TStringField;
    QyClientesIND_DOCUMENTO: TIntegerField;
    QyClientesDOC_CLIENTE: TStringField;
    QyClientesNUM_CEP: TStringField;
    QyClientesEND_LOGRADOURO: TStringField;
    QyClientesNUM_ENDERECO: TIntegerField;
    QyClientesNOM_BAIRRO: TStringField;
    QyClientesNOM_CIDADE: TStringField;
    QyClientesSIG_UF: TStringField;
    QyClientesEND_COMPLEMENTO: TStringField;
    QyClientesEND_ELETRONICO: TStringField;
    QyClientesTEL_FIXO: TStringField;
    QyClientesTEL_FAX: TStringField;
    QyClientesTEL_CELULAR: TStringField;
    QyClientesCOD_USUARIO_ALT: TIntegerField;
    QyClientesDAT_CADASTRO: TSQLTimeStampField;
    QyClientesDAT_ALTERACAO: TSQLTimeStampField;
    QyFuncionarios: TFDQuery;
    QyFuncionariosCOD_FUNCIONARIO: TIntegerField;
    QyFuncionariosNOM_FUNCIONARIO: TStringField;
    QyFuncionariosTIP_FUNCIONARIO: TIntegerField;
    QyFuncionariosCOD_USUARIO_ALT: TIntegerField;
    QyFuncionariosDAT_CADASTRO: TSQLTimeStampField;
    QyFuncionariosDAT_ALTERACAO: TSQLTimeStampField;
    QyUsuario: TFDQuery;
    QyUsuarioCOD_USUARIO: TIntegerField;
    QyUsuarioNOM_USUARIO: TStringField;
    QyUsuarioLOG_USUARIO: TStringField;
    QyUsuarioSEN_USUARIO: TStringField;
    QyUsuarioCOD_USUARIO_ALT: TIntegerField;
    QyUsuarioDAT_CADASTRO: TSQLTimeStampField;
    QyUsuarioDAT_ALTERACAO: TSQLTimeStampField;
    QyTipoServico: TFDQuery;
    QyTipoServicoCOD_TIPO: TIntegerField;
    QyTipoServicoDES_TIPO: TStringField;
    QyTipoServicoCOD_USUARIO_ALT: TIntegerField;
    QyTipoServicoDAT_CADASTRO: TSQLTimeStampField;
    QyTipoServicoDAT_ALTERACAO: TSQLTimeStampField;
    QyServico: TFDQuery;
    QyServicoCOD_SERVICO: TIntegerField;
    QyServicoDES_SERVICO: TStringField;
    QyServicoTIP_SERVICO: TIntegerField;
    QyServicoVLR_SERVICO: TBCDField;
    QyServicoCOD_USUARIO_ALT: TIntegerField;
    QyServicoDAT_CADASTRO: TSQLTimeStampField;
    QyServicoDAT_ALTERACAO: TSQLTimeStampField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConexao: TFormConexao;

implementation

{$R *.dfm}

end.
