"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ba18; bytecode file offset 0x948384"
!ASAP2RoutineParameter methodsFor: 'recovered'!
noOfLocalRoutine
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bbac; bytecode file offset 0x94877c"
!ASAP2RoutineParameter methodsFor: 'recovered'!
routineResult
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c1fc; bytecode file offset 0x948b80"
!ASAP2RoutineParameter methodsFor: 'recovered'!
rncResult
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093ed4; bytecode file offset 0x9907c8"
!ASAP2RoutineParameter methodsFor: 'recovered'!
noOfLocalRoutine: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (4) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093f34; bytecode file offset 0x9907ec"
!ASAP2RoutineParameter methodsFor: 'recovered'!
routineResult: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (5) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093f4c; bytecode file offset 0x990828"
!ASAP2RoutineParameter methodsFor: 'recovered'!
rncResult: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (6) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d6bd4; bytecode file offset 0x9d3600"
!ASAP2RoutineParameter methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putNoOfLocalRoutineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putRoutineResultIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011da38; bytecode file offset 0xa1a2f8"
!ASAP2RoutineParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) getNoOfLocalRoutine: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getRoutineResult: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) parse: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e9c3c; bytecode file offset 0xae6830"
!ASAP2RoutineParameter methodsFor: 'recovered'!
putIn: recoveredArg1 pageCode: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pageCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) pageCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) integerList: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021ec8c; bytecode file offset 0xb1b558"
!ASAP2RoutineParameter methodsFor: 'recovered'!
constants
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new: (3).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('REQUESTROUTINERESULTS') put: (0).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('CODEDRESULT') put: (2).
    (recoveredValue2) at: ('STARTROUTINE') put: (1).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

