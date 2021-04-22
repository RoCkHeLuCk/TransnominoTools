program TransnominoTools;

uses
  Vcl.Forms,
  UnitTransnomino in 'UnitTransnomino.pas' {FrmTransnomino},
  UnitOrtografia in 'UnitOrtografia.pas' {FrmOrtografia},
  UnitFileItem in 'UnitFileItem.pas',
  APEtag in 'Lib\APEtag.pas',
  CDAtrack in 'Lib\CDAtrack.pas',
  FLACfile in 'Lib\FLACfile.pas',
  ID3v1 in 'Lib\ID3v1.pas',
  ID3v2 in 'Lib\ID3v2.pas',
  Monkey in 'Lib\Monkey.pas',
  MPEGaudio in 'Lib\MPEGaudio.pas',
  MPEGplus in 'Lib\MPEGplus.pas',
  OggVorbis in 'Lib\OggVorbis.pas',
  TagScan in 'Lib\TagScan.pas',
  TwinVQ in 'Lib\TwinVQ.pas',
  WMAfile in 'Lib\WMAfile.pas',
  VorbisComment in 'Lib\VorbisComment.pas',
  JclUnicode in 'Lib\JclUnicode.pas',
  UnitLegendaSRT in 'UnitLegendaSRT.pas',
  UnitFunctions in 'UnitFunctions.pas',
  AACfile in 'Lib\AACfile.pas',
  MP4TagLibrary in 'Lib\MP4TagLibrary.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTransnomino, FrmTransnomino);
  Application.CreateForm(TFrmOrtografia, FrmOrtografia);
  Application.Run;
end.
