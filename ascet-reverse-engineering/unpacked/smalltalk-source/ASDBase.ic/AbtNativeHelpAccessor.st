"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056f24; bytecode file offset 0x953900"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
makeNullTerminatedPathString: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) normalizePathStringForOS: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) nullTerminated.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20063284; bytecode file offset 0x95fbd0"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006338c; bytecode file offset 0x95fcb8"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockContextIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063464; bytecode file offset 0x95fd80"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockHelpContents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063484; bytecode file offset 0x95fd80"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockHelpIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063548; bytecode file offset 0x95fe44"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockQuit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200635dc; bytecode file offset 0x95fec8"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockHelpSearch
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063670; bytecode file offset 0x95ff2c"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
blockHelpForHelp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) helpInstance.
    recoveredValue1 := (recoveredValue0) at: (6).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065e24; bytecode file offset 0x963428"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
helpFile
    | recoveredValue0 |
    recoveredValue0 := file.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067534; bytecode file offset 0x9646f8"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
helpInstance
    | recoveredValue0 |
    recoveredValue0 := helpInst.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068524; bytecode file offset 0x965b90"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
shell
    | recoveredValue0 |
    recoveredValue0 := shell.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20081838; bytecode file offset 0x97e234"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
normalizePathStringForOS: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CfsFileDescriptor.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) encodePathName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099b94; bytecode file offset 0x99647c"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
displayIndexInFile: recoveredArg1 withWindowTitle: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) blockHelpSearch.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) winHelpFile: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20099ba8; bytecode file offset 0x99647c"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
displayContentsInFile: recoveredArg1 withWindowTitle: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) blockHelpContents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) winHelpFile: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20099bbc; bytecode file offset 0x99647c"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
displayHelpForHelpInFile: recoveredArg1 withWindowTitle: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) blockHelpForHelp.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) winHelpFile: (recoveredValue1).
    recoveredValue3 := (recoveredValue0) value: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bddac; bytecode file offset 0x9bb178"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
helpFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    file := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beb58; bytecode file offset 0x9bc0b4"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
helpInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    helpInst := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201507e0; bytecode file offset 0xa4d0a4"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
destroy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) blockQuit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) helpInstance: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210d24; bytecode file offset 0xb0d5ec"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
displayTopic: recoveredArg1 inFile: recoveredArg2 withWindowTitle: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockContextIndex.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) winHelpFile: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) blockKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) winHelpFile: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20270730; bytecode file offset 0xb6cffc"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
winHelpFile: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := AbtFileSpec.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'PATH'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathEnvVarName: (recoveredStack2) fileName: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFileSpec.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20278118; bytecode file offset 0xb749f0"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
initializeUsingShell: recoveredArg1 helpFile: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            shell := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) helpFile: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateGetHelpInstance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) helpInstance: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpInstance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAbtError.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) helpInstance.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := shell.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'destroyCallback:clientData:callData:'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := shell.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20579db4; bytecode file offset 0xe766b0"
!AbtNativeHelpAccessor methodsFor: 'recovered'!
privateGetHelpInstance
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (6).
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := (self) shell.
    recoveredValue3 := (recoveredValue2) osWidget.
    recoveredValue4 := (recoveredValue3) handle.
    recoveredValue5 := (recoveredValue4) value.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := PlatformFunction.
    recoveredValue7 := (recoveredValue6) callingConvention: ('C') function: ('WinHelpA') library: ('user32.dll') parameterTypes: (#('pointer' 'pointer' 'uint32' 'uint32')) returnType: ('bool').
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := PlatformFunction.
    recoveredValue9 := (recoveredValue8) callingConvention: ('C') function: ('WinHelpA') library: ('user32.dll') parameterTypes: (#('pointer' 'pointer' 'uint32' 'pointer')) returnType: ('bool').
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := [:recoveredBlock62Arg1 :recoveredBlock62Arg2 | 
    | recoveredBlock62Value0 recoveredBlock62Value1 recoveredBlock62Value2 recoveredBlock62Value3 recoveredBlock62Value4 recoveredBlock62Value5 recoveredBlock62Value6 recoveredBlock62Value7 |
    recoveredBlock62Value0 := recoveredLocal1.
    recoveredBlock62Value1 := recoveredLocal3.
    recoveredBlock62Value2 := recoveredBlock62Arg1.
    recoveredBlock62Value3 := (recoveredBlock62Value2) fullName.
    recoveredBlock62Value4 := (self) makeNullTerminatedPathString: (recoveredBlock62Value3).
    recoveredBlock62Value5 := recoveredBlock62Arg2.
    recoveredBlock62Value6 := (self) makeNullTerminatedPathString: (recoveredBlock62Value5).
    recoveredBlock62Value7 := (recoveredBlock62Value0) callWith: (recoveredBlock62Value1) with: (recoveredBlock62Value4) with: (257) with: (recoveredBlock62Value6).
    recoveredBlock62Value7
].
    (recoveredValue10) at: (1) put: (recoveredValue11).
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := [:recoveredBlock99Arg1 :recoveredBlock99Arg2 | 
    | recoveredBlock99Value0 recoveredBlock99Value1 recoveredBlock99Value2 recoveredBlock99Value3 recoveredBlock99Value4 recoveredBlock99Value5 recoveredBlock99Value6 |
    recoveredBlock99Value0 := recoveredLocal1.
    recoveredBlock99Value1 := recoveredLocal3.
    recoveredBlock99Value2 := recoveredBlock99Arg1.
    recoveredBlock99Value3 := (recoveredBlock99Value2) fullName.
    recoveredBlock99Value4 := (self) makeNullTerminatedPathString: (recoveredBlock99Value3).
    recoveredBlock99Value5 := recoveredBlock99Arg2.
    recoveredBlock99Value6 := (recoveredBlock99Value0) callWith: (recoveredBlock99Value1) with: (recoveredBlock99Value4) with: (1) with: (recoveredBlock99Value5).
    recoveredBlock99Value6
].
    (recoveredValue12) at: (2) put: (recoveredValue13).
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := [:recoveredBlock132Arg1 | 
    | recoveredBlock132Value0 recoveredBlock132Value1 recoveredBlock132Value2 recoveredBlock132Value3 recoveredBlock132Value4 recoveredBlock132Value5 |
    recoveredBlock132Value0 := recoveredLocal2.
    recoveredBlock132Value1 := recoveredLocal3.
    recoveredBlock132Value2 := recoveredBlock132Arg1.
    recoveredBlock132Value3 := (recoveredBlock132Value2) fullName.
    recoveredBlock132Value4 := (self) makeNullTerminatedPathString: (recoveredBlock132Value3).
    recoveredBlock132Value5 := (recoveredBlock132Value0) callWith: (recoveredBlock132Value1) with: (recoveredBlock132Value4) with: (3) with: (nil).
    recoveredBlock132Value5
].
    (recoveredValue14) at: (3) put: (recoveredValue15).
    recoveredValue16 := recoveredLocal4.
    recoveredValue17 := [
    | recoveredBlock164Value0 recoveredBlock164Value1 recoveredBlock164Value2 |
    recoveredBlock164Value0 := recoveredLocal2.
    recoveredBlock164Value1 := recoveredLocal3.
    recoveredBlock164Value2 := (recoveredBlock164Value0) callWith: (recoveredBlock164Value1) with: (nil) with: (2) with: (nil).
    recoveredBlock164Value2
].
    (recoveredValue16) at: (4) put: (recoveredValue17).
    recoveredValue18 := recoveredLocal4.
    recoveredValue19 := [:recoveredBlock191Arg1 | 
    | recoveredBlock191Value0 recoveredBlock191Value1 recoveredBlock191Value2 recoveredBlock191Value3 recoveredBlock191Value4 recoveredBlock191Value5 |
    recoveredBlock191Value0 := recoveredLocal2.
    recoveredBlock191Value1 := recoveredLocal3.
    recoveredBlock191Value2 := recoveredBlock191Arg1.
    recoveredBlock191Value3 := (recoveredBlock191Value2) fullName.
    recoveredBlock191Value4 := (self) makeNullTerminatedPathString: (recoveredBlock191Value3).
    recoveredBlock191Value5 := (recoveredBlock191Value0) callWith: (recoveredBlock191Value1) with: (recoveredBlock191Value4) with: (11) with: (nil).
    recoveredBlock191Value5
].
    (recoveredValue18) at: (5) put: (recoveredValue19).
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := [:recoveredBlock224Arg1 | 
    | recoveredBlock224Value0 recoveredBlock224Value1 recoveredBlock224Value2 recoveredBlock224Value3 recoveredBlock224Value4 recoveredBlock224Value5 |
    recoveredBlock224Value0 := recoveredLocal2.
    recoveredBlock224Value1 := recoveredLocal3.
    recoveredBlock224Value2 := recoveredBlock224Arg1.
    recoveredBlock224Value3 := (recoveredBlock224Value2) fullName.
    recoveredBlock224Value4 := (self) makeNullTerminatedPathString: (recoveredBlock224Value3).
    recoveredBlock224Value5 := (recoveredBlock224Value0) callWith: (recoveredBlock224Value1) with: (recoveredBlock224Value4) with: (4) with: (nil).
    recoveredBlock224Value5
].
    (recoveredValue20) at: (6) put: (recoveredValue21).
    recoveredValue22 := recoveredLocal4.
    ^recoveredValue22
! !

