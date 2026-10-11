"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20040a04; bytecode file offset 0x93d2c0"
!SGOperatorImplementation methodsFor: 'recovered'!
isShiftAuto
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := preShift.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048ef4; bytecode file offset 0x9457b8"
!SGOperatorImplementation methodsFor: 'recovered'!
setShiftAuto
    preShift := nil.
    ^self
! !

"ASDBase.ic method 0x2005ff1c; bytecode file offset 0x95c7e0"
!SGOperatorImplementation methodsFor: 'recovered'!
setOverflowReduceResolution
    overflowHandling := 0.
    ^self
! !

"ASDBase.ic method 0x20060014; bytecode file offset 0x95c8c8"
!SGOperatorImplementation methodsFor: 'recovered'!
setOverflowKeepResAndLimit
    overflowHandling := 1.
    ^self
! !

"ASDBase.ic method 0x200600ac; bytecode file offset 0x95c960"
!SGOperatorImplementation methodsFor: 'recovered'!
setOverflowKeepResAndDontLimit
    overflowHandling := 2.
    ^self
! !

"ASDBase.ic method 0x20067b44; bytecode file offset 0x9646f8"
!SGOperatorImplementation methodsFor: 'recovered'!
preShiftTable
    | recoveredValue0 |
    recoveredValue0 := preShift.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069064; bytecode file offset 0x965b90"
!SGOperatorImplementation methodsFor: 'recovered'!
selectQuantization
    | recoveredValue0 |
    recoveredValue0 := selectQuantization.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008aa24; bytecode file offset 0x9872e0"
!SGOperatorImplementation methodsFor: 'recovered'!
isOverflowReduceResolution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := overflowHandling.
    recoveredValue1 := (recoveredValue0) = (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008aa54; bytecode file offset 0x987308"
!SGOperatorImplementation methodsFor: 'recovered'!
isOverflowKeepResAndLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := overflowHandling.
    recoveredValue1 := (recoveredValue0) = (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008aa80; bytecode file offset 0x987334"
!SGOperatorImplementation methodsFor: 'recovered'!
isOverflowKeepResAndDontLimit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := overflowHandling.
    recoveredValue1 := (recoveredValue0) = (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008af28; bytecode file offset 0x9877dc"
!SGOperatorImplementation methodsFor: 'recovered'!
isSelectQuantizationAuto
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := selectQuantization.
    recoveredValue1 := (recoveredValue0) = (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bea68; bytecode file offset 0x9bc0b4"
!SGOperatorImplementation methodsFor: 'recovered'!
preShiftTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    preShift := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb8c; bytecode file offset 0x9bd228"
!SGOperatorImplementation methodsFor: 'recovered'!
setSelectQuantizationInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectQuantization := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ce84c; bytecode file offset 0x9cb108"
!SGOperatorImplementation methodsFor: 'recovered'!
clearAllowZeroInPhysInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (65534).
    recoveredValue2 := recoveredValue1.
    attributes := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce8c8; bytecode file offset 0x9cb180"
!SGOperatorImplementation methodsFor: 'recovered'!
isAllowedZeroInPhysInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20105c04; bytecode file offset 0xa024c0"
!SGOperatorImplementation methodsFor: 'recovered'!
setAllowZeroInPhysInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) bitOr: (1).
    recoveredValue3 := recoveredValue2.
    attributes := recoveredValue3.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011f16c; bytecode file offset 0xa1ba58"
!SGOperatorImplementation methodsFor: 'recovered'!
attributesPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isAllowedZeroInPhysInterval.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isAllowedZeroInPhysInterval: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x201a3544; bytecode file offset 0xa9fe00"
!SGOperatorImplementation methodsFor: 'recovered'!
initialize
    super initialize.
    attributes := 0.
    overflowHandling := 0.
    selectQuantization := 0.
    preShift := nil.
    ^self
! !

"ASDBase.ic method 0x201db7b4; bytecode file offset 0xad8070"
!SGOperatorImplementation methodsFor: 'recovered'!
getPreShiftInput: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isShiftAuto.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := preShift.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [
    ^0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

