// baud divisor rates for setbaud(n);
  MIDI                   = 9 ;
  BAUD_110               = 0 ;
  BAUD_300               = 1 ;
  BAUD_600               = 2 ;
  BAUD_1200              = 3 ;
  BAUD_2400              = 4 ;
  BAUD_4800              = 5 ;
  BAUD_9600              = 6 ;
  BAUD_14400             = 7 ;
  BAUD_19200             = 8 ;
  BAUD_31250             = 9 ;
  BAUD_38400             = 10 ;
  BAUD_56000             = 11 ;
  BAUD_57600             = 12 ;
  BAUD_115200            = 13 ;
  BAUD_128000            = 14 ;
  BAUD_256000            = 15 ;
  BAUD_300000            = 16 ;
  BAUD_375000            = 17 ;
  BAUD_500000            = 18 ;
  BAUD_600000            = 19 ;

//------------------------------------------------------------------//
// CONSTANTS
//------------------------------------------------------------------//

// generic constants
  ENABLE                 = 1 ;
  DISABLE                = 0 ;
  HI                     = 1 ;
  LO                     = 0 ;
  INPUT                  = 1 ;
  OUTPUT                 = 0 ;
  ON                     = 1 ;
  OFF                    = 0 ;

//------------------------------------------------------------------------------
// Pin related constants
//------------------------------------------------------------------------------
  IO1_PIN                = 1 ;       // pin 2 J1
  IO2_PIN                = 2 ;       // pin 1 J1
  IO3_PIN                = 3 ;       // pin 3 J1
  IO4_PIN                = 4 ;       // pin 5 J1 (also used for BUS_RD)
  IO5_PIN                = 5 ;       // pin 9 J2 (also used for BUS_WR)
  BUS_RD_PIN             = 4 ;       // pin 5 J1 (alias IO4_PIN)
  BUS_WR_PIN             = 5 ;       // pin 9 J2 (alias IO5_PIN)
  BACKLITE               = 6 ;       // backlite control pin
  AUDIO_ENABLE           = 7 ;       // amplifier chip control pin
  BUS_0                  = 8 ;       // pin 27 of J1
  BUS_1                  = 9 ;       // pin 25 of J1
  BUS_2                  = 10 ;      // pin 23 of J1
  BUS_3                  = 11 ;      // pin 21 of J1
  BUS_4                  = 12 ;      // pin 19 of J1
  BUS_5                  = 13 ;      // pin 17 of J1
  BUS_6                  = 14 ;      // pin 13 of J2
  BUS_7                  = 15 ;      // pin 11 of J2

//------------------------------------------------------------------------------
//gfx_Set() related constants
//------------------------------------------------------------------------------
  PEN_SIZE               = 16 ;      // not necessary to use (legacy mode)
  BACKGROUND_COLOUR      = 17 ;
  OBJECT_COLOUR          = 18 ;      // line / circle / rectangle generic colour
  CLIPPING               = 19 ;      // clipping ON / OFF
  TRANSPARENT_COLOUR     = 20 ;      // (only on displays with specific hware feature)
  TRANSPARENCY           = 21 ;      // 0 = OFF, 1 = ON (only on displays with specific hware feature)
  FRAME_DELAY            = 22 ;      // legacy mode, see pokeB(IMAGE_DELAY, n);
  SCREEN_MODE            = 23 ;      // LANDSCAPE, LANDSCAPE_R, PORTRAIT, PORTRAIT_R
  OUTLINE_COLOUR         = 24 ;      // if not BLACK (0) , used for outline around circles,rectangles and filled polygons
  CONTRAST               = 25 ;      // for OLED,cahnge contrast, for LCD on or off only
  LINE_PATTERN           = 26 ;      // used for patterned lines, 16bit value (0 = no pattern, '1's = pattern)
  COLOUR_MODE            = 27 ;      // select 8 or 16 bit colour mode
  BEVEL_WIDTH            = 28 ;      // button bevel width
  BEVEL_SHADOW           = 29 ;      // button bevel shadow depth
  X_ORIGIN               = 30 ;      // display position X offset
  Y_ORIGIN               = 31 ;      // display position X offset


