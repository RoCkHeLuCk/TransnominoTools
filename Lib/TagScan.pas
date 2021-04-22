unit TagScan;

interface

uses
    System.SysUtils, System.Classes,
    APEtag, CDAtrack, FLACfile, Monkey, MPEGaudio,
    MPEGplus, OggVorbis, TwinVQ, WMAfile, ID3v1, AACfile, MP4TagLibrary;

type
   TTagScan = class(TObject)
   constructor Create();
   destructor Destroy(); override;
	private
    MaskList : TStringList;
    FTitle:String;
    FArtist:String;
    FAlbum:String;
    FTrack:String;
	protected
	public
      function ReadFromFile(const FileName: String; Version:Boolean): Boolean;
      property Title: String read FTitle;
      property Artist: String read FArtist;
      property Album: String read FAlbum;
      property Track: String read FTrack;
	end;

implementation

//----------------------------------------------------------------------------//
constructor TTagScan.Create();
begin
    FTitle:='';
    FArtist:='';
    FAlbum:='';
    FTrack:='';
    MaskList := TStringList.Create;
    MaskList.Add('.ape;.mpc');
    MaskList.Add('.cda');
    MaskList.Add('.flac');
    MaskList.Add('.mac');
    MaskList.Add('.mpa;.mp1;.mp2;.mp3');
    MaskList.Add('.mpg;.mpeg;.mpe;.m1v;.m2v;.mpv2;.mp2v;.mkv');
    MaskList.Add('.ogg');
    MaskList.Add('.vqf');
    MaskList.Add('.wma;.wmv;.wmp;.wm');
    MaskList.Add('.aac');
    MaskList.Add('.mp4;.m4a;.m4b');
end;
//----------------------------------------------------------------------------//
destructor TTagScan.Destroy();
begin
    MaskList.Free;
    inherited Destroy;
end;
//----------------------------------------------------------------------------//
function TTagScan.ReadFromFile(const FileName: String; Version:Boolean): Boolean;
var
    APETag: TAPEtag;
    CDAtrack: TCDAtrack;
    FLACfile: TFLACFile;
    Monkey: TMonkey;
    MPEGaudio: TMPEGaudio;
    MPEGplus: TMPEGplus;
    OggVorbis: TOggVorbis;
    TwinVQ: TTwinVQ;
    WMAfile: TWMAfile;
    AACfile: TAACfile;
    MP4Tag : TMP4Tag;
    Ext : String;
    c : Integer;
