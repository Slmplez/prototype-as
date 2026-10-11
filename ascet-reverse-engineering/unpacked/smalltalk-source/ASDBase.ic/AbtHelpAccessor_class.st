"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020d2c; bytecode file offset 0x92209c"
!AbtHelpAccessor class methodsFor: 'recovered'!
nativeHelpFilePrefix
    ^'NATIVE:'
! !

"ASDBase.ic method 0x20024698; bytecode file offset 0x92209c"
!AbtHelpAccessor class methodsFor: 'recovered'!
htmlHelpFilePrefix
    ^'HTML:'
! !

"ASDBase.ic method 0x20048c60; bytecode file offset 0x945728"
!AbtHelpAccessor class methodsFor: 'recovered'!
resetAccessors
    Accessors := nil.
    ^self
! !

"ASDBase.ic method 0x200b07b8; bytecode file offset 0x9ad078"
!AbtHelpAccessor class methodsFor: 'recovered'!
ringBell
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    (recoveredValue1) bell: (-20).
    ^self
! !

"ASDBase.ic method 0x20104888; bytecode file offset 0xa01150"
!AbtHelpAccessor class methodsFor: 'recovered'!
warnUnspecifiedTopic
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := MsgBaseMissingHelpTopic.
    recoveredValue2 := (self) getMsg: (recoveredValue1).
    (recoveredValue0) logError: (recoveredValue2).
    (self) ringBell.
    ^self
! !

"ASDBase.ic method 0x201277b0; bytecode file offset 0xa240a4"
!AbtHelpAccessor class methodsFor: 'recovered'!
helpForHelp: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asAbtHelpGroupSpec.
    recoveredValue2 := (recoveredValue1) abtMapping.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) realHelpAccessor: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue4) helpForHelp: (recoveredValue5) helpFile: (recoveredValue6) title: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201277c8; bytecode file offset 0xa240a4"
!AbtHelpAccessor class methodsFor: 'recovered'!
helpForIndex: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asAbtHelpGroupSpec.
    recoveredValue2 := (recoveredValue1) abtMapping.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) realHelpAccessor: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue4) helpForIndex: (recoveredValue5) helpFile: (recoveredValue6) title: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x201277e0; bytecode file offset 0xa240a4"
!AbtHelpAccessor class methodsFor: 'recovered'!
helpForContents: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asAbtHelpGroupSpec.
    recoveredValue2 := (recoveredValue1) abtMapping.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) realHelpAccessor: (recoveredValue3).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue4) helpForContents: (recoveredValue5) helpFile: (recoveredValue6) title: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20130344; bytecode file offset 0xa2cc0c"
!AbtHelpAccessor class methodsFor: 'recovered'!
warnMissingHelpFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := MsgBaseMissingHelpFile.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getMsg: (recoveredValue1) with: (recoveredValue2).
    (recoveredValue0) logError: (recoveredValue3).
    (self) ringBell.
    ^self
! !

"ASDBase.ic method 0x2015680c; bytecode file offset 0xa530d4"
!AbtHelpAccessor class methodsFor: 'recovered'!
warnTopicNotFound: recoveredArg1 helpFilename: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := MsgBaseInvalidHelpTopic.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) getMsg: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    (recoveredValue0) logError: (recoveredValue4).
    (self) ringBell.
    ^self
! !

"ASDBase.ic method 0x2017e7a4; bytecode file offset 0xa7b0dc"
!AbtHelpAccessor class methodsFor: 'recovered'!
accessors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Accessors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            Accessors := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Accessors.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201bee7c; bytecode file offset 0xabb744"
!AbtHelpAccessor class methodsFor: 'recovered'!
helpFor: recoveredArg1 helpFile: recoveredArg2 topic: recoveredArg3 title: recoveredArg4
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) warnUnspecifiedTopic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtHelpGroupSpec.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtMapping.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) realHelpAccessor: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpFor: (recoveredStack1) helpFile: (recoveredStack2) topic: (recoveredStack3) title: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fd03c; bytecode file offset 0xaf9900"
!AbtHelpAccessor class methodsFor: 'recovered'!
resetConnections
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Accessors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Accessors.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d869cArg1 | 
    | block280d869cStack0 block280d869cStack1 block280d869cStack2 block280d869cStack3 block280d869cPC block280d869cStep block280d869cDone block280d869cResult |
    block280d869cStack0 := self.
    block280d869cPC := 4.
    block280d869cDone := false.
    [block280d869cDone not] whileTrue: [
        block280d869cStep := block280d869cPC.
        block280d869cStep = 4 ifTrue: [
            block280d869cStack1 := nil.
            block280d869cPC := 5.
        ].
        block280d869cStep = 5 ifTrue: [
            block280d869cStack2 := block280d869cArg1.
            block280d869cPC := 6.
        ].
        block280d869cStep = 6 ifTrue: [
            (block280d869cStack2 == nil) ifTrue: [block280d869cPC := 13] ifFalse: [block280d869cPC := 10].
        ].
        block280d869cStep = 10 ifTrue: [
            block280d869cPC := 11.
        ].
        block280d869cStep = 11 ifTrue: [
            block280d869cStack1 := block280d869cArg1.
            block280d869cPC := 12.
        ].
        block280d869cStep = 12 ifTrue: [
            block280d869cStack1 := (block280d869cStack1) resetConnections.
            block280d869cPC := 13.
        ].
        block280d869cStep = 13 ifTrue: [
            block280d869cResult := block280d869cStack1.
            block280d869cDone := true.
        ].
    ].
    block280d869cResult
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202009c0; bytecode file offset 0xafd294"
!AbtHelpAccessor class methodsFor: 'recovered'!
warnCannotInitializeHelp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := AbtPrimitiveLoggingSupport.
    recoveredValue1 := MsgBaseHelpCannotBeInitialized.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getMsg: (recoveredValue1) group: ('AbtMsgBase') with: (recoveredValue2).
    (recoveredValue0) logError: (recoveredValue3).
    (self) ringBell.
    recoveredValue4 := MsgBaseHelpCannotBeInitialized.
    recoveredValue5 := (self) getMRI: (recoveredValue4) group: ('AbtMsgBase').
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) displayWith: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20265c7c; bytecode file offset 0xb62548"
!AbtHelpAccessor class methodsFor: 'recovered'!
realHelpAccessor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) htmlHelpFilePrefix.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := AbtHTMLHelpAccessor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := AbtNativeHelpAccessor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

