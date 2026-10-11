"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x200004e0; bytecode file offset 0x10580"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
conversionMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := (recoveredValue0) conversionMessage.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000804; bytecode file offset 0x1083c"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
current: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Current := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x200009d8; bytecode file offset 0x10a04"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
startUp
    (self) current: (nil).
    ^self
! !

"abtdah.ic method 0x20001118; bytecode file offset 0x11148"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
relocalize
    | recoveredValue0 |
    recoveredValue0 := (self) primCurrentCodePage.
    (self) currentCodePage: (recoveredValue0).
    ^self
! !

"abtdah.ic method 0x2000137c; bytecode file offset 0x113ec"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
conversionMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) current.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) conversionMessage: (recoveredValue1).
    ^self
! !

"abtdah.ic method 0x20001b88; bytecode file offset 0x11bb8"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
currentCodePage: recoveredXArg1
    | recoveredXValue0 |
    recoveredXValue0 := recoveredXArg1.
    recoveredLegacyIvar15 := recoveredXValue0.
    ^self
! !

"abtdah.ic method 0x20002700; bytecode file offset 0x1272c"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
currentCodePage
    | recoveredXStack0 recoveredXStack1 recoveredXStack2 recoveredXPC recoveredXStep |
    recoveredXStack0 := self.
    recoveredXPC := 4.
    [true] whileTrue: [
        recoveredXStep := recoveredXPC.
        recoveredXStep = 4 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar15.
            recoveredXPC := 6.
        ].
        recoveredXStep = 6 ifTrue: [
            (recoveredXStack1 ~~ nil) ifTrue: [recoveredXPC := 14] ifFalse: [recoveredXPC := 10].
        ].
        recoveredXStep = 10 ifTrue: [
            recoveredXStack1 := self.
            recoveredXPC := 11.
        ].
        recoveredXStep = 11 ifTrue: [
            recoveredXStack1 := (recoveredXStack1) primCurrentCodePage.
            recoveredXPC := 12.
        ].
        recoveredXStep = 12 ifTrue: [
            recoveredLegacyIvar15 := recoveredXStack1.
            recoveredXPC := 14.
        ].
        recoveredXStep = 14 ifTrue: [
            recoveredXStack1 := recoveredLegacyIvar15.
            recoveredXPC := 16.
        ].
        recoveredXStep = 16 ifTrue: [
            ^recoveredXStack1
        ].
    ]
! !

"abtdah.ic method 0x20002f00; bytecode file offset 0x12f30"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
current
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Current.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Current := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Current.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdah.ic method 0x200047b8; bytecode file offset 0x14800"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
primCurrentCodePage
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtNLSCoordinator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) primGetCurrentCharacterSet.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := EsImageStartUp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'OS'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'UNIX'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) codePageFromCharacterSet: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := AbtNLSCoordinator.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultCodePageForTheCurrentPlatform.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x20006578; bytecode file offset 0x165f0"
!AbtAbstractCodePageConverter class methodsFor: 'recovered'!
codePageFromCharacterSet: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) memcpyStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'iso'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := AbtCharacterTranslator.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) realNameOf: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := EsImageStartUp.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'OS'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'MVS'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 111].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ExceptionalEvent.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := AbtNLSCoordinator.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentLanguage.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := AbtNLSCoordinator.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentTerritory.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) asLowercase.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := (recoveredStack4) asLowercase.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('simpchinese'); instVarAt: 2 put: ('china'); instVarAt: 3 put: ('microsoft-other'); yourself); instVarAt: 2 put: ('ibm-1381'); yourself); instVarAt: 2 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('simpchinese'); instVarAt: 2 put: ('china'); instVarAt: 3 put: ('ibm-euccn'); yourself); instVarAt: 2 put: ('ibm-1381'); yourself); instVarAt: 3 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('tradchinese'); instVarAt: 2 put: ('taiwan'); instVarAt: 3 put: ('microsoft-other'); yourself); instVarAt: 2 put: ('ibm-950'); yourself); instVarAt: 4 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('tradchinese'); instVarAt: 2 put: ('taiwan'); instVarAt: 3 put: ('ibm-euctw'); yourself); instVarAt: 2 put: ('ibm-950'); yourself); instVarAt: 5 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('korean'); instVarAt: 2 put: ('korea'); instVarAt: 3 put: ('microsoft-other'); yourself); instVarAt: 2 put: ('ibm-949'); yourself); instVarAt: 6 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('korean'); instVarAt: 2 put: ('korea'); instVarAt: 3 put: ('ibm-euckr'); yourself); instVarAt: 2 put: ('ibm-949'); yourself); instVarAt: 7 put: ((Notification new: 0) instVarAt: 1 put: ((Notification new: 0) instVarAt: 1 put: ('japanese'); instVarAt: 2 put: ('japan'); instVarAt: 3 put: ('microsoft-shiftjis'); yourself); instVarAt: 2 put: ('ibm-932'); yourself); yourself.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:recoveredBlock82Arg1 | 
    | recoveredBlock82Stack0 recoveredBlock82Stack1 recoveredBlock82Stack2 recoveredBlock82Stack3 recoveredBlock82Stack4 recoveredBlock82PC recoveredBlock82Step recoveredBlock82Done recoveredBlock82Result |
    recoveredBlock82Stack0 := self.
    recoveredBlock82PC := 88.
    recoveredBlock82Done := false.
    [recoveredBlock82Done not] whileTrue: [
        recoveredBlock82Step := recoveredBlock82PC.
        recoveredBlock82Step = 88 ifTrue: [
            recoveredBlock82Stack1 := nil.
            recoveredBlock82PC := 89.
        ].
        recoveredBlock82Step = 89 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Arg1.
            recoveredBlock82PC := 90.
        ].
        recoveredBlock82Step = 90 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) first.
            recoveredBlock82PC := 92.
        ].
        recoveredBlock82Step = 92 ifTrue: [
            recoveredBlock82Stack3 := recoveredLocal1.
            recoveredBlock82PC := 95.
        ].
        recoveredBlock82Step = 95 ifTrue: [
            recoveredBlock82Stack2 := (recoveredBlock82Stack2) = (recoveredBlock82Stack3).
            recoveredBlock82PC := 96.
        ].
        recoveredBlock82Step = 96 ifTrue: [
            (recoveredBlock82Stack2) ifTrue: [recoveredBlock82PC := 100] ifFalse: [recoveredBlock82PC := 108].
        ].
        recoveredBlock82Step = 100 ifTrue: [
            recoveredBlock82PC := 101.
        ].
        recoveredBlock82Step = 101 ifTrue: [
            recoveredBlock82Stack1 := recoveredBlock82Arg1.
            recoveredBlock82PC := 102.
        ].
        recoveredBlock82Step = 102 ifTrue: [
            recoveredBlock82Stack1 := (recoveredBlock82Stack1) last.
            recoveredBlock82PC := 104.
        ].
        recoveredBlock82Step = 104 ifTrue: [
            recoveredBlock82Stack2 := recoveredBlock82Stack1.
            recoveredBlock82PC := 105.
        ].
        recoveredBlock82Step = 105 ifTrue: [
            recoveredLocal2 := recoveredBlock82Stack2.
            recoveredBlock82PC := 108.
        ].
        recoveredBlock82Step = 108 ifTrue: [
            recoveredBlock82Result := recoveredBlock82Stack1.
            recoveredBlock82Done := true.
        ].
    ].
    recoveredBlock82Result
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := AbtNLSCoordinator.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) ibmToCodePage: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

