"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004afb0; bytecode file offset 0x947a60"
!ASAP2KWP2000V30Routine methodsFor: 'recovered'!
routinePara
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200849cc; bytecode file offset 0x981ca4"
!ASAP2KWP2000V30Routine methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) parseStruct: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5d28; bytecode file offset 0x9a27f0"
!ASAP2KWP2000V30Routine methodsFor: 'recovered'!
routinePara: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010150c; bytecode file offset 0x9fdf08"
!ASAP2KWP2000V30Routine methodsFor: 'recovered'!
putIn: recoveredArg1 routinePara: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) routinePara.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) routinePara.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126414; bytecode file offset 0xa22d68"
!ASAP2KWP2000V30Routine methodsFor: 'recovered'!
getRoutinePara: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASAP2KWP2000V30RoutinePara.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) getFrom: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) routinePara: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20163af8; bytecode file offset 0xa605cc"
!ASAP2KWP2000V30Routine methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !

