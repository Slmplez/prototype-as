"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ae34; bytecode file offset 0x92209c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
delTreeCommand
    ^'delTree /Y '
! !

"ASDBase.ic method 0x2001ef44; bytecode file offset 0x92209c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
swapFileNames
    ^#('pagefile.sys')
! !

"ASDBase.ic method 0x20025e1c; bytecode file offset 0x923928"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
xcopyCommand
    ^'xcopy /E /F /C /I /V /H '
! !

"ASDBase.ic method 0x20056be0; bytecode file offset 0x9536dc"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
driveType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) nullTerminated.
    recoveredValue2 := (self) platformFunctionGetDriveType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083798; bytecode file offset 0x980230"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirRecursive: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mkdirRecursive: (recoveredValue0) errorLabel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20086bc0; bytecode file offset 0x98376c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFilePath: recoveredArg1 startingWith: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) findFilePathRecursive: (recoveredValue0) path: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200924a4; bytecode file offset 0x98ed78"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getDiskFreeSpace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSCall.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) getDiskFreeSpace: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20094340; bytecode file offset 0x990cac"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
deletePathRecursive: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := FREG.
    recoveredValue2 := (self) deletePathRecursive: (recoveredValue0) mode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200aa0b8; bytecode file offset 0x9a69f0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
joinPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) pathSeparator.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (self) joinPath: (recoveredValue0) separator: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad594; bytecode file offset 0x9a9f0c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirRecursive: recoveredArg1 ifPresent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) mkdirRecursive: (recoveredValue0) ifPresent: (recoveredValue1) errorLabel: (nil).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ba674; bytecode file offset 0x9b6f30"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirFailMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) etasDevHalt.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) mkdirFailMessage: (recoveredValue0) errorLabel: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c89d8; bytecode file offset 0x9c52c4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFiles: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := FREG.
    recoveredValue3 := (self) findFiles: (recoveredValue0) in: (recoveredValue1) mode: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d02ec; bytecode file offset 0x9ccda0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
systemCommandFordeletePathRecursive
    | recoveredValue0 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    ^'cmd /c rd /s /q "%1"'
! !

"ASDBase.ic method 0x200dc860; bytecode file offset 0x9d9118"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFileNames: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) findFileNames: (recoveredValue0) in: (recoveredValue1) progress: (nil) maxProgress: (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200eee7c; bytecode file offset 0x9eb73c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
extractFileNameFromDosPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getDosFileNameIndexIn: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := (recoveredValue2) copyFrom: (recoveredValue3) to: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20102644; bytecode file offset 0x9feefc"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
do: recoveredArg1 recursive: recoveredArg2 with: recoveredArg3 in: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) do: (recoveredValue0) recursive: (recoveredValue1) with: (recoveredValue2) in: (recoveredValue3) progress: (nil) maxProgress: (1).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201037d4; bytecode file offset 0xa00090"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
extractPathNameFromDosPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getDosFileNameIndexIn: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := (recoveredValue2) copyFrom: (1) to: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201075e8; bytecode file offset 0xa03eb0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
pathSuffixForMultipleInstances
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := ASDAscetController.
    recoveredValue2 := (recoveredValue1) instance.
    recoveredValue3 := (recoveredValue2) pathSuffixForMultipleInstances.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201746c0; bytecode file offset 0xa70fb4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
deletePathRecursiveNoWait: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := OSCall.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) systemCommandFordeletePathRecursive.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) bindWith: (recoveredValue4).
    (recoveredValue2) runProcess: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201746e4; bytecode file offset 0xa70fb4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
deletePathRecursiveWait: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('MultiInstance') == ('Kk').
    recoveredValue1 := OSCall.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) systemCommandFordeletePathRecursive.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) bindWith: (recoveredValue4).
    (recoveredValue2) runProcessWaitUntilTerminates: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2017d3dc; bytecode file offset 0xa79ca0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdir: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdir: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019dd90; bytecode file offset 0xa9a66c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
clearReadOnlyRecursive: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280d1fd0Arg1 | 
    | block280d1fd0Value0 block280d1fd0Value1 block280d1fd0Value2 |
    block280d1fd0Value0 := CfsStat.
    block280d1fd0Value1 := block280d1fd0Arg1.
    block280d1fd0Value2 := (block280d1fd0Value0) clearReadOnly: (block280d1fd0Value1).
    block280d1fd0Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) changeAttributeUsing: (recoveredStack1) recursive: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019dda8; bytecode file offset 0xa9a66c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
setReadOnlyRecursive: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280d1ff4Arg1 | 
    | block280d1ff4Value0 block280d1ff4Value1 block280d1ff4Value2 |
    block280d1ff4Value0 := CfsStat.
    block280d1ff4Value1 := block280d1ff4Arg1.
    block280d1ff4Value2 := (block280d1ff4Value0) setReadOnly: (block280d1ff4Value1).
    block280d1ff4Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) changeAttributeUsing: (recoveredStack1) recursive: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a6148; bytecode file offset 0xaa2a0c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
asPathName: recoveredArg1
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
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathSeparator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fb504; bytecode file offset 0xaf7dcc"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdir: recoveredArg1 ifPresent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdir: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addWinError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 17.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202129dc; bytecode file offset 0xb0f2b0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
allowedToWriteIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'temp'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempFileNameIn: (recoveredStack2) prefix: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) deleteFile: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028f65c; bytecode file offset 0xb8bf1c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getDosFileNameIndexIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) at: (recoveredBlock12Stack3).
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack3 := $\.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) = (recoveredBlock12Stack3).
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 32] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) + (1).
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            ^recoveredBlock12Stack1
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue1) to: (1) by: (-1) do: (recoveredValue2).
    ^1
! !

"ASDBase.ic method 0x202d6438; bytecode file offset 0xbd2d08"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getDiskFreeSpace
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) getLocalHardDisks.
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    recoveredValue6 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 |
    recoveredBlock23Value0 := recoveredLocal2.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := recoveredLocal1.
    recoveredBlock23Value3 := recoveredBlock23Arg1.
    recoveredBlock23Value4 := (recoveredBlock23Value2) getDiskFreeSpace: (recoveredBlock23Value3).
    recoveredBlock23Value5 := (recoveredBlock23Value0) at: (recoveredBlock23Value1) put: (recoveredBlock23Value4).
    recoveredBlock23Value5
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202f083c; bytecode file offset 0xbed108"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
changeAttributeUsing: recoveredArg1 for: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    (recoveredValue0) value: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) , ('\').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) findFiles: (recoveredValue4) in: (recoveredValue5).
    recoveredValue7 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 |
    recoveredBlock29Value0 := recoveredArg1.
    recoveredBlock29Value1 := recoveredLocal1.
    recoveredBlock29Value2 := recoveredBlock29Arg1.
    recoveredBlock29Value3 := (recoveredBlock29Value2) dName.
    recoveredBlock29Value4 := (recoveredBlock29Value1) , (recoveredBlock29Value3).
    recoveredBlock29Value5 := (recoveredBlock29Value0) value: (recoveredBlock29Value4).
    recoveredBlock29Value5
].
    (recoveredValue6) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20309044; bytecode file offset 0xc05918"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findDirectoryNames: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := CfsDirectoryDescriptor.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) dName.
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) match: (recoveredBlock13Stack2).
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 30] ifFalse: [recoveredBlock13PC := 40].
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg2.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) dName.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) , (recoveredBlock13Stack3).
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack1 := true.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue2) do: (nil) recursive: (recoveredValue3) with: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20340c40; bytecode file offset 0xc3d50c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
changeAttributeUsing: recoveredArg1 recursive: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) changeAttributeUsing: (recoveredValue0) for: (recoveredValue1) in: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (self) findDirectoriesRecursive: (recoveredValue3) in: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Local1 recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 |
    recoveredBlock29Value0 := recoveredArg3.
    recoveredBlock29Value1 := (recoveredBlock29Value0) , ('\').
    recoveredBlock29Value2 := recoveredBlock29Arg1.
    recoveredBlock29Value3 := (recoveredBlock29Value2) dName.
    recoveredBlock29Value4 := (recoveredBlock29Value1) , (recoveredBlock29Value3).
    recoveredBlock29Local1 := recoveredBlock29Value4.
    recoveredBlock29Value5 := recoveredArg1.
    recoveredBlock29Value6 := recoveredArg2.
    recoveredBlock29Value7 := recoveredBlock29Local1.
    recoveredBlock29Value8 := (self) changeAttributeUsing: (recoveredBlock29Value5) for: (recoveredBlock29Value6) in: (recoveredBlock29Value7).
    recoveredBlock29Value8
].
    (recoveredValue5) do: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2034e944; bytecode file offset 0xc4b208"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
