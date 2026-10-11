"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001518c; bytecode file offset 0x912098"
!SGStatementBlockGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := SGStatementBlockGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20021e00; bytecode file offset 0x92209c"
!SGStatementBlockGO class methodsFor: 'recovered'!
defaultName
    ^'Statement Block'
! !

"ASDBase.ic method 0x20274870; bytecode file offset 0xb71148"
!SGStatementBlockGO class methodsFor: 'recovered'!
create: recoveredArg1 icon: recoveredArg2 lineStyle: recoveredArg3 size: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) createWithLineStyle: (recoveredValue0) manager: (nil).
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg4.
    (recoveredValue3) setDefSize: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) setSelectFlag: (false).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := (recoveredValue7) new.
    (recoveredValue6) setInterfaceGOs: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) createDefaultFrameGO.
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg2.
    (recoveredValue10) updateForIcon: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue2) createNameGO: (recoveredValue12).
    recoveredValue13 := recoveredLocal3.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20358344; bytecode file offset 0xc54c34"
!SGStatementBlockGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 icon: recoveredArg2 lineStyle: recoveredArg3 size: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWithLineStyle: (recoveredStack1) manager: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) setDefSize: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) setSelectFlag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setInterfaceGOs: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) createDefaultFrameGO.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) updateForIcon: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) createNameGO: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) createSelectorPortGO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:block280efc1cArg1 | 
    | block280efc1cValue0 block280efc1cValue1 |
    block280efc1cValue0 := block280efc1cArg1.
    block280efc1cValue1 := (block280efc1cValue0) connNameVisible: (false).
    block280efc1cValue1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

