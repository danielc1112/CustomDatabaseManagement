object dExport: TdExport
  Left = 0
  Top = 0
  Caption = 'Export'
  ClientHeight = 445
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object btnExport: TSpeedButton
    Left = 122
    Top = 393
    Width = 73
    Height = 31
    Caption = 'Export'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    OnClick = btnExportClick
  end
  object dbgInsertSQL: TSMDBGrid
    Left = 8
    Top = 8
    Width = 401
    Height = 293
    DataSource = dsExport
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = dbgInsertSQLDrawColumnCell
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = clWindow
    GridStyle.EvenColor = clWindow
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoBLOBEditor, eoTitleWordWrap, eoFilterAutoApply]
    RegistryKey = 'Software\Scalabium'
    RegistrySection = 'SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 22
    ScrollBars = ssHorizontal
    Columns = <
      item
        Expanded = False
        FieldName = 'Field'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 160
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Include'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 70
        Visible = True
        InplaceEditor = ieCheckbox
      end
      item
        Expanded = False
        FieldName = 'Type'
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 120
        Visible = True
      end>
  end
  object btnSelectAll: TButton
    Left = 120
    Top = 307
    Width = 75
    Height = 25
    Caption = 'Select All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnSelectAllClick
  end
  object btnUnSelectAll: TButton
    Left = 207
    Top = 307
    Width = 75
    Height = 25
    Caption = 'UnSelect All'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnUnSelectAllClick
  end
  object edtDelimiter: TLabeledEdit
    Left = 267
    Top = 354
    Width = 39
    Height = 24
    EditLabel.Width = 41
    EditLabel.Height = 13
    EditLabel.Caption = 'Delimiter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    LabelPosition = lpLeft
    ParentFont = False
    TabOrder = 3
    Text = ','
  end
  object rgMethod: TRadioGroup
    Left = 65
    Top = 338
    Width = 114
    Height = 50
    Caption = 'Method'
    ItemIndex = 0
    Items.Strings = (
      'CSV'
      'Insert Statements')
    TabOrder = 4
    OnClick = rgMethodClick
  end
  object btnCancel: TButton
    Left = 209
    Top = 393
    Width = 73
    Height = 31
    Caption = 'Cancel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ModalResult = 2
    ParentFont = False
    TabOrder = 5
  end
  object mmoExport: TMemo
    Left = 346
    Top = 354
    Width = 33
    Height = 34
    TabOrder = 6
    Visible = False
    WordWrap = False
  end
  object pbExport: TProgressBar
    Left = 0
    Top = 428
    Width = 419
    Height = 17
    Align = alBottom
    Smooth = True
    TabOrder = 7
  end
  object dsExport: TDataSource
    DataSet = mtbExport
    Left = 224
    Top = 96
  end
  object mtbExport: TkbmMemTable
    DesignActivation = True
    AttachedAutoRefresh = True
    AttachMaxCount = 1
    FieldDefs = <>
    IndexDefs = <>
    SortOptions = []
    PersistentBackup = False
    ProgressFlags = [mtpcLoad, mtpcSave, mtpcCopy]
    LoadedCompletely = False
    SavedCompletely = False
    FilterOptions = []
    Version = '7.18.00 Standard Edition'
    LanguageID = 0
    SortID = 0
    SubLanguageID = 1
    LocaleID = 1024
    Left = 192
    Top = 96
    object mtbExportField: TStringField
      FieldName = 'Field'
      Size = 50
    end
    object mtbExportInclude: TBooleanField
      FieldName = 'Include'
    end
    object mtbExportType: TStringField
      FieldName = 'Type'
    end
  end
end
