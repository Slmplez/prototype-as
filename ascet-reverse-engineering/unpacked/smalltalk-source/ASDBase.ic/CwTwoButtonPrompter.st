"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2016255c; bytecode file offset 0xa5ee28"
!CwTwoButtonPrompter methodsFor: 'recovered'!
initializeBeforeCreating
    | recoveredValue0 recoveredValue1 |
    super initializeBeforeCreating.
    recoveredValue0 := (self) scOk.
    (self) button1Name: (recoveredValue0).
    recoveredValue1 := (self) scCancel.
    (self) button2Name: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20352904; bytecode file offset 0xc4f1f4"
!CwTwoButtonPrompter methodsFor: 'recovered'!
initializeEtasPrompter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeEtasPrompter.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [:block280ef3d0Arg1 | 
    | block280ef3d0Value0 block280ef3d0Value1 block280ef3d0Value2 block280ef3d0Value3 |
    block280ef3d0Value0 := block280ef3d0Arg1.
    block280ef3d0Value1 := block280ef3d0Value0.
    block280ef3d0Value2 := XmATTACHPOSITION.
    (block280ef3d0Value1) leftAttachment: (block280ef3d0Value2).
    block280ef3d0Value3 := (block280ef3d0Value0) leftPosition: (25).
    block280ef3d0Value3
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) button2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block280ef3f4Arg1 | 
    | block280ef3f4Value0 block280ef3f4Value1 block280ef3f4Value2 block280ef3f4Value3 |
    block280ef3f4Value0 := block280ef3f4Arg1.
    block280ef3f4Value1 := block280ef3f4Value0.
    block280ef3f4Value2 := XmATTACHPOSITION.
    (block280ef3f4Value1) rightAttachment: (block280ef3f4Value2).
    block280ef3f4Value3 := (block280ef3f4Value0) rightPosition: (75).
    block280ef3f4Value3
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) shell.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) addKeyPressEventsFor: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20397cc4; bytecode file offset 0xc945b4"
!CwTwoButtonPrompter methodsFor: 'recovered'!
keyPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := Mod1Mask.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Character.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) keysym.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLetter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'Alt-'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) hkOk.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) button1: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) hkCancel.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) button2: (recoveredStack2) clientData: (recoveredStack3) callData: (recoveredStack4).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

