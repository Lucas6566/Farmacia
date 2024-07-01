unit Farmacia.Model.Connection;

interface

uses
  System.SysUtils,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Error,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.ExprFuncs,
  Data.DB,
  FireDAC.DApt,
  FireDAC.Stan.Param,
  FireDAC.Comp.Client,
  Farmacia.Model.Connection.Interfaces;

type
  TConnection = class(TInterfacedObject, iModelConnection)
    private
      FDriveID : String;
      FDataBase : String;
      FUserName : String;
      FPassword : String;
      FServer : String;
      FPort : String;
      FConnection : TFDConnection;
    public
      function Connection : TFDConnection;
      function Connect : iModelConnection;

      function DriveID(aValue: String): iModelConnection;
      function DataBase(aValue: String): iModelConnection;
      function UserName(aValue: String): iModelConnection;
      function Password(aValue: String): iModelConnection;
      function Server(aValue: String): iModelConnection;
      function Port(aValue: String): iModelConnection;

      constructor Create;
      destructor Destroy; override;
      class function New : iModelConnection;
  end;

implementation

{ TConnection }

function TConnection.Connect: iModelConnection;
begin
  Result := Self;

  FConnection.LoginPrompt := False;
  FConnection.Close;
  FConnection.Params.Clear;

  FConnection.Params.Add('Database='+FDataBase);
  FConnection.Params.Add('User_Name='+FUserName);
  FConnection.Params.Add('Password='+FPassword);
  FConnection.Params.Add('Server='+FServer);
  FConnection.Params.Add('DriverID='+FDriveID);
  FConnection.Params.Add('Port='+FPort);

  FConnection.Connected := True;
end;

function TConnection.Connection: TFDConnection;
begin
  Result := FConnection;
end;

constructor TConnection.Create;
begin
  FConnection  := TFDConnection.Create(nil);
end;

function TConnection.DataBase(aValue: String): iModelConnection;
begin
  Result := Self;
  FDataBase := aValue;
end;

destructor TConnection.Destroy;
begin
  FConnection.DisposeOf;
  inherited;
end;

function TConnection.DriveID(aValue: String): iModelConnection;
begin
  Result := Self;
  FDriveID := aValue;
end;

class function TConnection.New: iModelConnection;
begin
  Result := Self.Create;
end;

function TConnection.Password(aValue: String): iModelConnection;
begin
  Result := Self;
  FPassword := aValue;
end;

function TConnection.Port(aValue: String): iModelConnection;
begin
  Result := Self;
  FPort := aValue;
end;

function TConnection.Server(aValue: String): iModelConnection;
begin
  Result := Self;
  FServer := aValue;
end;

function TConnection.UserName(aValue: String): iModelConnection;
begin
  Result := Self;
  FUserName := aValue;
end;

end.
