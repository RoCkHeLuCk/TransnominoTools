unit UnitTransnomino;

interface

uses
   Vcl.Forms, Vcl.ImgList, Vcl.Controls, Vcl.StdCtrls, Vcl.ComCtrls,
   Vcl.ExtCtrls, Vcl.Graphics, Vcl.Dialogs, Vcl.Samples.Gauges,
   Vcl.Buttons, Vcl.Menus, System.Classes, System.SysUtils, System.IniFiles,
   Winapi.Messages, Winapi.Windows, Winapi.ShellApi,
   UnitFileItem, UnitLegendaSRT, UnitFunctions, System.ImageList;

type
  TFrmTransnomino = class(TForm)
    GrbArquivos: TGroupBox;
    LtvArquivos: TListView;
    ImlArquivo: TImageList;
    ImlBarra: TImageList;
    PgcBarra: TPageControl;
    TbsSubstituir: TTabSheet;
    LblSubProcurar: TLabel;
    EdtSubProcurar: TEdit;
    LblSubSubtituit: TLabel;
    EdtSubSubistituir: TEdit;
    PnlButtons: TPanel;
    BtnExecutar: TButton;
    TbsContar: TTabSheet;
    LblContInicio: TLabel;
    EdtContInicio: TEdit;
    LblContFim: TLabel;
    EdtContFim: TEdit;
    LblContMascara: TLabel;
    EdtContMascara: TEdit;
    LblContIniciar: TLabel;
    EdtContIniciar: TEdit;
    UpdContIniciar: TUpDown;
    PnlButton: TPanel;
    CkbSubCaseSen: TCheckBox;
    CkbSubTodasOcor: TCheckBox;
    TbsOrtografia: TTabSheet;
    CkbExtensão: TCheckBox;
    TbsInserir: TTabSheet;
    CkbOrtoEspaço: TCheckBox;
    CkbOrtoAbreviar: TCheckBox;
    EdtOrtoAbreviar: TEdit;
    UpdOrtoAbreviar: TUpDown;
    LblOrtoAbreviar: TLabel;
    CkbOrtoAcentuação: TCheckBox;
    CmbOrtoMaiusculo: TComboBox;
    CkbOrtoCorreção: TCheckBox;
    BtnCorreção: TButton;
    LblOrtoMaiusculo: TLabel;
    TbsTag: TTabSheet;
    EdtInsTexto: TEdit;
    LblInsTexto: TLabel;
    LblInsInicio: TLabel;
    EdtInsInicio: TEdit;
    UpdInsInicio: TUpDown;
    LblInsFim: TLabel;
    EdtInsFim: TEdit;
    UpdInsFim: TUpDown;
    CkbInsDeletar: TCheckBox;
    CkbInsInserir: TCheckBox;
    CkbInsInverter: TCheckBox;
    CkbContLetra: TCheckBox;
    RbtInsData: TRadioButton;
    RbtInsTexto: TRadioButton;
    CkbAutoAtualizar: TCheckBox;
    BtnTagArtista: TButton;
    BtnTagTitulo: TButton;
    BtnTagAlbum: TButton;
    BtnTagTrack: TButton;
    EdtTagTexto: TEdit;
    LblTagTexto: TLabel;
    RbtTagId3v2: TRadioButton;
    RbtTagId3v1: TRadioButton;
    BtnAplicar: TButton;
    GrbRelatorio: TGroupBox;
    SptRelatorio: TSplitter;
    BtnClose: TButton;
    LtbRelatorio: TListBox;
    StbProgresso: TStatusBar;
    BtnUndo: TSpeedButton;
    BtnReUndo: TSpeedButton;
    PpmArquivo: TPopupMenu;
    MniDeletar: TMenuItem;
    MniAplicar: TMenuItem;
    MniDesfazer: TMenuItem;
    MniRefazer: TMenuItem;
    MniLimpar: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    MniRenomear: TMenuItem;
    GugRelatorio: TGauge;
    MniMostrar: TMenuItem;
    MniDetalhes: TMenuItem;
    MniLista: TMenuItem;
    MniIconesPequenos: TMenuItem;
    MniIcones: TMenuItem;
    TbsLegenda: TTabSheet;
    BtnHelp: TButton;
    CkbContMantNome: TCheckBox;
    LblContInserir: TLabel;
    EdtContInserir: TEdit;
    UpdContInserir: TUpDown;
    BlhTransnomino: TBalloonHint;
    TbsSobre: TTabSheet;
    LblSobreP: TLabel;
    LblSobreF: TLabel;
    LblSobreA: TLabel;
    Label1: TLabel;
    ImgSobre: TImage;
    CkbLegendaFormatação: TCheckBox;
    CkbLegendaAcentuação: TCheckBox;
    CmbLegendaConverter: TComboBox;
    LblLegendaLinhas: TLabel;
    EdtLegendaLinhas: TEdit;
    UpdLegendaLinhas: TUpDown;
    LblLegendaCaracter: TLabel;
    EdtLegendaCaracter: TEdit;
    LblLegendaTempo: TLabel;
    EdtLegendaTempo: TEdit;
    CkbLegendaAtrasar: TCheckBox;
    LblLegendaConverter: TLabel;
    LblLegendaAté: TLabel;
    EdtLegendaAté: TEdit;
    EdtLegendaDe: TEdit;
    LblLegendaDe: TLabel;
    CkbLegendaAjuste: TCheckBox;
    CkbLegendaElevar: TCheckBox;
    LblContRepetir: TLabel;
    EdtContRepetir: TEdit;
    UpdContRepetir: TUpDown;
    BtnSubProcurar: TButton;
    MniDateTime: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure LtvArquivosColumnClick(Sender: TObject; Column: TListColumn);
    procedure LtvArquivosCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure LtvArquivosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure LtvArquivosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure BtnExecutarClick(Sender: TObject);
    procedure BtnCorreçãoClick(Sender: TObject);
    procedure RbtInsTextoClick(Sender: TObject);
    procedure BtnTagArtistaClick(Sender: TObject);
    procedure BtnTagTituloClick(Sender: TObject);
    procedure BtnTagAlbumClick(Sender: TObject);
    procedure BtnTagTrackClick(Sender: TObject);
    procedure BtnAplicarClick(Sender: TObject);
    procedure LtvArquivosDeletion(Sender: TObject; Item: TListItem);
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnUndoClick(Sender: TObject);
    procedure BtnReUndoClick(Sender: TObject);
    procedure LtbRelatorioDblClick(Sender: TObject);
    procedure MniLimparClick(Sender: TObject);
    procedure MniDeletarClick(Sender: TObject);
    procedure MniRenomearClick(Sender: TObject);
    procedure StbProgressoDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure MniDetalhesClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnHelpClick(Sender: TObject);
    procedure CkbContMantNomeClick(Sender: TObject);
    procedure CkbOrtoAbreviarClick(Sender: TObject);
    procedure CkbInsInserirClick(Sender: TObject);
    procedure EdtSubProcurarKeyPress(Sender: TObject; var Key: Char);
    procedure LtvArquivosKeyPress(Sender: TObject; var Key: Char);
    procedure EdtLegendaTempoKeyPress(Sender: TObject; var Key: Char);
    procedure PgcBarraChange(Sender: TObject);
    procedure CkbLegendaAjusteClick(Sender: TObject);
    procedure CkbLegendaElevarClick(Sender: TObject);
    procedure EdtLegendaTempoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnSubProcurarClick(Sender: TObject);
    procedure MniDateTimeClick(Sender: TObject);
  private
    { Private declarations }
    Abort : Boolean;
    ColIndexU, ColIndex : Integer;
    procedure WMDropFiles(var Msg: TMessage); message wm_DropFiles;
    function IconeLoadFromFile(ImageList:TImageList; FileName:String; Index:Word):Integer;
    procedure AdicionarArquivo(const FileName:string);
    procedure ProgresStart(MaxValue:Integer);
    procedure ProgresStop();
  public
    { Public declarations }
    procedure FormPositionFixed(const Form:TForm);
    procedure MessageError(Msg:String);
  end;

