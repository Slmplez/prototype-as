"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20003270; bytecode file offset 0x11450"
!PCDExecuterWinExe methodsFor: 'recovered'!
executeInScope: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super executeInScope: (recoveredValue0).
    recoveredValue1 := ZZZExecuterToolbox.
    recoveredValue2 := (recoveredValue1) mainController.
    recoveredValue3 := (recoveredValue2) userInterface.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := ('Kk') == ('Call_55041').
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) isRBUserInterface.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 42] ifFalse: [recoveredBlock28PC := 48].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack2 := [
    | recoveredBlock28Block53Value0 recoveredBlock28Block53Value1 recoveredBlock28Block53Value2 recoveredBlock28Block53Value3 |
    recoveredBlock28Block53Value0 := executable.
    recoveredBlock28Block53Value1 := (recoveredBlock28Block53Value0) trimBlanks.
    recoveredBlock28Block53Value2 := (self) isHide.
    recoveredBlock28Block53Value3 := (self) executeOnWindows: (recoveredBlock28Block53Value1) hide: (recoveredBlock28Block53Value2).
    recoveredBlock28Block53Value3
].
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            recoveredBlock28Stack3 := 'Executing external program\'.
            recoveredBlock28PC := 72.
        ].
        recoveredBlock28Step = 72 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) withCrs.
            recoveredBlock28PC := 74.
        ].
        recoveredBlock28Step = 74 ifTrue: [
            recoveredBlock28Stack4 := executable.
            recoveredBlock28PC := 76.
        ].
        recoveredBlock28Step = 76 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) trimBlanks.
            recoveredBlock28PC := 78.
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            recoveredBlock28Stack4 := ' ...'.
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 84.
        ].
        recoveredBlock28Step = 84 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) execLongOperation: (recoveredBlock28Stack2) message: (recoveredBlock28Stack3).
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue5) terminateRefreshProcessWhile: (recoveredValue6).
    ^self
! !

