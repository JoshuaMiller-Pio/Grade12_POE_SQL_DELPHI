unit Connection_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule7 = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1ID: TAutoIncField;
    ADOTable1Name: TWideStringField;
    ADOTable1Surname: TWideStringField;
    ADOTable1phonenumber: TWideStringField;
    ADOTable1Age: TIntegerField;
    DataSource2: TDataSource;
    ADOTable2: TADOTable;
    ADOTable2GameID: TAutoIncField;
    ADOTable2Game: TWideStringField;
    ADOTable2DateofTournament: TWideStringField;
    ADOTable2LocationofTournament: TWideStringField;
    ADOTable1Gender: TWideStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule7: TDataModule7;

implementation

{$R *.dfm}

end.