joinPath: recoveredArg1 separator: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := recoveredLocal1.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) , (recoveredBlock23Value1).
    recoveredBlock23Value3 := recoveredBlock23Value2.
    recoveredLocal1 := recoveredBlock23Value3.
    recoveredBlock23Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 |
    recoveredBlock40Value0 := recoveredLocal1.
    recoveredBlock40Value1 := recoveredArg2.
    recoveredBlock40Value2 := (recoveredBlock40Value0) , (recoveredBlock40Value1).
    recoveredBlock40Value3 := recoveredBlock40Value2.
    recoveredLocal1 := recoveredBlock40Value3.
    recoveredBlock40Value2
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) separatedBy: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203564d4; bytecode file offset 0xc52db4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
changeExtensionFrom: recoveredArg1 to: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 |
    recoveredBlock12Value0 := CfsFileDescriptor.
    recoveredBlock12Value1 := recoveredBlock12Arg2.
    recoveredBlock12Value2 := recoveredBlock12Arg1.
    recoveredBlock12Value3 := (recoveredBlock12Value2) dName.
    recoveredBlock12Value4 := (recoveredBlock12Value1) , (recoveredBlock12Value3).
    recoveredBlock12Value5 := recoveredBlock12Arg2.
    recoveredBlock12Value6 := recoveredBlock12Arg1.
    recoveredBlock12Value7 := (recoveredBlock12Value6) dNameOnly.
    recoveredBlock12Value8 := (recoveredBlock12Value5) , (recoveredBlock12Value7).
    recoveredBlock12Value9 := recoveredArg2.
    recoveredBlock12Value10 := (recoveredBlock12Value8) , (recoveredBlock12Value9).
    recoveredBlock12Value11 := (recoveredBlock12Value0) rename: (recoveredBlock12Value4) new: (recoveredBlock12Value10).
    recoveredBlock12Value11
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:block280efab4Arg1 :block280efab4Arg2 | 
    true
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := '*'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) recursive: (recoveredStack3) with: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20360a7c; bytecode file offset 0xc5d36c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
list: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := FDIR.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := FREG.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := FSPECIAL.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) | (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := #('.' '..').
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20371630; bytecode file offset 0xc6df10"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
deleteFiles: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CfsStat.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) clearReadOnly: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) findFiles: (recoveredValue2) in: (recoveredValue3).
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isCfsError.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 64] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := '\'.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) dName.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack1 := CfsStat.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            (recoveredBlock19Stack1) clearReadOnly: (recoveredBlock19Stack2).
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isDir.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 64] ifFalse: [recoveredBlock19PC := 58].
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredBlock19Stack1 := CfsFileDescriptor.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) remove: (recoveredBlock19Stack2).
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2038133c; bytecode file offset 0xc7dc18"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getLocalSwapDisks
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) swapFileNames.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) getLocalHardDisks.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredLocal3.
    recoveredBlock16Value1 := [:recoveredBlock16Block25Arg1 | 
    | recoveredBlock16Block25Stack0 recoveredBlock16Block25Stack1 recoveredBlock16Block25Stack2 recoveredBlock16Block25Stack3 recoveredBlock16Block25Stack4 recoveredBlock16Block25Stack5 recoveredBlock16Block25PC recoveredBlock16Block25Step recoveredBlock16Block25Done recoveredBlock16Block25Result |
    recoveredBlock16Block25Stack0 := nil.
    recoveredBlock16Block25PC := 32.
    recoveredBlock16Block25Done := false.
    [recoveredBlock16Block25Done not] whileTrue: [
        recoveredBlock16Block25Step := recoveredBlock16Block25PC.
        recoveredBlock16Block25Step = 32 ifTrue: [
            recoveredBlock16Block25Stack1 := nil.
            recoveredBlock16Block25PC := 33.
        ].
        recoveredBlock16Block25Step = 33 ifTrue: [
            recoveredBlock16Block25Stack2 := CfsStat.
            recoveredBlock16Block25PC := 35.
        ].
        recoveredBlock16Block25Step = 35 ifTrue: [
            recoveredBlock16Block25Stack3 := recoveredBlock16Arg1.
            recoveredBlock16Block25PC := 38.
        ].
        recoveredBlock16Block25Step = 38 ifTrue: [
            recoveredBlock16Block25Stack4 := recoveredBlock16Block25Arg1.
            recoveredBlock16Block25PC := 39.
        ].
        recoveredBlock16Block25Step = 39 ifTrue: [
            recoveredBlock16Block25Stack3 := (recoveredBlock16Block25Stack3) , (recoveredBlock16Block25Stack4).
            recoveredBlock16Block25PC := 41.
        ].
        recoveredBlock16Block25Step = 41 ifTrue: [
            recoveredBlock16Block25Stack2 := (recoveredBlock16Block25Stack2) stat: (recoveredBlock16Block25Stack3).
            recoveredBlock16Block25PC := 43.
        ].
        recoveredBlock16Block25Step = 43 ifTrue: [
            recoveredBlock16Block25Stack3 := recoveredBlock16Block25Stack2.
            recoveredBlock16Block25PC := 44.
        ].
        recoveredBlock16Block25Step = 44 ifTrue: [
            recoveredLocal2 := recoveredBlock16Block25Stack3.
            recoveredBlock16Block25PC := 47.
        ].
        recoveredBlock16Block25Step = 47 ifTrue: [
            recoveredBlock16Block25Stack2 := (recoveredBlock16Block25Stack2) isCfsError.
            recoveredBlock16Block25PC := 49.
        ].
        recoveredBlock16Block25Step = 49 ifTrue: [
            (recoveredBlock16Block25Stack2) ifTrue: [recoveredBlock16Block25PC := 61] ifFalse: [recoveredBlock16Block25PC := 52].
        ].
        recoveredBlock16Block25Step = 52 ifTrue: [
            recoveredBlock16Block25PC := 53.
        ].
        recoveredBlock16Block25Step = 53 ifTrue: [
            recoveredBlock16Block25Stack1 := recoveredLocal1.
            recoveredBlock16Block25PC := 56.
        ].
        recoveredBlock16Block25Step = 56 ifTrue: [
            recoveredBlock16Block25Stack2 := recoveredBlock16Arg1.
            recoveredBlock16Block25PC := 59.
        ].
        recoveredBlock16Block25Step = 59 ifTrue: [
            recoveredBlock16Block25Stack1 := (recoveredBlock16Block25Stack1) add: (recoveredBlock16Block25Stack2).
            recoveredBlock16Block25PC := 61.
        ].
        recoveredBlock16Block25Step = 61 ifTrue: [
            recoveredBlock16Block25Result := recoveredBlock16Block25Stack1.
            recoveredBlock16Block25Done := true.
        ].
    ].
    recoveredBlock16Block25Result
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2038c68c; bytecode file offset 0xc88f58"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getLocalHardDisks
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredLocal1 := false.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) rootDirectories.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) driveType: (recoveredBlock15Stack1).
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack1 := 3.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) = (recoveredBlock15Stack1).
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            (recoveredBlock15Stack0) ifTrue: [recoveredBlock15PC := 32] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack0 := true.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack0.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack0 := recoveredLocal2.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) add: (recoveredBlock15Stack1).
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 50.
        ].
        recoveredBlock15Step = 50 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 54] ifFalse: [recoveredBlock15PC := 66].
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15PC := 55.
        ].
        recoveredBlock15Step = 55 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 56.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local1.
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack2 := 2.
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) = (recoveredBlock15Stack2).
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 64] ifFalse: [recoveredBlock15PC := 66].
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack0 := nil.
            recoveredBlock15PC := 66.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20393d90; bytecode file offset 0xc90668"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFiles: recoveredArg1 in: recoveredArg2 mode: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) startUpDirectoryPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) readdir.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) closedir.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20399a88; bytecode file offset 0xc96370"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFileNames: recoveredArg1 local: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) startUpDirectoryPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := FREG.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := FREG.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) opendir: (recoveredStack2) pattern: (recoveredStack3) mode: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) dName.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) readdir.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) closedir.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b18d0; bytecode file offset 0xcae1b4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFileNames: recoveredArg1 in: recoveredArg2 progress: recoveredArg3 maxProgress: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
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
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg2.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredBlock12Arg1.
            recoveredBlock12PC := 23.
        ].
        recoveredBlock12Step = 23 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) dName.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) , (recoveredBlock12Stack3).
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg3.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            (recoveredBlock12Stack2 == nil) ifTrue: [recoveredBlock12PC := 51] ifFalse: [recoveredBlock12PC := 36].
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Stack1 := recoveredArg3.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := 'Found %1 files'.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack3 := recoveredLocal1.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) size.
            recoveredBlock12PC := 47.
        ].
        recoveredBlock12Step = 47 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) bindWith: (recoveredBlock12Stack3).
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) messageString: (recoveredBlock12Stack2).
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := [:block280f5c70Arg1 :block280f5c70Arg2 | 
    true
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack7 := recoveredArg4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) do: (recoveredStack2) recursive: (recoveredStack3) with: (recoveredStack4) in: (recoveredStack5) progress: (recoveredStack6) maxProgress: (recoveredStack7).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203bb1c0; bytecode file offset 0xcb7ab4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirFailMessage: recoveredArg1 errorLabel: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := ReadWriteStream.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := ''.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) on: (recoveredBlock7Stack2).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            (recoveredBlock7Stack1 == nil) ifTrue: [recoveredBlock7PC := 44] ifFalse: [recoveredBlock7PC := 26].
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) notEmpty.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 34] ifFalse: [recoveredBlock7PC := 44].
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack3 := ': '.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) , (recoveredBlock7Stack3).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            (recoveredBlock7Stack1) nextPutAll: (recoveredBlock7Stack2).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack3 := 'Creation of directory '.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            (recoveredBlock7Stack2) nextPutAll: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            (recoveredBlock7Stack2) nextPutAll: (recoveredBlock7Stack3).
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 57.
        ].
        recoveredBlock7Step = 57 ifTrue: [
            recoveredBlock7Stack3 := ' failed'.
            recoveredBlock7PC := 59.
        ].
        recoveredBlock7Step = 59 ifTrue: [
            (recoveredBlock7Stack2) nextPutAll: (recoveredBlock7Stack3).
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            (recoveredBlock7Stack1) cr.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            (recoveredBlock7Stack1) printOn: (recoveredBlock7Stack2).
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack1 := SGMonitorStreamDummy.
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) create.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local1.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) contents.
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            (recoveredBlock7Stack1) addErrorText: (recoveredBlock7Stack2).
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 77.
        ].
        recoveredBlock7Step = 77 ifTrue: [
            ^recoveredBlock7Stack1
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (self) mkdir: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x203cb7ac; bytecode file offset 0xcc80a0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirRecursive: recoveredArg1 ifPresent: recoveredArg2 errorLabel: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Local1 recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := ReadWriteStream.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack2 := ''.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) on: (recoveredBlock10Stack2).
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Local1 := recoveredBlock10Stack1.
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg3.
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            (recoveredBlock10Stack1 == nil) ifTrue: [recoveredBlock10PC := 46] ifFalse: [recoveredBlock10PC := 28].
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg3.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) notEmpty.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 36] ifFalse: [recoveredBlock10PC := 46].
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 37.
        ].
        recoveredBlock10Step = 37 ifTrue: [
            recoveredBlock10Stack2 := recoveredArg3.
            recoveredBlock10PC := 40.
        ].
        recoveredBlock10Step = 40 ifTrue: [
            recoveredBlock10Stack3 := ': '.
            recoveredBlock10PC := 42.
        ].
        recoveredBlock10Step = 42 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) , (recoveredBlock10Stack3).
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            (recoveredBlock10Stack1) nextPutAll: (recoveredBlock10Stack2).
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Local1.
            recoveredBlock10PC := 47.
        ].
        recoveredBlock10Step = 47 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack3 := 'Creation of directory: '.
            recoveredBlock10PC := 50.
        ].
        recoveredBlock10Step = 50 ifTrue: [
            (recoveredBlock10Stack2) nextPutAll: (recoveredBlock10Stack3).
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 53.
        ].
        recoveredBlock10Step = 53 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 56.
        ].
        recoveredBlock10Step = 56 ifTrue: [
            (recoveredBlock10Stack2) nextPutAll: (recoveredBlock10Stack3).
            recoveredBlock10Stack2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 59.
        ].
        recoveredBlock10Step = 59 ifTrue: [
            recoveredBlock10Stack3 := ' failed'.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            (recoveredBlock10Stack2) nextPutAll: (recoveredBlock10Stack3).
            recoveredBlock10PC := 63.
        ].
        recoveredBlock10Step = 63 ifTrue: [
            (recoveredBlock10Stack1) cr.
            recoveredBlock10PC := 65.
        ].
        recoveredBlock10Step = 65 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 67.
        ].
        recoveredBlock10Step = 67 ifTrue: [
            (recoveredBlock10Stack1) printOn: (recoveredBlock10Stack2).
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            recoveredBlock10Stack1 := SGMonitorStreamDummy.
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) create.
            recoveredBlock10PC := 73.
        ].
        recoveredBlock10Step = 73 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Local1.
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) contents.
            recoveredBlock10PC := 76.
        ].
        recoveredBlock10Step = 76 ifTrue: [
            (recoveredBlock10Stack1) addErrorText: (recoveredBlock10Stack2).
            recoveredBlock10PC := 78.
        ].
        recoveredBlock10Step = 78 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Arg1.
            recoveredBlock10PC := 79.
        ].
        recoveredBlock10Step = 79 ifTrue: [
            ^recoveredBlock10Stack1
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue3 := (self) mkdirRecursive: (recoveredValue0) ifPresent: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203f6be8; bytecode file offset 0xcf34e0"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findDirectories: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := FDIR.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := #('.' '..').
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Call_70346'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) stMode.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := FSPECIAL.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) dName.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := '.svn'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204043ec; bytecode file offset 0xd00cf8"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
asMakeEncoded: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := '\\'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) startsWith: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'WHAT_3773'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := $ .
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathNameBlanksAvoided.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) splitPath.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathnameNoTrailingSeparator.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathNameBlanksAvoided.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) splitPath.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) addLast: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := [:block280fa524Arg1 | 
    | block280fa524Value0 block280fa524Value1 |
    block280fa524Value0 := block280fa524Arg1.
    block280fa524Value1 := (block280fa524Value0) isEmpty.
    block280fa524Value1
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := [:block280fa548Arg1 | 
    | block280fa548Value0 block280fa548Value1 |
    block280fa548Value0 := block280fa548Arg1.
    block280fa548Value1 := (block280fa548Value0) asMakeEncoded.
    block280fa548Value1
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20412364; bytecode file offset 0xd0ec3c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFilePathRecursive: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFiles: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) dName.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) equals: (recoveredBlock17Stack3).
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 34] ifFalse: [recoveredBlock17PC := 40].
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) findDirectories: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := [:recoveredBlock62Arg1 | 
    | recoveredBlock62Local1 recoveredBlock62Stack0 recoveredBlock62Stack1 recoveredBlock62Stack2 recoveredBlock62Stack3 recoveredBlock62Stack4 recoveredBlock62PC recoveredBlock62Step recoveredBlock62Done recoveredBlock62Result |
    recoveredBlock62Stack0 := self.
    recoveredBlock62PC := 68.
    recoveredBlock62Done := false.
    [recoveredBlock62Done not] whileTrue: [
        recoveredBlock62Step := recoveredBlock62PC.
        recoveredBlock62Step = 68 ifTrue: [
            recoveredBlock62Stack1 := recoveredArg1.
            recoveredBlock62PC := 71.
        ].
        recoveredBlock62Step = 71 ifTrue: [
            recoveredBlock62Stack2 := recoveredArg2.
            recoveredBlock62PC := 74.
        ].
        recoveredBlock62Step = 74 ifTrue: [
            recoveredBlock62Stack3 := '\'.
            recoveredBlock62PC := 76.
        ].
        recoveredBlock62Step = 76 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) , (recoveredBlock62Stack3).
            recoveredBlock62PC := 78.
        ].
        recoveredBlock62Step = 78 ifTrue: [
            recoveredBlock62Stack3 := recoveredBlock62Arg1.
            recoveredBlock62PC := 79.
        ].
        recoveredBlock62Step = 79 ifTrue: [
            recoveredBlock62Stack3 := (recoveredBlock62Stack3) dName.
            recoveredBlock62PC := 80.
        ].
        recoveredBlock62Step = 80 ifTrue: [
            recoveredBlock62Stack2 := (recoveredBlock62Stack2) , (recoveredBlock62Stack3).
            recoveredBlock62PC := 82.
        ].
        recoveredBlock62Step = 82 ifTrue: [
            recoveredBlock62Stack0 := (recoveredBlock62Stack0) findFilePathRecursive: (recoveredBlock62Stack1) path: (recoveredBlock62Stack2).
            recoveredBlock62PC := 84.
        ].
        recoveredBlock62Step = 84 ifTrue: [
            recoveredBlock62Local1 := recoveredBlock62Stack0.
            recoveredBlock62PC := 85.
        ].
        recoveredBlock62Step = 85 ifTrue: [
            recoveredBlock62Stack0 := nil.
            recoveredBlock62PC := 86.
        ].
        recoveredBlock62Step = 86 ifTrue: [
            recoveredBlock62Stack1 := recoveredBlock62Local1.
            recoveredBlock62PC := 87.
        ].
        recoveredBlock62Step = 87 ifTrue: [
            (recoveredBlock62Stack1 == nil) ifTrue: [recoveredBlock62PC := 93] ifFalse: [recoveredBlock62PC := 90].
        ].
        recoveredBlock62Step = 90 ifTrue: [
            recoveredBlock62PC := 91.
        ].
        recoveredBlock62Step = 91 ifTrue: [
            recoveredBlock62Stack0 := recoveredBlock62Local1.
            recoveredBlock62PC := 92.
        ].
        recoveredBlock62Step = 92 ifTrue: [
            ^recoveredBlock62Stack0
        ].
        recoveredBlock62Step = 93 ifTrue: [
            recoveredBlock62Result := recoveredBlock62Stack0.
            recoveredBlock62Done := true.
        ].
    ].
    recoveredBlock62Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20425528; bytecode file offset 0xd21df8"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
