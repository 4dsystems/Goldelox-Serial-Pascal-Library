program bigdemo;

(****************************************************************************************
*                                                                                       *
*  Goldelox 4D Serial Sample                                                            *
*                                                                                       *
*  Date:        21 December 2012                                                        *
*                                                                                       *
*  Description: Demonstrates Pretty much every Goldelox 4D Serial command.              *
*               This has been written as a console application.                         *
*                                                                                       *
*               The following file needs to be openned with Graphics Composer(GC) and   *
*               'saved' to offset 0 of a uSD card.                                      *
*               PoGa Intro\GCI_Demo1\Images\GCI_DEMO1                                   *
*                                                                                       *
****************************************************************************************)


{$APPTYPE CONSOLE}

uses
  math,
  windows, Goldelox_serial_4dLibrary,
  SysUtils;

const
 maxrates = 19 ;
type
  terrortext = array[0..4] of string ;
  datar = record
    recnum : integer ;
    values : array[1..5] of ansichar ;
    idx    : ansichar ;
    end;
  tbaudratea = array[0..maxrates] of integer ;
const
  fbinary = 1 ;
  baudrates  : tbaudratea = (   110,    300,    600,   1200,   2400,   4800,   9600, 14400, 19200, 31250, 38400, 56000, 57600,
                             115200, 128000, 256000, 300000, 375000, 500000, 600000) ;
  baudratesG : tbaudratea = (baud_110, baud_300, baud_600, baud_1200, baud_2400, baud_4800, baud_9600, baud_14400, baud_19200, baud_31250, baud_38400, baud_56000, baud_57600,
                            baud_115200, baud_128000, baud_256000, baud_300000, baud_375000, baud_500000, baud_600000) ;

  Image : array[0..2053] of byte = (0,  32,   0,  32,  16,   0, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $84, $31, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $84, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $84, $51,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51,
    $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $84, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2,
    $84, $31, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2,
    $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $84, $31, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2,
    $10, $A2, $84, $31, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2,
    $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $84, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2,
    $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $04, $29, $45, $31, $A6, $94, $B2, $94, $92, $94, $92, $84, $31, $5A, $EC,
    $18, $E4, $10, $A2, $84, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $24, $B5, $96, $29, $65,
    $42, $29, $CE, $7A, $C6, $18, $C6, $18, $C6, $18, $C6, $39, $BD, $F8, $52, $CB, $10, $A2, $84, $31, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2,
    $10, $A2, $10, $A2, $21, $24, $C6, $18, $AD, $55, $21, $24, $42, $29, $C6, $38, $B5, $96, $B5, $96, $B5, $B7, $BD, $F8, $BD, $F8,
    $BD, $F8, $5A, $CB, $10, $A2, $84, $31, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $8C, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $24, $C6, $18, $C6, $39, $A5, $14, $21, $24, $21, $45,
    $42, $29, $39, $E7, $39, $E7, $52, $8A, $9C, $F4, $BD, $F8, $BD, $F8, $AD, $76, $29, $45, $10, $A2, $84, $31, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $24,
    $C6, $18, $C6, $39, $BD, $F8, $94, $B2, $21, $04, $10, $A2, $10, $A2, $10, $A3, $10, $A2, $10, $A2, $21, $04, $A5, $55, $BD, $F8,
    $BD, $D7, $5B, $0C, $10, $A2, $10, $A2, $84, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2,
    $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $24, $C6, $18, $C6, $39, $BD, $F8, $A5, $35, $42, $08, $10, $A3, $29, $65, $D5, $34,
    $E4, $0F, $E3, $EF, $BA, $89, $20, $A3, $52, $8A, $C6, $39, $BD, $F8, $7B, $F0, $10, $A2, $10, $A2, $10, $A2, $84, $31, $FF, $FF,
    $FF, $FF, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $25, $C6, $18, $C6, $39, $BD, $F8,
    $A5, $35, $42, $08, $10, $A3, $29, $65, $D4, $F3, $DA, $28, $D9, $A6, $D9, $A6, $C1, $85, $38, $C3, $29, $86, $D6, $9A, $BD, $F8,
    $7B, $F0, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $84, $31, $FF, $FF, $84, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2,
    $10, $A2, $21, $25, $C6, $18, $C6, $39, $BD, $F8, $A5, $35, $42, $08, $10, $A3, $29, $04, $BB, $8E, $A9, $C6, $A1, $65, $A1, $65,
    $A1, $65, $69, $04, $18, $A2, $52, $8A, $CE, $7A, $BD, $F8, $6B, $6E, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $84, $31,
    $8C, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $21, $25, $C6, $18, $C6, $39, $BD, $F8, $AD, $55, $42, $08, $10, $A3,
    $10, $A2, $18, $A3, $20, $A2, $18, $A2, $18, $A2, $18, $A2, $18, $A2, $10, $A2, $18, $E4, $BD, $F7, $C6, $18, $B5, $B7, $42, $08,
    $10, $A2, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $8C, $51, $FF, $FF, $8C, $51, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $C6, $38,
    $C6, $39, $BD, $F8, $BD, $F8, $9C, $D3, $63, $0C, $63, $2D, $63, $2D, $63, $0C, $21, $04, $29, $45, $6B, $4D, $63, $4D, $63, $2D,
    $7B, $CF, $C6, $39, $C6, $39, $BD, $F8, $84, $31, $18, $E4, $10, $A2, $10, $A2, $10, $A2, $10, $A2, $8C, $51, $FF, $FF, $FF, $FF,
    $FF, $FF, $8C, $51, $10, $A2, $10, $A2, $10, $A3, $D6, $BB, $BD, $F8, $BD, $F8, $BD, $F8, $BD, $F8, $C6, $39, $C6, $39, $C6, $39,
    $AD, $76, $21, $25, $42, $49, $D6, $9A, $C6, $39, $C6, $39, $C6, $39, $BE, $18, $BD, $F8, $94, $B3, $29, $86, $10, $A2, $10, $A2,
    $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a3, $D6, $BA, $BD, $F8,
    $BD, $F8, $BD, $F8, $BD, $F8, $BD, $F8, $BD, $F8, $BD, $F8, $A5, $14, $21, $24, $42, $29, $CE, $59, $BD, $F8, $BD, $F8, $BD, $D7,
    $AD, $75, $73, $CF, $29, $65, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $8C, $51, $10, $a3, $7B, $CF, $5A, $CB, $5A, $CB, $5A, $CB, $5a, $cb, $63, $2C, $B5, $B7, $BD, $F8, $A5, $14,
    $21, $24, $31, $A6, $6B, $6E, $5A, $EB, $5a, $cb, $4A, $6A, $29, $86, $18, $C3, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2, $10, $a2,
    $10, $a2, $10, $a2, $10, $a2, $BD, $D7, $BD, $F8, $A5, $14, $21, $24, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2,
    $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $BD, $F7, $BD, $F8, $9C, $F4, $21, $04,
    $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2,
    $10, $a2, $10, $a2, $7B, $CF, $63, $2D, $52, $AA, $18, $E3, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2,
    $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2,
    $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2,
    $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2,
    $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51,
    $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $10, $a2,
    $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $8C, $51, $10, $a2, $10, $a2, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $8C, $51, $10, $a2, $10, $a2, $8C, $51, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $8C, $51, $8C, $51, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF,
    $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF, $FF) ;

  ErrorText : terrortext = ('OK','Timeout','NAK','Length','Invalid') ;
  atoz : ansistring = 'abcdefghijklmnopqrstuvwxyz' ;

 var
  bytes  : array[0..19] of byte ;
  data   : datar ;
  handle : word ;
  h1     : word ;
  h2     : word ;
  i      : integer ;
  orbitx : word ;
  orbity : word ;
  rc     : integer ;
  w1     : word ;
  w2     : word ;

  // testing variables
  baud_Rate   : integer ;
  fmediatests : boolean ;
  wks         : ansistring ;

