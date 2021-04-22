unit UnitLegendaSRT;

interface

uses
    Winapi.Windows, System.SysUtils, System.Classes, System.DateUtils,
    UnitFunctions;

type
   TSRT = record
      TempoInicio : TTime;
      TempoFinal : TTime;
      Texto : TStringList;
   end;

   TLegendaSRT = class (TObject)
     constructor Create();
     destructor Destroy(); override;
   private
     Texto : TStringList;
     Srt : Array of TSRT;
     FValid : Boolean;
     FFormatação : Boolean;
     FAcentuação : Boolean;
     FAjustação : Boolean;
     FElevação : Boolean;
     FAtrasar : Boolean;
     FConverter : Byte;
     FLinhas : Byte;
     FTempoAjuste : TTime;
     FTempoInicio : TTime;
     FTempoFim : TTime;
     FCaracter : String;
     procedure ReadSRT();
     procedure WriteSRT();
   public
     property Formatação: Boolean write FFormatação;
     property Acentuação: Boolean write FAcentuação;
     property Ajustação: Boolean write FAjustação;
     property Elevação: Boolean write FElevação;
     property Atrasar: Boolean write FAtrasar;
     property Valid: Boolean read FValid;
     property Converter: Byte write FConverter;
     property Linhas: Byte write FLinhas;
     property TempoAjuste: TTime write FTempoAjuste;
     property TempoInicio: TTime write FTempoInicio;
     property TempoFim: TTime write FTempoFim;
     property Caracter: String write FCaracter;
     function LoadFromFile(FileName:String):Boolean;
     function SaveToFile(FileName:String):Boolean;
     procedure Executar();
   end;


implementation

uses UnitTransnomino;

//----------------------------------------------------------------------------//
constructor TLegendaSRT.Create();
begin
    inherited Create;
    Texto := TStringList.Create;
    SetLength(Srt,0);
end;
//----------------------------------------------------------------------------//
destructor TLegendaSRT.Destroy();
begin
    Texto.Free;
    SetLength(Srt,0);
    inherited Destroy;
end;
//----------------------------------------------------------------------------//
procedure TLegendaSRT.ReadSRT();
var
    c, d : Integer;
    TempoInicio : TDateTime;
    TempoFinal : TDateTime;
begin
    c := 0;
    d := 0;
    SetLength(Srt,0);

    while (c < Texto.Count) do
    begin
        if (Length(Texto[c]) = 29)
        and TryStrToTime(Copy(Texto[c],1,12),TempoInicio)
        and TryStrToTime(Copy(Texto[c],18,12),TempoFinal) then
        begin
            if (TempoFinal < TempoInicio) then
               TempoFinal := TempoInicio;

            if (Length(Srt) > 0) and (TempoInicio < Srt[d-1].TempoInicio) then
               TempoInicio := Srt[d-1].TempoInicio;

            SetLength(Srt,d+1);
            Srt[d].TempoInicio :=  TempoInicio;
            Srt[d].TempoFinal := TempoFinal;
            Srt[d].Texto := TStringList.Create;
            Inc(c);
            while (c < Texto.Count) and ( Texto[c] <> '' ) do
            begin
                Srt[d].Texto.Add( Texto[c] );
                Inc(c);
            end;
            Inc(d);

        end;
        Inc(c);
    end;
end;
//----------------------------------------------------------------------------//
procedure TLegendaSRT.WriteSRT();
var
    c : Integer;
begin
    Texto.Clear;
    for c := 0 to Length(Srt)-1 do
    begin
        Texto.Add( IntToStr(c+1) );
        Texto.Add( FormatDateTime('hh:nn:ss,zzz',Srt[c].TempoInicio) + ' --> '
                 + FormatDateTime('hh:nn:ss,zzz',Srt[c].TempoFinal) );
        Texto.AddStrings( Srt[c].Texto );
        Texto.Add('');
    end;
end;
//----------------------------------------------------------------------------//
function TLegendaSRT.LoadFromFile(FileName:String):Boolean;
begin
    try
       Texto.LoadFromFile(FileName);
       ReadSRT();
       FValid := (Length(Srt) > 0);
       Result := True;
    except
       Result := False;
    end;
end;
//----------------------------------------------------------------------------//
function TLegendaSRT.SaveToFile(FileName:String):Boolean;
begin
    WriteSRT();
    try
       case FConverter of
          0 : Texto.SaveToFile(FileName);
          1 : Texto.SaveToFile(FileName,TEncoding.ANSI);
          2 : Texto.SaveToFile(FileName,TEncoding.ASCII);
          3 : Texto.SaveToFile(FileName,TEncoding.Unicode);
          4 : Texto.SaveToFile(FileName,TEncoding.BigEndianUnicode);
          5 : Texto.SaveToFile(FileName,TEncoding.UTF7);
          6 : Texto.SaveToFile(FileName,TEncoding.UTF8);
       end;
       Result := True;
    except
       Result := False;
    end;
end;
//----------------------------------------------------------------------------//
procedure TLegendaSRT.Executar();
var
    c : Integer;
    Elevar : String;
begin
    if FElevação then
    begin
        Elevar := FCaracter;
        for c := 1 to FLinhas-1 do
           Elevar:=Elevar+#13+#10+FCaracter;
    end;

    for c := 0 to Length(Srt)-1 do
    begin
        if (FElevação) and (Srt[c].TempoInicio >= FTempoInicio) and (Srt[c].TempoFinal <= FTempoFim) then
           Srt[c].Texto.Add(Elevar);

        if FAjustação then
        begin
            if FAtrasar then
            begin
                Srt[c].TempoInicio := Srt[c].TempoInicio + FTempoAjuste;
                Srt[c].TempoFinal := Srt[c].TempoFinal + FTempoAjuste;
            end else begin
                Srt[c].TempoInicio := Srt[c].TempoInicio - FTempoAjuste;
                Srt[c].TempoFinal := Srt[c].TempoFinal - FTempoAjuste;
            end;
        end;

        if FAcentuação then
           Srt[c].Texto.Text:=RemoveCharSpecial(Srt[c].Texto.Text,False);

        if FFormatação then
        begin
           Srt[c].Texto.Text:=Substituir(Srt[c].Texto.Text,'<b>','',False,True);
           Srt[c].Texto.Text:=Substituir(Srt[c].Texto.Text,'</b>','',False,True);
           Srt[c].Texto.Text:=Substituir(Srt[c].Texto.Text,'<i>','',False,True);
           Srt[c].Texto.Text:=Substituir(Srt[c].Texto.Text,'</i>','',False,True);
           Srt[c].Texto.Text:=Substituir(Srt[c].Texto.Text,'<s>','',False,True);
           Srt[c].Texto.Text:=Substituir(Srt[c].Texto.Text,'</s>','',False,True);
        end;

    end;
end;


end.
