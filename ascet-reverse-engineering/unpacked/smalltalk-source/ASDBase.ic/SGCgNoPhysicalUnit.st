"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002bd8; bytecode file offset 0x8ffcfc"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
asPhysicalUnitWithZeroOffset
    ^self
! !

"ASDBase.ic method 0x20003560; bytecode file offset 0x90206c"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
divWithPhysicalUnit: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003a78; bytecode file offset 0x90206c"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
mulWithPhysicalUnit: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005868; bytecode file offset 0x902744"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
addToExponents: recoveredArg1 exponent: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000d35c; bytecode file offset 0x909e08"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
isCgPhysicalUnitCompatibleTo: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x20038508; bytecode file offset 0x935c54"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
isCgPhysicalUnitIdentical: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgNoPhysicalUnit.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038634; bytecode file offset 0x935c54"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
isCgPhysicalUnitIdenticalWithScale: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isCgNoPhysicalUnit.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e378; bytecode file offset 0x93bf94"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
exponents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20071b74; bytecode file offset 0x96e578"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
offset
    ^0
! !

"ASDBase.ic method 0x20072110; bytecode file offset 0x96ee04"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
factor
    ^1
! !

"ASDBase.ic method 0x20076004; bytecode file offset 0x9757c8"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
isCgNoPhysicalUnit
    ^true
! !

"ASDBase.ic method 0x20287dd0; bytecode file offset 0xb846a0"
!SGCgNoPhysicalUnit methodsFor: 'recovered'!
mdlConvert: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgArithmeticType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) physicalUnit.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgNoPhysicalUnit.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAnyPhysicalUnit.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 655.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) mdlClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) physicalUnit.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) mdlWarningNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

