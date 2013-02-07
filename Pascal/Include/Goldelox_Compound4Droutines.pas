function charheight(TestChar : AnsiChar) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_charheight) + TestChar ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

function charwidth(TestChar : AnsiChar) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_charwidth) + TestChar ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure gfx_BGcolour(Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_BGcolour) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_ChangeColour(OldColor : word; NewColor : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_ChangeColour) + inttostrx(OldColor) + inttostrx(NewColor) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Circle(X : word; Y : word; Radius : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Circle) + inttostrx(X) + inttostrx(Y) + inttostrx(Radius) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_CircleFilled(X : word; Y : word; Radius : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_CircleFilled) + inttostrx(X) + inttostrx(Y) + inttostrx(Radius) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Clipping(OnOff : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Clipping) + inttostrx(OnOff) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_ClipWindow(X1 : word; Y1 : word; X2 : word; Y2 : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_ClipWindow) + inttostrx(X1) + inttostrx(Y1) + inttostrx(X2) + inttostrx(Y2) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Cls() ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Cls) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Contrast(Contrast : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Contrast) + inttostrx(Contrast) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_FrameDelay(Msec : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_FrameDelay) + inttostrx(Msec) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function gfx_GetPixel(X : word; Y : word) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_GetPixel) + inttostrx(X) + inttostrx(Y) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure gfx_Line(X1 : word; Y1 : word; X2 : word; Y2 : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Line) + inttostrx(X1) + inttostrx(Y1) + inttostrx(X2) + inttostrx(Y2) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_LinePattern(Pattern : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_LinePattern) + inttostrx(Pattern) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_LineTo(X : word; Y : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_LineTo) + inttostrx(X) + inttostrx(Y) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_MoveTo(X : word; Y : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_MoveTo) + inttostrx(X) + inttostrx(Y) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function gfx_Orbit(Angle : word; Distance : word; var Xdest : word; var Ydest : word) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Orbit) + inttostrx(Angle) + inttostrx(Distance) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck2Words(Xdest,Ydest) ;
end ;

procedure gfx_OutlineColour(Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_OutlineColour) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Polygon(n : word; Xvalues : t4DWordArray; Yvalues : t4DWordArray; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Polygon) + inttostrx(n) + WordArraytoString(Xvalues, n) + WordArraytoString(Yvalues, n) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Polyline(n : word; Xvalues : t4DWordArray; Yvalues : t4DWordArray; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Polyline) + inttostrx(n) + WordArraytoString(Xvalues, n) + WordArraytoString(Yvalues, n) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_PutPixel(X : word; Y : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_PutPixel) + inttostrx(X) + inttostrx(Y) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Rectangle(X1 : word; Y1 : word; X2 : word; Y2 : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Rectangle) + inttostrx(X1) + inttostrx(Y1) + inttostrx(X2) + inttostrx(Y2) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_RectangleFilled(X1 : word; Y1 : word; X2 : word; Y2 : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_RectangleFilled) + inttostrx(X1) + inttostrx(Y1) + inttostrx(X2) + inttostrx(Y2) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_ScreenMode(ScreenMode : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_ScreenMode) + inttostrx(ScreenMode) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Set(Func : word; Value : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Set) + inttostrx(Func) + inttostrx(Value) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_SetClipRegion() ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_SetClipRegion) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Transparency(OnOff : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Transparency) + inttostrx(OnOff) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_TransparentColour(Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_TransparentColour) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure gfx_Triangle(X1 : word; Y1 : word; X2 : word; Y2 : word; X3 : word; Y3 : word; Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_gfx_Triangle) + inttostrx(X1) + inttostrx(Y1) + inttostrx(X2) + inttostrx(Y2) + inttostrx(X3) + inttostrx(Y3) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function media_Flush() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_Flush) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure media_Image(X : word; Y : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_Image) + inttostrx(X) + inttostrx(Y) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function media_Init() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_Init) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

function media_ReadByte() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_ReadByte) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

