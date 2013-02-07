(*
    //----------------------------------
    //   4DGL - GOLDELOX-GFX2 PLATFORM
    //----------------------------------


*)
(*
    System Primitives for 4DGL GOLDELOX GFX2 Platform
*)


//==============================================//
// initialization table additional commands     //
//==============================================//
  INIT_TABLE_END         = $FF ;    // end of initialization table marker
  INIT_TABLE_DELAY       = $FE ;    // insert delay value
  INIT_TABLE_16BIT_INDEX_REG_MODE = $FD ;    // 16 bit display index register
  INIT_TABLE_8BIT_INDEX_REG_MODE = $FC ;    // 8 bit display index register
  INIT_TABLE_16BIT_DUMMY_READ = $FB ;    // 16 bit display dummy read
  INIT_TABLE_PORTRAIT    = $FA ;    // initial screen mode requirement
  INIT_TABLE_LANDSCAPE   = $F9 ;
  INIT_TABLE_PORTRAIT_R  = $F8 ;
  INIT_TABLE_LANDSCAPE_R = $F7 ;

//==============================================//
// putch, putstr, putnum and print redirection  //
// constants                                    //
//==============================================//
  APPEND                 = $0000 ;
  COM0                   = $FF04 ;
  TEXT                   = $FF08 ;
  MDA                    = $FF10 ;

//==============================================//
// general number formatting constants          //
// for 'print' and 'putnum'                     //
//==============================================//
    // string processing constants
  STR                    = $0080 ;  // display as string
  CHR                    = $0081 ;  // display as single char



  // binary, no leading zeroes
  BIN                    = $0002 ;  // binary, 16 digits, no leading zeroes
  BIN1                   = $0102 ;  // binary, 1 digit, no leading zeroes
  BIN2                   = $0202 ;  // binary, 2 digits, no leading zeroes
  BIN3                   = $0302 ;  // binary, 3 digits, no leading zeroes
  BIN4                   = $0402 ;  // binary, 4 digits, no leading zeroes
  BIN5                   = $0502 ;  // binary, 5 digits, no leading zeroes
  BIN6                   = $0602 ;  // binary, 6 digits, no leading zeroes
  BIN7                   = $0702 ;  // binary, 7 digits, no leading zeroes
  BIN8                   = $0802 ;  // binary, 8 digits, no leading zeroes
  BIN9                   = $0902 ;  // binary, 9 digits, no leading zeroes
  BIN10                  = $0A02 ;  // binary, 10 digits, no leading zeroes
  BIN11                  = $0B02 ;  // binary, 11 digits, no leading zeroes
  BIN12                  = $0C02 ;  // binary, 12 digits, no leading zeroes
  BIN13                  = $0D02 ;  // binary, 13 digits, no leading zeroes
  BIN14                  = $0E02 ;  // binary, 14 digits, no leading zeroes
  BIN15                  = $0F02 ;  // binary, 15 digits, no leading zeroes
  BIN16                  = $0002 ;  // binary, 16 digits, no leading zeroes

    // binary, with leading zeroes
  BINZ                   = $1002 ;  // binary, 16 digits, leading zeroes
  BIN1Z                  = $1102 ;  // binary, 1 digit, leading zeroes
  BIN2Z                  = $1202 ;  // binary, 2 digits, leading zeroes
  BIN3Z                  = $1302 ;  // binary, 3 digits, leading zeroes
  BIN4Z                  = $1402 ;  // binary, 4 digits, leading zeroes
  BIN5Z                  = $1502 ;  // binary, 5 digits, leading zeroes
  BIN6Z                  = $1602 ;  // binary, 6 digits, leading zeroes
  BIN7Z                  = $1702 ;  // binary, 7 digits, leading zeroes
  BIN8Z                  = $1802 ;  // binary, 8 digits, leading zeroes
  BIN9Z                  = $1902 ;  // binary, 9 digits, leading zeroes
  BIN10Z                 = $1A02 ;  // binary, 10 digits, leading zeroes
  BIN11Z                 = $1B02 ;  // binary, 11 digits, leading zeroes
  BIN12Z                 = $1C02 ;  // binary, 12 digits, leading zeroes
  BIN13Z                 = $1D02 ;  // binary, 13 digits, leading zeroes
  BIN14Z                 = $1E02 ;  // binary, 14 digits, leading zeroes
  BIN15Z                 = $1F02 ;  // binary, 15 digits, leading zeroes
  BIN16Z                 = $1002 ;  // binary, 16 digits, leading zeroes

    // binary, with leading blanked
  BINZB                  = $2002 ;  // binary, 16 digits, leading blanks
  BIN1ZB                 = $2102 ;  // binary, 1 digit, leading blanks
  BIN2ZB                 = $2202 ;  // binary, 2 digits, leading blanks
  BIN3ZB                 = $2302 ;  // binary, 3 digits, leading blanks
  BIN4ZB                 = $2402 ;  // binary, 4 digits, leading blanks
  BIN5ZB                 = $2502 ;  // binary, 5 digits, leading blanks
  BIN6ZB                 = $2602 ;  // binary, 6 digits, leading blanks
  BIN7ZB                 = $2702 ;  // binary, 7 digits, leading blanks
  BIN8ZB                 = $2802 ;  // binary, 8 digits, leading blanks
  BIN9ZB                 = $2902 ;  // binary, 9 digits, leading blanks
  BIN10ZB                = $2A02 ;  // binary, 10 digits, leading blanks
  BIN11ZB                = $2B02 ;  // binary, 11 digits, leading blanks
  BIN12ZB                = $2C02 ;  // binary, 12 digits, leading blanks
  BIN13ZB                = $2D02 ;  // binary, 13 digits, leading blanks
  BIN14ZB                = $2E02 ;  // binary, 14 digits, leading blanks
  BIN15ZB                = $2F02 ;  // binary, 15 digits, leading blanks
  BIN16ZB                = $2002 ;  // binary, 16 digits, leading blanks

    // signed decimal, no leading zeroes