//gfx_Get() related constants
  X_MAX                  = 0 ;       // current orientations screen maximum X co-ordinate
  Y_MAX                  = 1 ;       // current orientations screen maximum Y co-ordinate
  LEFT_POS               = 2 ;       // last objects left co-ord
  TOP_POS                = 3 ;       // last objects top co-ord
  RIGHT_POS              = 4 ;       // last objects right co-ord
  BOTTOM_POS             = 5 ;       // last objects bottom co-ord
  X_ORG                  = 6 ;       // display position X offset
  Y_ORG                  = 7 ;       // display position X offset




  SOLID                  = 0 ;       // PEN_SIZE
  OUTLINE                = 1 ;       // PEN_SIZE
  STYLE1                 = 2 ;
  STYLE2                 = 3 ;

  LANDSCAPE              = 0 ;       // SCREEN_MODE (north)
  LANDSCAPE_R            = 1 ;       // SCREEN_MODE (south)
  PORTRAIT               = 2 ;       // SCREEN_MODE (west)
  PORTRAIT_R             = 3 ;       // SCREEN_MODE (east)

  COLOUR8                = 1 ;       // COLOUR_MODE 8 bit colour mode (not supported)
  COLOUR16               = 0 ;       // COLOUR_MODE 16 bit colour mode


  DOWN                   = 0 ;
  UP                     = 1 ;
  HIDE                   = 2 ;
  SELECT                 = 3 ;
  SELECT_MULTIPLE        = 4 ;


  BUTTON_DOWN            = 0 ;
  BUTTON_UP              = 1 ;

  SLIDER_SUNKEN          = 0 ;
  SLIDER_RAISED          = 1 ;
  SLIDER_HIDE            = 2 ;

  PROGRESSBAR_RAISED     = $FFFF ;
  PROGRESSBAR_SUNKEN     = $FFFE ;
  PROGRESSBAR_HIDE       = 2 ;

  PANEL_SUNKEN           = 0 ;
  PANEL_RAISED           = 1 ;
  PANEL_HIDE             = 2 ;


//------------------------------------------------------------------------------
//txt_Set() related constants
//------------------------------------------------------------------------------
  TEXT_COLOUR            = 0 ;       // text foreground colr
  TEXT_BACKGROUND        = 1 ;       // text background colr
  TEXT_HIGHLIGHT         = 1 ;       // text background colr
  FONT_ID                = 2 ;       // default 0, else points to data statement font
  FONT_SIZE              = 2 ;       // compatibility
  TEXT_WIDTH             = 3 ;       // text width multiplier
  TEXT_HEIGHT            = 4 ;       // text height multiplier
  TEXT_XGAP              = 5 ;       // horizontal text gap (default 1)
  TEXT_YGAP              = 6 ;       // vertical text gap (default 1)
  TEXT_PRINTDELAY        = 7 ;       // for 'teletype' like effect when printing
  TEXT_OPACITY           = 8 ;       // text mode flag, TRANSPARENT or OPAQUE
  TEXT_BOLD              = 9 ;       // embolden text (auto reset)
  TEXT_ITALIC            = 10 ;      // italicize text (auto reset)
  TEXT_INVERSE           = 11 ;      // invert text (auto reset)
  TEXT_UNDERLINED        = 12 ;      // underline text (auto reset)
  TEXT_ATTRIBUTES        = 13 ;      // controls BOLD/ITALIC/INVERSE/UNDERLINE simultaneously
  TEXT_WRAP              = 14 ;      // Sets the pixel position where text wrap will occur at RHS




//------------------------------------------------------------------------------
//txt_Set() related arguments
// NB:- FONT4 must be inherited if required,
// eg #inherit "FONT4.fnt"
//------------------------------------------------------------------------------
  FONT1                  = 0 ;       // (same as system font)
  FONT2                  = 1 ;
  FONT3                  = 2 ;

  TRANSPARENT            = 0 ;       // TEXT_OPACITY  transparent  text
  OPAQUE                 = 1 ;       // TEXT_OPACITY  opaque text

  BOLD                   = 16 ;      // TEXT_ATTRIBUTES bold text
  ITALIC                 = 32 ;      // TEXT_ATTRIBUTES italic text
  INVERSE                = 64 ;      // TEXT_ATTRIBUTES inverse text
  UNDERLINED             = 128 ;     // TEXT_ATTRIBUTES underlined



