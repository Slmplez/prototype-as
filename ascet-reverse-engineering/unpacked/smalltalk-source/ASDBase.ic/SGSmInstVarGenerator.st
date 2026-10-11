"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20053c88; bytecode file offset 0x9505d0"
!SGSmInstVarGenerator methodsFor: 'recovered'!
addInstVarsOfSM: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20466c3c; bytecode file offset 0xd63528"
!SGSmInstVarGenerator methodsFor: 'recovered'!
addInstVar: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'local element'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarsOfClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) mdlLabel.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value2) mdlLabel.
    recoveredBlock11Value4 := (recoveredBlock11Value1) equals: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 |
    recoveredLocal1 := 'global element'.
    recoveredBlock27Value0 := (self) logicManager.
    recoveredBlock27Value1 := (recoveredBlock27Value0) classVars.
    recoveredBlock27Value2 := [:recoveredBlock27Block42Arg1 | 
    | recoveredBlock27Block42Value0 recoveredBlock27Block42Value1 recoveredBlock27Block42Value2 recoveredBlock27Block42Value3 recoveredBlock27Block42Value4 |
    recoveredBlock27Block42Value0 := recoveredBlock27Block42Arg1.
    recoveredBlock27Block42Value1 := (recoveredBlock27Block42Value0) mdlLabel.
    recoveredBlock27Block42Value2 := recoveredArg1.
    recoveredBlock27Block42Value3 := (recoveredBlock27Block42Value2) mdlLabel.
    recoveredBlock27Block42Value4 := (recoveredBlock27Block42Value1) equals: (recoveredBlock27Block42Value3).
    recoveredBlock27Block42Value4
].
    recoveredBlock27Value3 := [
    | recoveredBlock27Block57Value0 recoveredBlock27Block57Value1 recoveredBlock27Block57Value2 recoveredBlock27Block57Value3 recoveredBlock27Block57Value4 |
    recoveredLocal1 := 'method'.
    recoveredBlock27Block57Value0 := (self) sgClass.
    recoveredBlock27Block57Value1 := (recoveredBlock27Block57Value0) methods.
    recoveredBlock27Block57Value2 := [:recoveredBlock27Block57Block73Arg1 | 
    | recoveredBlock27Block57Block73Value0 recoveredBlock27Block57Block73Value1 recoveredBlock27Block57Block73Value2 recoveredBlock27Block57Block73Value3 recoveredBlock27Block57Block73Value4 |
    recoveredBlock27Block57Block73Value0 := recoveredBlock27Block57Block73Arg1.
    recoveredBlock27Block57Block73Value1 := (recoveredBlock27Block57Block73Value0) methodName.
    recoveredBlock27Block57Block73Value2 := recoveredArg1.
    recoveredBlock27Block57Block73Value3 := (recoveredBlock27Block57Block73Value2) mdlLabel.
    recoveredBlock27Block57Block73Value4 := (recoveredBlock27Block57Block73Value1) equals: (recoveredBlock27Block57Block73Value3).
    recoveredBlock27Block57Block73Value4
].
    recoveredBlock27Block57Value3 := [].
    recoveredBlock27Block57Value4 := (recoveredBlock27Block57Value1) detect: (recoveredBlock27Block57Value2) ifNone: (recoveredBlock27Block57Value3).
    recoveredBlock27Block57Value4
].
    recoveredBlock27Value4 := (recoveredBlock27Value1) detect: (recoveredBlock27Value2) ifNone: (recoveredBlock27Value3).
    recoveredBlock27Value4
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 71.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlLabel.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) smSyntaxErrNo: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