//  DEC                    = $050A ;  // signed decimal, 5 digits, no leading zeroes
  DEC1                   = $010A ;  // signed decimal, 1 digit, no leading zeroes
  DEC2                   = $020A ;  // signed decimal, 2 digits, no leading zeroes
  DEC3                   = $030A ;  // signed decimal, 3 digits, no leading zeroes
  DEC4                   = $040A ;  // signed decimal, 4 digits, no leading zeroes
  DEC5                   = $050A ;  // signed decimal, 5 digits, no leading zeroes

    // signed decimal, with leading zeroes
  DECZ                   = $150A ;  // signed decimal, 5 digits, leading zeroes
  DEC1Z                  = $110A ;  // signed decimal, 1 digit, leading zeroes
  DEC2Z                  = $120A ;  // signed decimal, 2 digits, leading zeroes
  DEC3Z                  = $130A ;  // signed decimal, 3 digits, leading zeroes
  DEC4Z                  = $140A ;  // signed decimal, 4 digits, leading zeroes
  DEC5Z                  = $150A ;  // signed decimal, 5 digits, leading zeroes

  // signed decimal, leading zeroes blanked
  DECZB                  = $250A ;  // signed decimal, 5 digits, leading blanks
  DEC1ZB                 = $210A ;  // signed decimal, 1 digit, leading blanks
  DEC2ZB                 = $220A ;  // signed decimal, 2 digits, leading blanks
  DEC3ZB                 = $230A ;  // signed decimal, 3 digits, leading blanks
  DEC4ZB                 = $240A ;  // signed decimal, 4 digits, leading blanks
  DEC5ZB                 = $250A ;  // signed decimal, 5 digits, leading blanks

    // unsigned decimal, no leading zeroes
  UDEC                   = $450A ;  // unsigned decimal, 5 digits, no leading zeroes
  UDEC1                  = $410A ;  // unsigned decimal, 1 digit, no leading zeroes
  UDEC2                  = $420A ;  // unsigned decimal, 2 digits, no leading zeroes
  UDEC3                  = $430A ;  // unsigned decimal, 3 digits, no leading zeroes
  UDEC4                  = $440A ;  // unsigned decimal, 4 digits, no leading zeroes
  UDEC5                  = $450A ;  // unsigned decimal, 5 digits, no leading zeroes

    // unsigned decimal, with leading zero's
  UDECZ                  = $550A ;  // unsigned decimal, 5 digits, leading zeroes
  UDEC1Z                 = $510A ;  // unsigned decimal, 1 digit, leading zeroes
  UDEC2Z                 = $520A ;  // unsigned decimal, 2 digits, leading zeroes
  UDEC3Z                 = $530A ;  // unsigned decimal, 3 digits, leading zeroes
  UDEC4Z                 = $540A ;  // unsigned decimal, 4 digits, leading zeroes
  UDEC5Z                 = $550A ;  // unsigned decimal, 5 digits, leading zeroes

    // unsigned decimal, leading zeroes blanked
  UDECZB                 = $650A ;  // unsigned decimal, 5 digits, leading blanks
  UDEC1ZB                = $610A ;  // unsigned decimal, 1 digit, leading blanks
  UDEC2ZB                = $620A ;  // unsigned decimal, 2 digits, leading blanks
  UDEC3ZB                = $630A ;  // unsigned decimal, 3 digits, leading blanks
  UDEC4ZB                = $640A ;  // unsigned decimal, 4 digits, leading blanks
  UDEC5ZB                = $650A ;  // unsigned decimal, 5 digits, leading blanks

    // hex, with leading zero's
  HEX                    = $1410 ;  // hex, 4 digits, leading zeroes
  HEX1                   = $1110 ;  // hex, 1 digit, leading zeroes
  HEX2                   = $1210 ;  // hex, 2 digits, leading zeroes
  HEX3                   = $1310 ;  // hex, 3 digits, leading zeroes
  HEX4                   = $1410 ;  // hex, 4 digits, leading zeroes

    // hex, no leading zero's
  HEXZ                   = $0410 ;  // hex, 4 digits, no leading zeroes
  HEX1Z                  = $0110 ;  // hex, 1 digit, no leading zeroes
  HEX2Z                  = $0210 ;  // hex, 2 digits, no leading zeroes
  HEX3Z                  = $0310 ;  // hex, 3 digits, no leading zeroes
  HEX4Z                  = $0410 ;  // hex, 4 digits, no leading zeroes

    // hex, leading zero's blanked
  HEXZB                  = $2410 ;  // hex, 4 digits, leading blanks
  HEX1ZB                 = $2110 ;  // hex, 1 digit, leading blanks
  HEX2ZB                 = $2210 ;  // hex, 2 digits, leading blanks
  HEX3ZB                 = $2310 ;  // hex, 3 digits, leading blanks
  HEX4ZB                 = $2410 ;  // hex, 4 digits, leading blanks

