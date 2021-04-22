object FrmOrtografia: TFrmOrtografia
  Left = 0
  Top = 0
  Caption = 'Ortografia'
  ClientHeight = 99
  ClientWidth = 405
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 12
  object StgOrtografia: TStringGrid
    Left = 0
    Top = 0
    Width = 405
    Height = 99
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    ColCount = 2
    DefaultColWidth = 200
    DefaultRowHeight = 22
    FixedCols = 0
    RowCount = 2
    GradientEndColor = clWhite
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
    PopupMenu = PpmOrtografia
    TabOrder = 0
    OnSetEditText = StgOrtografiaSetEditText
    ExplicitWidth = 404
    ExplicitHeight = 83
    ColWidths = (
      192
      200)
  end
  object PpmOrtografia: TPopupMenu
    Left = 240
    Top = 36
    object MniDeletar: TMenuItem
      Caption = 'Deletar'
      ShortCut = 46
      OnClick = MniDeletarClick
    end
  end
end
