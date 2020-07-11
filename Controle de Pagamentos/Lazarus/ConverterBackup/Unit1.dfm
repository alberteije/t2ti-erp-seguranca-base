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
    Caption = 'Controle de Pagamentos'
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
      object Memo1: TMemo
        Left = 3
        Top = 135
        Width = 502
        Height = 130
        TabOrder = 8
      end
      object Button3: TButton
        Left = 511
        Top = 135
        Width = 110
        Height = 25
        Caption = 'Decifrar'
        TabOrder = 9
        OnClick = Button3Click
      end
      object Button4: TButton
        Left = 511
        Top = 166
        Width = 110
        Height = 25
        Caption = 'Verificar Hash'
        TabOrder = 10
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 511
        Top = 209
        Width = 110
        Height = 25
        Caption = 'Verificar Adimpl'#234'ncia'
        TabOrder = 11
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 511
        Top = 240
        Width = 110
        Height = 25
        Caption = 'Chave Desbloqueio'
        TabOrder = 12
        OnClick = Button6Click
      end
      object Button7: TButton
        Left = 511
        Top = 286
        Width = 110
        Height = 25
        Caption = 'Desbloquear Sistema'
        TabOrder = 13
        OnClick = Button7Click
      end
      object EditChaveDesbloqueio: TLabeledEdit
        Left = 304
        Top = 288
        Width = 201
        Height = 21
        EditLabel.Width = 96
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave Desbloqueio:'
        TabOrder = 14
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Via Arquivo'
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 3
        Top = 3
        Width = 618
        Height = 126
        DataSource = DataSource2
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Memo2: TMemo
        Left = 3
        Top = 135
        Width = 502
        Height = 130
        TabOrder = 1
      end
      object EditChaveDesbloqueioArquivo: TLabeledEdit
        Left = 304
        Top = 287
        Width = 201
        Height = 21
        EditLabel.Width = 96
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave Desbloqueio:'
        TabOrder = 2
      end
      object Button8: TButton
        Left = 511
        Top = 283
        Width = 110
        Height = 25
        Caption = 'Desbloquear Sistema'
        TabOrder = 3
        OnClick = Button8Click
      end
      object Button10: TButton
        Left = 511
        Top = 325
        Width = 109
        Height = 25
        Caption = 'Inserir'
        TabOrder = 4
        OnClick = Button10Click
      end
      object Button11: TButton
        Left = 511
        Top = 135
        Width = 110
        Height = 25
        Caption = 'Decifrar'
        TabOrder = 5
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 511
        Top = 166
        Width = 110
        Height = 25
        Caption = 'Verificar Hash'
        TabOrder = 6
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 511
        Top = 209
        Width = 110
        Height = 25
        Caption = 'Verificar Adimpl'#234'ncia'
        TabOrder = 7
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 511
        Top = 240
        Width = 110
        Height = 25
        Caption = 'Chave Desbloqueio'
        TabOrder = 8
        OnClick = Button14Click
      end
    end
  end
  object Conexao: TZConnection
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
    Left = 152
    Top = 96
  end
  object ZTable1: TZTable
    MaxBlobSize = -1
    SQLConnection = Conexao
    TableName = 'controle_pagamento'
    Left = 208
    Top = 96
    object ZTable1id: TIntegerField
      FieldName = 'id'
    end
    object ZTable1a: TStringField
      FieldName = 'a'
      FixedChar = True
      Size = 32
    end
    object ZTable1b: TStringField
      FieldName = 'b'
      FixedChar = True
      Size = 32
    end
    object ZTable1c: TStringField
      FieldName = 'c'
      FixedChar = True
      Size = 32
    end
    object ZTable1d: TStringField
      FieldName = 'd'
      FixedChar = True
      Size = 32
    end
    object ZTable1e: TStringField
      FieldName = 'e'
      FixedChar = True
      Size = 32
    end
    object ZTable1f: TStringField
      FieldName = 'f'
      FixedChar = True
      Size = 32
    end
  end
  object DataSource1: TDataSource
    DataSet = ZTable1
    Left = 448
    Top = 96
  end
  object BufDataset2: TBufDataset
    Active = True
    Aggregates = <>
    FileName = 'C:\Projetos\Seguran'#231'a\Controle de Pagamentos\Delphi\fake.dll'
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
      end
      item
        Name = 'c'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'd'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'e'
        DataType = ftString
        Size = 32
      end
      item
        Name = 'f'
        DataType = ftString
        Size = 32
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 468
    Top = 153
    Data = {
      8C0400009619E0BD010000001800000007000B00000003000000400102696404
      0001000000000001610100490000000100055749445448020002002000016201
      0049000000010005574944544802000200200001630100490000000100055749
      4454480200020020000164010049000000010005574944544802000200200001
      6501004900000001000557494454480200020020000166010049000000010005
      574944544802000200200001000A4348414E47455F4C4F470400820021000000
      0100000000000000040000000200000001000000080000000300000000000000
      0400000004000000000000000400000005000000000000000400000006000000
      0000000004000000070000000000000004000000080000000000000004000000
      0900000004000000080000000A00000009000000080000000B00000007000000
      08000000050200063938393139370A4134384645413444434506453334444430
      0637364645363404384538352061633633333836663638633366363033633866
      663964396164373139363264390C000001000000063938393139370A41343846
      4541344443450645333444443006373646453634043845383520616336333338
      3666363863336636303363386666396439616437313936326439040000020000
      00063232304236380A3844453634323232314206304536374341063045363643
      4404433334422066633539373261626232356665383234623238636137353935
      3465363562393005000003000000063241303336330A45433436323330353736
      0644353546433206314431373143043746393420636436363662313432373632
      3832653364343535326439353963666665346330040000040000000633423332
      33330A3032364443384138393106303236424636063137313131360435374643
      2037666261313463386535643833353735313565333037363430373561646539
      3404000005000000064243423542460A30303642434535314341063737464536
      3206343932333030043039304520666461616638363738326633626631313161
      333463366165336165353064303505000006000000063731463837410A393839
      3339363936383706343832313043064430354244380441464134203566306461
      6633353235333433383730626533363638616434663232396334340400000700
      0000064546373945350A42424234423142334134063336334632320631303138
      3146044239353120326531316263393331656530383066363334366637663236
      66646531343166340D00000300000007324130333633520A4543343632333035
      3736064435354643320631443137314304374639342063643636366231343237
      363238326533643435353264393539636666653463300C000003000000063241
      303336330A454334363233303537360644353546433206314431373143043746
      3934206364363636623134323736323832653364343535326439353963666665
      3463300C000006000000063731463837410A3938393339363936383706343832
      3130430644303542443804373439452062383265616135386562376534656464
      64376135373765306538303164326265}
    object BufDataset2id: TIntegerField
      FieldName = 'id'
    end
    object BufDataset2a: TStringField
      FieldName = 'a'
      Size = 32
    end
    object BufDataset2b: TStringField
      FieldName = 'b'
      Size = 32
    end
    object BufDataset2c: TStringField
      FieldName = 'c'
      Size = 32
    end
    object BufDataset2d: TStringField
      FieldName = 'd'
      Size = 32
    end
    object BufDataset2e: TStringField
      FieldName = 'e'
      Size = 32
    end
    object BufDataset2f: TStringField
      FieldName = 'f'
      Size = 32
    end
  end
  object DataSource2: TDataSource
    DataSet = BufDataset2
    Left = 564
    Top = 153
  end
end
