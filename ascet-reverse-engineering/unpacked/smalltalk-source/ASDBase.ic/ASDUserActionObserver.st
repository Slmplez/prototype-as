"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20123d64; bytecode file offset 0xa20628"
!ASDUserActionObserver methodsFor: 'recovered'!
addUserAction: recoveredArg1 type: recoveredArg2 window: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) userActions.
    recoveredValue1 := ASDUserAction.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) createCommand: (recoveredValue2) type: (recoveredValue3) window: (recoveredValue4).
    (recoveredValue0) add: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20128f60; bytecode file offset 0xa258cc"
!ASDUserActionObserver methodsFor: 'recovered'!
recentlyUsedObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recentlyUsedObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recentlyUsedObjects := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recentlyUsedObjects.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201367e4; bytecode file offset 0xa330a8"
!ASDUserActionObserver methodsFor: 'recovered'!
addUserAction: recoveredArg1 type: recoveredArg2 windowClass: recoveredArg3 windowTitle: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) userActions.
    recoveredValue1 := ASDUserAction.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue1) createCommand: (recoveredValue2) type: (recoveredValue3) windowClass: (recoveredValue4) windowTitle: (recoveredValue5).
    (recoveredValue0) add: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2017eec8; bytecode file offset 0xa7b790"
!ASDUserActionObserver methodsFor: 'recovered'!
userActions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := userActions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasRingBuffer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ASDGeneralOptions.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionUserActionsBufferSize.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            userActions := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := userActions.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020b1e4; bytecode file offset 0xb07ab4"
!ASDUserActionObserver methodsFor: 'recovered'!
lastAddedComponents
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) recentlyUsedObjects.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) recentlyUsedObjects.
    recoveredBlock7Value1 := Dictionary.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('LastAddedComponent') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) at: ('LastAddedComponent') ifAbsent: (recoveredValue1).
    recoveredValue2 := (self) recentlyUsedObjects.
    recoveredValue3 := (recoveredValue2) at: ('LastAddedComponent').
    ^recoveredValue3
! !

"ASDBase.ic method 0x203aa95c; bytecode file offset 0xca7244"
!ASDUserActionObserver methodsFor: 'recovered'!
userActionsPrintString
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredLocal1 := ''.
    recoveredValue0 := (self) userActions.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 71] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) timeStamp.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := '->'.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) type.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack2 := '->'.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) window.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack2 := '->'.
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 54.
        ].
        recoveredBlock11Step = 54 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) command.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) asString.
            recoveredBlock11PC := 59.
        ].
        recoveredBlock11Step = 59 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 61.
        ].
        recoveredBlock11Step = 61 ifTrue: [
            recoveredBlock11Stack2 := '\'.
            recoveredBlock11PC := 63.
        ].
        recoveredBlock11Step = 63 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) withCrs.
            recoveredBlock11PC := 65.
        ].
        recoveredBlock11Step = 65 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) , (recoveredBlock11Stack2).
            recoveredBlock11PC := 67.
        ].
        recoveredBlock11Step = 67 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Stack1.
            recoveredBlock11PC := 68.
        ].
        recoveredBlock11Step = 68 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack2.
            recoveredBlock11PC := 71.
        ].
        recoveredBlock11Step = 71 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20498384; bytecode file offset 0xd94c98"
