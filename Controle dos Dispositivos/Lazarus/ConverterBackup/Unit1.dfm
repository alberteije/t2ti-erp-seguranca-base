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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 49
    Align = alTop
    Caption = 'Controle dos Dispositivos'
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
  object Button1: TButton
    Left = 515
    Top = 313
    Width = 109
    Height = 25
    Caption = 'Inserir'
    TabOrder = 1
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 146
    Width = 616
    Height = 117
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 8
    Top = 269
    Width = 616
    Height = 25
    Caption = 'Consultar Dispositivos Cadastrados no Banco de Dados'
    TabOrder = 3
    OnClick = Button2Click
  end
  object EditComandoRecebido: TLabeledEdit
    Left = 8
    Top = 71
    Width = 616
    Height = 21
    EditLabel.Width = 195
    EditLabel.Height = 13
    EditLabel.Caption = 'Comando Recebido da Aplica'#231#227'o Cliente:'
    TabOrder = 4
    Text = 
      'http://localhost:8080/datasnap/restT2Ti/TController/ObjetoJson/c' +
      '400a910c264e53bbcbe87a9acbbd193/UsuarioController'
  end
  object EditIdDispositivoCliente: TLabeledEdit
    Left = 8
    Top = 119
    Width = 370
    Height = 21
    EditLabel.Width = 171
    EditLabel.Height = 13
    EditLabel.Caption = 'Identifica'#231#227'o do Dispositivo Cliente:'
    TabOrder = 5
    Text = 'c400a910c264e53bbcbe87a9acbbd193'
  end
  object EditQuantidade: TLabeledEdit
    Left = 384
    Top = 119
    Width = 240
    Height = 21
    Alignment = taRightJustify
    EditLabel.Width = 225
    EditLabel.Height = 13
    EditLabel.Caption = 'Quantidade M'#225'xima de Dispositivos Permitidos:'
    TabOrder = 6
    Text = '3'
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 300
    Width = 501
    Height = 122
    Caption = 'Dispositivos na Sess'#227'o:'
    TabOrder = 7
    object Memo1: TMemo
      Left = 2
      Top = 15
      Width = 497
      Height = 105
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 35
      ExplicitWidth = 185
      ExplicitHeight = 70
    end
  end
  object Button3: TButton
    Left = 515
    Top = 344
    Width = 109
    Height = 25
    Caption = 'Consultar'
    TabOrder = 8
    OnClick = Button3Click
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
    Left = 264
    Top = 56
  end
  object ZTable1: TZTable
    MaxBlobSize = -1
    ZConnection = Conexao
    TableName = 'computador'
    Left = 320
    Top = 56
    object ZTable1id: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object ZTable1a: TStringField
      FieldName = 'a'
      Size = 32
    end
    object ZTable1b: TStringField
      FieldName = 'b'
      Size = 32
    end
  end
  object DataSource1: TDataSource
    DataSet = ZTable1
    Left = 560
    Top = 56
  end
end
