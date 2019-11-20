object FPrincipal: TFPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 231
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 98
    Height = 13
    Caption = 'TimeOut (Segundos)'
  end
  object Label2: TLabel
    Left = 56
    Top = 104
    Width = 480
    Height = 77
    Caption = 'Aguardndo Login'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object EdtTimeOutLogoff: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '10'
  end
  object ApplicationEvents1: TApplicationEvents
    OnIdle = ApplicationEvents1Idle
    OnMessage = ApplicationEvents1Message
    Left = 248
    Top = 120
  end
  object TimerLogoff: TTimer
    Enabled = False
    Interval = 1800000
    OnTimer = TimerLogoffTimer
    Left = 240
    Top = 56
  end
end