procedure callback(ErrCode : integer; Errorbyte : byte) ;
begin
 if errcode = Err4D_NAK
 then writeln('Serial 4D library reports Error ' + Error4DText[errcode] + ' Returned data= ' + format('%2.2x',[ErrorByte]))
 else writeln('Serial 4D library reports Error ' + Error4DText[errcode]) ;
 writeln('Program stopped') ;
 halt(1) ;
end ;

function trymount : boolean ;
const
  retries = 20 ;
var
  i : integer ;
  j : integer ;
begin ;
  i := media_Init() ;
  j := 0 ;
  if i = 0
  then begin ;
    write('Please insert the uSD card') ;
    while (i = 0) and (j < retries) do begin ;
      write('.') ;
      i := media_Init() ;
      inc(j) ;
      end;
    end ;
 result := j <> retries ;
 end ;

procedure gfx_Part1 ;
var
  i : integer ;
begin ;
  gfx_Cls() ;
  txt_BGcolour(LIGHTGOLD) ;           // to ensure text goesn look odd
  txt_FGcolour(RED) ;
  putstr('gfx_A - gfx_L') ;
  Writeln('gfx_A to gfx_L') ;
  txt_FGcolour(LIME) ;            // reset
  gfx_ChangeColour(RED, LIME) ;
  gfx_Circle(30,20,10,BLUE) ;
  gfx_CircleFilled(60,20,10,BLUE) ;
  gfx_Rectangle(40,50,80,60,RED) ;  // draw a rectange to show where we are clipping
  gfx_ClipWindow(40,50,80,60) ;
  gfx_Clipping(ON) ;                  // turn clipping on but just use it for text
  gfx_Moveto(20,51) ;
  putstr('1234567890asdfghjkl') ;     // this is clipped
  gfx_Clipping(OFF) ;
  sleep(1000) ;
  writeln('Display off') ;
  gfx_Contrast(0) ;
  sleep(1000) ;
  writeln('Display on + brightness') ;
  for i := 1 to 16 do begin ;
    gfx_Contrast(i) ;
    sleep(100) ;
    end;
