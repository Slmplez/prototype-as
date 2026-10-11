"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005590; bytecode file offset 0x90206c"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
completeBemInlineSourceOn: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200276b4; bytecode file offset 0x924260"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
hasGenericCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceC.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027810; bytecode file offset 0x924260"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
hasGenericHSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceH.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006fee4; bytecode file offset 0x96c850"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
externalHandle
    | recoveredValue0 |
    recoveredValue0 := externalHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070040; bytecode file offset 0x96cb7c"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
bemSourceH
    | recoveredValue0 |
    recoveredValue0 := bemSourceH.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070354; bytecode file offset 0x96ce40"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
bemSourceC
    | recoveredValue0 |
    recoveredValue0 := bemSourceC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c634c; bytecode file offset 0x9c2dd0"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
externalHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    externalHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6620; bytecode file offset 0x9c3164"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
bemSourceH: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bemSourceH := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c69e4; bytecode file offset 0x9c3470"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
bemSourceC: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    bemSourceC := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20180d3c; bytecode file offset 0xa7d5fc"
!SGGenericSourceExternalObject methodsFor: 'recovered'!
hasBemSources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) bemSourceC.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) bemSourceH.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bemSourceInline.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

