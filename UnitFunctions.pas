unit UnitFunctions;

interface

uses
    Winapi.Windows, Winapi.ActiveX, Winapi.ShlObj, System.Win.ComObj,
    System.SysUtils, System.Classes, TagScan;

type
    TTagRec = Array [0..3] of Boolean;

    function RemoveCharSpecial(Nome:String;Todos:boolean): String;
    function Procurar(Str, MaskStr: string; Offset:Integer = 1; CaseSensitive: Boolean = False): TPoint;
    function Substituir(Str, SubStr, PosStr :String; CaseSensitive, Ocorrencia:Boolean):String;
    function Contar(Str, IniStr, FimStr, MasStr:String; Index, IniCount, Inserir, Repetir:Integer; Letra, ManterTexto:Boolean):String;
    function Ortografia(Str:String; Acento, Espaço, Abreviar, Correção:Boolean; Tamanho, Maiusculo: Integer):String;
    function Inserir(Str, SubStr:String; Date:TDateTime; Inicio, Fim: Integer;  Texto ,Ins, Del, Invert:Boolean):String;
    function TagFile(Original, Str, FileName:String; Versão:Boolean; TagRec:TTagRec):String;
    function FileExpandPath(const PathName:string):string;
    procedure CreateShortcut(FileName,OriginFile:String);

implementation

uses UnitOrtografia;

//----------------------------------------------------------------------------//
function RemoveCharSpecial(Nome:String;Todos:boolean): String;
const ComAcento = 'ŠŽšžŸÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÐÑÒÓÔÕÖÙÚÛÜÝàáâãäåçèéêëìíîïñòóôõöùúûüýÿ';
      SemAcento = 'SZszYAAAAAACEEEEIIIIDNOOOOOUUUUYaaaaaaceeeeiiiinooooouuuuyy';
       Simbolos = ' "!"#$%&'+#39+'()+,-_./:;<=>?@[\]^`{|}{~€‚ƒ„…†‡ˆ‰‹Œ‘’“”•–—˜™›œ ¡¢£¤¥¦§¨©ª«¬­®¯°±²³´µ¶·¸¹º»¼½¾¿ÆæÞß×Øð÷øþ';
//                                 *
var  c,d:Integer;
     Caracteres:String;
begin
   //todos os caracteres ou so acentos
   if Todos then Caracteres:=ComAcento+Simbolos
   else Caracteres:=ComAcento;

   //localizar substituir ou remover
   c:=Length(Nome);
   while c > 0 do
      begin
         d:=Pos(Nome[c],Caracteres);
         if d <> 0 then
            begin
               if d <= Length(SemAcento) then
                   Nome[c]:=SemAcento[d]
                else
                   Delete(Nome,c,1);
            end;
          dec(c);
      end;

    Result := Nome;
end;
//----------------------------------------------------------------------------//
function Procurar(Str, MaskStr: string; Offset:Integer = 1; CaseSensitive: Boolean = False): TPoint;
var
    StrIndex, MaskIndex : Integer;
    StrLength, MaskLength : SmallInt;
begin
    StrLength := Length(Str);
    MaskLength := Length(MaskStr);
    Result.X := OffSet;
    Result.Y := 0;
    if (StrLength > 0) and (MaskLength > 0) then
    begin

        if not CaseSensitive then
        begin
            Str := UpperCase(Str);
            MaskStr := UpperCase(MaskStr);
        end;

        StrIndex := Offset;
        MaskIndex := 1;

        while (StrIndex <= StrLength ) and (MaskIndex <= MaskLength) do
        begin
            case MaskStr[MaskIndex] of
               '?' : begin
                         Inc(StrIndex);
                         Inc(MaskIndex);
                     end;
               '*' : begin
                         Inc(MaskIndex);
                         if (MaskIndex > MaskLength) or (MaskStr[MaskIndex] <> '*') then
                         begin
                             while (StrIndex <= StrLength) and (Str[StrIndex] <> MaskStr[MaskIndex]) do
                                   Inc(StrIndex);
                         end;
                     end;
            else
                if (Str[StrIndex] = MaskStr[MaskIndex]) then
                begin
                   Inc(StrIndex);
                   Inc(MaskIndex);
                end else begin
                   MaskIndex := 1;
                   StrIndex := Result.X + 1;
                   Result.X := StrIndex;
                end;
            end;
        end;

        if (MaskIndex >= MaskLength) then
           Result.Y := StrIndex - Result.X;

        if (StrIndex >= StrLength) and (MaskIndex <= MaskLength) then
           Result.Y := 0;

    end;
end;
//----------------------------------------------------------------------------//
function Substituir(Str, SubStr, PosStr :String; CaseSensitive, Ocorrencia:Boolean):String;
var
    P : TPoint;
begin
    P.X := 1;
    P.Y := 0;
    repeat
         P := Procurar(Str,SubStr,P.X,CaseSensitive);

         if P.Y > 0 then
         begin
             Delete(Str, P.X, P.Y );
             Insert(PosStr , Str, P.X);
             P.X := P.X+P.Y;
         end;
    until (( not Ocorrencia ) or (P.Y = 0));
    Result := Str;
