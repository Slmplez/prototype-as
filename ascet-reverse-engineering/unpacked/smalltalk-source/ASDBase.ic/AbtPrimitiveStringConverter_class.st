"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012804; bytecode file offset 0x912098"
!AbtPrimitiveStringConverter class methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := AbtCvtrNamePrimitiveString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20048c3c; bytecode file offset 0x945728"
!AbtPrimitiveStringConverter class methodsFor: 'recovered'!
reinitialize
    SharedInstance := nil.
    ^self
! !

"ASDBase.ic method 0x200759d4; bytecode file offset 0x9757c8"
!AbtPrimitiveStringConverter class methodsFor: 'recovered'!
emptyMakesDefault
    ^true
! !

"ASDBase.ic method 0x20077d7c; bytecode file offset 0x9757c8"
!AbtPrimitiveStringConverter class methodsFor: 'recovered'!
worksWellWithContinuousNotification
    ^true
! !

"ASDBase.ic method 0x2007d284; bytecode file offset 0x97c330"
!AbtPrimitiveStringConverter class methodsFor: 'recovered'!
isEndUserConverter
    ^false
! !

"ASDBase.ic method 0x20114f80; bytecode file offset 0xa1183c"
!AbtPrimitiveStringConverter class methodsFor: 'recovered'!
sharedInstance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SharedInstance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            SharedInstance := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SharedInstance.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

