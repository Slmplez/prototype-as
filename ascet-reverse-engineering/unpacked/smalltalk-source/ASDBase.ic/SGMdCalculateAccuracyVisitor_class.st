"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048cfc; bytecode file offset 0x945728"
!SGMdCalculateAccuracyVisitor class methodsFor: 'recovered'!
resetIATResults
    IATResults := nil.
    ^self
! !

"ASDBase.ic method 0x20059528; bytecode file offset 0x956284"
!SGMdCalculateAccuracyVisitor class methodsFor: 'recovered'!
analyseMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) analyseMethod: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ae448; bytecode file offset 0x9ab034"
!SGMdCalculateAccuracyVisitor class methodsFor: 'recovered'!
IATCase: recoveredArg1 result: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) IATResults.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201284b0; bytecode file offset 0xa24eb0"
!SGMdCalculateAccuracyVisitor class methodsFor: 'recovered'!
IATResults
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IATResults.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            IATResults := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := IATResults.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

