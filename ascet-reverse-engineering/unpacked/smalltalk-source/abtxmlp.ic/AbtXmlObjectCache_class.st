"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtxmlp.ic method 0x20000888; bytecode file offset 0x19074"
!AbtXmlObjectCache class methodsFor: 'recovered'!
reset
    Current := nil.
    ^self
! !

"abtxmlp.ic method 0x20000a00; bytecode file offset 0x191f8"
!AbtXmlObjectCache class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"abtxmlp.ic method 0x200017c4; bytecode file offset 0x19fe0"
!AbtXmlObjectCache class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"abtxmlp.ic method 0x200035c8; bytecode file offset 0x1bdd8"
!AbtXmlObjectCache class methodsFor: 'recovered'!
current
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Current.
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
            Current := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Current.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

