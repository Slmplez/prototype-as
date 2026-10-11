"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200132c0; bytecode file offset 0x912098"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
defaultDataConfigObjectClass
    | recoveredValue0 |
    recoveredValue0 := RBCalOneDGraphDataDisplayConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200143dc; bytecode file offset 0x912098"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
defaultPaneControllerClass
    | recoveredValue0 |
    recoveredValue0 := RBEditSignalPaneController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014bc8; bytecode file offset 0x912098"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
defaultWindowConfigObjectClass
    | recoveredValue0 |
    recoveredValue0 := RBCalOneDGraphViewConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200156fc; bytecode file offset 0x912098"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
typeString
    | recoveredValue0 |
    recoveredValue0 := GMVGraphical1DTableEditor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076f54; bytecode file offset 0x9757c8"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
defaultShowGridFlag
    ^true
! !

"ASDBase.ic method 0x200cfe78; bytecode file offset 0x9cc7b4"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
basicLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := GMVGraphical1DTableEditor.
    recoveredValue1 := ('[2. ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (']').
    ^recoveredValue2
! !

"ASDBase.ic method 0x202de774; bytecode file offset 0xbdb04c"
!RBOneDCharTableGraphCalibrationEditor class methodsFor: 'recovered'!
create: recoveredArg1 for: recoveredArg2 with: recoveredArg3
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
            recoveredStack2 := [:block280e6904Arg1 | 
    | block280e6904Stack0 block280e6904Stack1 block280e6904Stack2 block280e6904Stack3 block280e6904PC block280e6904Step block280e6904Done block280e6904Result |
    block280e6904Stack0 := self.
    block280e6904PC := 4.
    block280e6904Done := false.
    [block280e6904Done not] whileTrue: [
        block280e6904Step := block280e6904PC.
        block280e6904Step = 4 ifTrue: [
            block280e6904Stack1 := block280e6904Arg1.
            block280e6904PC := 5.
        ].
        block280e6904Step = 5 ifTrue: [
            block280e6904Stack1 := (block280e6904Stack1) xSize.
            block280e6904PC := 6.
        ].
        block280e6904Step = 6 ifTrue: [
            block280e6904Stack2 := 1.
            block280e6904PC := 8.
        ].
        block280e6904Step = 8 ifTrue: [
            block280e6904Stack1 := (block280e6904Stack1) = (block280e6904Stack2).
            block280e6904PC := 9.
        ].
        block280e6904Step = 9 ifTrue: [
            (block280e6904Stack1) ifTrue: [block280e6904PC := 12] ifFalse: [block280e6904PC := 22].
        ].
        block280e6904Step = 12 ifTrue: [
            block280e6904Stack1 := RBCalibrationWindow.
            block280e6904PC := 14.
        ].
        block280e6904Step = 14 ifTrue: [
            block280e6904Stack2 := block280e6904Arg1.
            block280e6904PC := 15.
        ].
        block280e6904Step = 15 ifTrue: [
            block280e6904Stack2 := (block280e6904Stack2) wName.
            block280e6904PC := 16.
        ].
        block280e6904Step = 16 ifTrue: [
            (block280e6904Stack1) errorCannotEditCurveWithOneArg: (block280e6904Stack2).
            block280e6904PC := 18.
        ].
        block280e6904Step = 18 ifTrue: [
            block280e6904Stack1 := false.
            block280e6904PC := 19.
        ].
        block280e6904Step = 19 ifTrue: [
            block280e6904PC := 23.
        ].
        block280e6904Step = 22 ifTrue: [
            block280e6904Stack1 := true.
            block280e6904PC := 23.
        ].
        block280e6904Step = 23 ifTrue: [
            block280e6904Result := block280e6904Stack1.
            block280e6904Done := true.
        ].
    ].
    block280e6904Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := super create: (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

