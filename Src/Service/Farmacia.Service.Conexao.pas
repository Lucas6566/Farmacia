unit Farmacia.Service.Conexao;

interface

uses
  FireDAC.Comp.Client,
  IniFiles,
  System.SysUtils,
  Vcl.Forms,
  Farmacia.Model.Connection.Interfaces,
  Farmacia.Model.Connection;

type
  TConexao = class
  private
    FConnecta : iModelConnection;
    FConnect: TFDConnection;
    function GetConnect: TFDConnection;
    procedure GetArquivoCfg;
    procedure Connectar;
  public
    property Connect: TFDConnection read GetConnect;
  public
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TConexao }

constructor TConexao.Create;
begin
  Connectar;
end;

destructor TConexao.Destroy;
begin

  inherited;
end;

procedure TConexao.Connectar;
begin
  FConnecta := TConnection.New;
  GetArquivoCfg;
  FConnecta.Connect;
  FConnect := FConnecta.Connection;
end;

procedure TConexao.GetArquivoCfg;
var
  lArquivo : TIniFile;
begin
  lArquivo := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');

  FConnecta.DriveID(lArquivo.ReadString('BANCO','DRIVEID','MYSQL'))
           .DataBase(lArquivo.ReadString('BANCO','DATABASE','farmacia'))
           .UserName(lArquivo.ReadString('BANCO','USERNAME','root'))
           .Password(lArquivo.ReadString('BANCO','PASSWORD','03210212'))
           .Server(lArquivo.ReadString('BANCO','SERVER','LOCALHOST'))
           .Port(lArquivo.ReadString('BANCO','PORT','3306'));
end;

function TConexao.GetConnect: TFDConnection;
begin
  if not Assigned(FConnecta) then
    Connectar;
  Result := FConnect;
end;

end.