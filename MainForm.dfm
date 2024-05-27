object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 707
  ClientWidth = 1031
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1031
    Height = 235
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 707
    object EditProxyServer: TEdit
      Left = 8
      Top = 8
      Width = 769
      Height = 21
      TabOrder = 0
      Text = '159.148.164.221'
    end
    object Button2: TButton
      Left = 114
      Top = 86
      Width = 111
      Height = 25
      Caption = #1047#1072#1075#1088#1091#1079#1082#1072' '#1080#1079' '#1092#1072#1081#1083#1072
      TabOrder = 1
      OnClick = Button2Click
    end
    object Memo1: TMemo
      Left = 800
      Top = 8
      Width = 217
      Height = 169
      Lines.Strings = (
        'Memo1')
      ScrollBars = ssVertical
      TabOrder = 2
    end
    object EditProxyPort: TEdit
      Left = 8
      Top = 35
      Width = 769
      Height = 21
      TabOrder = 3
      Text = '8080'
    end
    object Button1: TButton
      Left = 11
      Top = 86
      Width = 97
      Height = 25
      Caption = #1057#1090#1072#1088#1090
      TabOrder = 4
      OnClick = Button1Click
    end
    object EditLinkToGo: TEdit
      Left = 8
      Top = 59
      Width = 769
      Height = 21
      TabOrder = 5
      Text = 'EditLinkToGo'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 235
    Width = 1031
    Height = 472
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 264
    ExplicitTop = 584
    ExplicitWidth = 185
    ExplicitHeight = 41
    object WebBrowser1: TWebBrowser
      Left = 1
      Top = 1
      Width = 1029
      Height = 470
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 375
      ExplicitTop = 32
      ExplicitWidth = 511
      ExplicitHeight = 438
      ControlData = {
        4C000000D0340000452D00000000000000000000000000000000000000000000
        000000004C000000000000000000000001000000E0D057007335CF11AE690800
        2B2E126208000000000000004C0000000114020000000000C000000000000046
        8000000000000000000000000000000000000000000000000000000000000000
        00000000000000000100000000000000000000000000000000000000}
    end
  end
  object IdCM: TIdCookieManager
    Left = 968
    Top = 184
  end
  object IdHTTP: TIdHTTP
    AllowCookies = True
    HandleRedirects = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 
      'application/xml,application/xhtml+xml,text/html;q=0.9,text/plain' +
      ';q=0.8,image/png,*/*;q=0.5'
    Request.AcceptCharSet = 'windows-1251,utf-8;q=0.7,*;q=0.3'
    Request.AcceptEncoding = 'gzip,deflate,sdch'
    Request.AcceptLanguage = 'ru-RU,ru;q=0.8,en-US;q=0.6,en;q=0.4'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/533.' +
      '4 (KHTML, like Gecko) Chrome/5.0.375.99 Safari/533.4'
    HTTPOptions = [hoForceEncodeParams]
    CookieManager = IdCM
    Left = 936
    Top = 182
  end
end