end;
//----------------------------------------------------------------------------//
function Contar(Str, IniStr, FimStr, MasStr:String; Index, IniCount, Inserir, Repetir:Integer; Letra, ManterTexto:Boolean):String;
var
    P, C : Integer;
begin
    if Repetir <> 0 then
       P := IniCount + (Index div (Repetir+1))
    else
       P := IniCount + Index;

    if Letra then
    begin
        C := (P Div 25);
        Result := IniStr + Char(C+65) + FormatFloat(MasStr, P - (C*25) ) + FimStr;
    end else
        Result := IniStr + FormatFloat(MasStr,P) + FimStr;

    if ManterTexto then
    begin
       Insert(Result,Str,Inserir);
       Result := Str;
    end;

end;
//----------------------------------------------------------------------------//
function Ortografia(Str:String; Acento, Espaço, Abreviar, Correção:Boolean; Tamanho, Maiusculo: Integer):String;
var C : Integer;
begin
    if Acento then
       Str := RemoveCharSpecial(Str,False);

    if Espaço then
    begin
        C := 1;
        while (C <> 0) and (C < Length(Str)) do
        begin
            C := Pos('  ',Str,C);
            if C <> 0 then
               Delete(Str,C,1);
        end;
    end;

    case Maiusculo of
        1 : Str := LowerCase(Str);
        2 : Str := UpperCase(Str);
        3 : begin
                Str := LowerCase( Str );
                Str[1] := UpCase( Str[1] );
            end;
        4 : begin
                Str := LowerCase( Str );
                for C := 1 to Length(Str) do
                begin
                    if (C = 1) or CharInSet(Str[C-1], [' ','-','(',')','[',']','{','}','''']) then
                       Str[C] := UpCase(Str[C]);
                end;
            end;
        5 : begin
                Str := LowerCase( Str );
                for C := 1 to Length(Str) do
                begin
                    if (c mod 2 <> 0) then
                       Str[C] := UpCase(Str[C]);
                end;
            end;
    end;

    if Correção then
    begin
        for C := 1 to FrmOrtografia.StgOrtografia.RowCount-1 do
        begin
            Str := Substituir(Str,FrmOrtografia.StgOrtografia.Cells[0,C],FrmOrtografia.StgOrtografia.Cells[1,C],False,True);
        end;
    end;

    if Abreviar then
       Str := copy(Str,1,Tamanho);

    Result := Str;
end;
//----------------------------------------------------------------------------//
function Inserir(Str, SubStr:String; Date:TDateTime; Inicio, Fim: Integer;  Texto ,Ins, Del, Invert:Boolean):String;
begin
    if Invert then
       Inicio := Length(Str)-Inicio+2;

    if Del then
    begin
       if Invert then
          Dec(Inicio,Fim);
       Delete(Str, Inicio, Fim);
    end;

    if Ins then
    begin
       if Texto then
          Insert(SubStr,Str,Inicio)
       else
          Insert( FormatDateTime(SubStr, Date ),Str,Inicio);
    end;

    Result := Str;
end;
//----------------------------------------------------------------------------//
function TagFile(Original, Str, FileName:String; Versão:Boolean; TagRec:TTagRec):String;
var
    TagScan : TTagScan;
begin
    TagScan := TTagScan.Create;
    if (TagScan.ReadFromFile(FileName,Versão))
    and (TagRec[0] or (TagScan.Artist <> ''))
    and (TagRec[1] or (TagScan.Title <> ''))
    and (TagRec[2] or (TagScan.Album <> ''))
    and (TagRec[3] or (TagScan.Track <> '0')) then
    begin
        if not TagRec[0] then
           Str := Substituir(Str,'%Artista%',TagScan.Artist,False,True);

        if not TagRec[1] then
           Str := Substituir(Str,'%Titulo%',TagScan.Title,False,True);

        if not TagRec[2] then
           Str := Substituir(Str,'%Album%',TagScan.Album,False,True);

        if not TagRec[3] then
           Str := Substituir(Str,'%Faixa%',TagScan.Track,False,True);

        Result := Str;
    end else
        Result := Original;
    TagScan.Free;
end;
//----------------------------------------------------------------------------//
function FileExpandPath(const PathName:string):string;
var chrResult: array[0..1023] of Char;
begin
    if ExpandEnvironmentStrings(PChar(PathName), chrResult, 1024) = 0 then
       Result := PathName
    else
       Result := Trim(chrResult);
end;
//----------------------------------------------------------------------------//
procedure CreateShortcut(FileName,OriginFile:String);
var
    MyObject : IUnknown;
    MySLink : IShellLink;
    MyPFile : IPersistFile;
begin
    FileName := FileExpandPath(FileName);
    MyObject := CreateComObject(CLSID_ShellLink);
    MySLink := MyObject as IShellLink;
    MyPFile := MyObject as IPersistFile;
    MySLink.SetPath(PWideChar( ParamStr(0) ));
    MySLink.SetWorkingDirectory(PChar(OriginFile));
    MyPFile.Save( PWideChar( FileName ), False);
end;

end.