var
  Dir : String;
  FrmTransnomino: TFrmTransnomino;

implementation

{$R *.dfm}

uses UnitOrtografia;

//----------------------------------------------------------------------------//
procedure TFrmTransnomino.FormPositionFixed(const Form:TForm);
begin
    //verifica posiçoes na tela
    if (Form.Left < Screen.WorkAreaLeft) then Form.Left:=0
    else
    if (Form.Left > Screen.WorkAreaWidth - Form.Width) then
       Form.Left:= Screen.WorkAreaWidth - Form.Width;

    if (Form.Top < Screen.WorkAreaTop) then Form.Top:=0
    else
    if (Form.Top > Screen.WorkAreaHeight - Form.Height) then
       Form.Top:= Screen.WorkAreaHeight - Form.Height;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.WMDropFiles(var Msg: TMessage);
var
   A, FileCount, BufferSize: Cardinal;
   Drop : HDROP;
   FileName : string;
begin
  Drop := Msg.wParam;
  FileCount := DragQueryFile(Drop, $FFFFFFFF, nil, 0);

  ProgresStart(FileCount);
  A := 0;

  while (A < FileCount)and(not Abort) do
  begin
      BufferSize := DragQueryFile(Drop, A, nil, 0);
      SetLength(FileName, BufferSize+1);
      if (DragQueryFile(Drop, A, PWideChar(FileName), BufferSize+1) = BufferSize) then
         AdicionarArquivo(Trim(FileName));

      GugRelatorio.Progress := A;
      Inc(A);
  end;

  ProgresStop;
  Msg.Result := 0;
end;
//---------------------------------------------------------------------------//
function TFrmTransnomino.IconeLoadFromFile(ImageList:TImageList; FileName:String; Index:Word):Integer;
var
    Icone : TIcon;
begin
    Result := -1;
    Try
        FileName := FileExpandPath(FileName);
        if (FileExists(FileName)) and (not FileIsReadOnly(FileName)) then
        begin
            Icone := TIcon.Create;
            Icone.Handle := ExtractAssociatedIcon(1, PWideChar(FileName), Index );
            if Icone.Handle <> 0 then
               Result := ImageList.AddIcon(Icone);
            Icone.Free;
        end;
    except
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.AdicionarArquivo(const FileName:string);
var
    Item : TListItem;
    FileItem : TFileItem;
begin
    FileItem := TFileItem.Create( FileName );
    Item := LtvArquivos.Items.Add;
    Item.Data := FileItem;
    Item.Caption := FileItem.FileName;
    Item.SubItems.Clear;
    if FileItem.IsDirectory then
    begin
       Item.ImageIndex := 0;
       Item.SubItems.Add( 'Dir' );
    end else begin
       Item.ImageIndex := IconeLoadFromFile(ImlArquivo, FileName, 0);
       Item.SubItems.Add( FileItem.Extension );
    end;
    Item.SubItems.Add( FileItem.DateStr );
    Item.SubItems.Add( FileItem.Path );
    Item.SubItems.Add( FileItem.FileName );
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.PgcBarraChange(Sender: TObject);
var
    ok : Boolean;
