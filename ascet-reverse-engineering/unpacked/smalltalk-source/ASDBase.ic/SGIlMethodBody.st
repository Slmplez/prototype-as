"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002f794; bytecode file offset 0x934580"
!SGIlMethodBody methodsFor: 'recovered'!
endSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stapledSource.
    recoveredValue1 := (recoveredValue0) endSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054d08; bytecode file offset 0x952a9c"
!SGIlMethodBody methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodBody: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077824; bytecode file offset 0x9757c8"
!SGIlMethodBody methodsFor: 'recovered'!
isIleMethodBody
    ^true
! !

"ASDBase.ic method 0x2018d810; bytecode file offset 0xa8a0dc"
!SGIlMethodBody methodsFor: 'recovered'!
stapledSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgStapledSource.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := source.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := source.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) createStapledSourceStart: (recoveredStack1) end: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            source := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := source.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b583c; bytecode file offset 0xab2104"
!SGIlMethodBody methodsFor: 'recovered'!
createWithChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (self) variables.
    recoveredBlock7Value3 := (recoveredBlock7Value0) methodBody: (recoveredBlock7Value1) variables: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

