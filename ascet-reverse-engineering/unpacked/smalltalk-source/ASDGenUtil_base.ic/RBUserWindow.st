"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20000d28; bytecode file offset 0xeed4"
!RBUserWindow methodsFor: 'recovered'!
focusCallbacks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := XmNfocusCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('gettingFocus:clientData:callData:') clientData: (nil).
    ^self
! !

"ASDGenUtil_base.ic method 0x20001258; bytecode file offset 0xf40c"
!RBUserWindow methodsFor: 'recovered'!
executerFileName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolutePath.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppProgramPath.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20003494; bytecode file offset 0x1165c"
!RBUserWindow methodsFor: 'recovered'!
disableMenu: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) windowMenuBar.
    recoveredValue1 := (recoveredValue0) menus.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) title.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) asLowercase.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := $~.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) zapChar: (recoveredBlock6Stack3).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) trimBlanks.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) asLowercase.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack4 := $~.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) zapChar: (recoveredBlock6Stack4).
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) trimBlanks.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesSubstring: (recoveredBlock6Stack3).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 42] ifFalse: [recoveredBlock6PC := 90].
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) entries.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block46Arg1 | 
    | recoveredBlock6Block46Stack0 recoveredBlock6Block46Stack1 recoveredBlock6Block46Stack2 recoveredBlock6Block46Stack3 recoveredBlock6Block46Stack4 recoveredBlock6Block46Stack5 recoveredBlock6Block46PC recoveredBlock6Block46Step recoveredBlock6Block46Done recoveredBlock6Block46Result |
    recoveredBlock6Block46Stack0 := nil.
    recoveredBlock6Block46PC := 52.
    recoveredBlock6Block46Done := false.
    [recoveredBlock6Block46Done not] whileTrue: [
        recoveredBlock6Block46Step := recoveredBlock6Block46PC.
        recoveredBlock6Block46Step = 52 ifTrue: [
            recoveredBlock6Block46Stack1 := nil.
            recoveredBlock6Block46PC := 53.
        ].
        recoveredBlock6Block46Step = 53 ifTrue: [
            recoveredBlock6Block46Stack2 := recoveredBlock6Block46Arg1.
            recoveredBlock6Block46PC := 54.
        ].
        recoveredBlock6Block46Step = 54 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) label.
            recoveredBlock6Block46PC := 56.
        ].
        recoveredBlock6Block46Step = 56 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) asLowercase.
            recoveredBlock6Block46PC := 57.
        ].
        recoveredBlock6Block46Step = 57 ifTrue: [
            recoveredBlock6Block46Stack3 := $~.
            recoveredBlock6Block46PC := 60.
        ].
        recoveredBlock6Block46Step = 60 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) zapChar: (recoveredBlock6Block46Stack3).
            recoveredBlock6Block46PC := 62.
        ].
        recoveredBlock6Block46Step = 62 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) trimBlanks.
            recoveredBlock6Block46PC := 64.
        ].
        recoveredBlock6Block46Step = 64 ifTrue: [
            recoveredBlock6Block46Stack3 := recoveredArg2.
            recoveredBlock6Block46PC := 67.
        ].
        recoveredBlock6Block46Step = 67 ifTrue: [
            recoveredBlock6Block46Stack3 := (recoveredBlock6Block46Stack3) asLowercase.
            recoveredBlock6Block46PC := 68.
        ].
        recoveredBlock6Block46Step = 68 ifTrue: [
            recoveredBlock6Block46Stack4 := $~.
            recoveredBlock6Block46PC := 72.
        ].
        recoveredBlock6Block46Step = 72 ifTrue: [
            recoveredBlock6Block46Stack3 := (recoveredBlock6Block46Stack3) zapChar: (recoveredBlock6Block46Stack4).
            recoveredBlock6Block46PC := 74.
        ].
        recoveredBlock6Block46Step = 74 ifTrue: [
            recoveredBlock6Block46Stack3 := (recoveredBlock6Block46Stack3) trimBlanks.
            recoveredBlock6Block46PC := 76.
        ].
        recoveredBlock6Block46Step = 76 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) includesSubstring: (recoveredBlock6Block46Stack3).
            recoveredBlock6Block46PC := 78.
        ].
        recoveredBlock6Block46Step = 78 ifTrue: [
            (recoveredBlock6Block46Stack2) ifTrue: [recoveredBlock6Block46PC := 82] ifFalse: [recoveredBlock6Block46PC := 87].
        ].
        recoveredBlock6Block46Step = 82 ifTrue: [
            recoveredBlock6Block46PC := 83.
        ].
        recoveredBlock6Block46Step = 83 ifTrue: [
            recoveredBlock6Block46Stack1 := recoveredBlock6Block46Arg1.
            recoveredBlock6Block46PC := 84.
        ].
        recoveredBlock6Block46Step = 84 ifTrue: [
            recoveredBlock6Block46Stack2 := false.
            recoveredBlock6Block46PC := 85.
        ].
        recoveredBlock6Block46Step = 85 ifTrue: [
            recoveredBlock6Block46Stack1 := (recoveredBlock6Block46Stack1) enable: (recoveredBlock6Block46Stack2).
            recoveredBlock6Block46PC := 87.
        ].
        recoveredBlock6Block46Step = 87 ifTrue: [
            recoveredBlock6Block46Result := recoveredBlock6Block46Stack1.
            recoveredBlock6Block46Done := true.
        ].
    ].
    recoveredBlock6Block46Result
].
            recoveredBlock6PC := 88.
        ].
        recoveredBlock6Step = 88 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDGenUtil_base.ic method 0x20003528; bytecode file offset 0x116f0"