begin
    ok := (PgcBarra.TabIndex < 5);

    CkbAutoAtualizar.Enabled := ok;
    BtnExecutar.Enabled := ok;
    CkbExtensão.Enabled := ok;
    BtnReUndo.Enabled := ok;
    BtnUndo.Enabled := ok;

    if ok and CkbAutoAtualizar.Checked then
       BtnExecutar.OnClick(Sender);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.ProgresStart(MaxValue:Integer);
begin
    if MaxValue > 0 then
    begin
        LtbRelatorio.Clear;
        GugRelatorio.Progress := 0;
        GugRelatorio.MaxValue := MaxValue-1;
        Abort := False;
    end else
        Abort := True;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.ProgresStop();
begin
    if LtbRelatorio.Items.Text <> '' then
    begin
        GrbRelatorio.Visible := True;
        SptRelatorio.Visible := True;
    end else
       BtnClose.Click;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.MessageError(Msg:String);
begin
    LtbRelatorio.Items.Add(Msg);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.FormCreate(Sender: TObject);
var
    A : Integer;
    ini : TIniFile;
begin
    DragAcceptFiles( FrmTransnomino.Handle , True );
    IconeLoadFromFile(ImlArquivo,'%SystemRoot%\System32\shell32.dll',3);

    BlhTransnomino.Title := 'Os nomes de arquivos ou pasta não podem conter:';
    BlhTransnomino.Description := '\/:*?"<>|';

    FrmTransnomino.Show;
    ProgresStart(ParamCount);
    for A := 1 to ParamCount do
    begin
        AdicionarArquivo(ParamStr(A));
        GugRelatorio.Progress := A;
    end;
    ProgresStop;
    GugRelatorio.Parent := StbProgresso;
    Dir := ExtractFilePath(ParamStr(0));

    CreateShortcut('%USERPROFILE%\AppData\Roaming\Microsoft\Windows\SendTo\TransnominoTools.lnk',Dir);
    //carrega o config
    ini:=TIniFile.Create(Dir+'Config.ini');
    FrmTransnomino.Left:=ini.ReadInteger( 'Form', 'Left', FrmTransnomino.Left);
    FrmTransnomino.Top:=ini.ReadInteger( 'Form', 'Top', FrmTransnomino.Top);
    FrmTransnomino.Width:=ini.ReadInteger( 'Form', 'Width', FrmTransnomino.Width);
    FrmTransnomino.Height:=ini.ReadInteger( 'Form', 'Height', FrmTransnomino.Height);
    FormPositionFixed(FrmTransnomino);
    if ini.ReadBool( 'Form', 'Maximized', false) then
       FrmTransnomino.WindowState:=wsMaximized;

    for A:=0 to LtvArquivos.Columns.Count-1 do
       LtvArquivos.Column[A].Width:=ini.ReadInteger( 'Arquivo', 'Width'+IntToStr(A),LtvArquivos.Column[A].Width);
    LtvArquivos.ViewStyle:=TViewStyle(ini.ReadInteger( 'Arquivo', 'Style', Integer(LtvArquivos.ViewStyle)));

    CkbAutoAtualizar.Checked := ini.ReadBool('Geral', 'AutoAtualizar',CkbAutoAtualizar.Checked);
    CkbExtensão.Checked := ini.ReadBool('Geral', 'Extensao',CkbExtensão.Checked);
    GrbRelatorio.Height := ini.ReadInteger('Geral','Relatorio',GrbRelatorio.Height);
    PgcBarra.ActivePageIndex := ini.ReadInteger('Geral','Tab',6);

    EdtSubProcurar.Text := ini.ReadString('Substituir','Procurar',EdtSubProcurar.Text);
    EdtSubSubistituir.Text := ini.ReadString('Substituir','Substituir',EdtSubSubistituir.Text);
    CkbSubCaseSen.Checked := ini.ReadBool('Substituir', 'CaseSen',CkbSubCaseSen.Checked);
    CkbSubTodasOcor.Checked := ini.ReadBool('Substituir', 'TodasOcor',CkbSubTodasOcor.Checked);

    EdtContInicio.Text := ini.ReadString('Contador','Inicio',EdtContInicio.Text);
    EdtContFim.Text := ini.ReadString('Contador','Fim',EdtContFim.Text);
    EdtContMascara.Text := ini.ReadString('Contador','Mascara',EdtContMascara.Text);
    CkbContLetra.Checked := ini.ReadBool('Contador', 'Letra',CkbContLetra.Checked);
    UpdContRepetir.Position := ini.ReadInteger('Contador','Repetir',UpdContRepetir.Position);
    UpdContIniciar.Position := ini.ReadInteger('Contador','Contar',UpdContIniciar.Position);
    CkbContMantNome.Checked := ini.ReadBool('Contador', 'Manter',CkbContMantNome.Checked);
    UpdContInserir.Position := ini.ReadInteger('Contador','Inserir',UpdContInserir.Position);

    CkbOrtoEspaço.Checked := ini.ReadBool('Ortografia', 'Espaco',CkbOrtoEspaço.Checked);
    CkbOrtoAbreviar.Checked := ini.ReadBool('Ortografia', 'Abreviar',CkbOrtoAbreviar.Checked);
    CkbOrtoAcentuação.Checked := ini.ReadBool('Ortografia', 'Acentuar',CkbOrtoAcentuação.Checked);
    CkbOrtoCorreção.Checked := ini.ReadBool('Ortografia', 'Correcao',CkbOrtoCorreção.Checked);
    UpdOrtoAbreviar.Position := ini.ReadInteger('Ortografia','Tamanho',UpdOrtoAbreviar.Position);
    CmbOrtoMaiusculo.ItemIndex := ini.ReadInteger('Ortografia','Maiusculo',CmbOrtoMaiusculo.ItemIndex);

    CkbOrtoEspaço.Checked := ini.ReadBool('Ortografia', 'Espaco',CkbOrtoEspaço.Checked);
    CkbOrtoAbreviar.Checked := ini.ReadBool('Ortografia', 'Abreviar',CkbOrtoAbreviar.Checked);
    CkbOrtoAcentuação.Checked := ini.ReadBool('Ortografia', 'Acentuar',CkbOrtoAcentuação.Checked);
    CkbOrtoCorreção.Checked := ini.ReadBool('Ortografia', 'Correcao',CkbOrtoCorreção.Checked);
    UpdOrtoAbreviar.Position := ini.ReadInteger('Ortografia','Tamanho',UpdOrtoAbreviar.Position);
    CmbOrtoMaiusculo.ItemIndex := ini.ReadInteger('Ortografia','Maiusculo',CmbOrtoMaiusculo.ItemIndex);

    EdtInsTexto.Text := ini.ReadString('Inserir','Texto',EdtInsTexto.Text);
    CkbInsDeletar.Checked := ini.ReadBool('Inserir', 'Deletar',CkbInsDeletar.Checked);
    CkbInsInserir.Checked := ini.ReadBool('Inserir', 'Inserir',CkbInsInserir.Checked);
    CkbInsInverter.Checked := ini.ReadBool('Inserir', 'Inverter',CkbInsInverter.Checked);
    RbtInsData.Checked := ini.ReadBool('Inserir', 'Data',RbtInsData.Checked);
    RbtInsTexto.Checked := ini.ReadBool('Inserir', 'Palavra',RbtInsTexto.Checked);
    UpdInsInicio.Position := ini.ReadInteger('Inserir','Inicio',UpdInsInicio.Position);
    UpdInsFim.Position := ini.ReadInteger('Inserir','Fim',UpdInsFim.Position);

    EdtTagTexto.Text := ini.ReadString('Tag','Texto',EdtTagTexto.Text);
    RbtTagId3v2.Checked := ini.ReadBool('Tag', 'ID3v2',RbtTagId3v2.Checked);
    RbtTagId3v1.Checked := ini.ReadBool('Tag', 'ID3v1',RbtTagId3v1.Checked);

    CkbLegendaFormatação.Checked := ini.ReadBool('Legenda', 'Formatacao', CkbLegendaFormatação.Checked);
    CkbLegendaAcentuação.Checked := ini.ReadBool('Legenda', 'Acentuacao', CkbLegendaAcentuação.Checked);
    CkbLegendaAtrasar.Checked := ini.ReadBool('Legenda', 'Atrasar', CkbLegendaAtrasar.Checked);
    CkbLegendaAjuste.Checked := ini.ReadBool('Legenda', 'Ajustar', CkbLegendaAjuste.Checked);
    CkbLegendaElevar.Checked := ini.ReadBool('Legenda', 'Elevar', CkbLegendaElevar.Checked);
    CmbLegendaConverter.ItemIndex := ini.ReadInteger('Legenda','Converter',CmbLegendaConverter.ItemIndex);
    UpdLegendaLinhas.Position := ini.ReadInteger('Legenda','Linha',UpdLegendaLinhas.Position);
    EdtLegendaCaracter.Text := ini.ReadString('Legenda','Caracter',EdtLegendaCaracter.Text);
    EdtLegendaTempo.Text := ini.ReadString('Legenda','Tempo', EdtLegendaTempo.Text);
    EdtLegendaDe.Text := ini.ReadString('Legenda','De', EdtLegendaDe.Text);
    EdtLegendaAté.Text := ini.ReadString('Legenda','Ate', EdtLegendaAté.Text);

    ini.Free;

    PgcBarra.OnChange(Sender);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.FormDestroy(Sender: TObject);