splitPath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDosFileNameIndexIn: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 59]] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20428c68; bytecode file offset 0xd25560"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirRecursive: recoveredArg1 errorLabel: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_62929'.
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
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathName: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathnameNoTrailingSeparator.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'XMLExport'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := $:.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdirFailMessage: (recoveredStack1) errorLabel: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdirRecursive: (recoveredStack1) errorLabel: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdirFailMessage: (recoveredStack1) errorLabel: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20439180; bytecode file offset 0xd35a78"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
getTempPath
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := PlatformConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'MaxPath'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    260
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) getTempPath: (recoveredStack2) lpszTempPath: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := WinError.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastError.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 'MultiInstance'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'Kk'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathSuffixForMultipleInstances.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Value0 recoveredBlock84Value1 recoveredBlock84Value2 recoveredBlock84Value3 |
    recoveredBlock84Value0 := recoveredLocal1.
    recoveredBlock84Value1 := recoveredBlock84Arg1.
    recoveredBlock84Value2 := (recoveredBlock84Value0) , (recoveredBlock84Value1).
    recoveredBlock84Value3 := recoveredBlock84Value2.
    recoveredLocal1 := recoveredBlock84Value3.
    recoveredBlock84Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045cc28; bytecode file offset 0xd5951c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
deleteFiles: recoveredArg1 in: recoveredArg2 date: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) clearReadOnly: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFiles: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isCfsError.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 82] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg2.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := '\'.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 40.
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) dName.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack1 := CfsStat.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            (recoveredBlock19Stack1) clearReadOnly: (recoveredBlock19Stack2).
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) stMtime.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) first.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack3 := recoveredArg3.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) >= (recoveredBlock19Stack3).
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 64] ifFalse: [recoveredBlock19PC := 82].
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 67.
        ].
        recoveredBlock19Step = 67 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) isDir.
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 78] ifFalse: [recoveredBlock19PC := 72].
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            recoveredBlock19Stack1 := CfsFileDescriptor.
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) remove: (recoveredBlock19Stack2).
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) monitor.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046b624; bytecode file offset 0xd67f1c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
mkdirRecursive: recoveredArg1 ifPresent: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathName: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'XMLExport'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) mkdir: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) mkdirRecursive: (recoveredStack2) ifPresent: (recoveredStack3) ifFail: (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) mkdir: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 17.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2050ab78; bytecode file offset 0xe07478"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findDirectoriesRecursive: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := FDIR.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83Stack5 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) dName.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack2 := 1.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2).
            recoveredBlock83PC := 97.
        ].
        recoveredBlock83Step = 97 ifTrue: [
            recoveredBlock83Stack2 := $..
            recoveredBlock83PC := 100.
        ].
        recoveredBlock83Step = 100 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) = (recoveredBlock83Stack2).
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 104] ifFalse: [recoveredBlock83PC := 114].
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal4.
            recoveredBlock83PC := 107.
        ].
        recoveredBlock83Step = 107 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 108.
        ].
        recoveredBlock83Step = 108 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) remove: (recoveredBlock83Stack2).
            recoveredBlock83PC := 110.
        ].
        recoveredBlock83Step = 110 ifTrue: [
            recoveredBlock83PC := 175.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 117.
        ].
        recoveredBlock83Step = 117 ifTrue: [
            recoveredBlock83Stack2 := recoveredArg2.
            recoveredBlock83PC := 120.
        ].
        recoveredBlock83Step = 120 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) size.
            recoveredBlock83PC := 122.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2).
            recoveredBlock83PC := 124.
        ].
        recoveredBlock83Step = 124 ifTrue: [
            recoveredBlock83Stack2 := $\.
            recoveredBlock83PC := 128.
        ].
        recoveredBlock83Step = 128 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) = (recoveredBlock83Stack2).
            recoveredBlock83PC := 129.
        ].
        recoveredBlock83Step = 129 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 132] ifFalse: [recoveredBlock83PC := 146].
        ].
        recoveredBlock83Step = 132 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 135.
        ].
        recoveredBlock83Step = 135 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 136.
        ].
        recoveredBlock83Step = 136 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) dName.
            recoveredBlock83PC := 138.
        ].
        recoveredBlock83Step = 138 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) , (recoveredBlock83Stack2).
            recoveredBlock83PC := 140.
        ].
        recoveredBlock83Step = 140 ifTrue: [
            recoveredLocal1 := recoveredBlock83Stack1.
            recoveredBlock83PC := 143.
        ].
        recoveredBlock83Step = 143 ifTrue: [
            recoveredBlock83PC := 161.
        ].
        recoveredBlock83Step = 146 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 149.
        ].
        recoveredBlock83Step = 149 ifTrue: [
            recoveredBlock83Stack2 := '\'.
            recoveredBlock83PC := 151.
        ].
        recoveredBlock83Step = 151 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) , (recoveredBlock83Stack2).
            recoveredBlock83PC := 153.
        ].
        recoveredBlock83Step = 153 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 154.
        ].
        recoveredBlock83Step = 154 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) dName.
            recoveredBlock83PC := 156.
        ].
        recoveredBlock83Step = 156 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) , (recoveredBlock83Stack2).
            recoveredBlock83PC := 158.
        ].
        recoveredBlock83Step = 158 ifTrue: [
            recoveredLocal1 := recoveredBlock83Stack1.
            recoveredBlock83PC := 161.
        ].
        recoveredBlock83Step = 161 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal4.
            recoveredBlock83PC := 164.
        ].
        recoveredBlock83Step = 164 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 165.
        ].
        recoveredBlock83Step = 165 ifTrue: [
            recoveredBlock83Stack3 := recoveredArg1.
            recoveredBlock83PC := 168.
        ].
        recoveredBlock83Step = 168 ifTrue: [
            recoveredBlock83Stack4 := recoveredLocal1.
            recoveredBlock83PC := 171.
        ].
        recoveredBlock83Step = 171 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) findDirectoriesRecursive: (recoveredBlock83Stack3) in: (recoveredBlock83Stack4).
            recoveredBlock83PC := 173.
        ].
        recoveredBlock83Step = 173 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) addAll: (recoveredBlock83Stack2).
            recoveredBlock83PC := 175.
        ].
        recoveredBlock83Step = 175 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20533c64; bytecode file offset 0xe30548"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
