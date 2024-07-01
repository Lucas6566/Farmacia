unit Farmacia.Model.Dao.FormaPagamento;


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
  Farmacia.Model.Dao.FormaPagamento.Interfaces,
  Farmacia.Model.Dao.Pai.Interfaces,
  Farmacia.Model.Dao.Pai,
  Farmacia.Model.Entity.FormaPagamento.Interfaces,
  Farmacia.Model.Entity.FormaPagamento,
  Farmacia.Util.FunctionSQL;

type
  TCrudFormaPagamento = class(TDaoPai, iCrudFormaPagamento)
  private
    FFormaPagamento:iModelFormaPagamento;

    procedure CreateFields;
  public
    function AlimentarDados:iModelFormaPagamento;
    function Cadastro:iModelFormaPagamento;
    function DataSet:TDataSet;
    function Select:iCrudFormaPagamento;
    function Insert:iCrudFormaPagamento;
    function Update:iCrudFormaPagamento;
    function Delete:iCrudFormaPagamento;

    constructor Create;
    destructor Destroy; override;
    class function New : iCrudFormaPagamento;
  end;

implementation

{ TCrudFormaPagamento }

constructor TCrudFormaPagamento.Create;
begin
  inherited;
  GetInstancia;
  FFormaPagamento := TModelFormaPagamento.New;
  CreateFields;
end;

destructor TCrudFormaPagamento.Destroy;
begin
  inherited;
end;

class function TCrudFormaPagamento.New:iCrudFormaPagamento;
begin
  Result := Self.Create;
end;

function TCrudFormaPagamento.AlimentarDados:iModelFormaPagamento;
begin
  Result := FFormaPagamento.CodPagamento(ClientDataSet.FieldByName('COD_PAGAMENTO').AsInteger)
                           .DesPagamento(ClientDataSet.FieldByName('DES_PAGAMENTO').AsString)
                           .TipPagamento(ClientDataSet.FieldByName('TIP_PAGAMENTO').AsInteger)
                           .CodUsuarioAlt(ClientDataSet.FieldByName('COD_USUARIO_ALT').AsInteger)
                           .DatCadastro(ClientDataSet.FieldByName('DAT_CADASTRO').AsDateTime)
                           .DatAlteracao(ClientDataSet.FieldByName('DAT_ALTERACAO').AsDateTime);
end;

function TCrudFormaPagamento.Cadastro:iModelFormaPagamento;
begin
  Result := FFormaPagamento;
end;

procedure TCrudFormaPagamento.CreateFields;
begin
  ClientDataSet.FieldDefs.Add('COD_PAGAMENTO', ftInteger);
  ClientDataSet.FieldDefs.Add('DES_PAGAMENTO', ftString, 80);
  ClientDataSet.FieldDefs.Add('TIP_PAGAMENTO', ftInteger);
  ClientDataSet.FieldDefs.Add('COD_USUARIO_ALT', ftInteger);
  ClientDataSet.FieldDefs.Add('DAT_CADASTRO', ftDateTime);
  ClientDataSet.FieldDefs.Add('DAT_ALTERACAO', ftDateTime);
  ClientDataSet.CreateDataSet;

  ClientDataSet.IndexFieldNames := 'DES_PAGAMENTO';
end;

function TCrudFormaPagamento.DataSet: TDataSet;
begin
  Result := ClientDataSet;
end;

function TCrudFormaPagamento.Select: iCrudFormaPagamento;
begin
  Result := Self;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('SELECT');
  Query.SQL.Add('COD_PAGAMENTO,');
  Query.SQL.Add('DES_PAGAMENTO,');
  Query.SQL.Add('TIP_PAGAMENTO,');
  Query.SQL.Add('COD_USUARIO_ALT,');
  Query.SQL.Add('DAT_CADASTRO,');
  Query.SQL.Add('DAT_ALTERACAO');
  Query.SQL.Add('FROM FORMA_PAGAMENTO');
  
  OpenQueryPai;
