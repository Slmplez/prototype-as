"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200000c0; bytecode file offset 0x50f8c"
!EwExtendedSelectionMapper class methodsFor: 'recovered'!
nonLinearListMapperClass
    ^self
! !

"extwid.ic method 0x20000750; bytecode file offset 0x516bc"
!EwExtendedSelectionMapper class methodsFor: 'recovered'!
selectionPolicy
    | recoveredValue0 |
    recoveredValue0 := XmEXTENDEDSELECT.
    ^recoveredValue0
! !

"extwid.ic method 0x20000768; bytecode file offset 0x516bc"
!EwExtendedSelectionMapper class methodsFor: 'recovered'!
linearListMapperClass
    | recoveredValue0 |
    recoveredValue0 := EwExtendedRangeSelectionMapper.
    ^recoveredValue0
! !

"extwid.ic method 0x20004238; bytecode file offset 0x5512c"
!EwExtendedSelectionMapper class methodsFor: 'recovered'!
isExtendedSelectionMapper
    ^true
! !

"extwid.ic method 0x2000f6a8; bytecode file offset 0x6047c"
!EwExtendedSelectionMapper class methodsFor: 'recovered'!
forSelectionPolicy: recoveredArg1 on: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLinearList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) linearListMapperClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) nonLinearListMapperClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

