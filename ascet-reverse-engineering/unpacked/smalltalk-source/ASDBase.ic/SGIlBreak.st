"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001be9c; bytecode file offset 0x92209c"
!SGIlBreak methodsFor: 'recovered'!
errLabel
    ^'BREAK'
! !

"ASDBase.ic method 0x200561a8; bytecode file offset 0x952a9c"
!SGIlBreak methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) breakStmnt: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200759ec; bytecode file offset 0x9757c8"
!SGIlBreak methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmntOnly
    ^true
! !

"ASDBase.ic method 0x20076844; bytecode file offset 0x9757c8"
!SGIlBreak methodsFor: 'recovered'!
hasIleUnconditionalEndCaseStmnt
    ^true
! !

"ASDBase.ic method 0x20076adc; bytecode file offset 0x9757c8"
!SGIlBreak methodsFor: 'recovered'!
hasIleEndCaseStmntOnly
    ^true
! !

"ASDBase.ic method 0x200771cc; bytecode file offset 0x9757c8"
!SGIlBreak methodsFor: 'recovered'!
isIleBreakStmnt
    ^true
! !

"ASDBase.ic method 0x200775ec; bytecode file offset 0x9757c8"
!SGIlBreak methodsFor: 'recovered'!
hasIleEndCaseStmnt
    ^true
! !

"ASDBase.ic method 0x20129434; bytecode file offset 0xa25d30"
!SGIlBreak methodsFor: 'recovered'!
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

