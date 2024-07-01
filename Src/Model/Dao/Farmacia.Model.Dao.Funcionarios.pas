unit Farmacia.Model.Dao.Funcionarios;

interface


uses
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
  Farmacia.Model.Dao.Funcionarios.Interfaces,
  Farmacia.Model.Dao.Pai.Interfaces,
  Farmacia.Model.Dao.Pai,
  Farmacia.Model.Entity.Funcionarios.Interfaces,
  Farmacia.Model.Entity.Funcionarios,
  Farmacia.Util.FunctionSQL;

type
  TCrudFuncionarios = class(TDaoPai, iCrudFuncionarios)
  private
    FFuncionarios : iModelFuncionarios;
    procedure CreateFields;
    procedure SetParamQuery;
  public
    function AlimentaDados : iModelFuncionarios;
    function Cadastro : iModelFuncionarios;

    function OpenQuery : iCrudFuncionarios;
    function DataSet : TDataSet;
    function Select : iCrudFuncionarios;
    function Insert : iCrudFuncionarios;
    function Update : iCrudFuncionarios;
    function Delete : iCrudFuncionarios;

    constructor Create;
    destructor Destroy; override;
    class function New : iCrudFuncionarios;
  end;


implementation

{ TCrudFuncionarios }

function TCrudFuncionarios.AlimentaDados: iModelFuncionarios;
begin
  Result := FFuncionarios.Codigo(ClientDataSet.FieldByName('COD_FUNCIONARIO').AsInteger)
                         .Nome(ClientDataSet.FieldByName('NOM_FUNCIONARIO').AsString)
                         .Tipo(ClientDataSet.FieldByName('TIP_FUNCIONARIO').AsInteger)
                         .CodigoUsuario(ClientDataSet.FieldByName('COD_USUARIO_ALT').AsInteger)
                         .DtaCadastro(ClientDataSet.FieldByName('DAT_CADASTRO').AsDateTime)
                         .DtaAlteracao(ClientDataSet.FieldByName('DAT_ALTERACAO').AsDateTime);
end;

function TCrudFuncionarios.Cadastro: iModelFuncionarios;
begin
  Result := FFuncionarios;
end;

constructor TCrudFuncionarios.Create;
begin
  inherited;
  GetInstancia;
  FFuncionarios := TModelFuncionarios.New;
  CreateFields;
end;

procedure TCrudFuncionarios.CreateFields;
begin
  ClientDataSet.FieldDefs.Add('COD_FUNCIONARIO', ftInteger);
  ClientDataSet.FieldDefs.Add('NOM_FUNCIONARIO', ftString, 80);
  ClientDataSet.FieldDefs.Add('TIP_FUNCIONARIO', ftInteger);
  ClientDataSet.FieldDefs.Add('COD_USUARIO_ALT', ftInteger);
  ClientDataSet.FieldDefs.Add('DAT_CADASTRO', ftDate);
  ClientDataSet.FieldDefs.Add('DAT_ALTERACAO', ftDate);

  ClientDataSet.CreateDataSet;

  ClientDataSet.IndexFieldNames := 'COD_FUNCIONARIO';
end;

function TCrudFuncionarios.DataSet: TDataSet;
begin
  Result := ClientDataSet;
end;

function TCrudFuncionarios.Delete: iCrudFuncionarios;
begin
  Result := Self;

  Query.SQL.Clear;

  Query.SQL.Add('DELETE FROM FUNCIONARIOS');
  Query.SQL.Add('  WHERE COD_FUNCIONARIO = :pCOD_FUNCIONARIO');

  Query.ParamByName('pCOD_FUNCIONARIO').AsInteger := Cadastro.GetCodigo;

  Query.ExecSQL;
end;

destructor TCrudFuncionarios.Destroy;
begin

  inherited;
end;

function TCrudFuncionarios.Insert: iCrudFuncionarios;
begin
  Result := Self;

  Query.SQL.Clear;

  Query.SQL.Add('INSERT INTO FARMACIA.FUNCIONARIOS (');
  Query.SQL.Add('  COD_FUNCIONARIO,  ');
  Query.SQL.Add('  NOM_FUNCIONARIO,');
  Query.SQL.Add('  TIP_FUNCIONARIO,');
  Query.SQL.Add('  COD_USUARIO_ALT,');
  Query.SQL.Add('  DAT_CADASTRO,');
  Query.SQL.Add('  DAT_ALTERACAO');
  Query.SQL.Add(') VALUES (');
  Query.SQL.Add('  :pCOD_FUNCIONARIO,  ');
  Query.SQL.Add('  :pNOM_FUNCIONARIO,');
  Query.SQL.Add('  :pTIP_FUNCIONARIO,');
  Query.SQL.Add('  :pCOD_USUARIO_ALT,');
  Query.SQL.Add('  :pDAT_CADASTRO,');
  Query.SQL.Add('  :pDAT_ALTERACAO');
  Query.SQL.Add(');');

  SetParamQuery;

  Query.ExecSQL;
end;

class function TCrudFuncionarios.New: iCrudFuncionarios;
begin
  Result := Self.Create;
end;

function TCrudFuncionarios.OpenQuery: iCrudFuncionarios;
begin
  Result := Self;
  OpenQueryPai;
end;

function TCrudFuncionarios.Select: iCrudFuncionarios;
begin
  Result := Self;

  Query.SQL.Clear;

  Query.SQL.Add('SELECT ');
  Query.SQL.Add('  F.COD_FUNCIONARIO,');
  Query.SQL.Add('  F.NOM_FUNCIONARIO,');
  Query.SQL.Add('  F.TIP_FUNCIONARIO,');
  Query.SQL.Add('  F.COD_USUARIO_ALT,');
  Query.SQL.Add('  F.DAT_CADASTRO,');
  Query.SQL.Add('  F.DAT_ALTERACAO');
  Query.SQL.Add('FROM FARMACIA.FUNCIONARIOS AS F');

  Query.SQL.Add(GetParam);

  OpenQuery;
end;

procedure TCrudFuncionarios.SetParamQuery;
begin
  Query.ParamByName('pCOD_FUNCIONARIO').AsInteger := Cadastro.GetCodigo;
  Query.ParamByName('pNOM_FUNCIONARIO').AsString  := Cadastro.GetNome;
  Query.ParamByName('pTIP_FUNCIONARIO').AsInteger := Cadastro.GetTipo;
  Query.ParamByName('pCOD_USUARIO_ALT').AsInteger := Cadastro.GetCodigoUsuario;
  Query.ParamByName('pDAT_CADASTRO').AsDate       := Cadastro.GetDtaCadastro;
  Query.ParamByName('pDAT_ALTERACAO').AsDate      := Cadastro.GetDtaAlteracao;
end;

function TCrudFuncionarios.Update: iCrudFuncionarios;
begin
  Result := Self;

  Query.SQL.Clear;

  Query.SQL.Add('UPDATE FARMACIA.FUNCIONARIOS SET');
  Query.SQL.Add('  NOM_FUNCIONARIO = :pNOM_FUNCIONARIO,');
  Query.SQL.Add('  TIP_FUNCIONARIO = :pTIP_FUNCIONARIO,');
  Query.SQL.Add('  COD_USUARIO_ALT = :pCOD_USUARIO_ALT,');
  Query.SQL.Add('  DAT_CADASTRO    = :pDAT_CADASTRO,');
  Query.SQL.Add('  DAT_ALTERACAO   = :pDAT_ALTERACAO ');
  Query.SQL.Add('WHERE COD_FUNCIONARIO = :pCOD_FUNCIONARIO');

  SetParamQuery;

  Query.ExecSQL;
end;

end.