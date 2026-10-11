"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x200044bc; bytecode file offset 0x126c4"
!PCDExecuterWinExeInMain methodsFor: 'recovered'!
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
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := 'Kk'.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := 'Call_72244'.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) == (recoveredBlock28Stack2).
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := CwWMShell.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) focusShell.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 50.
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Stack2 := [
    | recoveredBlock28Block50Value0 recoveredBlock28Block50Value1 recoveredBlock28Block50Value2 |
    recoveredBlock28Block50Value0 := executable.
    recoveredBlock28Block50Value1 := (recoveredBlock28Block50Value0) trimBlanks.
    recoveredBlock28Block50Value2 := (self) executeOnWindows: (recoveredBlock28Block50Value1).
    recoveredBlock28Block50Value2
].
            recoveredBlock28PC := 63.
        ].
        recoveredBlock28Step = 63 ifTrue: [
            recoveredBlock28Stack3 := 'Executing external program\'.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) withCrs.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack4 := executable.
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) trimBlanks.
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack4 := ' ...'.
            recoveredBlock28PC := 75.
        ].
        recoveredBlock28Step = 75 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            (recoveredBlock28Stack1) execLongOperation: (recoveredBlock28Stack2) message: (recoveredBlock28Stack3).
            recoveredBlock28PC := 79.
        ].
        recoveredBlock28Step = 79 ifTrue: [
            recoveredBlock28Stack1 := 'Kk'.
            recoveredBlock28PC := 81.
        ].
        recoveredBlock28Step = 81 ifTrue: [
            recoveredBlock28Stack2 := 'Call_72244'.
            recoveredBlock28PC := 83.
        ].
        recoveredBlock28Step = 83 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) == (recoveredBlock28Stack2).
            recoveredBlock28PC := 84.
        ].
        recoveredBlock28Step = 84 ifTrue: [
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local1.
            recoveredBlock28PC := 89.
        ].
        recoveredBlock28Step = 89 ifTrue: [
            (recoveredBlock28Stack2 == nil) ifTrue: [recoveredBlock28PC := 151] ifFalse: [recoveredBlock28PC := 92].
        ].
        recoveredBlock28Step = 92 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local1.
            recoveredBlock28PC := 95.
        ].
        recoveredBlock28Step = 95 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isDestroyed.
            recoveredBlock28PC := 97.
        ].
        recoveredBlock28Step = 97 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 151] ifFalse: [recoveredBlock28PC := 100].
        ].
        recoveredBlock28Step = 100 ifTrue: [
            recoveredBlock28PC := 101.
        ].
        recoveredBlock28Step = 101 ifTrue: [
            recoveredBlock28Stack1 := CwAppContext.
            recoveredBlock28PC := 103.
        ].
        recoveredBlock28Step = 103 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) default.
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack2 := [
    | recoveredBlock28Block105Stack0 recoveredBlock28Block105Stack1 recoveredBlock28Block105Stack2 recoveredBlock28Block105PC recoveredBlock28Block105Step recoveredBlock28Block105Done recoveredBlock28Block105Result |
    recoveredBlock28Block105Stack0 := nil.
    recoveredBlock28Block105PC := 112.
    recoveredBlock28Block105Done := false.
    [recoveredBlock28Block105Done not] whileTrue: [
        recoveredBlock28Block105Step := recoveredBlock28Block105PC.
        recoveredBlock28Block105Step = 112 ifTrue: [
            recoveredBlock28Block105Stack1 := recoveredBlock28Local1.
            recoveredBlock28Block105PC := 115.
        ].
        recoveredBlock28Block105Step = 115 ifTrue: [
            recoveredBlock28Block105Stack1 := (recoveredBlock28Block105Stack1) isDialogShell.
            recoveredBlock28Block105PC := 117.
        ].
        recoveredBlock28Block105Step = 117 ifTrue: [
            (recoveredBlock28Block105Stack1) ifTrue: [recoveredBlock28Block105PC := 120] ifFalse: [recoveredBlock28Block105PC := 138].
        ].
        recoveredBlock28Block105Step = 120 ifTrue: [
            recoveredBlock28Block105Stack1 := recoveredBlock28Local1.
            recoveredBlock28Block105PC := 123.
        ].
        recoveredBlock28Block105Step = 123 ifTrue: [
            recoveredBlock28Block105Stack1 := (recoveredBlock28Block105Stack1) parent.
            recoveredBlock28Block105PC := 125.
        ].
        recoveredBlock28Block105Step = 125 ifTrue: [
            (recoveredBlock28Block105Stack1 == nil) ifTrue: [recoveredBlock28Block105PC := 138] ifFalse: [recoveredBlock28Block105PC := 128].
        ].
        recoveredBlock28Block105Step = 128 ifTrue: [
            recoveredBlock28Block105Stack1 := recoveredBlock28Local1.
            recoveredBlock28Block105PC := 131.
        ].
        recoveredBlock28Block105Step = 131 ifTrue: [
            recoveredBlock28Block105Stack1 := (recoveredBlock28Block105Stack1) parent.
            recoveredBlock28Block105PC := 133.
        ].
        recoveredBlock28Block105Step = 133 ifTrue: [
            recoveredBlock28Block105Stack1 := (recoveredBlock28Block105Stack1) setInputFocus.
            recoveredBlock28Block105PC := 135.
        ].
        recoveredBlock28Block105Step = 135 ifTrue: [
            recoveredBlock28Block105PC := 148.
        ].
        recoveredBlock28Block105Step = 138 ifTrue: [
            recoveredBlock28Block105Stack1 := recoveredBlock28Local1.
            recoveredBlock28Block105PC := 141.
        ].
        recoveredBlock28Block105Step = 141 ifTrue: [
            (recoveredBlock28Block105Stack1) setInputFocus.
            recoveredBlock28Block105PC := 143.
        ].
        recoveredBlock28Block105Step = 143 ifTrue: [
            recoveredBlock28Block105Stack1 := recoveredBlock28Local1.
            recoveredBlock28Block105PC := 146.
        ].
        recoveredBlock28Block105Step = 146 ifTrue: [
            recoveredBlock28Block105Stack1 := (recoveredBlock28Block105Stack1) bringToFront.
            recoveredBlock28Block105PC := 148.
        ].
        recoveredBlock28Block105Step = 148 ifTrue: [
            recoveredBlock28Block105Result := recoveredBlock28Block105Stack1.
            recoveredBlock28Block105Done := true.
        ].
    ].
    recoveredBlock28Block105Result
].
            recoveredBlock28PC := 149.
        ].
        recoveredBlock28Step = 149 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) syncExecInUI: (recoveredBlock28Stack2).
            recoveredBlock28PC := 151.
        ].
        recoveredBlock28Step = 151 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
    (recoveredValue5) terminateRefreshProcessWhile: (recoveredValue6).
    ^self
! !