// baud divisor rates
  MIDI                   = 95 ;
  BAUD_110               = 27271 ;
  BAUD_300               = 9999 ;
  BAUD_600               = 4999 ;
  BAUD_1200              = 2499 ;
  BAUD_2400              = 1249 ;
  BAUD_4800              = 624 ;
  BAUD_9600              = 312 ;
  BAUD_14400             = 207 ;
  BAUD_19200             = 155 ;
  BAUD_31250             = 95 ;
  BAUD_38400             = 77 ;
  BAUD_56000             = 53 ;
  BAUD_57600             = 51 ;
  BAUD_115200            = 25 ;
  BAUD_128000            = 22 ;
  BAUD_256000            = 11 ;
  BAUD_300000            = 10 ;
  BAUD_375000            = 8 ;
  BAUD_500000            = 6 ;
  BAUD_600000            = 4 ;


//==============================================//
// generic constants                            //
//==============================================//
  ENABLE                 = 1 ;
  DISABLE                = 0 ;
  ON                     = 1 ;
  OFF                    = 0 ;
//  TRUE                   = 1 ;
//  FALSE                  = 0 ;

//==============================================//
// joystick() function return constants         //
//==============================================//
  RELEASED               = 0 ;
  UP                     = 1 ;
  LEFT                   = 2 ;
  DOWN                   = 3 ;
  RIGHT                  = 4 ;
  FIRE                   = 5 ;

