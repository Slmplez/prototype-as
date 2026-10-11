"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdbf.ic method 0x200000f8; bytecode file offset 0x65f8"
!AbtFileSpec class methodsFor: 'recovered'!
fileSpec: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) spec: (recoveredValue1).
    ^recoveredValue2
! !

"abtdbf.ic method 0x20000190; bytecode file offset 0x6690"
!AbtFileSpec class methodsFor: 'recovered'!
resetTimestamp
    | recoveredValue0 |
    recoveredValue0 := (self) getSynchronizationTimestamp.
    Timestamp := recoveredValue0.
    ^self
! !

"abtdbf.ic method 0x200002c8; bytecode file offset 0x67c0"
!AbtFileSpec class methodsFor: 'recovered'!
defaultRetryAttempts
    ^20
! !

"abtdbf.ic method 0x200002f0; bytecode file offset 0x67e8"
!AbtFileSpec class methodsFor: 'recovered'!
pathEnvVarSeparator
    ^$;
! !

"abtdbf.ic method 0x20000304; bytecode file offset 0x67fc"
!AbtFileSpec class methodsFor: 'recovered'!
defaultRetryWaitInterval
    ^250
! !

"abtdbf.ic method 0x20000640; bytecode file offset 0x6b44"
!AbtFileSpec class methodsFor: 'recovered'!
pathEnvVarName: recoveredArg1 fileName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) pathEnvVarName: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) spec: (recoveredValue4).
    ^recoveredValue0
! !

"abtdbf.ic method 0x200006b8; bytecode file offset 0x6bc4"
!AbtFileSpec class methodsFor: 'recovered'!
getSynchronizationTimestamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) today.
    recoveredValue2 := (recoveredValue1) asSeconds.
    recoveredValue3 := Block.
    recoveredValue4 := (recoveredValue3) now.
    recoveredValue5 := (recoveredValue4) asSeconds.
    recoveredValue6 := (recoveredValue2) + (recoveredValue5).
    ^recoveredValue6
! !

"abtdbf.ic method 0x200008bc; bytecode file offset 0x6df4"
!AbtFileSpec class methodsFor: 'recovered'!
abtAboutToSaveImage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicAllInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := #(268436574 nil 40 8388611 nil nil).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x20000b38; bytecode file offset 0x7038"
!AbtFileSpec class methodsFor: 'recovered'!
synchronizationTimestamp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Timestamp.
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
            recoveredStack1 := (recoveredStack1) getSynchronizationTimestamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Timestamp := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Timestamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbf.ic method 0x20000c00; bytecode file offset 0x7104"
!AbtFileSpec class methodsFor: 'recovered'!
unique: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := FileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtUniqueName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileSpec: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbf.ic method 0x20001084; bytecode file offset 0x7590"
!AbtFileSpec class methodsFor: 'recovered'!
findFile: recoveredArg1 usingPathEnvVarName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := EswShadowClass.
    recoveredBlock10Value1 := (recoveredBlock10Value0) startUpDirectoryPath.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) , (recoveredBlock10Value2).
    recoveredBlock10Value4 := (self) fileSpec: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    recoveredValue3 := (self) findFile: (recoveredValue0) usingPathEnvVarName: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"abtdbf.ic method 0x20001e14; bytecode file offset 0x8334"
!AbtFileSpec class methodsFor: 'recovered'!
deviceRequiresDOSFATNames: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'AbtdeviceRequiresDOSFATNames.ThisIsATest'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFileSpec.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := #(268439306 nil 45 8388611 nil nil).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [:recoveredBlock46Arg1 | 
    ^true
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) withCfsDescriptorNewDo: (recoveredStack2) ifOpenError: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := #(268439306 nil 56 8388611 nil nil).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) removeIfAbsent: (recoveredStack2) ifError: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbf.ic method 0x200026e0; bytecode file offset 0x8c10"
!AbtFileSpec class methodsFor: 'recovered'!
findFile: recoveredArg1 usingPathEnvVarName: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtScanEnv.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathEnvVarSeparator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := #(268440432 nil 39 8388611 nil nil).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 39.
        ].
        recoveredBlock31Step = 39 ifTrue: [
            recoveredBlock31Stack2 := EswShadowClass.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) pathSeparatorString.
            recoveredBlock31PC := 43.
        ].
        recoveredBlock31Step = 43 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) , (recoveredBlock31Stack2).
            recoveredBlock31PC := 45.
        ].
        recoveredBlock31Step = 45 ifTrue: [
            recoveredBlock31Stack2 := recoveredArg1.
            recoveredBlock31PC := 48.
        ].
        recoveredBlock31Step = 48 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) , (recoveredBlock31Stack2).
            recoveredBlock31PC := 50.
        ].
        recoveredBlock31Step = 50 ifTrue: [
            recoveredBlock31Stack0 := (recoveredBlock31Stack0) fileSpec: (recoveredBlock31Stack1).
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredLocal1 := recoveredBlock31Stack0.
            recoveredBlock31PC := 55.
        ].
        recoveredBlock31Step = 55 ifTrue: [
            recoveredBlock31Stack0 := nil.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal1.
            recoveredBlock31PC := 59.
        ].
        recoveredBlock31Step = 59 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) exists.
            recoveredBlock31PC := 61.
        ].
        recoveredBlock31Step = 61 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 64] ifFalse: [recoveredBlock31PC := 69].
        ].
        recoveredBlock31Step = 64 ifTrue: [
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack0 := recoveredLocal1.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            ^recoveredBlock31Stack0
        ].
        recoveredBlock31Step = 69 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack0.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := EswShadowClass.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) startUpDirectoryPath.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileSpec: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 105.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdbf.ic method 0x2000282c; bytecode file offset 0x8d64"