//touch_Set() related constants
  TOUCH_ENABLE           = 0 ;
  TOUCH_DISABLE          = 1 ;
  TOUCH_REGIONDEFAULT    = 2 ;

//touch_Get() related constants
  TOUCH_STATUS           = 0 ;
  TOUCH_GETX             = 1 ;
  TOUCH_GETY             = 2 ;
  NOTOUCH                = 0 ;
  TOUCH_PRESSED          = 1 ;
  TOUCH_RELEASED         = 2 ;
  TOUCH_MOVING           = 3 ;

// image control offset related constants
  IMG_COUNT              = 0 ;
  IMG_ENTRYLEN           = 1 ;
  IMG_MODE               = 2 ;
  IMG_GCI_FILENAME       = 3 ;
  IMG_DAT_FILENAME       = 4 ;
  IMG_GCIFILE_HANDLE     = 5 ;

// image attribute flags
// for img_SetAttributes(...) and img_ClearAttributes(...)
  I_ENABLED              = $8000 ;  // bit 15,  set for image enabled
  I_DARKEN               = $4000 ;  // bit 14,  display dimmed
  I_LIGHTEN              = $2000 ;  // bit 13,  display bright
  I_TOUCHED              = $1000 ;  // bit 12,  touch test result
  I_Y_LOCK               = $0800 ;  // bit 11,  stop Y movement
  I_X_LOCK               = $0400 ;  // bit 10,  stop X movement
  I_TOPMOST              = $0200 ;  // bit 9,   draw on top of other images next update (auto reset)
  I_STAYONTOP            = $0100 ;  // bit 8,   draw on top of other images always
  I_MOVIE                = $0080 ;  // bit 7,   image is a movie
  I_NOGROUP              = $0040 ;  // bit 6,   set to exclude image refresh when using img_Show(hndl, ALL);
  I_TOUCH_DISABLE        = $0020 ;  // bit 5,   set to disable touch for this image, default=1 for movie, 0 for image
  I_COLOUR16             = $0010 ;  // bit 4,   indicates 16 bit colour mode
    // bits 0-3 reserved


  ALL                    = $FFFF ;  // argument for img_xxx functions to update all images

// image control entry offsets
  IMAGE_LOWORD           = 0 ;       // WORD image address LO
  IMAGE_HIWORD           = 1 ;       // WORD image address HI
  IMAGE_XPOS             = 2 ;       // WORD image location X
  IMAGE_YPOS             = 3 ;       // WORD image location Y
  IMAGE_WIDTH            = 4 ;       // WORD image width
  IMAGE_HEIGHT           = 5 ;       // WORD image height
  IMAGE_FLAGS            = 6 ;       // WORD image flags
  IMAGE_DELAY            = 7 ;       // WORD inter frame delay
  IMAGE_FRAMES           = 8 ;       // WORD number of frames
  IMAGE_INDEX            = 9 ;       // WORD current frame
  IMAGE_CLUSTER          = 10 ;      // WORD image start cluster  pos (for FAT16 only)
  IMAGE_SECTOR           = 11 ;      // WORD image start sector in cluster pos (for FAT16 only)
  IMAGE_TAG              = 12 ;      // WORD user variable #1
  IMAGE_TAG2             = 13 ;      // WORD user variable #2

// DISK struct offsets
  DISK_FIRST_SECT_LO     = 0 ;       // DWORD address of the first sector of the FAT partition (LO word)
  DISK_FIRST_SECT_HI     = 1 ;       //       address of the first sector of the FAT partition (HI word)
  DISK_FAT_LO            = 2 ;       // DWORD address of FAT (LO word)
  DISK_FAT_HI            = 3 ;       //       address of FAT (HI word)
  DISK_ROOT_LO           = 4 ;       // DWORD address of root directory (LO word)
  DISK_ROOT_HI           = 5 ;       //       address of root directory (HI word)
  DISK_DATA_LO           = 6 ;       // DWORD address of data area (LO word)
  DISK_DATA_HI           = 7 ;       //       address of data area (HI word)
  DISK_MAXCLUS_LO        = 8 ;       // DWORD max number of clusters in partition (LO word)
  DISK_MAXCLUS_HI        = 9 ;       //       max number of clusters in partition (HI word)
  DISK_MAXROOT           = 10 ;      // WORD  max entries in root directory
  DISK_FATSIZE           = 11 ;      // WORD  number of sectors in FAT
  DISK_FATCOPIES         = 12 ;      // WORD  number of fat copies
  DISK_SECT_PER_CLUS     = 13 ;      // WORD  number of sectors per cluster
  DISK_TYPE              = 14 ;      // WORD  type of fat
  DISK_BUF               = 15 ;      // WORD  pointer to 512 byte info buffer