//==============================================//
// spi_Init(...)  mode arguments                //
//==============================================//
  SPI_SLOW               = 2 ;       // 750khz
  SPI_MED                = 1 ;       // 3mhz
  SPI_FAST               = 0 ;       // 12mhz
  RXMODE_0               = 0 ;       // receive sample pos
  RXMODE_1               = 1 ;       // receive sample pos
  CKMODE_0               = 0 ;       // transmit sample pos
  CKMODE_1               = 1 ;       // transmit sample pos
  CKMODE_2               = 2 ;       // transmit sample pos
  CKMODE_3               = 3 ;       // transmit sample pos

//==============================================//
//Pin related constants                         //
//==============================================//
  IO1                    = 0 ;
  IO2                    = 1 ;
  LO                     = 0 ;
  HI                     = 1 ;
  OUTPUT                 = 0 ;
  INPUT                  = 1 ;
  ANALOGUE_8             = 2 ;
  ANALOGUE_10            = 3 ;
  ONEWIRE                = 4 ;
  SOUND                  = 5 ;

//==============================================//
//gfx_Set() related constants                   //
//==============================================//
  PEN_SIZE               = 0 ;       // not necessary to use (legacy mode)
  BACKGROUND_COLOUR      = 1 ;       // screen background colour
  OBJECT_COLOUR          = 2 ;       // line / circle / rectangle generic colour
  CLIPPING               = 3 ;       // clipping ON / OFF
  TRANSPARENT_COLOUR     = 4 ;       // (only on displays with specific hware feature)
  TRANSPARENCY           = 5 ;       // 0 = OFF, 1 = ON (only on displays with specific hware feature)
  FRAME_DELAY            = 6 ;       // legacy mode, see pokeB(IMAGE_DELAY, n);
  SCREEN_MODE            = 7 ;       // LANDSCAPE, LANDSCAPE_R, PORTRAIT, PORTRAIT_R
  OUTLINE_COLOUR         = 8 ;       // if not BLACK (0) , used for outline around circles and rectanglse
  CONTRAST               = 9 ;       // set contrast ratuio in uOLED modules
  LINE_PATTERN           = 10 ;      // used for patterned lines, 16bit value (0 = no pattern)
  COLOUR_MODE            = 11 ;      // select 8 or 16 bit colour mode


  SOLID                  = 0 ;       // PEN_SIZE argument  (gfx_Set legacy mode)
  OUTLINE                = 1 ;       // PEN_SIZE argument  (gfx_Set legacy mode)

  LANDSCAPE              = 0 ;       // SCREEN_MODE (north)
  LANDSCAPE_R            = 1 ;       // SCREEN_MODE (south)
  PORTRAIT               = 2 ;       // SCREEN_MODE (west)
  PORTRAIT_R             = 3 ;       // SCREEN_MODE (east)

  COLOUR8                = 1 ;       // COLOUR_MODE 8 bit colour mode
  COLOUR16               = 0 ;       // COLOUR_MODE 16 bit colour mode

//==============================================//
//txt_Set() related constants                   //
//==============================================//
  TEXT_COLOUR            = 0 ;       // text foreground colr
  TEXT_HIGHLIGHT         = 1 ;       // text background colr
  FONT_ID                = 2 ;       // default 0, else points to data statement font
  TEXT_WIDTH             = 3 ;       // text width multiplier
  TEXT_HEIGHT            = 4 ;       // text height multiplier
  TEXT_XGAP              = 5 ;       // horizontal text gap (default 1)
  TEXT_YGAP              = 6 ;       // vertical text gap (default 1)
  TEXT_PRINTDELAY        = 7 ;       // for 'teletype' like effect when pronting
  TEXT_OPACITY           = 8 ;       // text mode flag, TRANSPARENT or OPAQUE
  TEXT_BOLD              = 9 ;       // embolden text (auto reset) - legacy
  TEXT_ITALIC            = 10 ;      // italicize text (auto reset)
  TEXT_INVERSE           = 11 ;      // invert text (auto reset)
  TEXT_UNDERLINED        = 12 ;      // underline text (auto reset)
  TEXT_ATTRIBUTES        = 13 ;      // controls BOLD/ITALIC/INVERSE/UNDERLINE simultaneously

