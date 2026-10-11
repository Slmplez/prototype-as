"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20094708; bytecode file offset 0x991174"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
walkbackFileNameForProcess: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) walkbackFileNameForProcess: (recoveredValue0) signalDescription: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ddde8; bytecode file offset 0x9da6d4"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
outputWalkbackIntoSeperateFile: recoveredArg1 process: recoveredArg2 uniqueFileName: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) outputWalkbackIntoSeperateFile: (recoveredValue0) additionalInfo: ('') process: (recoveredValue1) uniqueFileName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20100990; bytecode file offset 0x9fd26c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
assertionFileNameForProcess: recoveredArg1 signalDescription: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := EtasGeneralDllApi.
    recoveredValue3 := (recoveredValue2) assertionDirectoryPathName.
    recoveredValue4 := (self) walkbackFileNameForProcess: (recoveredValue0) signalDescription: (recoveredValue1) preFix: ('AS ') directory: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201009a8; bytecode file offset 0x9fd26c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
walkbackFileNameForProcess: recoveredArg1 signalDescription: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := EtasGeneralDllApi.
    recoveredValue3 := (recoveredValue2) walkbackDirectoryPathName.
    recoveredValue4 := (self) walkbackFileNameForProcess: (recoveredValue0) signalDescription: (recoveredValue1) preFix: ('WB ') directory: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20122568; bytecode file offset 0xa1ee28"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
outputWalkbackIntoSeperateFile: recoveredArg1 process: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) walkbackFileNameForProcess: (recoveredValue2) signalDescription: (recoveredValue3).
    recoveredValue5 := (self) outputWalkbackIntoSeperateFile: (recoveredValue0) additionalInfo: ('') process: (recoveredValue1) uniqueFileName: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20201480; bytecode file offset 0xafdd4c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
printUserActionListOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('last known user actions:').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := ASDUserActionObserver.
    recoveredValue7 := (recoveredValue6) instance.
    recoveredValue8 := (recoveredValue7) userActionsPrintString.
    (recoveredValue5) nextPutAll: (recoveredValue8).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x203a3c4c; bytecode file offset 0xca0534"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
findWalkbackStartFrame: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280f4adcArg1 | 
    | block280f4adcStack0 block280f4adcStack1 block280f4adcStack2 block280f4adcStack3 block280f4adcStack4 block280f4adcPC block280f4adcStep block280f4adcDone block280f4adcResult |
    block280f4adcStack0 := self.
    block280f4adcPC := 4.
    block280f4adcDone := false.
    [block280f4adcDone not] whileTrue: [
        block280f4adcStep := block280f4adcPC.
        block280f4adcStep = 4 ifTrue: [
            block280f4adcStack1 := false.
            block280f4adcPC := 5.
        ].
        block280f4adcStep = 5 ifTrue: [
            block280f4adcStack2 := block280f4adcArg1.
            block280f4adcPC := 6.
        ].
        block280f4adcStep = 6 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) isValid.
            block280f4adcPC := 7.
        ].
        block280f4adcStep = 7 ifTrue: [
            (block280f4adcStack2) ifTrue: [block280f4adcPC := 10] ifFalse: [block280f4adcPC := 50].
        ].
        block280f4adcStep = 10 ifTrue: [
            block280f4adcPC := 11.
        ].
        block280f4adcStep = 11 ifTrue: [
            block280f4adcStack1 := true.
            block280f4adcPC := 12.
        ].
        block280f4adcStep = 12 ifTrue: [
            block280f4adcStack2 := block280f4adcArg1.
            block280f4adcPC := 13.
        ].
        block280f4adcStep = 13 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) receiver.
            block280f4adcPC := 14.
        ].
        block280f4adcStep = 14 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) class.
            block280f4adcPC := 15.
        ].
        block280f4adcStep = 15 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) name.
            block280f4adcPC := 17.
        ].
        block280f4adcStep = 17 ifTrue: [
            block280f4adcStack3 := 'ExceptionalEvent'.
            block280f4adcPC := 19.
        ].
        block280f4adcStep = 19 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) = (block280f4adcStack3).
            block280f4adcPC := 20.
        ].
        block280f4adcStep = 20 ifTrue: [
            (block280f4adcStack2) ifTrue: [block280f4adcPC := 24] ifFalse: [block280f4adcPC := 38].
        ].
        block280f4adcStep = 24 ifTrue: [
            block280f4adcStack2 := block280f4adcArg1.
            block280f4adcPC := 25.
        ].
        block280f4adcStep = 25 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) method.
            block280f4adcPC := 27.
        ].
        block280f4adcStep = 27 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) selector.
            block280f4adcPC := 29.
        ].
        block280f4adcStep = 29 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) asString.
            block280f4adcPC := 31.
        ].
        block280f4adcStep = 31 ifTrue: [
            block280f4adcStack3 := 'signal'.
            block280f4adcPC := 33.
        ].
        block280f4adcStep = 33 ifTrue: [
            block280f4adcStack2 := (block280f4adcStack2) startsWith: (block280f4adcStack3).
            block280f4adcPC := 35.
        ].
        block280f4adcStep = 35 ifTrue: [
            (block280f4adcStack2) ifTrue: [block280f4adcPC := 50] ifFalse: [block280f4adcPC := 38].
        ].
        block280f4adcStep = 38 ifTrue: [
            block280f4adcPC := 39.
        ].
        block280f4adcStep = 39 ifTrue: [
            block280f4adcStack1 := block280f4adcArg1.
            block280f4adcPC := 40.
        ].
        block280f4adcStep = 40 ifTrue: [
            block280f4adcStack1 := (block280f4adcStack1) method.
            block280f4adcPC := 42.
        ].
        block280f4adcStep = 42 ifTrue: [
            block280f4adcStack1 := (block280f4adcStack1) selector.
            block280f4adcPC := 44.
        ].
        block280f4adcStep = 44 ifTrue: [
            block280f4adcStack1 := (block280f4adcStack1) asString.
            block280f4adcPC := 46.
        ].
        block280f4adcStep = 46 ifTrue: [
            block280f4adcStack2 := 'runtimeAssert:'.
            block280f4adcPC := 48.
        ].
        block280f4adcStep = 48 ifTrue: [
            block280f4adcStack1 := (block280f4adcStack1) startsWith: (block280f4adcStack2).
            block280f4adcPC := 50.
        ].
        block280f4adcStep = 50 ifTrue: [
            block280f4adcResult := block280f4adcStack1.
            block280f4adcDone := true.
        ].
    ].
    block280f4adcResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) inFramesDetect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204120b0; bytecode file offset 0xd0e9ac"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
