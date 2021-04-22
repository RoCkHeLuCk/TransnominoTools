object FrmTransnomino: TFrmTransnomino
  Left = 617
  Top = 386
  Caption = 'Transnomino Tools V1.1'
  ClientHeight = 438
  ClientWidth = 829
  Color = clBtnFace
  Constraints.MinHeight = 354
  Constraints.MinWidth = 464
  DefaultMonitor = dmPrimary
  DoubleBuffered = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 12
  object SptRelatorio: TSplitter
    Left = 0
    Top = 361
    Width = 829
    Height = 4
    Cursor = crVSplit
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alBottom
    Beveled = True
    Visible = False
    ExplicitTop = 339
    ExplicitWidth = 498
  end
  object GrbArquivos: TGroupBox
    Left = 0
    Top = 137
    Width = 829
    Height = 224
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alClient
    Caption = 'Arquivos'
    TabOrder = 0
    object LtvArquivos: TListView
      Left = 2
      Top = 14
      Width = 825
      Height = 208
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      Columns = <
        item
          Caption = 'Nome'
          Width = 225
        end
        item
          Caption = 'Tipo'
          Width = 60
        end
        item
          Caption = 'Data'
          Width = 150
        end
        item
          Caption = 'Endere'#231'o'
          Width = 150
        end
        item
          Caption = 'Nome Original'
          Width = 200
        end>
      DragMode = dmAutomatic
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      FlatScrollBars = True
      LargeImages = ImlArquivo
      MultiSelect = True
      RowSelect = True
      ParentFont = False
      PopupMenu = PpmArquivo
      SmallImages = ImlArquivo
      TabOrder = 0
      ViewStyle = vsReport
      OnColumnClick = LtvArquivosColumnClick
      OnCompare = LtvArquivosCompare
      OnDeletion = LtvArquivosDeletion
      OnDragDrop = LtvArquivosDragDrop
      OnDragOver = LtvArquivosDragOver
      OnKeyPress = LtvArquivosKeyPress
    end
  end
  object PnlButton: TPanel
    Left = 0
    Top = 0
    Width = 829
    Height = 137
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 1
    object PgcBarra: TPageControl
      Left = 1
      Top = 1
      Width = 827
      Height = 104
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ActivePage = TbsContar
      Align = alClient
      Images = ImlBarra
      Style = tsButtons
      TabOrder = 0
      OnChange = PgcBarraChange
      object TbsSubstituir: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Substituir'
        object LblSubProcurar: TLabel
          Left = 9
          Top = 5
          Width = 44
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Procurar:'
        end
        object LblSubSubtituit: TLabel
          Left = 5
          Top = 29
          Width = 46
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Substituir:'
        end
        object EdtSubProcurar: TEdit
          Left = 59
          Top = 2
          Width = 225
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabOrder = 0
          OnChange = BtnExecutarClick
        end
        object EdtSubSubistituir: TEdit
          Left = 59
          Top = 25
          Width = 242
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabOrder = 1
          OnChange = BtnExecutarClick
          OnKeyPress = EdtSubProcurarKeyPress
        end
        object CkbSubCaseSen: TCheckBox
          Left = 314
          Top = 5
          Width = 89
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Case Sensitive'
          TabOrder = 2
          OnClick = BtnExecutarClick
        end
        object CkbSubTodasOcor: TCheckBox
          Left = 314
          Top = 28
          Width = 111
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Todas Ocorrencias'
          TabOrder = 3
          OnClick = BtnExecutarClick
        end
        object BtnSubProcurar: TButton
          Left = 287
          Top = 2
          Width = 14
          Height = 20
          Caption = '?'
          TabOrder = 4
          OnClick = BtnSubProcurarClick
        end
      end
      object TbsContar: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Contar'
        ImageIndex = 1
        object LblContInicio: TLabel
          Left = 6
          Top = 5
          Width = 55
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Texto inicio:'
        end
        object LblContFim: TLabel
          Left = 14
          Top = 27
          Width = 45
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Texto fim:'
        end
        object LblContMascara: TLabel
          Left = 312
          Top = 5
          Width = 40
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Mascara:'
        end
        object LblContIniciar: TLabel
          Left = 305
          Top = 27
          Width = 48
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Iniciar em:'
        end
        object LblContInserir: TLabel
          Left = 181
          Top = 51
          Width = 51
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Inseriri em:'
          Enabled = False
        end
        object LblContRepetir: TLabel
          Left = 312
          Top = 52
          Width = 35
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Repetir:'
        end
        object EdtContInicio: TEdit
          Left = 64
          Top = 2
          Width = 229
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabOrder = 0
          OnChange = BtnExecutarClick
          OnKeyPress = EdtSubProcurarKeyPress
        end
        object EdtContFim: TEdit
          Left = 64
          Top = 25
          Width = 229
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          TabOrder = 1
          OnChange = BtnExecutarClick
          OnKeyPress = EdtSubProcurarKeyPress
        end
        object EdtContMascara: TEdit
          Left = 356
          Top = 2
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taCenter
          TabOrder = 2
          Text = '00'
          OnChange = BtnExecutarClick
        end
        object EdtContIniciar: TEdit
          Left = 356
          Top = 25
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          TabOrder = 3
          Text = '0'
          OnChange = BtnExecutarClick
        end
        object UpdContIniciar: TUpDown
          Left = 398
          Top = 25
          Width = 15
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtContIniciar
          Max = 60000
          TabOrder = 4
        end
        object CkbContLetra: TCheckBox
          Left = 6
          Top = 52
          Width = 79
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Usar Letras'
          TabOrder = 5
          OnClick = BtnExecutarClick
        end
        object BtnHelp: TButton
          Left = 399
          Top = 2
          Width = 14
          Height = 20
          Caption = '?'
          TabOrder = 6
          OnClick = BtnHelpClick
        end
        object CkbContMantNome: TCheckBox
          Left = 90
          Top = 50
          Width = 90
          Height = 17
          Caption = 'Manter Nome'
          TabOrder = 7
          OnClick = CkbContMantNomeClick
        end
        object EdtContInserir: TEdit
          Left = 236
          Top = 48
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 8
          Text = '1'
          OnChange = BtnExecutarClick
        end
        object UpdContInserir: TUpDown
          Left = 278
          Top = 48
          Width = 15
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtContInserir
          Enabled = False
          Min = 1
          Max = 1024
          Position = 1
          TabOrder = 9
        end
        object EdtContRepetir: TEdit
          Left = 356
          Top = 48
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          TabOrder = 10
          Text = '0'
          OnChange = BtnExecutarClick
        end
        object UpdContRepetir: TUpDown
          Left = 398
          Top = 48
          Width = 15
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtContRepetir
          Max = 60000
          TabOrder = 11
        end
      end
      object TbsOrtografia: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Ortografia'
        ImageIndex = 2
        object LblOrtoAbreviar: TLabel
          Left = 140
          Top = 52
          Width = 45
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'caracteres'
          Enabled = False
        end
        object LblOrtoMaiusculo: TLabel
          Left = 210
          Top = 5
          Width = 51
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Colocar em'
        end
        object CkbOrtoEspaço: TCheckBox
          Left = 9
          Top = 29
          Width = 138
          Height = 14
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Controlar espa'#231'os'
          TabOrder = 0
          OnClick = BtnExecutarClick
        end
        object CkbOrtoAbreviar: TCheckBox
          Left = 9
          Top = 50
          Width = 79
          Height = 18
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Abreviar se >'
          TabOrder = 1
          OnClick = CkbOrtoAbreviarClick
        end
        object EdtOrtoAbreviar: TEdit
          Left = 95
          Top = 49
          Width = 26
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Enabled = False
          TabOrder = 2
          Text = '64'
          OnChange = BtnExecutarClick
        end
        object UpdOrtoAbreviar: TUpDown
          Left = 121
          Top = 49
          Width = 14
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtOrtoAbreviar
          Enabled = False
          Min = 1
          Max = 1024
          Position = 64
          TabOrder = 3
        end
        object CkbOrtoAcentuação: TCheckBox
          Left = 9
          Top = 5
          Width = 115
          Height = 15
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Remover acentua'#231#227'o'
          TabOrder = 4
          OnClick = BtnExecutarClick
        end
        object CmbOrtoMaiusculo: TComboBox
          Left = 267
          Top = 2
          Width = 167
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 5
          Text = 'Nada a fazer'
          OnChange = BtnExecutarClick
          Items.Strings = (
            'Nada a fazer'
            'Min'#250'scula'
            'Mai'#250'scula'
            'Primeira letra da senten'#231'a em mai'#250'scula'
            'Cada palavra em mai'#250'scula'
            'Alternar entre mai'#250'scula e min'#250'scula.')
        end
        object CkbOrtoCorreção: TCheckBox
          Left = 210
          Top = 33
          Width = 127
          Height = 15
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Corre'#231#227'o ortografica'
          TabOrder = 6
          OnClick = BtnExecutarClick
        end
        object BtnCorreção: TButton
          Left = 342
          Top = 30
          Width = 92
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Tabela ortogr'#225'fica'
          TabOrder = 7
          OnClick = BtnCorreçãoClick
        end
      end
      object TbsInserir: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Inserir'
        ImageIndex = 3
        object LblInsTexto: TLabel
          Left = 105
          Top = 27
          Width = 29
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          Caption = 'Texto:'
          Enabled = False
        end
        object LblInsInicio: TLabel
          Left = 88
          Top = 51
          Width = 48
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Iniciar em:'
        end
        object LblInsFim: TLabel
          Left = 209
          Top = 51
          Width = 46
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Tamanho:'
        end
        object GugRelatorio: TGauge
          Left = 370
          Top = 12
          Width = 64
          Height = 18
          Progress = 0
        end
        object EdtInsTexto: TEdit
          Left = 139
          Top = 24
          Width = 178
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Enabled = False
          TabOrder = 0
          OnChange = BtnExecutarClick
          OnKeyPress = EdtSubProcurarKeyPress
        end
        object EdtInsInicio: TEdit
          Left = 139
          Top = 48
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          TabOrder = 1
          Text = '1'
          OnChange = BtnExecutarClick
        end
        object UpdInsInicio: TUpDown
          Left = 181
          Top = 48
          Width = 14
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtInsInicio
          Min = 1
          Max = 1024
          Position = 1
          TabOrder = 2
        end
        object EdtInsFim: TEdit
          Left = 260
          Top = 48
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          TabOrder = 3
          Text = '1'
          OnChange = BtnExecutarClick
        end
        object UpdInsFim: TUpDown
          Left = 302
          Top = 48
          Width = 15
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtInsFim
          Min = 1
          Max = 1024
          Position = 1
          TabOrder = 4
        end
        object CkbInsDeletar: TCheckBox
          Left = 8
          Top = 28
          Width = 73
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Apagar'
          TabOrder = 5
          OnClick = BtnExecutarClick
        end
        object CkbInsInserir: TCheckBox
          Left = 8
          Top = 6
          Width = 73
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Inserir'
          TabOrder = 6
          OnClick = CkbInsInserirClick
        end
        object CkbInsInverter: TCheckBox
          Left = 8
          Top = 52
          Width = 73
          Height = 13
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Inverter'
          TabOrder = 7
          OnClick = BtnExecutarClick
        end
        object RbtInsData: TRadioButton
          Left = 209
          Top = 2
          Width = 113
          Height = 17
          Caption = 'Data e Hora'
          Enabled = False
          TabOrder = 8
          OnClick = BtnExecutarClick
        end
        object RbtInsTexto: TRadioButton
          Left = 89
          Top = 4
          Width = 113
          Height = 17
          Caption = 'Texto'
          Checked = True
          Enabled = False
          TabOrder = 9
          TabStop = True
          OnClick = BtnExecutarClick
        end
      end
      object TbsTag: TTabSheet
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Tag'
        ImageIndex = 4
        object LblTagTexto: TLabel
          Left = 9
          Top = 35
          Width = 29
          Height = 12
          Caption = 'Texto:'
        end
        object BtnTagArtista: TButton
          Left = 47
          Top = 5
          Width = 75
          Height = 18
          Caption = 'Artista'
          TabOrder = 0
          OnClick = BtnTagArtistaClick
        end
        object BtnTagTitulo: TButton
          Left = 128
          Top = 5
          Width = 75
          Height = 18
          Caption = 'Titulo'
          TabOrder = 1
          OnClick = BtnTagTituloClick
        end
        object BtnTagAlbum: TButton
          Left = 209
          Top = 5
          Width = 75
          Height = 18
          Caption = 'Album'
          TabOrder = 2
          OnClick = BtnTagAlbumClick
        end
        object BtnTagTrack: TButton
          Left = 290
          Top = 5
          Width = 75
          Height = 18
          Caption = 'Faixa'
          TabOrder = 3
          OnClick = BtnTagTrackClick
        end
        object EdtTagTexto: TEdit
          Left = 47
          Top = 32
          Width = 318
          Height = 20
          TabOrder = 4
          Text = '%Artista% - %Titulo%'
          OnChange = BtnExecutarClick
          OnKeyPress = EdtSubProcurarKeyPress
        end
        object RbtTagId3v2: TRadioButton
          Left = 389
          Top = 32
          Width = 65
          Height = 17
          Caption = 'ID3v2'
          Checked = True
          TabOrder = 5
          TabStop = True
          OnClick = BtnExecutarClick
        end
        object RbtTagId3v1: TRadioButton
          Left = 389
          Top = 6
          Width = 65
          Height = 17
          Caption = 'ID3v1'
          TabOrder = 6
          OnClick = BtnExecutarClick
        end
      end
      object TbsLegenda: TTabSheet
        Caption = 'Legenda SRT'
        ImageIndex = 5
        object LblLegendaLinhas: TLabel
          Left = 264
          Top = 53
          Width = 32
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Linhas:'
          Enabled = False
        end
        object LblLegendaCaracter: TLabel
          Left = 382
          Top = 54
          Width = 42
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Caracter:'
          Enabled = False
        end
        object LblLegendaTempo: TLabel
          Left = 261
          Top = 8
          Width = 35
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tempo:'
          Enabled = False
        end
        object LblLegendaConverter: TLabel
          Left = 15
          Top = 53
          Width = 69
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'Converter para'
        end
        object LblLegendaAté: TLabel
          Left = 403
          Top = 30
          Width = 19
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'At'#233':'
          Enabled = False
        end
        object LblLegendaDe: TLabel
          Left = 277
          Top = 31
          Width = 16
          Height = 12
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Caption = 'De:'
          Enabled = False
        end
        object CkbLegendaFormatação: TCheckBox
          Left = 9
          Top = 5
          Width = 135
          Height = 17
          Caption = 'Remover formata'#231#227'o'
          TabOrder = 0
        end
        object CkbLegendaAcentuação: TCheckBox
          Left = 9
          Top = 28
          Width = 135
          Height = 17
          Caption = 'Remover acentua'#231#227'o'
          TabOrder = 1
        end
        object CmbLegendaConverter: TComboBox
          Left = 92
          Top = 50
          Width = 141
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Style = csDropDownList
          ItemIndex = 0
          TabOrder = 2
          Text = 'N'#227'o converter'
          Items.Strings = (
            'N'#227'o converter'
            'ANSI'
            'ASCII'
            'Unicode'
            'Unicode Big endian'
            'UTF-7'
            'UTF-8')
        end
        object EdtLegendaLinhas: TEdit
          Left = 307
          Top = 50
          Width = 42
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 3
          Text = '1'
        end
        object UpdLegendaLinhas: TUpDown
          Left = 349
          Top = 50
          Width = 15
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Associate = EdtLegendaLinhas
          Enabled = False
          Min = 1
          Max = 10
          Position = 1
          TabOrder = 4
        end
        object EdtLegendaCaracter: TEdit
          Left = 433
          Top = 50
          Width = 43
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taCenter
          Enabled = False
          TabOrder = 5
          Text = '.'
        end
        object EdtLegendaTempo: TEdit
          Left = 307
          Top = 3
          Width = 72
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taCenter
          Enabled = False
          TabOrder = 6
          Text = '00:00:00,000'
          OnKeyDown = EdtLegendaTempoKeyDown
          OnKeyPress = EdtLegendaTempoKeyPress
        end
        object CkbLegendaAtrasar: TCheckBox
          Left = 403
          Top = 3
          Width = 64
          Height = 17
          Caption = 'Atrasar'
          Enabled = False
          TabOrder = 7
        end
        object EdtLegendaAté: TEdit
          Left = 433
          Top = 25
          Width = 72
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taCenter
          Enabled = False
          TabOrder = 8
          Text = '00:00:00,000'
          OnKeyDown = EdtLegendaTempoKeyDown
          OnKeyPress = EdtLegendaTempoKeyPress
        end
        object EdtLegendaDe: TEdit
          Left = 307
          Top = 26
          Width = 72
          Height = 20
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          Alignment = taCenter
          Enabled = False
          TabOrder = 9
          Text = '00:00:00,000'
          OnKeyDown = EdtLegendaTempoKeyDown
          OnKeyPress = EdtLegendaTempoKeyPress
        end
        object CkbLegendaAjuste: TCheckBox
          Left = 137
          Top = 5
          Width = 96
          Height = 17
          Caption = 'Ajustar Tempo'
          TabOrder = 10
          OnClick = CkbLegendaAjusteClick
        end
        object CkbLegendaElevar: TCheckBox
          Left = 137
          Top = 28
          Width = 120
          Height = 17
          Caption = 'Elevar Legenda'
          TabOrder = 11
          OnClick = CkbLegendaElevarClick
        end
      end
      object TbsSobre: TTabSheet
        Caption = 'Sobre'
        ImageIndex = 6
        object LblSobreP: TLabel
          Left = 0
          Top = 0
          Width = 819
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Transnomino Tools V1.0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
          ExplicitTop = 4
          ExplicitWidth = 524
        end
        object LblSobreF: TLabel
          Left = 0
          Top = 17
          Width = 819
          Height = 17
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Freeware'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ExplicitWidth = 453
        end
        object LblSobreA: TLabel
          Left = 0
          Top = 34
          Width = 819
          Height = 18
          Align = alTop
          Alignment = taCenter
          AutoSize = False
          Caption = 'Autor: Franco Michel Almeida Caixeta.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          ParentFont = False
          Transparent = True
          ExplicitTop = 33
          ExplicitWidth = 453
        end
        object Label1: TLabel
          Left = 0
          Top = 52
          Width = 819
          Height = 16
          Cursor = crHandPoint
          Align = alTop
          Alignment = taCenter
          Caption = 'http://franco.freevar.com/'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsItalic]
          ParentFont = False
          OnClick = Label1Click
          ExplicitWidth = 151
        end
        object ImgSobre: TImage
          Left = 19
          Top = 14
          Width = 32
          Height = 32
          AutoSize = True
          Center = True
          Picture.Data = {
            055449636F6E0000010003001010000001000800680500003600000020200000
            01001800A80C00009E0500003030000001001800A81C00004612000028000000
            1000000020000000010008000000000000000000000000000000000000000000
            0000000000000000001DDB000021FF00003FFA000047FF00010964000120C100
            021D9E00023AF300032E93000336C500051054000654FF000667FF00071D6D00
            080808000D3447001217A0001289AB0013255000182D6C001B161C001B2A7200
            2019190020588300211C1D002323230023B9D800244B9B00284199002A292A00
            2B2A3C002E2623002EA6B8002F2635002F59FF0034262600382C2D00385C9B00
            3C3C3C003F3E3C0040404000427FE90043424200464545004B606D004D73FF00
            4E4C4C004F363400554D4F0059A9FF005A5959005B5B5B005C5B5B005F5E5E00
            676567006A413C006C5D5F006DD2D7006E5F6100716F7000756D6D007A636300
            7B5A58007BDBDB0080686A0082BAB10083767800855F4F00866C960087747500
            87828400896B69008A6E6C008B716F008C7779008E5F7C0090AEB30092AAF000
            938E8F00946D6D0095817E0095A88B0097908F00A2BCE000A5827F00B0939F00
            B2928600B8A3A400BA979200BBBDBD00BC8B8B00BEC1C200C29C9900C59F9A00
            C5E9D900C6A4A900C89A9000C9A2A000CBB0E900CD9F9C00CDB0E400CDB4AE00
            CFA6A900D6D3D300D7ADA300DABDBF00DAC2B100DBABA700DBABA900DBAFAD00
            DDAFA600DEAEAA00DEBDBA00E0CBC500E0EEFF00E1B5AB00E1D1D200E1D1E000
            E1D7D900E2B29F00E6B5B000E6D4D400E7BAB000E7BBB100E8BBB100E9DCDC00
            EAEEFF00ECD0DD00EEE5E300EFBEB400F2BEC200F3DBE900F3FFF300F5F0F000
            F7DCCD00F7F7F700F8E1E700F8F4F200F8F4F300F8F4F400F8F5FF00F9DDDD00
            FAE0D600FAEEF000FAF8FF00FAFFF900FBF0EE00FCEFF100FCFCF700FDCFF000
            FEF9FA00FEFEF600FFDBB800FFE4FF00FFE9E900FFEBFF00FFEEEE00FFF5F800
            FFF8F500FFFCFF00FFFFED00FFFFEE00FFFFEF00FFFFFF000000000000000000
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
            0000000000000000002C1A000000000000000000000000000043584625170000
            00000000000000002B755D595E66553F50483900000000003B67706C7964646F
            715B3E000000002989837C7D7B74696B826D49000000003D6A31206572995F8F
            87614A000000278C8E22110B4E63388480564B000000537A9B540A2E26165230
            6E625100002F8B939D861D012A23051F6078570F337E819F9F9E9A0E08060207
            14244419004F97A094908D9C1C0C040318414C15000047A0A08A85A27332090D
            454D121000000036688892A1A3917F13963A1B2100000000343776A49895771E
            2842402D00000000000000353C5C5A0000000000000000000000000000000000
            00000000F9FF0000F83F0000F0010000F0010000E0010000E0010000C0010000
            C0010000800000000000000080000000C0000000E0000000F0000000FE1F0000
            FFFF000028000000200000004000000001001800000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000004444443B3B3B00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000046454549474723232300000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000676061B6AAAA7F73735148481C181817131300000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000837678AB9C9CB8A3A4B9A2A4877475665656382C2D2E
            2425201919201819000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000004B4647D8C7C9C0A4A2AE8E8CA68987B89896C5A09EC6B5B3C5
            A7A5997D7B8A6E6C7359596F55558263608362627B5B5B6F56555F4B4C5C4A4D
            433A3C1D191A0000000000000000000000000000000000000000000000000000
            0000000043424263595BE1D1D2C5A4A2C29C99BD9B96BA9792BB9491C59F9ACC
            A7A2CDB4AECCA9A6A5827F9776737B5A587C5B58946D6D997272896B69886A6D
            6C5D5F1E191A0000000000000000000000000000000000000000000000000000
            00000000574F4FA68F93DAB3B7D7AFADD8AAA6D7A8A4D4A5A2D4A5A1C69A96C7
            9B97CB9E9AD3A4A1DFB1AEDEB5B0DBB4ABD9A7A0B98786AC7A799067678C6969
            755E5F211A1A0000000000000000000000000000000000000000000000000000
            000000006E5F61EBC8CECFA6A9DCB2B0DEAEAADDACA9DBABA7DAAAA6E6B5B0E1
            B0ACCD9F9CC89A97CD9F9CCFA29EDDAFA6E4C2B7DEBDBAD8B0ADBC8B8BA07777
            7A6363231B1C0000000000000000000000000000000000000000000000000000
            00444141F2CDD3EFC5CAF1BDC2E6B8B5E4B8AEE4B8AEE4B7ADE3B7ADDFB4AADF
            B4AADEB3A9DDB2A9DFB4AADBB3A9D9B6ABD2ABA2D6A39CE7BCB4D8C1BFC89494
            896D6C2A201F0000000000000000000000000000000000000000000000004040
            40564E50F8E1E7DDB4BAF2BEC2E8BBB7E7BBB1E7BBB1E8BBB1E7BAB0E7BAB0E6
            B9AFE1B5ABDDB1A8D7ADA3D5ADA3DAC2B1E2BFB2EFBEB4ECCFC6DBABA9C08E8E
            8A6E6C2D2321000000000000000000000000000000000000000000000000524E
            4EA08F8FD3B8BAC7A8AA4F43455D6868E4D4A0FFDDA8EEB6BED2B0D4FFF5E4FF
            E2B8FFD9AAFFEBD6A2C3B4AAD6C5E3CAB9F2D3C2F6DBCAF1F1DEB98A7FAF857C
            896F6E3F3435000000000000000000000000000000000000000000000000756D
            6DD1BCBCDABDBFB89FA1554D4F242C2F2E26234F3D3ECDB0E4CBC3FFE0CBC5FF
            F0C9FFDBB8FFD2C9C5E9D9D0FAE9FAE0D6FDE0D2F7DCCDF2D8C9C89A90AD877E
            8B716F423637000000000000000000000000000000000000404040444242D8C9
            C9FAEBEBFBDBDDF0D1D365545EFFE9FF382FB012127F03093C1D3664F8F3FFFC
            DDFFFFDBFFD9B8D6FFC1BEFFD4CBFFF3FAF7DFEDF8F1F8F2D8E1AD8E93A68A8C
            8C75764E40400000000000000000000000000000000000003C3C3C5C5858F8F4
            F4FBE9E9F9DDDDF5D9D92F2635959BFC1217A0131BC105105406123292AAF0D0
            D9FFCBB0E95C444F6A413C704944F3DBE9FEEFFEECD0DDDDBECBB0939FA68C93
            8C77795447450000000000000000000000000000000000005E5A59B3ABAAF2E1
            E1FDE8E8FCE4E4FFF5F557607F0B29720222B0092ED05973F5545FA00209200E
            23556C75C54D3D52998E698C855F463032B59294F8CED5BE999FAA8B90A99194
            917F7C62555000000000000000000000000000000000000097908FE4DAD8E6D4
            D4FDF9F9FFE9E9FFFCFCA2BCE00623570336C501229E4D73FF7F8CEE385C9B09
            1C481B2A722F306395A88BAAB2844F3634835F5CDBAFADB78F8DC9A2A0B29391
            95817E645854000000000000000000000000444444585554F7F2F1FAFAF7FEEE
            EEFEEEEEFFEEEEFFEEEEE4F0F873ACC3000C3C0431C3011BAC1441C387BCFF80
            B0FF07199000086910225535425D402F32BB989AC59990DCA59AC39287C09185
            947B737668630707070000000000000000004E4C4C847F7EF8F4F3F5EAE8FBF0
            EEFCF0EEFFEEEEFFEEEEF5F0F0E9FFFF284199010A57001DDB001EAC427FE989
            BCFF2F59FF0214BE01096403093D2B2A3C362F3EC6A4A9F0C1BDE2B29FBF907C
            B29286877671080808000000000000565555B2A8A8F5E8E8F9EFEEFDFDFAFFF5
            F3FFF5F3FFF5F3FFF5F3FFF3F5EED6E4FFC5FFAE9BFF000F77002EE70124AC03
            21990C31DD0220E0001AFF0014E0051A64112B7A374474313145795C56B78778
            AF8472B393861210100000005A5959605E5EE9DCDCF7F5F5EEE5E3FEF4F1FFF8
            F5FFF8F5FFF8F5FFF8F5FFF5F8FFF3FCFFE4FFF5CDFF071D6D001777023AF301
            26C90120C10120D60021FF001DFF021D9E031A7F182D6C414D7D3426263A251F
            855F4FBB9B8A211C1D0000005B5B5B686565D5CACAF1E4E4FEFCFCF6E7E7FFFA
            F9FFFAF8FFFAF8FFFAF8FFFAF3F8E2D9E7F0FFD0D0F5FFE7FFB0B8EE00115900
            2FD4002BFA002BE70033E00038FA0139FF001CAC03164D12254A64545C694B4B
            9668646C4A491D17170606060000005B5B5B938E8FE2D9DAFEF9FAFFF5F7FFFC
            FFFFFCFFFCEFF1FFF4F5FAEEF0FCF8F5F8F5FFFFF0FFFFEBFFF3EBFF244B9B01
            16550654FF003CE20047FF003FFF003FFA00258B20588341637480686A956A72
            8E5F7C8A62821B161C0A0A0A0000000000005B5B5B646262D2CACBFCF2F3FFFC
            FFFFFCFFFFFCFFFFFCFFF6F1F1F1FCF8FAFCF3FFFCF3FFF8F8FFF5FCD4F3FF97
            D0FF042669001B660669FF0155FF014BE00B51BC7682AB84707D8685876D9DAD
            297AA4134B6A0E26330D151A0000000000000000005C5B5B878284BEB6B8FFFC
            FFFFFCFFFFFCFFFFF9FAF8F4F2F1FFF6F3FFF3FFFFEFFFFFEEFFFCF5E0EEFFB3
            D9FF59A9FF092E78032E930C6EFF0667FF1D66D9866C96A2728690AEB356C4D4
            1289AB0C6C8E0D34470E1C240000000000000000000000000000005B5B5B8C88
            89CBC4C6FFFCFFFFFCFFFFFFFCF5FFF9F6FFF2FFFFF0FFFFE9FFFFECFFFAEFFA
            FFFFCBE1FFCEEEFF5876BF1027561040945A85E5F2A9D7E1A3BB86E5EF29A8B4
            19ABCB1891B2208EB51F506B0000000000000000000000000000000000005F5E
            5E797777D6D3D3F7F4F4F7F7F7F7FFFCFAFFF9FFFFF2FFFFEDFFFFE9FFFFEFCD
            C7BDFAF8FFE8E8FFEAEEFF85A1E31325503B4674FDCFF0DCC1CC6DD2D734B1BD
            23B9D823AACD2EA6B8285B780000000000000000000000000000000000000000
            000000005E5D5D6A6868BDBABCEADFEAFFFBFFFFFCFFFCFBF3FFFFF5FEFEF2FC
            FEECFDFDF7FDFBFDFDF0FA9990A125252D2B292D6D6866B3C4B896F4F166D8DD
            52D0DB52CCD0477F9A3A48550000000000000000000000000000000000000000
            000000005B5B5B5B5B5B676567968C95E1D1E0FEF0FCFFFFFFFFFFFCFEFEF6FD
            FDF5FCFCF7FCFCF9E1D7D9766F752A292A2D2D2D3F3E3C636A6282BAB18FEEEE
            7BDBDB74CBD14B606D43464A0000000000000000000000000000000000000000
            000000000000000000000000000000005D5B5D6562648C898DABAAACE2E4E7F7
            FBFBEFF8F5E7EFEEB9C1BF575A590000000000000000004B4B4B505151545959
            586164555A5C5353530000000000000000000000000000000000000000000000
            000000000000000000000000000000000000005A5A5A5C5B5B626061716F708A
            8A8CBEC1C2D2D5D6BBBDBD606262000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00005858585857575F5E5E585858000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000FFCFFFFFFFC7FFFFFFC0FFFFFFC00FFFFF800003
            FF000003FF000003FF000003FE000003FC000003FC000003FC000003F0000003
            F0000003F0000003F0000003C0000001C0000001800000010000000100000000
            80000000C0000000E0000000F8000000FC000000FF000000FF000000FFF00381
            FFF803FFFFFFC3FFFFFFFFFF2800000030000000600000000100180000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000004444443B3B3B313131000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000004949
            4946454549474733323223232300000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000464545545051676161554F4F3B3636232020
            1312120B0B0B0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000004544
            44676061B6AAAAA598987F73735148482E27271C181817131318141400000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000004E4A4B837678AB9C9CB19C9EB8A3A4B9A2A4
            A89294877475665656514244382C2D2E2425251C1D2019192018191E17170000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000454343645B
            5CAF9C9EC3AAACB09A97A48E8BA68E8BB49B98C0A7A4BFA5A2B99F9C97807D85
            706D6F5C595F4E4C5645434C3D3C4235333C2D2C372827352826342625332524
            3224232F23222C22232B2223271F202620211E1A1B1210110E0D0D0000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000004B46477A6D6ED8C7C9C0A4A2B79A98AE8E8CA68987
            B08E8DB89896C5A09EC5A4A2C6B5B3C5A7A5B49190997D7B8A6E6C7961607359
            596F55557E6260826360836262805F5F7B5B5B6F5655664E505F4B4C5C4A4D5C
            4D4F433A3C1D191A0B0B0B000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000043424263595BA891
            95E1D1D2C5A4A2C2A19DC29C99BD9B96BE9894BA9792BB9491B79590C59F9ACC
            A7A2CFB0ACCDB4AECCA9A6BB9994A5827F9776737F5F5D7B5A587C5B58876462
            946D6D997272916E6E896B69886A6D7E696B6C5D5F1E191A0908080000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000049444578686ADEBDC2EACCCFCFA9A7CDA6A2CBA39FC8A09D
            C79E9BC59D9AC49C98C39B97B68F8CBC9592C9A09DD5ACA8D7B2AFD6B3B0D5B1
            ADD3ACA8CEA29FB68A879D71708B62618760608A62628C64648B676787686B7F
            6768715C5F1F191A080707000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000403F3F574F4FA68F93F1D7
            DDDAB3B7D7AFADDAACA8D8AAA6D7A8A4D5A6A3D4A5A2D4A5A1D2A3A0C69A96C7
            9B97C89B98CB9E9AD3A4A1DAACA7DFB1AEDEB5B0DDBCB1DBB4ABD9A7A0CA9791
            B98786AC7A799D6E6F9067678C6969836766755E5F211A1A0808080000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000004542426E5F61EBC8CEF3C9CFCFA6A9DCB2B0DFB0ACDEAEAADDACA9
            DCABA8DBABA7DAAAA6D9A9A5E6B5B0E1B0ACD3A5A1CD9F9CC89A97C99C98CD9F
            9CCFA29EC49D94DDAFA6E4C2B7E1C5BCDEBDBAD8B0ADD29A9CBC8B8BA077778E
            6F6E7A6363231B1C070707000000000000000000000000000000000000000000
            0000000000000000000000000000000000004040405A5253A58D91F7E3E8F3C4
            CBE0B3B7E1B5B2E0B6ACDFB4ABDFB4AADEB3A9DDB2A9DCB2A8DBB1A7E7BCB1E1
            B6ACDDB2A8D7ADA3D5ABA2D6ACA3DAAFA6DBB0A7C39E94CEA89ED3ABA1D4A79D
            E3ABA4E1BCB4DAC7C5D2C4C1B689899E7878846867261D1D0707070000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000444141736768F2CDD3EFC5CAF5C5CCF1BDC2E6B8B5E5B9AFE4B8AEE4B8AE
            E4B8AEE4B7ADE3B7ADE3B7ADDFB4AADFB4AADEB3A9DEB3A9DDB2A9DDB2A9DFB4
            AADBB3A9D3B1A5D9B6ABD2ABA2C59E94D6A39CE7BCB4E0C8C6D8C1BFC89494A6
            7F7F896D6C2A201F080707000000000000000000000000000000000000000000
            000000000000000000000000000000404040564E50A08D90F8E1E7DDB4BAE4B5
            BDF2BEC2E8BBB7E8BCB2E7BBB1E7BBB1E8BBB1E8BBB1E7BAB0E7BAB0E7BAB0E6
            B9AFE4B7ADE1B5ABDDB1A8DAAFA6D7ADA3D5ADA3D1B6A6DAC2B1E2BFB2DEB5AB
            EFBEB4ECCFC6E4C3C2DBABA9C08E8EA37C7C8A6E6C2D23210908080000000000
            0000000000000000000000000000000000000000000000000000000000000042
            3F3F6B6061E8CDD1F7D1D6F3C7CDD1A4ABEEC6C8D6BDB9D6C1B2E6C2AAEEC1AA
            EEBCB0E9BAB6E2B8BEDDBABCEBC7BAF0C5B4FBC4ABFEC0ABF2BBAFE8BDB3D4C1
            B8CBC5B4C9B8AAD8C0AFD7BBABD5AFA2EEBDB0EFD8CBE7D1C8DEB5ADB387849C
            78758C6F6D2F2526090808000000000000000000000000000000000000000000
            0000000000000000000000003E3E3E524E4EA08F8FF8EBEED3B8BAC7A8AA5A46
            474F43455D68688B998CE4D4A0FFDDA8FFC5B0EEB6BED2B0D4C7B2CDFFF5E4FF
            E2B8FFD09EFFD9AAFFEBD6E7CBC3A2C3B4AAD6C5C5C7B4E3CAB9F2D3C2FAD4C1
            F6DBCAF1F1DEE9D0C1B98A7FAF857CAB867E896F6E3F34350808080000000000
            00000000000000000000000000000000000000000000000000000000423F3F75
            6D6DD1BCBCF7DFDFDABDBFB89FA1332627554D4F242C2F1E25272E26234F3D3E
            92728BCDB0E4CBC3FFBAB6E0E0CBC5FFF0C9FFF0C7FFDBB8FFD2C9EBD4D4C5E9
            D9D0FAE9E2E2D4FAE0D6FDE0D2FBDECCF7DCCDF2D8C9EABCB1C89A90AD877EA9
            86838B716F423637090808000000000000000000000000000000000000000000
            0000000000000000003E3D3D575252AA9E9EF8E4E4DFC7C7EACDCECEB2B42B21
            227863689E8EA05F50752D22521B154D1B1D63333F926F89D0C7D9FFE0CDD0FF
            E2DDFFE2E9FFDDF3F8D0E9FADBEEFFE2DDFFE9E0F3DBDBF5E2E4F7DFDFFCE6E6
            F8F3F5F2D4D1CFA7A5BA9791A98984A587868C7274473A3A0B09090000000000
            00000000000000000000000000000000000000000000404040444242776E6ED8
            C9C9FAEBEBDDC5C5FBDBDDF0D1D3493B3C65545EFFE9FF8E7FE2382FB012127F
            03074D03093C1D36647FA2C7F8F3FFFCDDFFF0C9FAFFDBFFD9B8D6E9C1D0FFC1
            BEFFD4CBFFE4E9FFF3FAF7DFEDF9DFE6F8F1F8F2D8E1C4A3A8AD8E93A68A8CA4
            898B8C75764E40400E0B0A000000000000000000000000000000000000000000
            0000000000003C3C3C5C5858ACA0A0F8F4F4FBE9E9F6E0E0F9DDDDF5D9D9836D
            6E2F2635959BFC323CB21217A0131BC1101DA205105406123212233B92AAF0D0
            D9FFE9DBFFCBB0E95C444F5F403E6A413C704944D2AEB4F3DBE9FEEFFEF9E1F0
            ECD0DDDDBECBC2A7B3B0939FA68C93A18B8E8C7779544745110E0D0000000000
            000000000000000000000000000000000000000000003E3D3D837D7CDECFCFFA
            F7F7FCE6E6FDF7F7F9DDDDFFE2E2CBAEB0252436415CC10F249D0716A81833FF
            395BFF2B44BE101D47060D220D1A405572C9B4C5FFA89EE232212B3B25204027
            1E37231B4B3A3B806A73FBDAE8FCF5FCF1D0DDC0A5B0BA9CA8A98C98A68E94A2
            8D908E7C7C5C504B161210000000000000000000000000000000000000000000
            0000003D3C3C5E5A59B3ABAAF6E5E5F2E1E1FDE8E8FEF4F4FCE4E4FFF5F5FADD
            DD57607F0B29720323970222B0092ED02C54F05973F5545FA02F3B640209200E
            235532489B6C75C54D3D52927570998E698C855F3A2B25463032B59294FCF7F9
            F8CED5BE999FBC9CA3AA8B90A99194A68E90917F7C6255501915130000000000
            0000000000000000000000000000000000000049464697908FE4DAD8FAF7F7E6
            D4D4FDF9F9FEE9E9FFE9E9FFFCFCFADDDDA2BCE00623570538A60336C501229E
            0E33B24D73FF7F8CEE58669E385C9B091C4802082D1B2A722F30638785A295A8
            8BAAB2849D82734F3634835F5CFCD1CDDBAFADB78F8DD5AAA8C9A2A0B29391A9
            908D95817E6458541A1715000000000000000000000000000000000000000000
            414040746F6ECCC3C2F0E5E4FCECECFDEDEDFEEDEDFFEEEEFFEEEEFFEEEEFFEE
            EED6EBFF2D638E000F30012B950231C3011893153FD67BAAFF7893E06C90C73E
            62A20A1C690109470610591B2B6F546F7BC3D2B687706738221F9C716BFCDFD6
            CA968CCB988EEBB7ABD3A29BBF9A92B08F879A827E6D625D2A26240000000000
            00000000000000000000000000444444585554AAA3A2F7F2F1FAFAF7FCEDEDFE
            EEEEFEEEEEFFEEEEFFEEEEFFEEEEFFEEEEE4F0F873ACC3255F93000C3C0431C3
            0124D2011BAC1441C35FA0FF87BCFF80B0FF3459EB071990000869020B5D1022
            5535425D251F26402F32BB989AF5C4C2C59990DCA59AD8A093C39287C09185B6
            9086947B73766863322E2D0707070000000000000000000000004B4B4B4E4C4C
            847F7EDCD3D1F8F4F3F5EAE8FAEFEDFBF0EEFCF0EEFCF0EEFFEEEEFFEEEEFFEE
            EEF5F0F0E9FFFF8CAEE0284199010A57032BFF001DDB001EAC063AB6427FE989
            BCFF87BEFF2F59FF0214BE00088901096403093D2B325F2B2A3C362F3E60525E
            C6A4A9F0C1BDD19D92E2B29FBF907CCCAF9DB292868776712B27270808080000
            00000000000000525252514F4F736F6FC8C0BEF7F7F5FAF7F6FCF2EFFEF3F0FE
            F3F0FFF3F0FFF3F0FFF0F0FFF0F0FFF0F0FFF3F0FAEEF3FAF0FFB8ACFF182387
            000B7D0233FF0022CD001D9B082F932B57D0578CFF386DFF0629FF0014E2000E
            BC0007690916592B3E772D39651C1F38443D51A48B96C69E9ACA988CD09A88CE
            AD98A38070988077352F2F0E0E0F000000000000000000565555696565B2A8A8
            F5E8E8F9F0F0F9EFEEFDFDFAFEF5F3FFF5F3FFF5F3FFF5F3FFF5F3FFF5F3FFF5
            F3FFF3F5EED6E4FFEEFFFFC5FFAE9BFF0E2392000F77002EE70037F50124AC03
            21990C2DBA0C31DD0220E0001CFC001AFF0014E001137F051A64112B7A2F4C99
            3744743131454F3F46795C56B78778CF9E86AF8472B393863B312F1210100000
            000000005A5959605E5E989191E9DCDCF7F5F5F5E6E6EEE5E3FEF4F1FEF8F5FF
            F8F5FFF8F5FFF8F5FFF8F5FFF8F5FFF8F5FFF5F8FFF3FCF8CDEBFFE4FFF5CDFF
            9BB2FF071D6D0017770027B8023AF30126C9011FB40120C10120D60022F80021
            FF001DFF001DCB021D9E031A7F082176182D6C414D7D605A6F3426263A251F5E
            3F32855F4FBB9B8A614E4A211C1D0000000000005D5C5C706C6CBCB3B3F6F4F4
            F9F7F7FCF9F9FDFBFBFEF8F8FFF9F6FFF8F6FFF8F5FFF8F5FFF8F5FFF8F5FFF8
            F5FFF8F0FFF5EBFFEBF3E7DDFFF3EBFFE9DDFFB8C9FF0C1D4B021C64012CC500
            34FF0031FF002BFF002DFF002DF8002BEB0027EE0035FF0020E0000F8700157A
            071C671726554F537578656F6E4F484B30252D19113420182D201C271F1D0706
            070000005B5B5B686565A19999D5CACAF1E4E4FDFAFAFEFCFCF6E7E7FFFAF9FF
            FAF9FFFAF8FFFAF8FFFAF8FFFAF8FFFAF8FFFAF3F8E2D9FFFFFCE7F0FFD0D0F5
            FFF3FFFFE7FFB0B8EE1C3B77001159002FD4003AFF002BFA002BE70031E20033
            E00038FA0023EE0139FF001CAC00116303164D12254A444B6364545C694B4B8E
            605D9668646C4A493424261D17170606060000000000005B5B5B636161938E8F
            E2D9DAFDFBFDFEF9FAFFF5F7FFF3F5FFFCFFFFFCFFFFF6F8FCEFF1FFF4F5FFF3
            F5FAEEF0FCF8F5F8F8F8F8F5FFFFF0FFFFF0FFFFEBFFF3EBFFC7E4FF244B9B01
            165501258E0654FF003CE20032D90047FF003FFF003BFF003FFA00258B011C52
            20588341637471777980686A956A7289576A8E5F7C8A62822E212D1B161C0A0A
            0A0000000000000000005C5B5B666465948F8FD6CDCFFCF2F3FFF9FBFFFCFFFF
            FBFCFAEEF1F5E8EBFAEDF0FFFCFFFFFCFFFFFAFCF3F8F8EEFAF8FCF8F8FFF8F5
            FFF3F8FFF3FAFFEEFFE7E9FFC3EBFF3059A0021649012170055BFC015BFF0039
            E70038EB0034DB0041D9033F9E1153924A839D617573807A7387737086758472
            6A896469943E486C171D2F171D270D10120000000000000000000000005B5B5B
            6462628F8A8BD2CACBFCF2F3FFFCFFFFFCFFFFFCFFFFFBFCFFFCFFFFFCFFFFFC
            FFF6F1F1F1FCF8EFFFF3FAFCF3FFFCF3FFFCF0FFF8F8FFF5FCF0F0FFD4F3FF97
            D0FF336FC3042669001B660242CD0669FF0155FF0048F8014BE00B51BC438ADF
            7682AB84707D957E808685876D9DAD3E829E297AA4134B6A0C2E410E26330D15
            1A0000000000000000000000000000005C5B5B626060878284BEB6B8F4EAEBFF
            FCFFFFFCFFFFFCFFFFFCFFFFF9FAFFF6F9F8F4F2F1FFF6ECFFF4F3FFF3FFFFEF
            FFFFEEFFFFEEFFFCF5FCFAFFE0EEFFB3D9FFA7EBFF59A9FF092E7800114A032E
            930C6EFF0574FF0667FF1D66D976A1FE866C96A27286BA9BA290AEB356C4D41C
            8B9F1289AB0C6C8E0E5A780D34470E1C240F0F10000000000000000000000000
            0000000000005F5F5F737071B7B1B2DAD3D5FFFBFCFFFCFFFBF2F3F5ECEEFFF9
            FBFFFFFCEEFFF6EAFFF4F1FFEFFCFFECFFFFEAFFFFEAFFFFECFFFFF5EEF3F5E4
            FAFFCAF0FFB3E9FF86C9FF1D458D0414420422680759DD0F6CF5458AFFC3CEFE
            B27BA7CC87A0DEC8D899DFEB36BFCF1494A8119BB90F87AA1288AC135876142F
            3F14171B0000000000000000000000000000000000000000005B5B5B6E6C6C8C
            8889CBC4C6FEF7F9FFFCFFFFFCFFFFFCFFFFFFFCF5FFF9F0FFF6F6FFF2FFFFF0
            FFFFEDFFFFE9FFFFECFFFFEFFFFAEFFAFFFFEEFAFFCBE1FFCEEEFFC2EBFF5876
            BF1027560824601040945A85E5F0E1FEF2A9D7E1A3BBDAE0EA86E5EF29A8B41C
            ADC119ABCB1891B21897C0208EB51F506B1C252E000000000000000000000000
            0000000000000000000000005B5B5B5F5E5E797777A6A4A4D6D3D3F7F4F4FFFC
            FCF7F7F7F7FFFCF7FFFCFAFFF9FFFFF2FFFFF0FFFFEDFFFFE9FFFFEDFFFFEFCD
            C7BDF8F3F3FAF8FFE8E8FFEEF0FFEAEEFF85A1E31225511325503B4674AD9ECF
            FDCFF0DCC1CCC0E7EB6DD2D734B1BD29C8DC23B9D823AACD25A5C32EA6B8285B
            7825323E00000000000000000000000000000000000000000000000000000000
            00005B5B5B656464888686C1BFBFF3F0F0FFFFFFFFFCFFFFFCFFFFFFFFFFFFF9
            FFFFF2FFFFF1FFFFEEFFFFEDFCF8E1FFFFEFFEFEF8FBF1F3FAECF8FEF5FEFEF5
            FEA8AAD343548220263F2929396C6275FBDEEADEDEDEBAF6EF6CCDCA4BCFD83D
            D3E533BEDA37CFCF38B8C43B9CB93053682F3B46000000000000000000000000
            0000000000000000000000000000000000000000005B5B5B5E5D5D6A68688D8B
            8BBDBABCEADFEAFEF7FEFFFBFFFFFCFFFFF9F7FCFBF3FFFFF5FFFFF1FEFEF2FC
            FEECF5F5E9FDFDF7FDFBFDFDF9FDFDF0FA9990A134344425252D2B292D3D393B
            6D6866B3C4B8B4EDE196F4F166D8DD58D7E652D0DB52CCD056B6C5477F9A3A48
            553A3B3E00000000000000000000000000000000000000000000000000000000
            00000000000000005B5B5B5B5B5B5F5E5E676567968C95B4A6B4E1D1E0FEF0FC
            FFFCFFFFFFFFFFFFFCF5F6EFFEFEF6FDFDF5FDFDF7FCFCF7FCFCF9FBFBF9E1D7
            D9766F752D2C2F2A292A2D2D2D3131313F3E3C636A627C998F82BAB18FEEEE86
            E5E57BDBDB74CBD15F93AC4B606D43464A444444000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00595959605D606C666B877F87AAA1AACEC4CEEAE3EBFAF9FCFAFEFEE9EEEBF9
            FDFAF7FCF8EEF3EFEEF2F2F5F9F9E5E9E9727474323232000000000000000000
            403F3F48484651545156625F5263645874785E7F8759717C525C644D50534C4C
            4C4D4D4D00000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000005B5A5A5D5B5D656264
            7370728C898DABAAACC4C6C8E2E4E7F7FBFBF6FAFAEFF8F5E7EFEEEDF5F5B9C1
            BF575A593C3C3C0000000000000000000000004B4B4B4E4E4E50515154595956
            5E60586164555A5C535455535353000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000005A5A5A5A59595C5B5B626061686768716F708A
            8A8CA7A5A8BEC1C2D2D5D6ECEFEFBBBDBD606262464646000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000005958585C5B5B605E606664656D6C6C7372737E7E7F7878
            7857575700000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00005858585858585857575A595A5F5E5E585858000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFFFFFFFF0000FFFE3FFF
            FFFF0000FFFC1FFFFFFF0000FFFC03FFFFFF0000FFFC00FFFFFF0000FFFC0003
            FFFF0000FFF8000000070000FFF8000000070000FFF0000000070000FFF00000
            00070000FFE0000000070000FFE0000000070000FFC0000000070000FFC00000
            00070000FF80000000070000FF80000000070000FF00000000070000FF000000
            00070000FE00000000070000FC00000000070000FC00000000070000FC000000
            00070000F800000000070000F800000000070000F000000000070000E0000000
            00030000C0000000000300008000000000030000800000000003000000000000
            00030000000000000001000000000000000100008000000000010000C0000000
            00010000E000000000010000F000000000000000FC00000000000000FE000000
            00000000FF00000000000000FFC0000000000000FFE0000000000000FFF00000
            00000000FFFE000070000000FFFF800078030000FFFFE0007FFF0000FFFFFE00
            FFFF0000FFFFFFC0FFFF0000FFFFFFFFFFFF0000}
          Transparent = True
        end
      end
    end
    object PnlButtons: TPanel
      Left = 1
      Top = 105
      Width = 827
      Height = 31
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alBottom
      BevelKind = bkFlat
      BevelOuter = bvNone
      TabOrder = 1
      object BtnUndo: TSpeedButton
        Left = 292
        Top = 3
        Width = 23
        Height = 22
        Hint = 'Desfazer'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          080000000000000100000000000000000000000100000000000000000000308A
          4200327D420039BD55003DB259003EA25300409B5500419E5E00429A540046B6
          5D0047B3630047D27A0047E66000489D630048B76C0048DA6400499359004ABC
          6E004BB762004BE665004CE07D004D8C66004DA7690050B0700051AA720051DA
          700052C57B0052CE6B0053A76E00569F810056B3770058C7740058D884005CBE
          700060C1800061EB8F0062A1890065AD790067D5880067E3870068E08D006BA1
          77006CCF92006EC789006F96860070D68D0071C6850076E9A20077DE9A007AD5
          9B007CEB9D007DCA8B007DF7A3007EAA8C007EBBA4007FC79A008596910087A0
          9C0087D2A3008CDEAD008EE3A5008FE0AD0091EEAA0093E5B30093E9B50093EE
          B100959D980095FAAF0095FCB10096CAA90096D8AE0096FCB100979B9700979E
          9600989F9B00998A9100999E9900999F98009A9F9F009B9F9F009C879E009D9E
          9B009D9F9F009E9E99009E9E9E009F989F00A0F7B900A3AAAA00A5F8BF00A6A7
          A700A79EA900A7A5AA00A8A1AA00A8A3AA00AAA1AA00AAA3AA00AAAAA600AAE2
          BC00ADC6C100ADEBC800B0E3E500B1A2B700B1B4B100B2AAB000B3E6C800B3FC
          C900B4B3B700B4B7B800B5B0B700B6C6C600B7ADB700B7B1B300B7B7B200B7D6
          E500B7D7C300B7E5C900B8B1B800B8B8B600BAF1CB00BDF8D100C1D5D500C1FD
          D700C2C2BE00C2C6BB00C2C6C000C2FDD200C4E2D700C5C5C200C5C5C400C5FA
          D200C6C6BD00C6C6C000C6C6C200C6D3D100C6E8CB00C7FCD900C9CED600C9D2
          DD00C9EDD500CBE0E000CDD5D100CDF3DC00CEE0E000CEE2E200CFCBD300D0C4
          D000D0FAE200D1C5D300D1CAD300D2DDED00D2E2E200D2E5FA00D3CDD300D3CF
          D300D5CAD000D8DBE200D8EDFA00D9C9EB00DECEDE00DEF0E700DFD0E200E0F0
          E700E0F3E900E2B8EA00E2E2D000E2FCE900E3E9F300E3FCF100E5FDF100E8F3
          F200E8F8F200E8FADD00E9F7FA00E9F8F200EDEDE000EDF7F700EEFCFC00F1F7
          F700F2DAFA00F2F3F300F2FAF900F2FCF800F3D3F200F3F3E300F3F7F700F3FD
          FD00F5F8F800F5FAFA00F5FDFC00F7FDFD00FAF2FA00FAF7F800FAF7FA00FBF8
          FC00FBFCFB00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
          6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
          CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
          0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
          9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
          A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
          DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
          000000000000000000000049514951515151425151514B51510000595B5F5F5F
          5A5F3829355750606000006A6A6A6E746A753910082C656E6A00007B8080807B
          807B622E01156D6B800000939398909098988C780D0737789800009E908F8F8F
          9689A49B36041B7EA0000086332112050802AEA371030C639D0000A12A0B1428
          258DB7B69509133BA60000AF312023342B58ABB29C0A0F40AC0000AF3A30322D
          161E61976411193FB00000AD45697D3C221A1C241D0E2746BC0000AD72A7BC7D
          402F1F1E18264473BC0000B3A2BCC2A5773D44433E5887A7C20000B3B3BCBEBE
          BC9273767D8A9FBCBE0000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = BtnUndoClick
      end
      object BtnReUndo: TSpeedButton
        Left = 321
        Top = 3
        Width = 23
        Height = 22
        Hint = 'Refazer'
        Glyph.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          080000000000000100000000000000000000000100000000000000000000308A
          4200327D420039BD55003DB259003EA25300409B5500419E5E00429A540046B6
          5D0047B3630047D27A0047E66000489D630048B76C0048DA6400499359004ABC
          6E004BB762004BE665004CE07D004D8C66004DA7690050B0700051AA720051DA
          700052C57B0052CE6B0053A76E00569F810056B3770058C7740058D884005CBE
          700060C1800061EB8F0062A1890065AD790067D5880067E3870068E08D006BA1
          77006CCF92006EC789006F96860070D68D0071C6850076E9A20077DE9A007AD5
          9B007CEB9D007DCA8B007DF7A3007EAA8C007EBBA4007FC79A008596910087A0
          9C0087D2A3008CDEAD008EE3A5008FE0AD0091EEAA0093E5B30093E9B50093EE
          B100959D980095FAAF0095FCB10096CAA90096D8AE0096FCB100979B9700979E
          9600989F9B00998A9100999E9900999F98009A9F9F009B9F9F009C879E009D9E
          9B009D9F9F009E9E99009E9E9E009F989F00A0F7B900A3AAAA00A5F8BF00A6A7
          A700A79EA900A7A5AA00A8A1AA00A8A3AA00AAA1AA00AAA3AA00AAAAA600AAE2
          BC00ADC6C100ADEBC800B0E3E500B1A2B700B1B4B100B2AAB000B3E6C800B3FC
          C900B4B3B700B4B7B800B5B0B700B6C6C600B7ADB700B7B1B300B7B7B200B7D6
          E500B7D7C300B7E5C900B8B1B800B8B8B600BAF1CB00BDF8D100C1D5D500C1FD
          D700C2C2BE00C2C6BB00C2C6C000C2FDD200C4E2D700C5C5C200C5C5C400C5FA
          D200C6C6BD00C6C6C000C6C6C200C6D3D100C6E8CB00C7FCD900C9CED600C9D2
          DD00C9EDD500CBE0E000CDD5D100CDF3DC00CEE0E000CEE2E200CFCBD300D0C4
          D000D0FAE200D1C5D300D1CAD300D2DDED00D2E2E200D2E5FA00D3CDD300D3CF
          D300D5CAD000D8DBE200D8EDFA00D9C9EB00DECEDE00DEF0E700DFD0E200E0F0
          E700E0F3E900E2B8EA00E2E2D000E2FCE900E3E9F300E3FCF100E5FDF100E8F3
          F200E8F8F200E8FADD00E9F7FA00E9F8F200EDEDE000EDF7F700EEFCFC00F1F7
          F700F2DAFA00F2F3F300F2FAF900F2FCF800F3D3F200F3F3E300F3F7F700F3FD
          FD00F5F8F800F5FAFA00F5FDFC00F7FDFD00FAF2FA00FAF7F800FAF7FA00FBF8
          FC00FBFCFB00CCFFFF00CC003300FF006600FF009900CC330000FF333300FF33
          6600FF339900FF33CC00FF33FF00FF660000FF663300CC666600FF669900FF66
          CC00CC66FF00FF990000FF993300FF996600FF999900FF99CC00FF99FF00FFCC
          0000FFCC3300FFCC6600FFCC9900FFCCCC00FFCCFF00FFFF3300CCFF6600FFFF
          9900FFFFCC006666FF0066FF660066FFFF00FF666600FF66FF00FFFF66002100
          A5005F5F5F00777777008686860096969600CBCBCB00B2B2B200D7D7D700DDDD
          DD00E3E3E300EAEAEA00F1F1F100F8F8F800F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00000000000000
          000000000000000000000051514B515151425151515149514900006060505735
          29385F5A5F5F5F5B5900006A6E652C081039756A746E6A6A6A0000806B6D1501
          2E627B807B8080807B0000987837070D788C989890909893930000A07E1B0436
          9BA489968F8F8F909E00009D630C0371A3AE020805122133860000A63B130995
          B6B78D2528140B2AA10000AC400F0A9CB2AB582B34232031AF0000B03F191164
          97611E162D32303AAF0000BC46270E1D241C1A223C7D6945AD0000BC73442618
          1E1F2F407DBCA772AD0000C2A787583E43443D77A5C2BCA2B30000BEBC9F8A7D
          767392BCBEBEBCB3B30000000000000000000000000000000000}
        ParentShowHint = False
        ShowHint = True
        Transparent = False
        OnClick = BtnReUndoClick
      end
      object BtnExecutar: TButton
        Left = 115
        Top = 4
        Width = 56
        Height = 19
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Atualizar'
        TabOrder = 0
        OnClick = BtnExecutarClick
      end
      object CkbExtensão: TCheckBox
        Left = 182
        Top = 8
        Width = 98
        Height = 13
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = 'Manter Extens'#227'o'
        Checked = True
        State = cbChecked
        TabOrder = 1
        OnClick = BtnExecutarClick
      end
      object CkbAutoAtualizar: TCheckBox
        Left = 11
        Top = 6
        Width = 99
        Height = 17
        Caption = 'Auto atualizar '
        TabOrder = 2
      end
      object BtnAplicar: TButton
        Left = 365
        Top = 6
        Width = 71
        Height = 17
        Caption = 'Aplicar'
        TabOrder = 3
        OnClick = BtnAplicarClick
      end
    end
  end
  object GrbRelatorio: TGroupBox
    Left = 0
    Top = 365
    Width = 829
    Height = 54
    Align = alBottom
    Caption = '    Relat'#243'rio'
    TabOrder = 2
    Visible = False
    object LtbRelatorio: TListBox
      Left = 2
      Top = 14
      Width = 825
      Height = 38
      Align = alClient
      ItemHeight = 12
      TabOrder = 1
      OnDblClick = LtbRelatorioDblClick
    end
    object BtnClose: TButton
      Left = 4
      Top = 1
      Width = 13
      Height = 13
      Caption = 'X'
      TabOrder = 0
      OnClick = BtnCloseClick
    end
  end
  object StbProgresso: TStatusBar
    Left = 0
    Top = 419
    Width = 829
    Height = 19
    Panels = <
      item
        Bevel = pbNone
        Text = 'Progresso:'
        Width = 60
      end
      item
        Style = psOwnerDraw
        Text = 'Barra'
        Width = 300
      end>
    OnDrawPanel = StbProgressoDrawPanel
  end
  object ImlArquivo: TImageList
    Left = 148
    Top = 180
  end
  object ImlBarra: TImageList
    Left = 120
    Top = 180
    Bitmap = {
      494C010107003402340210001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000666666000E0E
      0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E0E000E0E
      0E000E0E0E000000000000000000000000000000000000000000000000000000
      0000000000003B3B3B0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F2F2F200FFFFFF00FFFFFF00242424000202020005050500F8F8F800F0F0
      F000FFFFFF00FFFFFF00FAFAFA0000000000000000000000000066666600CCCC
      CC0000000000CAC3BF00C6BEBA00C6BEBA00C4BBB600C4BBB600C4BBB600BEB3
      AD00BEB3AD000000000000000000000000000000000000000000000000000000
      000000000000B6AAAA0051484800171313000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F7F7F7000D0D0D0003030300070707001111110005050500FFFF
      FF00FFFFFF00F5F5F500FFFFFF00000000000000000000000000666666000000
      00000000000000000000C7C0BC00C6BEBA00C4BBB600C4BBB600C4BBB600BEB3
      AD00BEB3AD000000000000000000000000000000000000000000000000000000
      00004B464700C0A4A200A6898700C5A09E00C5A7A5008A6E6C006F5555008362
      62006F5655005C4A4D001D191A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F8F8F800121212000404040004040400030303000E0E0E000D0D0D000707
      0700D5D5D500FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000C6BEBA00C6BEBA00C4BBB600C4BBB600BEB3
      AD00BEB3AD000000000000000000000000000000000000000000000000000000
      0000A68F9300D7AFAD00D7A8A400D4A5A100C79B9700D3A4A100DEB5B000D9A7
      A000AC7A79008C696900211A1A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FBFBFB00FAFA
      FA0031313100151515000A0A0A00060606000E0E0E000E0E0E000E0E0E000E0E
      0E0013131300FAFAFA00EAEAEA00000000000000000000000000000000000000
      000000000000000000000000000000000000A8968A00A8938700A08E8600A88E
      7E00BEB3AD000000000000000000000000000000000000000000000000004441
      4100EFC5CA00E6B8B500E4B8AE00E3B7AD00DFB4AA00DDB2A900DBB3A900D2AB
      A200E7BCB400C89494002A201F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCFCFC00FFFFFF00FDFDFD003131
      31000909090010101000101010000B0B0B001010100010101000101010001010
      10000D0D0D0009090900F6F6F600000000000000000000000000666666000000
      00000000000000000000C7C0BC00C6BEBA00C4BBB600C4BBB600C4BBB600BEB3
      AD00BEB3AD00000000000000000000000000000000000000000000000000A08F
      8F00C7A8AA005D686800FFDDA800D2B0D400FFE2B800FFEBD600AAD6C500F2D3
      C200F1F1DE00AF857C003F343500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00161616001212
      1200131313001C1C1C000C0C0C001B1B1B001414140014141400141414001414
      1400171717001E1E1E0019191900000000000000000000000000666666000000
      00000000000000000000A2938D00A08E86009F8D83009E8A7E009E8A7E009E85
      7600BAACA500000000000000000000000000000000000000000044424200FAEB
      EB00F0D1D300FFE9FF0012127F001D366400FCDDFF00D9B8D600FFD4CB00F7DF
      ED00F2D8E100A68A8C004E404000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFF00212121000B0B0B000808
      08001D1D1D000C0C0C001C1C1C00151515001717170017171700171717001717
      1700161616001C1C1C001A1A1A00000000000000000000000000666666000000
      00000000000000000000CCC9C600C4BBB600C4BBB600BEB3AD00BEB3AD00BAAC
      A500BAACA5000000000000000000000000000000000000000000B3ABAA00FDE8
      E800FFF5F5000B297200092ED000545FA0000E2355004D3D52008C855F00B592
      9400BE999F00A991940062555000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009393930027272700181818001010
      10001C1C1C001C1C1C001C1C1C001C1C1C00202020001D1D1D001B1B1B001717
      1700151515001919190035353500000000000000000000000000666666000000
      00000000000000000000A9A6A200A49A93009F8D8300927A6A008F786700927A
      6A00B4A59B000000000000000000000000000000000058555400FAFAF700FEEE
      EE00FFEEEE0073ACC3000431C3001441C30080B0FF000008690035425D00BB98
      9A00DCA59A00C091850076686300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000232323001D1D1D00262626002424
      24001E1E1E001E1E1E001E1E1E001E1E1E0018181800262626001A1A1A001C1C
      1C00151515001E1E1E00FEFEFE00000000000000000000000000666666000000
      00000000000000000000CCCCCC00CCC9C600CCC6C400C4BBB600B4A59B00B1A0
      9600AE9C920000000000000000000000000056555500F5E8E800FDFDFA00FFF5
      F300FFF5F300EED6E400AE9BFF00002EE700032199000220E0000014E000112B
      7A0031314500B7877800B3938600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000001E1E1E00212121001E1E1E001A1A
      1A0021212100212121002121210021212100202020001C1C1C00262626002626
      26002A2A2A00F6F6F600FFFFFF0000000000000000000000000066666600CCCC
      CC00A9A9A900A9A9A900A9A9A900A9A29B00A2938D0095837A0095837A008E75
      6700A8968A0000000000000000000000000068656500F1E4E400F6E7E700FFFA
      F800FFFAF800F8E2D900D0D0F500B0B8EE00002FD400002BE7000038FA00001C
      AC0012254A00694B4B006C4A4900060606000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002929290028282800212121002424
      2400252525002525250025252500252525002C2C2C00242424001E1E1E004C4C
      4C00FEFEFE00FFFFFF00FAFAFA0000000000000000000000000066666600CCCC
      CC00CCCCCC00CCCCCC00CCCCCC00CCC9C600C6BEBA00BEB3AD00957E7100957E
      7100957E71000000000000000000000000000000000064626200FCF2F300FFFC
      FF00FFFCFF00F1FCF800FFFCF300FFF5FC0097D0FF00001B66000155FF000B51
      BC0084707D006D9DAD00134B6A000D151A000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000202020001E1E1E00B3B3B3006A6A
      6A00282828002828280029292900272727001F1F1F00252525003F3F3F00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000066666600CCCC
      CC00A9A9A900A9A9A900A9A9A400A99E9A009F8D8300BEB3AD00CCC6C400BAAC
      A5006666660000000000000000000000000000000000000000005B5B5B00CBC4
      C600FFFCFF00F5FFF900FFFFF000FFFFEC00FAFFFF00CEEEFF00102756005A85
      E500E1A3BB0029A8B4001891B2001F506B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000003C3C3C0027272700FFFFFF00E2E2
      E2002F2F2F003838380026262600252525002121210022222200F8F8F800FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000066666600CCCC
      CC00A9A9A900A9A9A900A9A6A200CAC3BF00C4BBB600BAACA500BEB3AD006666
      6600000000000000000000000000000000000000000000000000000000000000
      00006A686800EADFEA00FFFCFF00FFFFF500FCFEEC00FDFBFD009990A1002B29
      2D00B3C4B80066D8DD0052CCD0003A4855000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000383838002F2F2F00353535003333
      33002D2D2D002B2B2B0034343400202020002E2E2E00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000000066666600CCCC
      CC00CCCCCC00CCCCCC00CCC9C600CAC3BF00C4BBB600B7AAA200666666000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000065626400ABAAAC00F7FBFB00E7EFEE00575A59000000
      00004B4B4B0054595900555A5C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D1D1D10018181800404040003636
      36003838380034343400343434009E9E9E00FFFFFF00FFFFFF00FFFFFF00FEFE
      FE00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000006666
      6600666666006666660066666600666666006666660066666600000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000058575700585858000000
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
      000000000000000000000000000000000000BFCBEF002D53B900CFCEEE00F8F7
      FF002255B1000A48BA00FBFBFF00F6F8F900EFFFF900EEF9F100FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF000000000010101000040404001E1E1E000000
      00000606060009090900000000000101010007070700000000000C0C0C000202
      02000404040000000000050505000000000086837F007B80830084807F008082
      83007E7F8300828485008283870082838700838488007C7B7F007E7D81008084
      89007C7F84007C808500767C890000000000E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E5001CFF3400E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E50000000000E5F7FF00519FFF000051F5001956
      C4000D68FF001F61DE00FEFDFF00FAFFF10089C38C00EDFFE900FFFEFF00FFFE
      FF00FFFFFE00FFFFFF00FFFFFF000000000008080800C1C1C100F6F6F600E7E7
      E700E6E6E6002020200000000000000000000000000004040400FFFFFF00F0F0
      F000EFEFEF00DADADA00FFFFFF000000000023172300001235002C2330001219
      3200282A4D002C37530008102D0011193600070D2A0033375400292B49001323
      470013173400041131000012530000000000E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E5001CFF34001CFF34001CFF3400E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E50000000000FEF9F6005E8EC8000766CE00BED6
      FF000079F500799AD900EAFFF0007EFF800019D5170069FF650066DA6100E2FF
      DC00FFFBFF00FFFFFF00FFFFFF000000000001010100F1F1F100D4D4D4000000
      0000F0F0F000A3A3A300000000000E0E0E000202020000000000F4F4F400FAFA
      FA00888888009C9C9C009090900000000000071442003D68A700475375004B67
      900089A0D0008EB1DD008DB5F000587DB9009EC3FF007EA2DE007698D4006275
      A00059577B00525B86005664B70000000000E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E5001CFF34001CFF34001CFF34001CFF34001CFF3400E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E50000000000FEF7EE00E3FCFF000B7CEA00006E
      CF000F8BE900EFFFFF006CF0670000D7000012E6110009CC11000EE2060022F3
      21008DE89C00FFFCFD00F3F3F3000000000000000000ECECEC00555555000202
      0200FCFCFC00D6D6D60009090900000000000808080000000000D2D2D200F3F3
      F3000E0E0E000303030002020200000000000C0F2B0042618800CAC9CD00DDEA
      F200E8F0FD00647A8000617E8C00203C47005F7B860069808F00A6BECA00E0F5
      FD00D4D9E2008896AC005A70B20000000000E5E5E500E5E5E500E5E5E500E5E5
      E5001CFF34001CFF34001CFF34001CFF34001CFF34001CFF34001CFF3400E5E5
      E500E5E5E500E5E5E500E5E5E50000000000FDF8F500FAFFFF004BADF9000C9F
      FF002061AC00F8FFFE0070B669001FA31B00069B0B00A9D8AA000F5E0D0004B8
      050017D21800F6FFF500FFFFFF000000000009090900E7E7E700444444000000
      0000D0D0D000E1E1E100000000000202020000000000000000004E4E4E00EAEA
      EA00E4E4E4000000000000000000000000000E06350053639800DEC6D200F8EE
      FA00FFF6FF00FFFCFF00E0DCE1004F494E00C8C2C700FFF6FC00FFFCFF00F8FE
      FF00D6D5DF008995B1005265B60000000000E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5E500E5E5
      E500E5E5E500E5E5E500E5E5E50000000000F3FFFC005C7B5600ECFFFF00F3F8
      FF00F3F8F900F7F9F300FFFEFF00F8FFF700B4D3B400D9FED800FFFFFC00F8FF
      F70024862200186F1500FFFDFF000000000000000000D7D7D7004B4B4B000808
      0800D5D5D500E7E7E7000C0C0C0000000000060606000202020000000000C7C7
      C700DCDCDC00A8A8A8000303030000000000000D3000416A9100D1CCC900EEF4
      F300FAFCFD00F3FFFD00D9DFDE00474C4A00C2C5C300F7F9F900FFFFFE00FAFF
      F700D8DBD2008A9BA400526BAB0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000EDFFF1003C803300FFFFF800FFFE
      FE00F7FFF500FFFDFF00F8FFF900FDFFFE00FFFDFF00F9F0FA00FFFCFF00FFFA
      FF00DFFFE800146B0F00F5FFFD000000000014141400DEDEDE00494949000000
      0000C5C5C500CDCDCD0000000000000000000000000004040400030303000707
      0700D6D6D600EAEAEA003535350000000000000D300048699000DACCC600F8F3
      F200FFF9FF00FEFDFF00DEDDE1004D494E00C8C2C700FEF7FC00FFFDFF00FDFF
      FF00DCD5DC008A95B1005065B700000000009F060000F1DCDC00FFFFFF00FFFF
      FF009F0600009F0600009F0600009F0600009F060000FFFFFF00FFFFFF00FFFF
      FF009F0600009F060000FFFFFF0000000000E9F3ED001A7E0E00EFF5EA00FDF9
      FF00FEFFFD00EBF3E800FFFEFF00FFFBFF00FDFFFF00F3FFF900FDFFF700FFFB
      FE00FFFFFE0022681B00F1FFFB00000000000000000003030300000000000A0A
      0A00020202000808080002020200000000000000000000000000000000000606
      060004040400070707000000000000000000000739004F6C8700DCC8CD00F3F0
      F900FFFDF900FEFDFF00E0DDDF004D4A4C00C6C3C500FBF8FA00FFFEFF00FFFC
      FF00DFD4DC008A95B0004D6DA80000000000D5949100B43E3900FFFFFF00C569
      6500C56965009F060000FFFFFF00FFFFFF00FFFFFF00B43E3900FFFFFF009F06
      0000FFFFFF00D59491009F06000000000000FFF6FF0000620000189A1700EAFF
      EE00FFFAFF00F4FFF4005B975A00E9FDE600FFFFFF00FDFFFF00FAFFFF00FBFF
      FF00FFFAFF002D572E00FBFAFF000000000000000000E7E7E700696969000000
      0000E7E7E700F9F9F9000C0C0C00000000000E0E0E0000000000090909000000
      00000C0C0C00EFEFEF00E3E3E3000000000000063E004E6C8700DAC6D300EEEF
      FD00FCFEF800FEFDFF00DEDEDE004B4B4B00C4C4C400F9F9F900FFFFFF00FFFE
      FF00DDD6D9008995B1004B6EA60000000000FFFFFF009F0600009F0600009F06
      0000FFFFFF009F060000FFFFFF00FFFFFF00FFFFFF00C5696500D5949100B43E
      3900FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00EFFFEE0002C3010004C1
      070000730000054A0100009D00000CB5050009690E00F6FFF1003060C9001C5C
      D2002B6BBF001850B5004A629C000000000000000000F8F8F800747474000000
      0000E3E3E300DEDEDE0000000000000000000202020000000000FEFEFE00A4A4
      A40002020200E9E9E900EEEEEE000000000000063E004C6D8700D7C6D400ECEF
      FE00FCFEF800FFFDFF00DEDEDE004B4B4B00C4C4C400F9F9F900FFFFFF00FBFF
      FF00DAD8D8008994B4004F6BAB0000000000FFFFFF009F060000FFFFFF009F06
      0000FFFFFF009F0600009F0600009F0600009F060000FFFFFF00D5949100C569
      6500FFFFFF00FFFFFF00FFFFFF0000000000FFFCFF00FFFFFC00C7FFCA003BED
      36000FE5020018EB190004DC010002D90C008BFF8D00E1FFEA003081D6002665
      BD008591BB002A84E2000539AB000000000000000000EBEBEB00979797000303
      0300FFFFFF00D1D1D100000000000A0A0A000000000000000000FAFAFA00BFBF
      BF0000000000D7D7D700FFFFFF0000000000030C370051718400DACCD800EBF0
      FF00FFFFFB00FFFEFF00DDDDDD004A4A4A00C8C8C800FBFBFB00F9F9F900F8FF
      FE00D2CECD009397B300546AA40000000000FFFFFF00D5949100D5949100C569
      6500FFFFFF009F060000FFFFFF00FFFFFF00FFFFFF00D5949100F1DCDC009F06
      0000FFFFFF00FFFFFF00D594910000000000FFFDFF00FFFEFF00FFF6FF00E4FF
      F10094E4A10072EC6A001DC71B00A0FF9300F3FCFF00FFF5FF004495FE000B5E
      D7000D3996002D91FB002955B4000000000000000000E7E7E700EEEEEE00CACA
      CA00FFFFFF006464640006060600030303000303030004040400E5E5E500D9D9
      D900C0C0C000E0E0E000C6C6C60000000000141733004C677100DCCDD500F1F7
      FF00F9FAF600FFFEFF00D6D6D6004D4D4D00CECECE00F2F2F200FBFBFB00F8FF
      FF00DDD7D2009DA0AF0023345F0000000000FFFFFF00FFFFFF009F060000FFFF
      FF00FFFFFF009F0600009F0600009F0600009F060000FFFFFF00FFFFFF009F06
      00009F0600009F060000B43E390000000000FBFFFC00FBFFFC00FAFFFF00FBFF
      F500FFF1F900FFFBFF007BCD7A00FBFFFF00FFF8FF00EAFFF2003599EB003084
      DD006F7DB1004890FF0031569200000000000000000014141400CFCFCF00DFDF
      DF00A5A5A500000000000000000005050500000000000000000027272700CACA
      CA00DFDFDF00CBCBCB001212120000000000FDF1F700B2C4BD00B7A2A400888C
      970052534F00F1EDF200E8E8E8001D1D1D009B9B9B00FDFDFD00898989006567
      7100BEB4AA00BDB9B800EFFCFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFEFF00FFFE
      FF00FFFFFF00FFFFFC00F6F7F300FFFFFF00FFFEFF00FFFEFF00439DF5002581
      E6002567B60046A6FF001B4D8200000000000000000007070700010101000505
      05000606060000000000000000000B0B0B000000000000000000070707000000
      000004040400000000000E0E0E0000000000FFF9F600F4FFF600FFFDFC00FAFC
      FF00FFFFFC00ABA7AC008A8A8A00FFFFFF00C2C2C20082828200F5F5F500FBFB
      FF00FFFFF500FFFFF800EBF9FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00F5F5F500FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00B8BFD200B9CF
      E800A3CAD3009FBFDC00ECFAFF00000000000000000000000000010101000000
      00000C0C0C000000000002020200010101000000000006060600000000000505
      050001010100040404000202020000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFC003FBFF00000001C003F8FF0000
      0001C003F00100000001C003F001000000018003E00100000001C003E0010000
      0001C003C00100000001C003C00100000001C003800100000001C00300010000
      0001C003000000000001C003800000000001C007C00000000001C00FF0000000
      0001C01FFC1100000001E03FFF9F0000FFFFFFFFFFFFFFFF0001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001000100010001000100010001000100010001
      0001000100010001000100010001FFFF00000000000000000000000000000000
      000000000000}
  end
  object PpmArquivo: TPopupMenu
    Left = 176
    Top = 180
    object MniAplicar: TMenuItem
      Caption = 'Aplicar'
      ShortCut = 16397
      OnClick = BtnAplicarClick
    end
    object MniRenomear: TMenuItem
      Caption = 'Renomear'
      ShortCut = 113
      OnClick = MniRenomearClick
    end
    object MniDeletar: TMenuItem
      Caption = 'Deletar da Lista'
      ShortCut = 16430
      OnClick = MniDeletarClick
    end
    object MniDateTime: TMenuItem
      Caption = 'Alterar Data e Hora'
      ShortCut = 16452
      OnClick = MniDateTimeClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object MniDesfazer: TMenuItem
      Caption = 'Desfazer'
      ShortCut = 16474
      OnClick = BtnUndoClick
    end
    object MniRefazer: TMenuItem
      Caption = 'Refazer'
      ShortCut = 24666
      OnClick = BtnReUndoClick
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object MniLimpar: TMenuItem
      Caption = 'Limpar Lista'
      ShortCut = 16462
      OnClick = MniLimparClick
    end
    object MniMostrar: TMenuItem
      Caption = 'Mostrar'
      object MniIcones: TMenuItem
        Caption = 'Icones'
        OnClick = MniDetalhesClick
      end
      object MniIconesPequenos: TMenuItem
        Tag = 1
        Caption = 'Icones Pequenos'
        OnClick = MniDetalhesClick
      end
      object MniLista: TMenuItem
        Tag = 2
        Caption = 'Lista'
        OnClick = MniDetalhesClick
      end
      object MniDetalhes: TMenuItem
        Tag = 3
        Caption = 'Detalhes'
        OnClick = MniDetalhesClick
      end
    end
  end
  object BlhTransnomino: TBalloonHint
    Style = bhsStandard
    Delay = 0
    HideAfter = 1000
    Left = 204
    Top = 180
  end
end
