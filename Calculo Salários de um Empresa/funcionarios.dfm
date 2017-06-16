object Form1: TForm1
  Left = 249
  Top = 219
  Width = 702
  Height = 499
  Caption = 'Form1'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblmed: TLabel
    Left = 300
    Top = 280
    Width = 3
    Height = 13
    Color = clGradientInactiveCaption
    ParentColor = False
  end
  object lblpor: TLabel
    Left = 300
    Top = 328
    Width = 3
    Height = 13
    Color = clGradientInactiveCaption
    ParentColor = False
  end
  object lblmais: TLabel
    Left = 300
    Top = 376
    Width = 3
    Height = 13
    Color = clGradientInactiveCaption
    ParentColor = False
  end
  object lblprg: TLabel
    Left = 300
    Top = 424
    Width = 3
    Height = 13
    Color = clGradientInactiveCaption
    ParentColor = False
  end
  object Label2: TLabel
    Left = 208
    Top = 80
    Width = 278
    Height = 23
    Caption = 'Digite a quantidade de funcion'#225'rios:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 32
    Top = 280
    Width = 257
    Height = 16
    Caption = 'M'#233'dia de valores que a empresa ir'#225' pagar :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 328
    Width = 265
    Height = 16
    Caption = 'Funcion'#225'rios que ganham acima de R$500 (%):'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 88
    Top = 376
    Width = 186
    Height = 16
    Caption = 'Funcion'#225'rio que mais trabalhou :'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 424
    Width = 265
    Height = 16
    Caption = 'N'#250'mero de funcion'#225'rios que n'#227'o trabalharam:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmdok: TButton
    Left = 320
    Top = 208
    Width = 75
    Height = 25
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = cmdokClick
  end
  object txtq: TEdit
    Left = 272
    Top = 152
    Width = 169
    Height = 21
    TabOrder = 0
  end
end
