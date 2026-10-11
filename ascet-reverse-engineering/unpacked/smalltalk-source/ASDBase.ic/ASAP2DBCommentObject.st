"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066e14; bytecode file offset 0x9646f8"
!ASAP2DBCommentObject methodsFor: 'recovered'!
longName
    | recoveredValue0 |
    recoveredValue0 := longName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006893c; bytecode file offset 0x965b90"
!ASAP2DBCommentObject methodsFor: 'recovered'!
annotation
    | recoveredValue0 |
    recoveredValue0 := annotation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d28; bytecode file offset 0x966bdc"
!ASAP2DBCommentObject methodsFor: 'recovered'!
displayIdentifier
    | recoveredValue0 |
    recoveredValue0 := displayIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200beb20; bytecode file offset 0x9bc0b4"
!ASAP2DBCommentObject methodsFor: 'recovered'!
longName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    longName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0ca0; bytecode file offset 0x9bdf14"
!ASAP2DBCommentObject methodsFor: 'recovered'!
displayIdentifier: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    displayIdentifier := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x202fcc7c; bytecode file offset 0xbf9548"
!ASAP2DBCommentObject methodsFor: 'recovered'!
annotation: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            annotation := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := annotation.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            annotation := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := annotation.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            annotation := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := annotation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