//==============================================//
//txt_Set() related arguments                   //
//==============================================//
  SYSTEM                 = 0 ;       // internal system font
  MEDIA                  = 7 ;       // font is at uSD_add


  TRANSPARENT            = 0 ;       // TEXT_OPACITY  transparent  text
  OPAQUE                 = 1 ;       // TEXT_OPACITY  opaque text

  BOLD                   = 16 ;      // TEXT_ATTRIBUTES bold text (auto reset)
  ITALIC                 = 32 ;      // TEXT_ATTRIBUTES italic text (auto reset)
  INVERSE                = 64 ;      // TEXT_ATTRIBUTES inverse text (auto reset)
  UNDERLINED             = 128 ;     // TEXT_ATTRIBUTES underlined text (auto reset)


//==============================================//
// Memory MAP                                   //
// system BYTE variables accesible with         //
// peekB and pokeB                              //
//==============================================//
  VX1                    = 128 ;     // display hardware x1 pos
  VY1                    = 129 ;     // display hardware y1 pos
  VX2                    = 130 ;     // display hardware x2 pos
  VY2                    = 131 ;     // display hardware y2 pos
  SYS_X_MAX              = 132 ;     // display hardware X res-1
  SYS_Y_MAX              = 133 ;     // display hardware Y res-1
  WRITE_GRAM_REG         = 134 ;     // device register address for write operation
  READ_GRAM_REG          = 135 ;     // device register address for write operation
  IMAGE_WIDTH            = 136 ;     // width of currently loaded image
  IMAGE_HEIGHT           = 137 ;     // height of currently loaded image
  IMAGE_DELAY            = 138 ;     // 0 if image, else inter frame delay for movie
  IMAGE_MODE             = 139 ;     // bit 4 determines colr mode, other bits reserved
  CLIP_LEFT_POS          = 140 ;     // left clipping point (set with gfx_ClipWindow(...)
  CLIP_TOP_POS           = 141 ;     // top clipping point (set with gfx_ClipWindow(...)
  CLIP_RIGHT_POS         = 142 ;     // right clipping point (set with gfx_ClipWindow(...)
  CLIP_BOTTOM_POS        = 143 ;     // bottom clipping point (set with gfx_ClipWindow(...)
  CLIP_LEFT              = 144 ;     // current clip value (reads as full size if clipping turned off)
  CLIP_TOP               = 145 ;     // current clip value (reads as full size if clipping turned off)
  CLIP_RIGHT             = 146 ;     // current clip value (reads as full size if clipping turned off)
  CLIP_BOTTOM            = 147 ;     // current clip value (reads full size if clipping turned off)
  FONT_TYPE              = 148 ;     // font type, 0 = system font, else pointer to user or media font
  FONT_MAX               = 149 ;     // number of chars in current font
  FONT_OFFSET            = 150 ;     // starting offset (normally 0x20)
  FONT_WIDTH             = 151 ;     // current font width
  FONT_HEIGHT            = 152 ;     // current font height
  TEXT_XMAG              = 153 ;     // text width magnification
  TEXT_YMAG              = 154 ;     // text height magnification
  TEXT_MARGIN            = 155 ;     // left column for carriage return
  TEXT_DELAY             = 156 ;     // print delay
  TEXT_X_GAP             = 157 ;     // text horizontal gap size
  TEXT_Y_GAP             = 158 ;     // text vertical gap size
  GFX_XMAX               = 159 ;     // current display width-1 determined by portrait / landscape swapping
  GFX_YMAX               = 160 ;     // current display width-1 determined by portrait / landscape swapping
//  GFX_SCREENMODE         = 161 ;     // holds current screen mode
    //


