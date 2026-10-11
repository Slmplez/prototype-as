"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20054e10; bytecode file offset 0x952a9c"
!SGIlEmptyStmnt methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) emptyStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061de8; bytecode file offset 0x95e838"
!SGIlEmptyStmnt methodsFor: 'recovered'!
asIleOpimizedLabeledStmnt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (recoveredValue0) stmntList: (#()).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077404; bytecode file offset 0x9757c8"
!SGIlEmptyStmnt methodsFor: 'recovered'!
isIleEmptyStmnt
    ^true
! !

"ASDBase.ic method 0x20129444; bytecode file offset 0xa25d30"
!SGIlEmptyStmnt methodsFor: 'recovered'!
hash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hash.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            hash := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := hash.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

