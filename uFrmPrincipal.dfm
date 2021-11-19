object frmPrincipal: TfrmPrincipal
  Left = 658
  Top = 309
  Caption = 'Connections - Menu'
  ClientHeight = 278
  ClientWidth = 449
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
    Width = 449
    Height = 278
    Align = alClient
    ParentBackground = False
    TabOrder = 0
    object btnCadastrarElemento: TSpeedButton
      Left = 123
      Top = 59
      Width = 197
      Height = 46
      Caption = 'Cadastrar elementos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCadastrarElementoClick
    end
    object btnCadastrarConexao: TSpeedButton
      Left = 123
      Top = 111
      Width = 197
      Height = 46
      Caption = 'Cadastrar conex'#227'o'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnCadastrarConexaoClick
    end
    object btnChecarConexao: TSpeedButton
      Left = 123
      Top = 163
      Width = 197
      Height = 46
      Caption = 'Checar conex'#227'o'
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnChecarConexaoClick
    end
    object btnSair: TSpeedButton
      Left = 123
      Top = 215
      Width = 197
      Height = 46
      Caption = 'Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Yu Gothic UI'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSairClick
    end
    object pnlTitulo: TPanel
      Left = 1
      Top = 1
      Width = 447
      Height = 52
      Align = alTop
      Caption = ' Menu Principal'
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
  end
end
