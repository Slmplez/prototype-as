"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x2000011c; bytecode file offset 0xe340"
!PCDExecuter class methodsFor: 'recovered'!
winFileName
    ^'exe_win.txt'
! !

"ASDGenUtil_base.ic method 0x2000017c; bytecode file offset 0xe340"
!PCDExecuter class methodsFor: 'recovered'!
helpFileName
    ^'exe_hlp.txt'
! !

"ASDGenUtil_base.ic method 0x200001a0; bytecode file offset 0xe340"
!PCDExecuter class methodsFor: 'recovered'!
logFileName
    ^'exe_log.txt'
! !

"ASDGenUtil_base.ic method 0x2000023c; bytecode file offset 0xe3e0"
!PCDExecuter class methodsFor: 'recovered'!
log
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Log.
    recoveredValue1 := (recoveredValue0) contents.
    ^recoveredValue1
! !

"ASDGenUtil_base.ic method 0x20000738; bytecode file offset 0xe8ec"
!PCDExecuter class methodsFor: 'recovered'!
eval: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Compiler.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) evaluate: (recoveredValue1).
    ^self
! !

"ASDGenUtil_base.ic method 0x20000748; bytecode file offset 0xe8ec"
!PCDExecuter class methodsFor: 'recovered'!
addResourceDLL: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addAdditionalResourceDLLWithName: (recoveredValue1).
    ^self
! !

"ASDGenUtil_base.ic method 0x200008ac; bytecode file offset 0xea58"
!PCDExecuter class methodsFor: 'recovered'!
wait: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Delay.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := (recoveredValue0) forSeconds: (recoveredValue2).
    (recoveredValue3) wait.
    ^self
! !

"ASDGenUtil_base.ic method 0x200009c8; bytecode file offset 0xeb6c"
!PCDExecuter class methodsFor: 'recovered'!
autoStart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autoStart := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x200009ec; bytecode file offset 0xeb88"
!PCDExecuter class methodsFor: 'recovered'!
shutDown: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    shutDown := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000a00; bytecode file offset 0xeb9c"
!PCDExecuter class methodsFor: 'recovered'!
location: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    location := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000adc; bytecode file offset 0xec8c"
!PCDExecuter class methodsFor: 'recovered'!
open: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asSymbol.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) new.
    (recoveredValue4) open.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000ce4; bytecode file offset 0xee90"
!PCDExecuter class methodsFor: 'recovered'!
create
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Log.
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
            (recoveredStack1) reset.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20000d0c; bytecode file offset 0xeeac"
!PCDExecuter class methodsFor: 'recovered'!
executeShutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shutDown.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := shutDown.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) executeInScope: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20000d9c; bytecode file offset 0xef54"
!PCDExecuter class methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Locale.
    recoveredValue2 := (recoveredValue1) current.
    recoveredValue3 := (recoveredValue2) preferredStringClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (recoveredValue0) on: (recoveredValue4).
    Log := recoveredValue5.
    ^self
! !

"ASDGenUtil_base.ic method 0x20001014; bytecode file offset 0xf1bc"
!PCDExecuter class methodsFor: 'recovered'!
executeAutoStart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2009406226'.
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
            recoveredStack1 := autoStart.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := autoStart.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) executeInScope: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200010a4; bytecode file offset 0xf260"
!PCDExecuter class methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CwMessagePrompter.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) messageString: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := CwConstants.
    recoveredValue6 := (recoveredValue5) at: ('XmOK').
    (recoveredValue4) buttonType: (recoveredValue6).
    (recoveredValue1) prompt.
    ^self
! !

"ASDGenUtil_base.ic method 0x20001290; bytecode file offset 0xf46c"
!PCDExecuter class methodsFor: 'recovered'!
windows: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) allWindowNames.
    recoveredValue0 := ETASWinExec.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) trimBlanks.
    recoveredValue3 := (recoveredValue2) , (' ').
    recoveredValue4 := (self) winFileName.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue0) startOnWindows: (recoveredValue5) showWindow: (true).
    ^self
