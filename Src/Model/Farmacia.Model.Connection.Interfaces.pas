unit Farmacia.Model.Connection.Interfaces;

interface

uses
  Data.DB,
  FireDAC.Comp.Client;

type
  iModelConnection = interface
    ['{7C5885A2-DAE3-4F43-983D-767789F72111}']
    function Connection : TFDConnection;
    function Connect : iModelConnection;

    function DriveID(aValue: String): iModelConnection;
    function DataBase(aValue: String): iModelConnection;
    function UserName(aValue: String): iModelConnection;
    function Password(aValue: String): iModelConnection;
    function Server(aValue: String): iModelConnection;
    function Port(aValue: String): iModelConnection;
  end;

implementation

end.
