"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027120; bytecode file offset 0x923a44"
!SGStatementBlockSelector methodsFor: 'recovered'!
defineGOsWithoutCalls
    | recoveredValue0 |
    recoveredValue0 := (self) defineGOsWithCalls: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200273d4; bytecode file offset 0x923d40"
!SGStatementBlockSelector methodsFor: 'recovered'!
defineGOsWithCalls
    | recoveredValue0 |
    recoveredValue0 := (self) defineGOsWithCalls: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002d554; bytecode file offset 0x934580"
!SGStatementBlockSelector methodsFor: 'recovered'!
checkPrompterPrompt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) checkPrompter.
    recoveredValue1 := (recoveredValue0) prompt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031bb4; bytecode file offset 0x934580"
!SGStatementBlockSelector methodsFor: 'recovered'!
sequenceCallPrompterPrompt
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sequenceCallPrompter.
    recoveredValue1 := (recoveredValue0) prompt.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066a3c; bytecode file offset 0x963428"
!SGStatementBlockSelector methodsFor: 'recovered'!
sequenceCalls
    | recoveredValue0 |
    recoveredValue0 := sequenceCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006759c; bytecode file offset 0x9646f8"
!SGStatementBlockSelector methodsFor: 'recovered'!
selectedGOs
    | recoveredValue0 |
    recoveredValue0 := selectedGOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068c0c; bytecode file offset 0x965b90"
!SGStatementBlockSelector methodsFor: 'recovered'!
gOsWithCalls
    | recoveredValue0 |
    recoveredValue0 := gOsWithCalls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069d90; bytecode file offset 0x966bdc"
!SGStatementBlockSelector methodsFor: 'recovered'!
sequenceCallPrompter
    | recoveredValue0 |
    recoveredValue0 := sequenceCallPrompter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ab5c; bytecode file offset 0x967a18"
!SGStatementBlockSelector methodsFor: 'recovered'!
checkPrompter
    | recoveredValue0 |
    recoveredValue0 := checkPrompter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082f38; bytecode file offset 0x97f81c"
!SGStatementBlockSelector methodsFor: 'recovered'!
selectedGOs: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    selectedGOs := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdfac; bytecode file offset 0x9bb178"
!SGStatementBlockSelector methodsFor: 'recovered'!
sequenceCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf8ac; bytecode file offset 0x9bd228"
!SGStatementBlockSelector methodsFor: 'recovered'!
gOsWithCalls: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    gOsWithCalls := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1480; bytecode file offset 0x9bdf14"
!SGStatementBlockSelector methodsFor: 'recovered'!
sequenceCallPrompter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceCallPrompter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c20a4; bytecode file offset 0x9beac8"
!SGStatementBlockSelector methodsFor: 'recovered'!
checkPrompter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    checkPrompter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013db34; bytecode file offset 0xa3a450"
!SGStatementBlockSelector methodsFor: 'recovered'!
hasIntersectionGOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbafcArg1 | 
    | block280cbafcValue0 block280cbafcValue1 |
    block280cbafcValue0 := block280cbafcArg1.
    block280cbafcValue1 := (block280cbafcValue0) hasIntersectionGOs.
    block280cbafcValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20376ec4; bytecode file offset 0xc737d4"
