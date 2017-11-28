object Form1: TForm1
  Left = 0
  Top = 0
  Anchors = [akTop, akRight]
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Form1'
  ClientHeight = 444
  ClientWidth = 729
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    729
    444)
  PixelsPerInch = 96
  TextHeight = 13
  object Perimetr_Label: TLabel
    Left = 613
    Top = 56
    Width = 50
    Height = 13
    Caption = 'Perimetr : '
  end
  object A_Label: TLabel
    Left = 623
    Top = 75
    Width = 40
    Height = 13
    Caption = 'Side A : '
  end
  object B_Label: TLabel
    Left = 624
    Top = 94
    Width = 39
    Height = 13
    Caption = 'Side B : '
  end
  object C_Label: TLabel
    Left = 623
    Top = 113
    Width = 40
    Height = 13
    Caption = 'Side C : '
  end
  object Square_Label: TLabel
    Left = 619
    Top = 132
    Width = 44
    Height = 13
    Caption = 'Square : '
  end
  object Perimetr_Data_Label: TLabel
    Left = 669
    Top = 56
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '0'
  end
  object A_Data_Label: TLabel
    Left = 669
    Top = 75
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '0'
  end
  object B_Data_Label: TLabel
    Left = 669
    Top = 94
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '0'
  end
  object C_Data_Label: TLabel
    Left = 669
    Top = 113
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '0'
  end
  object S_Data_Label: TLabel
    Left = 669
    Top = 132
    Width = 6
    Height = 13
    Anchors = [akTop, akRight]
    Caption = '0'
  end
  object im: TImage
    Left = 16
    Top = 16
    Width = 481
    Height = 420
  end
  object Label1: TLabel
    Left = 544
    Top = 56
    Width = 44
    Height = 13
    Caption = 'Accuracy'
  end
  object Button_Create: TButton
    Left = 544
    Top = 16
    Width = 177
    Height = 34
    Caption = 'CREATE'
    TabOrder = 0
    OnClick = Button_CreateClick
  end
  object ListBox1: TListBox
    Left = 503
    Top = 160
    Width = 218
    Height = 273
    ItemHeight = 13
    TabOrder = 1
    OnDblClick = ListBox1DblClick
  end
  object RB_1: TRadioButton
    Left = 545
    Top = 75
    Width = 27
    Height = 17
    Caption = '1'
    Checked = True
    TabOrder = 2
    TabStop = True
  end
  object RB_01: TRadioButton
    Left = 545
    Top = 98
    Width = 43
    Height = 17
    Caption = '0.1'
    TabOrder = 3
  end
end