function media_ReadWord() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_ReadWord) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure media_SetAdd(HiWord : word; LoWord : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_SetAdd) + inttostrx(HiWord) + inttostrx(LoWord) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure media_SetSector(HiWord : word; LoWord : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_SetSector) + inttostrx(HiWord) + inttostrx(LoWord) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure media_Video(X : word; Y : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_Video) + inttostrx(X) + inttostrx(Y) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure media_VideoFrame(X : word; Y : word; Framenumber : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_VideoFrame) + inttostrx(X) + inttostrx(Y) + inttostrx(Framenumber) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function media_WriteByte(Byte : word) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_WriteByte) + inttostrx(Byte) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

function media_WriteWord(Word : word) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_media_WriteWord) + inttostrx(Word) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure putCH(WordChar : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_putCH) + inttostrx(WordChar) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure putstr(InString : AnsiString) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_putstr) + InString + #0 ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Attributes(Attribs : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Attributes) + inttostrx(Attribs) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_BGcolour(Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_BGcolour) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Bold(Bold : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Bold) + inttostrx(Bold) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_FGcolour(Color : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_FGcolour) + inttostrx(Color) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_FontID(FontNumber : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_FontID) + inttostrx(FontNumber) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Height(Multiplier : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Height) + inttostrx(Multiplier) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Inverse(Inverse : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Inverse) + inttostrx(Inverse) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Italic(Italic : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Italic) + inttostrx(Italic) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_MoveCursor(Line : word; Column : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_MoveCursor) + inttostrx(Line) + inttostrx(Column) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Opacity(TransparentOpaque : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Opacity) + inttostrx(TransparentOpaque) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Set(Func : word; Value : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Set) + inttostrx(Func) + inttostrx(Value) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Underline(Underline : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Underline) + inttostrx(Underline) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Width(Multiplier : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Width) + inttostrx(Multiplier) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Xgap(Pixels : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Xgap) + inttostrx(Pixels) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure txt_Ygap(Pixels : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_txt_Ygap) + inttostrx(Pixels) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure beep(Note : word; Duration : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_beep) + inttostrx(Note) + inttostrx(Duration) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function sys_GetModel(var ModelStr : ansistring) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_sys_GetModel) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResStr(ModelStr) ;
end ;

function sys_GetVersion() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_sys_GetVersion) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

function sys_GetPmmC() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_sys_GetPmmC) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure blitComtoDisplay(X : word; Y : word; Width : word; Height : word; Pixels : t4DByteArray) ;
var
  towrite : AnsiString ;
  written : dword ;
  remains : integer ;
  stoffset: integer ;
begin
  towrite := inttostrx(F_blitComtoDisplay) + inttostrx(X) + inttostrx(Y) + inttostrx(Width) + inttostrx(Height) + ByteArraytoString(Pixels, Width*Height*2) ;
// WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ; This fails on MB5 and cable as a driver buffer is of a fixed size which is smaller than needed
  {$R-}
  stoffset := 1 ;
  remains  := length(towrite) ;
  while remains <> 0 do begin ;        // This is he workaround
    writefile(ComHandle4D, towrite[stoffset], remains, written, nil) ;
    inc(stoffset,written) ;
    dec(remains,written) ;
    end  ;
  {$R+}
  flushfilebuffers(ComHandle4D) ;
  GetAck() ;
end ;

procedure setbaudWait(Newrate : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_setbaudWait) + inttostrx(Newrate) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  SetThisBaudrate(Newrate) ; // change this systems baud rate to match new display rate, ACK is 100ms away
  GetAck() ;
end ;

function peekW(Address : word) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_peekW) + inttostrx(Address) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure pokeW(Address : word; WordValue : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_pokeW) + inttostrx(Address) + inttostrx(WordValue) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function peekB(Address : word) : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_peekB) + inttostrx(Address) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure pokeB(Address : word; ByteValue : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_pokeB) + inttostrx(Address) + inttostrx(ByteValue) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

function joystick() : word ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_joystick) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  Result := GetAckResp() ;
end ;

procedure SSTimeout(Seconds : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_SSTimeout) + inttostrx(Seconds) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure SSSpeed(Speed : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_SSSpeed) + inttostrx(Speed) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

procedure SSMode(Parm : word) ;
var
  towrite : AnsiString ;
  written : dword ;
begin
  towrite := inttostrx(F_SSMode) + inttostrx(Parm) ;
  WriteFile(ComHandle4D,towrite[1],length(towrite),written, nil) ;
  GetAck() ;
end ;

