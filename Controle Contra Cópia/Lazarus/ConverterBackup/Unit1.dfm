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
    Caption = 'Controle Contra C'#243'pia'
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 55
    Width = 305
    Height = 58
    Caption = '01 - Verificar Arquivo'
    TabOrder = 1
    object Button1: TButton
      Left = 16
      Top = 22
      Width = 281
      Height = 25
      Caption = 'Verificar Arquivo'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 119
    Width = 305
    Height = 130
    Caption = '02 - Manipular Registro do Windows'
    TabOrder = 2
    object EditChave: TLabeledEdit
      Left = 16
      Top = 40
      Width = 138
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'Chave:'
      TabOrder = 0
      Text = 'Software\T2Ti\'
    end
    object EditValor: TLabeledEdit
      Left = 160
      Top = 40
      Width = 137
      Height = 21
      EditLabel.Width = 28
      EditLabel.Height = 13
      EditLabel.Caption = 'Valor:'
      TabOrder = 1
      Text = 'OK'
    end
    object Button2: TButton
      Left = 16
      Top = 67
      Width = 138
      Height = 25
      Caption = 'Gravar'
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 160
      Top = 67
      Width = 137
      Height = 25
      Caption = 'Carregar'
      TabOrder = 3
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 16
      Top = 98
      Width = 138
      Height = 25
      Caption = 'Remover'
      TabOrder = 4
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 160
      Top = 98
      Width = 137
      Height = 25
      Caption = 'Testar'
      TabOrder = 5
      OnClick = Button5Click
    end
  end
  object GroupBox3: TGroupBox
    Left = 319
    Top = 55
    Width = 305
    Height = 146
    Caption = '03 - N'#250'mero do HD'
    TabOrder = 3
    object Button6: TButton
      Left = 16
      Top = 112
      Width = 129
      Height = 25
      Caption = 'Ler Chave'
      TabOrder = 0
      OnClick = Button6Click
    end
    object EditChaveHD: TLabeledEdit
      Left = 16
      Top = 34
      Width = 273
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'Chave:'
      TabOrder = 1
    end
    object EditContraChaveHD: TLabeledEdit
      Left = 16
      Top = 77
      Width = 273
      Height = 21
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Contra Chave:'
      TabOrder = 2
    end
    object Button7: TButton
      Left = 159
      Top = 112
      Width = 130
      Height = 25
      Caption = 'Gerar Contra Chave'
      TabOrder = 3
      OnClick = Button7Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 319
    Top = 207
    Width = 305
    Height = 146
    Caption = '04 - N'#250'mero MAC'
    TabOrder = 4
    object Button8: TButton
      Left = 16
      Top = 112
      Width = 129
      Height = 25
      Caption = 'Ler Chave'
      TabOrder = 0
      OnClick = Button8Click
    end
    object EditChaveMAC: TLabeledEdit
      Left = 16
      Top = 34
      Width = 273
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'Chave:'
      TabOrder = 1
    end
    object EditContraChaveMAC: TLabeledEdit
      Left = 16
      Top = 77
      Width = 273
      Height = 21
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Contra Chave:'
      TabOrder = 2
    end
    object Button9: TButton
      Left = 159
      Top = 112
      Width = 130
      Height = 25
      Caption = 'Gerar Contra Chave'
      TabOrder = 3
      OnClick = Button9Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 8
    Top = 255
    Width = 305
    Height = 162
    Caption = '05 - Serial Windows'
    TabOrder = 5
    object Button10: TButton
      Left = 16
      Top = 120
      Width = 129
      Height = 25
      Caption = 'Ler Chave'
      TabOrder = 0
      OnClick = Button10Click
    end
    object EditChaveSerial: TLabeledEdit
      Left = 16
      Top = 42
      Width = 273
      Height = 21
      EditLabel.Width = 35
      EditLabel.Height = 13
      EditLabel.Caption = 'Chave:'
      TabOrder = 1
    end
    object EditContraChaveSerial: TLabeledEdit
      Left = 16
      Top = 85
      Width = 273
      Height = 21
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Contra Chave:'
      TabOrder = 2
    end
    object Button11: TButton
      Left = 159
      Top = 120
      Width = 130
      Height = 25
      Caption = 'Gerar Contra Chave'
      TabOrder = 3
      OnClick = Button11Click
    end
  end
  object GroupBox6: TGroupBox
    Left = 319
    Top = 359
    Width = 305
    Height = 58
    Caption = '06 - Conjunto'
    TabOrder = 6
    object Button12: TButton
      Left = 16
      Top = 22
      Width = 57
      Height = 25
      Caption = 'Gerar'
      TabOrder = 0
      OnClick = Button12Click
    end
    object EditContraChaveConjunto: TLabeledEdit
      Left = 79
      Top = 26
      Width = 219
      Height = 21
      EditLabel.Width = 71
      EditLabel.Height = 13
      EditLabel.Caption = 'Contra Chave:'
      TabOrder = 1
    end
  end
  object JvComputerInfoEx: TJvComputerInfoEx
    Left = 520
    Top = 16
  end
end
