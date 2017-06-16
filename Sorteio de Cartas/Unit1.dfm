object Form1: TForm1
  Left = 182
  Top = 226
  Width = 640
  Height = 343
  Caption = 'Desafio de Delphi'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object imgsort: TImage
    Left = 432
    Top = 56
    Width = 91
    Height = 129
  end
  object imgcarta: TImage
    Left = 120
    Top = 56
    Width = 91
    Height = 129
  end
  object lblres: TLabel
    Left = 120
    Top = 192
    Width = 401
    Height = 28
    Alignment = taCenter
    AutoSize = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -20
    Font.Name = 'Arial Black'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 192
    Top = 32
    Width = 268
    Height = 16
    Caption = 'Escolha uma carta e clique em Sortear'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 200
    Top = 232
    Width = 92
    Height = 20
    Caption = 'Pontua'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblpontusuario: TLabel
    Left = 312
    Top = 256
    Width = 55
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 200
    Top = 256
    Width = 47
    Height = 20
    Caption = 'Voc'#234':'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 200
    Top = 280
    Width = 104
    Height = 20
    Caption = 'Computador:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clSilver
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblpontcomp: TLabel
    Left = 312
    Top = 280
    Width = 55
    Height = 20
    Alignment = taCenter
    AutoSize = False
    Caption = '0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cmdsort: TButton
    Left = 280
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Sortear'
    TabOrder = 0
    OnClick = cmdsortClick
  end
  object cbocartas: TComboBox
    Left = 248
    Top = 72
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    OnChange = cbocartasChange
  end
  object DataSource1: TDataSource
    DataSet = Query1
    Left = 8
    Top = 8
  end
  object Query1: TQuery
    SQL.Strings = (
      'select * from banco_dados')
    Left = 40
    Top = 8
  end
end