//==============================================//
// system WORD variables accesible with peekW   //
// and pokeW or pointer access                  //
//==============================================//
  VM_OVERFLOW            = 83 ;      // 16bit overflow of 32bit results (see OVF() funtion)
  VM_COLOUR              = 84 ;      // general working var for colour
  VM_RETVAL              = 85 ;      // last value returned from any function
  GFX_BACK_COLOUR        = 86 ;      // screen background colour
  GFX_OBJECT_COLOUR      = 87 ;      // graphics object colour
  GFX_TEXT_COLOUR        = 88 ;      // text forground colour
  GFX_TEXT_BGCOLOUR      = 89 ;      // text background colour
  GFX_OUTLINE_COLOUR     = 90 ;      // screen background colour
  GFX_LINE_PATTERN       = 91 ;      // line draw 16bit linear pattern
  IMG_PIXEL_COUNT        = 92 ;      // pixel count of current object (may be altered by clipping)
  IMG_FRAME_COUNT        = 93 ;      // count of frames in currently loaded video
  MEDIA_HEAD             = 94 ;      // media sector head position
  SYS_OSTREAM            = 95 ;      // system output redirection
  GFX_LEFT               = 96 ;      // virtual left point for current image
  GFX_TOP                = 97 ;      // virtual top point for current image
  GFX_RIGHT              = 98 ;      // virtual right point for current image
  GFX_BOTTOM             = 99 ;      // virtual bottom point for current image
  GFX_X1                 = 100 ;     // clipped left point for current image
  GFX_Y1                 = 101 ;     // clipped top point for current image
  GFX_X2                 = 102 ;     // clipped right point for current image
  GFX_Y2                 = 103 ;     // clipped bottom point for current image
  GFX_X_ORG              = 104 ;     // current Y origin
  GFX_Y_ORG              = 105 ;     // current Y origin
  RANDOM_LO              = 106 ;     // random number generator LO word
  RANDOM_HI              = 107 ;     // random number generator LO word
  MEDIA_ADDR_LO          = 108 ;     // uSD/FLASH absolute byte address LO
  MEDIA_ADDR_HI          = 109 ;     // uSD/FLASH absolute byte address HI
  SECTOR_ADDR_LO         = 110 ;     // uSD/FLASH sector address LO
  SECTOR_ADDR_HI         = 111 ;     // uSD/FLASH sector address HI
  SYSTEM_TIMER_LO        = 112 ;     // 1msec 32 bit free running timer LO word
  SYSTEM_TIMER_HI        = 113 ;     // 1msec 32 bit free running timer HI word
  TIMER0                 = 114 ;     // user timer0
  TIMER1                 = 115 ;     // user timer1
  TIMER2                 = 116 ;     // user timer2
  TIMER3                 = 117 ;     // user timer3 (10msec resolution)
  INCVAL                 = 118 ;     // incrementer size
  TEMP_MEDIA_ADDRLO      = 119 ;     // temp stroage while printing font from media storage
  TEMP_MEDIA_ADDRHI      = 120 ;     // temp stroage while printing font from media storage
//  GFX_TRANSPARENTCOLOUR  = 121 ;     // image transparency colour
  GFX_STRINGMETRIX       = 122 ;     // low byte = string width, hi byte = string height
  GFX_TEMPSTORE1         = 123 ;     // low byte = last char printed, hi byte = frame timer over-ride
    // reserved                 124             // internal use
    // reserved                 125             // internal use
  SYS_FLAGS1             = 126 ;     // system control flags word 1
  SYS_FLAGS2             = 127 ;     // system control flags word 2

//==============================================//
// bit constants for SYS_FLAGS1                 //
//==============================================//
  _STREAMLOCK            = $0001 ;  // Used internally
  _PENSIZE               = $0002 ;  // object, 0=solid,1=outline
  _OPACITY               = $0004 ;  // text, 0=transparent,1=opaque
  _OUTLINED              = $0008 ;  // box/circle outline 0=off,1=on
  _BOLD                  = $0010 ;  // text, 0=normal,1=bold (auto reset)
  _ITALIC                = $0020 ;  // Text, 0=normal,1=italic (auto reset)
  _INVERSE               = $0040 ;  // Text, 0=normal,1=inverse (auto reset)
  _UNDERLINED            = $0080 ;  // Text, 0=normal,1=underlined (auto reset)
  _CLIPPING              = $0100 ;  // Used internally, 0-clipping off, 1-clipping on
  _STRMODE               = $0200 ;  // Used internally
  _SERMODE               = $0400 ;  // Used internally
  _TXTMODE               = $0800 ;  // Used internally
  _MEDIAMODE             = $1000 ;  // Used internally
  _PATTERNED             = $2000 ;  // Used internally
  _COLOUR8               = $4000 ;  // Display mode, 0=16bit, 1=8bit
  _MEDIAFONT             = $8000 ;  // 0=internal font, 1=media font

