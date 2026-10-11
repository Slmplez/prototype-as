"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b264; bytecode file offset 0x908be4"
!SGLmASDLBodySource methodsFor: 'recovered'!
blockId
    | recoveredValue0 |
    recoveredValue0 := (self) methodId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e154; bytecode file offset 0x96af48"
!SGLmASDLBodySource methodsFor: 'recovered'!
methodName
    | recoveredValue0 |
    recoveredValue0 := methodName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009ed30; bytecode file offset 0x99b6b8"
!SGLmASDLBodySource methodsFor: 'recovered'!
commentMarker
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodName.
    recoveredValue1 := (self) line.
    recoveredValue2 := (self) commentMarkerText: (recoveredValue0) lineNumber: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c4cb4; bytecode file offset 0x9c16b0"
!SGLmASDLBodySource methodsFor: 'recovered'!
methodName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20181610; bytecode file offset 0xa7dee0"
!SGLmASDLBodySource methodsFor: 'recovered'!
lineMarker
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) methodName.
    recoveredValue1 := (recoveredValue0) , (' ').
    recoveredValue2 := (self) line.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (self) methodName.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue6) + (5).
    recoveredValue8 := (recoveredValue4) fillBlankTo: (recoveredValue7).
    ^recoveredValue8
! !

