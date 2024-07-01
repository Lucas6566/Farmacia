unit Farmacia.Service.LayoutGrid;

interface

uses
  Data.DB,
  cxGridDBTableView;

type
  iLayoutGrid = Interface
    ['{88F9B1AE-DD17-4EA5-838C-DC4948404446}']
    function SetGrid(pGrid : TcxGridDBTableView): iLayoutGrid;
    function StartLayout : iLayoutGrid;
  End;

  TLayoutGrid = class(TInterfacedObject, iLayoutGrid)
  private
    FGrid : TcxGridDBTableView;
    FDataSet : TDataSet;
    procedure CreateColumnGrid;
  public
    function SetGrid(pGrid : TcxGridDBTableView): iLayoutGrid;
    function StartLayout : iLayoutGrid;

    constructor Create;
    destructor Destroy; override;
    class function New : iLayoutGrid;
  end;

implementation

{ TLayoutGrid }

constructor TLayoutGrid.Create;
begin

end;

procedure TLayoutGrid.CreateColumnGrid;
var
  I : Integer;
  lField : String;
begin
  for I := 0 to FDataSet.Fields.Count -1 do
  begin
    FGrid.CreateColumn;
    FGrid.Columns[I].DataBinding.FieldName := FDataSet.Fields[I].FieldName;

    lField := FDataSet.Fields[I].FieldName;

    FGrid.Columns[I].Caption := lField;
    FGrid.Columns[I].Visible := True;
    FGrid.Columns[I].Tag     := 1;

    FGrid.Columns[I].Width   := FDataSet.Fields[I].DisplayWidth*4;
    FGrid.Columns[I].Name    := FDataSet.Fields[I].FieldName;
    FGrid.Columns[I].Index   := I;
  end;
end;

destructor TLayoutGrid.Destroy;
begin
  inherited;

end;

class function TLayoutGrid.New: iLayoutGrid;
begin
  Result := Self.Create;
end;

function TLayoutGrid.SetGrid(pGrid: TcxGridDBTableView): iLayoutGrid;
begin
  Result := Self;
  FGrid := pGrid;
end;

function TLayoutGrid.StartLayout: iLayoutGrid;
begin
  Result := Self;

  FDataSet := FGrid.DataController.DataSource.DataSet;

  if FGrid.ColumnCount = 0 then
    CreateColumnGrid;

end;

end.