do: recoveredArg1 recursive: recoveredArg2 with: recoveredArg3 in: recoveredArg4 exclude: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) findDirectories: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34Stack6 recoveredBlock34Stack7 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal5.
            recoveredBlock34PC := 43.
        ].
        recoveredBlock34Step = 43 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 44.
        ].
        recoveredBlock34Step = 44 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) dName.
            recoveredBlock34PC := 46.
        ].
        recoveredBlock34Step = 46 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) , (recoveredBlock34Stack2).
            recoveredBlock34PC := 48.
        ].
        recoveredBlock34Step = 48 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) asPathname.
            recoveredBlock34PC := 49.
        ].
        recoveredBlock34Step = 49 ifTrue: [
            recoveredLocal3 := recoveredBlock34Stack1.
            recoveredBlock34PC := 52.
        ].
        recoveredBlock34Step = 52 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal3.
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) asLowercase.
            recoveredBlock34PC := 58.
        ].
        recoveredBlock34Step = 58 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg5.
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) asLowercase.
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) = (recoveredBlock34Stack3).
            recoveredBlock34PC := 64.
        ].
        recoveredBlock34Step = 64 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 133] ifFalse: [recoveredBlock34PC := 68].
        ].
        recoveredBlock34Step = 68 ifTrue: [
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34Stack1 := recoveredArg2.
            recoveredBlock34PC := 72.
        ].
        recoveredBlock34Step = 72 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 73.
        ].
        recoveredBlock34Step = 73 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal5.
            recoveredBlock34PC := 76.
        ].
        recoveredBlock34Step = 76 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) value: (recoveredBlock34Stack2) value: (recoveredBlock34Stack3).
            recoveredBlock34PC := 78.
        ].
        recoveredBlock34Step = 78 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredLocal6 := recoveredBlock34Stack2.
            recoveredBlock34PC := 82.
        ].
        recoveredBlock34Step = 82 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) isError.
            recoveredBlock34PC := 84.
        ].
        recoveredBlock34Step = 84 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 88] ifFalse: [recoveredBlock34PC := 92].
        ].
        recoveredBlock34Step = 88 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal6.
            recoveredBlock34PC := 91.
        ].
        recoveredBlock34Step = 91 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 92 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 93.
        ].
        recoveredBlock34Step = 93 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal6.
            recoveredBlock34PC := 96.
        ].
        recoveredBlock34Step = 96 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 100] ifFalse: [recoveredBlock34PC := 133].
        ].
        recoveredBlock34Step = 100 ifTrue: [
            recoveredBlock34PC := 101.
        ].
        recoveredBlock34Step = 101 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 102.
        ].
        recoveredBlock34Step = 102 ifTrue: [
            recoveredBlock34Stack2 := self.
            recoveredBlock34PC := 103.
        ].
        recoveredBlock34Step = 103 ifTrue: [
            recoveredBlock34Stack3 := recoveredArg1.
            recoveredBlock34PC := 106.
        ].
        recoveredBlock34Step = 106 ifTrue: [
            recoveredBlock34Stack4 := recoveredArg2.
            recoveredBlock34PC := 109.
        ].
        recoveredBlock34Step = 109 ifTrue: [
            recoveredBlock34Stack5 := recoveredArg3.
            recoveredBlock34PC := 112.
        ].
        recoveredBlock34Step = 112 ifTrue: [
            recoveredBlock34Stack6 := recoveredLocal3.
            recoveredBlock34PC := 115.
        ].
        recoveredBlock34Step = 115 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) do: (recoveredBlock34Stack3) recursive: (recoveredBlock34Stack4) with: (recoveredBlock34Stack5) in: (recoveredBlock34Stack6).
            recoveredBlock34PC := 118.
        ].
        recoveredBlock34Step = 118 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Stack2.
            recoveredBlock34PC := 119.
        ].
        recoveredBlock34Step = 119 ifTrue: [
            recoveredLocal6 := recoveredBlock34Stack3.
            recoveredBlock34PC := 122.
        ].
        recoveredBlock34Step = 122 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) isError.
            recoveredBlock34PC := 124.
        ].
        recoveredBlock34Step = 124 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 128] ifFalse: [recoveredBlock34PC := 133].
        ].
        recoveredBlock34Step = 128 ifTrue: [
            recoveredBlock34PC := 129.
        ].
        recoveredBlock34Step = 129 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal6.
            recoveredBlock34PC := 132.
        ].
        recoveredBlock34Step = 132 ifTrue: [
            ^recoveredBlock34Stack1
        ].
        recoveredBlock34Step = 133 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFiles: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := [:recoveredBlock161Arg1 | 
    | recoveredBlock161Stack0 recoveredBlock161Stack1 recoveredBlock161Stack2 recoveredBlock161Stack3 recoveredBlock161Stack4 recoveredBlock161Stack5 recoveredBlock161PC recoveredBlock161Step recoveredBlock161Done recoveredBlock161Result |
    recoveredBlock161Stack0 := self.
    recoveredBlock161PC := 168.
    recoveredBlock161Done := false.
    [recoveredBlock161Done not] whileTrue: [
        recoveredBlock161Step := recoveredBlock161PC.
        recoveredBlock161Step = 168 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 169.
        ].
        recoveredBlock161Step = 169 ifTrue: [
            recoveredBlock161Stack2 := recoveredBlock161Arg1.
            recoveredBlock161PC := 170.
        ].
        recoveredBlock161Step = 170 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) isCfsError.
            recoveredBlock161PC := 171.
        ].
        recoveredBlock161Step = 171 ifTrue: [
            (recoveredBlock161Stack2) ifTrue: [recoveredBlock161PC := 199] ifFalse: [recoveredBlock161PC := 174].
        ].
        recoveredBlock161Step = 174 ifTrue: [
            recoveredBlock161PC := 175.
        ].
        recoveredBlock161Step = 175 ifTrue: [
            recoveredBlock161Stack1 := nil.
            recoveredBlock161PC := 176.
        ].
        recoveredBlock161Step = 176 ifTrue: [
            recoveredBlock161Stack2 := recoveredArg1.
            recoveredBlock161PC := 179.
        ].
        recoveredBlock161Step = 179 ifTrue: [
            recoveredBlock161Stack3 := recoveredBlock161Arg1.
            recoveredBlock161PC := 180.
        ].
        recoveredBlock161Step = 180 ifTrue: [
            recoveredBlock161Stack4 := recoveredLocal5.
            recoveredBlock161PC := 183.
        ].
        recoveredBlock161Step = 183 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) value: (recoveredBlock161Stack3) value: (recoveredBlock161Stack4).
            recoveredBlock161PC := 185.
        ].
        recoveredBlock161Step = 185 ifTrue: [
            recoveredBlock161Stack3 := recoveredBlock161Stack2.
            recoveredBlock161PC := 186.
        ].
        recoveredBlock161Step = 186 ifTrue: [
            recoveredLocal6 := recoveredBlock161Stack3.
            recoveredBlock161PC := 189.
        ].
        recoveredBlock161Step = 189 ifTrue: [
            recoveredBlock161Stack2 := (recoveredBlock161Stack2) isError.
            recoveredBlock161PC := 191.
        ].
        recoveredBlock161Step = 191 ifTrue: [
            (recoveredBlock161Stack2) ifTrue: [recoveredBlock161PC := 194] ifFalse: [recoveredBlock161PC := 199].
        ].
        recoveredBlock161Step = 194 ifTrue: [
            recoveredBlock161PC := 195.
        ].
        recoveredBlock161Step = 195 ifTrue: [
            recoveredBlock161Stack1 := recoveredLocal6.
            recoveredBlock161PC := 198.
        ].
        recoveredBlock161Step = 198 ifTrue: [
            ^recoveredBlock161Stack1
        ].
        recoveredBlock161Step = 199 ifTrue: [
            recoveredBlock161Result := recoveredBlock161Stack1.
            recoveredBlock161Done := true.
        ].
    ].
    recoveredBlock161Result
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054ec24; bytecode file offset 0xe4b520"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
hasFilesRecursive: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := FREG.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := FDIR.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 121].
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Stack0 recoveredBlock129Stack1 recoveredBlock129Stack2 recoveredBlock129Stack3 recoveredBlock129Stack4 recoveredBlock129Stack5 recoveredBlock129PC recoveredBlock129Step recoveredBlock129Done recoveredBlock129Result |
    recoveredBlock129Stack0 := self.
    recoveredBlock129PC := 136.
    recoveredBlock129Done := false.
    [recoveredBlock129Done not] whileTrue: [
        recoveredBlock129Step := recoveredBlock129PC.
        recoveredBlock129Step = 136 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Arg1.
            recoveredBlock129PC := 137.
        ].
        recoveredBlock129Step = 137 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) dName.
            recoveredBlock129PC := 138.
        ].
        recoveredBlock129Step = 138 ifTrue: [
            recoveredBlock129Stack2 := 1.
            recoveredBlock129PC := 140.
        ].
        recoveredBlock129Step = 140 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) at: (recoveredBlock129Stack2).
            recoveredBlock129PC := 142.
        ].
        recoveredBlock129Step = 142 ifTrue: [
            recoveredBlock129Stack2 := $..
            recoveredBlock129PC := 146.
        ].
        recoveredBlock129Step = 146 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) = (recoveredBlock129Stack2).
            recoveredBlock129PC := 147.
        ].
        recoveredBlock129Step = 147 ifTrue: [
            (recoveredBlock129Stack1) ifTrue: [recoveredBlock129PC := 150] ifFalse: [recoveredBlock129PC := 154].
        ].
        recoveredBlock129Step = 150 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 151.
        ].
        recoveredBlock129Step = 151 ifTrue: [
            recoveredBlock129PC := 217.
        ].
        recoveredBlock129Step = 154 ifTrue: [
            recoveredBlock129Stack1 := recoveredArg2.
            recoveredBlock129PC := 157.
        ].
        recoveredBlock129Step = 157 ifTrue: [
            recoveredBlock129Stack2 := recoveredArg2.
            recoveredBlock129PC := 160.
        ].
        recoveredBlock129Step = 160 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) size.
            recoveredBlock129PC := 162.
        ].
        recoveredBlock129Step = 162 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) at: (recoveredBlock129Stack2).
            recoveredBlock129PC := 164.
        ].
        recoveredBlock129Step = 164 ifTrue: [
            recoveredBlock129Stack2 := $\.
            recoveredBlock129PC := 168.
        ].
        recoveredBlock129Step = 168 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) = (recoveredBlock129Stack2).
            recoveredBlock129PC := 169.
        ].
        recoveredBlock129Step = 169 ifTrue: [
            (recoveredBlock129Stack1) ifTrue: [recoveredBlock129PC := 172] ifFalse: [recoveredBlock129PC := 186].
        ].
        recoveredBlock129Step = 172 ifTrue: [
            recoveredBlock129Stack1 := recoveredArg2.
            recoveredBlock129PC := 175.
        ].
        recoveredBlock129Step = 175 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 176.
        ].
        recoveredBlock129Step = 176 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) dName.
            recoveredBlock129PC := 177.
        ].
        recoveredBlock129Step = 177 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) , (recoveredBlock129Stack2).
            recoveredBlock129PC := 179.
        ].
        recoveredBlock129Step = 179 ifTrue: [
            recoveredLocal2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 182.
        ].
        recoveredBlock129Step = 182 ifTrue: [
            recoveredBlock129PC := 200.
        ].
        recoveredBlock129Step = 186 ifTrue: [
            recoveredBlock129Stack1 := recoveredArg2.
            recoveredBlock129PC := 189.
        ].
        recoveredBlock129Step = 189 ifTrue: [
            recoveredBlock129Stack2 := '\'.
            recoveredBlock129PC := 191.
        ].
        recoveredBlock129Step = 191 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) , (recoveredBlock129Stack2).
            recoveredBlock129PC := 193.
        ].
        recoveredBlock129Step = 193 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 194.
        ].
        recoveredBlock129Step = 194 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) dName.
            recoveredBlock129PC := 195.
        ].
        recoveredBlock129Step = 195 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) , (recoveredBlock129Stack2).
            recoveredBlock129PC := 197.
        ].
        recoveredBlock129Step = 197 ifTrue: [
            recoveredLocal2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 200.
        ].
        recoveredBlock129Step = 200 ifTrue: [
            recoveredBlock129Stack1 := nil.
            recoveredBlock129PC := 201.
        ].
        recoveredBlock129Step = 201 ifTrue: [
            recoveredBlock129Stack2 := self.
            recoveredBlock129PC := 202.
        ].
        recoveredBlock129Step = 202 ifTrue: [
            recoveredBlock129Stack3 := recoveredArg1.
            recoveredBlock129PC := 205.
        ].
        recoveredBlock129Step = 205 ifTrue: [
            recoveredBlock129Stack4 := recoveredLocal2.
            recoveredBlock129PC := 208.
        ].
        recoveredBlock129Step = 208 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) hasFilesRecursive: (recoveredBlock129Stack3) in: (recoveredBlock129Stack4).
            recoveredBlock129PC := 210.
        ].
        recoveredBlock129Step = 210 ifTrue: [
            (recoveredBlock129Stack2) ifTrue: [recoveredBlock129PC := 214] ifFalse: [recoveredBlock129PC := 217].
        ].
        recoveredBlock129Step = 214 ifTrue: [
            recoveredBlock129PC := 215.
        ].
        recoveredBlock129Step = 215 ifTrue: [
            recoveredBlock129Stack1 := true.
            recoveredBlock129PC := 216.
        ].
        recoveredBlock129Step = 216 ifTrue: [
            ^recoveredBlock129Stack1
        ].
        recoveredBlock129Step = 217 ifTrue: [
            recoveredBlock129Result := recoveredBlock129Stack1.
            recoveredBlock129Done := true.
        ].
    ].
    recoveredBlock129Result
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2056e5fc; bytecode file offset 0xe6af1c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
copyTree: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10Stack5 recoveredBlock10Stack6 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg1.
            recoveredBlock10PC := 19.
        ].
        recoveredBlock10Step = 19 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) asPathname.
            recoveredBlock10PC := 20.
        ].
        recoveredBlock10Step = 20 ifTrue: [
            recoveredLocal3 := recoveredBlock10Stack1.
            recoveredBlock10PC := 23.
        ].
        recoveredBlock10Step = 23 ifTrue: [
            recoveredBlock10Stack1 := recoveredArg2.
            recoveredBlock10PC := 26.
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) asPathname.
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredLocal2 := recoveredBlock10Stack1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack1 := 'Kk'.
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Stack2 := 'Call_62929'.
            recoveredBlock10PC := 34.
        ].
        recoveredBlock10Step = 34 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) == (recoveredBlock10Stack2).
            recoveredBlock10PC := 35.
        ].
        recoveredBlock10Step = 35 ifTrue: [
            recoveredBlock10PC := 36.
        ].
        recoveredBlock10Step = 36 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal2.
            recoveredBlock10PC := 39.
        ].
        recoveredBlock10Step = 39 ifTrue: [
            recoveredBlock10Stack2 := 'Database path '.
            recoveredBlock10PC := 41.
        ].
        recoveredBlock10Step = 41 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg2.
            recoveredBlock10PC := 44.
        ].
        recoveredBlock10Step = 44 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) , (recoveredBlock10Stack3).
            recoveredBlock10PC := 46.
        ].
        recoveredBlock10Step = 46 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) mkdirRecursive: (recoveredBlock10Stack1) errorLabel: (recoveredBlock10Stack2).
            recoveredBlock10PC := 48.
        ].
        recoveredBlock10Step = 48 ifTrue: [
            recoveredBlock10Stack1 := recoveredBlock10Stack0.
            recoveredBlock10PC := 49.
        ].
        recoveredBlock10Step = 49 ifTrue: [
            recoveredLocal4 := recoveredBlock10Stack1.
            recoveredBlock10PC := 52.
        ].
        recoveredBlock10Step = 52 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) isError.
            recoveredBlock10PC := 54.
        ].
        recoveredBlock10Step = 54 ifTrue: [
            (recoveredBlock10Stack0) ifTrue: [recoveredBlock10PC := 58] ifFalse: [recoveredBlock10PC := 78].
        ].
        recoveredBlock10Step = 58 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal1.
            recoveredBlock10PC := 61.
        ].
        recoveredBlock10Step = 61 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal4.
            recoveredBlock10PC := 64.
        ].
        recoveredBlock10Step = 64 ifTrue: [
            (recoveredBlock10Stack0) add: (recoveredBlock10Stack1).
            recoveredBlock10PC := 66.
        ].
        recoveredBlock10Step = 66 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal4.
            recoveredBlock10PC := 69.
        ].
        recoveredBlock10Step = 69 ifTrue: [
            (recoveredBlock10Stack0) monitor.
            recoveredBlock10PC := 71.
        ].
        recoveredBlock10Step = 71 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal4.
            recoveredBlock10PC := 74.
        ].
        recoveredBlock10Step = 74 ifTrue: [
            recoveredBlock10PC := 212.
        ].
        recoveredBlock10Step = 78 ifTrue: [
            recoveredBlock10Stack0 := CfsDirectoryDescriptor.
            recoveredBlock10PC := 80.
        ].
        recoveredBlock10Step = 80 ifTrue: [
            recoveredBlock10Stack1 := [:recoveredBlock10Block80Arg1 :recoveredBlock10Block80Arg2 | 
    | recoveredBlock10Block80Local1 recoveredBlock10Block80Value0 recoveredBlock10Block80Value1 recoveredBlock10Block80Value2 recoveredBlock10Block80Value3 recoveredBlock10Block80Value4 recoveredBlock10Block80Value5 recoveredBlock10Block80Value6 recoveredBlock10Block80Value7 recoveredBlock10Block80Value8 recoveredBlock10Block80Value9 recoveredBlock10Block80Value10 recoveredBlock10Block80Value11 recoveredBlock10Block80Value12 recoveredBlock10Block80Value13 recoveredBlock10Block80Value14 recoveredBlock10Block80Value15 recoveredBlock10Block80Value16 recoveredBlock10Block80Value17 recoveredBlock10Block80Value18 recoveredBlock10Block80Value19 recoveredBlock10Block80Value20 recoveredBlock10Block80Value21 |
    recoveredBlock10Block80Value0 := recoveredLocal2.
    recoveredBlock10Block80Value1 := recoveredBlock10Block80Arg2.
    recoveredBlock10Block80Value2 := recoveredLocal3.
    recoveredBlock10Block80Value3 := (recoveredBlock10Block80Value2) size.
    recoveredBlock10Block80Value4 := (recoveredBlock10Block80Value3) + (1).
    recoveredBlock10Block80Value5 := recoveredBlock10Block80Arg2.
    recoveredBlock10Block80Value6 := (recoveredBlock10Block80Value5) size.
    recoveredBlock10Block80Value7 := (recoveredBlock10Block80Value1) copyFrom: (recoveredBlock10Block80Value4) to: (recoveredBlock10Block80Value6).
    recoveredBlock10Block80Value8 := (recoveredBlock10Block80Value0) , (recoveredBlock10Block80Value7).
    recoveredBlock10Block80Value9 := recoveredBlock10Block80Arg1.
    recoveredBlock10Block80Value10 := (recoveredBlock10Block80Value9) dName.
    recoveredBlock10Block80Value11 := (recoveredBlock10Block80Value8) , (recoveredBlock10Block80Value10).
    recoveredBlock10Block80Local1 := recoveredBlock10Block80Value11.
    recoveredBlock10Block80Value12 := CfsStat.
    recoveredBlock10Block80Value13 := recoveredBlock10Block80Local1.
    (recoveredBlock10Block80Value12) clearReadOnly: (recoveredBlock10Block80Value13).
    recoveredBlock10Block80Value14 := CfsFileDescriptor.
    recoveredBlock10Block80Value15 := recoveredBlock10Block80Arg2.
    recoveredBlock10Block80Value16 := recoveredBlock10Block80Arg1.
    recoveredBlock10Block80Value17 := (recoveredBlock10Block80Value16) dName.
    recoveredBlock10Block80Value18 := (recoveredBlock10Block80Value15) , (recoveredBlock10Block80Value17).
    recoveredBlock10Block80Value19 := recoveredBlock10Block80Local1.
    recoveredBlock10Block80Value20 := (recoveredBlock10Block80Value14) copy: (recoveredBlock10Block80Value18) over: (recoveredBlock10Block80Value19).
    recoveredBlock10Block80Value21 := recoveredBlock10Block80Value20.
    recoveredLocal4 := recoveredBlock10Block80Value21.
    recoveredBlock10Block80Value20
].
            recoveredBlock10PC := 130.
        ].
        recoveredBlock10Step = 130 ifTrue: [
            recoveredBlock10Stack2 := [:recoveredBlock10Block130Arg1 :recoveredBlock10Block130Arg2 | 
    | recoveredBlock10Block130Local1 recoveredBlock10Block130Value0 recoveredBlock10Block130Value1 recoveredBlock10Block130Value2 recoveredBlock10Block130Value3 recoveredBlock10Block130Value4 recoveredBlock10Block130Value5 recoveredBlock10Block130Value6 recoveredBlock10Block130Value7 recoveredBlock10Block130Value8 recoveredBlock10Block130Value9 recoveredBlock10Block130Value10 recoveredBlock10Block130Value11 recoveredBlock10Block130Value12 recoveredBlock10Block130Value13 recoveredBlock10Block130Value14 |
    recoveredBlock10Block130Value0 := recoveredLocal2.
    recoveredBlock10Block130Value1 := recoveredBlock10Block130Arg2.
    recoveredBlock10Block130Value2 := recoveredLocal3.
    recoveredBlock10Block130Value3 := (recoveredBlock10Block130Value2) size.
    recoveredBlock10Block130Value4 := (recoveredBlock10Block130Value3) + (1).
    recoveredBlock10Block130Value5 := recoveredBlock10Block130Arg2.
    recoveredBlock10Block130Value6 := (recoveredBlock10Block130Value5) size.
    recoveredBlock10Block130Value7 := (recoveredBlock10Block130Value1) copyFrom: (recoveredBlock10Block130Value4) to: (recoveredBlock10Block130Value6).
    recoveredBlock10Block130Value8 := (recoveredBlock10Block130Value0) , (recoveredBlock10Block130Value7).
    recoveredBlock10Block130Local1 := recoveredBlock10Block130Value8.
    recoveredBlock10Block130Value9 := recoveredBlock10Block130Local1.
    recoveredBlock10Block130Value10 := recoveredBlock10Block130Arg1.
    recoveredBlock10Block130Value11 := (recoveredBlock10Block130Value10) dName.
    recoveredBlock10Block130Value12 := (recoveredBlock10Block130Value9) , (recoveredBlock10Block130Value11).
    recoveredBlock10Block130Value13 := [
    self
].
    recoveredBlock10Block130Value14 := (self) mkdir: (recoveredBlock10Block130Value12) ifPresent: (recoveredBlock10Block130Value13).
    recoveredLocal4 := recoveredBlock10Block130Value14.
    true
].
            recoveredBlock10PC := 174.
        ].
        recoveredBlock10Step = 174 ifTrue: [
            recoveredBlock10Stack3 := '*.*'.
            recoveredBlock10PC := 176.
        ].
        recoveredBlock10Step = 176 ifTrue: [
            recoveredBlock10Stack4 := recoveredLocal3.
            recoveredBlock10PC := 179.
        ].
        recoveredBlock10Step = 179 ifTrue: [
            recoveredBlock10Stack5 := recoveredLocal2.
            recoveredBlock10PC := 182.
        ].
        recoveredBlock10Step = 182 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) do: (recoveredBlock10Stack1) recursive: (recoveredBlock10Stack2) with: (recoveredBlock10Stack3) in: (recoveredBlock10Stack4) exclude: (recoveredBlock10Stack5).
            recoveredBlock10PC := 185.
        ].
        recoveredBlock10Step = 185 ifTrue: [
            recoveredLocal4 := recoveredBlock10Stack0.
            recoveredBlock10PC := 188.
        ].
        recoveredBlock10Step = 188 ifTrue: [
            recoveredBlock10Stack0 := nil.
            recoveredBlock10PC := 189.
        ].
        recoveredBlock10Step = 189 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal4.
            recoveredBlock10PC := 192.
        ].
        recoveredBlock10Step = 192 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) isError.
            recoveredBlock10PC := 194.
        ].
        recoveredBlock10Step = 194 ifTrue: [
            (recoveredBlock10Stack1) ifTrue: [recoveredBlock10PC := 198] ifFalse: [recoveredBlock10PC := 212].
        ].
        recoveredBlock10Step = 198 ifTrue: [
            recoveredBlock10PC := 199.
        ].
        recoveredBlock10Step = 199 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal1.
            recoveredBlock10PC := 202.
        ].
        recoveredBlock10Step = 202 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal4.
            recoveredBlock10PC := 205.
        ].
        recoveredBlock10Step = 205 ifTrue: [
            (recoveredBlock10Stack0) add: (recoveredBlock10Stack1).
            recoveredBlock10PC := 207.
        ].
        recoveredBlock10Step = 207 ifTrue: [
            recoveredBlock10Stack0 := recoveredLocal4.
            recoveredBlock10PC := 210.
        ].
        recoveredBlock10Step = 210 ifTrue: [
            recoveredBlock10Stack0 := (recoveredBlock10Stack0) monitor.
            recoveredBlock10PC := 212.
        ].
        recoveredBlock10Step = 212 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack0.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := ('Copying Files from: ') , (recoveredValue3).
    recoveredValue5 := ('\to: ') withCrs.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (self) execLongOperation: (recoveredValue2) message: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    (recoveredValue9) add: (self).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) first.
    ^recoveredValue11
