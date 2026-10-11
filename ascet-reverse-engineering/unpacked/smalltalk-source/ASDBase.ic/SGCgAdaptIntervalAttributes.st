"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000df8; bytecode file offset 0x8ffcfc"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
adaptIntervalAttributes
    ^self
! !

"ASDBase.ic method 0x20021ac4; bytecode file offset 0x92209c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
internalAccess
    ^'undefined'
! !

"ASDBase.ic method 0x20072530; bytecode file offset 0x96ee04"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
bitLimitOverflow
    ^1
! !

"ASDBase.ic method 0x20072708; bytecode file offset 0x96f1c4"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
bitLimitAssignment
    ^2
! !

"ASDBase.ic method 0x20072a10; bytecode file offset 0x96f3cc"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
bitResolution
    ^3
! !

"ASDBase.ic method 0x20072d50; bytecode file offset 0x96f6d4"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
bitZeroInclude
    ^4
! !

"ASDBase.ic method 0x20072ff0; bytecode file offset 0x96f8bc"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
bitFloatGoal
    ^6
! !

"ASDBase.ic method 0x20074304; bytecode file offset 0x970bc8"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
bitAutomaticResolution
    ^7
! !

"ASDBase.ic method 0x20076d7c; bytecode file offset 0x9757c8"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isMdlAssignAttributes
    ^true
! !

"ASDBase.ic method 0x2007a36c; bytecode file offset 0x97c330"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrGetAccess
    ^false
! !

"ASDBase.ic method 0x2007b40c; bytecode file offset 0x97c330"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrReference
    ^false
! !

"ASDBase.ic method 0x2007c66c; bytecode file offset 0x97c330"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrRead
    ^false
! !

"ASDBase.ic method 0x2007c68c; bytecode file offset 0x97c330"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrPointerType
    ^false
! !

"ASDBase.ic method 0x2008a4c0; bytecode file offset 0x98729c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLimitOverflow.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a580; bytecode file offset 0x98729c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrFloatGoal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitFloatGoal.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a5e0; bytecode file offset 0x98729c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrReduceResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitResolution.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a840; bytecode file offset 0x98729c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrZeroIncluded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitZeroInclude.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a880; bytecode file offset 0x98729c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrPlainLimitAssignment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLimitAssignment.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008a910; bytecode file offset 0x98729c"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrAutomaticResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutomaticResolution.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a06d0; bytecode file offset 0x99d3ac"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
initializeServices
    (self) initialize.
    (self) cgAttrKeepResolution.
    ^self
! !

"ASDBase.ic method 0x200a0820; bytecode file offset 0x99d3ac"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
initializeNoServices
    (self) initialize.
    (self) cgAttrReduceResolution.
    ^self
! !

"ASDBase.ic method 0x200b0a98; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrLimitAssignment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLimitAssignment.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0aa8; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrKeepResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitResolution.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ae8; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrZeroIncluded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitZeroInclude.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0ca8; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLimitOverflow.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0d58; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrAutomaticResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutomaticResolution.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0e48; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoLimitOverflow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLimitOverflow.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b0f58; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrReduceResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitResolution.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1038; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrSpecificResolution
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitAutomaticResolution.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1198; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoLimitAssignment
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitLimitAssignment.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1288; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoFloatGoal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitFloatGoal.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b1358; bytecode file offset 0x9add94"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrFloatGoal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := flags.
    recoveredValue1 := (self) bitFloatGoal.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    flags := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x201d80ac; bytecode file offset 0xad4980"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
initialize
    super initialize.
    (self) cgAttrLimitOverflow.
    (self) cgAttrLimitAssignment.
    (self) cgAttrReduceResolution.
    (self) cgAttrZeroIncluded.
    (self) cgAttrNoFloatGoal.
    (self) cgAttrAutomaticResolution.
    ^self
! !

"ASDBase.ic method 0x20441efc; bytecode file offset 0xd3e7f4"
!SGCgAdaptIntervalAttributes methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) nextPutAll: ('   limit overflow: ').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) isCgAttrLimitOverflow.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) nextPutAll: ('   reduce resolution: ').
    recoveredValue9 := recoveredValue1.
    recoveredValue10 := (self) isCgAttrReduceResolution.
    recoveredValue11 := (recoveredValue10) asString.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue1.
    (recoveredValue13) nextPutAll: ('   limit assign: ').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) isCgAttrLimitAssignment.
    recoveredValue16 := (recoveredValue15) asString.
    (recoveredValue14) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue1.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue1.
    (recoveredValue18) nextPutAll: ('   plain limit assign: ').
    recoveredValue19 := recoveredValue1.
    recoveredValue20 := (self) isCgAttrPlainLimitAssignment.
    recoveredValue21 := (recoveredValue20) asString.
    (recoveredValue19) nextPutAll: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue1.
    (recoveredValue23) nextPutAll: ('   zero included: ').
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := (self) isCgAttrZeroIncluded.
    recoveredValue26 := (recoveredValue25) asString.
    (recoveredValue24) nextPutAll: (recoveredValue26).
    recoveredValue27 := recoveredValue1.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue1.
    (recoveredValue28) nextPutAll: ('   float goal: ').
    recoveredValue29 := recoveredValue1.
    recoveredValue30 := (self) isCgAttrFloatGoal.
    recoveredValue31 := (recoveredValue30) asString.
    (recoveredValue29) nextPutAll: (recoveredValue31).
    (recoveredValue1) cr.
    ^self
! !