begin
    DragAcceptFiles( FrmTransnomino.Handle , False );
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.FormClose(Sender: TObject; var Action: TCloseAction);
var
    ini:TIniFile;
    c:Integer;
begin
    ini:=TIniFile.Create(Dir+'Config.ini');

    FormPositionFixed(FrmTransnomino);
    if FrmTransnomino.WindowState <> wsMaximized then
    begin
        ini.WriteInteger( 'Form', 'Left', FrmTransnomino.Left);
        ini.WriteInteger( 'Form', 'Top', FrmTransnomino.Top);
        ini.WriteInteger( 'Form', 'Width', FrmTransnomino.Width);
        ini.WriteInteger( 'Form', 'Height', FrmTransnomino.Height);
        ini.WriteBool( 'Form', 'Maximized', false );
    end else
        ini.WriteBool( 'Form', 'Maximized', true );


    for c:=0 to LtvArquivos.Columns.Count-1 do
        ini.WriteInteger( 'Arquivo' ,'Width'+IntToStr(c), LtvArquivos.Column[c].Width);
    ini.WriteInteger( 'Arquivo' ,'Style', Integer(LtvArquivos.ViewStyle));


    ini.WriteBool('Geral', 'AutoAtualizar',CkbAutoAtualizar.Checked);
    ini.WriteBool('Geral', 'Extensao',CkbExtensão.Checked);
    ini.WriteInteger('Geral','Relatorio',GrbRelatorio.Height);
    ini.WriteInteger('Geral','Tab',PgcBarra.ActivePageIndex);

    ini.WriteString('Substituir','Procurar',EdtSubProcurar.Text);
    ini.WriteString('Substituir','Substituir',EdtSubSubistituir.Text);
    ini.WriteBool('Substituir', 'CaseSen',CkbSubCaseSen.Checked);
    ini.WriteBool('Substituir', 'TodasOcor',CkbSubTodasOcor.Checked);

    ini.WriteString('Contador','Inicio',EdtContInicio.Text);
    ini.WriteString('Contador','Fim',EdtContFim.Text);
    ini.WriteString('Contador','Mascara',EdtContMascara.Text);
    ini.WriteBool('Contador', 'Letra',CkbContLetra.Checked);
    ini.WriteInteger('Contador','Repetir',UpdContRepetir.Position);
    ini.WriteInteger('Contador','Contar',UpdContIniciar.Position);
    ini.WriteBool('Contador', 'Manter',CkbContMantNome.Checked);
    ini.WriteInteger('Contador','Inserir',UpdContInserir.Position);

    ini.WriteBool('Ortografia', 'Espaco',CkbOrtoEspaço.Checked);
    ini.WriteBool('Ortografia', 'Abreviar',CkbOrtoAbreviar.Checked);
    ini.WriteBool('Ortografia', 'Acentuar',CkbOrtoAcentuação.Checked);
    ini.WriteBool('Ortografia', 'Correcao',CkbOrtoCorreção.Checked);
    ini.WriteInteger('Ortografia','Tamanho',UpdOrtoAbreviar.Position);
    ini.WriteInteger('Ortografia','Maiusculo',CmbOrtoMaiusculo.ItemIndex);

    ini.WriteBool('Ortografia', 'Espaco',CkbOrtoEspaço.Checked);
    ini.WriteBool('Ortografia', 'Abreviar',CkbOrtoAbreviar.Checked);
    ini.WriteBool('Ortografia', 'Acentuar',CkbOrtoAcentuação.Checked);
    ini.WriteBool('Ortografia', 'Correcao',CkbOrtoCorreção.Checked);
    ini.WriteInteger('Ortografia','Tamanho',UpdOrtoAbreviar.Position);
    ini.WriteInteger('Ortografia','Maiusculo',CmbOrtoMaiusculo.ItemIndex);

    ini.WriteString('Inserir','Texto',EdtInsTexto.Text);
    ini.WriteBool('Inserir', 'Deletar',CkbInsDeletar.Checked);
    ini.WriteBool('Inserir', 'Inserir',CkbInsInserir.Checked);
    ini.WriteBool('Inserir', 'Inverter',CkbInsInverter.Checked);
    ini.WriteBool('Inserir', 'Data',RbtInsData.Checked);
    ini.WriteBool('Inserir', 'Palavra',RbtInsTexto.Checked);
    ini.WriteInteger('Inserir','Inicio',UpdInsInicio.Position);
    ini.WriteInteger('Inserir','Fim',UpdInsFim.Position);

    ini.WriteString('Tag','Texto',EdtTagTexto.Text);
    ini.WriteBool('Tag', 'ID3v2',RbtTagId3v2.Checked);
    ini.WriteBool('Tag', 'ID3v1',RbtTagId3v1.Checked);

    ini.WriteBool('Legenda', 'Formatacao', CkbLegendaFormatação.Checked);
    ini.WriteBool('Legenda', 'Acentuacao', CkbLegendaAcentuação.Checked);
    ini.WriteBool('Legenda', 'Atrasar', CkbLegendaAtrasar.Checked);
    ini.WriteBool('Legenda', 'Ajustar', CkbLegendaAjuste.Checked);
    ini.WriteBool('Legenda', 'Elevar', CkbLegendaElevar.Checked);
    ini.WriteInteger('Legenda','Converter',CmbLegendaConverter.ItemIndex);
    ini.WriteInteger('Legenda','Linha',UpdLegendaLinhas.Position);
    ini.WriteString('Legenda','Caracter',EdtLegendaCaracter.Text);
    ini.WriteString('Legenda','Tempo',EdtLegendaTempo.Text);
    ini.WriteString('Legenda','De',EdtLegendaDe.Text);
    ini.WriteString('Legenda','Ate',EdtLegendaAté.Text);

    ini.free;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #27 then
       Abort := True;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.EdtLegendaTempoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
    Edit : TEdit;