//  gfx_FrameDelay(6) ;
  writeln('X Res=',peekB(GFX_XMAX)+1,' Y Res=',peekB(GFX_YMAX)+1) ;
  writeln('Pixel at 60,20 is ', format('%4.4x',[gfx_GetPixel(60, 20)])) ;
  gfx_Line(0,0,100,200,BLUE) ;
  gfx_LinePattern($00aa) ;
  gfx_Set(OBJECT_COLOUR, WHITE);
  gfx_LineTo(90,40) ;
  gfx_LinePattern(0) ;            // reset
  gfx_BGcolour(BLACK) ;           // reset
  txt_BGcolour(BLACK) ;           // reset
end;

procedure gfx_Part2 ;
var
  i      : integer ;
  k      : integer ;
  l      : integer ;
  vx     : array[0..19] of word ;
  vy     : array[0..19] of word ;
begin ;
  gfx_Cls() ;
  putstr('gfx_M - gfx_O') ;
  writeln('gfx_M to gfx_O') ;
  k := 46 ;
  l := 32 ;
  gfx_MoveTo(k, l);
  gfx_CircleFilled(k,l,5,BLUE) ;
  i := -90;   // 12 o'clock position
  while (i<270) do begin ;
    gfx_Orbit(i, 25, orbitx, orbity);
    k := 3;
    if ((i mod 90) = 0 )
    then k := 5;
    gfx_Circle(orbitx , orbity, k, BLUE);
    i := i + 30;   // each 30 degreees
    end ;

  gfx_OutlineColour(YELLOW) ;
  gfx_RectangleFilled(80,10, 95,60, LIME) ;
  gfx_OutlineColour(0) ;                    // turn outline off

  sleep(1000) ;
  gfx_Cls() ;
  putstr('gfx_P - gfx_P') ;
  writeln('gfx_P to gfx_P') ;
   vx[0] := 18;   vy[0] := 55;
   vx[1] := 18;   vy[1] := 40;
   vx[2] := 25;   vy[2] := 40;
   vx[3] := 25;   vy[3] := 55;

   vx[4] := 46;  vy[4] := 63;
   vx[5] := 55;  vy[5] := 39;
   vx[6] := 64;  vy[6] := 63;
   vx[7] := 46;  vy[7] := 29;
   vx[8] := 55;  vy[8] := 35;
   vx[9] := 64;  vy[9] := 29;
  vx[10] := 80; vy[10] := 25;
  vx[11] := 80; vy[11] := 39;
  vx[12] := 70; vy[12] := 49;
  vx[13] := 90; vy[13] := 49;
  vx[14] := 80; vy[14] := 39;
  vx[15] := 71; vy[15] := 29;
  vx[16] := 80; vy[16] := 35;
  vx[17] := 89; vy[17] := 29;
  // house
  gfx_Rectangle(3,25,33,55,RED);             // frame
  gfx_Triangle(3,25,18,4,33,25,YELLOW);       // roof
  gfx_Polyline(4, @vx, @vy, CYAN);            // door
  gfx_PutPixel(20, 47, LIME) ;          // door knob
  // man
  gfx_Circle(55, 13, 10, BLUE);               // head
  gfx_Line(55,  25, 55, 39, BLUE);             // body
  gfx_Polyline(3, @vx[4], @vy[4], CYAN);      // legs
  gfx_Polyline(3, @vx[7], @vy[7], BLUE);      // arms
  // woman
  gfx_Circle(80, 13, 10, PINK);              // head
  gfx_Polyline(5, @vx[10], @vy[10], BROWN);   // dress
  gfx_Line(74,  63, 76, 49, PINK);          // left arm
  gfx_Line(82,  49, 86, 63, PINK);          // right arm
  gfx_Polyline(3, @vx[15], @vy[15], SALMON);  // dress

  sleep(1000) ;
  gfx_Cls() ;
  putstr('gfx_P - gfx_T') ;
  writeln('gfx_P to gfx_T') ;
  vx[0] := 45; vy[0] := 20;
  vx[1] := 55; vy[1] := 10;
  vx[2] := 95; vy[2] := 20;
  vx[3] := 60; vy[3] := 25;
  vx[4] := 95; vy[4] := 30;
  vx[5] := 55; vy[5] := 40;
  vx[6] := 45; vy[6] := 30;
  gfx_Polygon(7, @vx, @vy, RED);

  gfx_Rectangle(0,10, 10,60, AQUA) ;
  gfx_RectangleFilled(20,10, 40,60, ORANGE) ;
