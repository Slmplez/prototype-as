"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ba8; bytecode file offset 0x8ffcfc"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
asPhysicalUnitWithZeroOffset
    ^self
! !

"ASDBase.ic method 0x20069f58; bytecode file offset 0x966bdc"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
autosarAttributeName
    | recoveredValue0 |
    recoveredValue0 := autosarAttributeName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071b44; bytecode file offset 0x96e578"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
offset
    ^0
! !

"ASDBase.ic method 0x20072198; bytecode file offset 0x96ee04"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
factor
    ^1
! !

"ASDBase.ic method 0x200c0bb8; bytecode file offset 0x9bdf14"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
autosarAttributeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autosarAttributeName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e09c4; bytecode file offset 0x9dd284"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
exponents
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: (self) put: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201b632c; bytecode file offset 0xab2bf0"
!ASDPhysicalBaseUnit methodsFor: 'recovered'!
addToExponents: recoveredArg1 exponent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) exponents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) exponents.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := [
    0
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

