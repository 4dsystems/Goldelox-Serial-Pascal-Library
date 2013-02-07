unit Goldelox_Serial_4DLibrary;
interface
uses windows ;
type
{$I Goldelox_Types4D.inc}
const
  Error4DText : t4Derrortext = ('OK','Timeout','NAK') ;

{$I Goldelox_CONST4DSERIAL.INC}
{$I Goldelox_CONST4D.INC}
  Err4D_OK      = 0 ;
  Err4D_Timeout = 1 ;
  Err4D_NAK     = 2 ;
type
 TErrorCallback = procedure(ErrCode : integer; Errorbyte : byte)
                            of object;
 TErrorCallbackcmd = procedure(ErrCode : integer; Errorbyte : byte) ;
function charheight(TestChar : AnsiChar) : word ;
function charwidth(TestChar : AnsiChar) : word ;
procedure gfx_BGcolour(Color : word) ;
procedure gfx_Contrast(Contrast : word) ;
procedure gfx_FrameDelay(Msec : word) ;
function gfx_GetPixel(X : word; Y : word) : word ;
procedure gfx_LinePattern(Pattern : word) ;
function gfx_Orbit(Angle : word; Distance : word; var Xdest : word; var Ydest : word) : word ;
procedure gfx_OutlineColour(Color : word) ;
procedure gfx_ScreenMode(ScreenMode : word) ;
procedure gfx_Transparency(OnOff : word) ;
procedure gfx_TransparentColour(Color : word) ;
function media_Flush() : word ;
function media_Init() : word ;
function media_ReadByte() : word ;
function media_ReadWord() : word ;
function media_WriteByte(Byte : word) : word ;
function media_WriteWord(Word : word) : word ;
procedure putCH(WordChar : word) ;
procedure putstr(InString : AnsiString) ;
function sys_GetModel(var ModelStr : ansistring) : word ;
function sys_GetPmmC() : word ;
function sys_GetVersion() : word ;
procedure txt_Attributes(Attribs : word) ;
procedure txt_BGcolour(Color : word) ;
procedure txt_Bold(Bold : word) ;
procedure txt_FGcolour(Color : word) ;
procedure txt_FontID(FontNumber : word) ;
procedure txt_Height(Multiplier : word) ;
procedure txt_Inverse(Inverse : word) ;
procedure txt_Italic(Italic : word) ;
procedure txt_Opacity(TransparentOpaque : word) ;
procedure txt_Underline(Underline : word) ;
procedure txt_Width(Multiplier : word) ;
procedure txt_Xgap(Pixels : word) ;
procedure txt_Ygap(Pixels : word) ;
procedure blitComtoDisplay(X : word; Y : word; Width : word; Height : word; Pixels : t4DByteArray) ;
procedure gfx_ChangeColour(OldColor : word; NewColor : word) ;
procedure gfx_Circle(X : word; Y : word; Radius : word; Color : word) ;
procedure gfx_CircleFilled(X : word; Y : word; Radius : word; Color : word) ;
procedure gfx_Clipping(OnOff : word) ;
procedure gfx_ClipWindow(X1 : word; Y1 : word; X2 : word; Y2 : word) ;
procedure gfx_Cls() ;
procedure gfx_Line(X1 : word; Y1 : word; X2 : word; Y2 : word; Color : word) ;
procedure gfx_LineTo(X : word; Y : word) ;
procedure gfx_MoveTo(X : word; Y : word) ;
procedure gfx_Polygon(n : word; Xvalues : t4DWordArray; Yvalues : t4DWordArray; Color : word) ;
procedure gfx_Polyline(n : word; Xvalues : t4DWordArray; Yvalues : t4DWordArray; Color : word) ;
procedure gfx_PutPixel(X : word; Y : word; Color : word) ;
procedure gfx_Rectangle(X1 : word; Y1 : word; X2 : word; Y2 : word; Color : word) ;
procedure gfx_RectangleFilled(X1 : word; Y1 : word; X2 : word; Y2 : word; Color : word) ;
procedure gfx_Set(Func : word; Value : word) ;
procedure gfx_SetClipRegion() ;
procedure gfx_Triangle(X1 : word; Y1 : word; X2 : word; Y2 : word; X3 : word; Y3 : word; Color : word) ;
procedure media_Image(X : word; Y : word) ;
procedure media_SetAdd(HiWord : word; LoWord : word) ;
procedure media_SetSector(HiWord : word; LoWord : word) ;
procedure media_Video(X : word; Y : word) ;
procedure media_VideoFrame(X : word; Y : word; Framenumber : word) ;
procedure setbaudWait(Newrate : word) ;
procedure txt_MoveCursor(Line : word; Column : word) ;
procedure txt_Set(Func : word; Value : word) ;
function OpenComm(comport : string; newrate : integer) : integer ;
procedure beep(Note : word; Duration : word) ;
function peekW(Address : word) : word ;
procedure pokeW(Address : word; WordValue : word) ;
function peekB(Address : word) : word ;
procedure pokeB(Address : word; ByteValue : word) ;
function Joystick() : word ;
procedure SSTimeout(Seconds : word) ;
procedure SSSpeed(Speed : word) ;
procedure SSMode(Parm : word) ;

var
 // 4D Global variables
 ComHandle4D   : thandle ;  // comp port handle, used by Intrinsic routines
 Error4D       : integer ;  // Error indicator,  used and set by Intrinsic routines
 error_Inv4D   : byte ;     // Error byte returned from com port, onl set if error = Err_Invalid
 Callback4D    : TErrorCallback ; // if exists will be called when an error is detected
 Callback4Dcmd : TErrorCallbackcmd ; // if exists will be called when an error is detected
 TimeLimit4D   : integer ;  // time limit in ms for total serial command duration, 2000 (2 seconds) should be adequate for most commands
                            // assuming a reasonable baud rate AND low latency AND 0 for the Serial Delay Parameter
                            // temporary increase might be required for very long (bitmap write, large image file opens)
                            // or indeterminate (eg file_exec, file_run, file_callFunction) commands

implementation
{$I Goldelox_Intrinsic4DRoutines.pas}

function OpenComm(comport : string; newrate : integer) : integer ;
var
 comx     : pchar ;
 com1time : tcommtimeouts ;
 errs     : dword ;
 port     : string ;
begin
 if copy(comport,4,1) = ' '                        // remove blank if there are comports gt 10
 then port := '\\.\COM' + copy(comport,5,99)
 else port := '\\.\' + comport ;

 comx := pchar(port) ;
 ComHandle4D := createfile(Comx,generic_read + generic_write,0,nil,
                         open_existing,0,0) ;
 if ComHandle4D = invalid_handle_value
 then begin ;
      result := getlasterror() ;
      exit ;
      end ;

 getcommtimeouts(ComHandle4D,com1time) ;
 com1time.readintervaltimeout := maxdword ; {allow for baud rate?!}
                                         { need to allow at least 16.7ms }
 com1time.readtotaltimeoutmultiplier := 0; { give chance to respond }
 com1time.readtotaltimeoutconstant := 10 ; { update 100x a second }
 Setcommtimeouts(ComHandle4D,com1time) ;

 SetBaudrate(Newrate) ;

 errs := $ffff ;
 clearcommerror(ComHandle4D,errs,nil) ;

 purgecomm(ComHandle4D, PURGE_TXABORT+PURGE_RXABORT+PURGE_TXCLEAR+PURGE_RXCLEAR) ;
 result := 0 ;
 end ;

{$I Goldelox_Compound4DRoutines.pas}
initialization
 Callback4D := nil ;
 Callback4DCmd := nil ;
end.