end;

function TCrudFormaPagamento.Delete: iCrudFormaPagamento;
begin
  Result := Self;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add(' DELETE FROM FORMA_PAGAMENTO');
  Query.SQL.Add('  WHERE COD_PAGAMENTO = :pCOD_PAGAMENTO');

  Query.ParamByName('pCOD_PAGAMENTO').AsInteger := Cadastro.GetCodPagamento;

  Query.ExecSQL;
end;

function TCrudFormaPagamento.Insert: iCrudFormaPagamento;
begin
  Result := Self;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('INSERT INTO FORMA_PAGAMENTO (');
  Query.SQL.Add(' COD_PAGAMENTO,');
  Query.SQL.Add(' DES_PAGAMENTO,');
  Query.SQL.Add(' TIP_PAGAMENTO,');
  Query.SQL.Add(' COD_USUARIO_ALT,');
  Query.SQL.Add(' DAT_CADASTRO,');
  Query.SQL.Add(' DAT_ALTERACAO');
  Query.SQL.Add(' ) VALUES ( ');
  Query.SQL.Add(' :pCOD_PAGAMENTO,');
  Query.SQL.Add(' :pDES_PAGAMENTO,');
  Query.SQL.Add(' :pTIP_PAGAMENTO,');
  Query.SQL.Add(' :pCOD_USUARIO_ALT,');
  Query.SQL.Add(' :pDAT_CADASTRO,');
  Query.SQL.Add(' :pDAT_ALTERACAO');
  Query.SQL.Add(' )');

  Query.ParamByName('pCOD_PAGAMENTO').AsInteger := Cadastro.GetCodPagamento;
  Query.ParamByName('pDES_PAGAMENTO').AsString := Cadastro.GetDesPagamento;
  Query.ParamByName('pTIP_PAGAMENTO').AsInteger := Cadastro.GetTipPagamento;
  Query.ParamByName('pCOD_USUARIO_ALT').AsInteger := Cadastro.GetCodUsuarioAlt;
  Query.ParamByName('pDAT_CADASTRO').AsDateTime := Cadastro.GetDatCadastro;
  Query.ParamByName('pDAT_ALTERACAO').AsDateTime := Cadastro.GetDatAlteracao;

  Query.ExecSQL;
end;

function TCrudFormaPagamento.Update: iCrudFormaPagamento;
begin
  Result := Self;

  Query.Close;
  Query.SQL.Clear;
  Query.SQL.Add('UPDATE FORMA_PAGAMENTO SET ');
  Query.SQL.Add(' COD_PAGAMENTO =:pCOD_PAGAMENTO,');
  Query.SQL.Add(' DES_PAGAMENTO =:pDES_PAGAMENTO,');
  Query.SQL.Add(' TIP_PAGAMENTO =:pTIP_PAGAMENTO,');
  Query.SQL.Add(' COD_USUARIO_ALT =:pCOD_USUARIO_ALT,');
  Query.SQL.Add(' DAT_CADASTRO =:pDAT_CADASTRO,');
  Query.SQL.Add(' DAT_ALTERACAO =:pDAT_ALTERACAO');

  Query.ParamByName('pCOD_PAGAMENTO').AsInteger := Cadastro.GetCodPagamento;
  Query.ParamByName('pDES_PAGAMENTO').AsString := Cadastro.GetDesPagamento;
  Query.ParamByName('pTIP_PAGAMENTO').AsInteger := Cadastro.GetTipPagamento;
  Query.ParamByName('pCOD_USUARIO_ALT').AsInteger := Cadastro.GetCodUsuarioAlt;
  Query.ParamByName('pDAT_CADASTRO').AsDateTime := Cadastro.GetDatCadastro;
  Query.ParamByName('pDAT_ALTERACAO').AsDateTime := Cadastro.GetDatAlteracao;

  Query.ExecSQL;
end;

end.
