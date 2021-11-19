object frmCadastroElemento: TfrmCadastroElemento
  Left = 640
  Top = 316
  Caption = 'Connections - Cadastro Elementos'
  ClientHeight = 196
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
    Height = 196
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object btnVoltar: TSpeedButton
      Left = 8
      Top = 136
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
      Top = 136
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
    object lblElementos: TLabel
      Left = 24
      Top = 75
      Width = 266
      Height = 25
      Caption = 'N'#250'mero de elementos:'
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
      Caption = ' Cadastro de elementos '
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
    object edtElementos: TEdit
      Left = 296
      Top = 72
      Width = 169
      Height = 33
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      OnKeyPress = edtElementosKeyPress
    end
  end
end
