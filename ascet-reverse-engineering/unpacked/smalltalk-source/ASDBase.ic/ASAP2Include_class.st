"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200153e4; bytecode file offset 0x912098"
!ASAP2Include class methodsFor: 'recovered'!
StandardIncludes
    | recoveredValue0 |
    recoveredValue0 := StandardIncludes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a72c; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0
    ^'/*extracted form specification by Ruo/ETAS */
/************* start of XCP on different Transport Layers *******************/

"XCP" struct {

  taggedstruct Common_Parameters ; /* default parameters */

  taggedstruct { /* transport layer specific parameters  */
                 /* overruling of the default parameters */

    block "XCP_ON_CAN" struct {

      struct CAN_Parameters ;                   /* specific for CAN      */
      taggedstruct Common_Parameters;           /* overruling of default */
    
    };

    block "XCP_ON_SxI" struct {

      struct SxI_Parameters ;                   /* specific for SPI      */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

    block "XCP_ON_TCP_IP" struct {

      struct TCP_IP_Parameters ;                /* specific for TCP_IP   */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

    block "XCP_ON_UDP_IP" struct {

      struct UDP_IP_Parameters ;                /* specific for UDP      */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

    block "XCP_ON_USB" struct {

      struct USB_Parameters ;                   /* specific for USB      */
      taggedstruct Common_Parameters;           /* overruling of default */

    };

  };

};/************* end of XCP on different Transport Layers ********************/

'
! !

"ASDBase.ic method 0x2001c6dc; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_on_TCP_IP
    ^'/*extracted form specification by Ruo/ETAS */
/************************************************************************************/
/*                                                                                  */
/* ASAP2 meta language for XCP on TCP_IP V1.0                                       */
/*                                                                                  */
/* 2003-03-03                                                                       */
/*                                                                                  */
/* Vector Informatik, Schuermans                                                    */
/*                                                                                  */
/* Datatypes:                                                                       */
/*                                                                                  */
/* A2ML  ASAP2             Windows    description                                   */
/* -------------------------------------------------------------------------------- */
/* uchar UBYTE             BYTE       unsigned 8 Bit                                */
/* char  SBYTE             char       signed 8 Bit                                  */
/* uint  UWORD             WORD       unsigned integer 16 Bit                       */
/* int   SWORD             int        signed integer 16 Bit                         */
/* ulong ULONG             DWORD      unsigned integer 32 Bit                       */
/* long  SLONG             LONG       signed integer 32 Bit                         */
/* float FLOAT32_IEEE                 float 32 Bit                                  */
/*                                                                                  */
/************************************************************************************/

/************************ start of TCP_IP ***********************************/

struct TCP_IP_Parameters { /* at MODULE */

   uint;                                           /* XCP on TCP_IP version */
                                                   /* e.g. "1.0" = 0x0100   */
   uint;                                           /* PORT */
   taggedunion {
     "HOST_NAME" char[256];
     "ADDRESS" char[15];
   };
};/************************* end of TCP_IP ***********************************/

'
! !

"ASDBase.ic method 0x2001c8a4; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_on_UDP_IP
    ^'/*extracted form specification by Ruo/ETAS */
/************************************************************************************/
/*                                                                                  */
/* ASAP2 meta language for XCP on TCP_IP V1.0                                       */
/*                                                                                  */
/* 2003-03-03                                                                       */
/*                                                                                  */
/* Vector Informatik, Schuermans                                                    */
/*                                                                                  */
/* Datatypes:                                                                       */
/*                                                                                  */
/* A2ML  ASAP2             Windows    description                                   */
/* -------------------------------------------------------------------------------- */
/* uchar UBYTE             BYTE       unsigned 8 Bit                                */
/* char  SBYTE             char       signed 8 Bit                                  */
/* uint  UWORD             WORD       unsigned integer 16 Bit                       */
/* int   SWORD             int        signed integer 16 Bit                         */
/* ulong ULONG             DWORD      unsigned integer 32 Bit                       */
/* long  SLONG             LONG       signed integer 32 Bit                         */
/* float FLOAT32_IEEE                 float 32 Bit                                  */
/*                                                                                  */
/************************************************************************************/

/************************** start of UDP_IP ************************************/
struct UDP_IP_Parameters { /* at MODULE */
   uint;                                              /* XCP on UDP_IP version */
                                                      /* e.g. "1.0" = 0x0100   */
   uint;                                              /* PORT */
   taggedunion {
     "HOST_NAME" char[256];
     "ADDRESS" char[15];
   };
};/*************************** end of UDP_IP ***********************************/
'
! !

"ASDBase.ic method 0x2001dedc; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
keyWord
    ^'/include'
! !

"ASDBase.ic method 0x2001def4; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_on_CAN
    ^'/*extracted form specification by Ruo/ETAS */
/************************************************************************************/
/*                                                                                  */
/* ASAP2 meta language for XCP on CAN V1.0                                          */
/*                                                                                  */
/*   2003-03-03                                                                     */ 
/*                                                                                  */ 
/*   Vector Informatik, Schuermans                                                  */ 
/*                                                                                  */ 
/*   Datatypes:                                                                     */ 
/*                                                                                  */ 
/*   A2ML       ASAP2             Windows      description                          */ 
/*   --------------------------------------------------------------------------     */ 
/*   uchar      UBYTE             BYTE         unsigned 8 Bit                       */ 
/*   char       SBYTE             char         signed 8 Bit                         */ 
/*   uint       UWORD             WORD         unsigned integer 16 Bit              */ 
/*   int        SWORD             int          signed integer 16 Bit                */ 
/*   ulong      ULONG             DWORD        unsigned integer 32 Bit              */ 
/*   long       SLONG             LONG         signed integer 32 Bit                */ 
/*   float      FLOAT32_IEEE                   float 32 Bit                         */ 
/*                                                                                  */ 
/************************************************************************************/ 


/************************ start of CAN **********************************************/
struct CAN_Parameters { /* At MODULE */
   uint;                                                     /* XCP on CAN version  */
                                                             /* e.g. "1.0" = 0x0100 */
   taggedstruct { /* optional */
     "CAN_ID_BROADCAST" ulong;                             /* Auto detection CAN-ID */
                                                           /* master -> slaves      */
                                                           /* Bit31= 1: extended identifier */

     "CAN_ID_MASTER" ulong;                                /* CMD/STIM CAN-ID */
                                                           /* master -> slave */
                                                           /* Bit31= 1: extended identifier */

     "CAN_ID_SLAVE" ulong;                                 /* RES/ERR/EV/SERV/DAQ CAN-ID    */
                                                           /* slave -> master               */
                                                           /* Bit31= 1: extended identifier */

     "BAUDRATE" ulong;                                     /* BAUDRATE [Hz] */
     "SAMPLE_POINT" uchar;                                 /* sample point */
                                                           /* [% complete bit time] */
     "SAMPLE_RATE" enum {
                          "SINGLE" = 1,                    /* 1 sample per bit  */
                          "TRIPLE" = 3                     /* 3 samples per bit */
                        };

     "BTL_CYCLES" uchar;                                   /* BTL_CYCLES */
                                                           /* [slots per bit time] */
     "SJW" uchar;                                          /* length synchr. segment */
                                                           /* [BTL_CYCLES] */
     "SYNC_EDGE" enum {
                        "SINGLE" = 1,                      /* on falling edge only */
                        "DUAL"   = 2                       /* on falling and rising edge */
                      };
     "MAX_DLC_REQUIRED";                                   /* master to slave frames */
                                                           /* always to have DLC = MAX_DLC = 8 */



(block "DAQ_LIST_CAN_ID" struct { /* At IF_DATA DAQ */
   uint;                                                   /* reference to DAQ_LIST_NUMBER */
   taggedstruct { /* exclusive tags */
                                                           /* either VARIABLE or FIXED */
      "VARIABLE";
      "FIXED"       ulong;                                 /* this DAQ_LIST always */
                                                           /* on this CAN_ID */
   };
})*;
};
};/************************* end of CAN ***********************************/'
! !

"ASDBase.ic method 0x200211f4; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_definitions
    ^'/*extracted form specification by Ruo/ETAS */
/****************************************************************************/
/*                                                                          */
/*   ASAP2 meta language for XCP protocol V1.0                              */
/*                                                                          */
/*   AML v1.0, 10.18.2002                                                   */
/*                                                                          */
/*   Vector Informatik, Schuermans                                          */
/*                                                                          */
/*   Datatypes:                                                             */
/*                                                                          */
/*   A2ML       ASAP2          Windows  description                         */
/*   ----------------------------------------------------------------       */
/*   uchar      UBYTE          BYTE     unsigned 8 Bit                      */
/*   char       SBYTE          char     signed 8 Bit                        */
/*   uint       UWORD          WORD     unsigned integer 16 Bit             */
/*   int        SWORD          int      signed integer 16 Bit               */
/*   ulong      ULONG          DWORD    unsigned integer 32 Bit             */
/*   long       SLONG          LONG     signed integer 32 Bit               */
/*   float      FLOAT32_IEEE            float 32 Bit                        */
/*                                                                          */
/****************************************************************************/

/************************ start of XCP definitions **************************/

/include XCP_v1_0_common.aml     /* Part 2 protocol layer part     */

/include XCP_v1_0_on_CAN.aml     /* Part 3 transport layer part    */
/include XCP_v1_0_on_SxI.aml
/include XCP_v1_0_on_TCP_IP.aml
/include XCP_v1_0_on_UDP_IP.aml
/include XCP_v1_0_on_USB.aml

/************************ end of XCP definitions ****************************/

'
! !

"ASDBase.ic method 0x200231e0; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_on_USB
    ^'/*extracted form specification by Ruo/ETAS */
/************************************************************************************/ 
/*                                                                                  */ 
/*   ASAP2 meta language for XCP protocol layer V1.0                                */ 
/*                                                                                  */ 
/*   2003-12-16                                                                     */ 
/*                                                                                  */ 
/*   XCP on USB working group                                                       */ 
/*                                                                                  */ 
/*   Datatypes:                                                                     */ 
/*                                                                                  */ 
/*   A2ML       ASAP2             Windows      description                          */ 
/*   --------------------------------------------------------------------------     */ 
/*   uchar      UBYTE             BYTE         unsigned 8 Bit                       */ 
/*   char       SBYTE             char         signed 8 Bit                         */ 
/*   uint       UWORD             WORD         unsigned integer 16 Bit              */ 
/*   int        SWORD             int          signed integer 16 Bit                */ 
/*   ulong      ULONG             DWORD        unsigned integer 32 Bit              */ 
/*   long       SLONG             LONG         signed integer 32 Bit                */ 
/*   float      FLOAT32_IEEE                   float 32 Bit                         */ 
/*                                                                                  */ 
/************************************************************************************/

/************************ start of USB **************************************/ 

struct ep_parameters { 
  uchar;                                   /* ENDPOINT_NUMBER, not endpoint address */ 
  enum { 

         "BULK_TRANSFER"      = 2,         /* Numbers according to USB spec. */ 
         "INTERRUPT_TRANSFER" = 3 
     }; 

  uint;                                    /* wMaxPacketSize: Maximum packet */ 
                                           /* size of endpoint in bytes */ 

  uchar;                                   /* bInterval: polling of endpoint */ 

  enum { /* Packing of XCP Messages */ 

    "MESSAGE_PACKING_SINGLE"    = 0,      /*     Single per USB data packet */ 
    "MESSAGE_PACKING_MULTIPLE"  = 1,      /*   Multiple per USB data packet */ 
    "MESSAGE_PACKING_STREAMING" = 2       /* No restriction by packet sizes */ 
  } ; 

  enum { /* Alignment mandatory for all */ 

    "ALIGNMENT_8_BIT" = 0,                /* packing types */ 
    "ALIGNMENT_16_BIT"= 1, 
    "ALIGNMENT_32_BIT"= 2, 
    "ALIGNMENT_64_BIT"= 3 
  }; 

  taggedstruct { /* Optional */ 
    "RECOMMENDED_HOST_BUFSIZE" uint;       /* Recommended size for the host */ 
                                           /* buffer size. The size is defined*/ 
                                           /* as multiple of wMaxPacketSize. */ 
  } ; 

}; /* end of ep_parameters */ 


struct USB_Parameters { 

     uint;                                      /* XCP on USB version */ 
                                                /* e.g. 1.0 = 0x0100 */

     uint;                                      /* Vendor ID * / 
     uint;                                      /* Product ID * / 

     uchar;                                     /* Number of interface */ 

     enum { 

       "HEADER_LEN_BYTE"      = 0, 
       "HEADER_LEN_CTR_BYTE"  = 1, 
       "HEADER_LEN_FILL_BYTE" = 2, 
       "HEADER_LEN_WORD"      = 3, 
       "HEADER_LEN_CTR_WORD"  = 4, 
       "HEADER_LEN_FILL_WORD" = 5 
     }; 

     /* OUT-EP for CMD and */ 
     /* STIM (additional USB Endpoints may also be specified) */ 

taggedunion { 
        block "OUT_EP_CMD_STIM" struct ep_parameters; 
   }; 

/* IN-EP for RES/ERR, * / 
/* DAQ (additional USB Endpoints may also be specified) */ 
/* and EV/SERV (if not specified otherwise) */ 
taggedunion { 

   block "IN_EP_RESERR_DAQ_EVSERV" struct ep_parameters;
}; 

/* ----------- Begin of optional ------- */ 

taggedstruct { /* Optional */ 

   "ALTERNATE_SETTING_NO" uchar;            /* Number of alternate setting */ 
                                            /* String Descriptor of XCP */ 
                                            /* interface * / 

   "INTERFACE_STRING_DESCRIPTOR" char [101]; 
                                            /* multiple OUT-EP"s for STIM */ 
   (block "OUT_EP_ONLY_STIM" struct ep_parameters)*; 
                                            /* multiple IN-EP"s for DAQ */ 
   (block "IN_EP_ONLY_DAQ" struct ep_parameters)*; 
                                            /* only one IN-EP for EV/SERV */ 
   block "IN_EP_ONLY_EVSERV" struct ep_parameters; 
                                            /* Not associated DAQ-Lists are assigned per default to */ 
                                            /* OUT_EP_CD_STIM/IN_EP_RESERR_DAQ_EVSERV */ 

   (block "DAQ_LIST_USB_ENDPOINT" struct { 

      uint; /* reference to DAQ_LIST_NUMBER */ 
      taggedstruct { /* only mentioned if not VARIABLE */ 
         "FIXED_IN" uchar;                  /* this DAQ list always */ 
                                            /* ENDPOINT_NUMBER, not endpoint address */ 

         "FIXED_OUT" uchar;                 /* this STIM list always */ 
                                            /* ENDPOINT_NUMBER, not endpoint address */ 
      } ; 
   })*;                                     /* end of DAQ_LIST_USB_ENDPOINT */ 
}; /* end of optional */ 

};/************************* end of USB ***********************************/ 

'
! !

"ASDBase.ic method 0x20024ad0; bytecode file offset 0x92209c"
!ASAP2Include class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'objects:' 'hashId:')
! !

"ASDBase.ic method 0x200258d0; bytecode file offset 0x923928"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_common
    ^'/*extracted form specification by Ruo/ETAS */
/************************************************************************************/ 
/*                                                                                  */ 
/*   ASAP2 meta language for XCP protocol layer V1.0                                */ 
/*                                                                                  */ 
/*   2003-03-03                                                                     */ 
/*                                                                                  */ 
/*   Vector Informatik, Schuermans                                                  */ 
/*                                                                                  */ 
/*   Datatypes:                                                                     */ 
/*                                                                                  */ 
/*   A2ML       ASAP2             Windows      description                          */ 
/*   --------------------------------------------------------------------------     */ 
/*   uchar      UBYTE             BYTE         unsigned 8 Bit                       */ 
/*   char       SBYTE             char         signed 8 Bit                         */ 
/*   uint       UWORD             WORD         unsigned integer 16 Bit              */ 
/*   int        SWORD             int          signed integer 16 Bit                */ 
/*   ulong      ULONG             DWORD        unsigned integer 32 Bit              */ 
/*   long       SLONG             LONG         signed integer 32 Bit                */ 
/*   float      FLOAT32_IEEE                   float 32 Bit                         */ 
/*                                                                                  */ 
/************************************************************************************/ 


/*********************** start of PROTOCOL_LAYER ****************************/ 
 
struct Protocol_Layer {     /* At MODULE */ 
 
  uint;                               /* XCP protocol layer version     */ 
                                      /* e.g. "1.0" = 0x0100            */ 
 
  uint;                                /* T1 [ms] */ 
  uint;                                /* T2 [ms] */ 
  uint;                                /* T3 [ms] */ 
  uint;                                /* T4 [ms] */ 
  uint;                                /* T5 [ms] */ 
  uint;                                /* T6 [ms] */ 
  uint;                                /* T7 [ms] */ 
 
  uchar;                               /* MAX_CTO */ 
  uint;                                /* MAX_DTO */ 
 
  enum {                               /* BYTE_ORDER */ 
    "BYTE_ORDER_MSB_LAST"  = 0, 
    "BYTE_ORDER_MSB_FIRST" = 1 
  }; 
 
  enum {                               /* ADDRESS_GRANULARITY */ 
    "ADDRESS_GRANULARITY_BYTE"    = 1, 
    "ADDRESS_GRANULARITY_WORD"    = 2, 
    "ADDRESS_GRANULARITY_DWORD"   = 4 
  }; 
 
  taggedstruct {                       /* optional                     */ 
     
    ("OPTIONAL_CMD" enum {             /* XCP-Code of optional command */  
                                       /* supported by the slave       */ 
 
      "GET_COMM_MODE_INFO"       = 0xFB, 
      "GET_ID"                   = 0xFA, 
      "SET_REQUEST"              = 0xF9, 
      "GET_SEED"                 = 0xF8, 
      "UNLOCK"                   = 0xF7, 
      "SET_MTA"                  = 0xF6, 
      "UPLOAD"                   = 0xF5, 
      "SHORT_UPLOAD"             = 0xF4, 
      "BUILD_CHECKSUM"           = 0xF3, 
      "TRANSPORT_LAYER_CMD"      = 0xF2, 
      "USER_CMD"                 = 0xF1, 
      "DOWNLOAD"                 = 0xF0, 
      "DOWNLOAD_NEXT"            = 0xEF, 
      "DOWNLOAD_MAX"             = 0xEE, 
      "SHORT_DOWNLOAD"           = 0xED, 
      "MODIFY_BITS"              = 0xEC, 
      "SET_CAL_PAGE"             = 0xEB, 
      "GET_CAL_PAGE"             = 0xEA, 
      "GET_PAG_PROCESSOR_INFO"   = 0xE9, 
      "GET_SEGMENT_INFO"         = 0xE8, 
      "GET_PAGE_INFO"            = 0xE7, 
      "SET_SEGMENT_MODE"         = 0xE6, 
      "GET_SEGMENT_MODE"         = 0xE5, 
      "COPY_CAL_PAGE"            = 0xE4, 
      "CLEAR_DAQ_LIST"           = 0xE3, 
      "SET_DAQ_PTR"              = 0xE2, 
      "WRITE_DAQ"                = 0xE1, 
      "SET_DAQ_LIST_MODE"        = 0xE0, 
      "GET_DAQ_LIST_MODE"        = 0xDF, 
      "START_STOP_DAQ_LIST"      = 0xDE, 
      "START_STOP_SYNCH"         = 0xDD, 
      "GET_DAQ_CLOCK"            = 0xDC, 
      "READ_DAQ"                 = 0xDB, 
      "GET_DAQ_PROCESSOR_INFO"   = 0xDA, 
      "GET_DAQ_RESOLUTION_INFO"  = 0xD9, 
      "GET_DAQ_LIST_INFO"        = 0xD8, 
      "GET_DAQ_EVENT_INFO"       = 0xD7, 
      "FREE_DAQ"                 = 0xD6, 
      "ALLOC_DAQ"                = 0xD5, 
      "ALLOC_ODT"                = 0xD4, 
      "ALLOC_ODT_ENTRY"          = 0xD3, 
      "PROGRAM_START"            = 0xD2, 
      "PROGRAM_CLEAR"            = 0xD1, 
      "PROGRAM"                  = 0xD0, 
      "PROGRAM_RESET"            = 0xCF, 
      "GET_PGM_PROCESSOR_INFO"   = 0xCE, 
      "GET_SECTOR_INFO"          = 0xCD, 
      "PROGRAM_PREPARE"          = 0xCC, 
      "PROGRAM_FORMAT"           = 0xCB, 
      "PROGRAM_NEXT"             = 0xCA, 
      "PROGRAM_MAX"              = 0xC9, 
      "PROGRAM_VERIFY"           = 0xC8 
 
    })*;           
                                        
    "COMMUNICATION_MODE_SUPPORTED" taggedunion { /* optional modes supported */ 
 
       "BLOCK" taggedstruct { 
 
          "SLAVE";                  /* Slave Block Mode supported  */ 
 
          "MASTER" struct {         /* Master Block Mode supported */ 
             uchar;  /* MAX_BS */ 
             uchar;  /* MIN_ST */ 
          }; 
       }; 
 
       "INTERLEAVED" uchar;    /* QUEUE_SIZE */  
    }; 
 
    "SEED_AND_KEY_EXTERNAL_FUNCTION" char[256];  /* Name of the Seed&Key function */ 
                                                 /* including file extension      */ 
                                                 /* without path                  */ 
  }; 
 
}; /********************* end of PROTOCOL_LAYER *****************************/ 
 
/***************************** start of DAQ *********************************/ 

struct Daq {                         /* DAQ supported, at MODULE*/ 
 
  enum {                             /* DAQ_CONFIG_TYPE */ 
    "STATIC"  = 0, 
    "DYNAMIC" = 1 
  }; 
 
  uint;                               /* MAX_DAQ */ 
  uint;                               /* MAX_EVENT_CHANNEL */ 
  uchar;                              /* MIN_DAQ */ 
 
  enum {                            /* OPTIMISATION_TYPE */ 
    "OPTIMISATION_TYPE_DEFAULT"            = 0, 
    "OPTIMISATION_TYPE_ODT_TYPE_16"        = 1, 
    "OPTIMISATION_TYPE_ODT_TYPE_32"        = 2, 
    "OPTIMISATION_TYPE_ODT_TYPE_64"        = 3, 
    "OPTIMISATION_TYPE_ODT_TYPE_ALIGNMENT" = 4, 
    "OPTIMISATION_TYPE_MAX_ENTRY_SIZE"     = 5 
  }; 
 
  enum {                           /* ADDRESS_EXTENSION */ 
    "ADDRESS_EXTENSION_FREE" = 0, 
    "ADDRESS_EXTENSION_ODT"  = 1, 
    "ADDRESS_EXTENSION_DAQ"  = 3 
  }; 
 
 
  enum {                           /* IDENTIFICATION_FIELD */ 
    "IDENTIFICATION_FIELD_TYPE_ABSOLUTE"              = 0, 
    "IDENTIFICATION_FIELD_TYPE_RELATIVE_BYTE"         = 1, 
    "IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD"         = 2, 
    "IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD_ALIGNED" = 3 
  }; 
   
 
  enum {                        /* GRANULARITY_ODT_ENTRY_SIZE_DAQ */ 
    "GRANULARITY_ODT_ENTRY_SIZE_DAQ_BYTE"    = 1, 
    "GRANULARITY_ODT_ENTRY_SIZE_DAQ_WORD"    = 2, 
    "GRANULARITY_ODT_ENTRY_SIZE_DAQ_DWORD"   = 4, 
    "GRANULARITY_ODT_ENTRY_SIZE_DAQ_DLONG"   = 8 
  }; 
 
  uchar;                              /* MAX_ODT_ENTRY_SIZE_DAQ */ 
 
  enum {                              /* OVERLOAD_INDICATION */ 
    "NO_OVERLOAD_INDICATION"    = 0, 
    "OVERLOAD_INDICATION_PID"   = 1, 
    "OVERLOAD_INDICATION_EVENT" = 2 
  }; 
 
  taggedstruct {                      /* optional */ 
    "PRESCALER_SUPPORTED"; 
    "RESUME_SUPPORTED"; 
 
    block "STIM" struct {             /* STIM supported */ 
 
      enum {                      /* GRANULARITY_ODT_ENTRY_SIZE_STIM */ 
        "GRANULARITY_ODT_ENTRY_SIZE_STIM_BYTE"   = 1, 
        "GRANULARITY_ODT_ENTRY_SIZE_STIM_WORD"   = 2, 
        "GRANULARITY_ODT_ENTRY_SIZE_STIM_DWORD"  = 4, 
        "GRANULARITY_ODT_ENTRY_SIZE_STIM_DLONG"  = 8 
      }; 
 
      uchar;                          /* MAX_ODT_ENTRY_SIZE_STIM */ 
 
      taggedstruct {                  /* bitwise stimulation */ 
        "BIT_STIM_SUPPORTED"; 
      }; 
 
    }; 
           
    block "TIMESTAMP_SUPPORTED" struct {  
 
      uint;                           /* TIMESTAMP_TICKS */ 
 
      enum { /* TIMESTAMP_SIZE */ 
        "NO_TIME_STAMP" = 0, 
        "SIZE_BYTE"     = 1, 
        "SIZE_WORD"     = 2, 
        "SIZE_DWORD"    = 4 
      }; 
      enum { /* RESOLUTION OF TIMESTAMP */ 
        "UNIT_1NS"   = 0, 
        "UNIT_10NS"  = 1, 
        "UNIT_100NS" = 2, 
        "UNIT_1US"   = 3, 
        "UNIT_10US"  = 4, 
        "UNIT_100US" = 5, 
        "UNIT_1MS"   = 6, 
        "UNIT_10MS"  = 7, 
        "UNIT_100MS" = 8, 
        "UNIT_1S"    = 9 
      }; 
 
      taggedstruct { 
        "TIMESTAMP_FIXED"; 
      }; 
 
    }; 
 
    "PID_OFF_SUPPORTED"; 
 
    /************************ start of DAQ_LIST *************************/ 
 
    (block "DAQ_LIST" struct {          /* DAQ_LIST                    */ 
                                        /* multiple possible           */ 
      uint;                             /* DAQ_LIST_NUMBER             */ 
 
      taggedstruct {                            /* optional */ 
 
        "DAQ_LIST_TYPE" enum {               
          "DAQ"      = 1,               /* DIRECTION = DAQ only     */ 
          "STIM"     = 2,               /* DIRECTION = STIM only    */ 
          "DAQ_STIM" = 3                /* both directions possible */ 
                                        /* but not simultaneously   */ 
        }; 
 
        "MAX_ODT"         uchar;        /* MAX_ODT         */ 
        "MAX_ODT_ENTRIES" uchar;        /* MAX_ODT_ENTRIES */ 
 
        "FIRST_PID" uchar;              /* FIRST_PID for this DAQ_LIST */ 
        "EVENT_FIXED" uint;             /* this DAQ_LIST always        */ 
                                        /* in this event               */ 

        block "PREDEFINED" taggedstruct { /* predefined                */ 
                                          /* not configurable DAQ_LIST */ 
           (block "ODT" struct { 
                   uchar;                   /* ODT number */ 
                   taggedstruct { 
                       ("ODT_ENTRY" struct { 
                                   uchar;   /* ODT_ENTRY number            */ 
                                   ulong;   /* address of element                 */ 
                                   uchar;   /* address extension of element */ 
                                   uchar;   /* size of element [AG]                */ 
                                   uchar;   /* BIT_OFFSET                          */ 
                         })*; 
                   }; /* end of ODT_ENTRY */ 
            })*; /* end of ODT */ 
         }; /* end of PREDEFINED */ 
      }; 
    })*;/********************* end of DAQ_LIST ***************************/ 
 
    /************************* start of EVENT ****************************/ 
   
    (block "EVENT" struct {             /* EVENT               */ 
                                        /* multiple possible   */ 
      char[101];                        /* EVENT_CHANNEL_NAME       */ 
      char[9];                          /* EVENT_CHANNEL_SHORT_NAME */ 
      uint;                             /* EVENT_CHANNEL_NUMBER     */ 
   
      enum { 
        "DAQ"      = 1,                 /* only DAQ_LISTs         */ 
                                        /* with DIRECTION = DAQ   */ 
        "STIM"     = 2,                 /* only DAQ_LISTs         */ 
                                        /* with DIRECTION = STIM  */ 
        "DAQ_STIM" = 3                  /* both kind of DAQ_LISTs */ 
      }; 
   
      uchar;                            /* MAX_DAQ_LIST */ 
      uchar;                            /* TIME_CYCLE   */ 
      uchar;                            /* TIME_UNIT    */ 
      uchar;                            /* PRIORITY     */ 
   
    })*;/******************** end of EVENT ********************************/ 
 
  }; /* end of optional at DAQ */ 
 
}; /************************* end of DAQ *************************************/ 
 
 
/**************************** start of DAQ_EVENT *****************************/ 
 
taggedunion Daq_Event {         /* at MEASUREMENT */ 
   "FIXED_EVENT_LIST" taggedstruct { 
                                     ("EVENT" uint)* ; 
                                   }; 
   "VARIABLE" taggedstruct { 
        block "AVAILABLE_EVENT_LIST" taggedstruct { 
                                                    ("EVENT" uint)*; 
                                                  }; 
        block "DEFAULT_EVENT_LIST" taggedstruct   { 
                                                    ("EVENT" uint)*; 
                                                  }; 
   }; 
}; /************************* end of DAQ_EVENT *******************************/ 
 
 
/**************************** start of PAG ***********************************/ 
 
struct Pag {                  /* PAG supported, at MODULE */ 
 
  uchar;                      /* MAX_SEGMENTS */ 
 
  taggedstruct {              /* optional */ 
    "FREEZE_SUPPORTED"; 
  }; 
 
}; /************************* end of PAG *************************************/ 
       
 
/**************************** start of PGM ***********************************/ 
 
struct Pgm {                  /* PGM supported, at MODULE */ 
 
  enum { 
    "PGM_MODE_ABSOLUTE"                = 1, 
    "PGM_MODE_FUNCTIONAL"              = 2, 
    "PGM_MODE_ABSOLUTE_AND_FUNCTIONAL" = 3 
  }; 
 
  uchar;                               /* MAX_SECTORS */ 
 
  uchar;                               /* MAX_CTO_PGM */ 

  taggedstruct {                       /* optional                */ 
 
    (block "SECTOR" struct {           /* SECTOR                  */ 
                                       /* multiple possible       */ 
      char[101];                       /* SECTOR_NAME             */ 
      uchar;                           /* SECTOR_NUMBER           */ 
 
      ulong;                           /* Address                 */ 
      ulong;                           /* Length                  */ 
 
      uchar;                           /* CLEAR_SEQUENCE_NUMBER   */ 
      uchar;                           /* PROGRAM_SEQUENCE_NUMBER */ 
 
      uchar;                           /* PROGRAM_METHOD          */ 
 
    })*; /* end of SECTOR */ 
 
                                        
    "COMMUNICATION_MODE_SUPPORTED" taggedunion { /* optional modes supported */ 
 
       "BLOCK" taggedstruct { 
 
          "SLAVE";                  /* Slave Block Mode supported  */ 
          "MASTER" struct {         /* Master Block Mode supported */ 
 
             uchar;  /* MAX_BS_PGM */ 
             uchar;  /* MIN_ST_PGM */ 
 
          }; 
       }; 
 
     "INTERLEAVED" uchar;    /* QUEUE_SIZE_PGM */  
     }; 
 
  }; 
}; /************************** end of PGM *************************************/ 
 
 
/***************************** start of SEGMENT *******************************/ 
 
struct Segment {               /* at MEMORY_SEGMENT */ 
 
  uchar;                               /* SEGMENT_NUMBER     */ 
  uchar;                               /* number of pages    */ 
  uchar;                               /* ADDRESS_EXTENSION  */ 
 
  uchar;                               /* COMPRESSION_METHOD */ 
  uchar;                               /* ENCRYPTION_METHOD  */ 
 
  taggedstruct {                       /* optional           */ 
 
    block "CHECKSUM" struct { 
         
      enum {                           /* checksum type      */ 
        "XCP_ADD_11"       =   1, 
        "XCP_ADD_12"       =   2, 
        "XCP_ADD_14"       =   3, 
        "XCP_ADD_22"       =   4, 
        "XCP_ADD_24"       =   5, 
        "XCP_ADD_44"       =   6, 
        "XCP_CRC_16"       =   7, 
        "XCP_CRC_16_CITT"  =   8, 
        "XCP_CRC_32"       =   9, 
        "XCP_USER_DEFINED" = 255 
      }; 
 
      taggedstruct { 
        "MAX_BLOCK_SIZE"              ulong ;    /* maximum block size            */ 
                                                 /* for checksum calculation      */ 
        "EXTERNAL_FUNCTION" char[256];           /* Name of the Checksum function */ 
                                                 /* including file extension      */ 
                                                 /* without path                  */ 
      }; 
 
    }; 
 
    (block "PAGE" struct {               /* PAGES for this SEGMENT */ 
                                         /* multiple possible      */ 
      uchar;                             /* PAGE_NUMBER            */ 
 
      enum {            /* ECU_ACCESS_TYPE */ 
          "ECU_ACCESS_NOT_ALLOWED"      = 0, 
          "ECU_ACCESS_WITHOUT_XCP_ONLY" = 1, 
          "ECU_ACCESS_WITH_XCP_ONLY"    = 2, 
          "ECU_ACCESS_DONT_CARE"        = 3 
       }; 
 
      enum {       /* XCP_READ_ACCESS_TYPE */ 
          "XCP_READ_ACCESS_NOT_ALLOWED"      = 0, 
          "XCP_READ_ACCESS_WITHOUT_ECU_ONLY" = 1, 
          "XCP_READ_ACCESS_WITH_ECU_ONLY"    = 2, 
          "XCP_READ_ACCESS_DONT_CARE"        = 3 
       }; 
 
      enum {      /* XCP_WRITE_ACCESS_TYPE */ 
          "XCP_WRITE_ACCESS_NOT_ALLOWED"      = 0, 
          "XCP_WRITE_ACCESS_WITHOUT_ECU_ONLY" = 1, 
          "XCP_WRITE_ACCESS_WITH_ECU_ONLY"    = 2, 
          "XCP_WRITE_ACCESS_DONT_CARE"        = 3 
      }; 
 
      taggedstruct { 
        "INIT_SEGMENT" uchar; /* references segment that initialises this page */ 
      }; 
 
    })*; /* end of PAGE */                 
 
    (block "ADDRESS_MAPPING" struct {  /* multiple possible   */ 
                         ulong;        /* source address      */ 
                         ulong;        /* destination address */ 
                         ulong;        /* length              */ 
    })*; 
 
    "PGM_VERIFY" ulong; /* verification value for PGM */ 
 
  }; /* end of optional */ 
 
}; /************************** end of SEGMENT *********************************/ 
 
/*********************** start of Common Parameters ***************************/ 
 
taggedstruct Common_Parameters {  
 
  block "PROTOCOL_LAYER" struct Protocol_Layer; 
 
  block "SEGMENT" struct Segment; 
 
  block "DAQ" struct Daq; 
  block "PAG" struct Pag; 
  block "PGM" struct Pgm; 
 
  block "DAQ_EVENT" taggedunion Daq_Event; 
 
}; /******************** end of Common Parameters *****************************/ 
 
'
! !

"ASDBase.ic method 0x20026344; bytecode file offset 0x923928"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_flat
    ^'
struct Protocol_Layer { 

 

 uint; 

 

 

 uint; 

 uint; 

 uint; 

 uint; 

 uint; 

 uint; 

 uint; 

 

 uchar; 

 uint; 

 

 enum { 

 "BYTE_ORDER_MSB_LAST" = 0,

 "BYTE_ORDER_MSB_FIRST" = 1 

 }; 

 

 enum { 

 "ADDRESS_GRANULARITY_BYTE" = 1,

 "ADDRESS_GRANULARITY_WORD" = 2,

 "ADDRESS_GRANULARITY_DWORD" = 4

 }; 

 

 taggedstruct { 

 

 ("OPTIONAL_CMD" enum { 

 

 

 "GET_COMM_MODE_INFO" = 0xFB,

 "GET_ID" = 0xFA,

 "SET_REQUEST" = 0xF9,

 "GET_SEED" = 0xF8,

 "UNLOCK" = 0xF7,

 "SET_MTA" = 0xF6,

 "UPLOAD" = 0xF5,

 "SHORT_UPLOAD" = 0xF4,

 "BUILD_CHECKSUM" = 0xF3,

 "TRANSPORT_LAYER_CMD" = 0xF2,

 "USER_CMD" = 0xF1,

 "DOWNLOAD" = 0xF0,

 "DOWNLOAD_NEXT" = 0xEF,

 "DOWNLOAD_MAX" = 0xEE,

 "SHORT_DOWNLOAD" = 0xED,

 "MODIFY_BITS" = 0xEC,

 "SET_CAL_PAGE" = 0xEB,

 "GET_CAL_PAGE" = 0xEA,

 "GET_PAG_PROCESSOR_INFO" = 0xE9,

 "GET_SEGMENT_INFO" = 0xE8,

 "GET_PAGE_INFO" = 0xE7,

 "SET_SEGMENT_MODE" = 0xE6,

 "GET_SEGMENT_MODE" = 0xE5,

 "COPY_CAL_PAGE" = 0xE4,

 "CLEAR_DAQ_LIST" = 0xE3,

 "SET_DAQ_PTR" = 0xE2,

 "WRITE_DAQ" = 0xE1,

 "SET_DAQ_LIST_MODE" = 0xE0,

 "GET_DAQ_LIST_MODE" = 0xDF,

 "START_STOP_DAQ_LIST" = 0xDE,

 "START_STOP_SYNCH" = 0xDD,

 "GET_DAQ_CLOCK" = 0xDC,

 "READ_DAQ" = 0xDB,

 "GET_DAQ_PROCESSOR_INFO" = 0xDA,

 "GET_DAQ_RESOLUTION_INFO" = 0xD9,

 "GET_DAQ_LIST_INFO" = 0xD8,

 "GET_DAQ_EVENT_INFO" = 0xD7,

 "FREE_DAQ" = 0xD6,

 "ALLOC_DAQ" = 0xD5,

 "ALLOC_ODT" = 0xD4,

 "ALLOC_ODT_ENTRY" = 0xD3,

 "PROGRAM_START" = 0xD2,

 "PROGRAM_CLEAR" = 0xD1,

 "PROGRAM" = 0xD0,

 "PROGRAM_RESET" = 0xCF,

 "GET_PGM_PROCESSOR_INFO" = 0xCE,

 "GET_SECTOR_INFO" = 0xCD,

 "PROGRAM_PREPARE" = 0xCC,

 "PROGRAM_FORMAT" = 0xCB,

 "PROGRAM_NEXT" = 0xCA,

 "PROGRAM_MAX" = 0xC9,

 "PROGRAM_VERIFY" = 0xC8 

 

 })*;



 "COMMUNICATION_MODE_SUPPORTED"

 taggedunion { 

 "BLOCK" taggedstruct {

 "SLAVE"; 

 "MASTER" struct { 

 uchar; 

 uchar; 

 };

 };

 "INTERLEAVED" uchar; 

 };



 "SEED_AND_KEY_EXTERNAL_FUNCTION" char[256]; 

 

 

 };



};







struct Daq { 

 enum { 

 "STATIC" = 0,

 "DYNAMIC" = 1

 };



 uint; 

 uint; 

 uchar; 



 enum { 

 "OPTIMISATION_TYPE_DEFAULT" = 0,

 "OPTIMISATION_TYPE_ODT_TYPE_16" = 1,

 "OPTIMISATION_TYPE_ODT_TYPE_32" = 2,

 "OPTIMISATION_TYPE_ODT_TYPE_64" = 3,

 "OPTIMISATION_TYPE_ODT_TYPE_ALIGNMENT" = 4,

 "OPTIMISATION_TYPE_MAX_ENTRY_SIZE" = 5

 };



 enum { 

 "ADDRESS_EXTENSION_FREE" = 0,

 "ADDRESS_EXTENSION_ODT" = 1,

 "ADDRESS_EXTENSION_DAQ" = 3

 };



 enum { 

 "IDENTIFICATION_FIELD_TYPE_ABSOLUTE" = 0,

 "IDENTIFICATION_FIELD_TYPE_RELATIVE_BYTE" = 1,

 "IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD" = 2,

 "IDENTIFICATION_FIELD_TYPE_RELATIVE_WORD_ALIGNED" = 3

 };



 enum { 

 "GRANULARITY_ODT_ENTRY_SIZE_DAQ_BYTE" = 1,

 "GRANULARITY_ODT_ENTRY_SIZE_DAQ_WORD" = 2,

 "GRANULARITY_ODT_ENTRY_SIZE_DAQ_DWORD" = 4,

 "GRANULARITY_ODT_ENTRY_SIZE_DAQ_DLONG" = 8

 };



 uchar; 



 enum { 

 "NO_OVERLOAD_INDICATION" = 0,

 "OVERLOAD_INDICATION_PID" = 1,

 "OVERLOAD_INDICATION_EVENT" = 2

 };



 taggedstruct { 

 "PRESCALER_SUPPORTED";

 "RESUME_SUPPORTED";



 block "STIM" struct { 



 enum { 

 "GRANULARITY_ODT_ENTRY_SIZE_STIM_BYTE" = 1,

 "GRANULARITY_ODT_ENTRY_SIZE_STIM_WORD" = 2,

 "GRANULARITY_ODT_ENTRY_SIZE_STIM_DWORD" = 4,

 "GRANULARITY_ODT_ENTRY_SIZE_STIM_DLONG" = 8

 };



 uchar; 



 taggedstruct { 

 "BIT_STIM_SUPPORTED";

 };

 };



 block "TIMESTAMP_SUPPORTED" struct {

 uint; 

 enum { 

 "NO_TIME_STAMP" = 0,

 "SIZE_BYTE" = 1,

 "SIZE_WORD" = 2,

 "SIZE_DWORD" = 4

 };

 enum { 

 "UNIT_1NS" = 0,

 "UNIT_10NS" = 1,

 "UNIT_100NS" = 2,

 "UNIT_1US" = 3,

 "UNIT_10US" = 4,

 "UNIT_100US" = 5,

 "UNIT_1MS" = 6,

 "UNIT_10MS" = 7,

 "UNIT_100MS" = 8,

 "UNIT_1S" = 9

 };

 taggedstruct {

 "TIMESTAMP_FIXED";

 };

 };



 "PID_OFF_SUPPORTED";







 (block "DAQ_LIST" struct { 

 

 uint; 

 taggedstruct { 

 "DAQ_LIST_TYPE" enum {

 "DAQ" = 1, 

 "STIM" = 2, 

 "DAQ_STIM" = 3 

 

 };



 "MAX_ODT" uchar; 

 "MAX_ODT_ENTRIES" uchar; 



 "FIRST_PID" uchar; 

 "EVENT_FIXED" uint; 

 

 block "PREDEFINED" taggedstruct { 

 

 (block "ODT" struct {

 uchar; 

 taggedstruct {

 ("ODT_ENTRY" struct {

 uchar; 

 ulong; 

 uchar; 

 uchar; 

 uchar; 

 })*;

 }; 

 })*; 

 }; 

 };

 })*;









 (block "EVENT" struct { 

 

 char[101]; 

 char[9]; 

 uint; 



 enum {

 "DAQ" = 1, 

 

 "STIM" = 2, 

 

 "DAQ_STIM" = 3 

 };



 uchar; 

 uchar; 

 uchar; 

 uchar; 



 })*;





 };





};









 taggedunion Daq_Event { 

 "FIXED_EVENT_LIST" taggedstruct {

 ("EVENT" uint)* ;

 };

 "VARIABLE" taggedstruct {

 block "AVAILABLE_EVENT_LIST" taggedstruct {

 ("EVENT" uint)*;

 };

 block "DEFAULT_EVENT_LIST" taggedstruct { 

 ("EVENT" uint)*;

 };

 };

 };









struct Pag { 

 uchar; 

 taggedstruct { 

 "FREEZE_SUPPORTED";

 };



 };









struct Pgm { 



 enum {

 "PGM_MODE_ABSOLUTE" = 1,

 "PGM_MODE_FUNCTIONAL" = 2,

 "PGM_MODE_ABSOLUTE_AND_FUNCTIONAL" = 3

 };

 uchar; 

 uchar; 



 taggedstruct { 

 (block "SECTOR" struct { 

 

 char[101]; 

 uchar; 

 ulong; 

 ulong; 

 uchar; 

 uchar; 

 uchar; 

 })*; 



 "COMMUNICATION_MODE_SUPPORTED" taggedunion { 

 "BLOCK" taggedstruct {

 "SLAVE"; 

 "MASTER" struct { 

 uchar; 

 uchar; 

 };

 };

 "INTERLEAVED" uchar; 

 };

 };

};









struct Segment { 

 uchar; 

 uchar; 

 uchar; 

 uchar; 

 uchar; 



 taggedstruct { 

 block "CHECKSUM" struct {

 enum { 

 "XCP_ADD_11" = 1,

 "XCP_ADD_12" = 2,

 "XCP_ADD_14" = 3,

 "XCP_ADD_22" = 4,

 "XCP_ADD_24" = 5,

 "XCP_ADD_44" = 6,

 "XCP_CRC_16" = 7,

 "XCP_CRC_16_CITT" = 8,

 "XCP_CRC_32" = 9,

 "XCP_USER_DEFINED" = 255

 };



 taggedstruct {

 "MAX_BLOCK_SIZE" ulong ; 

 

 "EXTERNAL_FUNCTION" char[256]; 

 

 

 };

 };



 (block "PAGE" struct { 

 

 uchar; 



 enum { 

 "ECU_ACCESS_NOT_ALLOWED" = 0,

 "ECU_ACCESS_WITHOUT_XCP_ONLY" = 1,

 "ECU_ACCESS_WITH_XCP_ONLY" = 2,

 "ECU_ACCESS_DONT_CARE" = 3

 };



 enum { 

 "XCP_READ_ACCESS_NOT_ALLOWED" = 0,

 "XCP_READ_ACCESS_WITHOUT_ECU_ONLY" = 1,

 "XCP_READ_ACCESS_WITH_ECU_ONLY" = 2,

 "XCP_READ_ACCESS_DONT_CARE" = 3

 };



 enum { 

 "XCP_WRITE_ACCESS_NOT_ALLOWED" = 0,

 "XCP_WRITE_ACCESS_WITHOUT_ECU_ONLY" = 1,

 "XCP_WRITE_ACCESS_WITH_ECU_ONLY" = 2,

 "XCP_WRITE_ACCESS_DONT_CARE" = 3

 };

 taggedstruct {

 "INIT_SEGMENT" uchar; 

 };



 })*; 



 (block "ADDRESS_MAPPING" struct { 

 ulong; 

 ulong; 

 ulong; 

 })*;



 "PGM_VERIFY" ulong; 

 }; 



};





 

 

taggedstruct Common_Parameters { 

 

 block "PROTOCOL_LAYER" struct Protocol_Layer; 

 

 block "SEGMENT" struct Segment; 

 

 block "DAQ" struct Daq; 

 block "PAG" struct Pag; 

 block "PGM" struct Pgm; 

 

 block "DAQ_EVENT" taggedunion Daq_Event; 

 

}; 













































struct CAN_Parameters { 

 uint; 

 

 taggedstruct { 

 "CAN_ID_BROADCAST" ulong; 

 

 

 "CAN_ID_MASTER" ulong; 

 

 

 "CAN_ID_SLAVE" ulong; 

 

 

 "BAUDRATE" ulong; 

 "SAMPLE_POINT" uchar; 

 

 "SAMPLE_RATE" enum {

 "SINGLE" = 1, 

 "TRIPLE" = 3 

 };

 "BTL_CYCLES" uchar; 

 

 "SJW" uchar; 

 

 "SYNC_EDGE" enum {

 "SINGLE" = 1, 

 "DUAL" = 2 

 };

 "MAX_DLC_REQUIRED"; 

 

 (block "DAQ_LIST_CAN_ID" struct { 

 uint; 

 taggedstruct { 

 

 "VARIABLE";

 "FIXED" ulong; 

 

 };

 })*;

 };

};





struct SxI_Parameters { 

 uint; 

 

 ulong; 

 taggedstruct { 

 "ASYNCH_FULL_DUPLEX_MODE" struct {

 enum {

 "PARITY_NONE" = 0,

 "PARITY_ODD" = 1,

 "PARITY_EVEN" = 2

 };

 enum {

 "ONE_STOP_BIT" = 1,

 "TWO_STOP_BITS" = 2

 };

 };

 "SYNCH_FULL_DUPLEX_MODE_BYTE";

 "SYNCH_FULL_DUPLEX_MODE_WORD";

 "SYNCH_FULL_DUPLEX_MODE_DWORD";

 "SYNCH_MASTER_SLAVE_MODE_BYTE";

 "SYNCH_MASTER_SLAVE_MODE_WORD";

 "SYNCH_MASTER_SLAVE_MODE_DWORD";

 };

 enum {

 "HEADER_LEN_BYTE" = 0,

 "HEADER_LEN_CTR_BYTE" = 1,

 "HEADER_LEN_FILL_BYTE" = 2,

 "HEADER_LEN_WORD" = 3,

 "HEADER_LEN_CTR_WORD" = 4,

 "HEADER_LEN_FILL_WORD" = 5

 };

 enum {

 "NO_CHECKSUM" = 0,

 "CHECKSUM_BYTE" = 1,

 "CHECKSUM_WORD" = 2

 };

};







 struct TCP_IP_Parameters {



 uint; 

 

 uint; 



 taggedunion {

 "HOST_NAME" char[256];

 "ADDRESS" char[15];

 };



 };







 struct UDP_IP_Parameters {

 uint; 

 

 uint; 



 taggedunion {

 "HOST_NAME" char[256];

 "ADDRESS" char[15];

 };



 };





struct ep_parameters {

 uchar; 

 enum {

 "BULK_TRANSFER" = 2, 

 "INTERRUPT_TRANSFER" = 3

 };

 uint; 

 

 uchar; 



 enum { 

 "MESSAGE_PACKING_SINGLE" = 0, 

 "MESSAGE_PACKING_MULTIPLE" = 1, 

 "MESSAGE_PACKING_STREAMING" = 2 

 };

 enum { 

 "ALIGNMENT_8_BIT" = 0, 

 "ALIGNMENT_16_BIT"= 1,

 "ALIGNMENT_32_BIT"= 2,

 "ALIGNMENT_64_BIT"= 3

 };



 taggedstruct { 

 "RECOMMENDED_HOST_BUFSIZE" uint; 

 

 

 };

}; 







struct USB_Parameters {

 uint; 

 



 uint; 

 uint; 

 uchar; 





 enum { 

 "HEADER_LEN_BYTE" = 0,

 "HEADER_LEN_CTR_BYTE" = 1,

 "HEADER_LEN_FILL_BYTE" = 2,

 "HEADER_LEN_WORD" = 3,

 "HEADER_LEN_CTR_WORD" = 4,

 "HEADER_LEN_FILL_WORD" = 5

 };



 

 

 taggedunion {

 block "OUT_EP_CMD_STIM" struct ep_parameters;

 };



 

 

 

 taggedunion {

 block "IN_EP_RESERR_DAQ_EVSERV" struct ep_parameters;

 };

 



 taggedstruct { 

 "ALTERNATE_SETTING_NO" uchar; 



 

 

 "INTERFACE_STRING_DESCRIPTOR" char [101];

 

 (block "OUT_EP_ONLY_STIM" struct ep_parameters)*;

 

 (block "IN_EP_ONLY_DAQ" struct ep_parameters)*; 

 

 block "IN_EP_ONLY_EVSERV" struct ep_parameters; 

 

 

 

 (block "DAQ_LIST_USB_ENDPOINT" struct {

 uint; 

 taggedstruct { 

 "FIXED_IN" uchar; 

 

 "FIXED_OUT" uchar; 

 

 };

 })*; 

 }; 



};







 block "IF_DATA" taggedunion if_data {







"XCP" struct {



 taggedstruct Common_Parameters ; 



 taggedstruct { 

 



 block "XCP_ON_CAN" struct {



 struct CAN_Parameters ; 

 taggedstruct Common_Parameters; 

 

 };



 block "XCP_ON_SxI" struct {



 struct SxI_Parameters ; 

 taggedstruct Common_Parameters; 



 };



 block "XCP_ON_TCP_IP" struct {



 struct TCP_IP_Parameters ; 

 taggedstruct Common_Parameters; 



 };



 block "XCP_ON_UDP_IP" struct {



 struct UDP_IP_Parameters ; 

 taggedstruct Common_Parameters; 



 };



 block "XCP_ON_USB" struct {



 struct USB_Parameters ; 

 taggedstruct Common_Parameters; 



 };



 };



};



 };





 /end A2ML'
! !

"ASDBase.ic method 0x20026a34; bytecode file offset 0x923928"
!ASAP2Include class methodsFor: 'recovered'!
XCP_v1_0_on_SxI
    ^'/*extracted form specification by Ruo/ETAS */
/************************************************************************************/
/*                                                                                  */
/* ASAP2 meta language for XCP on SxI V1.0                                          */
/*                                                                                  */
/* 2003-03-03                                                                       */
/*                                                                                  */
/* Vector Informatik, Schuermans                                                    */
/*                                                                                  */
/*   Datatypes:                                                                     */ 
/*                                                                                  */ 
/*   A2ML       ASAP2             Windows      description                          */ 
/*   --------------------------------------------------------------------------     */ 
/*   uchar      UBYTE             BYTE         unsigned 8 Bit                       */ 
/*   char       SBYTE             char         signed 8 Bit                         */ 
/*   uint       UWORD             WORD         unsigned integer 16 Bit              */ 
/*   int        SWORD             int          signed integer 16 Bit                */ 
/*   ulong      ULONG             DWORD        unsigned integer 32 Bit              */ 
/*   long       SLONG             LONG         signed integer 32 Bit                */ 
/*   float      FLOAT32_IEEE                   float 32 Bit                         */ 
/*                                                                                  */ 
/************************************************************************************/ 

/************************** start of SxI ************************************/

struct SxI_Parameters { /* At MODULE */
  uint;  /* XCP on SxI version */
         /* e.g. "1.0" = 0x0100 */
  ulong; /* BAUDRATE [Hz] */
  taggedstruct { /* exclusive tags */
    "ASYNCH_FULL_DUPLEX_MODE" struct {
      enum {
        "PARITY_NONE" = 0,
        "PARITY_ODD" = 1,
        "PARITY_EVEN" = 2
        };
      enum {
        "ONE_STOP_BIT" = 1,
        "TWO_STOP_BITS" = 2
      };
    };
    "SYNCH_FULL_DUPLEX_MODE_BYTE";
    "SYNCH_FULL_DUPLEX_MODE_WORD";
    "SYNCH_FULL_DUPLEX_MODE_DWORD";
    "SYNCH_MASTER_SLAVE_MODE_BYTE";
    "SYNCH_MASTER_SLAVE_MODE_WORD";
    "SYNCH_MASTER_SLAVE_MODE_DWORD";
  };

  enum {
    "HEADER_LEN_BYTE" = 0,
    "HEADER_LEN_CTR_BYTE" = 1,
    "HEADER_LEN_FILL_BYTE" = 2,
    "HEADER_LEN_WORD" = 3,
    "HEADER_LEN_CTR_WORD" = 4,
    "HEADER_LEN_FILL_WORD" = 5
  };
  enum {
    "NO_CHECKSUM" = 0,
    "CHECKSUM_BYTE" = 1,
    "CHECKSUM_WORD" = 2
  };
};/*************************** end of SxI ***********************************/
'
! !

"ASDBase.ic method 0x20054764; bytecode file offset 0x951190"
!ASAP2Include class methodsFor: 'recovered'!
StandardIncludes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StandardIncludes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20072b2c; bytecode file offset 0x96f3e0"
!ASAP2Include class methodsFor: 'recovered'!
emBehaviorId
    ^131
! !

"ASDBase.ic method 0x20088638; bytecode file offset 0x985628"
!ASAP2Include class methodsFor: 'recovered'!
xcpAmlStream
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBBcrtl32DLL.
    recoveredValue1 := (self) XCP_v1_0_flat.
    recoveredValue2 := (recoveredValue0) removeCCommentAndWhiteSpacesFrom: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009c728; bytecode file offset 0x998fec"
!ASAP2Include class methodsFor: 'recovered'!
parseXcpAmlStream
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Globals.
    recoveredValue1 := (recoveredValue0) useAML.
    recoveredValue2 := (self) xcpAmlStream.
    recoveredValue3 := (recoveredValue1) parseFrom: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b69e0; bytecode file offset 0x9b39ac"
!ASAP2Include class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('objects' 'hashId')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7348; bytecode file offset 0x9b3cb4"
!ASAP2Include class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200df978; bytecode file offset 0x9dc238"
!ASAP2Include class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asRBDBPartOfChild.
    (recoveredValue1) parent: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20140940; bytecode file offset 0xa3d20c"
!ASAP2Include class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 |
    super initializeKeyWords.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) StandardIncludes: (recoveredValue1).
    (self) addXcpToStandardIncludes.
    ^self
! !

"ASDBase.ic method 0x2020ec40; bytecode file offset 0xb0b514"
!ASAP2Include class methodsFor: 'recovered'!
createIncludeFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) StandardIncludes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280da6d0Value0 block280da6d0Value1 |
    block280da6d0Value0 := CfsError.
    block280da6d0Value1 := (block280da6d0Value0) new.
    block280da6d0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:block280da6f4Arg1 | 
    | block280da6f4Value0 block280da6f4Value1 block280da6f4Value2 |
    block280da6f4Value0 := ReadStream.
    block280da6f4Value1 := block280da6f4Arg1.
    block280da6f4Value2 := (block280da6f4Value0) on: (block280da6f4Value1).
    block280da6f4Value2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036ffe8; bytecode file offset 0xc6c8e4"
