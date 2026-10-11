"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048a64; bytecode file offset 0x945328"
!EtasDependentParameter methodsFor: 'recovered'!
resetBusy
    busy := false.
    ^self
! !

"ASDBase.ic method 0x20048aa4; bytecode file offset 0x945358"
!EtasDependentParameter methodsFor: 'recovered'!
resetOK
    ok := false.
    ^self
! !

"ASDBase.ic method 0x2004a980; bytecode file offset 0x947254"
!EtasDependentParameter methodsFor: 'recovered'!
setBusy
    busy := true.
    ^self
! !

"ASDBase.ic method 0x2004a9b8; bytecode file offset 0x94729c"
!EtasDependentParameter methodsFor: 'recovered'!
setOK
    ok := true.
    ^self
! !

"ASDBase.ic method 0x2005ef20; bytecode file offset 0x95b7f0"
!EtasDependentParameter methodsFor: 'recovered'!
resetValue
    (self) value: (nil).
    ^self
! !

"ASDBase.ic method 0x2006acac; bytecode file offset 0x967a18"
!EtasDependentParameter methodsFor: 'recovered'!
isBusy
    | recoveredValue0 |
    recoveredValue0 := busy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bdf0; bytecode file offset 0x96873c"
!EtasDependentParameter methodsFor: 'recovered'!
isOK
    | recoveredValue0 |
    recoveredValue0 := ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c03c; bytecode file offset 0x9692b0"
!EtasDependentParameter methodsFor: 'recovered'!
identifiers
    | recoveredValue0 |
    recoveredValue0 := identifiers.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c2dec; bytecode file offset 0x9bfde0"
!EtasDependentParameter methodsFor: 'recovered'!
identifiers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    identifiers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20172fcc; bytecode file offset 0xa6f89c"
!EtasDependentParameter methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) identifiers: (recoveredValue1).
    (self) resetBusy.
    (self) resetOK.
    ^self
! !

"ASDBase.ic method 0x201e73e0; bytecode file offset 0xae3cac"
!EtasDependentParameter methodsFor: 'recovered'!
updateDistribution: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) xDistribution.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) xDistribution.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) setPhysValue: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTwoDCharTable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) yDistribution.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) yDistribution.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setPhysValue: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

