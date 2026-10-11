"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001515c; bytecode file offset 0x912098"
!EtasCebraMain class methodsFor: 'recovered'!
initializedClass
    | recoveredValue0 |
    recoveredValue0 := InitializedClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015534; bytecode file offset 0x912098"
!EtasCebraMain class methodsFor: 'recovered'!
toolName
    | recoveredValue0 |
    recoveredValue0 := ToolName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003cb98; bytecode file offset 0x93bf94"
!EtasCebraMain class methodsFor: 'recovered'!
closeConsole
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGPerformerClient.
    recoveredValue1 := (recoveredValue0) closeConsole.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053dc8; bytecode file offset 0x951190"
!EtasCebraMain class methodsFor: 'recovered'!
initializedClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    InitializedClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200540b0; bytecode file offset 0x951190"
!EtasCebraMain class methodsFor: 'recovered'!
toolName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ToolName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d4eb0; bytecode file offset 0x9d1774"
!EtasCebraMain class methodsFor: 'recovered'!
isInitializedClass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializedClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializedClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201051ec; bytecode file offset 0xa01b38"
!EtasCebraMain class methodsFor: 'recovered'!
toolNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ToolNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) initializeToolNames.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ToolNames.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012829c; bytecode file offset 0xa24b5c"
!EtasCebraMain class methodsFor: 'recovered'!
initClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) resetCebra.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInitialized.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128c6c; bytecode file offset 0xa25530"
!EtasCebraMain class methodsFor: 'recovered'!
shutDownCebra
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasCebraInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInitialized.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGPerformerClient.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) shutDownCebra.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20171838; bytecode file offset 0xa6e0fc"
!EtasCebraMain class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitializedClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := EtasCebraMain.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) initClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) initializedClass: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f3764; bytecode file offset 0xbf0054"
!EtasCebraMain class methodsFor: 'recovered'!
initializeToolNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    ToolNames := recoveredValue1.
    recoveredValue2 := ToolNames.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('ASCET-SD') put: ('Ascet').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('ASCET') put: ('Ascet').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('INCA') put: ('Inca').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('DIAS') put: ('Dias').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('LABCAROPERATOR') put: ('LabCarOperator').
    (recoveredValue2) at: ('LABCARDEVELOPER') put: ('LabCarDeveloper').
    ^self
! !