!SGStatementBlockSelector methodsFor: 'recovered'!
createCheckPrompter: recoveredArg1 items: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasUserSelection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'ASDSelectElementPrompter'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := EtasIconListMessagePrompter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) prompterClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'OKCANCEL'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) nextTimeButtonVisible: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'warning'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) type: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) multiMode: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := [:block280f1fb0Arg1 | 
    | block280f1fb0Value0 block280f1fb0Value1 |
    block280f1fb0Value0 := block280f1fb0Arg1.
    block280f1fb0Value1 := (block280f1fb0Value0) labelGOString.
    block280f1fb0Value1
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) visualCallbackStringBlock: (recoveredStack3).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:block280f1fd4Arg1 | 
    | block280f1fd4Value0 block280f1fd4Value1 block280f1fd4Value2 |
    block280f1fd4Value0 := RBUserInterface.
    block280f1fd4Value1 := (block280f1fd4Value0) resourceManager.
    block280f1fd4Value2 := (block280f1fd4Value1) returnIconWithName: ('GeneralWarning').
    block280f1fd4Value2
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallbackIconBlock: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ef4d8; bytecode file offset 0xcebdf8"
!SGStatementBlockSelector methodsFor: 'recovered'!
createChoosePrompter: recoveredArg1 items: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasUserSelection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 'ASDSelectElementPrompter'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) prompterID: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := EtasIconListMultiSelectionPrompter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) prompterClass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'OKCANCEL'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) buttonStyle: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) nextTimeButtonVisible: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'warning'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) type: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) items: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) selectedItems: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) multiMode: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := [:block280f90e4Arg1 | 
    | block280f90e4Stack0 block280f90e4Stack1 block280f90e4Stack2 block280f90e4PC block280f90e4Step block280f90e4Done block280f90e4Result |
    block280f90e4Stack0 := self.
    block280f90e4PC := 4.
    block280f90e4Done := false.
    [block280f90e4Done not] whileTrue: [
        block280f90e4Step := block280f90e4PC.
        block280f90e4Step = 4 ifTrue: [
            block280f90e4Stack1 := block280f90e4Arg1.
            block280f90e4PC := 5.
        ].
        block280f90e4Step = 5 ifTrue: [
            block280f90e4Stack1 := (block280f90e4Stack1) isMethodDeclaration.
            block280f90e4PC := 7.
        ].
        block280f90e4Step = 7 ifTrue: [
            (block280f90e4Stack1) ifTrue: [block280f90e4PC := 10] ifFalse: [block280f90e4PC := 16].
        ].
        block280f90e4Step = 10 ifTrue: [
            block280f90e4Stack1 := block280f90e4Arg1.
            block280f90e4PC := 11.
        ].
        block280f90e4Step = 11 ifTrue: [
            block280f90e4Stack1 := (block280f90e4Stack1) methodName.
            block280f90e4PC := 13.
        ].
        block280f90e4Step = 13 ifTrue: [
            block280f90e4PC := 19.
        ].
        block280f90e4Step = 16 ifTrue: [
            block280f90e4Stack1 := block280f90e4Arg1.
            block280f90e4PC := 17.
        ].
        block280f90e4Step = 17 ifTrue: [
            block280f90e4Stack1 := (block280f90e4Stack1) visualCallBackString.
            block280f90e4PC := 19.
        ].
        block280f90e4Step = 19 ifTrue: [
            block280f90e4Result := block280f90e4Stack1.
            block280f90e4Done := true.
        ].
    ].
    block280f90e4Result
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) visualCallbackStringBlock: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:block280f9108Arg1 | 
    | block280f9108Value0 block280f9108Value1 block280f9108Value2 block280f9108Value3 block280f9108Value4 |
    block280f9108Value0 := RBUserInterface.
    block280f9108Value1 := (block280f9108Value0) resourceManager.
    block280f9108Value2 := block280f9108Arg1.
    block280f9108Value3 := (block280f9108Value2) visualCallBackImage.
    block280f9108Value4 := (block280f9108Value1) returnIconWithName: (block280f9108Value3).
    block280f9108Value4
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) visualCallbackIconBlock: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2049d780; bytecode file offset 0xd9a078"
!SGStatementBlockSelector methodsFor: 'recovered'!
checkForIfSelection: recoveredArg1 calls: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28104440Arg1 | 
    | block28104440Value0 block28104440Value1 block28104440Value2 |
    block28104440Value0 := block28104440Arg1.
    block28104440Value1 := (block28104440Value0) hasPin.
    block28104440Value2 := (block28104440Value1) not.
    block28104440Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28104464Arg1 | 
    | block28104464Value0 block28104464Value1 block28104464Value2 |
    block28104464Value0 := block28104464Arg1.
    block28104464Value1 := (block28104464Value0) comment.
    block28104464Value2 := (block28104464Value1) ~= (' ').
    block28104464Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [:block28104488Arg1 | 
    | block28104488Value0 block28104488Value1 |
    block28104488Value0 := block28104488Arg1.
    block28104488Value1 := (block28104488Value0) hasPin.
    block28104488Value1
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Local1 recoveredBlock66Stack0 recoveredBlock66Stack1 recoveredBlock66Stack2 recoveredBlock66Stack3 recoveredBlock66PC recoveredBlock66Step recoveredBlock66Done recoveredBlock66Result |
    recoveredBlock66Stack0 := self.
    recoveredBlock66PC := 72.
    recoveredBlock66Done := false.
    [recoveredBlock66Done not] whileTrue: [
        recoveredBlock66Step := recoveredBlock66PC.
        recoveredBlock66Step = 72 ifTrue: [
            recoveredBlock66Stack1 := recoveredBlock66Arg1.
            recoveredBlock66PC := 73.
        ].
        recoveredBlock66Step = 73 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) interfaceElementGO.
            recoveredBlock66PC := 75.
        ].
        recoveredBlock66Step = 75 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) getOtherConnectedBlockInterfaceElement.
            recoveredBlock66PC := 77.
        ].
        recoveredBlock66Step = 77 ifTrue: [
            recoveredBlock66Local1 := recoveredBlock66Stack1.
            recoveredBlock66PC := 78.
        ].
        recoveredBlock66Step = 78 ifTrue: [
            recoveredBlock66Stack1 := false.
            recoveredBlock66PC := 79.
        ].
        recoveredBlock66Step = 79 ifTrue: [
            recoveredBlock66Stack2 := recoveredBlock66Local1.
            recoveredBlock66PC := 80.
        ].
        recoveredBlock66Step = 80 ifTrue: [
            (recoveredBlock66Stack2 == nil) ifTrue: [recoveredBlock66PC := 104] ifFalse: [recoveredBlock66PC := 84].
        ].
        recoveredBlock66Step = 84 ifTrue: [
            recoveredBlock66PC := 85.
        ].
        recoveredBlock66Step = 85 ifTrue: [
            recoveredBlock66Stack1 := recoveredBlock66Local1.
            recoveredBlock66PC := 86.
        ].
        recoveredBlock66Step = 86 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) manager.
            recoveredBlock66PC := 88.
        ].
        recoveredBlock66Step = 88 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) manager.
            recoveredBlock66PC := 90.
        ].
        recoveredBlock66Step = 90 ifTrue: [
            recoveredBlock66Stack2 := [
    | recoveredBlock66Block90Value0 recoveredBlock66Block90Value1 |
    recoveredBlock66Block90Value0 := recoveredLocal3.
    recoveredBlock66Block90Value1 := (recoveredBlock66Block90Value0) first.
    recoveredBlock66Block90Value1
].
            recoveredBlock66PC := 102.
        ].
        recoveredBlock66Step = 102 ifTrue: [
            recoveredBlock66Stack1 := (recoveredBlock66Stack1) equals: (recoveredBlock66Stack2).
            recoveredBlock66PC := 104.
        ].
        recoveredBlock66Step = 104 ifTrue: [
            recoveredBlock66Result := recoveredBlock66Stack1.
            recoveredBlock66Done := true.
        ].
    ].
    recoveredBlock66Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) editedMethod.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205559a8; bytecode file offset 0xe522ac"