calcWalkbackCRC: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := WriteStream.
    recoveredValue3 := String.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue2) on: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := Array.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue6) with: (recoveredValue7).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) previousFrames: (16).
    recoveredValue11 := (recoveredValue8) , (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := [:recoveredBlock50Arg1 :recoveredBlock50Arg2 | 
    | recoveredBlock50Stack0 recoveredBlock50Stack1 recoveredBlock50Stack2 recoveredBlock50Stack3 recoveredBlock50Stack4 recoveredBlock50PC recoveredBlock50Step recoveredBlock50Done recoveredBlock50Result |
    recoveredBlock50Stack0 := self.
    recoveredBlock50PC := 56.
    recoveredBlock50Done := false.
    [recoveredBlock50Done not] whileTrue: [
        recoveredBlock50Step := recoveredBlock50PC.
        recoveredBlock50Step = 56 ifTrue: [
            recoveredBlock50Stack1 := nil.
            recoveredBlock50PC := 57.
        ].
        recoveredBlock50Step = 57 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg2.
            recoveredBlock50PC := 58.
        ].
        recoveredBlock50Step = 58 ifTrue: [
            recoveredBlock50Stack3 := 2.
            recoveredBlock50PC := 60.
        ].
        recoveredBlock50Step = 60 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) > (recoveredBlock50Stack3).
            recoveredBlock50PC := 61.
        ].
        recoveredBlock50Step = 61 ifTrue: [
            (recoveredBlock50Stack2) ifTrue: [recoveredBlock50PC := 64] ifFalse: [recoveredBlock50PC := 87].
        ].
        recoveredBlock50Step = 64 ifTrue: [
            recoveredBlock50PC := 65.
        ].
        recoveredBlock50Step = 65 ifTrue: [
            recoveredBlock50Stack1 := recoveredLocal2.
            recoveredBlock50PC := 68.
        ].
        recoveredBlock50Step = 68 ifTrue: [
            recoveredBlock50Stack2 := recoveredBlock50Arg1.
            recoveredBlock50PC := 69.
        ].
        recoveredBlock50Step = 69 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) method.
            recoveredBlock50PC := 71.
        ].
        recoveredBlock50Step = 71 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) methodClass.
            recoveredBlock50PC := 73.
        ].
        recoveredBlock50Step = 73 ifTrue: [
            recoveredBlock50Stack2 := (recoveredBlock50Stack2) debugPrintString.
            recoveredBlock50PC := 75.
        ].
        recoveredBlock50Step = 75 ifTrue: [
            (recoveredBlock50Stack1) nextPutAll: (recoveredBlock50Stack2).
            recoveredBlock50PC := 77.
        ].
        recoveredBlock50Step = 77 ifTrue: [
            recoveredBlock50Stack1 := recoveredBlock50Arg1.
            recoveredBlock50PC := 78.
        ].
        recoveredBlock50Step = 78 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) method.
            recoveredBlock50PC := 80.
        ].
        recoveredBlock50Step = 80 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) selector.
            recoveredBlock50PC := 82.
        ].
        recoveredBlock50Step = 82 ifTrue: [
            recoveredBlock50Stack2 := recoveredLocal2.
            recoveredBlock50PC := 85.
        ].
        recoveredBlock50Step = 85 ifTrue: [
            recoveredBlock50Stack1 := (recoveredBlock50Stack1) printOn: (recoveredBlock50Stack2).
            recoveredBlock50PC := 87.
        ].
        recoveredBlock50Step = 87 ifTrue: [
            recoveredBlock50Result := recoveredBlock50Stack1.
            recoveredBlock50Done := true.
        ].
    ].
    recoveredBlock50Result
].
    (recoveredValue12) doWithIndex: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (recoveredValue14) contents.
    recoveredValue16 := (recoveredValue15) crcValue.
    ^recoveredValue16
! !

