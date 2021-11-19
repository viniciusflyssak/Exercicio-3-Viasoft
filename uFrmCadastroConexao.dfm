object frmCadastroConexao: TfrmCadastroConexao
  Left = 624
  Top = 332
  Caption = 'Connection - Cadastro conex'#227'o'
  ClientHeight = 225
  ClientWidth = 488
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object pnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 488
    Height = 225
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object btnVoltar: TSpeedButton
      Left = 8
      Top = 168
      Width = 142
      Height = 52
      Caption = 'Voltar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnVoltarClick
    end
    object btnCadastrar: TSpeedButton
      Left = 337
      Top = 168
      Width = 142
      Height = 52
      Caption = 'Cadastrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCadastrarClick
    end
    object lblElemento1: TLabel
      Left = 33
      Top = 72
      Width = 140
      Height = 25
      Caption = 'Elemento 1:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblElemento2: TLabel
      Left = 33
      Top = 116
      Width = 140
      Height = 25
      Caption = 'Elemento 2:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 486
      Height = 48
      Align = alTop
      Caption = ' Cadastro de conex'#227'o'
      Color = clBackground
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object edtElemento1: TEdit
      Left = 185
      Top = 72
      Width = 263
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtElementoKeyPress
    end
    object edtElemento2: TEdit
      Left = 185
      Top = 116
      Width = 263
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      OnKeyPress = edtElementoKeyPress
    end
  end
end