// FILE struct offsets
  FILE_FIRST_CLUSTER     = 0 ;       // WORD  first cluster
  FILE_CURR_CLUSTER      = 1 ;       // WORD  current cluster in file
  FILE_CURR_SECTOR       = 2 ;       // WORD  sector in current cluster
  FILE_CURR_SECTOR_POS   = 3 ;       // WORD  position in current sector
  FILE_CURR_SECTOR_TOP   = 4 ;       // WORD  number bytes in current sector buffer
  FILE_SEEK_POS_LO       = 5 ;       // DWORD position in the file (LO word)
  FILE_SEEK_POS_HI       = 6 ;       //       position in the file (HI word)
  FILE_SIZE_LO           = 7 ;       // DWORD file size (LO word)
  FILE_SIZE_HI           = 8 ;       //       file size (HI word)
  FILE_TIME              = 9 ;       // WORD  last update time
  FILE_DATE              = 10 ;      // WORD  last update date
  FILE_NAME              = 11 ;      // WORD  12 byte buffer for filename
  FILE_MODE              = 17 ;      // WORD  file mode 'r', 'w', 'a'
  FILE_ATTRIBUTES        = 18 ;      // WORD  files attributes
  FILE_PAGEFLAG          = 19 ;      // WORD  cache check flag
  FILE_ENTRY             = 20 ;      // WORD  entry position in cur directory
  FILE_DISK              = 21 ;      // WORD* pointer to DISK mount media structure
  FILE_BUFFER            = 22 ;      // WORD*  sector buffer



// timer control  related constants
  TIMER0                 = 0 ;
  TIMER1                 = 1 ;
  TIMER2                 = 2 ;
  TIMER3                 = 3 ;
  TIMER4                 = 4 ;
  TIMER5                 = 5 ;
  TIMER6                 = 6 ;
  TIMER7                 = 7 ;

// I2C timing related constants
  I2C_SLOW               = 0 ;
  I2C_MED                = 1 ;
  I2C_FAST               = 2 ;


// spi_Init(...)  mode arguments
  SPI_SLOW               = 2 ;       // 750khz
  SPI_MED                = 1 ;       // 3mhz
  SPI_FAST               = 0 ;       // 12mhz
  RXMODE_0               = 0 ;       // receive sample pos
  RXMODE_1               = 1 ;       // receive sample pos
  CKMODE_0               = 0 ;       // transmit sample pos
  CKMODE_1               = 1 ;       // transmit sample pos
  CKMODE_2               = 2 ;       // transmit sample pos
  CKMODE_3               = 3 ;       // transmit sample pos