!ASAP2Include class methodsFor: 'recovered'!
addXcpToStandardIncludes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) StandardIncludes.
    (recoveredValue0) at: ('XCP_v1_0.aml') put: ('XCP_v1_0').
    recoveredValue1 := (self) StandardIncludes.
    (recoveredValue1) at: ('XCP_v1_0_common.aml') put: ('XCP_v1_0_common').
    recoveredValue2 := (self) StandardIncludes.
    (recoveredValue2) at: ('XCP_v1_0_definitions.aml') put: ('XCP_v1_0_definitions').
    recoveredValue3 := (self) StandardIncludes.
    (recoveredValue3) at: ('XCP_v1_0_on_CAN.aml') put: ('XCP_v1_0_on_CAN').
    recoveredValue4 := (self) StandardIncludes.
    (recoveredValue4) at: ('XCP_v1_0_on_SxI.aml') put: ('XCP_v1_0_on_SxI').
    recoveredValue5 := (self) StandardIncludes.
    (recoveredValue5) at: ('XCP_v1_0_on_TCP_IP.aml') put: ('XCP_v1_0_on_TCP_IP').
    recoveredValue6 := (self) StandardIncludes.
    (recoveredValue6) at: ('XCP_v1_0_on_UDP_IP.aml') put: ('XCP_v1_0_on_UDP_IP').
    recoveredValue7 := (self) StandardIncludes.
    (recoveredValue7) at: ('XCP_v1_0_on_USB.aml') put: ('XCP_v1_0_on_USB').
    ^self
! !

