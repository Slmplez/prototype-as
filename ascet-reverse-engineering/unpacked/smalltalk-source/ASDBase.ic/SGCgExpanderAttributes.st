"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200723d0; bytecode file offset 0x96ee04"
!SGCgExpanderAttributes methodsFor: 'recovered'!
bitCppCommand
    ^1
! !

"ASDBase.ic method 0x20072610; bytecode file offset 0x96f1c4"
!SGCgExpanderAttributes methodsFor: 'recovered'!
bitPrettyPrintExprs
    ^2
! !

"ASDBase.ic method 0x200729b8; bytecode file offset 0x96f3cc"
!SGCgExpanderAttributes methodsFor: 'recovered'!
bitCommentMarker
    ^3
! !

"ASDBase.ic method 0x2008a600; bytecode file offset 0x98729c"
!SGCgExpanderAttributes methodsFor: 'recovered'!
isPrettyPrintExpressionsEnabled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrettyPrintExprs.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a610; bytecode file offset 0x98729c"
!SGCgExpanderAttributes methodsFor: 'recovered'!
isCommentMarkerEnabled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCommentMarker.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a930; bytecode file offset 0x98729c"
!SGCgExpanderAttributes methodsFor: 'recovered'!
isCppCommandEnabled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCppCommand.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b0a68; bytecode file offset 0x9add94"
!SGCgExpanderAttributes methodsFor: 'recovered'!
disableCommentMarker
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCommentMarker.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0df8; bytecode file offset 0x9add94"
!SGCgExpanderAttributes methodsFor: 'recovered'!
enableCommentMarker
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCommentMarker.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1048; bytecode file offset 0x9add94"
!SGCgExpanderAttributes methodsFor: 'recovered'!
beginCppCommand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCppCommand.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b11a8; bytecode file offset 0x9add94"
!SGCgExpanderAttributes methodsFor: 'recovered'!
endPrettyPrintExprs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrettyPrintExprs.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1208; bytecode file offset 0x9add94"
!SGCgExpanderAttributes methodsFor: 'recovered'!
endCppCommand
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitCppCommand.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1338; bytecode file offset 0x9add94"
!SGCgExpanderAttributes methodsFor: 'recovered'!
beginPrettyPrintExprs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitPrettyPrintExprs.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20140a74; bytecode file offset 0xa3d33c"
!SGCgExpanderAttributes methodsFor: 'recovered'!
initialize
    super initialize.
    (self) endCppCommand.
    (self) endPrettyPrintExprs.
    (self) enableCommentMarker.
    ^self
! !

