"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20071c5c; bytecode file offset 0x96e578"
!EtasETPseudoAddress class methodsFor: 'recovered'!
_internalLevels
    ^0
! !

"ASDBase.ic method 0x20072588; bytecode file offset 0x96f1c4"
!EtasETPseudoAddress class methodsFor: 'recovered'!
fixedSize
    ^2
! !

"ASDBase.ic method 0x20072818; bytecode file offset 0x96f1c4"
!EtasETPseudoAddress class methodsFor: 'recovered'!
variableSize
    ^2
! !

"ASDBase.ic method 0x200ab358; bytecode file offset 0x9a7c14"
!EtasETPseudoAddress class methodsFor: 'recovered'!
usedSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := (self) variableSize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fb96c; bytecode file offset 0x9f822c"
!EtasETPseudoAddress class methodsFor: 'recovered'!
createInstVarAtOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (1000) with: (recoveredValue1).
    recoveredValue3 := (self) createFromArray: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200fb990; bytecode file offset 0x9f8250"
!EtasETPseudoAddress class methodsFor: 'recovered'!
createClassVarAtOffset: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) with: (1001) with: (recoveredValue1).
    recoveredValue3 := (self) createFromArray: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201268a4; bytecode file offset 0xa23168"
!EtasETPseudoAddress class methodsFor: 'recovered'!
createFromArray: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) / (2).
    recoveredValue3 := (self) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) initializeFromArray: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20153628; bytecode file offset 0xa4fef0"
!EtasETPseudoAddress class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) variableSize.
    recoveredValue3 := (recoveredValue1) * (recoveredValue2).
    recoveredValue4 := (recoveredValue0) + (recoveredValue3).
    recoveredValue5 := (self) new: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) initialize.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) _setNoOfLevels: (recoveredValue8).
    ^recoveredValue5
! !