begin
    if Key in [VK_BACK,VK_DELETE,48..57] then
    begin
        Edit := TEdit(Sender);

       if Key = VK_BACK then
          Edit.SelStart := Edit.SelStart-1;

        Edit.SelLength := 1;
        case Edit.SelStart of
            2,5: Edit.SelText := ':';
              8: Edit.SelText := ',';
        else
            if Edit.SelStart < 12 then
            begin
                if Key in [VK_BACK, VK_DELETE] then
                   Edit.SelText := '0'
                else begin
                    case Edit.SelStart of
                        0 : if (Key in [48..50]) then
                               Edit.SelText := Char(Key);
                        1 : if (StrToInt(Edit.Text[1]) <> 2) or (Key in [48..51]) then
                               Edit.SelText := Char(Key);
                    else
                       if (not (Edit.SelStart in [3,6])) or (Key in [48..53]) then
                          Edit.SelText := Char(Key);
                    end;
                end;
            end;
        end;

       if Key = VK_BACK then
          Edit.SelStart := Edit.SelStart-1;

       Key := 0;
    end;

end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.EdtLegendaTempoKeyPress(Sender: TObject;
  var Key: Char);
begin
    Key := #0;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.EdtSubProcurarKeyPress(Sender: TObject;  var Key: Char);
