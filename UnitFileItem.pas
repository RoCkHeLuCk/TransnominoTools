unit UnitFileItem;

interface

uses
    Winapi.Windows, System.SysUtils;

type

   TFileItem = class (TObject)
     constructor Create(FileName:String);
     destructor Destroy(); override;
   private
     NameUndo : Array of String;
     Undo : Byte;
     DateTime : TDateTime;
     DateTimeStr : String;
     Name : String;
     Ext : String;
     Dir : String;
     Directory : boolean;
     procedure AddNameExt(FileName:String);
   public
     property Date: TDateTime read DateTime;
     property DateStr: String read DateTimeStr;
     property FileName:String read Name;
     property Extension:String read Ext;
     property Path:String read Dir;
     property IsDirectory:Boolean read Directory;
     function RenameFileName(FileName:String):Boolean;
     function UndoFileName(out FileName:String):Boolean;
     function ReUndoFileName(out FileName:String):Boolean;
   end;

implementation

//----------------------------------------------------------------------------//
constructor TFileItem.Create(FileName:String);
var
    SearchRec : TSearchRec;
begin
    inherited Create;
    AddNameExt(ExtractFileName(FileName));
    Dir := ExtractFilePath( FileName );

    FindFirst(FileName, $00FFFFFF, SearchRec);
    DateTime := SearchRec.TimeStamp;
    DateTimeStr := DateTimeToStr( DateTime );
    Directory := (SearchRec.Attr and faDirectory) = faDirectory;

    SetLength(NameUndo,1);
    Undo := 0;
    NameUndo[Undo] := Name;
end;
//----------------------------------------------------------------------------//
destructor TFileItem.Destroy();
begin
    SetLength(NameUndo,0);
    inherited Destroy;
end;
//----------------------------------------------------------------------------//
procedure TFileItem.AddNameExt(FileName:String);
begin
    if not Directory  then
       Ext := ExtractFileExt( FileName )
    else
       Ext := '';
    Name := FileName;
end;
//----------------------------------------------------------------------------//
function TFileItem.RenameFileName(FileName:String):Boolean;
begin
    if RenameFile(Path+Name,Path+FileName) then
    begin
        Inc(Undo);
        SetLength(NameUndo,Undo+1);
        NameUndo[Undo] := FileName;
        AddNameExt(FileName);
        Result := True;
    end else
       Result := False;
end;
//----------------------------------------------------------------------------//
function TFileItem.UndoFileName(out FileName:String):Boolean;
begin
    if (Undo > 0) and (RenameFile(Path+Name,Path+NameUndo[Undo-1])) then
    begin
        Dec(Undo);
        AddNameExt(FileName);
        Result := True;
    end else
        Result := False;
    FileName := Name;
end;
//----------------------------------------------------------------------------//
function TFileItem.ReUndoFileName(out FileName:String):Boolean;
begin
    if (Undo < Length(NameUndo)-1) and (RenameFile(Path+Name,Path+NameUndo[Undo+1])) then
    begin
        Inc(Undo);
        AddNameExt(FileName);
        Result := True;
    end else
        Result := False;
    FileName := Name;
end;
//----------------------------------------------------------------------------//

end.