"ASDBase.ic method 0x2043d50c; bytecode file offset 0xd39e04"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
printAdditionalToolInformationOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) location.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'unknown library'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'current used database: '.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := SGContext.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) lastProjectLibaryPath.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := 'unknown project'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'current used project: '.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 'call_96671'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'main controller instances:'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := SGMainCtrl.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) allInstances.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044d714; bytecode file offset 0xd4a020"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
printWalkbackHeaderOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_69887'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) setToEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := EtasMainDatabaseCtrl.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasMainController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := EtasMainDatabaseCtrl.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasMainController.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) toolName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := '<Unknown>'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := ': '.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := EtasGeneralDllApi.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'Version'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) getRegKey: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := EtasMainDatabaseCtrl.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasMainController.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack3 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := EtasMainDatabaseCtrl.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasMainController.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) getVersionString.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := '<Unknown>'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := MxESd16.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := Time.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) now.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasWalkbackPrintString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := Date.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := (recoveredStack5) today.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := (recoveredStack5) etasWalkbackPrintString.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055e720; bytecode file offset 0xe5b04c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
walkbackFileNameForProcess: recoveredArg1 signalDescription: recoveredArg2 preFix: recoveredArg3 directory: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 75.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) findWalkbackStartFrame: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ' (#'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) calcWalkbackCRC: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := CfsPath.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) named: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := recoveredLocal1.
            recoveredBlock62PC := 71.
        ].
        recoveredBlock62Step = 71 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) class.
            recoveredBlock62PC := 73.
        ].
        recoveredBlock62Step = 73 ifTrue: [
            recoveredBlock62Stack2 := recoveredBlock62Arg1.
            recoveredBlock62PC := 74.
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) isIllegalCharacter: (recoveredBlock62Stack2).
            recoveredBlock62PC := 76.
        ].
        recoveredBlock62Step = 76 ifTrue: [
            (recoveredBlock62Stack1) ifTrue: [recoveredBlock62PC := 88] ifFalse: [recoveredBlock62PC := 80].
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Arg1.
            recoveredBlock62PC := 81.
        ].
        recoveredBlock62Step = 81 ifTrue: [
            recoveredBlock62Stack2 := $ .
            recoveredBlock62PC := 84.
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62Stack1 := (recoveredBlock62Stack1) = (recoveredBlock62Stack2).
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            (recoveredBlock62Stack1) ifTrue: [recoveredBlock62PC := 88] ifFalse: [recoveredBlock62PC := 96].
        ].
        recoveredBlock62Step = 88 ifTrue: [
            recoveredBlock62Stack1 := $_.
            recoveredBlock62PC := 92.
        ].
        recoveredBlock62Step = 92 ifTrue: [
            recoveredBlock62PC := 97.
        ].
        recoveredBlock62Step = 96 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Arg1.
            recoveredBlock62PC := 97.
        ].
        recoveredBlock62Step = 97 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack1.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := '__'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceAllStrings: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := '__'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 'call_2011400026'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := 100.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) min: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) getWalkbackFilesIn: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := [:block281105c0Arg1 | 
    | block281105c0Value0 block281105c0Value1 |
    block281105c0Value0 := block281105c0Arg1.
    block281105c0Value1 := (block281105c0Value0) dName.
    block281105c0Value1
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := [:block281105e4Arg1 | 
    | block281105e4Stack0 block281105e4Stack1 block281105e4Stack2 block281105e4Stack3 block281105e4Stack4 block281105e4Stack5 block281105e4PC block281105e4Step block281105e4Done block281105e4Result |
    block281105e4Stack0 := self.
    block281105e4PC := 4.
    block281105e4Done := false.
    [block281105e4Done not] whileTrue: [
        block281105e4Step := block281105e4PC.
        block281105e4Step = 4 ifTrue: [
            block281105e4Stack1 := block281105e4Arg1.
            block281105e4PC := 5.
        ].
        block281105e4Step = 5 ifTrue: [
            block281105e4Stack2 := '.wkb'.
            block281105e4PC := 7.
        ].
        block281105e4Step = 7 ifTrue: [
            block281105e4Stack1 := (block281105e4Stack1) endsWithIgnoreCase: (block281105e4Stack2).
            block281105e4PC := 9.
        ].
        block281105e4Step = 9 ifTrue: [
            (block281105e4Stack1) ifTrue: [block281105e4PC := 12] ifFalse: [block281105e4PC := 26].
        ].
        block281105e4Step = 12 ifTrue: [
            block281105e4Stack1 := block281105e4Arg1.
            block281105e4PC := 13.
        ].
        block281105e4Step = 13 ifTrue: [
            block281105e4Stack2 := 1.
            block281105e4PC := 15.
        ].
        block281105e4Step = 15 ifTrue: [
            block281105e4Stack3 := block281105e4Arg1.
            block281105e4PC := 16.
        ].
        block281105e4Step = 16 ifTrue: [
            block281105e4Stack3 := (block281105e4Stack3) size.
            block281105e4PC := 18.
        ].
        block281105e4Step = 18 ifTrue: [
            block281105e4Stack4 := 4.
            block281105e4PC := 20.
        ].
        block281105e4Step = 20 ifTrue: [
            block281105e4Stack3 := (block281105e4Stack3) - (block281105e4Stack4).
            block281105e4PC := 21.
        ].
        block281105e4Step = 21 ifTrue: [
            block281105e4Stack1 := (block281105e4Stack1) copyFrom: (block281105e4Stack2) to: (block281105e4Stack3).
            block281105e4PC := 23.
        ].
        block281105e4Step = 23 ifTrue: [
            block281105e4PC := 27.
        ].
        block281105e4Step = 26 ifTrue: [
            block281105e4Stack1 := block281105e4Arg1.
            block281105e4PC := 27.
        ].
        block281105e4Step = 27 ifTrue: [
            block281105e4Result := block281105e4Stack1.
            block281105e4Done := true.
        ].
    ].
    block281105e4Result
].
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := '.wkb'.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) append: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205892fc; bytecode file offset 0xe85c64"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
printAdditionalSystemInformationOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'host name: '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := SciSocketManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) default.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) getHostName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := ASDGeneralOptions.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncludeUserNameEnabled.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'user name: '.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := OSCall.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUserName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := EwNumericFormat.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'S9T999T999T999'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) formatString: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) totalAllocatedMemory.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) formattedStringFrom: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := ' ('.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 4294967296.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) formattedStringFrom: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := ')'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := 'Memory (Smalltalk):'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'Total allocation:  %1 bytes'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 'Available:         %1 bytes'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := System.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableMemory.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := (recoveredStack4) formattedStringFrom: (recoveredStack5).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := 'Fixed Space:       %1 bytes'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack5 := System.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableFixedSpaceMemory.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := (recoveredStack4) formattedStringFrom: (recoveredStack5).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := 'New Space:         %1 bytes'.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := System.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableNewSpaceMemory.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := (recoveredStack4) formattedStringFrom: (recoveredStack5).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := 'Old Space:         %1 bytes'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := System.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack5 := (recoveredStack5) availableOldSpaceMemory.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := (recoveredStack4) formattedStringFrom: (recoveredStack5).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := 'Memory (System):'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := OSMemorystatus.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalMemoryStatus.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) formattedSysInfo.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := OS.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourcesUsedByOwnProcess.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := 'Resources:'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := 'GDI Handles:  %1'.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := (recoveredStack4) first.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 'User Handles:  %1'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cfa00; bytecode file offset 0xecc36c"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
outputWalkbackIntoSeperateFile: recoveredArg1 additionalInfo: recoveredArg2 process: recoveredArg3 uniqueFileName: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := CfsWriteFileStream.
    recoveredBlock15Value1 := recoveredLocal3.
    recoveredBlock15Value2 := (recoveredBlock15Value0) open: (recoveredBlock15Value1).
    recoveredBlock15Value3 := recoveredBlock15Value2.
    recoveredLocal1 := recoveredBlock15Value3.
    recoveredBlock15Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := ExHalt.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39Stack4 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := TranscriptTTY.
            recoveredBlock39PC := 48.
        ].
        recoveredBlock39Step = 48 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) default.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Stack1.
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            (recoveredBlock39Stack2) cr.
            recoveredBlock39PC := 53.
        ].
        recoveredBlock39Step = 53 ifTrue: [
            recoveredBlock39Stack2 := MxESd9.
            recoveredBlock39PC := 55.
        ].
        recoveredBlock39Step = 55 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 56.
        ].
        recoveredBlock39Step = 56 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) argument.
            recoveredBlock39PC := 58.
        ].
        recoveredBlock39Step = 58 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) isString.
            recoveredBlock39PC := 60.
        ].
        recoveredBlock39Step = 60 ifTrue: [
            (recoveredBlock39Stack3) ifTrue: [recoveredBlock39PC := 64] ifFalse: [recoveredBlock39PC := 70].
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) argument.
            recoveredBlock39PC := 67.
        ].
        recoveredBlock39Step = 67 ifTrue: [
            recoveredBlock39PC := 73.
        ].
        recoveredBlock39Step = 70 ifTrue: [
            recoveredBlock39Stack3 := recoveredBlock39Arg1.
            recoveredBlock39PC := 71.
        ].
        recoveredBlock39Step = 71 ifTrue: [
            recoveredBlock39Stack3 := (recoveredBlock39Stack3) description.
            recoveredBlock39PC := 73.
        ].
        recoveredBlock39Step = 73 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) bindWith: (recoveredBlock39Stack3).
            recoveredBlock39PC := 75.
        ].
        recoveredBlock39Step = 75 ifTrue: [
            (recoveredBlock39Stack1) show: (recoveredBlock39Stack2).
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack1 := recoveredArg1.
            recoveredBlock39PC := 80.
        ].
        recoveredBlock39Step = 80 ifTrue: [
            recoveredBlock39Stack2 := recoveredArg3.
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            super outputWalkback: (recoveredBlock39Stack1) process: (recoveredBlock39Stack2).
            recoveredBlock39PC := 87.
        ].
        recoveredBlock39Step = 87 ifTrue: [
            recoveredBlock39Stack0 := recoveredBlock39Arg1.
            recoveredBlock39PC := 88.
        ].
        recoveredBlock39Step = 88 ifTrue: [
            recoveredBlock39Stack1 := nil.
            recoveredBlock39PC := 89.
        ].
        recoveredBlock39Step = 89 ifTrue: [
            recoveredBlock39Stack0 := (recoveredBlock39Stack0) exitWith: (recoveredBlock39Stack1).
            recoveredBlock39PC := 91.
        ].
        recoveredBlock39Step = 91 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack0.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [
    | block281192a8Value0 block281192a8Value1 |
    block281192a8Value0 := CfsFileDescriptor.
    block281192a8Value1 := (block281192a8Value0) closeDiscardedFileDescriptors.
    block281192a8Value1
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := ExHalt.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := [:block281192ccArg1 | 
    | block281192ccValue0 block281192ccValue1 |
    block281192ccValue0 := block281192ccArg1.
    block281192ccValue1 := (block281192ccValue0) exitWith: (nil).
    block281192ccValue1
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 9.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := TranscriptTTY.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := MxESd15.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) debugPrintString.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := super outputWalkback: (recoveredStack2) process: (recoveredStack3).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := Character.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) digitValue: (recoveredStack4).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := TranscriptTTY.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := '('.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := Date.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) today.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := (recoveredStack3) debugPrintString.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := Time.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) now.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := (recoveredStack3) debugPrintString.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := ') '.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := MxESd11.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWith: (recoveredStack4).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock261Value0 recoveredBlock261Value1 recoveredBlock261Value2 recoveredBlock261Value3 recoveredBlock261Value4 recoveredBlock261Value5 recoveredBlock261Value6 recoveredBlock261Value7 recoveredBlock261Value8 recoveredBlock261Value9 |
    recoveredBlock261Value0 := recoveredLocal1.
    (self) printWalkbackHeaderOn: (recoveredBlock261Value0).
    recoveredBlock261Value1 := recoveredArg1.
    recoveredBlock261Value2 := recoveredLocal1.
    recoveredBlock261Value3 := recoveredArg2.
    recoveredBlock261Value4 := recoveredArg3.
    (self) outputWalkbackRB: (recoveredBlock261Value1) on: (recoveredBlock261Value2) additionalInfo: (recoveredBlock261Value3) process: (recoveredBlock261Value4).
    recoveredBlock261Value5 := recoveredLocal1.
    (self) printAdditionalToolInformationOn: (recoveredBlock261Value5).
    recoveredBlock261Value6 := recoveredLocal1.
    (self) printAdditionalSystemInformationOn: (recoveredBlock261Value6).
    recoveredBlock261Value7 := recoveredLocal1.
    (self) broadcast: ('outputWalkbackToStream:') with: (recoveredBlock261Value7).
    recoveredBlock261Value8 := recoveredLocal1.
    recoveredBlock261Value9 := (self) printUserActionListOn: (recoveredBlock261Value8).
    recoveredBlock261Value9
].
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := ExHalt.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := (recoveredStack2) | (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := [:recoveredBlock322Arg1 | 
    | recoveredBlock322Value0 recoveredBlock322Value1 recoveredBlock322Value2 recoveredBlock322Value3 |
    recoveredBlock322Value0 := recoveredArg1.
    recoveredBlock322Value1 := recoveredArg3.
    super outputWalkback: (recoveredBlock322Value0) process: (recoveredBlock322Value1).
    recoveredBlock322Value2 := recoveredBlock322Arg1.
    recoveredBlock322Value3 := (recoveredBlock322Value2) exitWith: (nil).
    recoveredBlock322Value3
].
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20658754; bytecode file offset 0xf550f4"
!EsWindowSystemStartUp class methodsFor: 'recovered'!
outputWalkbackRB: recoveredArg1 on: recoveredArg2 additionalInfo: recoveredArg3 process: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal3 := recoveredValue3.
    recoveredValue4 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := RBPatchboxManager.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) patchboxFiles.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) notEmpty.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 36] ifFalse: [recoveredBlock13PC := 93].
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            (recoveredBlock13Stack2) cr.
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            (recoveredBlock13Stack2) cr.
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack3 := 'Additional patches found:'.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            (recoveredBlock13Stack2) nextPutAll: (recoveredBlock13Stack3).
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            (recoveredBlock13Stack2) cr.
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 55.
        ].
        recoveredBlock13Step = 55 ifTrue: [
            recoveredBlock13Stack3 := '========================='.
            recoveredBlock13PC := 57.
        ].
        recoveredBlock13Step = 57 ifTrue: [
            (recoveredBlock13Stack2) nextPutAll: (recoveredBlock13Stack3).
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            (recoveredBlock13Stack1) cr.
            recoveredBlock13PC := 61.
        ].
        recoveredBlock13Step = 61 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack2 := [:recoveredBlock13Block64Arg1 | 
    | recoveredBlock13Block64Value0 recoveredBlock13Block64Value1 recoveredBlock13Block64Value2 recoveredBlock13Block64Value3 |
    recoveredBlock13Block64Value0 := recoveredLocal3.
    recoveredBlock13Block64Value1 := recoveredBlock13Block64Value0.
    recoveredBlock13Block64Value2 := recoveredBlock13Block64Arg1.
    (recoveredBlock13Block64Value1) nextPutAll: (recoveredBlock13Block64Value2).
    recoveredBlock13Block64Value3 := (recoveredBlock13Block64Value0) cr.
    recoveredBlock13Block64Value3
].
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            (recoveredBlock13Stack1) do: (recoveredBlock13Stack2).
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal3.
            recoveredBlock13PC := 85.
        ].
        recoveredBlock13Step = 85 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            (recoveredBlock13Stack2) cr.
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 89.
        ].
        recoveredBlock13Step = 89 ifTrue: [
            (recoveredBlock13Stack2) cr.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) cr.
            recoveredBlock13PC := 93.
        ].
        recoveredBlock13Step = 93 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    recoveredValue5 := ExAll.
    recoveredValue6 := [:recoveredBlock96Arg1 | 
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 |
    recoveredBlock96Value0 := recoveredArg2.
    (recoveredBlock96Value0) nextPutAll: ('(exception in writing patches)').
    recoveredBlock96Value1 := recoveredBlock96Arg1.
    recoveredBlock96Value2 := (recoveredBlock96Value1) exitWith: (nil).
    recoveredBlock96Value2
].
    (recoveredValue4) when: (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := [
    | recoveredBlock116Value0 recoveredBlock116Value1 recoveredBlock116Value2 recoveredBlock116Value3 recoveredBlock116Value4 recoveredBlock116Value5 recoveredBlock116Value6 recoveredBlock116Value7 recoveredBlock116Value8 recoveredBlock116Value9 recoveredBlock116Value10 recoveredBlock116Value11 recoveredBlock116Value12 recoveredBlock116Value13 recoveredBlock116Value14 recoveredBlock116Value15 recoveredBlock116Value16 recoveredBlock116Value17 recoveredBlock116Value18 recoveredBlock116Value19 recoveredBlock116Value20 recoveredBlock116Value21 recoveredBlock116Value22 recoveredBlock116Value23 recoveredBlock116Value24 recoveredBlock116Value25 recoveredBlock116Value26 recoveredBlock116Value27 recoveredBlock116Value28 recoveredBlock116Value29 |
    recoveredBlock116Value0 := recoveredArg2.
    recoveredBlock116Value1 := recoveredBlock116Value0.
    (recoveredBlock116Value1) cr.
    recoveredBlock116Value2 := recoveredBlock116Value0.
    (recoveredBlock116Value2) cr.
    recoveredBlock116Value3 := recoveredBlock116Value0.
    recoveredBlock116Value4 := recoveredArg1.
    (recoveredBlock116Value3) nextPutAll: (recoveredBlock116Value4).
    (recoveredBlock116Value0) flush.
    recoveredBlock116Value5 := recoveredArg4.
    recoveredBlock116Value6 := (self) findWalkbackStartFrame: (recoveredBlock116Value5).
    recoveredLocal4 := recoveredBlock116Value6.
    recoveredBlock116Value7 := recoveredArg2.
    recoveredBlock116Value8 := recoveredBlock116Value7.
    (recoveredBlock116Value8) nextPutAll: (' (').
    recoveredBlock116Value9 := recoveredBlock116Value7.
    recoveredBlock116Value10 := recoveredLocal4.
    recoveredBlock116Value11 := (self) calcWalkbackCRC: (recoveredBlock116Value10).
    recoveredBlock116Value12 := (recoveredBlock116Value11) asString.
    (recoveredBlock116Value9) nextPutAll: (recoveredBlock116Value12).
    recoveredBlock116Value13 := recoveredBlock116Value7.
    (recoveredBlock116Value13) nextPutAll: (')').
    recoveredBlock116Value14 := recoveredBlock116Value7.
    (recoveredBlock116Value14) cr.
    recoveredBlock116Value15 := recoveredBlock116Value7.
    (recoveredBlock116Value15) cr.
    recoveredBlock116Value16 := recoveredBlock116Value7.
    recoveredBlock116Value17 := recoveredArg3.
    (recoveredBlock116Value16) nextPutAll: (recoveredBlock116Value17).
    recoveredBlock116Value18 := recoveredBlock116Value7.
    (recoveredBlock116Value18) cr.
    recoveredBlock116Value19 := recoveredBlock116Value7.
    (recoveredBlock116Value19) cr.
    (recoveredBlock116Value7) flush.
    recoveredLocal2 := 100.
    recoveredBlock116Value20 := Array.
    recoveredBlock116Value21 := recoveredLocal4.
    recoveredBlock116Value22 := (recoveredBlock116Value20) with: (recoveredBlock116Value21).
    recoveredBlock116Value23 := recoveredLocal4.
    recoveredBlock116Value24 := recoveredLocal2.
    recoveredBlock116Value25 := (recoveredBlock116Value23) previousFrames: (recoveredBlock116Value24).
    recoveredBlock116Value26 := (recoveredBlock116Value22) , (recoveredBlock116Value25).
    recoveredLocal12 := recoveredBlock116Value26.
    recoveredBlock116Value27 := recoveredLocal12.
    recoveredBlock116Value28 := [:recoveredBlock116Block220Arg1 :recoveredBlock116Block220Arg2 | 
    | recoveredBlock116Block220Value0 recoveredBlock116Block220Value1 recoveredBlock116Block220Value2 recoveredBlock116Block220Value3 recoveredBlock116Block220Value4 recoveredBlock116Block220Value5 recoveredBlock116Block220Value6 recoveredBlock116Block220Value7 recoveredBlock116Block220Value8 recoveredBlock116Block220Value9 recoveredBlock116Block220Value10 recoveredBlock116Block220Value11 recoveredBlock116Block220Value12 recoveredBlock116Block220Value13 |
    recoveredBlock116Block220Value0 := recoveredLocal3.
    recoveredBlock116Block220Value1 := recoveredBlock116Block220Value0.
    (recoveredBlock116Block220Value1) cr.
    recoveredBlock116Block220Value2 := recoveredBlock116Block220Value0.
    (recoveredBlock116Block220Value2) nextPutAll: ('--- ').
    recoveredBlock116Block220Value3 := recoveredBlock116Block220Value0.
    recoveredBlock116Block220Value4 := recoveredBlock116Block220Arg2.
    recoveredBlock116Block220Value5 := (recoveredBlock116Block220Value4) printString.
    (recoveredBlock116Block220Value3) nextPutAll: (recoveredBlock116Block220Value5).
    recoveredBlock116Block220Value6 := recoveredBlock116Block220Value0.
    (recoveredBlock116Block220Value6) nextPutAll: ('.').
    recoveredBlock116Block220Value7 := recoveredBlock116Block220Value0.
    (recoveredBlock116Block220Value7) nextPutAll: (' Stack frame ------------------------------------------------------------').
    recoveredBlock116Block220Value8 := recoveredBlock116Block220Value0.
    (recoveredBlock116Block220Value8) cr.
    (recoveredBlock116Block220Value0) cr.
    recoveredBlock116Block220Value9 := recoveredBlock116Block220Arg1.
    recoveredBlock116Block220Value10 := recoveredLocal3.
    (recoveredBlock116Block220Value9) etasDebugPrintOn: (recoveredBlock116Block220Value10).
    recoveredBlock116Block220Value11 := recoveredLocal3.
    recoveredBlock116Block220Value12 := recoveredBlock116Block220Value11.
    (recoveredBlock116Block220Value12) cr.
    recoveredBlock116Block220Value13 := (recoveredBlock116Block220Value11) flush.
    recoveredBlock116Block220Value13
].
    recoveredBlock116Value29 := (recoveredBlock116Value27) doWithIndex: (recoveredBlock116Value28).
    recoveredBlock116Value29
].
    recoveredValue8 := ExAll.
    recoveredValue9 := [:recoveredBlock278Arg1 | 
    | recoveredBlock278Value0 recoveredBlock278Value1 recoveredBlock278Value2 |
    recoveredBlock278Value0 := recoveredArg2.
    (recoveredBlock278Value0) nextPutAll: ('(exception in writing stack frames)').
    recoveredBlock278Value1 := recoveredBlock278Arg1.
    recoveredBlock278Value2 := (recoveredBlock278Value1) exitWith: (nil).
    recoveredBlock278Value2
].
    (recoveredValue7) when: (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := [
    | recoveredBlock298Value0 recoveredBlock298Value1 recoveredBlock298Value2 recoveredBlock298Value3 recoveredBlock298Value4 |
    recoveredBlock298Value0 := recoveredLocal3.
    recoveredBlock298Value1 := recoveredBlock298Value0.
    (recoveredBlock298Value1) cr.
    (recoveredBlock298Value0) cr.
    recoveredBlock298Value2 := recoveredLocal12.
    recoveredBlock298Value3 := [:recoveredBlock298Block315Arg1 :recoveredBlock298Block315Arg2 | 
    | recoveredBlock298Block315Value0 recoveredBlock298Block315Value1 recoveredBlock298Block315Value2 recoveredBlock298Block315Value3 recoveredBlock298Block315Value4 recoveredBlock298Block315Value5 recoveredBlock298Block315Value6 recoveredBlock298Block315Value7 recoveredBlock298Block315Value8 recoveredBlock298Block315Value9 recoveredBlock298Block315Value10 recoveredBlock298Block315Value11 recoveredBlock298Block315Value12 recoveredBlock298Block315Value13 recoveredBlock298Block315Value14 recoveredBlock298Block315Value15 recoveredBlock298Block315Value16 recoveredBlock298Block315Value17 recoveredBlock298Block315Value18 |
    recoveredBlock298Block315Value0 := recoveredBlock298Block315Arg1.
    recoveredBlock298Block315Value1 := (recoveredBlock298Block315Value0) method.
    recoveredLocal10 := recoveredBlock298Block315Value1.
    recoveredBlock298Block315Value2 := recoveredBlock298Block315Arg1.
    recoveredBlock298Block315Value3 := (recoveredBlock298Block315Value2) context.
    recoveredLocal9 := recoveredBlock298Block315Value3.
    recoveredBlock298Block315Value4 := recoveredLocal3.
    recoveredBlock298Block315Value5 := recoveredBlock298Block315Value4.
    recoveredBlock298Block315Value6 := recoveredBlock298Block315Arg2.
    recoveredBlock298Block315Value7 := (recoveredBlock298Block315Value6) printString.
    (recoveredBlock298Block315Value5) nextPutAll: (recoveredBlock298Block315Value7).
    recoveredBlock298Block315Value8 := recoveredBlock298Block315Value4.
    (recoveredBlock298Block315Value8) nextPutAll: ('.').
    (recoveredBlock298Block315Value4) nextPutAll: (' Stack frame: ').
    recoveredBlock298Block315Value9 := recoveredLocal3.
    recoveredBlock298Block315Value10 := recoveredLocal10.
    recoveredBlock298Block315Value11 := (recoveredBlock298Block315Value10) methodClass.
    recoveredBlock298Block315Value12 := (recoveredBlock298Block315Value11) debugPrintString.
    (recoveredBlock298Block315Value9) nextPutAll: (recoveredBlock298Block315Value12).
    recoveredBlock298Block315Value13 := recoveredLocal3.
    (recoveredBlock298Block315Value13) nextPutAll: ('>>').
    recoveredBlock298Block315Value14 := recoveredLocal10.
    recoveredBlock298Block315Value15 := (recoveredBlock298Block315Value14) selector.
    recoveredBlock298Block315Value16 := recoveredLocal3.
    (recoveredBlock298Block315Value15) printOn: (recoveredBlock298Block315Value16).
    recoveredBlock298Block315Value17 := recoveredLocal3.
    recoveredBlock298Block315Value18 := (recoveredBlock298Block315Value17) cr.
    recoveredBlock298Block315Value18
].
    recoveredBlock298Value4 := (recoveredBlock298Value2) doWithIndex: (recoveredBlock298Value3).
    recoveredBlock298Value4
].
    recoveredValue11 := ExAll.
    recoveredValue12 := [:recoveredBlock392Arg1 | 
    | recoveredBlock392Value0 recoveredBlock392Value1 recoveredBlock392Value2 |
    recoveredBlock392Value0 := recoveredArg2.
    (recoveredBlock392Value0) nextPutAll: ('(exception in writing last known methods)').
    recoveredBlock392Value1 := recoveredBlock392Arg1.
    recoveredBlock392Value2 := (recoveredBlock392Value1) exitWith: (nil).
    recoveredBlock392Value2
].
    (recoveredValue10) when: (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := [
    | recoveredBlock412Local1 recoveredBlock412Local2 recoveredBlock412Local3 recoveredBlock412Local4 recoveredBlock412Stack0 recoveredBlock412Stack1 recoveredBlock412Stack2 recoveredBlock412Stack3 recoveredBlock412Stack4 recoveredBlock412PC recoveredBlock412Step recoveredBlock412Done recoveredBlock412Result |
    recoveredBlock412Stack0 := self.
    recoveredBlock412PC := 418.
    recoveredBlock412Done := false.
    [recoveredBlock412Done not] whileTrue: [
        recoveredBlock412Step := recoveredBlock412PC.
        recoveredBlock412Step = 418 ifTrue: [
            recoveredBlock412Stack1 := nil.
            recoveredBlock412PC := 419.
        ].
        recoveredBlock412Step = 419 ifTrue: [
            recoveredBlock412Stack2 := recoveredLocal12.
            recoveredBlock412PC := 422.
        ].
        recoveredBlock412Step = 422 ifTrue: [
            recoveredBlock412Stack2 := (recoveredBlock412Stack2) notEmpty.
            recoveredBlock412PC := 424.
        ].
        recoveredBlock412Step = 424 ifTrue: [
            (recoveredBlock412Stack2) ifTrue: [recoveredBlock412PC := 428] ifFalse: [recoveredBlock412PC := 650].
        ].
        recoveredBlock412Step = 428 ifTrue: [
            recoveredBlock412PC := 429.
        ].
        recoveredBlock412Step = 429 ifTrue: [
            recoveredBlock412Stack1 := 100.
            recoveredBlock412PC := 432.
        ].
        recoveredBlock412Step = 432 ifTrue: [
            recoveredLocal2 := recoveredBlock412Stack1.
            recoveredBlock412PC := 435.
        ].
        recoveredBlock412Step = 435 ifTrue: [
            recoveredBlock412Stack1 := EsQueue.
            recoveredBlock412PC := 437.
        ].
        recoveredBlock412Step = 437 ifTrue: [
            recoveredBlock412Stack2 := recoveredLocal2.
            recoveredBlock412PC := 440.
        ].
        recoveredBlock412Step = 440 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) new: (recoveredBlock412Stack2).
            recoveredBlock412PC := 442.
        ].
        recoveredBlock412Step = 442 ifTrue: [
            recoveredBlock412Local3 := recoveredBlock412Stack1.
            recoveredBlock412PC := 445.
        ].
        recoveredBlock412Step = 445 ifTrue: [
            recoveredBlock412Stack1 := recoveredLocal12.
            recoveredBlock412PC := 448.
        ].
        recoveredBlock412Step = 448 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) last.
            recoveredBlock412PC := 450.
        ].
        recoveredBlock412Step = 450 ifTrue: [
            recoveredBlock412Local4 := recoveredBlock412Stack1.
            recoveredBlock412PC := 453.
        ].
        recoveredBlock412Step = 453 ifTrue: [
            recoveredBlock412Stack1 := recoveredLocal12.
            recoveredBlock412PC := 456.
        ].
        recoveredBlock412Step = 456 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) size.
            recoveredBlock412PC := 458.
        ].
        recoveredBlock412Step = 458 ifTrue: [
            recoveredBlock412Local2 := recoveredBlock412Stack1.
            recoveredBlock412PC := 461.
        ].
        recoveredBlock412Step = 461 ifTrue: [
            recoveredBlock412PC := 502.
        ].
        recoveredBlock412Step = 464 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local3.
            recoveredBlock412PC := 467.
        ].
        recoveredBlock412Step = 467 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) size.
            recoveredBlock412PC := 469.
        ].
        recoveredBlock412Step = 469 ifTrue: [
            recoveredBlock412Stack2 := recoveredLocal2.
            recoveredBlock412PC := 472.
        ].
        recoveredBlock412Step = 472 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) >= (recoveredBlock412Stack2).
            recoveredBlock412PC := 473.
        ].
        recoveredBlock412Step = 473 ifTrue: [
            (recoveredBlock412Stack1) ifTrue: [recoveredBlock412PC := 476] ifFalse: [recoveredBlock412PC := 488].
        ].
        recoveredBlock412Step = 476 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local3.
            recoveredBlock412PC := 479.
        ].
        recoveredBlock412Step = 479 ifTrue: [
            (recoveredBlock412Stack1) removeFirst.
            recoveredBlock412PC := 481.
        ].
        recoveredBlock412Step = 481 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local2.
            recoveredBlock412PC := 484.
        ].
        recoveredBlock412Step = 484 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) + (1).
            recoveredBlock412PC := 485.
        ].
        recoveredBlock412Step = 485 ifTrue: [
            recoveredBlock412Local2 := recoveredBlock412Stack1.
            recoveredBlock412PC := 488.
        ].
        recoveredBlock412Step = 488 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local3.
            recoveredBlock412PC := 491.
        ].
        recoveredBlock412Step = 491 ifTrue: [
            recoveredBlock412Stack2 := recoveredBlock412Local4.
            recoveredBlock412PC := 494.
        ].
        recoveredBlock412Step = 494 ifTrue: [
            recoveredBlock412Stack2 := (recoveredBlock412Stack2) previousFrame.
            recoveredBlock412PC := 496.
        ].
        recoveredBlock412Step = 496 ifTrue: [
            recoveredBlock412Stack3 := recoveredBlock412Stack2.
            recoveredBlock412PC := 497.
        ].
        recoveredBlock412Step = 497 ifTrue: [
            recoveredBlock412Local4 := recoveredBlock412Stack3.
            recoveredBlock412PC := 500.
        ].
        recoveredBlock412Step = 500 ifTrue: [
            (recoveredBlock412Stack1) addLast: (recoveredBlock412Stack2).
            recoveredBlock412PC := 502.
        ].
        recoveredBlock412Step = 502 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local4.
            recoveredBlock412PC := 505.
        ].
        recoveredBlock412Step = 505 ifTrue: [
            (recoveredBlock412Stack1 == nil) ifTrue: [recoveredBlock412PC := 515] ifFalse: [recoveredBlock412PC := 508].
        ].
        recoveredBlock412Step = 508 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local4.
            recoveredBlock412PC := 511.
        ].
        recoveredBlock412Step = 511 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) isBottomOfStack.
            recoveredBlock412PC := 513.
        ].
        recoveredBlock412Step = 513 ifTrue: [
            (recoveredBlock412Stack1) ifTrue: [recoveredBlock412PC := 515] ifFalse: [recoveredBlock412PC := 464].
        ].
        recoveredBlock412Step = 515 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local3.
            recoveredBlock412PC := 518.
        ].
        recoveredBlock412Step = 518 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) isEmpty.
            recoveredBlock412PC := 520.
        ].
        recoveredBlock412Step = 520 ifTrue: [
            (recoveredBlock412Stack1) ifTrue: [recoveredBlock412PC := 540] ifFalse: [recoveredBlock412PC := 524].
        ].
        recoveredBlock412Step = 524 ifTrue: [
            recoveredBlock412Stack1 := recoveredLocal3.
            recoveredBlock412PC := 527.
        ].
        recoveredBlock412Step = 527 ifTrue: [
            recoveredBlock412Stack2 := recoveredBlock412Stack1.
            recoveredBlock412PC := 528.
        ].
        recoveredBlock412Step = 528 ifTrue: [
            (recoveredBlock412Stack2) cr.
            recoveredBlock412Stack2 := recoveredBlock412Stack1.
            recoveredBlock412PC := 531.
        ].
        recoveredBlock412Step = 531 ifTrue: [
            recoveredBlock412Stack3 := 'Tail of Stack ...'.
            recoveredBlock412PC := 533.
        ].
        recoveredBlock412Step = 533 ifTrue: [
            (recoveredBlock412Stack2) nextPutAll: (recoveredBlock412Stack3).
            recoveredBlock412Stack2 := recoveredBlock412Stack1.
            recoveredBlock412PC := 536.
        ].
        recoveredBlock412Step = 536 ifTrue: [
            (recoveredBlock412Stack2) cr.
            recoveredBlock412PC := 538.
        ].
        recoveredBlock412Step = 538 ifTrue: [
            (recoveredBlock412Stack1) cr.
            recoveredBlock412PC := 540.
        ].
        recoveredBlock412Step = 540 ifTrue: [
            recoveredBlock412Stack1 := 0.
            recoveredBlock412PC := 542.
        ].
        recoveredBlock412Step = 542 ifTrue: [
            recoveredBlock412Local1 := recoveredBlock412Stack1.
            recoveredBlock412PC := 545.
        ].
        recoveredBlock412Step = 545 ifTrue: [
            recoveredBlock412Stack1 := recoveredBlock412Local3.
            recoveredBlock412PC := 548.
        ].
        recoveredBlock412Step = 548 ifTrue: [
            recoveredBlock412Stack2 := [:recoveredBlock412Block548Arg1 | 
    | recoveredBlock412Block548Value0 recoveredBlock412Block548Value1 recoveredBlock412Block548Value2 recoveredBlock412Block548Value3 recoveredBlock412Block548Value4 recoveredBlock412Block548Value5 recoveredBlock412Block548Value6 recoveredBlock412Block548Value7 recoveredBlock412Block548Value8 recoveredBlock412Block548Value9 recoveredBlock412Block548Value10 recoveredBlock412Block548Value11 recoveredBlock412Block548Value12 recoveredBlock412Block548Value13 recoveredBlock412Block548Value14 recoveredBlock412Block548Value15 recoveredBlock412Block548Value16 recoveredBlock412Block548Value17 recoveredBlock412Block548Value18 recoveredBlock412Block548Value19 recoveredBlock412Block548Value20 recoveredBlock412Block548Value21 recoveredBlock412Block548Value22 |
    recoveredBlock412Block548Value0 := recoveredBlock412Local1.
    recoveredBlock412Block548Value1 := (recoveredBlock412Block548Value0) + (1).
    recoveredBlock412Local1 := recoveredBlock412Block548Value1.
    recoveredBlock412Block548Value2 := recoveredBlock412Block548Arg1.
    recoveredBlock412Block548Value3 := (recoveredBlock412Block548Value2) method.
    recoveredLocal10 := recoveredBlock412Block548Value3.
    recoveredBlock412Block548Value4 := recoveredBlock412Block548Arg1.
    recoveredBlock412Block548Value5 := (recoveredBlock412Block548Value4) context.
    recoveredLocal9 := recoveredBlock412Block548Value5.
    recoveredBlock412Block548Value6 := recoveredLocal3.
    recoveredBlock412Block548Value7 := recoveredBlock412Block548Value6.
    recoveredBlock412Block548Value8 := recoveredBlock412Local1.
    recoveredBlock412Block548Value9 := recoveredBlock412Local2.
    recoveredBlock412Block548Value10 := (recoveredBlock412Block548Value8) + (recoveredBlock412Block548Value9).
    recoveredBlock412Block548Value11 := (recoveredBlock412Block548Value10) printString.
    (recoveredBlock412Block548Value7) nextPutAll: (recoveredBlock412Block548Value11).
    recoveredBlock412Block548Value12 := recoveredBlock412Block548Value6.
    (recoveredBlock412Block548Value12) nextPutAll: ('.').
    (recoveredBlock412Block548Value6) nextPutAll: (' Stack frame: ').
    recoveredBlock412Block548Value13 := recoveredLocal3.
    recoveredBlock412Block548Value14 := recoveredLocal10.
    recoveredBlock412Block548Value15 := (recoveredBlock412Block548Value14) methodClass.
    recoveredBlock412Block548Value16 := (recoveredBlock412Block548Value15) debugPrintString.
    (recoveredBlock412Block548Value13) nextPutAll: (recoveredBlock412Block548Value16).
    recoveredBlock412Block548Value17 := recoveredLocal3.
    (recoveredBlock412Block548Value17) nextPutAll: ('>>').
    recoveredBlock412Block548Value18 := recoveredLocal10.
    recoveredBlock412Block548Value19 := (recoveredBlock412Block548Value18) selector.
    recoveredBlock412Block548Value20 := recoveredLocal3.
    (recoveredBlock412Block548Value19) printOn: (recoveredBlock412Block548Value20).
    recoveredBlock412Block548Value21 := recoveredLocal3.
    recoveredBlock412Block548Value22 := (recoveredBlock412Block548Value21) cr.
    recoveredBlock412Block548Value22
].
            recoveredBlock412PC := 632.
        ].
        recoveredBlock412Step = 632 ifTrue: [
            recoveredBlock412Stack1 := (recoveredBlock412Stack1) do: (recoveredBlock412Stack2).
            recoveredBlock412PC := 634.
        ].
        recoveredBlock412Step = 634 ifTrue: [
            recoveredBlock412Stack2 := nil.
            recoveredBlock412PC := 635.
        ].
        recoveredBlock412Step = 635 ifTrue: [
            recoveredBlock412Stack3 := recoveredBlock412Stack2.
            recoveredBlock412PC := 636.
        ].
        recoveredBlock412Step = 636 ifTrue: [
            recoveredBlock412Local4 := recoveredBlock412Stack3.
            recoveredBlock412PC := 639.
        ].
        recoveredBlock412Step = 639 ifTrue: [
            recoveredBlock412Stack3 := recoveredBlock412Stack2.
            recoveredBlock412PC := 640.
        ].
        recoveredBlock412Step = 640 ifTrue: [
            recoveredBlock412Local3 := recoveredBlock412Stack3.
            recoveredBlock412PC := 643.
        ].
        recoveredBlock412Step = 643 ifTrue: [
            recoveredBlock412Stack3 := recoveredBlock412Stack2.
            recoveredBlock412PC := 644.
        ].
        recoveredBlock412Step = 644 ifTrue: [
            recoveredBlock412Local2 := recoveredBlock412Stack3.
            recoveredBlock412PC := 647.
        ].
        recoveredBlock412Step = 647 ifTrue: [
            recoveredBlock412Local1 := recoveredBlock412Stack2.
            recoveredBlock412PC := 650.
        ].
        recoveredBlock412Step = 650 ifTrue: [
            recoveredBlock412Result := recoveredBlock412Stack1.
            recoveredBlock412Done := true.
        ].
    ].
    recoveredBlock412Result
].
    recoveredValue14 := ExAll.
    recoveredValue15 := [:recoveredBlock653Arg1 | 
    | recoveredBlock653Value0 recoveredBlock653Value1 recoveredBlock653Value2 |
    recoveredBlock653Value0 := recoveredArg2.
    (recoveredBlock653Value0) nextPutAll: ('(exception in writing last known methods)').
    recoveredBlock653Value1 := recoveredBlock653Arg1.
    recoveredBlock653Value2 := (recoveredBlock653Value1) exitWith: (nil).
    recoveredBlock653Value2
].
    (recoveredValue13) when: (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := recoveredValue16.
    (recoveredValue17) cr.
    (recoveredValue16) cr.
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredValue18.
    (recoveredValue19) nextPutAll: ('Further processes existing in the VM').
    (recoveredValue18) cr.
    recoveredValue20 := recoveredLocal3.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) nextPutAll: ('====================================').
    (recoveredValue20) cr.
    recoveredValue22 := recoveredLocal3.
    (recoveredValue22) cr.
    recoveredValue23 := Processor.
    recoveredValue24 := (recoveredValue23) allProcesses.
    recoveredValue25 := [:recoveredBlock711Arg1 | 
    | recoveredBlock711Stack0 recoveredBlock711Stack1 recoveredBlock711Stack2 recoveredBlock711Stack3 recoveredBlock711Stack4 recoveredBlock711PC recoveredBlock711Step recoveredBlock711Done recoveredBlock711Result |
    recoveredBlock711Stack0 := self.
    recoveredBlock711PC := 718.
    recoveredBlock711Done := false.
    [recoveredBlock711Done not] whileTrue: [
        recoveredBlock711Step := recoveredBlock711PC.
        recoveredBlock711Step = 718 ifTrue: [
            recoveredBlock711Stack1 := nil.
            recoveredBlock711PC := 719.
        ].
        recoveredBlock711Step = 719 ifTrue: [
            recoveredBlock711Stack2 := recoveredBlock711Arg1.
            recoveredBlock711PC := 722.
        ].
        recoveredBlock711Step = 722 ifTrue: [
            recoveredBlock711Stack3 := recoveredArg4.
            recoveredBlock711PC := 725.
        ].
        recoveredBlock711Step = 725 ifTrue: [
            recoveredBlock711Stack2 := (recoveredBlock711Stack2) ~= (recoveredBlock711Stack3).
            recoveredBlock711PC := 726.
        ].
        recoveredBlock711Step = 726 ifTrue: [
            (recoveredBlock711Stack2) ifTrue: [recoveredBlock711PC := 730] ifFalse: [recoveredBlock711PC := 864].
        ].
        recoveredBlock711Step = 730 ifTrue: [
            recoveredBlock711PC := 731.
        ].
        recoveredBlock711Step = 731 ifTrue: [
            recoveredBlock711Stack1 := [
    | recoveredBlock711Block731Value0 recoveredBlock711Block731Value1 recoveredBlock711Block731Value2 recoveredBlock711Block731Value3 recoveredBlock711Block731Value4 recoveredBlock711Block731Value5 recoveredBlock711Block731Value6 recoveredBlock711Block731Value7 recoveredBlock711Block731Value8 recoveredBlock711Block731Value9 |
    recoveredBlock711Block731Value0 := recoveredLocal3.
    recoveredBlock711Block731Value1 := recoveredBlock711Block731Value0.
    (recoveredBlock711Block731Value1) cr.
    (recoveredBlock711Block731Value0) cr.
    recoveredBlock711Block731Value2 := recoveredBlock711Arg1.
    recoveredBlock711Block731Value3 := recoveredLocal3.
    (recoveredBlock711Block731Value2) printOn: (recoveredBlock711Block731Value3).
    recoveredBlock711Block731Value4 := recoveredLocal3.
    recoveredBlock711Block731Value5 := recoveredBlock711Block731Value4.
    (recoveredBlock711Block731Value5) cr.
    (recoveredBlock711Block731Value4) cr.
    recoveredBlock711Block731Value6 := recoveredBlock711Arg1.
    recoveredBlock711Block731Value7 := (recoveredBlock711Block731Value6) allFrames.
    recoveredBlock711Block731Value8 := [:recoveredBlock711Block731Block767Arg1 :recoveredBlock711Block731Block767Arg2 | 
    | recoveredBlock711Block731Block767Value0 recoveredBlock711Block731Block767Value1 recoveredBlock711Block731Block767Value2 recoveredBlock711Block731Block767Value3 recoveredBlock711Block731Block767Value4 recoveredBlock711Block731Block767Value5 recoveredBlock711Block731Block767Value6 recoveredBlock711Block731Block767Value7 recoveredBlock711Block731Block767Value8 recoveredBlock711Block731Block767Value9 recoveredBlock711Block731Block767Value10 recoveredBlock711Block731Block767Value11 recoveredBlock711Block731Block767Value12 recoveredBlock711Block731Block767Value13 recoveredBlock711Block731Block767Value14 recoveredBlock711Block731Block767Value15 recoveredBlock711Block731Block767Value16 recoveredBlock711Block731Block767Value17 recoveredBlock711Block731Block767Value18 |
    recoveredBlock711Block731Block767Value0 := recoveredBlock711Block731Block767Arg1.
    recoveredBlock711Block731Block767Value1 := (recoveredBlock711Block731Block767Value0) method.
    recoveredLocal10 := recoveredBlock711Block731Block767Value1.
    recoveredBlock711Block731Block767Value2 := recoveredBlock711Block731Block767Arg1.
    recoveredBlock711Block731Block767Value3 := (recoveredBlock711Block731Block767Value2) context.
    recoveredLocal9 := recoveredBlock711Block731Block767Value3.
    recoveredBlock711Block731Block767Value4 := recoveredLocal3.
    recoveredBlock711Block731Block767Value5 := recoveredBlock711Block731Block767Value4.
    recoveredBlock711Block731Block767Value6 := recoveredBlock711Block731Block767Arg2.
    recoveredBlock711Block731Block767Value7 := (recoveredBlock711Block731Block767Value6) printString.
    (recoveredBlock711Block731Block767Value5) nextPutAll: (recoveredBlock711Block731Block767Value7).
    recoveredBlock711Block731Block767Value8 := recoveredBlock711Block731Block767Value4.
    (recoveredBlock711Block731Block767Value8) nextPutAll: ('.').
    (recoveredBlock711Block731Block767Value4) nextPutAll: (' Stack frame: ').
    recoveredBlock711Block731Block767Value9 := recoveredLocal3.
    recoveredBlock711Block731Block767Value10 := recoveredLocal10.
    recoveredBlock711Block731Block767Value11 := (recoveredBlock711Block731Block767Value10) methodClass.
    recoveredBlock711Block731Block767Value12 := (recoveredBlock711Block731Block767Value11) debugPrintString.
    (recoveredBlock711Block731Block767Value9) nextPutAll: (recoveredBlock711Block731Block767Value12).
    recoveredBlock711Block731Block767Value13 := recoveredLocal3.
    (recoveredBlock711Block731Block767Value13) nextPutAll: ('>>').
    recoveredBlock711Block731Block767Value14 := recoveredLocal10.
    recoveredBlock711Block731Block767Value15 := (recoveredBlock711Block731Block767Value14) selector.
    recoveredBlock711Block731Block767Value16 := recoveredLocal3.
    (recoveredBlock711Block731Block767Value15) printOn: (recoveredBlock711Block731Block767Value16).
    recoveredBlock711Block731Block767Value17 := recoveredLocal3.
    recoveredBlock711Block731Block767Value18 := (recoveredBlock711Block731Block767Value17) cr.
    recoveredBlock711Block731Block767Value18
].
    recoveredBlock711Block731Value9 := (recoveredBlock711Block731Value7) doWithIndex: (recoveredBlock711Block731Value8).
    recoveredBlock711Block731Value9
].
            recoveredBlock711PC := 842.
        ].
        recoveredBlock711Step = 842 ifTrue: [
            recoveredBlock711Stack2 := ExAll.
            recoveredBlock711PC := 844.
        ].
        recoveredBlock711Step = 844 ifTrue: [
            recoveredBlock711Stack3 := [:recoveredBlock711Block844Arg1 | 
    | recoveredBlock711Block844Value0 recoveredBlock711Block844Value1 recoveredBlock711Block844Value2 |
    recoveredBlock711Block844Value0 := recoveredArg2.
    (recoveredBlock711Block844Value0) nextPutAll: ('(exception in writing last known methods)').
    recoveredBlock711Block844Value1 := recoveredBlock711Block844Arg1.
    recoveredBlock711Block844Value2 := (recoveredBlock711Block844Value1) exitWith: (nil).
    recoveredBlock711Block844Value2
].
            recoveredBlock711PC := 862.
        ].
        recoveredBlock711Step = 862 ifTrue: [
            recoveredBlock711Stack1 := (recoveredBlock711Stack1) when: (recoveredBlock711Stack2) do: (recoveredBlock711Stack3).
            recoveredBlock711PC := 864.
        ].
        recoveredBlock711Step = 864 ifTrue: [
            recoveredBlock711Result := recoveredBlock711Stack1.
            recoveredBlock711Done := true.
        ].
    ].
    recoveredBlock711Result
].
    (recoveredValue24) do: (recoveredValue25).
    recoveredValue26 := RBAbstractRunTimeErrorHandling.
    recoveredValue27 := recoveredLocal3.
    recoveredValue28 := recoveredArg2.
    (recoveredValue26) encodeAndAppend: (recoveredValue27) to: (recoveredValue28).
    recoveredValue29 := recoveredArg2.
    (recoveredValue29) flush.
    ^self
! !