! !

"ASDGenUtil_base.ic method 0x200012b4; bytecode file offset 0xf46c"
!PCDExecuter class methodsFor: 'recovered'!
help: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    (self) help.
    recoveredValue0 := ETASWinExec.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) trimBlanks.
    recoveredValue3 := (recoveredValue2) , (' ').
    recoveredValue4 := (self) helpFileName.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue0) startOnWindows: (recoveredValue5) showWindow: (true).
    ^self
! !

"ASDGenUtil_base.ic method 0x20001488; bytecode file offset 0xf640"
!PCDExecuter class methodsFor: 'recovered'!
showInternal: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CfsWriteFileStream.
    recoveredValue1 := (recoveredValue0) openEmpty: ('PCDshowInternal.txt').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) close.
    recoveredValue5 := ETASWinExec.
    (recoveredValue5) startOnWindows: ('PCDshowInternal.txt') showWindow: (true).
    ^self
! !

"ASDGenUtil_base.ic method 0x200016d4; bytecode file offset 0xf884"
!PCDExecuter class methodsFor: 'recovered'!
focusWindow
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) allWindows.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) shell.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) hasFocus.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 25].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

"ASDGenUtil_base.ic method 0x20001a14; bytecode file offset 0xfbdc"
!PCDExecuter class methodsFor: 'recovered'!
log: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := CfsWriteFileStream.
    recoveredValue1 := (self) logFileName.
    recoveredValue2 := (recoveredValue0) openEmpty: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) log.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) close.
    recoveredValue6 := ETASWinExec.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) trimBlanks.
    recoveredValue9 := (recoveredValue8) , (' ').
    recoveredValue10 := (self) logFileName.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    (recoveredValue6) startOnWindows: (recoveredValue11) showWindow: (true).
    ^self
! !

"ASDGenUtil_base.ic method 0x200020c4; bytecode file offset 0x1028c"
!PCDExecuter class methodsFor: 'recovered'!
allWindowNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CfsWriteFileStream.
    recoveredValue1 := (self) winFileName.
    recoveredValue2 := (recoveredValue0) openEmpty: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := RBUserInterface.
    recoveredValue4 := (recoveredValue3) allWindows.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    recoveredBlock16Value2 := recoveredBlock16Arg1.
    recoveredBlock16Value3 := (recoveredBlock16Value2) class.
    recoveredBlock16Value4 := (recoveredBlock16Value3) name.
    (recoveredBlock16Value1) nextPutAll: (recoveredBlock16Value4).
    recoveredBlock16Value5 := (recoveredBlock16Value0) cr.
    recoveredBlock16Value5
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (recoveredValue6) close.
    ^self
! !

"ASDGenUtil_base.ic method 0x20002444; bytecode file offset 0x10600"
!PCDExecuter class methodsFor: 'recovered'!
popWindow: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asInteger.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := RBUserInterface.
    recoveredValue3 := (recoveredValue2) allWindows.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := (recoveredBlock14Value0) shell.
    recoveredBlock14Value2 := (recoveredBlock14Value1) osWidget.
    recoveredBlock14Value3 := (recoveredBlock14Value2) handle.
    recoveredBlock14Value4 := (recoveredBlock14Value3) asInteger.
    recoveredBlock14Value5 := recoveredLocal1.
    recoveredBlock14Value6 := (recoveredBlock14Value4) = (recoveredBlock14Value5).
    recoveredBlock14Value6
].
    recoveredValue5 := [
    ^self
].
    recoveredValue6 := (recoveredValue3) detect: (recoveredValue4) ifNone: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue7) bringToFront.
    ^self
! !