//==============================================//
// bit constants for SYS_FLAGS2                 //
//==============================================//
  _MEDIA_INSTALLED       = $0001 ;  // SD of FLASH device is installed
  _MEDIA_TYPE            = $0002 ;  // 0=SD, 1=FLASH media device detected
  _MEDIA_READ            = $0004 ;  // 1=MEDIA read in progress
  _MEDIA_WRITE           = $0008 ;  // 1=MEDIA write in progress
  _OW_PIN                = $0010 ;  // 0=IO1, 1=IO2 (Dallas OW Pin)
  _PTR_TYPE              = $0020 ;  // Used internally
  _TEMP1                 = $0040 ;  // Used internally
  _TEMP2                 = $0080 ;  // Used internally
  _RUNMODE               = $0100 ;  // 1=running pcode from media
  _SIGNED                = $0200 ;  // 0=number printed '-' prepend
  _RUNFLAG               = $0400 ;  // 1=EVE processor is running    SYSTEM
  _SINGLESTEP            = $0800 ;  // 1=set breakpoint for debugger
  _COMMINT               = $1000 ;  // 1=buffered comms active
  _DUMMY16               = $2000 ;  // 1=display needs 16bit dummy
  _DISP16                = $4000 ;  // 1=display is 16bit interface
  _PROPFONT              = $8000 ;  // 1=current font is proportional


//==============================================//
// EVE User Resources                           //
//==============================================//
  USR_SP                 = 128 ;     // EVE user defined stack pointer
  USRVARS                = 129 ;     // EVE user variables VARS[255]
  USRSTACK               = 384 ;     // EVE machine stack STACK[128]

//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------
//------------------------------------------------------------------------------