!SGStatementBlockSelector methodsFor: 'recovered'!
defineGOsWithCalls: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) selectedGOs.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) isSGHierarchyWrapperGO.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 38] ifFalse: [recoveredBlock17PC := 47].
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) allBlocks.
            recoveredBlock17PC := 45.
        ].
        recoveredBlock17Step = 45 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) addAll: (recoveredBlock17Stack2).
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Local1 recoveredBlock53Local2 recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Local2 := recoveredBlock53Stack1.
            recoveredBlock53PC := 64.
        ].
        recoveredBlock53Step = 64 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) isIntersectionGO.
            recoveredBlock53PC := 69.
        ].
        recoveredBlock53Step = 69 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 72] ifFalse: [recoveredBlock53PC := 165].
        ].
        recoveredBlock53Step = 72 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Arg1.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) interfaceGOs.
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            recoveredBlock53Stack2 := [:block2810fdbcArg1 | 
    | block2810fdbcStack0 block2810fdbcStack1 block2810fdbcStack2 block2810fdbcStack3 block2810fdbcPC block2810fdbcStep block2810fdbcDone block2810fdbcResult |
    block2810fdbcStack0 := self.
    block2810fdbcPC := 4.
    block2810fdbcDone := false.
    [block2810fdbcDone not] whileTrue: [
        block2810fdbcStep := block2810fdbcPC.
        block2810fdbcStep = 4 ifTrue: [
            block2810fdbcStack1 := false.
            block2810fdbcPC := 5.
        ].
        block2810fdbcStep = 5 ifTrue: [
            block2810fdbcStack2 := block2810fdbcArg1.
            block2810fdbcPC := 6.
        ].
        block2810fdbcStep = 6 ifTrue: [
            block2810fdbcStack2 := (block2810fdbcStack2) isSelectorPort.
            block2810fdbcPC := 8.
        ].
        block2810fdbcStep = 8 ifTrue: [
            (block2810fdbcStack2) ifTrue: [block2810fdbcPC := 12] ifFalse: [block2810fdbcPC := 22].
        ].
        block2810fdbcStep = 12 ifTrue: [
            block2810fdbcPC := 13.
        ].
        block2810fdbcStep = 13 ifTrue: [
            block2810fdbcStack1 := false.
            block2810fdbcPC := 14.
        ].
        block2810fdbcStep = 14 ifTrue: [
            block2810fdbcStack2 := block2810fdbcArg1.
            block2810fdbcPC := 15.
        ].
        block2810fdbcStep = 15 ifTrue: [
            block2810fdbcStack2 := (block2810fdbcStack2) getSGCallGO.
            block2810fdbcPC := 17.
        ].
        block2810fdbcStep = 17 ifTrue: [
            (block2810fdbcStack2 == nil) ifTrue: [block2810fdbcPC := 22] ifFalse: [block2810fdbcPC := 20].
        ].
        block2810fdbcStep = 20 ifTrue: [
            block2810fdbcPC := 21.
        ].
        block2810fdbcStep = 21 ifTrue: [
            block2810fdbcStack1 := true.
            block2810fdbcPC := 22.
        ].
        block2810fdbcStep = 22 ifTrue: [
            block2810fdbcResult := block2810fdbcStack1.
            block2810fdbcDone := true.
        ].
    ].
    block2810fdbcResult
].
            recoveredBlock53PC := 79.
        ].
        recoveredBlock53Step = 79 ifTrue: [
            recoveredBlock53PC := 101.
        ].
        recoveredBlock53Step = 101 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) select: (recoveredBlock53Stack2).
            recoveredBlock53PC := 103.
        ].
        recoveredBlock53Step = 103 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 106.
        ].
        recoveredBlock53Step = 106 ifTrue: [
            recoveredBlock53Stack1 := recoveredBlock53Local1.
            recoveredBlock53PC := 109.
        ].
        recoveredBlock53Step = 109 ifTrue: [
            recoveredBlock53Stack2 := [:block2810fde0Arg1 :block2810fde0Arg2 | 
    | block2810fde0Value0 block2810fde0Value1 block2810fde0Value2 block2810fde0Value3 block2810fde0Value4 block2810fde0Value5 block2810fde0Value6 |
    block2810fde0Value0 := block2810fde0Arg1.
    block2810fde0Value1 := (block2810fde0Value0) getSGCallGO.
    block2810fde0Value2 := (block2810fde0Value1) editedMethodName.
    block2810fde0Value3 := block2810fde0Arg2.
    block2810fde0Value4 := (block2810fde0Value3) getSGCallGO.
    block2810fde0Value5 := (block2810fde0Value4) editedMethodName.
    block2810fde0Value6 := (block2810fde0Value2) < (block2810fde0Value5).
    block2810fde0Value6
].
            recoveredBlock53PC := 111.
        ].
        recoveredBlock53Step = 111 ifTrue: [
            recoveredBlock53PC := 126.
        ].
        recoveredBlock53Step = 126 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) asSortedCollection: (recoveredBlock53Stack2).
            recoveredBlock53PC := 128.
        ].
        recoveredBlock53Step = 128 ifTrue: [
            recoveredBlock53Stack2 := [:recoveredBlock53Block128Arg1 | 
    | recoveredBlock53Block128Stack0 recoveredBlock53Block128Stack1 recoveredBlock53Block128Stack2 recoveredBlock53Block128Stack3 recoveredBlock53Block128PC recoveredBlock53Block128Step recoveredBlock53Block128Done recoveredBlock53Block128Result |
    recoveredBlock53Block128Stack0 := nil.
    recoveredBlock53Block128PC := 134.
    recoveredBlock53Block128Done := false.
    [recoveredBlock53Block128Done not] whileTrue: [
        recoveredBlock53Block128Step := recoveredBlock53Block128PC.
        recoveredBlock53Block128Step = 134 ifTrue: [
            recoveredBlock53Block128Stack1 := nil.
            recoveredBlock53Block128PC := 135.
        ].
        recoveredBlock53Block128Step = 135 ifTrue: [
            recoveredBlock53Block128Stack2 := recoveredBlock53Block128Arg1.
            recoveredBlock53Block128PC := 136.
        ].
        recoveredBlock53Block128Step = 136 ifTrue: [
            (recoveredBlock53Block128Stack2 == nil) ifTrue: [recoveredBlock53Block128PC := 158] ifFalse: [recoveredBlock53Block128PC := 140].
        ].
        recoveredBlock53Block128Step = 140 ifTrue: [
            recoveredBlock53Block128Stack2 := recoveredBlock53Block128Arg1.
            recoveredBlock53Block128PC := 141.
        ].
        recoveredBlock53Block128Step = 141 ifTrue: [
            recoveredBlock53Block128Stack2 := (recoveredBlock53Block128Stack2) getSGCallGO.
            recoveredBlock53Block128PC := 143.
        ].
        recoveredBlock53Block128Step = 143 ifTrue: [
            (recoveredBlock53Block128Stack2 == nil) ifTrue: [recoveredBlock53Block128PC := 158] ifFalse: [recoveredBlock53Block128PC := 146].
        ].
        recoveredBlock53Block128Step = 146 ifTrue: [
            recoveredBlock53Block128Stack2 := true.
            recoveredBlock53Block128PC := 147.
        ].
        recoveredBlock53Block128Step = 147 ifTrue: [
            (recoveredBlock53Block128Stack2) ifTrue: [recoveredBlock53Block128PC := 150] ifFalse: [recoveredBlock53Block128PC := 158].
        ].
        recoveredBlock53Block128Step = 150 ifTrue: [
            recoveredBlock53Block128PC := 151.
        ].
        recoveredBlock53Block128Step = 151 ifTrue: [
            recoveredBlock53Block128Stack1 := recoveredBlock53Block128Arg1.
            recoveredBlock53Block128PC := 152.
        ].
        recoveredBlock53Block128Step = 152 ifTrue: [
            recoveredBlock53Block128Stack1 := (recoveredBlock53Block128Stack1) getSGCallGO.
            recoveredBlock53Block128PC := 154.
        ].
        recoveredBlock53Block128Step = 154 ifTrue: [
            recoveredBlock53Block128Stack2 := recoveredBlock53Block128Stack1.
            recoveredBlock53Block128PC := 155.
        ].
        recoveredBlock53Block128Step = 155 ifTrue: [
            recoveredBlock53Local2 := recoveredBlock53Block128Stack2.
            recoveredBlock53Block128PC := 158.
        ].
        recoveredBlock53Block128Step = 158 ifTrue: [
            recoveredBlock53Block128Result := recoveredBlock53Block128Stack1.
            recoveredBlock53Block128Done := true.
        ].
    ].
    recoveredBlock53Block128Result
].
            recoveredBlock53PC := 159.
        ].
        recoveredBlock53Step = 159 ifTrue: [
            (recoveredBlock53Stack1) do: (recoveredBlock53Stack2).
            recoveredBlock53PC := 161.
        ].
        recoveredBlock53Step = 161 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 162.
        ].
        recoveredBlock53Step = 162 ifTrue: [
            recoveredBlock53Local1 := recoveredBlock53Stack1.
            recoveredBlock53PC := 165.
        ].
        recoveredBlock53Step = 165 ifTrue: [
            recoveredBlock53Stack1 := recoveredArg1.
            recoveredBlock53PC := 168.
        ].
        recoveredBlock53Step = 168 ifTrue: [
            (recoveredBlock53Stack1) ifTrue: [recoveredBlock53PC := 172] ifFalse: [recoveredBlock53PC := 196].
        ].
        recoveredBlock53Step = 172 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 173.
        ].
        recoveredBlock53Step = 173 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Local2.
            recoveredBlock53PC := 176.
        ].
        recoveredBlock53Step = 176 ifTrue: [
            (recoveredBlock53Stack2 == nil) ifTrue: [recoveredBlock53PC := 192] ifFalse: [recoveredBlock53PC := 180].
        ].
        recoveredBlock53Step = 180 ifTrue: [
            recoveredBlock53PC := 181.
        ].
        recoveredBlock53Step = 181 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal4.
            recoveredBlock53PC := 184.
        ].
        recoveredBlock53Step = 184 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 187.
        ].
        recoveredBlock53Step = 187 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Local2.
            recoveredBlock53PC := 190.
        ].
        recoveredBlock53Step = 190 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) at: (recoveredBlock53Stack2) put: (recoveredBlock53Stack3).
            recoveredBlock53PC := 192.
        ].
        recoveredBlock53Step = 192 ifTrue: [
            recoveredBlock53PC := 216.
        ].
        recoveredBlock53Step = 196 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 197.
        ].
        recoveredBlock53Step = 197 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Local2.
            recoveredBlock53PC := 200.
        ].
        recoveredBlock53Step = 200 ifTrue: [
            (recoveredBlock53Stack2 ~~ nil) ifTrue: [recoveredBlock53PC := 216] ifFalse: [recoveredBlock53PC := 204].
        ].
        recoveredBlock53Step = 204 ifTrue: [
            recoveredBlock53PC := 205.
        ].
        recoveredBlock53Step = 205 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal4.
            recoveredBlock53PC := 208.
        ].
        recoveredBlock53Step = 208 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 211.
        ].
        recoveredBlock53Step = 211 ifTrue: [
            recoveredBlock53Stack3 := recoveredBlock53Local2.
            recoveredBlock53PC := 214.
        ].
        recoveredBlock53Step = 214 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) at: (recoveredBlock53Stack2) put: (recoveredBlock53Stack3).
            recoveredBlock53PC := 216.
        ].
        recoveredBlock53Step = 216 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
    recoveredValue8 := (recoveredValue6) collect: (recoveredValue7).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := recoveredLocal4.
    ^recoveredValue9
