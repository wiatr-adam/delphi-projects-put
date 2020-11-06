object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Program obliczaj'#261'cy liczb'#281' dni'
  ClientHeight = 121
  ClientWidth = 344
  Color = clBtnFace
  Constraints.MaxHeight = 160
  Constraints.MaxWidth = 360
  Constraints.MinHeight = 160
  Constraints.MinWidth = 360
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object btn_oblicz: TButton
    Left = 10
    Top = 62
    Width = 326
    Height = 51
    Caption = 'OBLICZ'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -35
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btn_obliczClick
  end
  object date_from: TDatePicker
    Left = 10
    Top = 24
    Date = 44132.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 1
  end
  object date_to: TDatePicker
    Left = 186
    Top = 24
    Date = 44132.000000000000000000
    DateFormat = 'dd/MM/yyyy'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    TabOrder = 2
  end
  object date_from_text: TStaticText
    Left = 26
    Top = 7
    Width = 120
    Height = 17
    Caption = 'Podaj dat'#281' pocz'#261'tkow'#261':'
    TabOrder = 3
  end
  object date_to_text: TStaticText
    Left = 212
    Top = 7
    Width = 105
    Height = 17
    Caption = 'Podaj dat'#281' ko'#324'cow'#261':'
    TabOrder = 4
  end
end
