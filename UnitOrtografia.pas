unit UnitOrtografia;

interface

uses
    Vcl.Forms, Vcl.Controls, Vcl.Grids, System.Classes, System.SysUtils, System.IniFiles,
  Vcl.Menus;

type
  TFrmOrtografia = class(TForm)
    StgOrtografia: TStringGrid;
    PpmOrtografia: TPopupMenu;
    MniDeletar: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure StgOrtografiaSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MniDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmOrtografia: TFrmOrtografia;

implementation
{$R *.dfm}
uses UnitTransnomino;

//----------------------------------------------------------------------------//
procedure TFrmOrtografia.FormCreate(Sender: TObject);
var
    ini : TIniFile;
    A,Y : Integer;
    F : TextFile;
    Aux : String;
begin
    StgOrtografia.Cells[0,0]:='Procurar';
    StgOrtografia.Cells[1,0]:='Substituir';

    //carrega o config
    ini:=TIniFile.Create(Dir+'Config.ini');
    FrmOrtografia.Left:=ini.ReadInteger( FrmOrtografia.Name, 'Left', FrmOrtografia.Left);
    FrmOrtografia.Top:=ini.ReadInteger( FrmOrtografia.Name, 'Top', FrmOrtografia.Top);
    FrmOrtografia.Width:=ini.ReadInteger( FrmOrtografia.Name, 'Width', FrmOrtografia.Width);
    FrmOrtografia.Height:=ini.ReadInteger( FrmOrtografia.Name, 'Height', FrmOrtografia.Height);
    FrmTransnomino.FormPositionFixed(FrmOrtografia);
    if ini.ReadBool( FrmOrtografia.Name, 'Maximized', false) then
       FrmOrtografia.WindowState:=wsMaximized;

    for A:=0 to StgOrtografia.ColCount-1 do
       StgOrtografia.ColWidths[A]:=ini.ReadInteger( 'Ortografia', 'Width'+IntToStr(A),StgOrtografia.ColWidths[A]);

    ini.Free;

    if FileExists(Dir+'Ortografia.lst') then
    begin
        AssignFile(F,Dir+'Ortografia.lst');
        Reset(F);
        readln (F, Aux);
        if Aux = 'Ortografia' then
        begin
            Readln(F, A);
            StgOrtografia.ColCount := A;
            Readln(F, A);
            StgOrtografia.RowCount := A;
            for A:=0 to StgOrtografia.ColCount-1 do
            begin
                for Y:=0 to StgOrtografia.RowCount-1 do
                begin
                    readln (F, Aux);
                    StgOrtografia.Cells[A,Y] := Aux;
                end;
            end;
        end;
        CloseFile(F);
    end;

end;
//----------------------------------------------------------------------------//
procedure TFrmOrtografia.FormClose(Sender: TObject; var Action: TCloseAction);
var
    ini : TIniFile;
    A, Y: Integer;
    F : TextFile;
begin
    //carrega o config
    ini:=TIniFile.Create(Dir+'Config.ini');
    FrmTransnomino.FormPositionFixed(FrmOrtografia);
    if FrmOrtografia.WindowState <> wsMaximized then
    begin
        ini.WriteInteger( FrmOrtografia.Name, 'Left', FrmOrtografia.Left);
        ini.WriteInteger( FrmOrtografia.Name, 'Top', FrmOrtografia.Top);
        ini.WriteInteger( FrmOrtografia.Name, 'Width', FrmOrtografia.Width);
        ini.WriteInteger( FrmOrtografia.Name, 'Height', FrmOrtografia.Height);
        ini.WriteBool( FrmOrtografia.Name, 'Maximized', false );
    end else
        ini.WriteBool( FrmOrtografia.Name, 'Maximized', true );


    for A:=0 to StgOrtografia.ColCount-1 do
        ini.WriteInteger( 'Ortografia','Width'+IntToStr(A), StgOrtografia.ColWidths[A]);


    ini.Free;

    AssignFile(F, Dir+'Ortografia.lst');
    Rewrite(F);
    Writeln(F, 'Ortografia');
    Writeln(F, StgOrtografia.ColCount);
    Writeln(F, StgOrtografia.RowCount);
    for A:=0 to StgOrtografia.ColCount-1 do
    begin
        for Y:=0 to StgOrtografia.RowCount-1 do
            Writeln(F, StgOrtografia.Cells[A,Y]);
    end;
    CloseFile(F);
end;
//----------------------------------------------------------------------------//
procedure TFrmOrtografia.StgOrtografiaSetEditText(Sender: TObject; ACol,
  ARow: Integer; const Value: string);
begin
    if (ARow = StgOrtografia.RowCount-1)and(StgOrtografia.Rows[ARow].Text <> #13+#10+#13+#10 ) then
       StgOrtografia.RowCount := StgOrtografia.RowCount +1;
end;
//----------------------------------------------------------------------------//
procedure TFrmOrtografia.MniDeletarClick(Sender: TObject);
var
     C : integer;
begin
    if (StgOrtografia.Row < StgOrtografia.RowCount-1) and (StgOrtografia.RowCount > 2) then
    begin
        StgOrtografia.Cells[0,StgOrtografia.Row] := '';
        StgOrtografia.Cells[1,StgOrtografia.Row] := '';

        for c := StgOrtografia.Row+1 to StgOrtografia.RowCount-1 do
        begin
            StgOrtografia.Cells[0,c-1] := StgOrtografia.Cells[0,c];
            StgOrtografia.Cells[1,c-1] := StgOrtografia.Cells[1,c];
        end;

        StgOrtografia.RowCount := StgOrtografia.RowCount - 1;
    end;
end;
//----------------------------------------------------------------------------//


end.
