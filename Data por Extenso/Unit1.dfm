object Form1: TForm1
  Left = 193
  Top = 199
  Width = 986
  Height = 589
  Caption = 'Form1'
  Color = clNavy
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 528
    Top = 360
    Width = 147
    Height = 13
    Caption = 'M'#233'dia dos Volumes Refugados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblmedia: TLabel
    Left = 528
    Top = 384
    Width = 3
    Height = 13
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 728
    Top = 360
    Width = 156
    Height = 13
    Caption = 'Porcentagem de refugos no m'#234's:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 528
    Top = 48
    Width = 433
    Height = 297
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Cod'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeMode = imAlpha
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Raioe'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Raioi'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Altura'
        Visible = True
      end>
  end
  object pnlcod: TPanel
    Left = 112
    Top = 48
    Width = 393
    Height = 73
    Color = clNavy
    TabOrder = 1
    object Label2: TLabel
      Left = 128
      Top = 8
      Width = 115
      Height = 13
      Caption = 'C'#243'digo do Tubo de PVC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object txtcod: TEdit
      Left = 128
      Top = 36
      Width = 121
      Height = 21
      MaxLength = 5
      TabOrder = 0
    end
  end
  object pnlcampos: TPanel
    Left = 112
    Top = 152
    Width = 393
    Height = 177
    Color = clNavy
    Enabled = False
    TabOrder = 4
    object Label4: TLabel
      Left = 8
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Altura'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 8
      Top = 24
      Width = 20
      Height = 13
      Caption = 'M'#234's'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 104
      Width = 61
      Height = 13
      Caption = 'Raio Externo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 136
      Width = 58
      Height = 13
      Caption = 'Raio Interno'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object txtri: TEdit
      Left = 80
      Top = 132
      Width = 97
      Height = 21
      TabOrder = 3
      OnExit = txtriExit
    end
    object txtre: TEdit
      Left = 80
      Top = 100
      Width = 97
      Height = 21
      TabOrder = 2
    end
    object txth: TEdit
      Left = 80
      Top = 60
      Width = 65
      Height = 21
      TabOrder = 1
    end
    object cbomes: TComboBox
      Left = 80
      Top = 20
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Janeiro'
      Items.Strings = (
        'Janeiro'
        'Fevereiro'
        'Mar'#231'o'
        'Abril'
        'Maio'
        'Junho'
        'Julho'
        'Agosto'
        'Setembro'
        'Outubro'
        'Novembro'
        'Dezembro')
    end
    object pnlvolume: TPanel
      Left = 248
      Top = 104
      Width = 113
      Height = 49
      Color = clNavy
      TabOrder = 4
      object lblvol: TLabel
        Left = 9
        Top = 4
        Width = 61
        Height = 13
        Caption = 'Volume atual'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblr: TLabel
        Left = 8
        Top = 28
        Width = 89
        Height = 13
        AutoSize = False
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object pnlcalculo: TPanel
      Left = 248
      Top = 16
      Width = 113
      Height = 49
      Color = clNavy
      TabOrder = 5
      Visible = False
      object Label3: TLabel
        Left = 10
        Top = 4
        Width = 87
        Height = 13
        Caption = 'Volume calculado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object lblr2: TLabel
        Left = 8
        Top = 28
        Width = 97
        Height = 13
        AutoSize = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
  end
  object pnlbotoes: TPanel
    Left = 120
    Top = 360
    Width = 385
    Height = 57
    Color = clNavy
    TabOrder = 2
    object cmdexc: TButton
      Left = 198
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 2
      OnClick = cmdexcClick
    end
    object cmdalt: TButton
      Left = 102
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = cmdaltClick
    end
    object cmdcad: TButton
      Left = 8
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = cmdcadClick
    end
    object cmdcon: TButton
      Left = 296
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Consultar'
      TabOrder = 3
      OnClick = cmdconClick
    end
  end
  object pnlconfirm: TPanel
    Left = 112
    Top = 440
    Width = 401
    Height = 57
    Color = clNavy
    TabOrder = 3
    Visible = False
    object lblmsg: TLabel
      Left = 8
      Top = 8
      Width = 385
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cmdconfirma: TButton
      Left = 96
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Confirma'
      TabOrder = 0
      OnClick = cmdconfirmaClick
    end
    object cmdcancela: TButton
      Left = 208
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Cancela'
      TabOrder = 1
      OnClick = cmdcancelaClick
    end
  end
  object lstporcentagem: TListBox
    Left = 736
    Top = 376
    Width = 41
    Height = 161
    Enabled = False
    ItemHeight = 13
    TabOrder = 5
  end
  object ListBox1: TListBox
    Left = 776
    Top = 376
    Width = 89
    Height = 161
    Enabled = False
    ItemHeight = 13
    Items.Strings = (
      'Janeiro'
      'Fevereiro'
      'Mar'#231'o'
      'Abril'
      'Maio'
      'Junho'
      'Julho'
      'Agosto'
      'Setembro'
      'Outubro'
      'Novembro'
      'Dezembro')
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = sql
    Left = 8
    Top = 8
  end
  object sql: TQuery
    Active = True
    Filtered = True
    SQL.Strings = (
      'select * from projeto order by numero_mes')
    Left = 40
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = sql2
    Left = 8
    Top = 48
  end
  object sql2: TQuery
    Active = True
    SQL.Strings = (
      'select * from projeto')
    Left = 40
    Top = 48
  end
end