!AbtFileSpec class methodsFor: 'recovered'!
findSingleFile: recoveredArg1 usingPathEnvVarName: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) abtScanEnv.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathEnvVarSeparator.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := #(268440598 nil 43 8388611 nil nil).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31Stack4 recoveredBlock31Stack5 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := EswShadowClass.
            recoveredBlock31PC := 40.
        ].
        recoveredBlock31Step = 40 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Arg1.
            recoveredBlock31PC := 41.
        ].
        recoveredBlock31Step = 41 ifTrue: [
            recoveredBlock31Stack3 := recoveredArg1.
            recoveredBlock31PC := 44.
        ].
        recoveredBlock31Step = 44 ifTrue: [
            recoveredBlock31Stack4 := SIWGRP.
            recoveredBlock31PC := 46.
        ].
        recoveredBlock31Step = 46 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) opendir: (recoveredBlock31Stack2) pattern: (recoveredBlock31Stack3) mode: (recoveredBlock31Stack4).
            recoveredBlock31PC := 49.
        ].
        recoveredBlock31Step = 49 ifTrue: [
            recoveredLocal2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 52.
        ].
        recoveredBlock31Step = 52 ifTrue: [
            recoveredBlock31Stack1 := nil.
            recoveredBlock31PC := 53.
        ].
        recoveredBlock31Step = 53 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal2.
            recoveredBlock31PC := 56.
        ].
        recoveredBlock31Step = 56 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) isCfsError.
            recoveredBlock31PC := 58.
        ].
        recoveredBlock31Step = 58 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 102] ifFalse: [recoveredBlock31PC := 62].
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31PC := 63.
        ].
        recoveredBlock31Step = 63 ifTrue: [
            recoveredBlock31PC := 86.
        ].
        recoveredBlock31Step = 66 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 69.
        ].
        recoveredBlock31Step = 69 ifTrue: [
            (recoveredBlock31Stack1) closedir.
            recoveredBlock31PC := 71.
        ].
        recoveredBlock31Step = 71 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 72.
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack2 := EswShadowClass.
            recoveredBlock31PC := 74.
        ].
        recoveredBlock31Step = 74 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) pathSeparatorString.
            recoveredBlock31PC := 76.
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) , (recoveredBlock31Stack2).
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            recoveredBlock31Stack2 := recoveredLocal3.
            recoveredBlock31PC := 81.
        ].
        recoveredBlock31Step = 81 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) , (recoveredBlock31Stack2).
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) asReducedString.
            recoveredBlock31PC := 85.
        ].
        recoveredBlock31Step = 85 ifTrue: [
            ^recoveredBlock31Stack1
        ].
        recoveredBlock31Step = 86 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) readdirName.
            recoveredBlock31PC := 91.
        ].
        recoveredBlock31Step = 91 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Stack1.
            recoveredBlock31PC := 92.
        ].
        recoveredBlock31Step = 92 ifTrue: [
            recoveredLocal3 := recoveredBlock31Stack2.
            recoveredBlock31PC := 95.
        ].
        recoveredBlock31Step = 95 ifTrue: [
            (recoveredBlock31Stack1 ~~ nil) ifTrue: [recoveredBlock31PC := 66] ifFalse: [recoveredBlock31PC := 97].
        ].
        recoveredBlock31Step = 97 ifTrue: [
            recoveredBlock31Stack1 := recoveredLocal2.
            recoveredBlock31PC := 100.
        ].
        recoveredBlock31Step = 100 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) closedir.
            recoveredBlock31PC := 102.
        ].
        recoveredBlock31Step = 102 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"abtdbf.ic method 0x20002e2c; bytecode file offset 0x937c"