//gfx_ScreenMode(LANDSCAPE) ;
//gfx_ScreenMode(PORTRAIT) ;
  gfx_Transparency(ON) ;
  gfx_TransparentColour(YELLOW) ;  // how do we 'test' this?
  gfx_Triangle(50,60, 70,40, 90,60,YELLOW);
end ;

procedure Joystick_Tests ;
var
 i    : integer ;
 oldi : integer ;
begin ;
  gfx_Cls() ;
  writeln('Joystick Tests') ;
  putstr('Joystick Tests' + #10 + 'Press Fire to' + #10 + 'Exit') ;
  txt_FGColour(RED) ;
  i := -1 ;
  while (i <> FIRE) do begin ;
    oldi := i ;
    i := joystick() ;
    if   (i <> oldi)
    then begin ;
      txt_MoveCursor(5,3) ;
      case i of
        RELEASED : putstr('Released') ;
        UP       : putstr('   Up   ') ;
        LEFT     : putstr('  Left  ') ;
        DOWN     : putstr('  Down  ') ;
        RIGHT    : putstr('  Right ') ;
        FIRE     : putstr('  Fire  ') ;
        end;
      end;
    end;

  txt_FGColour(LIME) ;
end;

procedure text_Tests ;
begin ;
  gfx_Cls() ;
  writeln('Text Tests') ;
  putstr('Text Tests') ;

  txt_Attributes(BOLD + INVERSE + ITALIC + UNDERLINED) ;
  txt_Xgap(3) ;
  txt_Ygap(3) ;
  txt_BGcolour(YELLOW) ;
  txt_FGcolour(WHITE) ;
  txt_FontID(Goldelox_Serial_4DLibrary.SYSTEM) ;
  txt_MoveCursor(2, 0) ;
  putstr('Hello There') ;

  txt_MoveCursor(4, 1) ;
  txt_Height(2) ;
  txt_Width(1) ;
  txt_Inverse(OFF) ;
  txt_Italic(OFF) ;
  txt_Opacity(TRANSPARENT) ;
  txt_Set(TEXT_COLOUR, LIME) ;
  txt_Underline(ON) ;
  txt_Bold(OFF) ;
  putstr('Hello There') ;
  txt_Height(1) ;
  txt_Width(1) ;
  writeln('Char height=', charheight('w'), ' Width=', charwidth('w') ) ;
  txt_BGcolour(BLACK) ;
  txt_FGcolour(LIME) ;
  txt_FontID(Goldelox_Serial_4DLibrary.SYSTEM) ;
  txt_MoveCursor(0,0) ;      // reset
end;

procedure Media_Tests ;
var
  i      : integer ;
  j      : integer ;
  k      : integer ;
  l      : integer ;
  m      : integer ;
begin
  gfx_Cls() ;
  putstr('Media Tests') ;
  writeln('Media Tests') ;

  media_SetAdd(3, $600) ;     // using addresses from .dat file
  media_Image(20,20) ;
  sleep(1000) ;

  media_SetAdd(0, $3800) ;    // ditto
  media_Video(0,0) ;

  media_SetSector(1, 0) ;     // pic a sector not used by the 'above'
  media_WriteByte($11) ;
  media_WriteWord($2233) ;
  media_Flush() ;             // should write 0xFF over the rest of the sector
  media_SetSector(1, 0) ;
  writeln(format('%2.2x %4.4x %4.4x',[media_ReadByte(),media_ReadWord(),media_ReadWord]));
end;


begin
  TimeLimit4D := 5000 ;
  CallBack4DCmd := CallBack ; // callback,m then about on detected 4D Serial error
  if  (paramstr(1) = '')
   or (paramstr(1) = '/?')
   or (paramstr(1) = '-?')
  then begin ;
    writeln('Runs every SPE2 function (if possble) and displays results') ;
    writeln ;
    writeln('Bigdemo COMx [speed]') ;
    writeln ;
    writeln('COMx  The com port to which a display ia attacted') ;
    writeln('speed The baud rate to communicate at') ;
    writeln ;
    writeln('A uSD with GCI_DEMO1 file saved at offset 0') ;
    halt(1) ;
    end;

  if paramstr(2) = ''
  then baud_Rate := BAUD_9600
  else begin ;
    i := 0 ;
    while (i < maxrates) and (inttostr(baudrates[i]) <> paramstr(2)) do inc(i) ;
    if i = maxrates
    then begin ;
      writeln('Invalid baud rate ', paramstr(2)) ;
      halt(2) ;
      end;
    baud_Rate := baudratesg[i] ;
    end ;

  rc := opencomm(paramstr(1), baud_rate) ;
  if rc <> 0
  then begin ;
    writeln('Error ', syserrormessage(rc), ' Opening ', paramstr(1)) ;
    halt(2) ;
    end;

  gfx_Cls() ;

  fmediatests := trymount() ;
  sys_GetModel(wks) ; // length is also returned, but we don't need that here
  writeln('Display model: ', wks) ;
  putstr('Model:' + #10 + wks) ;
  writeln('SPE2 Version: ', format('%4.4x',[sys_GetVersion()])) ;
  writeln('PmmC Version: ', format('%4.4x',[sys_GetPmmC()])) ;
  if fMediatests
  then writeln('Media tests will be done')
  else writeln('Media tests will not be done, missing uSD card') ;

  sleep(5000) ;

  gfx_Part1() ; // GFX Part 1 tests
  sleep(5000) ;

  gfx_Part2() ; // GFX Part 2 tests
  sleep(5000) ;

  text_Tests() ; // text tests
  sleep(5000) ;

  Joystick_Tests() ;
  sleep(5000) ;

  gfx_Cls() ;
  BlitComtoDisplay(0, 0, image[1], image[3], @image[6]) ;
  sleep(5000) ;

  if fmediatests
  then begin ;
    Media_Tests() ;
    sleep(5000) ;
    end;

//  SSTimeout(1000) ;
//  SSSpeed(1) ;
//  SSMode(0) ;

  Goldelox_serial_4dLibrary.beep(40, 2000) ;

  gfx_Cls() ;
  setbaudWait(baud_115200) ;
  putstr('Hi at 115200' + #10) ;
  setbaudWait(baud_9600) ;
  putstr('Back to 9600' + #10) ;

end.
