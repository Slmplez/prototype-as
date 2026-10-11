"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdau.ic method 0x20000428; bytecode file offset 0xf7f8"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
largeDimensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LargeDimensions := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000434; bytecode file offset 0xf7f8"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
widthToDetermineDimensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    WidthToDetermineDimensions := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000470; bytecode file offset 0xf7f8"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
smallDimensions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    SmallDimensions := recoveredValue0.
    ^self
! !

"abtdau.ic method 0x20000c60; bytecode file offset 0xffd4"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
initializeUsingShell: recoveredArg1 helpFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) initializeUsingShell: (recoveredValue1) helpFile: (recoveredValue2).
    ^recoveredValue3
! !

"abtdau.ic method 0x20001f70; bytecode file offset 0x112e0"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
widthToDetermineDimensions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WidthToDetermineDimensions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 640.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            WidthToDetermineDimensions := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := WidthToDetermineDimensions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20002120; bytecode file offset 0x114b4"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
largeDimensions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LargeDimensions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (5) denominator: (12).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (Fraction) numerator: (359) denominator: (384).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            LargeDimensions := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := LargeDimensions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20002138; bytecode file offset 0x114b4"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
smallDimensions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SmallDimensions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (Fraction) numerator: (13) denominator: (20).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (Fraction) numerator: (69) denominator: (80).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            SmallDimensions := recoveredStack2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SmallDimensions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200021e8; bytecode file offset 0x11570"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
suggestedHelpWindowDimensions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwOleClipboardOwner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultScreen.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) widthToDetermineDimensions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) smallDimensions.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) largeDimensions.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x20002470; bytecode file offset 0x11800"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
realTitleFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MsgBaseHelpTitle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'AbtMsgBase'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) getMRIString: (recoveredStack1) group: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ExceptionalEvent.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := EsImageStartUp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) startUpClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) replace: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20002a84; bytecode file offset 0x11e00"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
destroyCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) accessors.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) accessors.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) removeKey: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) destroy.
    ^self
! !

"abtdau.ic method 0x20002cd8; bytecode file offset 0x1205c"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
validateHelpFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'HELP'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathEnvVarName: (recoveredStack2) fileName: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'PATH'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathEnvVarName: (recoveredStack2) fileName: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFileSpec.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdau.ic method 0x200039f4; bytecode file offset 0x12d8c"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
suggestedHelpWindowDimensionsAsPixels
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) suggestedHelpWindowDimensions.
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
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CwOleClipboardOwner.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultScreen.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) width.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := CwOleClipboardOwner.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultScreen.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) height.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) truncated.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004ee0; bytecode file offset 0x142f8"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
helpForContents: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtPlatformSpecificHelpGroupSpec.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal2.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) initializeUsingShell: (recoveredBlock45Stack1) helpFile: (recoveredBlock45Stack2).
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredLocal3 := recoveredBlock45Stack0.
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isAbtError.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 72] ifFalse: [recoveredBlock45PC := 81].
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) errorText.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) warnCannotInitializeHelp: (recoveredBlock45Stack1).
            recoveredBlock45PC := 80.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            ^recoveredBlock45Stack0
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) accessors.
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal3.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) at: (recoveredBlock45Stack1) put: (recoveredBlock45Stack2).
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) realTitleFrom: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) displayContentsInFile: (recoveredStack1) withWindowTitle: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004f1c; bytecode file offset 0x142f8"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
helpForHelp: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtPlatformSpecificHelpGroupSpec.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal2.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) initializeUsingShell: (recoveredBlock45Stack1) helpFile: (recoveredBlock45Stack2).
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredLocal3 := recoveredBlock45Stack0.
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isAbtError.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 72] ifFalse: [recoveredBlock45PC := 81].
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) errorText.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) warnCannotInitializeHelp: (recoveredBlock45Stack1).
            recoveredBlock45PC := 80.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            ^recoveredBlock45Stack0
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) accessors.
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal3.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) at: (recoveredBlock45Stack1) put: (recoveredBlock45Stack2).
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) realTitleFrom: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) displayHelpForHelpInFile: (recoveredStack1) withWindowTitle: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20004f58; bytecode file offset 0x142f8"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
helpForIndex: recoveredArg1 helpFile: recoveredArg2 title: recoveredArg3
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtPlatformSpecificHelpGroupSpec.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal2.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) initializeUsingShell: (recoveredBlock45Stack1) helpFile: (recoveredBlock45Stack2).
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredLocal3 := recoveredBlock45Stack0.
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isAbtError.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 72] ifFalse: [recoveredBlock45PC := 81].
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) errorText.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) warnCannotInitializeHelp: (recoveredBlock45Stack1).
            recoveredBlock45PC := 80.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            ^recoveredBlock45Stack0
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) accessors.
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal3.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) at: (recoveredBlock45Stack1) put: (recoveredBlock45Stack2).
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) realTitleFrom: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) displayIndexInFile: (recoveredStack1) withWindowTitle: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdau.ic method 0x20005198; bytecode file offset 0x1453c"
!AbtNativeHelpAccessor class methodsFor: 'recovered'!
helpFor: recoveredArg1 helpFile: recoveredArg2 topic: recoveredArg3 title: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAbtPlatformSpecificHelpGroupSpec.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) validateHelpFile: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) warnMissingHelpFile: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal2.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) initializeUsingShell: (recoveredBlock45Stack1) helpFile: (recoveredBlock45Stack2).
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredLocal3 := recoveredBlock45Stack0.
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack0 := recoveredLocal3.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) isAbtError.
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            (recoveredBlock45Stack0) ifTrue: [recoveredBlock45PC := 72] ifFalse: [recoveredBlock45PC := 81].
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 76.
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) errorText.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) warnCannotInitializeHelp: (recoveredBlock45Stack1).
            recoveredBlock45PC := 80.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            ^recoveredBlock45Stack0
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack0 := self.
            recoveredBlock45PC := 82.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) accessors.
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal1.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal3.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack0 := (recoveredBlock45Stack0) at: (recoveredBlock45Stack1) put: (recoveredBlock45Stack2).
            recoveredBlock45PC := 92.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack0.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsNormalizedTopicID.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) realTitleFrom: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) displayTopic: (recoveredStack1) inFile: (recoveredStack2) withWindowTitle: (recoveredStack3).
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