var
    Point : TPoint;
begin
    if CharInSet(Key,['\','/',':','*','?','"','<','>','|']) then
    begin
       Key := #0;
       Point.X := TEdit(Sender).ClientOrigin.X + (TEdit(Sender).Width Div 2) ;
       Point.Y := TEdit(Sender).ClientOrigin.Y + TEdit(Sender).Height;
       BlhTransnomino.ShowHint(Point);
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.StbProgressoDrawPanel(StatusBar: TStatusBar;
     Panel: TStatusPanel; const Rect: TRect);
begin
    if Panel = StbProgresso.Panels[1] then
    begin
       GugRelatorio.Top := Rect.Top;
       GugRelatorio.Left := Rect.Left;
       GugRelatorio.Width := Rect.Right - Rect.Left - 15;
       GugRelatorio.Height := Rect.Bottom - Rect.Top;
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.Label1Click(Sender: TObject);
begin
    ShellExecute(Handle,'open','http://franco.freevar.com/','','',0);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtbRelatorioDblClick(Sender: TObject);
begin
    LtvArquivos.ItemIndex := StrToInt(copy(LtbRelatorio.Items[LtbRelatorio.ItemIndex],2,4));
    LtvArquivos.SetFocus;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtvArquivosColumnClick(Sender: TObject;
  Column: TListColumn);
begin
    if (ColIndex <> Column.Index) or (ColIndexU = -1) then
       ColIndexU:=1
    else
       ColIndexU:=-1;

    ColIndex:= Column.Index;
    TListView(Sender).AlphaSort;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtvArquivosCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
begin
    if ColIndex = 0 Then
       Compare := CompareText(Item1.Caption, Item2.Caption) * ColIndexU
    else
       Compare := CompareText(Item1.SubItems[ColIndex-1], Item2.SubItems[ColIndex-1]) * ColIndexU;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtvArquivosDeletion(Sender: TObject; Item: TListItem);
begin
    if Item.Data <> nil then
    begin
        TFileItem(Item.Data).Free;
        Item.Data := nil;
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtvArquivosDragDrop(Sender, Source: TObject; X, Y: Integer);
var currentItem, nextItem, dragItem, dropItem : TListItem;
begin
    if Sender = Source then
    begin
        with TListView(Sender) do
        begin
            dropItem := GetItemAt(X, Y);
            currentItem := Selected;

            while currentItem <> nil do
            begin
                nextItem := GetNextItem(currentItem, SdAll, [IsSelected]) ;
                if Assigned(dropItem) then
                   dragItem := Items.Insert(dropItem.Index)
                else
                   dragItem := Items.Add;

                dragItem.Assign(currentItem);

                currentItem.Data := nil;
                currentItem.Free;
                currentItem := nextItem;
            end;

        end;
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtvArquivosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
    Accept := (Sender = Source);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.LtvArquivosKeyPress(Sender: TObject; var Key: Char);
var
    Point : TPoint;
begin
    if CharInSet(Key,['\','/',':','*','?','"','<','>','|']) then
    begin
       Key := #0;
       Point.X := LtvArquivos.ClientOrigin.X + (LtvArquivos.Width Div 2) ;
       Point.Y := LtvArquivos.ClientOrigin.Y + LtvArquivos.ItemFocused.Position.Y;
       BlhTransnomino.ShowHint(Point);
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.MniDateTimeClick(Sender: TObject);
var
    F: integer;
    Data : String;
begin
    F := FileOpen(
        LtvArquivos.ItemFocused.SubItems[2]+LtvArquivos.ItemFocused.SubItems[3]
        ,fmOpenWrite or fmShareDenyNone);
    if F > 0 then
    begin
        Data := InputBox(
            'Alterar a Data e Hora',
            'Data e Hora',
            FormatDateTime('dd/mm/yyyy hh:nn:ss',
                FileDateToDateTime( FileGetDate(F) ))
            );
        if Data <> '' then
        try
        SetFileTime()
            if FileSetDate( F, DateTimeToFileDate( StrToDateTime(Data) )
              ) <> 0 then
            begin
                ShowMessage('Não foi possivel aterar a data e hora do arquivo.');
            end;
        finally
            FileClose(F);
        end;
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.MniDeletarClick(Sender: TObject);
var
    A : Integer;
begin
    try
        for A := 0 to LtvArquivos.Items.Count-1 do
        begin
            if LtvArquivos.Items[A].Selected then
               LtvArquivos.Items[A].Delete;
        end;
    except
    end;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.MniLimparClick(Sender: TObject);
begin
    LtvArquivos.Clear;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.MniRenomearClick(Sender: TObject);
begin
    LtvArquivos.ItemFocused.EditCaption;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnExecutarClick(Sender: TObject);
var
    A, E : Integer;
    Nome, Ext : String;
    TagRec:TTagRec;
begin
    ProgresStart(LtvArquivos.Items.Count);

    if (CkbAutoAtualizar.Checked) or (Sender = BtnExecutar) then
    begin

        if PgcBarra.ActivePageIndex = 4 then
        begin
            TagRec[0] := Pos('%Artista%',EdtTagTexto.Text) = 0;
            TagRec[1] := Pos('%Titulo%',EdtTagTexto.Text) = 0;
            TagRec[2] := Pos('%Album%',EdtTagTexto.Text) = 0;
            TagRec[3] := Pos('%Faixa%',EdtTagTexto.Text) = 0;
        end;

        //varre os arquivos
        A := 0;
        E := 0;
        while (A < LtvArquivos.Items.Count)and(not Abort) do
        begin
            Nome :=  TFileItem(LtvArquivos.Items[A].Data).FileName;

            case PgcBarra.ActivePageIndex of
                0 : LtvArquivos.Items[A].Caption := Substituir(Nome ,EdtSubProcurar.Text, EdtSubSubistituir.Text,CkbSubCaseSen.Checked,CkbSubTodasOcor.Checked);
                1 : LtvArquivos.Items[A].Caption := Contar(Nome, EdtContInicio.Text,EdtContFim.Text, EdtContMascara.Text,A-E,UpdContIniciar.Position,UpdContInserir.Position,UpdContRepetir.Position,CkbContLetra.Checked,CkbContMantNome.Checked);
                2 : LtvArquivos.Items[A].Caption := Ortografia(Nome ,CkbOrtoAcentuação.Checked, CkbOrtoEspaço.Checked,CkbOrtoAbreviar.Checked,CkbOrtoCorreção.Checked,UpdOrtoAbreviar.Position,CmbOrtoMaiusculo.ItemIndex);
                3 : LtvArquivos.Items[A].Caption := Inserir(Nome ,EdtInsTexto.Text, TFileItem(LtvArquivos.Items[A].Data).Date,UpdInsInicio.Position,UpdInsFim.Position,RbtInsTexto.Checked,CkbInsInserir.Checked,CkbInsDeletar.Checked,CkbInsInverter.Checked);
                4 : LtvArquivos.Items[A].Caption := TagFile(Nome ,EdtTagTexto.Text,TFileItem(LtvArquivos.Items[A].Data).Path+Nome,RbtTagId3v2.Checked,TagRec);
            end;

            if (CkbExtensão.Checked) then
            begin
                Ext := TFileItem(LtvArquivos.Items[A].Data).Extension;
                if (not SameText(Ext,ExtractFileExt(LtvArquivos.Items[A].Caption))) then
                   LtvArquivos.Items[A].Caption := LtvArquivos.Items[A].Caption + Ext;
            end;

            GugRelatorio.Progress := A;
            Inc(A);
        end;
    end;

    ProgresStop();
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnCloseClick(Sender: TObject);
begin
    GrbRelatorio.Visible := False;
    SptRelatorio.Visible := False;
    LtbRelatorio.Clear;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnCorreçãoClick(Sender: TObject);
begin
    FrmOrtografia.Show;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.RbtInsTextoClick(Sender: TObject);
begin
    if RbtInsTexto.Checked then
    begin
       LblInsTexto.Caption := 'Texto :';
       EdtInsTexto.Text := '';
    end else begin
       LblInsTexto.Caption := 'Formato: ';
       EdtInsTexto.Text := 'hh:nn:ss dd/mm/yyyy';
    end;
    BtnExecutar.OnClick(Sender);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnTagArtistaClick(Sender: TObject);
begin
    EdtTagTexto.Text := EdtTagTexto.Text + '%Artista%';
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnTagTituloClick(Sender: TObject);
begin
    EdtTagTexto.Text := EdtTagTexto.Text + '%Titulo%';
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnTagAlbumClick(Sender: TObject);
begin
    EdtTagTexto.Text := EdtTagTexto.Text + '%Album%';
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnTagTrackClick(Sender: TObject);
begin
    EdtTagTexto.Text := EdtTagTexto.Text + '%Faixa%';
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnUndoClick(Sender: TObject);
var
    A : Integer;
    FileItem : TFileItem;
    Aux : String;
begin
    ProgresStart(LtvArquivos.Items.Count);
    A := 0;
    while (A < LtvArquivos.Items.Count)and(not Abort) do
    begin
        if (Sender = BtnUndo) or (LtvArquivos.Items[A].Selected) then
        begin
            FileItem := TFileItem(LtvArquivos.Items[A].Data);
            if not  FileItem.UndoFileName(Aux) then
            begin
                MessageError('['+FormatFloat('0000',A)+'] Erro ao renomear: '+FileItem.FileName);
                LtvArquivos.Items[A].Caption := Aux;
            end;
        end;
        GugRelatorio.Progress := A;
        Inc(A);
    end;

    ProgresStop();
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnReUndoClick(Sender: TObject);
var
    A : Integer;
    FileItem : TFileItem;
    Aux : String;
begin
    ProgresStart(LtvArquivos.Items.Count);
    A := 0;
    while (A < LtvArquivos.Items.Count)and(not Abort) do
    begin
        if (Sender = BtnReUndo) or (LtvArquivos.Items[A].Selected) then
        begin
            FileItem := TFileItem(LtvArquivos.Items[A].Data);
            if not FileItem.ReUndoFileName(Aux) then
            begin
                MessageError('['+FormatFloat('0000',A)+'] Erro ao renomear: '+FileItem.FileName);
                LtvArquivos.Items[A].Caption := Aux;
            end;
        end;
        GugRelatorio.Progress := A;
        Inc(A);
    end;

    ProgresStop();
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnSubProcurarClick(Sender: TObject);
begin
    ShowMessage('?   : Coringa para apenas um caracter'+#13+
                '*   : Coringa para varias ocorrencia de caracter');

end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnAplicarClick(Sender: TObject);
var
    A : Integer;
    FileItem : TFileItem;
    LegendaSRT : TLegendaSRT;
begin
    ProgresStart(LtvArquivos.Items.Count);
    A := 0;
    while (A < LtvArquivos.Items.Count)and(not Abort) do
    begin
        if (Sender = BtnAplicar) or (LtvArquivos.Items[A].Selected) then
        begin
            FileItem := TFileItem(LtvArquivos.Items[A].Data);

            if PgcBarra.TabIndex = 5 then
            begin
                LegendaSRT := TLegendaSRT.Create();
                if LegendaSRT.LoadFromFile( FileItem.Path + FileItem.FileName ) then
                begin
                    if LegendaSRT.Valid then
                    begin
                        LegendaSRT.Formatação := CkbLegendaFormatação.Checked;
                        LegendaSRT.Acentuação := CkbLegendaAcentuação.Checked;
                        LegendaSRT.Ajustação := CkbLegendaAjuste.Checked;
                        LegendaSRT.Elevação := CkbLegendaElevar.Checked;
                        LegendaSRT.Atrasar := CkbLegendaAtrasar.Checked;
                        LegendaSRT.Converter := CmbLegendaConverter.ItemIndex;
                        LegendaSRT.Linhas := UpdLegendaLinhas.Position;
                        LegendaSRT.Caracter := EdtLegendaCaracter.Text;
                        LegendaSRT.TempoAjuste := StrToTime( EdtLegendaTempo.Text);
                        LegendaSRT.TempoInicio := StrToTime( EdtLegendaDe.Text);
                        LegendaSRT.TempoFim := StrToTime( EdtLegendaAté.Text );
                        LegendaSRT.Executar();
                        if not LegendaSRT.SaveToFile(FileItem.Path + FileItem.FileName) then
                           MessageError('['+FormatFloat('0000',A)+'] Erro ao editar o arquivo: '+FileItem.FileName);
                    end else
                        MessageError('['+FormatFloat('0000',A)+'] Formato de arquivo invalido: '+FileItem.FileName);
                end else
                    MessageError('['+FormatFloat('0000',A)+'] Erro ao abrir o arquivo: '+FileItem.FileName);
                LegendaSRT.Free;
            end else
                if not FileItem.RenameFileName(LtvArquivos.Items[A].Caption) then
                   MessageError('['+FormatFloat('0000',A)+'] Erro ao renomear: '+FileItem.FileName);
        end;
        GugRelatorio.Progress := A;
        Inc(A);
    end;

    ProgresStop();
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.MniDetalhesClick(Sender: TObject);
begin
    LtvArquivos.ViewStyle:=TViewStyle(TMenuItem(Sender).Tag);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.BtnHelpClick(Sender: TObject);
begin
    ShowMessage('0   : Força a ocorrencia de "0"'+#13+
                '#   : Optional a ocorrencia de numeros'+#13+
                ',   : Força a ocorrencia de separador milhar'+#13+
                '.   : Força a ocorrencia de decimais'+#13+
                'E+  : Força a ocorrencia de expreção'+#13+
                'E-  : Optional a ocorrencia de expreção'+#13+
                ';   : Separador de ocorrencias');
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.CkbContMantNomeClick(Sender: TObject);
begin
    UpdContInserir.Enabled := CkbContMantNome.Checked;
    EdtContInserir.Enabled := CkbContMantNome.Checked;
    LblContInserir.Enabled := CkbContMantNome.Checked;
    BtnExecutar.OnClick(Sender);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.CkbInsInserirClick(Sender: TObject);
begin
    RbtInsData.Enabled := CkbInsInserir.Checked;
    RbtInsTexto.Enabled := CkbInsInserir.Checked;
    EdtInsTexto.Enabled := CkbInsInserir.Checked;
    LblInsTexto.Enabled := CkbInsInserir.Checked;
    BtnExecutar.OnClick(Sender);
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.CkbLegendaAjusteClick(Sender: TObject);
begin
    LblLegendaTempo.Enabled := CkbLegendaAjuste.Checked;
    EdtLegendaTempo.Enabled := CkbLegendaAjuste.Checked;
    CkbLegendaAtrasar.Enabled := CkbLegendaAjuste.Checked;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.CkbLegendaElevarClick(Sender: TObject);
begin
    LblLegendaLinhas.Enabled := CkbLegendaElevar.Checked;
    LblLegendaCaracter.Enabled := CkbLegendaElevar.Checked;
    LblLegendaAté.Enabled := CkbLegendaElevar.Checked;
    LblLegendaDe.Enabled := CkbLegendaElevar.Checked;
    EdtLegendaLinhas.Enabled := CkbLegendaElevar.Checked;
    EdtLegendaCaracter.Enabled := CkbLegendaElevar.Checked;
    EdtLegendaAté.Enabled := CkbLegendaElevar.Checked;
    EdtLegendaDe.Enabled := CkbLegendaElevar.Checked;
    UpdLegendaLinhas.Enabled := CkbLegendaElevar.Checked;
end;
//----------------------------------------------------------------------------//
procedure TFrmTransnomino.CkbOrtoAbreviarClick(Sender: TObject);
begin
    UpdOrtoAbreviar.Enabled := CkbOrtoAbreviar.Checked;
    EdtOrtoAbreviar.Enabled := CkbOrtoAbreviar.Checked;
    LblOrtoAbreviar.Enabled := CkbOrtoAbreviar.Checked;
    BtnExecutar.OnClick(Sender);
end;
//----------------------------------------------------------------------------//


end.
