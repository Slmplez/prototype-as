"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005530; bytecode file offset 0x90206c"
!SGIlNullReference methodsFor: 'recovered'!
createOpGoalInterval: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000b900; bytecode file offset 0x908be4"
!SGIlNullReference methodsFor: 'recovered'!
precedenceLevel
    | recoveredValue0 |
    recoveredValue0 := (self) precedenceLevelOfIdentifier.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c9bc; bytecode file offset 0x909658"
!SGIlNullReference methodsFor: 'recovered'!
ileDependsOnAccessExpr: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2003a3a0; bytecode file offset 0x938608"
!SGIlNullReference methodsFor: 'recovered'!
createOpRecursiveType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createOpType: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055524; bytecode file offset 0x952a9c"
!SGIlNullReference methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ileNullReference: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074f84; bytecode file offset 0x9757c8"
!SGIlNullReference methodsFor: 'recovered'!
isIleNullReference
    ^true
! !

"ASDBase.ic method 0x20078054; bytecode file offset 0x9757c8"
!SGIlNullReference methodsFor: 'recovered'!
isIleReferenceInitValue
    ^true
! !

"ASDBase.ic method 0x20155d00; bytecode file offset 0xa525c4"
!SGIlNullReference methodsFor: 'recovered'!
createOpType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) createSource: (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

