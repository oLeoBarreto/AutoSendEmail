object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = 'Email'
  ClientHeight = 238
  ClientWidth = 249
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMinimized
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 243
    Height = 192
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 32
      Top = 6
      Width = 12
      Height = 13
      Caption = 'To'
    end
    object Label4: TLabel
      Left = 32
      Top = 48
      Width = 3
      Height = 13
    end
    object Label5: TLabel
      Left = 32
      Top = 46
      Width = 36
      Height = 13
      Caption = 'Subject'
    end
    object Label6: TLabel
      Left = 32
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Body'
    end
    object Edt_subject: TEdit
      Left = 32
      Top = 60
      Width = 185
      Height = 21
      TabOrder = 0
      Text = 'Aviso de vencimento'
    end
    object Edt_body: TMemo
      Left = 32
      Top = 107
      Width = 185
      Height = 78
      Lines.Strings = (
        'Prezado Cliente, como costa em '
        'nosso registro, sua d'#237'vida ainda '
        'est'#225' em aberto,'
        'aconselhamos ao senhor(a) que '
        'entre em contato conosco para '
        'entender o acontecido.'
        '  ')
      ParentShowHint = False
      ShowHint = False
      TabOrder = 1
    end
    object Edt_to: TEdit
      Left = 32
      Top = 21
      Width = 185
      Height = 21
      TabOrder = 2
      TextHint = 'Devedores(a)'
    end
  end
  object Btn_send: TButton
    Left = 35
    Top = 201
    Width = 185
    Height = 33
    Caption = 'Send'
    TabOrder = 1
    OnClick = Btn_sendClick
  end
  object IdMessage1: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 512
    Top = 72
  end
  object IdSMTP1: TIdSMTP
    SASLMechanisms = <>
    Left = 456
    Top = 48
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 392
    Top = 72
  end
  object FDQuerySale: TFDQuery
    Connection = DmDados.FD_Connect
    Transaction = FDTransactionSale
    SQL.Strings = (
      'SELECT C.email'
      'FROM sales S'
      'JOIN clients C on C.id_clients = S.id_clients'
      'WHERE S.billed = '#39'N'#39
      '  AND C.id_clients > 0')
    Left = 46
    Top = 288
    object FDQuerySaleEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 120
    end
  end
  object FDTransactionSale: TFDTransaction
    Connection = DmDados.FD_Connect
    Left = 126
    Top = 288
  end
  object DS_Sale: TDataSource
    DataSet = FDQuerySale
    Left = 206
    Top = 288
  end
end
