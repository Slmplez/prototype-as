"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c1a8; bytecode file offset 0x92209c"
!ASAP2Project class methodsFor: 'recovered'!
keyWord
    ^'PROJECT'
! !

"ASDBase.ic method 0x200241a0; bytecode file offset 0x92209c"
!ASAP2Project class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'dbObject:' 'fileName:' 'header:' 'modules:' 'comment:')
! !

"ASDBase.ic method 0x20026c74; bytecode file offset 0x923928"
!ASAP2Project class methodsFor: 'recovered'!
emptyProjectString
    ^'
ASAP2_VERSION 1 30
/begin PROJECT 	DEMO	"1.0"
 /begin HEADER 
  "" 
  VERSION "1.0"  PROJECT_NO DEMO 
 /end HEADER 
 /begin MODULE 	DIM	""
  /begin MOD_PAR 
   "" 
   VERSION " "  
   CUSTOMER_NO ""  
   USER ""  
   PHONE_NO ""  
   ECU ""  
   CPU_TYPE ""  
   MEMORY_LAYOUT 
   PRG_CODE 0x0 0x8000 -1 -1 -1 -1 -1 
   MEMORY_LAYOUT 
   PRG_DATA 0x8000 0x8000 -1 -1 -1 -1 -1 
  /end MOD_PAR 
  /begin MOD_COMMON 
   "" 
   DEPOSIT DIFFERENCE 
   BYTE_ORDER MSB_LAST 
   ALIGNMENT_BYTE 1 
   ALIGNMENT_WORD 2 
   ALIGNMENT_LONG 4 
   ALIGNMENT_FLOAT32_IEEE 4 
   ALIGNMENT_FLOAT64_IEEE 8 
  /end MOD_COMMON 

/begin CHARACTERISTIC characteristic 
  "" 
  VALUE 
  0xB5D3 
  ValueUBYTE 
  0.0 
  Identitiy 
  0.0 
  99.609382629394531 
 /end CHARACTERISTIC 
 /begin AXIS_PTS aAxis_pts 
  ""
  0x8000 
  NO_INPUT_QUANTITY 
  ValueUBYTE 
  0.0 
  Identitiy 
  0 
  0.0 
  1.0 
 /end AXIS_PTS 
 /begin MEASUREMENT measurement 
  " " 
  UBYTE 
  Identitiy 
  0 
  0.0
  0.0 
  255.0 
  READ_WRITE 
 /end MEASUREMENT 
 /begin COMPU_METHOD Identitiy 
  "  " 
  RAT_FUNC 
  "%10.7" 
  " " 
  COEFFS 0 1 0 0 0 1 
 /end COMPU_METHOD 

 /begin FUNCTION function
  "" 
 /end FUNCTION 
 /begin RECORD_LAYOUT ValueUBYTE
      SRC_ADDR_X     1 UBYTE
      NO_AXIS_PTS_X  2 UBYTE
      AXIS_PTS_X     3 UBYTE INDEX_INCR DIRECT
      FNC_VALUES     4 UBYTE COLUMN_DIR DIRECT
    /end RECORD_LAYOUT

 
/end MODULE 
/end PROJECT 
'
! !

"ASDBase.ic method 0x200b6560; bytecode file offset 0x9b39ac"
!ASAP2Project class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('fileName' 'header' 'modules' 'comment')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b74c4; bytecode file offset 0x9b3da0"
!ASAP2Project class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201397e0; bytecode file offset 0xa36098"
!ASAP2Project class methodsFor: 'recovered'!
emBehaviorId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2Project.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 67.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018c24c; bytecode file offset 0xa88b10"
!ASAP2Project class methodsFor: 'recovered'!
create: recoveredArg1 longName: recoveredArg2 header: recoveredArg3 modules: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) longName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg3.
    (recoveredValue4) header: (recoveredValue5).
    recoveredValue6 := recoveredArg4.
    (recoveredValue3) modules: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue7) commit.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202c4b94; bytecode file offset 0xbc1520"
!ASAP2Project class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('HEADER') put: ('getHeader:').
    (recoveredValue0) at: ('MODULE') put: ('getModule:').
    recoveredValue2 := options.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := Association.
    recoveredValue5 := (recoveredValue4) key: ('HEADER') value: ('putIn:header:').
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := Association.
    recoveredValue7 := (recoveredValue6) key: ('MODULE') value: ('putIn:module:').
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

