"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20080fac; bytecode file offset 0x97d868"
!DBASAP2MethodLinker class methodsFor: 'recovered'!
numPredefinedIDs
    ^232
! !

"ASDBase.ic method 0x200f1ac8; bytecode file offset 0x9ee39c"
!DBASAP2MethodLinker class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c4158Arg1 | 
    | block280c4158Value0 block280c4158Value1 |
    block280c4158Value0 := block280c4158Arg1.
    block280c4158Value1 := (block280c4158Value0) asap2BehaviorId.
    block280c4158Value1
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeClassCheckBehaviorId: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a4bc; bytecode file offset 0xa56d98"
!DBASAP2MethodLinker class methodsFor: 'recovered'!
literalTypeFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asap2BehaviorId.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := LiteralMap.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044836c; bytecode file offset 0xd44c54"
!DBASAP2MethodLinker class methodsFor: 'recovered'!
loadFromBytes: recoveredArg1 in: recoveredArg2 offset: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Process.
    recoveredValue1 := (recoveredValue0) stackOverflowWarningSize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 recoveredBlock10Value7 recoveredBlock10Value8 |
    recoveredBlock10Value0 := Process.
    recoveredBlock10Value1 := Process.
    recoveredBlock10Value2 := (recoveredBlock10Value1) stackOverflowWarningSize.
    recoveredBlock10Value3 := (recoveredBlock10Value2) * (4).
    (recoveredBlock10Value0) stackOverflowWarningSize: (recoveredBlock10Value3).
    recoveredBlock10Value4 := recoveredArg1.
    recoveredBlock10Value5 := recoveredArg2.
    recoveredBlock10Value6 := recoveredArg3.
    recoveredBlock10Value7 := super loadFromBytes: (recoveredBlock10Value4) in: (recoveredBlock10Value5) offset: (recoveredBlock10Value6).
    recoveredBlock10Value8 := recoveredBlock10Value7.
    recoveredLocal2 := recoveredBlock10Value8.
    recoveredBlock10Value7
].
    recoveredValue3 := ExError.
    recoveredValue4 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46Stack4 recoveredBlock46Stack5 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := CTError.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) isHaltOnError.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            (recoveredBlock46Stack1) ifTrue: [recoveredBlock46PC := 60] ifFalse: [recoveredBlock46PC := 77].
        ].
        recoveredBlock46Step = 60 ifTrue: [
            recoveredBlock46Stack1 := self.
            recoveredBlock46PC := 61.
        ].
        recoveredBlock46Step = 61 ifTrue: [
            recoveredBlock46Stack2 := recoveredArg1.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack3 := recoveredArg2.
            recoveredBlock46PC := 67.
        ].
        recoveredBlock46Step = 67 ifTrue: [
            recoveredBlock46Stack4 := recoveredArg3.
            recoveredBlock46PC := 70.
        ].
        recoveredBlock46Step = 70 ifTrue: [
            recoveredBlock46Stack1 := super loadFromBytes: (recoveredBlock46Stack2) in: (recoveredBlock46Stack3) offset: (recoveredBlock46Stack4).
            recoveredBlock46PC := 74.
        ].
        recoveredBlock46Step = 74 ifTrue: [
            recoveredLocal2 := recoveredBlock46Stack1.
            recoveredBlock46PC := 77.
        ].
        recoveredBlock46Step = 77 ifTrue: [
            recoveredBlock46Stack1 := Process.
            recoveredBlock46PC := 79.
        ].
        recoveredBlock46Step = 79 ifTrue: [
            recoveredBlock46Stack2 := recoveredLocal1.
            recoveredBlock46PC := 82.
        ].
        recoveredBlock46Step = 82 ifTrue: [
            (recoveredBlock46Stack1) stackOverflowWarningSize: (recoveredBlock46Stack2).
            recoveredBlock46PC := 84.
        ].
        recoveredBlock46Step = 84 ifTrue: [
            recoveredBlock46Stack1 := recoveredBlock46Arg1.
            recoveredBlock46PC := 85.
        ].
        recoveredBlock46Step = 85 ifTrue: [
            recoveredBlock46Stack2 := DBLinDeLinError.
            recoveredBlock46PC := 87.
        ].
        recoveredBlock46Step = 87 ifTrue: [
            recoveredBlock46Stack3 := DBLinDeLinObjectLoadingFailed.
            recoveredBlock46PC := 89.
        ].
        recoveredBlock46Step = 89 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) create: (recoveredBlock46Stack3).
            recoveredBlock46PC := 91.
        ].
        recoveredBlock46Step = 91 ifTrue: [
            recoveredBlock46Stack3 := recoveredBlock46Stack2.
            recoveredBlock46PC := 92.
        ].
        recoveredBlock46Step = 92 ifTrue: [
            recoveredLocal2 := recoveredBlock46Stack3.
            recoveredBlock46PC := 95.
        ].
        recoveredBlock46Step = 95 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) exitWith: (recoveredBlock46Stack2).
            recoveredBlock46PC := 97.
        ].
        recoveredBlock46Step = 97 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
    (recoveredValue2) when: (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := Process.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) stackOverflowWarningSize: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