//------------------------------------------------------------------------------
// system WORD variables accesible with peekW and pokeW or pointer access
// Note that the txt_Set variables (0-15) and gfx_set variables (16-31)
// can also be accessed with peekW and pokeW
//------------------------------------------------------------------------------

  RANDOM_LO              = 32 ;      // random number generator LO word
  RANDOM_HI              = 33 ;      // random number generator LO word
  SYSTEM_TIMER_LO        = 34 ;      // 1msec 32 bit free running timer LO word
  SYSTEM_TIMER_HI        = 35 ;      // 1msec 32 bit free running timer HI word
  TMR0                   = 36 ;      // user timer0
  TMR1                   = 37 ;      // user timer1
  TMR2                   = 38 ;      // user timer2
  TMR3                   = 39 ;      // user timer3 (10msec resolution)
  TMR4                   = 40 ;      // user timer0
  TMR5                   = 41 ;      // user timer1
  TMR6                   = 42 ;      // user timer2
  TMR7                   = 43 ;      // user timer3 (10msec resolution)
  SYS_X_MAX              = 44 ;      // display hardware X res-1
  SYS_Y_MAX              = 45 ;      // display hardware Y res-1
  GFX_XMAX               = 46 ;      // current display width-1 determined by portrait / landscape swapping
  GFX_YMAX               = 47 ;      // current display width-1 determined by portrait / landscape swapping
  GFX_LEFT               = 48 ;      // virtual left point for most recent object
  GFX_TOP                = 49 ;      // virtual top point for most recent object
  GFX_RIGHT              = 50 ;      // virtual right point for most recent object
  GFX_BOTTOM             = 51 ;      // virtual bottom point for most recent object
  GFX_X1                 = 52 ;      // clipped left point for current object
  GFX_Y1                 = 53 ;      // clipped top point for current object
  GFX_X2                 = 54 ;      // clipped right point for current object
  GFX_Y2                 = 55 ;      // clipped bottom point for current object
  GFX_X_ORG              = 56 ;      // current X origin
  GFX_Y_ORG              = 57 ;      // current Y origin
  GFX_HILITE_LINE        = 58 ;      // current multi line button hilite line
  GFX_LINE_COUNT         = 59 ;      // count of lines in multiline button
  GFX_LAST_SELECTION     = 60 ;      // last selected line
  GFX_HILIGHT_BACKGROUND = 61 ;      // multi button hilite background colour
  GFX_HILIGHT_FOREGROUND = 62 ;      // multi button hilite background colour
  GFX_BUTTON_FOREGROUND  = 63 ;      // store default text colour for hilite line tracker
  GFX_BUTTON_BACKGROUND  = 64 ;      // store default button colour for hilite line tracker
  GFX_BUTTON_MODE        = 65 ;      // store current buttons mode
  GFX_TOOLBAR_HEIGHT     = 66 ;      // height above
  GFX_STATUSBAR_HEIGHT   = 67 ;      // height below
  GFX_LEFT_GUTTER_WIDTH  = 68 ;      // width to left
  GFX_RIGHT_GUTTER_WIDTH = 69 ;      // width to right
  GFX_PIXEL_SHIFT        = 70 ;      // pixel shift for button depress illusion (default 1)
  GFX_RECT_X1            = 71 ;      // gp rect, used by multiline button to hilite required line
  GFX_RECT_Y1            = 72 ;
  GFX_RECT_X2            = 73 ;
  GFX_RECT_Y2            = 74 ;
  GFX_THUMB_PERCENT      = 75 ;      // size of slider thumb as percentage
  GFX_THUMB_BORDER_DARK  = 76 ;      // darker shadow of thumb
  GFX_THUMB_BORDER_LIGHT = 77 ;      // lighter shadow of thumb
  TOUCH_XMINCAL          = 78 ;      // touch calibration value
  TOUCH_YMINCAL          = 79 ;      // touch calibration value
  TOUCH_XMAXCAL          = 80 ;      // touch calibration value
  TOUCH_YMAXCAL          = 81 ;      // touch calibration value
  IMG_WIDTH              = 82 ;      // width of currently loaded image
  IMG_HEIGHT             = 83 ;      // height of currently loaded image
  IMG_FRAME_DELAY        = 84 ;      // 0 if image, else inter frame delay for movie
  IMG_FLAGS              = 85 ;      // bit 4 determines colour mode, other bits reserved
  IMG_FRAME_COUNT        = 86 ;      // count of frames in a movie
  IMG_PIXEL_COUNT_LO     = 87 ;      // count of pixels in the current frame
  IMG_PIXEL_COUNT_HI     = 88 ;      // count of pixels in the current frame
  IMG_CURRENT_FRAME      = 89 ;      // last frame shown
  MEDIA_ADDRESS_LO       = 90 ;      // uSD byte address LO
  MEDIA_ADDRESS_HI       = 91 ;      // uSD byte address HI
  MEDIA_SECTOR_LO        = 92 ;      // uSD sector address LO
  MEDIA_SECTOR_HI        = 93 ;      // uSD sector address HI
  MEDIA_SECTOR_COUNT     = 94 ;      // uSD number of bytes remaining in sector
  TEXT_XPOS              = 95 ;      // text current x pixel position
  TEXT_YPOS              = 96 ;      // text current y pixel position
  TEXT_MARGIN            = 97 ;      // text left pixel pos for carriage return
  TXT_FONT_ID            = 98 ;      // font type, 0 = system font, else pointer to user font
  TXT_FONT_MAX           = 99 ;      // max number of chars in font
  TXT_FONT_OFFSET        = 100 ;     // starting offset (normally 0x20)
  TXT_FONT_WIDTH         = 101 ;     // current font width
  TXT_FONT_HEIGHT        = 102 ;     // current font height
  GFX_TOUCH_REGION_X1    = 103 ;     // touch capture region
  GFX_TOUCH_REGION_Y1    = 104 ;
  GFX_TOUCH_REGION_X2    = 105 ;
  GFX_TOUCH_REGION_Y2    = 106 ;
  GFX_CLIP_LEFT_VAL      = 107 ;     // left clipping point (set with gfx_ClipWindow(...)
  GFX_CLIP_TOP_VAL       = 108 ;     // top clipping point (set with gfx_ClipWindow(...)
  GFX_CLIP_RIGHT_VAL     = 109 ;     // right clipping point (set with gfx_ClipWindow(...)
  GFX_CLIP_BOTTOM_VAL    = 110 ;     // bottom clipping point (set with gfx_ClipWindow(...)
  GFX_CLIP_LEFT          = 111 ;     // current clip value (reads full size if clipping turned off)
  GFX_CLIP_TOP           = 112 ;     // current clip value (reads full size if clipping turned off)
  GFX_CLIP_RIGHT         = 113 ;     // current clip value (reads full size if clipping turned off)
  GFX_CLIP_BOTTOM        = 114 ;     // current clip value (reads full size if clipping turned off)
  GRAM_PIXEL_COUNT_LO    = 115 ;     // LO word of count of pixels in the set GRAM area
  GRAM_PIXEL_COUNT_HI    = 116 ;     // HI word of count of pixels in the set GRAM area
  TOUCH_RAW_X            = 117 ;     // 12 bit raw A2D X value from touch screen
  TOUCH_RAW_Y            = 118 ;     // 12 bit raw A2D Y value from touch screen
  GFX_LAST_CHAR_WIDTH    = 119 ;     // calculated char width from last call to charWidth function
  GFX_LAST_CHAR_HEIGHT   = 120 ;     // calculated height from last call to charHeight function
  GFX_LAST_STR_WIDTH     = 121 ;     // calculated width from last call to strWidth function
  GFX_LAST_STR_HEIGHT    = 122 ;     // calculated height from last call to strHeight function

