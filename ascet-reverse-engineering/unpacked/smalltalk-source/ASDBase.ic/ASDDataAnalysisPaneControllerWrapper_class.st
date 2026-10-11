"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012600; bytecode file offset 0x912098"
!ASDDataAnalysisPaneControllerWrapper class methodsFor: 'recovered'!
defaultCursorGraphClass
    | recoveredValue0 |
    recoveredValue0 := RBMeasureCursorGraph.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200126fc; bytecode file offset 0x912098"
!ASDDataAnalysisPaneControllerWrapper class methodsFor: 'recovered'!
defaultAnalysisSetupDialogClass
    | recoveredValue0 |
    recoveredValue0 := RBMeasureAnalysisSetupDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200146c4; bytecode file offset 0x912098"
!ASDDataAnalysisPaneControllerWrapper class methodsFor: 'recovered'!
defaultLogCursorClass
    | recoveredValue0 |
    recoveredValue0 := RBLogicalMeasureCursor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201d3e54; bytecode file offset 0xad071c"
!ASDDataAnalysisPaneControllerWrapper class methodsFor: 'recovered'!
createForController: recoveredArg1 resultView: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) initWithPaneController: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) resultView: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createCursors.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) changeFromAnalysisMode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

