"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056fb4; bytecode file offset 0x953900"
!EtasExpProjectTransferDialog class methodsFor: 'recovered'!
extractPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) splitPathAndName: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) last.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056ff4; bytecode file offset 0x953900"
!EtasExpProjectTransferDialog class methodsFor: 'recovered'!
extractName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) splitPathAndName: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) first.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e319c; bytecode file offset 0x9dfa54"
!EtasExpProjectTransferDialog class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (500) @ (190).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201e001c; bytecode file offset 0xadc8e8"
!EtasExpProjectTransferDialog class methodsFor: 'recovered'!
experimentInca: recoveredArg1 controller: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferDialog.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ascetProject: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ascetProjectController: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045358c; bytecode file offset 0xd4fe6c"
!EtasExpProjectTransferDialog class methodsFor: 'recovered'!
splitPathAndName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := [:recoveredBlock43Arg1 :recoveredBlock43Arg2 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43Stack4 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack1 := nil.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg2.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack3 := recoveredLocal4.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            recoveredBlock43Stack3 := (recoveredBlock43Stack3) size.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) < (recoveredBlock43Stack3).
            recoveredBlock43PC := 58.
        ].
        recoveredBlock43Step = 58 ifTrue: [
            (recoveredBlock43Stack2) ifTrue: [recoveredBlock43PC := 62] ifFalse: [recoveredBlock43PC := 90].
        ].
        recoveredBlock43Step = 62 ifTrue: [
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg2.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack2 := 1.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) > (recoveredBlock43Stack2).
            recoveredBlock43PC := 67.
        ].
        recoveredBlock43Step = 67 ifTrue: [
            (recoveredBlock43Stack1) ifTrue: [recoveredBlock43PC := 70] ifFalse: [recoveredBlock43PC := 80].
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack2 := '\'.
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 77.
        ].
        recoveredBlock43Step = 77 ifTrue: [
            recoveredLocal1 := recoveredBlock43Stack1.
            recoveredBlock43PC := 80.
        ].
        recoveredBlock43Step = 80 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 83.
        ].
        recoveredBlock43Step = 83 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 86.
        ].
        recoveredBlock43Step = 86 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Stack1.
            recoveredBlock43PC := 87.
        ].
        recoveredBlock43Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock43Stack2.
            recoveredBlock43PC := 90.
        ].
        recoveredBlock43Step = 90 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack1.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

