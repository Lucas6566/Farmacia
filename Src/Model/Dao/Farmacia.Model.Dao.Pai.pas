unit Farmacia.Model.Dao.Pai;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  Data.DB,
  Datasnap.DBClient,
  FireDAC.Stan.Param,
  FireDAC.Comp.Client,
  FireDAC.DApt,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.VCLUI.Wait,
  Midaslib,
  //Farmacia.Model.Dao.Pai.Interfaces,
  Farmacia.Util.FunctionSQL,
  Farmacia.Util.Variaveis;

type
  TParamSql = Record
    Id    : Integer;
    Key   : String;
    Param : String;
    Value : String;
  end;

  iDaoPai = interface
    ['{BEDA3FC0-0264-4B24-8838-9F330B70BF4A}']
    function GetInstancia: iDaoPai;
    function GetParam : String;
    function AddParam(pKey, pParam, pValue: String): iDaoPai;
    function ClientDataSet : TClientDataSet;
  end;

  TDaoPai = class(TInterfacedObject, iDaoPai)
  private
    FQuery : TFDQuery;
    FClientDataSet : TClientDataSet;
    FParam : TParamSql;
    FParamList : TDictionary<Integer,TParamSql>;
  public
    function GetInstancia: iDaoPai;
    function GetParam : String;
    function AddParam(pKey, pParam, pValue: String): iDaoPai;
    function ClientDataSet : TClientDataSet;
    function Query : TFDQuery;
    function OpenQueryPai : iDaoPai;

    constructor Create;
    destructor Destroy; override;
    class function New : iDaoPai;
  end;


implementation

{ TDaoPai }

function TDaoPai.AddParam(pKey, pParam, pValue: String): iDaoPai;
var
  I : Integer;
  lId : Integer;
begin
  Result := Self;

  for I := 0 to FParamList.Count do
    Inc(lId);

  FParam.Id    := lId;
  FParam.Key   := pKey;
  FParam.Param := pParam;
  FParam.Value := pValue;

  FParamList.Add(FParam.Id, FParam);
end;

constructor TDaoPai.Create;
begin
  FQuery            := TFDQuery.Create(nil);
  FQuery.Connection := Connection.Connect;
  FClientDataSet    := TClientDataSet.Create(nil);
  FParamList        := TDictionary<Integer, TParamSql>.Create;
end;

function TDaoPai.ClientDataSet: TClientDataSet;
begin
  Result := FClientDataSet;
end;

destructor TDaoPai.Destroy;
begin
  FQuery.DisposeOf;
  FClientDataSet.DisposeOf;
  FParamList.DisposeOf;
  inherited;
end;

function TDaoPai.GetInstancia: iDaoPai;
begin
  Result := Self;
end;

function TDaoPai.GetParam: String;
var
  I : Integer;
  lSql : String;
begin
  lSql := '';
  if FParamList.Count > 0 then
  begin
    for I := 1 to FParamList.Count do
      lSql := lSql + ' AND ' + FParam.Key + ' ' + FParam.Param + ' ' + FParam.Value;
  end;
  Result := lSql;
  FParamList.Clear;
end;

class function TDaoPai.New: iDaoPai;
begin
  Result := Self.Create;
end;

function TDaoPai.OpenQueryPai: iDaoPai;
begin
  Result := Self;
  FQuery.Open;
  LoadClientDataSet(ClientDataSet, FQuery);
  FQuery.Close;
end;

function TDaoPai.Query: TFDQuery;
begin
  Result := FQuery;
end;

end.