//------------------------------------------------------------------------------
// FILEIO Error Code Constants
//------------------------------------------------------------------------------
  FE_OK                  = 0 ;       // IDE function succeeded
  FE_IDE_ERROR           = 1 ;       // IDE command execution error
  FE_NOT_PRESENT         = 2 ;       // CARD not present
  FE_PARTITION_TYPE      = 3 ;       // WRONG partition type, not FAT16
  FE_INVALID_MBR         = 4 ;       // MBR sector invalid signature
  FE_INVALID_BR          = 5 ;       // Boot Record invalid signature
  FE_DISK_NOT_MNTD       = 6 ;       // Media not mounted
  FE_FILE_NOT_FOUND      = 7 ;       // File not found in open for read
  FE_INVALID_FILE        = 8 ;       // File not open
  FE_FAT_EOF             = 9 ;       // Fat attempt to read beyond EOF
  FE_EOF                 = 10 ;      // Reached the end of file
  FE_INVALID_CLUSTER     = 11 ;      // Invalid cluster value > maxcls
  FE_DIR_FULL            = 12 ;      // All root dir entry are taken
  FE_DISK_FULL           = 13 ;      // All clusters in partition are taken
  FE_FILE_OVERWRITE      = 14 ;      // A file with same name exist already
  FE_CANNOT_INIT         = 15 ;      // Cannot init the CARD
  FE_CANNOT_READ_MBR     = 16 ;      // Cannot read the MBR
  FE_MALLOC_FAILED       = 17 ;      // Malloc could not allocate the FILE struct
  FE_INVALID_MODE        = 18 ;      // Mode was not r.w.
  FE_FIND_ERROR          = 19 ;      // Failure during FILE search
  FE_INVALID_FNAME       = 20 ;      // bad filename
  FE_INVALID_MEDIA       = 21 ;      // bad media
  FE_SECTOR_READ_FAIL    = 22 ;      // sector read failed
  FE_SECTOR_WRITE_FAIL   = 23 ;      // sector write failed

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