!RBUserWindow methodsFor: 'recovered'!
enableMenu: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) windowMenuBar.
    recoveredValue1 := (recoveredValue0) menus.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) title.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) asLowercase.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := $~.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) zapChar: (recoveredBlock6Stack3).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) trimBlanks.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) asLowercase.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack4 := $~.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) zapChar: (recoveredBlock6Stack4).
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) trimBlanks.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesSubstring: (recoveredBlock6Stack3).
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 42] ifFalse: [recoveredBlock6PC := 90].
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6PC := 43.
        ].
        recoveredBlock6Step = 43 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) entries.
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block46Arg1 | 
    | recoveredBlock6Block46Stack0 recoveredBlock6Block46Stack1 recoveredBlock6Block46Stack2 recoveredBlock6Block46Stack3 recoveredBlock6Block46Stack4 recoveredBlock6Block46Stack5 recoveredBlock6Block46PC recoveredBlock6Block46Step recoveredBlock6Block46Done recoveredBlock6Block46Result |
    recoveredBlock6Block46Stack0 := nil.
    recoveredBlock6Block46PC := 52.
    recoveredBlock6Block46Done := false.
    [recoveredBlock6Block46Done not] whileTrue: [
        recoveredBlock6Block46Step := recoveredBlock6Block46PC.
        recoveredBlock6Block46Step = 52 ifTrue: [
            recoveredBlock6Block46Stack1 := nil.
            recoveredBlock6Block46PC := 53.
        ].
        recoveredBlock6Block46Step = 53 ifTrue: [
            recoveredBlock6Block46Stack2 := recoveredBlock6Block46Arg1.
            recoveredBlock6Block46PC := 54.
        ].
        recoveredBlock6Block46Step = 54 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) label.
            recoveredBlock6Block46PC := 56.
        ].
        recoveredBlock6Block46Step = 56 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) asLowercase.
            recoveredBlock6Block46PC := 57.
        ].
        recoveredBlock6Block46Step = 57 ifTrue: [
            recoveredBlock6Block46Stack3 := $~.
            recoveredBlock6Block46PC := 60.
        ].
        recoveredBlock6Block46Step = 60 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) zapChar: (recoveredBlock6Block46Stack3).
            recoveredBlock6Block46PC := 62.
        ].
        recoveredBlock6Block46Step = 62 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) trimBlanks.
            recoveredBlock6Block46PC := 64.
        ].
        recoveredBlock6Block46Step = 64 ifTrue: [
            recoveredBlock6Block46Stack3 := recoveredArg2.
            recoveredBlock6Block46PC := 67.
        ].
        recoveredBlock6Block46Step = 67 ifTrue: [
            recoveredBlock6Block46Stack3 := (recoveredBlock6Block46Stack3) asLowercase.
            recoveredBlock6Block46PC := 68.
        ].
        recoveredBlock6Block46Step = 68 ifTrue: [
            recoveredBlock6Block46Stack4 := $~.
            recoveredBlock6Block46PC := 72.
        ].
        recoveredBlock6Block46Step = 72 ifTrue: [
            recoveredBlock6Block46Stack3 := (recoveredBlock6Block46Stack3) zapChar: (recoveredBlock6Block46Stack4).
            recoveredBlock6Block46PC := 74.
        ].
        recoveredBlock6Block46Step = 74 ifTrue: [
            recoveredBlock6Block46Stack3 := (recoveredBlock6Block46Stack3) trimBlanks.
            recoveredBlock6Block46PC := 76.
        ].
        recoveredBlock6Block46Step = 76 ifTrue: [
            recoveredBlock6Block46Stack2 := (recoveredBlock6Block46Stack2) includesSubstring: (recoveredBlock6Block46Stack3).
            recoveredBlock6Block46PC := 78.
        ].
        recoveredBlock6Block46Step = 78 ifTrue: [
            (recoveredBlock6Block46Stack2) ifTrue: [recoveredBlock6Block46PC := 82] ifFalse: [recoveredBlock6Block46PC := 87].
        ].
        recoveredBlock6Block46Step = 82 ifTrue: [
            recoveredBlock6Block46PC := 83.
        ].
        recoveredBlock6Block46Step = 83 ifTrue: [
            recoveredBlock6Block46Stack1 := recoveredBlock6Block46Arg1.
            recoveredBlock6Block46PC := 84.
        ].
        recoveredBlock6Block46Step = 84 ifTrue: [
            recoveredBlock6Block46Stack2 := true.
            recoveredBlock6Block46PC := 85.
        ].
        recoveredBlock6Block46Step = 85 ifTrue: [
            recoveredBlock6Block46Stack1 := (recoveredBlock6Block46Stack1) enable: (recoveredBlock6Block46Stack2).
            recoveredBlock6Block46PC := 87.
        ].
        recoveredBlock6Block46Step = 87 ifTrue: [
            recoveredBlock6Block46Result := recoveredBlock6Block46Stack1.
            recoveredBlock6Block46Done := true.
        ].
    ].
    recoveredBlock6Block46Result
].
            recoveredBlock6PC := 88.
        ].
        recoveredBlock6Step = 88 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

