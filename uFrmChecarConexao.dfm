object frmChecarConexao: TfrmChecarConexao
  Left = 624
  Top = 332
  Caption = 'Connections - Checar conex'#227'o'
  ClientHeight = 231
  ClientWidth = 505
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
    Width = 505
    Height = 231
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
    object btnChecar: TSpeedButton
      Left = 337
      Top = 168
      Width = 142
      Height = 52
      Caption = 'Checar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnChecarClick
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
    object lblResultado: TLabel
      Left = 168
      Top = 180
      Width = 153
      Height = 25
      Alignment = taCenter
      AutoSize = False
      Caption = 'True'
      Font.Charset = ANSI_CHARSET
      Font.Color = clLime
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 503
      Height = 48
      Align = alTop
      Caption = 'Checar Conex'#227'o'
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
