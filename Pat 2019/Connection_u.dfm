object DataModule7: TDataModule7
  OldCreateOrder = False
  Height = 387
  Width = 499
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=G:\Pa' +
      't 2019\Pat phase 2.1.mdb;Mode=Share Deny None;Persist Security I' +
      'nfo=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="' +
      '";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLE' +
      'DB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;J' +
      'et OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passw' +
      'ord="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt ' +
      'Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet ' +
      'OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 56
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Player information'
    Left = 136
    Top = 56
    object ADOTable1ID: TAutoIncField
      Alignment = taCenter
      FieldName = 'ID'
      ReadOnly = True
    end
    object ADOTable1Name: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
    object ADOTable1Surname: TWideStringField
      FieldName = 'Surname'
      Size = 255
    end
    object ADOTable1phonenumber: TWideStringField
      FieldName = 'phone number'
      Size = 255
    end
    object ADOTable1Age: TIntegerField
      FieldName = 'Age'
    end
    object ADOTable1Gender: TWideStringField
      FieldName = 'Gender'
      Size = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 88
    Top = 144
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 336
    Top = 112
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Games'
    Left = 416
    Top = 104
    object ADOTable2GameID: TAutoIncField
      FieldName = 'GameID'
      ReadOnly = True
    end
    object ADOTable2Game: TWideStringField
      FieldName = 'Game'
      Size = 255
    end
    object ADOTable2DateofTournament: TWideStringField
      FieldName = 'Date of Tournament'
      Size = 255
    end
    object ADOTable2LocationofTournament: TWideStringField
      FieldName = 'Location of Tournament'
      Size = 255
    end
  end
end
