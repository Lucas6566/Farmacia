unit Farmacia.Util.FunctionSQL;

interface

 uses
  FireDAC.Comp.Client,
  Farmacia.Service.Conexao,
  Datasnap.DBClient, Farmacia.Util.Variaveis;

  function GetCodigoSql(pTable, pCodigo : String): Integer;
  procedure LoadClientDataSet(pClientDataSet: TClientDataSet; pQuery: TFDQuery);

implementation

function GetCodigoSql(pTable, pCodigo : String): Integer;
var
  lQuery : TFDQuery;
begin
  try
    lQuery := TFDQuery.Create(nil);
    lQuery.Connection := Connection.Connect;
    lQuery.SQL.Clear;
    lQuery.SQL.Add('SELECT MAX(' + pCodigo + ') COD FROM ' + pTable);
    lQuery.Open;
    Result := lQuery.FieldByName('COD').AsInteger + 1;
  finally
    lQuery.Destroy;
  end;

end;

procedure LoadClientDataSet(pClientDataSet: TClientDataSet; pQuery: TFDQuery);
var
  I: Integer;
begin
  try
    pClientDataSet.EmptyDataSet;
    pClientDataSet.DisableControls;
    pQuery.First;

    while not pQuery.Eof do
    begin
      pClientDataSet.Insert;

      for I := 0 to pQuery.FieldCount -1 do
        if pClientDataSet.FindField(pQuery.Fields[I].FieldName) <> nil then
          pClientDataSet.FindField(pQuery.Fields[I].FieldName).Value := pQuery.Fields[I].Value;

      pClientDataSet.Post;
      pQuery.Next;
    end;
  finally
    pClientDataSet.EnableControls;
  end;
end;

end.