"ASDGenUtil_base.ic method 0x20004108; bytecode file offset 0x12300"
!PCDExecuter class methodsFor: 'recovered'!
generatePopWindowCommandFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := $/.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := location.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := location.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := location.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWindow.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := CwBasicWidget.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'OBJECT popWindow: "'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) shell.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := (recoveredStack2) osWidget.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) handle.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20006884; bytecode file offset 0x14ad8"
!PCDExecuter class methodsFor: 'recovered'!
help
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 |
    recoveredValue0 := CfsWriteFileStream.
    recoveredValue1 := (self) helpFileName.
    recoveredValue2 := (recoveredValue0) openEmpty: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := ZZZExecuterToolbox.
    recoveredValue6 := (recoveredValue5) labelString.
    recoveredValue7 := ('Etas ') , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , ('Toolbox, Version ').
    recoveredValue9 := ZZZExecuterToolbox.
    recoveredValue10 := (recoveredValue9) toolboxDescriptor.
    recoveredValue11 := (recoveredValue10) packageVersion.
    recoveredValue12 := (recoveredValue8) , (recoveredValue11).
    (recoveredValue4) nextPutAll: (recoveredValue12).
    (recoveredValue3) cr.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredValue13.
    (recoveredValue14) tab.
    recoveredValue15 := recoveredValue13.
    (recoveredValue15) nextPutAll: ('This toolbox opens the possibility to add arbitrary menus and menu items via some <executer.ini> file.').
    recoveredValue16 := recoveredValue13.
    (recoveredValue16) cr.
    recoveredValue17 := recoveredValue13.
    (recoveredValue17) tab.
    recoveredValue18 := recoveredValue13.
    (recoveredValue18) nextPutAll: ('This file will be read only once during startup. Hence changes are only active for the next start of').
    recoveredValue19 := recoveredValue13.
    (recoveredValue19) cr.
    recoveredValue20 := recoveredValue13.
    (recoveredValue20) tab.
    recoveredValue21 := recoveredValue13.
    (recoveredValue21) nextPutAll: ('ASCET-SD, INCA or whatever ETAS application.').
    recoveredValue22 := recoveredValue13.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue13.
    (recoveredValue23) tab.
    recoveredValue24 := recoveredValue13.
    (recoveredValue24) nextPutAll: ('It is possible however to forward execution control to additional files. In this case the work').
    recoveredValue25 := recoveredValue13.
    (recoveredValue25) cr.
    recoveredValue26 := recoveredValue13.
    (recoveredValue26) tab.
    recoveredValue27 := recoveredValue13.
    (recoveredValue27) nextPutAll: ('can be completely dynamic, i.e. changes in the additional files will be active instantly.').
    recoveredValue28 := recoveredValue13.
    (recoveredValue28) cr.
    (recoveredValue13) cr.
    recoveredValue29 := recoveredLocal1.
    recoveredValue30 := recoveredValue29.
    (recoveredValue30) nextPutAll: ('Allowed keywords and evaluation order in <executer.ini> (general syntax conformant to Windows *.ini files): ').
    recoveredValue31 := recoveredValue29.
    (recoveredValue31) cr.
    recoveredValue32 := recoveredValue29.
    (recoveredValue32) tab.
    recoveredValue33 := recoveredValue29.
    (recoveredValue33) nextPutAll: ('The section [AUTOSTART] is reserved for automatic startup, see <exe_auto.txt>.').
    recoveredValue34 := recoveredValue29.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue29.
    (recoveredValue35) tab.
    recoveredValue36 := recoveredValue29.
    (recoveredValue36) nextPutAll: ('Here only FILE is possible and necessary. Other demanded entries are:').
    recoveredValue37 := recoveredValue29.
    (recoveredValue37) cr.
    recoveredValue38 := recoveredValue29.
    (recoveredValue38) tab.
    recoveredValue39 := recoveredValue29.
    (recoveredValue39) nextPutAll: ('WINDOW - the window identifier in the application, see <exe_cls.txt>').
    recoveredValue40 := recoveredValue29.
    (recoveredValue40) cr.
    recoveredValue41 := recoveredValue29.
    (recoveredValue41) tab.
    recoveredValue42 := recoveredValue29.
    (recoveredValue42) nextPutAll: ('MENU - the menu title (new or existing one)').
    recoveredValue43 := recoveredValue29.
    (recoveredValue43) cr.
    recoveredValue44 := recoveredValue29.
    (recoveredValue44) tab.
    recoveredValue45 := recoveredValue29.
    (recoveredValue45) nextPutAll: ('ITEM - the new menu item label').
    recoveredValue46 := recoveredValue29.
    (recoveredValue46) cr.
    recoveredValue47 := recoveredValue29.
    (recoveredValue47) tab.
    recoveredValue48 := recoveredValue29.
    (recoveredValue48) nextPutAll: ('DESCRIPTION - identifier for <exe_log.txt> ').
    recoveredValue49 := recoveredValue29.
    (recoveredValue49) cr.
    recoveredValue50 := recoveredValue29.
    (recoveredValue50) tab.
    recoveredValue51 := recoveredValue29.
    (recoveredValue51) nextPutAll: ('FILE - the script file to be executed.').
    (recoveredValue29) cr.
    recoveredValue52 := recoveredLocal1.
    recoveredValue53 := recoveredValue52.
    (recoveredValue53) nextPutAll: ('Allowed keywords in script files: (general syntax is <keyword> <argument>)').
    recoveredValue54 := recoveredValue52.
    (recoveredValue54) cr.
    recoveredValue55 := recoveredValue52.
    (recoveredValue55) tab.
    recoveredValue56 := recoveredValue52.
    recoveredValue57 := PCDExecuterObject.
    recoveredValue58 := (recoveredValue57) fileIdentifier.
    (recoveredValue56) nextPutAll: (recoveredValue58).
    recoveredValue59 := recoveredValue52.
    (recoveredValue59) cr.
    recoveredValue60 := recoveredValue52.
    (recoveredValue60) tab.
    recoveredValue61 := recoveredValue52.
    recoveredValue62 := PCDExecuterSeparator.
    recoveredValue63 := (recoveredValue62) fileIdentifier.
    (recoveredValue61) nextPutAll: (recoveredValue63).
    recoveredValue64 := recoveredValue52.
    (recoveredValue64) cr.
    recoveredValue65 := recoveredValue52.
    (recoveredValue65) tab.
    recoveredValue66 := recoveredValue52.
    recoveredValue67 := PCDExecuterSelector.
    recoveredValue68 := (recoveredValue67) fileIdentifier.
    (recoveredValue66) nextPutAll: (recoveredValue68).
    recoveredValue69 := recoveredValue52.
    (recoveredValue69) cr.
    recoveredValue70 := recoveredValue52.
    (recoveredValue70) tab.
    recoveredValue71 := recoveredValue52.
    recoveredValue72 := PCDExecuterMenuItem.
    recoveredValue73 := (recoveredValue72) fileIdentifier.
    (recoveredValue71) nextPutAll: (recoveredValue73).
    recoveredValue74 := recoveredValue52.
    (recoveredValue74) cr.
    recoveredValue75 := recoveredValue52.
    (recoveredValue75) tab.
    recoveredValue76 := recoveredValue52.
    recoveredValue77 := PCDExecuterFile.
    recoveredValue78 := (recoveredValue77) fileIdentifier.
    (recoveredValue76) nextPutAll: (recoveredValue78).
    recoveredValue79 := recoveredValue52.
    (recoveredValue79) cr.
    recoveredValue80 := recoveredValue52.
    (recoveredValue80) tab.
    recoveredValue81 := recoveredValue52.
    recoveredValue82 := PCDExecuterFileFork.
    recoveredValue83 := (recoveredValue82) fileIdentifier.
    (recoveredValue81) nextPutAll: (recoveredValue83).
    recoveredValue84 := recoveredValue52.
    (recoveredValue84) cr.
    recoveredValue85 := recoveredValue52.
    (recoveredValue85) tab.
    recoveredValue86 := recoveredValue52.
    recoveredValue87 := PCDExecuterWinExe.
    recoveredValue88 := (recoveredValue87) fileIdentifier.
    (recoveredValue86) nextPutAll: (recoveredValue88).
    recoveredValue89 := recoveredValue52.
    (recoveredValue89) cr.
    recoveredValue90 := recoveredValue52.
    (recoveredValue90) tab.
    recoveredValue91 := recoveredValue52.
    recoveredValue92 := PCDExecuterWinExeInMain.
    recoveredValue93 := (recoveredValue92) fileIdentifier.
    (recoveredValue91) nextPutAll: (recoveredValue93).
    recoveredValue94 := recoveredValue52.
    (recoveredValue94) cr.
    recoveredValue95 := recoveredValue52.
    (recoveredValue95) tab.
    recoveredValue96 := recoveredValue52.
    recoveredValue97 := PCDExecuterWinExeNoWait.
    recoveredValue98 := (recoveredValue97) fileIdentifier.
    (recoveredValue96) nextPutAll: (recoveredValue98).
    recoveredValue99 := recoveredValue52.
    (recoveredValue99) cr.
    recoveredValue100 := recoveredValue52.
    (recoveredValue100) tab.
    recoveredValue101 := recoveredValue52.
    recoveredValue102 := PCDExecuterPostMessage.
    recoveredValue103 := (recoveredValue102) fileIdentifier.
    (recoveredValue101) nextPutAll: (recoveredValue103).
    recoveredValue104 := recoveredValue52.
    (recoveredValue104) cr.
    recoveredValue105 := recoveredValue52.
    (recoveredValue105) tab.
    recoveredValue106 := recoveredValue52.
    recoveredValue107 := PCDExecuterSendMessage.
    recoveredValue108 := (recoveredValue107) fileIdentifier.
    (recoveredValue106) nextPutAll: (recoveredValue108).
    (recoveredValue52) cr.
    recoveredValue109 := recoveredLocal1.
    recoveredValue110 := recoveredValue109.
    (recoveredValue110) nextPutAll: ('The OBJECT keyword is special. The following commands are possible:').
    recoveredValue111 := recoveredValue109.
    (recoveredValue111) cr.
    recoveredValue112 := recoveredValue109.
    (recoveredValue112) tab.
    recoveredValue113 := recoveredValue109.
    (recoveredValue113) nextPutAll: ('addResourceDLL: <fileName>	- needed for customized icons').
    recoveredValue114 := recoveredValue109.
    (recoveredValue114) cr.
    recoveredValue115 := recoveredValue109.
    (recoveredValue115) tab.
    recoveredValue116 := recoveredValue109.
    (recoveredValue116) nextPutAll: ('help: <applicationName>	- presents this contents with e.g. <applicationName> = Notepad').
    recoveredValue117 := recoveredValue109.
    (recoveredValue117) cr.
    recoveredValue118 := recoveredValue109.
    (recoveredValue118) tab.
    recoveredValue119 := recoveredValue109.
    (recoveredValue119) nextPutAll: ('log: <applicationName>	- presents a history of called scripts with e.g. <applicationName> = Notepad').
    recoveredValue120 := recoveredValue109.
    (recoveredValue120) cr.
    recoveredValue121 := recoveredValue109.
    (recoveredValue121) tab.
    recoveredValue122 := recoveredValue109.
    (recoveredValue122) nextPutAll: ('windows: <applicationName>	- presents a list of window identifiers with e.g. <applicationName> = Notepad').
    recoveredValue123 := recoveredValue109.
    (recoveredValue123) cr.
    recoveredValue124 := recoveredValue109.
    (recoveredValue124) tab.
    recoveredValue125 := recoveredValue109.
    (recoveredValue125) nextPutAll: ('wait: <seconds>	- idle while some process e.g. a measurement is running').
    recoveredValue126 := recoveredValue109.
    (recoveredValue126) cr.
    (recoveredValue109) cr.
    recoveredValue127 := recoveredLocal1.
    (recoveredValue127) close.
    ^self
! !

