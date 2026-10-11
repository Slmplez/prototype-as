"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009289c; bytecode file offset 0x98f298"
!ETASGroupItemFileRowSelection methodsFor: 'recovered'!
setSelectedGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := itemFile.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setSelectedGroup: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202b20f0; bytecode file offset 0xbae9bc"
!ETASGroupItemFileRowSelection methodsFor: 'recovered'!
readFirstItemArray
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := itemFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) openFileReadOnly.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := itemFile.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFirstItemArray.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := itemFile.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) closeSelectedGroup.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkSelection: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) readNextItemArray.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

