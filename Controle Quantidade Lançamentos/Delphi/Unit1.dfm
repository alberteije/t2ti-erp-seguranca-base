object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'T2Ti - Seguran'#231'a'
  ClientHeight = 430
  ClientWidth = 632
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 49
    Align = alTop
    Caption = 'Controle da Quantidade de Lan'#231'amentos'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 49
    Width = 632
    Height = 381
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Via Banco'
      object Label1: TLabel
        Left = 3
        Top = 135
        Width = 180
        Height = 13
        Caption = 'Quantidade M'#225'xima de Lan'#231'amentos:'
      end
      object Button1: TButton
        Left = 397
        Top = 325
        Width = 109
        Height = 25
        Caption = 'Inserir'
        TabOrder = 0
        OnClick = Button1Click
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 3
        Width = 618
        Height = 126
        DataSource = DataSource1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object EditMes: TLabeledEdit
        Left = 3
        Top = 287
        Width = 70
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'M'#234's [a]:'
        TabOrder = 2
      end
      object EditAno: TLabeledEdit
        Left = 3
        Top = 329
        Width = 70
        Height = 21
        EditLabel.Width = 40
        EditLabel.Height = 13
        EditLabel.Caption = 'Ano [b]:'
        TabOrder = 3
      end
      object EditVencimento: TLabeledEdit
        Left = 79
        Top = 287
        Width = 70
        Height = 21
        EditLabel.Width = 75
        EditLabel.Height = 13
        EditLabel.Caption = 'Vencimento [c]:'
        TabOrder = 4
      end
      object EditBloqueio: TLabeledEdit
        Left = 79
        Top = 329
        Width = 70
        Height = 21
        EditLabel.Width = 61
        EditLabel.Height = 13
        EditLabel.Caption = 'Bloqueio [d]:'
        TabOrder = 5
      end
      object EditLiberado: TLabeledEdit
        Left = 155
        Top = 329
        Width = 70
        Height = 21
        EditLabel.Width = 62
        EditLabel.Height = 13
        EditLabel.Caption = 'Liberado [e]:'
        TabOrder = 6
      end
      object Button2: TButton
        Left = 512
        Top = 325
        Width = 109
        Height = 25
        Caption = 'Consultar'
        TabOrder = 7
        OnClick = Button2Click
      end
      object EditNomeTabela: TLabeledEdit
        Left = 397
        Top = 288
        Width = 224
        Height = 21
        EditLabel.Width = 66
        EditLabel.Height = 13
        EditLabel.Caption = 'Nome Tabela:'
        TabOrder = 8
        Text = 'controle_pagamento'
      end
      object DBGrid2: TDBGrid
        Left = 3
        Top = 154
        Width = 618
        Height = 111
        DataSource = DataSource2
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
  end
  object Conexao: TSQLConnection
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver190.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=19.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver190.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=19.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'GetDriverFunc=getSQLDriverMYSQL'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'Database=teste'
      'User_Name=root'
      'Password=root'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile=')
    Connected = True
    Left = 272
    Top = 80
  end
  object SQLTable1: TSQLTable
    MaxBlobSize = -1
    SQLConnection = Conexao
    TableName = 'controle_pagamento'
    Left = 328
    Top = 80
    object SQLTable1id: TIntegerField
      FieldName = 'id'
    end
    object SQLTable1a: TStringField
      FieldName = 'a'
      FixedChar = True
      Size = 32
    end
    object SQLTable1b: TStringField
      FieldName = 'b'
      FixedChar = True
      Size = 32
    end
    object SQLTable1c: TStringField
      FieldName = 'c'
      FixedChar = True
      Size = 32
    end
    object SQLTable1d: TStringField
      FieldName = 'd'
      FixedChar = True
      Size = 32
    end
    object SQLTable1e: TStringField
      FieldName = 'e'
      FixedChar = True
      Size = 32
    end
    object SQLTable1f: TStringField
      FieldName = 'f'
      FixedChar = True
      Size = 32
    end
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 568
    Top = 80
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 492
    Top = 81
    object ClientDataSet1id: TIntegerField
      FieldName = 'id'
    end
    object ClientDataSet1a: TStringField
      FieldName = 'a'
      FixedChar = True
      Size = 32
    end
    object ClientDataSet1b: TStringField
      FieldName = 'b'
      FixedChar = True
      Size = 32
    end
    object ClientDataSet1c: TStringField
      FieldName = 'c'
      FixedChar = True
      Size = 32
    end
    object ClientDataSet1d: TStringField
      FieldName = 'd'
      FixedChar = True
      Size = 32
    end
    object ClientDataSet1e: TStringField
      FieldName = 'e'
      FixedChar = True
      Size = 32
    end
    object ClientDataSet1f: TStringField
      FieldName = 'f'
      FixedChar = True
      Size = 32
    end
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLTable1
    Left = 404
    Top = 81
  end
  object DataSource2: TDataSource
    DataSet = ClientDataSet2
    Left = 172
    Top = 257
  end
  object ClientDataSet2: TClientDataSet
    Active = True
    Aggregates = <>
    FileName = 
      'C:\Projetos\Seguran'#231'a\Controle Quantidade Lan'#231'amentos\Delphi\lan' +
      'camento.cds'
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'a'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'b'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 252
    Top = 257
    Data = {
      C60000009619E0BD010000001800000003000300000003000000880002696404
      0001000000000001610100490000000100055749445448020002002000016201
      0049000000010005574944544802000200200001000A4348414E47455F4C4F47
      0400820009000000010000000000000004000000020000000000000004000000
      0300000000000000040000000400010000000A636F6D70757461646F72013504
      000200000012636F6E74726F6C655F706167616D656E746F0135040003000000
      06706573736F61023130}
    object ClientDataSet2id: TIntegerField
      FieldName = 'id'
    end
    object ClientDataSet2a: TStringField
      FieldName = 'a'
      Size = 32
    end
    object ClientDataSet2b: TStringField
      FieldName = 'b'
      Size = 32
    end
  end
end