!AbtFileSpec class methodsFor: 'recovered'!
findFiles: recoveredArg1 usingPathEnvVarName: recoveredArg2 caseSensitive: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CurrentStringClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CldtConstants.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtScanEnv.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathEnvVarSeparator.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := #(268441366 nil 62 8388611 nil nil).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := EswShadowClass.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 55.
        ].
        recoveredBlock45Step = 55 ifTrue: [
            recoveredBlock45Stack3 := recoveredArg1.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            recoveredBlock45Stack4 := SIWGRP.
            recoveredBlock45PC := 60.
        ].
        recoveredBlock45Step = 60 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) opendir: (recoveredBlock45Stack2) pattern: (recoveredBlock45Stack3) mode: (recoveredBlock45Stack4).
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredLocal5 := recoveredBlock45Stack1.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 67.
        ].
        recoveredBlock45Step = 67 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal5.
            recoveredBlock45PC := 70.
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) isCfsError.
            recoveredBlock45PC := 72.
        ].
        recoveredBlock45Step = 72 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 157] ifFalse: [recoveredBlock45PC := 76].
        ].
        recoveredBlock45Step = 76 ifTrue: [
            recoveredBlock45PC := 77.
        ].
        recoveredBlock45Step = 77 ifTrue: [
            recoveredBlock45PC := 141.
        ].
        recoveredBlock45Step = 80 ifTrue: [
            recoveredBlock45Stack1 := recoveredArg3.
            recoveredBlock45PC := 83.
        ].
        recoveredBlock45Step = 83 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 86] ifFalse: [recoveredBlock45PC := 92].
        ].
        recoveredBlock45Step = 86 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal6.
            recoveredBlock45PC := 89.
        ].
        recoveredBlock45Step = 89 ifTrue: [
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 92 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal6.
            recoveredBlock45PC := 95.
        ].
        recoveredBlock45Step = 95 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) asLowercase.
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 97 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) asReducedString.
            recoveredBlock45PC := 99.
        ].
        recoveredBlock45Step = 99 ifTrue: [
            recoveredLocal1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 102.
        ].
        recoveredBlock45Step = 102 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 105.
        ].
        recoveredBlock45Step = 105 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal1.
            recoveredBlock45PC := 108.
        ].
        recoveredBlock45Step = 108 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) includes: (recoveredBlock45Stack2).
            recoveredBlock45PC := 110.
        ].
        recoveredBlock45Step = 110 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 141] ifFalse: [recoveredBlock45PC := 114].
        ].
        recoveredBlock45Step = 114 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 117.
        ].
        recoveredBlock45Step = 117 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal1.
            recoveredBlock45PC := 120.
        ].
        recoveredBlock45Step = 120 ifTrue: [
            (recoveredBlock45Stack1) add: (recoveredBlock45Stack2).
            recoveredBlock45PC := 122.
        ].
        recoveredBlock45Step = 122 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 125.
        ].
        recoveredBlock45Step = 125 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 126.
        ].
        recoveredBlock45Step = 126 ifTrue: [
            recoveredBlock45Stack3 := EswShadowClass.
            recoveredBlock45PC := 128.
        ].
        recoveredBlock45Step = 128 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) pathSeparatorString.
            recoveredBlock45PC := 130.
        ].
        recoveredBlock45Step = 130 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) , (recoveredBlock45Stack3).
            recoveredBlock45PC := 132.
        ].
        recoveredBlock45Step = 132 ifTrue: [
            recoveredBlock45Stack3 := recoveredLocal6.
            recoveredBlock45PC := 135.
        ].
        recoveredBlock45Step = 135 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) , (recoveredBlock45Stack3).
            recoveredBlock45PC := 137.
        ].
        recoveredBlock45Step = 137 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) asReducedString.
            recoveredBlock45PC := 139.
        ].
        recoveredBlock45Step = 139 ifTrue: [
            (recoveredBlock45Stack1) add: (recoveredBlock45Stack2).
            recoveredBlock45PC := 141.
        ].
        recoveredBlock45Step = 141 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal5.
            recoveredBlock45PC := 144.
        ].
        recoveredBlock45Step = 144 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) readdirName.
            recoveredBlock45PC := 146.
        ].
        recoveredBlock45Step = 146 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 147.
        ].
        recoveredBlock45Step = 147 ifTrue: [
            recoveredLocal6 := recoveredBlock45Stack2.
            recoveredBlock45PC := 150.
        ].
        recoveredBlock45Step = 150 ifTrue: [
            (recoveredBlock45Stack1 ~~ nil) ifTrue: [recoveredBlock45PC := 80] ifFalse: [recoveredBlock45PC := 152].
        ].
        recoveredBlock45Step = 152 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal5.
            recoveredBlock45PC := 155.
        ].
        recoveredBlock45Step = 155 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) closedir.
            recoveredBlock45PC := 157.
        ].
        recoveredBlock45Step = 157 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