!ASDUserActionObserver methodsFor: 'recovered'!
addedInstanceVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) lastAddedComponents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := (self) lastAddedComponents.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) at: (recoveredBlock8Value1) put: (1).
    recoveredBlock8Value2
].
    recoveredValue3 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Local1 recoveredBlock23Local2 recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) lastAddedComponents.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) + (1).
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 37.
        ].
        recoveredBlock23Step = 37 ifTrue: [
            recoveredBlock23Local2 := recoveredBlock23Stack3.
            recoveredBlock23PC := 38.
        ].
        recoveredBlock23Step = 38 ifTrue: [
            (recoveredBlock23Stack0) at: (recoveredBlock23Stack1) put: (recoveredBlock23Stack2).
            recoveredBlock23PC := 40.
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local2.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack2 := 4.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) = (recoveredBlock23Stack2).
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 48] ifFalse: [recoveredBlock23PC := 129].
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack1 := ASDItemLibrary.
            recoveredBlock23PC := 50.
        ].
        recoveredBlock23Step = 50 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) instance.
            recoveredBlock23PC := 51.
        ].
        recoveredBlock23Step = 51 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg1.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) isItemInLibrary: (recoveredBlock23Stack2).
            recoveredBlock23PC := 56.
        ].
        recoveredBlock23Step = 56 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 129] ifFalse: [recoveredBlock23PC := 60].
        ].
        recoveredBlock23Step = 60 ifTrue: [
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack0 := EtasUserQuestion.
            recoveredBlock23PC := 63.
        ].
        recoveredBlock23Step = 63 ifTrue: [
            recoveredBlock23Stack1 := 'You have used '.
            recoveredBlock23PC := 65.
        ].
        recoveredBlock23Step = 65 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg1.
            recoveredBlock23PC := 68.
        ].
        recoveredBlock23Step = 68 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) label.
            recoveredBlock23PC := 70.
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) , (recoveredBlock23Stack2).
            recoveredBlock23PC := 72.
        ].
        recoveredBlock23Step = 72 ifTrue: [
            recoveredBlock23Stack2 := ' several times.\Shall this or other frequently used components be added to the Block Library?'.
            recoveredBlock23PC := 74.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) , (recoveredBlock23Stack2).
            recoveredBlock23PC := 76.
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) withCrs.
            recoveredBlock23PC := 78.
        ].
        recoveredBlock23Step = 78 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) message: (recoveredBlock23Stack1).
            recoveredBlock23PC := 80.
        ].
        recoveredBlock23Step = 80 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 81.
        ].
        recoveredBlock23Step = 81 ifTrue: [
            recoveredBlock23Stack2 := 'ASDAddComponetToLibrary'.
            recoveredBlock23PC := 83.
        ].
        recoveredBlock23Step = 83 ifTrue: [
            (recoveredBlock23Stack1) prompterID: (recoveredBlock23Stack2).
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 86.
        ].
        recoveredBlock23Step = 86 ifTrue: [
            recoveredBlock23Stack2 := 'YESNO'.
            recoveredBlock23PC := 88.
        ].
        recoveredBlock23Step = 88 ifTrue: [
            (recoveredBlock23Stack1) buttonStyle: (recoveredBlock23Stack2).
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 91.
        ].
        recoveredBlock23Step = 91 ifTrue: [
            recoveredBlock23Stack2 := 'question'.
            recoveredBlock23PC := 93.
        ].
        recoveredBlock23Step = 93 ifTrue: [
            (recoveredBlock23Stack1) type: (recoveredBlock23Stack2).
            recoveredBlock23PC := 95.
        ].
        recoveredBlock23Step = 95 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) prompt.
            recoveredBlock23PC := 97.
        ].
        recoveredBlock23Step = 97 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Stack0.
            recoveredBlock23PC := 98.
        ].
        recoveredBlock23Step = 98 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 99.
        ].
        recoveredBlock23Step = 99 ifTrue: [
            (recoveredBlock23Stack0 ~~ nil) ifTrue: [recoveredBlock23PC := 104] ifFalse: [recoveredBlock23PC := 102].
        ].
        recoveredBlock23Step = 102 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 103.
        ].
        recoveredBlock23Step = 103 ifTrue: [
            ^recoveredBlock23Stack0
        ].
        recoveredBlock23Step = 104 ifTrue: [
            recoveredBlock23Stack0 := nil.
            recoveredBlock23PC := 105.
        ].
        recoveredBlock23Step = 105 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Local1.
            recoveredBlock23PC := 106.
        ].
        recoveredBlock23Step = 106 ifTrue: [
            (recoveredBlock23Stack1) ifTrue: [recoveredBlock23PC := 110] ifFalse: [recoveredBlock23PC := 127].
        ].
        recoveredBlock23Step = 110 ifTrue: [
            recoveredBlock23PC := 111.
        ].
        recoveredBlock23Step = 111 ifTrue: [
            recoveredBlock23Stack0 := 'hw'.
            recoveredBlock23PC := 113.
        ].
        recoveredBlock23Step = 113 ifTrue: [
            recoveredBlock23Stack1 := 'call_80825'.
            recoveredBlock23PC := 115.
        ].
        recoveredBlock23Step = 115 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) == (recoveredBlock23Stack1).
            recoveredBlock23PC := 116.
        ].
        recoveredBlock23Step = 116 ifTrue: [
            recoveredBlock23PC := 117.
        ].
        recoveredBlock23Step = 117 ifTrue: [
            recoveredBlock23Stack0 := ASDItemLibrary.
            recoveredBlock23PC := 119.
        ].
        recoveredBlock23Step = 119 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) instance.
            recoveredBlock23PC := 120.
        ].
        recoveredBlock23Step = 120 ifTrue: [
            recoveredBlock23Stack1 := recoveredArg1.
            recoveredBlock23PC := 123.
        ].
        recoveredBlock23Step = 123 ifTrue: [
            recoveredBlock23Stack2 := 'Frequently used'.
            recoveredBlock23PC := 125.
        ].
        recoveredBlock23Step = 125 ifTrue: [
            recoveredBlock23Stack0 := (recoveredBlock23Stack0) addItem: (recoveredBlock23Stack1) toCategory: (recoveredBlock23Stack2).
            recoveredBlock23PC := 127.
        ].
        recoveredBlock23Step = 127 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 128.
        ].
        recoveredBlock23Step = 128 ifTrue: [
            recoveredBlock23Local1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 129.
        ].
        recoveredBlock23Step = 129 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack0.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^self
! !