! !

"ASDBase.ic method 0x20570390; bytecode file offset 0xe6cc90"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
findFilesRecursive: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := '*.*'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := FDIR.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Stack0 recoveredBlock83Stack1 recoveredBlock83Stack2 recoveredBlock83Stack3 recoveredBlock83Stack4 recoveredBlock83Stack5 recoveredBlock83PC recoveredBlock83Step recoveredBlock83Done recoveredBlock83Result |
    recoveredBlock83Stack0 := self.
    recoveredBlock83PC := 90.
    recoveredBlock83Done := false.
    [recoveredBlock83Done not] whileTrue: [
        recoveredBlock83Step := recoveredBlock83PC.
        recoveredBlock83Step = 90 ifTrue: [
            recoveredBlock83Stack1 := recoveredBlock83Arg1.
            recoveredBlock83PC := 91.
        ].
        recoveredBlock83Step = 91 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) dName.
            recoveredBlock83PC := 93.
        ].
        recoveredBlock83Step = 93 ifTrue: [
            recoveredBlock83Stack2 := 1.
            recoveredBlock83PC := 95.
        ].
        recoveredBlock83Step = 95 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2).
            recoveredBlock83PC := 97.
        ].
        recoveredBlock83Step = 97 ifTrue: [
            recoveredBlock83Stack2 := $..
            recoveredBlock83PC := 100.
        ].
        recoveredBlock83Step = 100 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) = (recoveredBlock83Stack2).
            recoveredBlock83PC := 101.
        ].
        recoveredBlock83Step = 101 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 104] ifFalse: [recoveredBlock83PC := 108].
        ].
        recoveredBlock83Step = 104 ifTrue: [
            recoveredBlock83Stack1 := nil.
            recoveredBlock83PC := 105.
        ].
        recoveredBlock83Step = 105 ifTrue: [
            recoveredBlock83PC := 169.
        ].
        recoveredBlock83Step = 108 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 111.
        ].
        recoveredBlock83Step = 111 ifTrue: [
            recoveredBlock83Stack2 := recoveredArg2.
            recoveredBlock83PC := 114.
        ].
        recoveredBlock83Step = 114 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) size.
            recoveredBlock83PC := 116.
        ].
        recoveredBlock83Step = 116 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) at: (recoveredBlock83Stack2).
            recoveredBlock83PC := 118.
        ].
        recoveredBlock83Step = 118 ifTrue: [
            recoveredBlock83Stack2 := $\.
            recoveredBlock83PC := 122.
        ].
        recoveredBlock83Step = 122 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) = (recoveredBlock83Stack2).
            recoveredBlock83PC := 123.
        ].
        recoveredBlock83Step = 123 ifTrue: [
            (recoveredBlock83Stack1) ifTrue: [recoveredBlock83PC := 126] ifFalse: [recoveredBlock83PC := 140].
        ].
        recoveredBlock83Step = 126 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 129.
        ].
        recoveredBlock83Step = 129 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 130.
        ].
        recoveredBlock83Step = 130 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) dName.
            recoveredBlock83PC := 132.
        ].
        recoveredBlock83Step = 132 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) , (recoveredBlock83Stack2).
            recoveredBlock83PC := 134.
        ].
        recoveredBlock83Step = 134 ifTrue: [
            recoveredLocal2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 137.
        ].
        recoveredBlock83Step = 137 ifTrue: [
            recoveredBlock83PC := 155.
        ].
        recoveredBlock83Step = 140 ifTrue: [
            recoveredBlock83Stack1 := recoveredArg2.
            recoveredBlock83PC := 143.
        ].
        recoveredBlock83Step = 143 ifTrue: [
            recoveredBlock83Stack2 := '\'.
            recoveredBlock83PC := 145.
        ].
        recoveredBlock83Step = 145 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) , (recoveredBlock83Stack2).
            recoveredBlock83PC := 147.
        ].
        recoveredBlock83Step = 147 ifTrue: [
            recoveredBlock83Stack2 := recoveredBlock83Arg1.
            recoveredBlock83PC := 148.
        ].
        recoveredBlock83Step = 148 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) dName.
            recoveredBlock83PC := 150.
        ].
        recoveredBlock83Step = 150 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) , (recoveredBlock83Stack2).
            recoveredBlock83PC := 152.
        ].
        recoveredBlock83Step = 152 ifTrue: [
            recoveredLocal2 := recoveredBlock83Stack1.
            recoveredBlock83PC := 155.
        ].
        recoveredBlock83Step = 155 ifTrue: [
            recoveredBlock83Stack1 := recoveredLocal5.
            recoveredBlock83PC := 158.
        ].
        recoveredBlock83Step = 158 ifTrue: [
            recoveredBlock83Stack2 := self.
            recoveredBlock83PC := 159.
        ].
        recoveredBlock83Step = 159 ifTrue: [
            recoveredBlock83Stack3 := recoveredArg1.
            recoveredBlock83PC := 162.
        ].
        recoveredBlock83Step = 162 ifTrue: [
            recoveredBlock83Stack4 := recoveredLocal2.
            recoveredBlock83PC := 165.
        ].
        recoveredBlock83Step = 165 ifTrue: [
            recoveredBlock83Stack2 := (recoveredBlock83Stack2) findFilesRecursive: (recoveredBlock83Stack3) in: (recoveredBlock83Stack4).
            recoveredBlock83PC := 167.
        ].
        recoveredBlock83Step = 167 ifTrue: [
            recoveredBlock83Stack1 := (recoveredBlock83Stack1) addAll: (recoveredBlock83Stack2).
            recoveredBlock83PC := 169.
        ].
        recoveredBlock83Step = 169 ifTrue: [
            recoveredBlock83Result := recoveredBlock83Stack1.
            recoveredBlock83Done := true.
        ].
    ].
    recoveredBlock83Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := FREG.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) opendir: (recoveredStack1) pattern: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) dName.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := (recoveredStack0) readdir.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 237].
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            (recoveredStack0) closedir.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205806e0; bytecode file offset 0xe7cfe4"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
deletePathRecursive: recoveredArg1 mode: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) clearReadOnly: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := '*.*'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFiles: (recoveredStack1) in: (recoveredStack2) mode: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isCfsError.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 81] ifFalse: [recoveredBlock22PC := 36].
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack2 := '\'.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) , (recoveredBlock22Stack2).
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) dName.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) , (recoveredBlock22Stack2).
            recoveredBlock22PC := 49.
        ].
        recoveredBlock22Step = 49 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := CfsStat.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            (recoveredBlock22Stack1) clearReadOnly: (recoveredBlock22Stack2).
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isDir.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 62] ifFalse: [recoveredBlock22PC := 72].
        ].
        recoveredBlock22Step = 62 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 64.
        ].
        recoveredBlock22Step = 64 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg2.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) deletePathRecursive: (recoveredBlock22Stack2) mode: (recoveredBlock22Stack3).
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            recoveredBlock22Stack1 := CfsFileDescriptor.
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local1.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) remove: (recoveredBlock22Stack2).
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 81.
        ].
        recoveredBlock22Step = 81 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 109] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) monitor.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) findDirectories: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Local1 recoveredBlock121Stack0 recoveredBlock121Stack1 recoveredBlock121Stack2 recoveredBlock121Stack3 recoveredBlock121Stack4 recoveredBlock121PC recoveredBlock121Step recoveredBlock121Done recoveredBlock121Result |
    recoveredBlock121Stack0 := self.
    recoveredBlock121PC := 128.
    recoveredBlock121Done := false.
    [recoveredBlock121Done not] whileTrue: [
        recoveredBlock121Step := recoveredBlock121PC.
        recoveredBlock121Step = 128 ifTrue: [
            recoveredBlock121Stack1 := nil.
            recoveredBlock121PC := 129.
        ].
        recoveredBlock121Step = 129 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 130.
        ].
        recoveredBlock121Step = 130 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) isCfsError.
            recoveredBlock121PC := 132.
        ].
        recoveredBlock121Step = 132 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 181] ifFalse: [recoveredBlock121PC := 136].
        ].
        recoveredBlock121Step = 136 ifTrue: [
            recoveredBlock121PC := 137.
        ].
        recoveredBlock121Step = 137 ifTrue: [
            recoveredBlock121Stack1 := recoveredArg1.
            recoveredBlock121PC := 140.
        ].
        recoveredBlock121Step = 140 ifTrue: [
            recoveredBlock121Stack2 := '\'.
            recoveredBlock121PC := 142.
        ].
        recoveredBlock121Step = 142 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) , (recoveredBlock121Stack2).
            recoveredBlock121PC := 144.
        ].
        recoveredBlock121Step = 144 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 145.
        ].
        recoveredBlock121Step = 145 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) dName.
            recoveredBlock121PC := 147.
        ].
        recoveredBlock121Step = 147 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) , (recoveredBlock121Stack2).
            recoveredBlock121PC := 149.
        ].
        recoveredBlock121Step = 149 ifTrue: [
            recoveredBlock121Local1 := recoveredBlock121Stack1.
            recoveredBlock121PC := 150.
        ].
        recoveredBlock121Step = 150 ifTrue: [
            recoveredBlock121Stack1 := CfsStat.
            recoveredBlock121PC := 152.
        ].
        recoveredBlock121Step = 152 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Local1.
            recoveredBlock121PC := 153.
        ].
        recoveredBlock121Step = 153 ifTrue: [
            (recoveredBlock121Stack1) clearReadOnly: (recoveredBlock121Stack2).
            recoveredBlock121PC := 155.
        ].
        recoveredBlock121Step = 155 ifTrue: [
            recoveredBlock121Stack1 := recoveredBlock121Arg1.
            recoveredBlock121PC := 156.
        ].
        recoveredBlock121Step = 156 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) isDir.
            recoveredBlock121PC := 158.
        ].
        recoveredBlock121Step = 158 ifTrue: [
            (recoveredBlock121Stack1) ifTrue: [recoveredBlock121PC := 162] ifFalse: [recoveredBlock121PC := 172].
        ].
        recoveredBlock121Step = 162 ifTrue: [
            recoveredBlock121Stack1 := self.
            recoveredBlock121PC := 163.
        ].
        recoveredBlock121Step = 163 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Local1.
            recoveredBlock121PC := 164.
        ].
        recoveredBlock121Step = 164 ifTrue: [
            recoveredBlock121Stack3 := recoveredArg2.
            recoveredBlock121PC := 167.
        ].
        recoveredBlock121Step = 167 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) deletePathRecursive: (recoveredBlock121Stack2) mode: (recoveredBlock121Stack3).
            recoveredBlock121PC := 169.
        ].
        recoveredBlock121Step = 169 ifTrue: [
            recoveredBlock121PC := 177.
        ].
        recoveredBlock121Step = 172 ifTrue: [
            recoveredBlock121Stack1 := CfsFileDescriptor.
            recoveredBlock121PC := 174.
        ].
        recoveredBlock121Step = 174 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Local1.
            recoveredBlock121PC := 175.
        ].
        recoveredBlock121Step = 175 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) remove: (recoveredBlock121Stack2).
            recoveredBlock121PC := 177.
        ].
        recoveredBlock121Step = 177 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Stack1.
            recoveredBlock121PC := 178.
        ].
        recoveredBlock121Step = 178 ifTrue: [
            recoveredLocal1 := recoveredBlock121Stack2.
            recoveredBlock121PC := 181.
        ].
        recoveredBlock121Step = 181 ifTrue: [
            recoveredBlock121Result := recoveredBlock121Stack1.
            recoveredBlock121Done := true.
        ].
    ].
    recoveredBlock121Result
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 213].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) monitor.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 259] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) rmdir: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 259].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorCode.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 255] ifFalse: [recoveredPC := 250].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) monitor.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b5b24; bytecode file offset 0xeb241c"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
do: recoveredArg1 recursive: recoveredArg2 with: recoveredArg3 in: recoveredArg4 progress: recoveredArg5 maxProgress: recoveredArg6
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '*'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) findDirectories: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) fractionComplete.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancelled.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 :recoveredBlock73Arg2 | 
    | recoveredBlock73Stack0 recoveredBlock73Stack1 recoveredBlock73Stack2 recoveredBlock73Stack3 recoveredBlock73Stack4 recoveredBlock73Stack5 recoveredBlock73Stack6 recoveredBlock73Stack7 recoveredBlock73Stack8 recoveredBlock73Stack9 recoveredBlock73PC recoveredBlock73Step recoveredBlock73Done recoveredBlock73Result |
    recoveredBlock73Stack0 := self.
    recoveredBlock73PC := 80.
    recoveredBlock73Done := false.
    [recoveredBlock73Done not] whileTrue: [
        recoveredBlock73Step := recoveredBlock73PC.
        recoveredBlock73Step = 80 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg2.
            recoveredBlock73PC := 83.
        ].
        recoveredBlock73Step = 83 ifTrue: [
            recoveredBlock73Stack2 := recoveredBlock73Arg1.
            recoveredBlock73PC := 84.
        ].
        recoveredBlock73Step = 84 ifTrue: [
            recoveredBlock73Stack3 := recoveredLocal5.
            recoveredBlock73PC := 87.
        ].
        recoveredBlock73Step = 87 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) value: (recoveredBlock73Stack2) value: (recoveredBlock73Stack3).
            recoveredBlock73PC := 89.
        ].
        recoveredBlock73Step = 89 ifTrue: [
            recoveredBlock73Stack2 := recoveredBlock73Stack1.
            recoveredBlock73PC := 90.
        ].
        recoveredBlock73Step = 90 ifTrue: [
            recoveredLocal6 := recoveredBlock73Stack2.
            recoveredBlock73PC := 93.
        ].
        recoveredBlock73Step = 93 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) isError.
            recoveredBlock73PC := 95.
        ].
        recoveredBlock73Step = 95 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 98] ifFalse: [recoveredBlock73PC := 102].
        ].
        recoveredBlock73Step = 98 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal6.
            recoveredBlock73PC := 101.
        ].
        recoveredBlock73Step = 101 ifTrue: [
            ^recoveredBlock73Stack1
        ].
        recoveredBlock73Step = 102 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg5.
            recoveredBlock73PC := 105.
        ].
        recoveredBlock73Step = 105 ifTrue: [
            (recoveredBlock73Stack1 == nil) ifTrue: [recoveredBlock73PC := 120] ifFalse: [recoveredBlock73PC := 108].
        ].
        recoveredBlock73Step = 108 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg5.
            recoveredBlock73PC := 111.
        ].
        recoveredBlock73Step = 111 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) cancelled.
            recoveredBlock73PC := 113.
        ].
        recoveredBlock73Step = 113 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 116] ifFalse: [recoveredBlock73PC := 120].
        ].
        recoveredBlock73Step = 116 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal6.
            recoveredBlock73PC := 119.
        ].
        recoveredBlock73Step = 119 ifTrue: [
            ^recoveredBlock73Stack1
        ].
        recoveredBlock73Step = 120 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal6.
            recoveredBlock73PC := 123.
        ].
        recoveredBlock73Step = 123 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 126] ifFalse: [recoveredBlock73PC := 174].
        ].
        recoveredBlock73Step = 126 ifTrue: [
            recoveredBlock73Stack1 := self.
            recoveredBlock73PC := 127.
        ].
        recoveredBlock73Step = 127 ifTrue: [
            recoveredBlock73Stack2 := recoveredArg1.
            recoveredBlock73PC := 130.
        ].
        recoveredBlock73Step = 130 ifTrue: [
            recoveredBlock73Stack3 := recoveredArg2.
            recoveredBlock73PC := 133.
        ].
        recoveredBlock73Step = 133 ifTrue: [
            recoveredBlock73Stack4 := recoveredArg3.
            recoveredBlock73PC := 136.
        ].
        recoveredBlock73Step = 136 ifTrue: [
            recoveredBlock73Stack5 := recoveredLocal5.
            recoveredBlock73PC := 139.
        ].
        recoveredBlock73Step = 139 ifTrue: [
            recoveredBlock73Stack6 := recoveredBlock73Arg1.
            recoveredBlock73PC := 140.
        ].
        recoveredBlock73Step = 140 ifTrue: [
            recoveredBlock73Stack6 := (recoveredBlock73Stack6) dName.
            recoveredBlock73PC := 142.
        ].
        recoveredBlock73Step = 142 ifTrue: [
            recoveredBlock73Stack5 := (recoveredBlock73Stack5) , (recoveredBlock73Stack6).
            recoveredBlock73PC := 144.
        ].
        recoveredBlock73Step = 144 ifTrue: [
            recoveredBlock73Stack5 := (recoveredBlock73Stack5) asPathname.
            recoveredBlock73PC := 146.
        ].
        recoveredBlock73Step = 146 ifTrue: [
            recoveredBlock73Stack6 := recoveredArg5.
            recoveredBlock73PC := 149.
        ].
        recoveredBlock73Step = 149 ifTrue: [
            recoveredBlock73Stack7 := recoveredArg6.
            recoveredBlock73PC := 152.
        ].
        recoveredBlock73Step = 152 ifTrue: [
            recoveredBlock73Stack8 := recoveredLocal3.
            recoveredBlock73PC := 155.
        ].
        recoveredBlock73Step = 155 ifTrue: [
            recoveredBlock73Stack7 := (recoveredBlock73Stack7) / (recoveredBlock73Stack8).
            recoveredBlock73PC := 157.
        ].
        recoveredBlock73Step = 157 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) do: (recoveredBlock73Stack2) recursive: (recoveredBlock73Stack3) with: (recoveredBlock73Stack4) in: (recoveredBlock73Stack5) progress: (recoveredBlock73Stack6) maxProgress: (recoveredBlock73Stack7).
            recoveredBlock73PC := 160.
        ].
        recoveredBlock73Step = 160 ifTrue: [
            recoveredBlock73Stack2 := recoveredBlock73Stack1.
            recoveredBlock73PC := 161.
        ].
        recoveredBlock73Step = 161 ifTrue: [
            recoveredLocal6 := recoveredBlock73Stack2.
            recoveredBlock73PC := 164.
        ].
        recoveredBlock73Step = 164 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) isError.
            recoveredBlock73PC := 166.
        ].
        recoveredBlock73Step = 166 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 170] ifFalse: [recoveredBlock73PC := 174].
        ].
        recoveredBlock73Step = 170 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal6.
            recoveredBlock73PC := 173.
        ].
        recoveredBlock73Step = 173 ifTrue: [
            ^recoveredBlock73Stack1
        ].
        recoveredBlock73Step = 174 ifTrue: [
            recoveredBlock73Stack1 := nil.
            recoveredBlock73PC := 175.
        ].
        recoveredBlock73Step = 175 ifTrue: [
            recoveredBlock73Stack2 := recoveredArg5.
            recoveredBlock73PC := 178.
        ].
        recoveredBlock73Step = 178 ifTrue: [
            (recoveredBlock73Stack2 == nil) ifTrue: [recoveredBlock73PC := 215] ifFalse: [recoveredBlock73PC := 182].
        ].
        recoveredBlock73Step = 182 ifTrue: [
            recoveredBlock73PC := 183.
        ].
        recoveredBlock73Step = 183 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg5.
            recoveredBlock73PC := 186.
        ].
        recoveredBlock73Step = 186 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) cancelled.
            recoveredBlock73PC := 188.
        ].
        recoveredBlock73Step = 188 ifTrue: [
            (recoveredBlock73Stack1) ifTrue: [recoveredBlock73PC := 192] ifFalse: [recoveredBlock73PC := 196].
        ].
        recoveredBlock73Step = 192 ifTrue: [
            recoveredBlock73Stack1 := recoveredLocal6.
            recoveredBlock73PC := 195.
        ].
        recoveredBlock73Step = 195 ifTrue: [
            ^recoveredBlock73Stack1
        ].
        recoveredBlock73Step = 196 ifTrue: [
            recoveredBlock73Stack1 := recoveredArg5.
            recoveredBlock73PC := 199.
        ].
        recoveredBlock73Step = 199 ifTrue: [
            recoveredBlock73Stack2 := recoveredLocal2.
            recoveredBlock73PC := 202.
        ].
        recoveredBlock73Step = 202 ifTrue: [
            recoveredBlock73Stack3 := recoveredArg6.
            recoveredBlock73PC := 205.
        ].
        recoveredBlock73Step = 205 ifTrue: [
            recoveredBlock73Stack4 := recoveredBlock73Arg2.
            recoveredBlock73PC := 206.
        ].
        recoveredBlock73Step = 206 ifTrue: [
            recoveredBlock73Stack5 := recoveredLocal3.
            recoveredBlock73PC := 209.
        ].
        recoveredBlock73Step = 209 ifTrue: [
            recoveredBlock73Stack4 := (recoveredBlock73Stack4) / (recoveredBlock73Stack5).
            recoveredBlock73PC := 211.
        ].
        recoveredBlock73Step = 211 ifTrue: [
            recoveredBlock73Stack3 := (recoveredBlock73Stack3) * (recoveredBlock73Stack4).
            recoveredBlock73PC := 212.
        ].
        recoveredBlock73Step = 212 ifTrue: [
            recoveredBlock73Stack2 := (recoveredBlock73Stack2) + (recoveredBlock73Stack3).
            recoveredBlock73PC := 213.
        ].
        recoveredBlock73Step = 213 ifTrue: [
            recoveredBlock73Stack1 := (recoveredBlock73Stack1) fractionComplete: (recoveredBlock73Stack2).
            recoveredBlock73PC := 215.
        ].
        recoveredBlock73Step = 215 ifTrue: [
            recoveredBlock73Result := recoveredBlock73Stack1.
            recoveredBlock73Done := true.
        ].
    ].
    recoveredBlock73Result
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := (recoveredStack0) findFiles: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 242] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := [:recoveredBlock249Arg1 | 
    | recoveredBlock249Stack0 recoveredBlock249Stack1 recoveredBlock249Stack2 recoveredBlock249Stack3 recoveredBlock249Stack4 recoveredBlock249Stack5 recoveredBlock249PC recoveredBlock249Step recoveredBlock249Done recoveredBlock249Result |
    recoveredBlock249Stack0 := self.
    recoveredBlock249PC := 256.
    recoveredBlock249Done := false.
    [recoveredBlock249Done not] whileTrue: [
        recoveredBlock249Step := recoveredBlock249PC.
        recoveredBlock249Step = 256 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 257.
        ].
        recoveredBlock249Step = 257 ifTrue: [
            recoveredBlock249Stack2 := recoveredBlock249Arg1.
            recoveredBlock249PC := 258.
        ].
        recoveredBlock249Step = 258 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) isCfsError.
            recoveredBlock249PC := 259.
        ].
        recoveredBlock249Step = 259 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 287] ifFalse: [recoveredBlock249PC := 262].
        ].
        recoveredBlock249Step = 262 ifTrue: [
            recoveredBlock249PC := 263.
        ].
        recoveredBlock249Step = 263 ifTrue: [
            recoveredBlock249Stack1 := nil.
            recoveredBlock249PC := 264.
        ].
        recoveredBlock249Step = 264 ifTrue: [
            recoveredBlock249Stack2 := recoveredArg1.
            recoveredBlock249PC := 267.
        ].
        recoveredBlock249Step = 267 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Arg1.
            recoveredBlock249PC := 268.
        ].
        recoveredBlock249Step = 268 ifTrue: [
            recoveredBlock249Stack4 := recoveredLocal5.
            recoveredBlock249PC := 271.
        ].
        recoveredBlock249Step = 271 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) value: (recoveredBlock249Stack3) value: (recoveredBlock249Stack4).
            recoveredBlock249PC := 273.
        ].
        recoveredBlock249Step = 273 ifTrue: [
            recoveredBlock249Stack3 := recoveredBlock249Stack2.
            recoveredBlock249PC := 274.
        ].
        recoveredBlock249Step = 274 ifTrue: [
            recoveredLocal6 := recoveredBlock249Stack3.
            recoveredBlock249PC := 277.
        ].
        recoveredBlock249Step = 277 ifTrue: [
            recoveredBlock249Stack2 := (recoveredBlock249Stack2) isError.
            recoveredBlock249PC := 279.
        ].
        recoveredBlock249Step = 279 ifTrue: [
            (recoveredBlock249Stack2) ifTrue: [recoveredBlock249PC := 282] ifFalse: [recoveredBlock249PC := 287].
        ].
        recoveredBlock249Step = 282 ifTrue: [
            recoveredBlock249PC := 283.
        ].
        recoveredBlock249Step = 283 ifTrue: [
            recoveredBlock249Stack1 := recoveredLocal6.
            recoveredBlock249PC := 286.
        ].
        recoveredBlock249Step = 286 ifTrue: [
            ^recoveredBlock249Stack1
        ].
        recoveredBlock249Step = 287 ifTrue: [
            recoveredBlock249Result := recoveredBlock249Stack1.
            recoveredBlock249Done := true.
        ].
    ].
    recoveredBlock249Result
].
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := recoveredArg5.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack0 := (recoveredStack0) cancelled.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 308] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f1a24; bytecode file offset 0xeee328"
!CfsDirectoryDescriptor class methodsFor: 'recovered'!
checkPathCharacters: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 80.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (Array new: 30) at: 1 put: ($!!); at: 2 put: ($#); at: 3 put: ($*); at: 4 put: ($ ); at: 5 put: ((Character value: 9)); at: 6 put: ($;); at: 7 put: ($,); at: 8 put: ($$); at: 9 put: ($"); at: 10 put: ($%); at: 11 put: ($&); at: 12 put: ($'); at: 13 put: ($(); at: 14 put: ($)); at: 15 put: ($+); at: 16 put: ($<); at: 17 put: ($>); at: 18 put: ($=); at: 19 put: ($?); at: 20 put: ($@); at: 21 put: ($[); at: 22 put: ($]); at: 23 put: ($/); at: 24 put: ($^); at: 25 put: ((Character value: 180)); at: 26 put: ($`); at: 27 put: (${); at: 28 put: ($}); at: 29 put: ($|); at: 30 put: ($~); yourself.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack2 := recoveredArg1.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Arg1.
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) indexOf: (recoveredBlock47Stack3).
            recoveredBlock47PC := 60.
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack3 := 0.
            recoveredBlock47PC := 62.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) = (recoveredBlock47Stack3).
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 69] ifFalse: [recoveredBlock47PC := 66].
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47PC := 67.
        ].
        recoveredBlock47Step = 67 ifTrue: [
            recoveredBlock47Stack1 := false.
            recoveredBlock47PC := 68.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            ^recoveredBlock47Stack1
        ].
        recoveredBlock47Step = 69 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 274.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) isDigit.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) isPunctuation.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := 129.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) > (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 140 ifTrue: [
            recoveredPC := 184.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) value.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := 65.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := 90.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) > (recoveredStack4).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := #((Character value: 228) (Character value: 246) (Character value: 252) (Character value: 196) (Character value: 214) (Character value: 220)).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := (recoveredStack3) includes: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := $:.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 206].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 200] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredLocal7 := recoveredStack3.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := $\.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack4 := $\.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack4 := $..
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := $..
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 274].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            ^recoveredStack3
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 90] ifFalse: [recoveredPC := 306]] ifFalse: [recoveredPC := 279].
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 302] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) splitPath: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := PlatformConstants.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := 'MaxPath'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := [
    256
].
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 354] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 388].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 388].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkPathCharacters: (recoveredStack1).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