! !

"ASDBase.ic method 0x205a8a40; bytecode file offset 0xea5378"
!SGStatementBlockSelector methodsFor: 'recovered'!
chooseGOsWithCalls
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) defineGOsWithCalls.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) hasPin.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 30] ifFalse: [recoveredBlock18PC := 70].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) displayNameForPinWithConnector.
            recoveredBlock18PC := 33.
        ].
        recoveredBlock18Step = 33 ifTrue: [
            recoveredLocal3 := recoveredBlock18Stack1.
            recoveredBlock18PC := 36.
        ].
        recoveredBlock18Step = 36 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal3.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) methodName.
            recoveredBlock18PC := 44.
        ].
        recoveredBlock18Step = 44 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) includes: (recoveredBlock18Stack2).
            recoveredBlock18PC := 46.
        ].
        recoveredBlock18Step = 46 ifTrue: [
            (recoveredBlock18Stack1) ifTrue: [recoveredBlock18PC := 50] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack2 := recoveredLocal3.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) methodName.
            recoveredBlock18PC := 62.
        ].
        recoveredBlock18Step = 62 ifTrue: [
            (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 64.
        ].
        recoveredBlock18Step = 64 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal3.
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) editedMethod.
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) values.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForIfSelection: (recoveredStack1) calls: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:block281162b4Arg1 :block281162b4Arg2 | 
    | block281162b4Value0 block281162b4Value1 block281162b4Value2 block281162b4Value3 block281162b4Value4 |
    block281162b4Value0 := block281162b4Arg1.
    block281162b4Value1 := (block281162b4Value0) methodName.
    block281162b4Value2 := block281162b4Arg2.
    block281162b4Value3 := (block281162b4Value2) methodName.
    block281162b4Value4 := (block281162b4Value1) < (block281162b4Value3).
    block281162b4Value4
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := [:block281162d8Arg1 | 
    | block281162d8Stack0 block281162d8Stack1 block281162d8Stack2 block281162d8PC block281162d8Step block281162d8Done block281162d8Result |
    block281162d8Stack0 := self.
    block281162d8PC := 4.
    block281162d8Done := false.
    [block281162d8Done not] whileTrue: [
        block281162d8Step := block281162d8PC.
        block281162d8Step = 4 ifTrue: [
            block281162d8Stack1 := block281162d8Arg1.
            block281162d8PC := 5.
        ].
        block281162d8Step = 5 ifTrue: [
            block281162d8Stack1 := (block281162d8Stack1) isMethod.
            block281162d8PC := 7.
        ].
        block281162d8Step = 7 ifTrue: [
            (block281162d8Stack1) ifTrue: [block281162d8PC := 22] ifFalse: [block281162d8PC := 10].
        ].
        block281162d8Step = 10 ifTrue: [
            block281162d8Stack1 := block281162d8Arg1.
            block281162d8PC := 11.
        ].
        block281162d8Step = 11 ifTrue: [
            block281162d8Stack1 := (block281162d8Stack1) isRunnable.
            block281162d8PC := 13.
        ].
        block281162d8Step = 13 ifTrue: [
            (block281162d8Stack1) ifTrue: [block281162d8PC := 22] ifFalse: [block281162d8PC := 16].
        ].
        block281162d8Step = 16 ifTrue: [
            block281162d8Stack1 := block281162d8Arg1.
            block281162d8PC := 17.
        ].
        block281162d8Step = 17 ifTrue: [
            block281162d8Stack1 := (block281162d8Stack1) isProcess.
            block281162d8PC := 19.
        ].
        block281162d8Step = 19 ifTrue: [
            (block281162d8Stack1) ifTrue: [block281162d8PC := 22] ifFalse: [block281162d8PC := 28].
        ].
        block281162d8Step = 22 ifTrue: [
            block281162d8Stack1 := block281162d8Arg1.
            block281162d8PC := 23.
        ].
        block281162d8Step = 23 ifTrue: [
            block281162d8Stack1 := (block281162d8Stack1) methodName.
            block281162d8PC := 25.
        ].
        block281162d8Step = 25 ifTrue: [
            block281162d8PC := 31.
        ].
        block281162d8Step = 28 ifTrue: [
            block281162d8Stack1 := block281162d8Arg1.
            block281162d8PC := 29.
        ].
        block281162d8Step = 29 ifTrue: [
            block281162d8Stack1 := (block281162d8Stack1) comment.
            block281162d8PC := 31.
        ].
        block281162d8Step = 31 ifTrue: [
            block281162d8Result := block281162d8Stack1.
            block281162d8Done := true.
        ].
    ].
    block281162d8Result
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 178].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) gOsWithCalls: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := 'There is more than one method, process or runnable selected!!\ \ The selected elements got moved in the new Statement Block if you select at least one of\ the following matching call name.\ \ Be aware that you can destroy your execution order if you select more\ than one call name. The system can behave different afterwards if you go on.'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) withCrs.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) createChoosePrompter: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) sequenceCallPrompter: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) sequenceCallPrompterPrompt.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := IdentityDictionary.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := [:recoveredBlock217Arg1 :recoveredBlock217Arg2 | 
    | recoveredBlock217Stack0 recoveredBlock217Stack1 recoveredBlock217Stack2 recoveredBlock217Stack3 recoveredBlock217Stack4 recoveredBlock217PC recoveredBlock217Step recoveredBlock217Done recoveredBlock217Result |
    recoveredBlock217Stack0 := self.
    recoveredBlock217PC := 224.
    recoveredBlock217Done := false.
    [recoveredBlock217Done not] whileTrue: [
        recoveredBlock217Step := recoveredBlock217PC.
        recoveredBlock217Step = 224 ifTrue: [
            recoveredBlock217Stack1 := recoveredBlock217Arg2.
            recoveredBlock217PC := 225.
        ].
        recoveredBlock217Step = 225 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) hasPin.
            recoveredBlock217PC := 227.
        ].
        recoveredBlock217Step = 227 ifTrue: [
            (recoveredBlock217Stack1) ifTrue: [recoveredBlock217PC := 230] ifFalse: [recoveredBlock217PC := 268].
        ].
        recoveredBlock217Step = 230 ifTrue: [
            recoveredBlock217Stack1 := nil.
            recoveredBlock217PC := 231.
        ].
        recoveredBlock217Step = 231 ifTrue: [
            recoveredBlock217Stack2 := self.
            recoveredBlock217PC := 232.
        ].
        recoveredBlock217Step = 232 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) sequenceCallPrompter.
            recoveredBlock217PC := 234.
        ].
        recoveredBlock217Step = 234 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) selectedItems.
            recoveredBlock217PC := 236.
        ].
        recoveredBlock217Step = 236 ifTrue: [
            recoveredBlock217Stack3 := [:block281162fcArg1 | 
    | block281162fcValue0 block281162fcValue1 |
    block281162fcValue0 := block281162fcArg1.
    block281162fcValue1 := (block281162fcValue0) methodName.
    block281162fcValue1
].
            recoveredBlock217PC := 238.
        ].
        recoveredBlock217Step = 238 ifTrue: [
            recoveredBlock217PC := 246.
        ].
        recoveredBlock217Step = 246 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) collect: (recoveredBlock217Stack3).
            recoveredBlock217PC := 248.
        ].
        recoveredBlock217Step = 248 ifTrue: [
            recoveredBlock217Stack3 := recoveredBlock217Arg2.
            recoveredBlock217PC := 249.
        ].
        recoveredBlock217Step = 249 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) displayNameForPinWithConnector.
            recoveredBlock217PC := 251.
        ].
        recoveredBlock217Step = 251 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) includes: (recoveredBlock217Stack3).
            recoveredBlock217PC := 253.
        ].
        recoveredBlock217Step = 253 ifTrue: [
            (recoveredBlock217Stack2) ifTrue: [recoveredBlock217PC := 256] ifFalse: [recoveredBlock217PC := 264].
        ].
        recoveredBlock217Step = 256 ifTrue: [
            recoveredBlock217PC := 257.
        ].
        recoveredBlock217Step = 257 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal6.
            recoveredBlock217PC := 260.
        ].
        recoveredBlock217Step = 260 ifTrue: [
            recoveredBlock217Stack2 := recoveredBlock217Arg1.
            recoveredBlock217PC := 261.
        ].
        recoveredBlock217Step = 261 ifTrue: [
            recoveredBlock217Stack3 := recoveredBlock217Arg2.
            recoveredBlock217PC := 262.
        ].
        recoveredBlock217Step = 262 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) at: (recoveredBlock217Stack2) put: (recoveredBlock217Stack3).
            recoveredBlock217PC := 264.
        ].
        recoveredBlock217Step = 264 ifTrue: [
            recoveredBlock217PC := 290.
        ].
        recoveredBlock217Step = 268 ifTrue: [
            recoveredBlock217Stack1 := nil.
            recoveredBlock217PC := 269.
        ].
        recoveredBlock217Step = 269 ifTrue: [
            recoveredBlock217Stack2 := self.
            recoveredBlock217PC := 270.
        ].
        recoveredBlock217Step = 270 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) sequenceCallPrompter.
            recoveredBlock217PC := 272.
        ].
        recoveredBlock217Step = 272 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) selectedItems.
            recoveredBlock217PC := 274.
        ].
        recoveredBlock217Step = 274 ifTrue: [
            recoveredBlock217Stack3 := recoveredBlock217Arg2.
            recoveredBlock217PC := 275.
        ].
        recoveredBlock217Step = 275 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) editedMethod.
            recoveredBlock217PC := 277.
        ].
        recoveredBlock217Step = 277 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) includes: (recoveredBlock217Stack3).
            recoveredBlock217PC := 279.
        ].
        recoveredBlock217Step = 279 ifTrue: [
            (recoveredBlock217Stack2) ifTrue: [recoveredBlock217PC := 282] ifFalse: [recoveredBlock217PC := 290].
        ].
        recoveredBlock217Step = 282 ifTrue: [
            recoveredBlock217PC := 283.
        ].
        recoveredBlock217Step = 283 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal6.
            recoveredBlock217PC := 286.
        ].
        recoveredBlock217Step = 286 ifTrue: [
            recoveredBlock217Stack2 := recoveredBlock217Arg1.
            recoveredBlock217PC := 287.
        ].
        recoveredBlock217Step = 287 ifTrue: [
            recoveredBlock217Stack3 := recoveredBlock217Arg2.
            recoveredBlock217PC := 288.
        ].
        recoveredBlock217Step = 288 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) at: (recoveredBlock217Stack2) put: (recoveredBlock217Stack3).
            recoveredBlock217PC := 290.
        ].
        recoveredBlock217Step = 290 ifTrue: [
            recoveredBlock217Result := recoveredBlock217Stack1.
            recoveredBlock217Done := true.
        ].
    ].
    recoveredBlock217Result
].
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) gOsWithCalls: (recoveredStack1).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ede18; bytecode file offset 0xeea76c"
!SGStatementBlockSelector methodsFor: 'recovered'!
checkGOsWithCalls
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) gOsWithCalls.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block2811b540Arg1 | 
    | block2811b540Value0 block2811b540Value1 |
    block2811b540Value0 := block2811b540Arg1.
    block2811b540Value1 := (block2811b540Value0) editedMethod.
    block2811b540Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := RBInterval.
            recoveredBlock30PC := 38.
        ].
        recoveredBlock30Step = 38 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) createDefaultInvers.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredLocal7 := recoveredBlock30Stack1.
            recoveredBlock30PC := 43.
        ].
        recoveredBlock30Step = 43 ifTrue: [
            recoveredBlock30Stack1 := OrderedCollection.
            recoveredBlock30PC := 45.
        ].
        recoveredBlock30Step = 45 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) new.
            recoveredBlock30PC := 46.
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredLocal4 := recoveredBlock30Stack1.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) sequenceCalls.
            recoveredBlock30PC := 51.
        ].
        recoveredBlock30Step = 51 ifTrue: [
            recoveredBlock30Stack1 := [:recoveredBlock30Block51Arg1 | 
    | recoveredBlock30Block51Value0 recoveredBlock30Block51Value1 recoveredBlock30Block51Value2 recoveredBlock30Block51Value3 |
    recoveredBlock30Block51Value0 := recoveredBlock30Block51Arg1.
    recoveredBlock30Block51Value1 := (recoveredBlock30Block51Value0) editedMethod.
    recoveredBlock30Block51Value2 := recoveredBlock30Arg1.
    recoveredBlock30Block51Value3 := (recoveredBlock30Block51Value1) equals: (recoveredBlock30Block51Value2).
    recoveredBlock30Block51Value3
].
            recoveredBlock30PC := 67.
        ].
        recoveredBlock30Step = 67 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) select: (recoveredBlock30Stack1).
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) asOrderedCollection.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredLocal6 := recoveredBlock30Stack0.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 75.
        ].
        recoveredBlock30Step = 75 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) gOsWithCalls.
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) values.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredBlock30Stack1 := [:recoveredBlock30Block77Arg1 | 
    | recoveredBlock30Block77Value0 recoveredBlock30Block77Value1 recoveredBlock30Block77Value2 recoveredBlock30Block77Value3 |
    recoveredBlock30Block77Value0 := recoveredBlock30Block77Arg1.
    recoveredBlock30Block77Value1 := (recoveredBlock30Block77Value0) editedMethod.
    recoveredBlock30Block77Value2 := recoveredBlock30Arg1.
    recoveredBlock30Block77Value3 := (recoveredBlock30Block77Value1) equals: (recoveredBlock30Block77Value2).
    recoveredBlock30Block77Value3
].
            recoveredBlock30PC := 93.
        ].
        recoveredBlock30Step = 93 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) select: (recoveredBlock30Stack1).
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredLocal5 := recoveredBlock30Stack0.
            recoveredBlock30PC := 98.
        ].
        recoveredBlock30Step = 98 ifTrue: [
            recoveredBlock30Stack0 := self.
            recoveredBlock30PC := 99.
        ].
        recoveredBlock30Step = 99 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) gOsWithCalls.
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack1 := [:block2811b564Arg1 | 
    | block2811b564Value0 block2811b564Value1 block2811b564Value2 |
    block2811b564Value0 := block2811b564Arg1.
    block2811b564Value1 := (block2811b564Value0) hasPin.
    block2811b564Value2 := (block2811b564Value1) not.
    block2811b564Value2
].
            recoveredBlock30PC := 102.
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) select: (recoveredBlock30Stack1).
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) values.
            recoveredBlock30PC := 114.
        ].
        recoveredBlock30Step = 114 ifTrue: [
            recoveredBlock30Stack1 := [:recoveredBlock30Block114Arg1 | 
    | recoveredBlock30Block114Stack0 recoveredBlock30Block114Stack1 recoveredBlock30Block114Stack2 recoveredBlock30Block114Stack3 recoveredBlock30Block114Stack4 recoveredBlock30Block114PC recoveredBlock30Block114Step recoveredBlock30Block114Done recoveredBlock30Block114Result |
    recoveredBlock30Block114Stack0 := nil.
    recoveredBlock30Block114PC := 120.
    recoveredBlock30Block114Done := false.
    [recoveredBlock30Block114Done not] whileTrue: [
        recoveredBlock30Block114Step := recoveredBlock30Block114PC.
        recoveredBlock30Block114Step = 120 ifTrue: [
            recoveredBlock30Block114Stack1 := nil.
            recoveredBlock30Block114PC := 121.
        ].
        recoveredBlock30Block114Step = 121 ifTrue: [
            recoveredBlock30Block114Stack2 := recoveredBlock30Block114Arg1.
            recoveredBlock30Block114PC := 122.
        ].
        recoveredBlock30Block114Step = 122 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) seqNo.
            recoveredBlock30Block114PC := 124.
        ].
        recoveredBlock30Block114Step = 124 ifTrue: [
            (recoveredBlock30Block114Stack2 == nil) ifTrue: [recoveredBlock30Block114PC := 183] ifFalse: [recoveredBlock30Block114PC := 128].
        ].
        recoveredBlock30Block114Step = 128 ifTrue: [
            recoveredBlock30Block114Stack2 := recoveredBlock30Block114Arg1.
            recoveredBlock30Block114PC := 129.
        ].
        recoveredBlock30Block114Step = 129 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) seqNo.
            recoveredBlock30Block114PC := 131.
        ].
        recoveredBlock30Block114Step = 131 ifTrue: [
            recoveredBlock30Block114Stack3 := 0.
            recoveredBlock30Block114PC := 133.
        ].
        recoveredBlock30Block114Step = 133 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) ~= (recoveredBlock30Block114Stack3).
            recoveredBlock30Block114PC := 134.
        ].
        recoveredBlock30Block114Step = 134 ifTrue: [
            (recoveredBlock30Block114Stack2) ifTrue: [recoveredBlock30Block114PC := 138] ifFalse: [recoveredBlock30Block114PC := 183].
        ].
        recoveredBlock30Block114Step = 138 ifTrue: [
            recoveredBlock30Block114PC := 139.
        ].
        recoveredBlock30Block114Step = 139 ifTrue: [
            recoveredBlock30Block114Stack1 := recoveredBlock30Block114Arg1.
            recoveredBlock30Block114PC := 140.
        ].
        recoveredBlock30Block114Step = 140 ifTrue: [
            recoveredBlock30Block114Stack1 := (recoveredBlock30Block114Stack1) seqNo.
            recoveredBlock30Block114PC := 142.
        ].
        recoveredBlock30Block114Step = 142 ifTrue: [
            recoveredBlock30Block114Stack2 := recoveredLocal7.
            recoveredBlock30Block114PC := 145.
        ].
        recoveredBlock30Block114Step = 145 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) right.
            recoveredBlock30Block114PC := 147.
        ].
        recoveredBlock30Block114Step = 147 ifTrue: [
            recoveredBlock30Block114Stack1 := (recoveredBlock30Block114Stack1) > (recoveredBlock30Block114Stack2).
            recoveredBlock30Block114PC := 148.
        ].
        recoveredBlock30Block114Step = 148 ifTrue: [
            (recoveredBlock30Block114Stack1) ifTrue: [recoveredBlock30Block114PC := 152] ifFalse: [recoveredBlock30Block114PC := 160].
        ].
        recoveredBlock30Block114Step = 152 ifTrue: [
            recoveredBlock30Block114Stack1 := recoveredLocal7.
            recoveredBlock30Block114PC := 155.
        ].
        recoveredBlock30Block114Step = 155 ifTrue: [
            recoveredBlock30Block114Stack2 := recoveredBlock30Block114Arg1.
            recoveredBlock30Block114PC := 156.
        ].
        recoveredBlock30Block114Step = 156 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) seqNo.
            recoveredBlock30Block114PC := 158.
        ].
        recoveredBlock30Block114Step = 158 ifTrue: [
            (recoveredBlock30Block114Stack1) right: (recoveredBlock30Block114Stack2).
            recoveredBlock30Block114PC := 160.
        ].
        recoveredBlock30Block114Step = 160 ifTrue: [
            recoveredBlock30Block114Stack1 := nil.
            recoveredBlock30Block114PC := 161.
        ].
        recoveredBlock30Block114Step = 161 ifTrue: [
            recoveredBlock30Block114Stack2 := recoveredBlock30Block114Arg1.
            recoveredBlock30Block114PC := 162.
        ].
        recoveredBlock30Block114Step = 162 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) seqNo.
            recoveredBlock30Block114PC := 164.
        ].
        recoveredBlock30Block114Step = 164 ifTrue: [
            recoveredBlock30Block114Stack3 := recoveredLocal7.
            recoveredBlock30Block114PC := 167.
        ].
        recoveredBlock30Block114Step = 167 ifTrue: [
            recoveredBlock30Block114Stack3 := (recoveredBlock30Block114Stack3) left.
            recoveredBlock30Block114PC := 169.
        ].
        recoveredBlock30Block114Step = 169 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) < (recoveredBlock30Block114Stack3).
            recoveredBlock30Block114PC := 170.
        ].
        recoveredBlock30Block114Step = 170 ifTrue: [
            (recoveredBlock30Block114Stack2) ifTrue: [recoveredBlock30Block114PC := 174] ifFalse: [recoveredBlock30Block114PC := 183].
        ].
        recoveredBlock30Block114Step = 174 ifTrue: [
            recoveredBlock30Block114PC := 175.
        ].
        recoveredBlock30Block114Step = 175 ifTrue: [
            recoveredBlock30Block114Stack1 := recoveredLocal7.
            recoveredBlock30Block114PC := 178.
        ].
        recoveredBlock30Block114Step = 178 ifTrue: [
            recoveredBlock30Block114Stack2 := recoveredBlock30Block114Arg1.
            recoveredBlock30Block114PC := 179.
        ].
        recoveredBlock30Block114Step = 179 ifTrue: [
            recoveredBlock30Block114Stack2 := (recoveredBlock30Block114Stack2) seqNo.
            recoveredBlock30Block114PC := 181.
        ].
        recoveredBlock30Block114Step = 181 ifTrue: [
            recoveredBlock30Block114Stack1 := (recoveredBlock30Block114Stack1) left: (recoveredBlock30Block114Stack2).
            recoveredBlock30Block114PC := 183.
        ].
        recoveredBlock30Block114Step = 183 ifTrue: [
            recoveredBlock30Block114Result := recoveredBlock30Block114Stack1.
            recoveredBlock30Block114Done := true.
        ].
    ].
    recoveredBlock30Block114Result
].
            recoveredBlock30PC := 184.
        ].
        recoveredBlock30Step = 184 ifTrue: [
            (recoveredBlock30Stack0) do: (recoveredBlock30Stack1).
            recoveredBlock30PC := 186.
        ].
        recoveredBlock30Step = 186 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal5.
            recoveredBlock30PC := 189.
        ].
        recoveredBlock30Step = 189 ifTrue: [
            recoveredBlock30Stack1 := [:recoveredBlock30Block189Arg1 | 
    | recoveredBlock30Block189Value0 recoveredBlock30Block189Value1 recoveredBlock30Block189Value2 recoveredBlock30Block189Value3 |
    recoveredBlock30Block189Value0 := recoveredLocal6.
    recoveredBlock30Block189Value1 := recoveredBlock30Block189Arg1.
    recoveredBlock30Block189Value2 := [].
    recoveredBlock30Block189Value3 := (recoveredBlock30Block189Value0) remove: (recoveredBlock30Block189Value1) ifAbsent: (recoveredBlock30Block189Value2).
    recoveredBlock30Block189Value3
].
            recoveredBlock30PC := 205.
        ].
        recoveredBlock30Step = 205 ifTrue: [
            (recoveredBlock30Stack0) do: (recoveredBlock30Stack1).
            recoveredBlock30PC := 207.
        ].
        recoveredBlock30Step = 207 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal6.
            recoveredBlock30PC := 210.
        ].
        recoveredBlock30Step = 210 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) copy.
            recoveredBlock30PC := 212.
        ].
        recoveredBlock30Step = 212 ifTrue: [
            recoveredBlock30Stack1 := [:recoveredBlock30Block212Arg1 | 
    | recoveredBlock30Block212Local1 recoveredBlock30Block212Stack0 recoveredBlock30Block212Stack1 recoveredBlock30Block212Stack2 recoveredBlock30Block212Stack3 recoveredBlock30Block212Stack4 recoveredBlock30Block212PC recoveredBlock30Block212Step recoveredBlock30Block212Done recoveredBlock30Block212Result |
    recoveredBlock30Block212Stack0 := nil.
    recoveredBlock30Block212PC := 218.
    recoveredBlock30Block212Done := false.
    [recoveredBlock30Block212Done not] whileTrue: [
        recoveredBlock30Block212Step := recoveredBlock30Block212PC.
        recoveredBlock30Block212Step = 218 ifTrue: [
            recoveredBlock30Block212Stack1 := nil.
            recoveredBlock30Block212PC := 219.
        ].
        recoveredBlock30Block212Step = 219 ifTrue: [
            recoveredBlock30Block212Stack2 := recoveredBlock30Block212Arg1.
            recoveredBlock30Block212PC := 222.
        ].
        recoveredBlock30Block212Step = 222 ifTrue: [
            recoveredBlock30Block212Stack2 := (recoveredBlock30Block212Stack2) seqNo.
            recoveredBlock30Block212PC := 224.
        ].
        recoveredBlock30Block212Step = 224 ifTrue: [
            (recoveredBlock30Block212Stack2 == nil) ifTrue: [recoveredBlock30Block212PC := 297] ifFalse: [recoveredBlock30Block212PC := 228].
        ].
        recoveredBlock30Block212Step = 228 ifTrue: [
            recoveredBlock30Block212Stack2 := recoveredBlock30Block212Arg1.
            recoveredBlock30Block212PC := 231.
        ].
        recoveredBlock30Block212Step = 231 ifTrue: [
            recoveredBlock30Block212Stack2 := (recoveredBlock30Block212Stack2) seqNo.
            recoveredBlock30Block212PC := 233.
        ].
        recoveredBlock30Block212Step = 233 ifTrue: [
            recoveredBlock30Block212Stack3 := recoveredLocal7.
            recoveredBlock30Block212PC := 236.
        ].
        recoveredBlock30Block212Step = 236 ifTrue: [
            recoveredBlock30Block212Stack3 := (recoveredBlock30Block212Stack3) left.
            recoveredBlock30Block212PC := 238.
        ].
        recoveredBlock30Block212Step = 238 ifTrue: [
            recoveredBlock30Block212Stack2 := (recoveredBlock30Block212Stack2) < (recoveredBlock30Block212Stack3).
            recoveredBlock30Block212PC := 239.
        ].
        recoveredBlock30Block212Step = 239 ifTrue: [
            (recoveredBlock30Block212Stack2) ifTrue: [recoveredBlock30Block212PC := 256] ifFalse: [recoveredBlock30Block212PC := 242].
        ].
        recoveredBlock30Block212Step = 242 ifTrue: [
            recoveredBlock30Block212Stack2 := recoveredBlock30Block212Arg1.
            recoveredBlock30Block212PC := 245.
        ].
        recoveredBlock30Block212Step = 245 ifTrue: [
            recoveredBlock30Block212Stack2 := (recoveredBlock30Block212Stack2) seqNo.
            recoveredBlock30Block212PC := 247.
        ].
        recoveredBlock30Block212Step = 247 ifTrue: [
            recoveredBlock30Block212Stack3 := recoveredLocal7.
            recoveredBlock30Block212PC := 250.
        ].
        recoveredBlock30Block212Step = 250 ifTrue: [
            recoveredBlock30Block212Stack3 := (recoveredBlock30Block212Stack3) right.
            recoveredBlock30Block212PC := 252.
        ].
        recoveredBlock30Block212Step = 252 ifTrue: [
            recoveredBlock30Block212Stack2 := (recoveredBlock30Block212Stack2) > (recoveredBlock30Block212Stack3).
            recoveredBlock30Block212PC := 253.
        ].
        recoveredBlock30Block212Step = 253 ifTrue: [
            (recoveredBlock30Block212Stack2) ifTrue: [recoveredBlock30Block212PC := 256] ifFalse: [recoveredBlock30Block212PC := 297].
        ].
        recoveredBlock30Block212Step = 256 ifTrue: [
            recoveredBlock30Block212PC := 257.
        ].
        recoveredBlock30Block212Step = 257 ifTrue: [
            recoveredBlock30Block212Stack1 := recoveredLocal6.
            recoveredBlock30Block212PC := 260.
        ].
        recoveredBlock30Block212Step = 260 ifTrue: [
            recoveredBlock30Block212Stack2 := [:recoveredBlock30Block212Block260Arg1 | 
    | recoveredBlock30Block212Block260Value0 recoveredBlock30Block212Block260Value1 recoveredBlock30Block212Block260Value2 recoveredBlock30Block212Block260Value3 recoveredBlock30Block212Block260Value4 |
    recoveredBlock30Block212Block260Value0 := recoveredBlock30Block212Block260Arg1.
    recoveredBlock30Block212Block260Value1 := (recoveredBlock30Block212Block260Value0) seqNo.
    recoveredBlock30Block212Block260Value2 := recoveredBlock30Block212Arg1.
    recoveredBlock30Block212Block260Value3 := (recoveredBlock30Block212Block260Value2) seqNo.
    recoveredBlock30Block212Block260Value4 := (recoveredBlock30Block212Block260Value1) == (recoveredBlock30Block212Block260Value3).
    recoveredBlock30Block212Block260Value4
].
            recoveredBlock30Block212PC := 276.
        ].
        recoveredBlock30Block212Step = 276 ifTrue: [
            recoveredBlock30Block212Stack3 := [].
            recoveredBlock30Block212PC := 278.
        ].
        recoveredBlock30Block212Step = 278 ifTrue: [
            recoveredBlock30Block212Stack1 := (recoveredBlock30Block212Stack1) detect: (recoveredBlock30Block212Stack2) ifNone: (recoveredBlock30Block212Stack3).
            recoveredBlock30Block212PC := 280.
        ].
        recoveredBlock30Block212Step = 280 ifTrue: [
            recoveredBlock30Block212Local1 := recoveredBlock30Block212Stack1.
            recoveredBlock30Block212PC := 283.
        ].
        recoveredBlock30Block212Step = 283 ifTrue: [
            recoveredBlock30Block212Stack1 := recoveredLocal6.
            recoveredBlock30Block212PC := 286.
        ].
        recoveredBlock30Block212Step = 286 ifTrue: [
            recoveredBlock30Block212Stack2 := recoveredBlock30Block212Local1.
            recoveredBlock30Block212PC := 289.
        ].
        recoveredBlock30Block212Step = 289 ifTrue: [
            recoveredBlock30Block212Stack3 := [].
            recoveredBlock30Block212PC := 291.
        ].
        recoveredBlock30Block212Step = 291 ifTrue: [
            recoveredBlock30Block212Stack1 := (recoveredBlock30Block212Stack1) remove: (recoveredBlock30Block212Stack2) ifAbsent: (recoveredBlock30Block212Stack3).
            recoveredBlock30Block212PC := 293.
        ].
        recoveredBlock30Block212Step = 293 ifTrue: [
            recoveredBlock30Block212Stack2 := nil.
            recoveredBlock30Block212PC := 294.
        ].
        recoveredBlock30Block212Step = 294 ifTrue: [
            recoveredBlock30Block212Local1 := recoveredBlock30Block212Stack2.
            recoveredBlock30Block212PC := 297.
        ].
        recoveredBlock30Block212Step = 297 ifTrue: [
            recoveredBlock30Block212Result := recoveredBlock30Block212Stack1.
            recoveredBlock30Block212Done := true.
        ].
    ].
    recoveredBlock30Block212Result
].
            recoveredBlock30PC := 298.
        ].
        recoveredBlock30Step = 298 ifTrue: [
            (recoveredBlock30Stack0) do: (recoveredBlock30Stack1).
            recoveredBlock30PC := 300.
        ].
        recoveredBlock30Step = 300 ifTrue: [
            recoveredBlock30Stack0 := recoveredLocal2.
            recoveredBlock30PC := 303.
        ].
        recoveredBlock30Step = 303 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal6.
            recoveredBlock30PC := 306.
        ].
        recoveredBlock30Step = 306 ifTrue: [
            recoveredBlock30Stack0 := (recoveredBlock30Stack0) addAll: (recoveredBlock30Stack1).
            recoveredBlock30PC := 308.
        ].
        recoveredBlock30Step = 308 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack0.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 320] ifFalse: [recoveredPC := 392].
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack0 := 'Following sequence calls are not selected and\ it''s sequence number is within the range ('.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := ' - '.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := ') of the selected calls!!\ \'.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := 'Be aware that you can destroy your execution order.\The system can behave different afterwards if you go on.'.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack4 := [:block2811b588Arg1 :block2811b588Arg2 | 
    | block2811b588Value0 block2811b588Value1 block2811b588Value2 block2811b588Value3 block2811b588Value4 |
    block2811b588Value0 := block2811b588Arg1.
    block2811b588Value1 := (block2811b588Value0) labelGOString.
    block2811b588Value2 := block2811b588Arg2.
    block2811b588Value3 := (block2811b588Value2) labelGOString.
    block2811b588Value4 := (block2811b588Value1) < (block2811b588Value3).
    block2811b588Value4
].
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSortedCollection: (recoveredStack4).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCheckPrompter: (recoveredStack2) items: (recoveredStack3).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack0) checkPrompter: (recoveredStack1).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPrompterPrompt.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 400] ifFalse: [recoveredPC := 402].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

