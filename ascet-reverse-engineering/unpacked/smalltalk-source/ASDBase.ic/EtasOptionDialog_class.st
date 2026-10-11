"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001422c; bytecode file offset 0x912098"
!EtasOptionDialog class methodsFor: 'recovered'!
lastSelection
    | recoveredValue0 |
    recoveredValue0 := LastSelection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f508; bytecode file offset 0x92209c"
!EtasOptionDialog class methodsFor: 'recovered'!
labelTag
    ^'LABEL'
! !

"ASDBase.ic method 0x200efdd4; bytecode file offset 0x9ec68c"
!EtasOptionDialog class methodsFor: 'recovered'!
descriptionVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DescriptionVisible.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := DescriptionVisible.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