(*
    16 bit RGB (565) Colour Chart
    Original work by 4D Forum Member: skadoo
*)



  ALICEBLUE              = $F7DF ;
  ANTIQUEWHITE           = $FF5A ;
  AQUA                   = $07FF ;
  AQUAMARINE             = $7FFA ;
  AZURE                  = $F7FF ;
  BEIGE                  = $F7BB ;
  BISQUE                 = $FF38 ;
  BLACK                  = $0000 ;
  BLANCHEDALMOND         = $FF59 ;
  BLUE                   = $001F ;
  BLUEVIOLET             = $895C ;
  BROWN                  = $A145 ;
  BURLYWOOD              = $DDD0 ;
  CADETBLUE              = $5CF4 ;
  CHARTREUSE             = $7FE0 ;
  CHOCOLATE              = $D343 ;
  CORAL                  = $FBEA ;
  CORNFLOWERBLUE         = $64BD ;
  CORNSILK               = $FFDB ;
  CRIMSON                = $D8A7 ;
  CYAN                   = $07FF ;
  DARKBLUE               = $0011 ;
  DARKCYAN               = $0451 ;
  DARKGOLDENROD          = $BC21 ;
  DARKGRAY               = $AD55 ;
  DARKGREEN              = $0320 ;
  DARKKHAKI              = $BDAD ;
  DARKMAGENTA            = $8811 ;
  DARKOLIVEGREEN         = $5345 ;
  DARKORANGE             = $FC60 ;
  DARKORCHID             = $9999 ;
  DARKRED                = $8800 ;
  DARKSALMON             = $ECAF ;
  DARKSEAGREEN           = $8DF1 ;
  DARKSLATEBLUE          = $49F1 ;
  DARKSLATEGRAY          = $2A69 ;
  DARKTURQUOISE          = $067A ;
  DARKVIOLET             = $901A ;
  DEEPPINK               = $F8B2 ;
  DEEPSKYBLUE            = $05FF ;
  DIMGRAY                = $6B4D ;
  DODGERBLUE             = $1C9F ;
  FIREBRICK              = $B104 ;
  FLORALWHITE            = $FFDE ;
  FORESTGREEN            = $2444 ;
  FUCHSIA                = $F81F ;
  GAINSBORO              = $DEFB ;
  GHOSTWHITE             = $FFDF ;
  GOLD                   = $FEA0 ;
  GOLDENROD              = $DD24 ;
  GRAY                   = $8410 ;
  GREEN                  = $0400 ;
  GREENYELLOW            = $AFE5 ;
  HONEYDEW               = $F7FE ;
  HOTPINK                = $FB56 ;
  INDIANRED              = $CAEB ;
  INDIGO                 = $4810 ;
  IVORY                  = $FFFE ;
  KHAKI                  = $F731 ;
  LAVENDER               = $E73F ;
  LAVENDERBLUSH          = $FF9E ;
  LAWNGREEN              = $7FE0 ;
  LEMONCHIFFON           = $FFD9 ;
  LIGHTBLUE              = $AEDC ;
  LIGHTCORAL             = $F410 ;
  LIGHTCYAN              = $E7FF ;
  LIGHTGOLD              = $FFDA ;
  LIGHTGREEN             = $9772 ;
  LIGHTGREY              = $D69A ;
  LIGHTPINK              = $FDB8 ;
  LIGHTSALMON            = $FD0F ;
  LIGHTSEAGREEN          = $2595 ;
  LIGHTSKYBLUE           = $867F ;
  LIGHTSLATEGRAY         = $7453 ;
  LIGHTSTEELBLUE         = $B63B ;
  LIGHTYELLOW            = $FFFC ;
  LIME                   = $07E0 ;
  LIMEGREEN              = $3666 ;
  LINEN                  = $FF9C ;
  MAGENTA                = $F81F ;
  MAROON                 = $8000 ;
  MEDIUMAQUAMARINE       = $6675 ;
  MEDIUMBLUE             = $0019 ;
  MEDIUMORCHID           = $BABA ;
  MEDIUMPURPLE           = $939B ;
  MEDIUMSEAGREEN         = $3D8E ;
  MEDIUMSLATEBLUE        = $7B5D ;
  MEDIUMSPRINGGREEN      = $07D3 ;
  MEDIUMTURQUOISE        = $4E99 ;
  MEDIUMVIOLETRED        = $C0B0 ;
  MIDNIGHTBLUE           = $18CE ;
  MINTCREAM              = $F7FF ;
  MISTYROSE              = $FF3C ;
  MOCCASIN               = $FF36 ;
  NAVAJOWHITE            = $FEF5 ;
  NAVY                   = $0010 ;
  OLDLACE                = $FFBC ;
  OLIVE                  = $8400 ;
  OLIVEDRAB              = $6C64 ;
  ORANGE                 = $FD20 ;
  ORANGERED              = $FA20 ;
  ORCHID                 = $DB9A ;
  PALEGOLDENROD          = $EF55 ;
  PALEGREEN              = $9FD3 ;
  PALETURQUOISE          = $AF7D ;
  PALEVIOLETRED          = $DB92 ;
  PAPAYAWHIP             = $FF7A ;
  PEACHPUFF              = $FED7 ;
  PERU                   = $CC27 ;
  PINK                   = $FE19 ;
  PLUM                   = $DD1B ;
  POWDERBLUE             = $B71C ;
  PURPLE                 = $8010 ;
  RED                    = $F800 ;
  ROSYBROWN              = $BC71 ;
  ROYALBLUE              = $435C ;
  SADDLEBROWN            = $8A22 ;
  SALMON                 = $FC0E ;
  SANDYBROWN             = $F52C ;
  SEAGREEN               = $2C4A ;
  SEASHELL               = $FFBD ;
  SIENNA                 = $A285 ;
  SILVER                 = $C618 ;
  SKYBLUE                = $867D ;
  SLATEBLUE              = $6AD9 ;
  SLATEGRAY              = $7412 ;
  SNOW                   = $FFDF ;
  SPRINGGREEN            = $07EF ;
  STEELBLUE              = $4416 ;
  TAN                    = $D5B1 ;
  TEAL                   = $0410 ;
  THISTLE                = $DDFB ;
  TOMATO                 = $FB08 ;
  TURQUOISE              = $471A ;
  VIOLET                 = $EC1D ;
  WHEAT                  = $F6F6 ;
  WHITE                  = $FFFF ;
  WHITESMOKE             = $F7BE ;
  YELLOW                 = $FFE0 ;
  YELLOWGREEN            = $9E66 ;










