object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Find and Arch'
  ClientHeight = 516
  ClientWidth = 903
  Color = clBtnFace
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Splitter1: TSplitter
    Left = 257
    Top = 0
    Width = 5
    Height = 516
    Color = clSilver
    ParentColor = False
    ResizeStyle = rsUpdate
    ExplicitLeft = 393
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 516
    Align = alLeft
    BevelEdges = [beRight]
    BevelOuter = bvNone
    Constraints.MinWidth = 220
    ParentBackground = False
    ShowCaption = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 257
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = 9790720
      ParentBackground = False
      TabOrder = 0
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 257
        Height = 41
        Align = alClient
        Alignment = taCenter
        Caption = #1057#1087#1080#1089#1086#1082' '#1082#1072#1090#1072#1083#1086#1075#1086#1074
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        ExplicitWidth = 131
        ExplicitHeight = 19
      end
    end
    object ListBoxDirs: TListBox
      AlignWithMargins = True
      Left = 10
      Top = 78
      Width = 237
      Height = 428
      Margins.Left = 10
      Margins.Top = 0
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      ItemHeight = 19
      MultiSelect = True
      TabOrder = 1
    end
    object Panel3: TPanel
      AlignWithMargins = True
      Left = 10
      Top = 44
      Width = 237
      Height = 29
      Margins.Left = 10
      Margins.Right = 10
      Margins.Bottom = 5
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object ButtonDirAdd: TButton
        Left = 0
        Top = 0
        Width = 100
        Height = 29
        Align = alLeft
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100'...'
        TabOrder = 0
        OnClick = ButtonDirAddClick
      end
      object ButtonDirDel: TButton
        Left = 100
        Top = 0
        Width = 100
        Height = 29
        Align = alLeft
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 1
        OnClick = ButtonDirDelClick
      end
    end
  end
  object Panel4: TPanel
    Left = 262
    Top = 0
    Width = 641
    Height = 516
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PanelSet: TPanel
      Left = 0
      Top = 0
      Width = 641
      Height = 113
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label4: TLabel
        Left = 14
        Top = 50
        Width = 109
        Height = 19
        Caption = #1052#1072#1089#1082#1072' '#1092#1072#1081#1083#1086#1074':'
      end
      object Label5: TLabel
        Left = 14
        Top = 83
        Width = 118
        Height = 19
        Caption = #1050#1086#1085#1077#1095#1085#1099#1081' '#1087#1091#1090#1100':'
      end
      object SpeedButtonArchFolder: TsSpeedButton
        Left = 604
        Top = 79
        Width = 29
        Height = 29
        Caption = '...'
        OnClick = SpeedButtonArchFolderClick
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 12615680
        ParentBackground = False
        TabOrder = 0
        object Label2: TLabel
          Left = 0
          Top = 0
          Width = 600
          Height = 41
          Align = alClient
          Alignment = taCenter
          Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 77
          ExplicitHeight = 19
        end
        object SpeedButtonHelp: TsSpeedButton
          Left = 600
          Top = 0
          Width = 41
          Height = 41
          Align = alRight
          Flat = True
          Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00023333330A474747124E4E4E17555555185555551855555518555555185555
            551855555518555555184E4E4E17494949154747471255555503000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000003B3B
            3B0D5151512C5252524E52525260555555635555556355555563555555635555
            55635555556355555563545454615252525A5353534D4E4E4E0D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000026464
            641CC4C4C4A1B6B6B6C4AFAFAFD3AEAEAED6AEAEAED6AEAEAED6AEAEAED6AEAE
            AED6AEAEAED6AEAEAED6AFAFAFD5B3B3B3CD6C6C6C9955555518000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000026B6B
            6B1FEAEAEAF3ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
            ECFFECECECFFECECECFFECECECFFECECECFF838383A64A4A4A18000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000007979
            7913EBEBEBF1ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
            ECFFECECECFFECECECFFECECECFFECECECFF979797734E4E4E0D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000009999
            9905E6E6E67BE2E2E28CEBEBEBF8ECECECFFECECECFFECECECFFECECECFFECEC
            ECFFECECECFFECECECFFD0D0D0BADADADA90A6A6A62B00000003000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000040404004AEAEAE45EBEBEBF9ECECECFFECECECFFECECECFFECEC
            ECFFECECECFF9B9B9BB2545454404040400C0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000026D6D6D23E9E9E9F4ECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000026D6D6D23E9E9E9F4ECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000026D6D6D23E9E9E9F4ECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000026D6D6D23E9E9E9F4ECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000265656526E8E8E8F5ECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000133333305474747126161613FE8E8E8F6ECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000004D4D
            4D0A505050235050504963636381E8E8E8FAECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7474749C52525238404040080000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000024E4E
            4E175353534D5D5D5D91C0C0C0E3ECECECFFECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE757575994F4F4F37494949070000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000026868
            6820E9E9E9F4ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFD787878864F4F4F2D333333050000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000017474
            7416EAEAEAF2ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
            ECFFECECECFC8888885A47474719000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000009999
            990AECECECF0ECECECFFECECECFFECECECFFECECECFFECECECFFECECECFFECEC
            ECFFEDEDEDFBB6B6B6312B2B2B06000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000002000000044646460B494949154C4C4C1B4747
            4719404040102B2B2B0600000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000004949490E4F4F4F2D53535350505050635151
            515B5454543D4E4E4E1A33333305000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000242424074D4D4D2B5151516B535353A5545454BF5555
            55B5545454865151514551515113000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004B4B4B118E8E8E63DDDDDDE7ECECECFFECECECFFDDDD
            DDFB808080C85454547053535325000000030000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000014E4E4E17DCDCDCCBECECECFFECECECFFECECECFFECEC
            ECFFDADADAF6565656865151512F333333050000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000170707019E7E7E7EDECECECFFECECECFFECECECFFECEC
            ECFFEBEBEBFE7777778B5151512C404040040000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000080808010E9E9E9EAECECECFFECECECFFECECECFFECEC
            ECFFEAEAEAFC767676684949491C000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000003E5E5E5A8ECECECFFECECECFFECECECFFECEC
            ECFFE3E3E3DA5959592E4646460B000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000CCCCCC14EBEBEB7FEBEBEB7FEBEBEB7FEBEB
            EB7FCDCDCD384040400800000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          OnClick = SpeedButtonHelpClick
          ExplicitLeft = 601
        end
      end
      object EditMask: TEdit
        Left = 138
        Top = 47
        Width = 231
        Height = 27
        TabOrder = 1
        Text = '*.txt'
      end
      object EditArchFolder: TEdit
        Left = 138
        Top = 80
        Width = 460
        Height = 27
        TabOrder = 2
        Text = 'D:\'
      end
    end
    object Panel7: TPanel
      Left = 0
      Top = 113
      Width = 641
      Height = 403
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitTop = 129
      ExplicitHeight = 387
      object LabelCurDir: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 381
        Width = 635
        Height = 19
        Align = alBottom
        ExplicitTop = 365
        ExplicitWidth = 5
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 641
        Height = 41
        Align = alTop
        BevelOuter = bvNone
        Color = 12615680
        ParentBackground = False
        TabOrder = 0
        object Label3: TLabel
          Left = 0
          Top = 0
          Width = 641
          Height = 41
          Align = alClient
          Alignment = taCenter
          Caption = #1055#1086#1080#1089#1082
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Layout = tlCenter
          ExplicitWidth = 44
          ExplicitHeight = 19
        end
      end
      object ListBox1: TListBox
        AlignWithMargins = True
        Left = 10
        Top = 102
        Width = 621
        Height = 205
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Margins.Bottom = 0
        Align = alClient
        ItemHeight = 19
        TabOrder = 1
        ExplicitLeft = 6
        ExplicitTop = 82
        ExplicitWidth = 627
        ExplicitHeight = 271
      end
      object Panel9: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 51
        Width = 621
        Height = 41
        Margins.Left = 10
        Margins.Top = 10
        Margins.Right = 10
        Margins.Bottom = 10
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        ExplicitLeft = 168
        ExplicitTop = 56
        ExplicitWidth = 185
        object LabelState: TLabel
          AlignWithMargins = True
          Left = 303
          Top = 3
          Width = 315
          Height = 35
          Align = alClient
          Caption = #1054#1078#1080#1076#1072#1077#1090
          Layout = tlCenter
          ExplicitLeft = 325
          ExplicitTop = 22
          ExplicitWidth = 66
          ExplicitHeight = 19
        end
        object Button1: TButton
          Left = 0
          Top = 0
          Width = 100
          Height = 41
          Align = alLeft
          Caption = #1053#1072#1095#1072#1090#1100
          TabOrder = 0
          OnClick = Button1Click
          ExplicitLeft = 6
          ExplicitTop = 12
          ExplicitHeight = 29
        end
        object Button2: TButton
          Left = 100
          Top = 0
          Width = 100
          Height = 41
          Align = alLeft
          Caption = #1055#1072#1091#1079#1072
          TabOrder = 1
          OnClick = Button2Click
          ExplicitLeft = 112
          ExplicitTop = 12
          ExplicitHeight = 29
        end
        object Button3: TButton
          Left = 200
          Top = 0
          Width = 100
          Height = 41
          Align = alLeft
          Caption = #1054#1089#1090#1072#1085#1086#1074#1080#1090#1100
          TabOrder = 2
          OnClick = Button3Click
          ExplicitLeft = 218
          ExplicitTop = 12
          ExplicitHeight = 29
        end
      end
      object Panel10: TPanel
        AlignWithMargins = True
        Left = 10
        Top = 307
        Width = 621
        Height = 68
        Margins.Left = 10
        Margins.Top = 0
        Margins.Right = 10
        Align = alBottom
        BevelEdges = [beLeft, beRight, beBottom]
        BevelKind = bkFlat
        BevelOuter = bvNone
        Color = clWindow
        ParentBackground = False
        TabOrder = 3
        object LabelZip: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 21
          Width = 611
          Height = 19
          Align = alBottom
          ExplicitWidth = 5
        end
        object Label6: TLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 611
          Height = 19
          Align = alTop
          Caption = #1057#1078#1072#1090#1080#1077
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 55
        end
        object ProgressBar1: TProgressBar
          AlignWithMargins = True
          Left = 3
          Top = 46
          Width = 611
          Height = 17
          Align = alBottom
          TabOrder = 0
          ExplicitLeft = 200
          ExplicitTop = 352
          ExplicitWidth = 150
        end
      end
    end
  end
end