begin
    Result := False;

    Ext := ExtractFileExt( FileName);

    c := 0;
    while ((c < MaskList.Count)and(Pos(Ext,MaskList[c])=0)) do
          inc (c);

    if c < MaskList.Count then
    begin
        case c of
             0 : begin
                     APETag := TAPEtag.Create;
                     if (APETag.ReadFromFile(FileName)) and (APETag.Valid) then
                     begin
                         FTitle := APETag.Title;
                         FArtist := APETag.Artist;
                         FAlbum := APETag.Album;
                         FTrack := IntToStr( APETag.Track );
                         Result := True;
                     end;
                     APETag.Free;
                 end;

             1 : begin
                     CDAtrack := TCDAtrack.Create;
                     if (CDAtrack.ReadFromFile(FileName)) and (CDAtrack.Valid) then
                     begin
                         FTitle := CDAtrack.Title;
                         FArtist := CDAtrack.Artist;
                         FAlbum := CDAtrack.Album;
                         FTrack := IntToStr( CDAtrack.Track );
                         Result := True;
                     end;
                     CDAtrack.Free;
                 end;

             2 : begin
                     FLACfile := TFLACfile.Create;
                     if (FLACfile.ReadFromFile(FileName)) and (FLACfile.Valid) then
                     begin
                         if Version then
                         begin
                             FTitle := FLACfile.ID3v2.Title;
                             FArtist := FLACfile.ID3v2.Artist;
                             FAlbum := FLACfile.ID3v2.Album;
                             FTrack := IntToStr( FLACfile.ID3v2.Track );
                         end else begin
                             FTitle := FLACfile.ID3v1.Title;
                             FArtist := FLACfile.ID3v1.Artist;
                             FAlbum := FLACfile.ID3v1.Album;
                             FTrack := IntToStr( FLACfile.ID3v1.Track );
                         end;
                         if (Version and FLACfile.ID3v2.Valid)
                         or (not Version and FLACfile.ID3v1.Valid) then
                            Result := True;
                     end;
                     FLACfile.Free;
                 end;

             3 : begin
                     Monkey := TMonkey.Create;
                     if (Monkey.ReadFromFile(FileName)) and (Monkey.Valid) then
                     begin
                         if Version then
                         begin
                             FTitle := Monkey.ID3v2.Title;
                             FArtist := Monkey.ID3v2.Artist;
                             FAlbum := Monkey.ID3v2.Album;
                             FTrack := IntToStr( Monkey.ID3v2.Track );
                         end else begin
                             FTitle := Monkey.ID3v1.Title;
                             FArtist := Monkey.ID3v1.Artist;
                             FAlbum := Monkey.ID3v1.Album;
                             FTrack := IntToStr( Monkey.ID3v1.Track );
                         end;
                         if (Version and Monkey.ID3v2.Valid)
                         or (not Version and Monkey.ID3v1.Valid) then
                            Result := True;
                     end;
                     Monkey.Free;
                 end;

             4 : begin
                     MPEGaudio := TMPEGaudio.Create;
                     if (MPEGaudio.ReadFromFile(FileName)) and (MPEGaudio.Valid) then
                     begin
                         if Version then
                         begin
                             FTitle := MPEGaudio.ID3v2.Title;
                             FArtist := MPEGaudio.ID3v2.Artist;
                             FAlbum := MPEGaudio.ID3v2.Album;
                             FTrack := IntToStr( MPEGaudio.ID3v2.Track );
                         end else begin
                             FTitle := MPEGaudio.ID3v1.Title;
                             FArtist := MPEGaudio.ID3v1.Artist;
                             FAlbum := MPEGaudio.ID3v1.Album;
                             FTrack := IntToStr( MPEGaudio.ID3v1.Track );
                         end;
                         if (Version and MPEGaudio.ID3v2.Valid)
                         or (not Version and MPEGaudio.ID3v1.Valid) then
                            Result := True;
                     end;
                     MPEGaudio.Free;
                 end;

             5 : begin
                     MPEGplus := TMPEGplus.Create;
                     if (MPEGplus.ReadFromFile(FileName)) and (MPEGplus.Valid) then
                     begin
                         if Version then
                         begin
                             FTitle := MPEGplus.ID3v2.Title;
                             FArtist := MPEGplus.ID3v2.Artist;
                             FAlbum := MPEGplus.ID3v2.Album;
                             FTrack := IntToStr( MPEGplus.ID3v2.Track );
                         end else begin
                             FTitle := MPEGplus.ID3v1.Title;
                             FArtist := MPEGplus.ID3v1.Artist;
                             FAlbum := MPEGplus.ID3v1.Album;
                             FTrack := IntToStr( MPEGplus.ID3v1.Track );
                         end;
                         if (Version and MPEGplus.ID3v2.Valid)
                         or (not Version and MPEGplus.ID3v1.Valid) then
                            Result := True;
                     end;
                     MPEGplus.Free;
                 end;

             6 : begin
                     OggVorbis := TOggVorbis.Create;
                     if (OggVorbis.ReadFromFile(FileName)) and (OggVorbis.Valid) then
                     begin
                         FTitle := OggVorbis.Title;
                         FArtist := OggVorbis.Artist;
                         FAlbum := OggVorbis.Album;
                         FTrack := IntToStr( OggVorbis.Track );
                         Result := True;
                     end;
                     OggVorbis.Free;
                 end;

             7 : begin
                     TwinVQ := TTwinVQ.Create;
                     if (TwinVQ.ReadFromFile(FileName)) and (TwinVQ.Valid) then
                     begin
                         FTitle := TwinVQ.Title;
                         FArtist := TwinVQ.Artist;
                         FAlbum := TwinVQ.Album;
                         FTrack := IntToStr( 0 );
                         Result := True;
                     end;
                     TwinVQ.Free;
                 end;

             8 : begin
                     WMAfile := TWMAfile.Create;
                     if (WMAfile.ReadFromFile(FileName)) and (WMAfile.Valid) then
                     begin
                         FTitle := WMAfile.Title;
                         FArtist := WMAfile.Artist;
                         FAlbum := WMAfile.Album;
                         FTrack := IntToStr( WMAfile.Track );
                         Result := True;
                     end;
                     WMAfile.Free;
                 end;
             9 : begin
                     AACfile := TAACfile.Create;
                     if (AACfile.ReadFromFile(FileName)) and (AACfile.Valid) then
                     begin
                         FTitle := AACfile.APEtag.Title;
                         FArtist := AACfile.APEtag.Artist;
                         FAlbum := AACfile.APEtag.Album;
                         FTrack := IntToStr( AACfile.APEtag.Track );
                         Result := True;
                     end;
                     AACfile.Free;
                 end;
             10 : begin
                     MP4Tag := TMP4Tag.Create;
                     if (MP4Tag.LoadFromFile(FileName) = 0) then
                     begin
                         FTitle := MP4Tag.GetText('©nam');
                         FArtist := MP4Tag.GetText('©ART');
                         FAlbum := MP4Tag.GetText('©alb');
                         FTrack :=  MP4Tag.GetTrack.ToString;
                         Result := True;
                     end;
                     MP4Tag.Free;
                 end;
        end;
    end;

end;
//----------------------------------------------------------------------------//

end.
