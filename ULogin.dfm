object FLogin: TFLogin
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 231
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 24
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label2: TLabel
    Left = 56
    Top = 72
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object Edit1: TEdit
    Left = 56
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 56
    Top = 88
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 56
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Login'
    ModalResult = 1
    TabOrder = 2
  end
  object Button2: TButton
    Left = 137
    Top = 144
    Width = 75
    Height = 25
    Caption = 'Sair'
    ModalResult = 2
    TabOrder = 3
    OnClick = Button2Click
  end
end
