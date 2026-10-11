"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x2000140c; bytecode file offset 0x3d664"
!EmMethodEdition methodsFor: 'recovered'!
initialMFTS
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initialMFTSIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000151c; bytecode file offset 0x3d664"
!EmMethodEdition methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) timeStampIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x2000160c; bytecode file offset 0x3d664"
!EmMethodEdition methodsFor: 'recovered'!
previousTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) previousIndex.
    recoveredValue1 := (self) timeStampAt: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001688; bytecode file offset 0x3d6ac"
!EmMethodEdition methodsFor: 'recovered'!
primitiveName
    | recoveredValue0 |
    recoveredValue0 := (self) element: (1).
    ^recoveredValue0
! !

"lib.ic method 0x200016d4; bytecode file offset 0x3d6f8"
!EmMethodEdition methodsFor: 'recovered'!
initialVMType
    | recoveredValue0 |
    recoveredValue0 := (self) element: (3).
    ^recoveredValue0
! !

"lib.ic method 0x20001ee4; bytecode file offset 0x3df38"
!EmMethodEdition methodsFor: 'recovered'!
timeStampIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (8).
    ^recoveredValue1
! !

"lib.ic method 0x20001f44; bytecode file offset 0x3df98"
!EmMethodEdition methodsFor: 'recovered'!
previousIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (12).
    ^recoveredValue1
! !

"lib.ic method 0x20002008; bytecode file offset 0x3e02c"
!EmMethodEdition methodsFor: 'recovered'!
initialMFTSIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (16).
    ^recoveredValue1
! !

"lib.ic method 0x20002020; bytecode file offset 0x3e044"
!EmMethodEdition methodsFor: 'recovered'!
objectCodeIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (20).
    ^recoveredValue1
! !

"lib.ic method 0x20002098; bytecode file offset 0x3e0bc"
!EmMethodEdition methodsFor: 'recovered'!
inheritedFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (28).
    ^recoveredValue1
! !

"lib.ic method 0x20002128; bytecode file offset 0x3e14c"
!EmMethodEdition methodsFor: 'recovered'!
localFieldsIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) startPosition.
    recoveredValue1 := (recoveredValue0) + (36).
    ^recoveredValue1
! !

"lib.ic method 0x200027d4; bytecode file offset 0x3e814"
!EmMethodEdition methodsFor: 'recovered'!
numberOfElements
    ^4
! !

"lib.ic method 0x20003c80; bytecode file offset 0x3fca8"
!EmMethodEdition methodsFor: 'recovered'!
mustBeCompiled
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) statusByteIndex.
    recoveredValue1 := (self) byteAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"lib.ic method 0x20003cf4; bytecode file offset 0x3fd2c"
!EmMethodEdition methodsFor: 'recovered'!
mustBeCompiledFirst
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) statusByteIndex.
    recoveredValue1 := (self) byteAt: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) = (2).
    ^recoveredValue2
! !

"lib.ic method 0x20004688; bytecode file offset 0x406b4"
!EmMethodEdition methodsFor: 'recovered'!
mustCompile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) statusByteIndex.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mustCompileStatusByte.
    (self) at: (recoveredValue0) putByte: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20006a30; bytecode file offset 0x42a60"
!EmMethodEdition methodsFor: 'recovered'!
clearSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := String.
    recoveredValue1 := (self) sizeOfElement: (2).
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    (self) element: (2) is: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20007e18; bytecode file offset 0x43e48"
!EmMethodEdition methodsFor: 'recovered'!
useLinkerFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) useLinker.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiler.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Object.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) compiler.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000822c; bytecode file offset 0x44268"
!EmMethodEdition methodsFor: 'recovered'!
cacheRecord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) cache.
    recoveredValue2 := (self) filePointer.
    recoveredValue3 := (self) timeStamp.
    recoveredValue4 := (self) compressedSource.
    recoveredValue5 := (self) library.
    (recoveredValue1) cacheFilePointer: (recoveredValue2) timeStamp: (recoveredValue3) compressedSource: (recoveredValue4) from: (recoveredValue5).
    ^self
! !

"lib.ic method 0x20009630; bytecode file offset 0x45664"
!EmMethodEdition methodsFor: 'recovered'!
copyInheritedUserFieldsFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inheritedFieldsIndex.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) inheritedUserFields.
    recoveredBlock6Value2 := (self) library.
    recoveredBlock6Value3 := (recoveredBlock6Value1) insertInto: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (self) partAt: (recoveredValue0) putPointerFrom: (recoveredValue1).
    ^self
! !

"lib.ic method 0x200097dc; bytecode file offset 0x45810"
!EmMethodEdition methodsFor: 'recovered'!
hasExtendedSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetOfElement: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) offsetOfElement: (recoveredStack4).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedUserFields.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) extendedSourceKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20009fec; bytecode file offset 0x46014"
!EmMethodEdition methodsFor: 'recovered'!
hasSource
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetOfElement: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetOfElement: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteAt: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000bd28; bytecode file offset 0x47d5c"
!EmMethodEdition methodsFor: 'recovered'!
source
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) compressedSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) elementIsDBString: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := EmLibraryInterface.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) nativeInterface.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) decompressString: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c6c4; bytecode file offset 0x48708"
!EmMethodEdition methodsFor: 'recovered'!
byteCodeType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ByteCodeType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) vmType.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteCodeVersion.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000cbec; bytecode file offset 0x48c24"
!EmMethodEdition methodsFor: 'recovered'!
compressedSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) element: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasExtendedSource.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) extendedSourceKey.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedUserFieldAt: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000cf4c; bytecode file offset 0x48f7c"
!EmMethodEdition methodsFor: 'recovered'!
compile: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsCompiler.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredArg2.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := Transcript.
    recoveredBlock6Value3 := [
    ^nil
].
    recoveredBlock6Value4 := (recoveredBlock6Value0) basicCompile: (recoveredBlock6Value1) notifying: (recoveredBlock6Value2) ifFail: (recoveredBlock6Value3).
    recoveredBlock6Value4
].
    recoveredValue2 := (recoveredValue0) useWarningLevel0While: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x2000e65c; bytecode file offset 0x4a694"
!EmMethodEdition methodsFor: 'recovered'!
recompileIn: recoveredArg1 ifNoSource: recoveredArg2 ifCompileError: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) compile: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) filePointer: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addNewByteCodesFor: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012be0; bytecode file offset 0x4ec20"
!EmMethodEdition methodsFor: 'recovered'!
useCachedByteCodesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodFormatTimeStamp.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) initialMFTS.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteCodeType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) initialVMType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) sizeOfElement: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementTypeIndex.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) wordAt: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBitSet: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20015718; bytecode file offset 0x51764"
!EmMethodEdition methodsFor: 'recovered'!
removeSource
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasExtendedSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) extendedSourceKey.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) deleteInheritedUserField: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSource.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetOfElement: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetOfElement: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := (recoveredStack4) filePointer.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) write: (recoveredStack1) from: (recoveredStack2) startingAt: (recoveredStack3) at: (recoveredStack4) offsetBy: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001910c; bytecode file offset 0x5516c"
!EmMethodEdition methodsFor: 'recovered'!
knownFormats
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := Association.
    recoveredValue2 := (self) initialVMType.
    recoveredValue3 := (self) initialMFTS.
    recoveredValue4 := (recoveredValue1) key: (recoveredValue2) value: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) with: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := (self) objectCodeIndex.
    recoveredValue7 := (self) obtainDictionaryAt: (recoveredValue6).
    recoveredValue8 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 |
    recoveredBlock24Value0 := EmEditionsDictionary.
    recoveredBlock24Value1 := recoveredBlock24Arg1.
    recoveredBlock24Value2 := (recoveredBlock24Value1) value.
    recoveredBlock24Value3 := (self) library.
    recoveredBlock24Value4 := (recoveredBlock24Value0) using: (recoveredBlock24Value2) from: (recoveredBlock24Value3).
    recoveredBlock24Value5 := [:recoveredBlock24Block42Arg1 | 
    | recoveredBlock24Block42Value0 recoveredBlock24Block42Value1 recoveredBlock24Block42Value2 recoveredBlock24Block42Value3 recoveredBlock24Block42Value4 recoveredBlock24Block42Value5 recoveredBlock24Block42Value6 recoveredBlock24Block42Value7 |
    recoveredBlock24Block42Value0 := recoveredLocal1.
    recoveredBlock24Block42Value1 := Association.
    recoveredBlock24Block42Value2 := recoveredBlock24Arg1.
    recoveredBlock24Block42Value3 := (recoveredBlock24Block42Value2) name.
    recoveredBlock24Block42Value4 := recoveredBlock24Block42Arg1.
    recoveredBlock24Block42Value5 := (recoveredBlock24Block42Value4) key.
    recoveredBlock24Block42Value6 := (recoveredBlock24Block42Value1) key: (recoveredBlock24Block42Value3) value: (recoveredBlock24Block42Value5).
    recoveredBlock24Block42Value7 := (recoveredBlock24Block42Value0) add: (recoveredBlock24Block42Value6).
    recoveredBlock24Block42Value7
].
    recoveredBlock24Value6 := (recoveredBlock24Value4) forAllEntriesDo: (recoveredBlock24Value5).
    recoveredBlock24Value6
].
    (recoveredValue7) forAllEntriesDo: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"lib.ic method 0x2001e630; bytecode file offset 0x5a694"
!EmMethodEdition methodsFor: 'recovered'!
addNewByteCodesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Decoder.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) canMethodBeLinked: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodClass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) useCachedByteCodesFor: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectCodeIndex.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := (self) byteCodeType.
    recoveredBlock36Value2 := [:recoveredBlock36Block46Arg1 | 
    | recoveredBlock36Block46Value0 recoveredBlock36Block46Value1 recoveredBlock36Block46Value2 recoveredBlock36Block46Value3 recoveredBlock36Block46Value4 recoveredBlock36Block46Value5 recoveredBlock36Block46Value6 recoveredBlock36Block46Value7 recoveredBlock36Block46Value8 |
    recoveredBlock36Block46Value0 := EmEditionsDictionary.
    recoveredBlock36Block46Value1 := recoveredBlock36Block46Arg1.
    recoveredBlock36Block46Value2 := (self) library.
    recoveredBlock36Block46Value3 := (recoveredBlock36Block46Value0) updating: (recoveredBlock36Block46Value1) from: (recoveredBlock36Block46Value2).
    recoveredBlock36Block46Value4 := recoveredArg1.
    recoveredBlock36Block46Value5 := (recoveredBlock36Block46Value4) methodClass.
    recoveredBlock36Block46Value6 := (recoveredBlock36Block46Value5) methodFormatTimeStamp.
    recoveredBlock36Block46Value7 := [:recoveredBlock36Block46Block66Arg1 | 
    | recoveredBlock36Block46Block66Stack0 recoveredBlock36Block46Block66Stack1 recoveredBlock36Block46Block66Stack2 recoveredBlock36Block46Block66Stack3 recoveredBlock36Block46Block66Stack4 recoveredBlock36Block46Block66Stack5 recoveredBlock36Block46Block66PC recoveredBlock36Block46Block66Step recoveredBlock36Block46Block66Done recoveredBlock36Block46Block66Result |
    recoveredBlock36Block46Block66Stack0 := self.
    recoveredBlock36Block46Block66PC := 72.
    recoveredBlock36Block46Block66Done := false.
    [recoveredBlock36Block46Block66Done not] whileTrue: [
        recoveredBlock36Block46Block66Step := recoveredBlock36Block46Block66PC.
        recoveredBlock36Block46Block66Step = 72 ifTrue: [
            recoveredBlock36Block46Block66Stack1 := nil.
            recoveredBlock36Block46Block66PC := 73.
        ].
        recoveredBlock36Block46Block66Step = 73 ifTrue: [
            recoveredBlock36Block46Block66Stack2 := recoveredBlock36Block46Block66Arg1.
            recoveredBlock36Block46Block66PC := 74.
        ].
        recoveredBlock36Block46Block66Step = 74 ifTrue: [
            recoveredBlock36Block46Block66Stack2 := (recoveredBlock36Block46Block66Stack2) isVoid.
            recoveredBlock36Block46Block66PC := 76.
        ].
        recoveredBlock36Block46Block66Step = 76 ifTrue: [
            (recoveredBlock36Block46Block66Stack2) ifTrue: [recoveredBlock36Block46Block66PC := 80] ifFalse: [recoveredBlock36Block46Block66PC := 101].
        ].
        recoveredBlock36Block46Block66Step = 80 ifTrue: [
            recoveredBlock36Block46Block66PC := 81.
        ].
        recoveredBlock36Block46Block66Step = 81 ifTrue: [
            recoveredBlock36Block46Block66Stack1 := EmRecord.
            recoveredBlock36Block46Block66PC := 83.
        ].
        recoveredBlock36Block46Block66Step = 83 ifTrue: [
            recoveredBlock36Block46Block66Stack2 := Decoder.
            recoveredBlock36Block46Block66PC := 85.
        ].
        recoveredBlock36Block46Block66Step = 85 ifTrue: [
            recoveredBlock36Block46Block66Stack3 := recoveredArg1.
            recoveredBlock36Block46Block66PC := 88.
        ].
        recoveredBlock36Block46Block66Step = 88 ifTrue: [
            recoveredBlock36Block46Block66Stack4 := recoveredArg1.
            recoveredBlock36Block46Block66PC := 91.
        ].
        recoveredBlock36Block46Block66Step = 91 ifTrue: [
            recoveredBlock36Block46Block66Stack4 := (recoveredBlock36Block46Block66Stack4) methodClass.
            recoveredBlock36Block46Block66PC := 92.
        ].
        recoveredBlock36Block46Block66Step = 92 ifTrue: [
            recoveredBlock36Block46Block66Stack2 := (recoveredBlock36Block46Block66Stack2) decode: (recoveredBlock36Block46Block66Stack3) fromClass: (recoveredBlock36Block46Block66Stack4).
            recoveredBlock36Block46Block66PC := 94.
        ].
        recoveredBlock36Block46Block66Step = 94 ifTrue: [
            recoveredBlock36Block46Block66Stack1 := (recoveredBlock36Block46Block66Stack1) on: (recoveredBlock36Block46Block66Stack2).
            recoveredBlock36Block46Block66PC := 96.
        ].
        recoveredBlock36Block46Block66Step = 96 ifTrue: [
            recoveredBlock36Block46Block66Stack2 := self.
            recoveredBlock36Block46Block66PC := 97.
        ].
        recoveredBlock36Block46Block66Step = 97 ifTrue: [
            recoveredBlock36Block46Block66Stack2 := (recoveredBlock36Block46Block66Stack2) library.
            recoveredBlock36Block46Block66PC := 99.
        ].
        recoveredBlock36Block46Block66Step = 99 ifTrue: [
            recoveredBlock36Block46Block66Stack1 := (recoveredBlock36Block46Block66Stack1) insertInto: (recoveredBlock36Block46Block66Stack2).
            recoveredBlock36Block46Block66PC := 101.
        ].
        recoveredBlock36Block46Block66Step = 101 ifTrue: [
            recoveredBlock36Block46Block66Result := recoveredBlock36Block46Block66Stack1.
            recoveredBlock36Block46Block66Done := true.
        ].
    ].
    recoveredBlock36Block46Block66Result
].
    recoveredBlock36Block46Value8 := (recoveredBlock36Block46Value3) at: (recoveredBlock36Block46Value6) putPointerFrom: (recoveredBlock36Block46Value7).
    recoveredBlock36Block46Value8
].
    recoveredBlock36Value3 := (recoveredBlock36Value0) at: (recoveredBlock36Value1) putPointerFrom: (recoveredBlock36Value2).
    recoveredBlock36Value3
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) updateDictionaryAt: (recoveredStack2) using: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200264b0; bytecode file offset 0x624e4"
!EmMethodEdition methodsFor: 'recovered'!
isSourceSameAs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := $ .
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := $ .
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSeparator.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSeparator.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20028d58; bytecode file offset 0x64dd4"
!EmMethodEdition methodsFor: 'recovered'!
mergeFormats: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) importSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSource.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSource.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) offsetOfElement: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) offsetOfElement: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) element: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := (recoveredStack4) filePointer.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) write: (recoveredStack1) from: (recoveredStack2) startingAt: (recoveredStack3) at: (recoveredStack4) offsetBy: (recoveredStack5).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCodeIndex.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 recoveredBlock65Value4 recoveredBlock65Value5 |
    recoveredBlock65Value0 := recoveredArg2.
    recoveredBlock65Value1 := recoveredArg2.
    recoveredBlock65Value2 := (recoveredBlock65Value1) objectCodeIndex.
    recoveredBlock65Value3 := (recoveredBlock65Value0) obtainDictionaryAt: (recoveredBlock65Value2).
    recoveredBlock65Value4 := [:recoveredBlock65Block82Arg1 | 
    | recoveredBlock65Block82Value0 recoveredBlock65Block82Value1 recoveredBlock65Block82Value2 recoveredBlock65Block82Value3 recoveredBlock65Block82Value4 |
    recoveredBlock65Block82Value0 := recoveredBlock65Arg1.
    recoveredBlock65Block82Value1 := recoveredBlock65Block82Arg1.
    recoveredBlock65Block82Value2 := (recoveredBlock65Block82Value1) name.
    recoveredBlock65Block82Value3 := [:recoveredBlock65Block82Block96Arg1 | 
    | recoveredBlock65Block82Block96Value0 recoveredBlock65Block82Block96Value1 recoveredBlock65Block82Block96Value2 recoveredBlock65Block82Block96Value3 recoveredBlock65Block82Block96Value4 recoveredBlock65Block82Block96Value5 recoveredBlock65Block82Block96Value6 recoveredBlock65Block82Block96Value7 recoveredBlock65Block82Block96Value8 recoveredBlock65Block82Block96Value9 recoveredBlock65Block82Block96Value10 recoveredBlock65Block82Block96Value11 recoveredBlock65Block82Block96Value12 |
    recoveredBlock65Block82Block96Value0 := EmEditionsDictionary.
    recoveredBlock65Block82Block96Value1 := recoveredBlock65Block82Block96Arg1.
    recoveredBlock65Block82Block96Value2 := (self) library.
    recoveredBlock65Block82Block96Value3 := (recoveredBlock65Block82Block96Value0) updating: (recoveredBlock65Block82Block96Value1) from: (recoveredBlock65Block82Block96Value2).
    recoveredLocal4 := recoveredBlock65Block82Block96Value3.
    recoveredBlock65Block82Block96Value4 := EmEditionsDictionary.
    recoveredBlock65Block82Block96Value5 := recoveredBlock65Block82Arg1.
    recoveredBlock65Block82Block96Value6 := (recoveredBlock65Block82Block96Value5) value.
    recoveredBlock65Block82Block96Value7 := recoveredArg2.
    recoveredBlock65Block82Block96Value8 := (recoveredBlock65Block82Block96Value7) library.
    recoveredBlock65Block82Block96Value9 := (recoveredBlock65Block82Block96Value4) using: (recoveredBlock65Block82Block96Value6) from: (recoveredBlock65Block82Block96Value8).
    recoveredBlock65Block82Block96Value10 := [:recoveredBlock65Block82Block96Block127Arg1 | 
    | recoveredBlock65Block82Block96Block127Stack0 recoveredBlock65Block82Block96Block127Stack1 recoveredBlock65Block82Block96Block127Stack2 recoveredBlock65Block82Block96Block127Stack3 recoveredBlock65Block82Block96Block127Stack4 recoveredBlock65Block82Block96Block127Stack5 recoveredBlock65Block82Block96Block127PC recoveredBlock65Block82Block96Block127Step recoveredBlock65Block82Block96Block127Done recoveredBlock65Block82Block96Block127Result |
    recoveredBlock65Block82Block96Block127Stack0 := self.
    recoveredBlock65Block82Block96Block127PC := 134.
    recoveredBlock65Block82Block96Block127Done := false.
    [recoveredBlock65Block82Block96Block127Done not] whileTrue: [
        recoveredBlock65Block82Block96Block127Step := recoveredBlock65Block82Block96Block127PC.
        recoveredBlock65Block82Block96Block127Step = 134 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack1 := nil.
            recoveredBlock65Block82Block96Block127PC := 135.
        ].
        recoveredBlock65Block82Block96Block127Step = 135 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack2 := recoveredArg1.
            recoveredBlock65Block82Block96Block127PC := 138.
        ].
        recoveredBlock65Block82Block96Block127Step = 138 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack3 := recoveredBlock65Block82Block96Block127Arg1.
            recoveredBlock65Block82Block96Block127PC := 141.
        ].
        recoveredBlock65Block82Block96Block127Step = 141 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack3 := (recoveredBlock65Block82Block96Block127Stack3) key.
            recoveredBlock65Block82Block96Block127PC := 143.
        ].
        recoveredBlock65Block82Block96Block127Step = 143 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack4 := recoveredBlock65Block82Block96Block127Stack3.
            recoveredBlock65Block82Block96Block127PC := 144.
        ].
        recoveredBlock65Block82Block96Block127Step = 144 ifTrue: [
            recoveredLocal1 := recoveredBlock65Block82Block96Block127Stack4.
            recoveredBlock65Block82Block96Block127PC := 147.
        ].
        recoveredBlock65Block82Block96Block127Step = 147 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack2 := (recoveredBlock65Block82Block96Block127Stack2) includes: (recoveredBlock65Block82Block96Block127Stack3).
            recoveredBlock65Block82Block96Block127PC := 149.
        ].
        recoveredBlock65Block82Block96Block127Step = 149 ifTrue: [
            (recoveredBlock65Block82Block96Block127Stack2) ifTrue: [recoveredBlock65Block82Block96Block127PC := 152] ifFalse: [recoveredBlock65Block82Block96Block127PC := 200].
        ].
        recoveredBlock65Block82Block96Block127Step = 152 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack2 := recoveredLocal4.
            recoveredBlock65Block82Block96Block127PC := 155.
        ].
        recoveredBlock65Block82Block96Block127Step = 155 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack3 := recoveredLocal1.
            recoveredBlock65Block82Block96Block127PC := 158.
        ].
        recoveredBlock65Block82Block96Block127Step = 158 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack2 := (recoveredBlock65Block82Block96Block127Stack2) includesKey: (recoveredBlock65Block82Block96Block127Stack3).
            recoveredBlock65Block82Block96Block127PC := 160.
        ].
        recoveredBlock65Block82Block96Block127Step = 160 ifTrue: [
            (recoveredBlock65Block82Block96Block127Stack2) ifTrue: [recoveredBlock65Block82Block96Block127PC := 200] ifFalse: [recoveredBlock65Block82Block96Block127PC := 164].
        ].
        recoveredBlock65Block82Block96Block127Step = 164 ifTrue: [
            recoveredBlock65Block82Block96Block127PC := 165.
        ].
        recoveredBlock65Block82Block96Block127Step = 165 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack1 := recoveredLocal4.
            recoveredBlock65Block82Block96Block127PC := 168.
        ].
        recoveredBlock65Block82Block96Block127Step = 168 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack2 := recoveredLocal1.
            recoveredBlock65Block82Block96Block127PC := 171.
        ].
        recoveredBlock65Block82Block96Block127Step = 171 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack3 := [:recoveredBlock65Block82Block96Block127Block171Arg1 | 
    | recoveredBlock65Block82Block96Block127Block171Value0 recoveredBlock65Block82Block96Block127Block171Value1 recoveredBlock65Block82Block96Block127Block171Value2 recoveredBlock65Block82Block96Block127Block171Value3 recoveredBlock65Block82Block96Block127Block171Value4 recoveredBlock65Block82Block96Block127Block171Value5 recoveredBlock65Block82Block96Block127Block171Value6 recoveredBlock65Block82Block96Block127Block171Value7 |
    recoveredBlock65Block82Block96Block127Block171Value0 := EmRecord.
    recoveredBlock65Block82Block96Block127Block171Value1 := recoveredBlock65Block82Block96Block127Arg1.
    recoveredBlock65Block82Block96Block127Block171Value2 := (recoveredBlock65Block82Block96Block127Block171Value1) value.
    recoveredBlock65Block82Block96Block127Block171Value3 := recoveredArg2.
    recoveredBlock65Block82Block96Block127Block171Value4 := (recoveredBlock65Block82Block96Block127Block171Value3) library.
    recoveredBlock65Block82Block96Block127Block171Value5 := (recoveredBlock65Block82Block96Block127Block171Value0) using: (recoveredBlock65Block82Block96Block127Block171Value2) from: (recoveredBlock65Block82Block96Block127Block171Value4).
    recoveredBlock65Block82Block96Block127Block171Value6 := (self) library.
    recoveredBlock65Block82Block96Block127Block171Value7 := (recoveredBlock65Block82Block96Block127Block171Value5) insertInto: (recoveredBlock65Block82Block96Block127Block171Value6).
    recoveredBlock65Block82Block96Block127Block171Value7
].
            recoveredBlock65Block82Block96Block127PC := 198.
        ].
        recoveredBlock65Block82Block96Block127Step = 198 ifTrue: [
            recoveredBlock65Block82Block96Block127Stack1 := (recoveredBlock65Block82Block96Block127Stack1) at: (recoveredBlock65Block82Block96Block127Stack2) putPointerFrom: (recoveredBlock65Block82Block96Block127Stack3).
            recoveredBlock65Block82Block96Block127PC := 200.
        ].
        recoveredBlock65Block82Block96Block127Step = 200 ifTrue: [
            recoveredBlock65Block82Block96Block127Result := recoveredBlock65Block82Block96Block127Stack1.
            recoveredBlock65Block82Block96Block127Done := true.
        ].
    ].
    recoveredBlock65Block82Block96Block127Result
].
    (recoveredBlock65Block82Block96Value9) forAllEntriesDo: (recoveredBlock65Block82Block96Value10).
    recoveredBlock65Block82Block96Value11 := recoveredLocal4.
    recoveredBlock65Block82Block96Value12 := (recoveredBlock65Block82Block96Value11) filePointer.
    recoveredBlock65Block82Block96Value12
].
    recoveredBlock65Block82Value4 := (recoveredBlock65Block82Value0) at: (recoveredBlock65Block82Value2) putPointerFrom: (recoveredBlock65Block82Value3).
    recoveredBlock65Block82Value4
].
    recoveredBlock65Value5 := (recoveredBlock65Value3) forAllEntriesDo: (recoveredBlock65Value4).
    recoveredBlock65Value5
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack0) updateDictionaryAt: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20030ad0; bytecode file offset 0x6cb68"
!EmMethodEdition methodsFor: 'recovered'!
moveFormats: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCodeIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainDictionaryAt: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) existsInLibrary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 381].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 :recoveredBlock19Arg2 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := Dictionary.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredLocal7 := recoveredBlock19Stack1.
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredLocal6 := recoveredBlock19Stack1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal8.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack2 := [:recoveredBlock19Block42Arg1 | 
    | recoveredBlock19Block42Stack0 recoveredBlock19Block42Stack1 recoveredBlock19Block42Stack2 recoveredBlock19Block42Stack3 recoveredBlock19Block42Stack4 recoveredBlock19Block42Stack5 recoveredBlock19Block42Stack6 recoveredBlock19Block42PC recoveredBlock19Block42Step recoveredBlock19Block42Done recoveredBlock19Block42Result |
    recoveredBlock19Block42Stack0 := self.
    recoveredBlock19Block42PC := 48.
    recoveredBlock19Block42Done := false.
    [recoveredBlock19Block42Done not] whileTrue: [
        recoveredBlock19Block42Step := recoveredBlock19Block42PC.
        recoveredBlock19Block42Step = 48 ifTrue: [
            recoveredBlock19Block42Stack1 := Dictionary.
            recoveredBlock19Block42PC := 50.
        ].
        recoveredBlock19Block42Step = 50 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) new.
            recoveredBlock19Block42PC := 52.
        ].
        recoveredBlock19Block42Step = 52 ifTrue: [
            recoveredLocal5 := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42PC := 55.
        ].
        recoveredBlock19Block42Step = 55 ifTrue: [
            recoveredBlock19Block42Stack1 := EmEditionsDictionary.
            recoveredBlock19Block42PC := 57.
        ].
        recoveredBlock19Block42Step = 57 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 58.
        ].
        recoveredBlock19Block42Step = 58 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) value.
            recoveredBlock19Block42PC := 60.
        ].
        recoveredBlock19Block42Step = 60 ifTrue: [
            recoveredBlock19Block42Stack3 := self.
            recoveredBlock19Block42PC := 61.
        ].
        recoveredBlock19Block42Step = 61 ifTrue: [
            recoveredBlock19Block42Stack3 := (recoveredBlock19Block42Stack3) library.
            recoveredBlock19Block42PC := 63.
        ].
        recoveredBlock19Block42Step = 63 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) using: (recoveredBlock19Block42Stack2) from: (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 65.
        ].
        recoveredBlock19Block42Step = 65 ifTrue: [
            recoveredLocal4 := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42PC := 68.
        ].
        recoveredBlock19Block42Step = 68 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredLocal4.
            recoveredBlock19Block42PC := 71.
        ].
        recoveredBlock19Block42Step = 71 ifTrue: [
            recoveredBlock19Block42Stack2 := [:recoveredBlock19Block42Block71Arg1 | 
    | recoveredBlock19Block42Block71Stack0 recoveredBlock19Block42Block71Stack1 recoveredBlock19Block42Block71Stack2 recoveredBlock19Block42Block71Stack3 recoveredBlock19Block42Block71Stack4 recoveredBlock19Block42Block71Stack5 recoveredBlock19Block42Block71Stack6 recoveredBlock19Block42Block71PC recoveredBlock19Block42Block71Step recoveredBlock19Block42Block71Done recoveredBlock19Block42Block71Result |
    recoveredBlock19Block42Block71Stack0 := self.
    recoveredBlock19Block42Block71PC := 78.
    recoveredBlock19Block42Block71Done := false.
    [recoveredBlock19Block42Block71Done not] whileTrue: [
        recoveredBlock19Block42Block71Step := recoveredBlock19Block42Block71PC.
        recoveredBlock19Block42Block71Step = 78 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := nil.
            recoveredBlock19Block42Block71PC := 79.
        ].
        recoveredBlock19Block42Block71Step = 79 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := recoveredArg1.
            recoveredBlock19Block42Block71PC := 82.
        ].
        recoveredBlock19Block42Block71Step = 82 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := recoveredBlock19Block42Block71Arg1.
            recoveredBlock19Block42Block71PC := 83.
        ].
        recoveredBlock19Block42Block71Step = 83 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := (recoveredBlock19Block42Block71Stack3) key.
            recoveredBlock19Block42Block71PC := 85.
        ].
        recoveredBlock19Block42Block71Step = 85 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) includes: (recoveredBlock19Block42Block71Stack3).
            recoveredBlock19Block42Block71PC := 87.
        ].
        recoveredBlock19Block42Block71Step = 87 ifTrue: [
            (recoveredBlock19Block42Block71Stack2) ifTrue: [recoveredBlock19Block42Block71PC := 90] ifFalse: [recoveredBlock19Block42Block71PC := 185].
        ].
        recoveredBlock19Block42Block71Step = 90 ifTrue: [
            recoveredBlock19Block42Block71PC := 91.
        ].
        recoveredBlock19Block42Block71Step = 91 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := recoveredBlock19Arg2.
            recoveredBlock19Block42Block71PC := 94.
        ].
        recoveredBlock19Block42Block71Step = 94 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := EmRecord.
            recoveredBlock19Block42Block71PC := 96.
        ].
        recoveredBlock19Block42Block71Step = 96 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := recoveredBlock19Block42Block71Arg1.
            recoveredBlock19Block42Block71PC := 97.
        ].
        recoveredBlock19Block42Block71Step = 97 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := (recoveredBlock19Block42Block71Stack3) value.
            recoveredBlock19Block42Block71PC := 99.
        ].
        recoveredBlock19Block42Block71Step = 99 ifTrue: [
            recoveredBlock19Block42Block71Stack4 := self.
            recoveredBlock19Block42Block71PC := 100.
        ].
        recoveredBlock19Block42Block71Step = 100 ifTrue: [
            recoveredBlock19Block42Block71Stack4 := (recoveredBlock19Block42Block71Stack4) library.
            recoveredBlock19Block42Block71PC := 102.
        ].
        recoveredBlock19Block42Block71Step = 102 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) using: (recoveredBlock19Block42Block71Stack3) from: (recoveredBlock19Block42Block71Stack4).
            recoveredBlock19Block42Block71PC := 104.
        ].
        recoveredBlock19Block42Block71Step = 104 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) collection.
            recoveredBlock19Block42Block71PC := 106.
        ].
        recoveredBlock19Block42Block71Step = 106 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := recoveredBlock19Block42Block71Stack2.
            recoveredBlock19Block42Block71PC := 107.
        ].
        recoveredBlock19Block42Block71Step = 107 ifTrue: [
            recoveredLocal3 := recoveredBlock19Block42Block71Stack3.
            recoveredBlock19Block42Block71PC := 110.
        ].
        recoveredBlock19Block42Block71Step = 110 ifTrue: [
            (recoveredBlock19Block42Block71Stack1) nextPutAll: (recoveredBlock19Block42Block71Stack2).
            recoveredBlock19Block42Block71PC := 112.
        ].
        recoveredBlock19Block42Block71Step = 112 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := recoveredLocal5.
            recoveredBlock19Block42Block71PC := 115.
        ].
        recoveredBlock19Block42Block71Step = 115 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := recoveredBlock19Block42Block71Arg1.
            recoveredBlock19Block42Block71PC := 116.
        ].
        recoveredBlock19Block42Block71Step = 116 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) key.
            recoveredBlock19Block42Block71PC := 118.
        ].
        recoveredBlock19Block42Block71Step = 118 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := EmLibraryPointer.
            recoveredBlock19Block42Block71PC := 120.
        ].
        recoveredBlock19Block42Block71Step = 120 ifTrue: [
            recoveredBlock19Block42Block71Stack4 := recoveredLocal6.
            recoveredBlock19Block42Block71PC := 123.
        ].
        recoveredBlock19Block42Block71Step = 123 ifTrue: [
            recoveredBlock19Block42Block71Stack5 := recoveredArg2.
            recoveredBlock19Block42Block71PC := 126.
        ].
        recoveredBlock19Block42Block71Step = 126 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := (recoveredBlock19Block42Block71Stack3) fromNumber: (recoveredBlock19Block42Block71Stack4) in: (recoveredBlock19Block42Block71Stack5).
            recoveredBlock19Block42Block71PC := 128.
        ].
        recoveredBlock19Block42Block71Step = 128 ifTrue: [
            (recoveredBlock19Block42Block71Stack1) at: (recoveredBlock19Block42Block71Stack2) put: (recoveredBlock19Block42Block71Stack3).
            recoveredBlock19Block42Block71PC := 130.
        ].
        recoveredBlock19Block42Block71Step = 130 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := recoveredLocal6.
            recoveredBlock19Block42Block71PC := 133.
        ].
        recoveredBlock19Block42Block71Step = 133 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := recoveredLocal3.
            recoveredBlock19Block42Block71PC := 136.
        ].
        recoveredBlock19Block42Block71Step = 136 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) size.
            recoveredBlock19Block42Block71PC := 138.
        ].
        recoveredBlock19Block42Block71Step = 138 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := (recoveredBlock19Block42Block71Stack1) + (recoveredBlock19Block42Block71Stack2).
            recoveredBlock19Block42Block71PC := 139.
        ].
        recoveredBlock19Block42Block71Step = 139 ifTrue: [
            recoveredLocal1 := recoveredBlock19Block42Block71Stack1.
            recoveredBlock19Block42Block71PC := 142.
        ].
        recoveredBlock19Block42Block71Step = 142 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := recoveredArg2.
            recoveredBlock19Block42Block71PC := 145.
        ].
        recoveredBlock19Block42Block71Step = 145 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := recoveredLocal1.
            recoveredBlock19Block42Block71PC := 148.
        ].
        recoveredBlock19Block42Block71Step = 148 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := (recoveredBlock19Block42Block71Stack1) alignFilePosition: (recoveredBlock19Block42Block71Stack2).
            recoveredBlock19Block42Block71PC := 150.
        ].
        recoveredBlock19Block42Block71Step = 150 ifTrue: [
            recoveredLocal6 := recoveredBlock19Block42Block71Stack1.
            recoveredBlock19Block42Block71PC := 153.
        ].
        recoveredBlock19Block42Block71Step = 153 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := nil.
            recoveredBlock19Block42Block71PC := 154.
        ].
        recoveredBlock19Block42Block71Step = 154 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := recoveredLocal6.
            recoveredBlock19Block42Block71PC := 157.
        ].
        recoveredBlock19Block42Block71Step = 157 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := recoveredLocal1.
            recoveredBlock19Block42Block71PC := 160.
        ].
        recoveredBlock19Block42Block71Step = 160 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) - (recoveredBlock19Block42Block71Stack3).
            recoveredBlock19Block42Block71PC := 161.
        ].
        recoveredBlock19Block42Block71Step = 161 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := 0.
            recoveredBlock19Block42Block71PC := 163.
        ].
        recoveredBlock19Block42Block71Step = 163 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) > (recoveredBlock19Block42Block71Stack3).
            recoveredBlock19Block42Block71PC := 164.
        ].
        recoveredBlock19Block42Block71Step = 164 ifTrue: [
            (recoveredBlock19Block42Block71Stack2) ifTrue: [recoveredBlock19Block42Block71PC := 168] ifFalse: [recoveredBlock19Block42Block71PC := 185].
        ].
        recoveredBlock19Block42Block71Step = 168 ifTrue: [
            recoveredBlock19Block42Block71PC := 169.
        ].
        recoveredBlock19Block42Block71Step = 169 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := recoveredBlock19Arg2.
            recoveredBlock19Block42Block71PC := 172.
        ].
        recoveredBlock19Block42Block71Step = 172 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := ByteArray.
            recoveredBlock19Block42Block71PC := 174.
        ].
        recoveredBlock19Block42Block71Step = 174 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := recoveredLocal6.
            recoveredBlock19Block42Block71PC := 177.
        ].
        recoveredBlock19Block42Block71Step = 177 ifTrue: [
            recoveredBlock19Block42Block71Stack4 := recoveredLocal1.
            recoveredBlock19Block42Block71PC := 180.
        ].
        recoveredBlock19Block42Block71Step = 180 ifTrue: [
            recoveredBlock19Block42Block71Stack3 := (recoveredBlock19Block42Block71Stack3) - (recoveredBlock19Block42Block71Stack4).
            recoveredBlock19Block42Block71PC := 181.
        ].
        recoveredBlock19Block42Block71Step = 181 ifTrue: [
            recoveredBlock19Block42Block71Stack2 := (recoveredBlock19Block42Block71Stack2) new: (recoveredBlock19Block42Block71Stack3).
            recoveredBlock19Block42Block71PC := 183.
        ].
        recoveredBlock19Block42Block71Step = 183 ifTrue: [
            recoveredBlock19Block42Block71Stack1 := (recoveredBlock19Block42Block71Stack1) nextPutAll: (recoveredBlock19Block42Block71Stack2).
            recoveredBlock19Block42Block71PC := 185.
        ].
        recoveredBlock19Block42Block71Step = 185 ifTrue: [
            recoveredBlock19Block42Block71Result := recoveredBlock19Block42Block71Stack1.
            recoveredBlock19Block42Block71Done := true.
        ].
    ].
    recoveredBlock19Block42Block71Result
].
            recoveredBlock19Block42PC := 186.
        ].
        recoveredBlock19Block42Step = 186 ifTrue: [
            (recoveredBlock19Block42Stack1) forAllEntriesDo: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 188.
        ].
        recoveredBlock19Block42Step = 188 ifTrue: [
            recoveredBlock19Block42Stack1 := nil.
            recoveredBlock19Block42PC := 189.
        ].
        recoveredBlock19Block42Step = 189 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal5.
            recoveredBlock19Block42PC := 192.
        ].
        recoveredBlock19Block42Step = 192 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) notEmpty.
            recoveredBlock19Block42PC := 194.
        ].
        recoveredBlock19Block42Step = 194 ifTrue: [
            (recoveredBlock19Block42Stack2) ifTrue: [recoveredBlock19Block42PC := 198] ifFalse: [recoveredBlock19Block42PC := 307].
        ].
        recoveredBlock19Block42Step = 198 ifTrue: [
            recoveredBlock19Block42PC := 199.
        ].
        recoveredBlock19Block42Step = 199 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredLocal4.
            recoveredBlock19Block42PC := 202.
        ].
        recoveredBlock19Block42Step = 202 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) class.
            recoveredBlock19Block42PC := 204.
        ].
        recoveredBlock19Block42Step = 204 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal4.
            recoveredBlock19Block42PC := 207.
        ].
        recoveredBlock19Block42Step = 207 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) collection.
            recoveredBlock19Block42PC := 209.
        ].
        recoveredBlock19Block42Step = 209 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) size.
            recoveredBlock19Block42PC := 211.
        ].
        recoveredBlock19Block42Step = 211 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) new: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 213.
        ].
        recoveredBlock19Block42Step = 213 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42PC := 214.
        ].
        recoveredBlock19Block42Step = 214 ifTrue: [
            recoveredLocal2 := recoveredBlock19Block42Stack2.
            recoveredBlock19Block42PC := 217.
        ].
        recoveredBlock19Block42Step = 217 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal5.
            recoveredBlock19Block42PC := 220.
        ].
        recoveredBlock19Block42Step = 220 ifTrue: [
            (recoveredBlock19Block42Stack1) initializeFrom: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 222.
        ].
        recoveredBlock19Block42Step = 222 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredBlock19Arg2.
            recoveredBlock19Block42PC := 225.
        ].
        recoveredBlock19Block42Step = 225 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal2.
            recoveredBlock19Block42PC := 228.
        ].
        recoveredBlock19Block42Step = 228 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) collection.
            recoveredBlock19Block42PC := 230.
        ].
        recoveredBlock19Block42Step = 230 ifTrue: [
            (recoveredBlock19Block42Stack1) nextPutAll: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 232.
        ].
        recoveredBlock19Block42Step = 232 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredLocal7.
            recoveredBlock19Block42PC := 235.
        ].
        recoveredBlock19Block42Step = 235 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredBlock19Block42Arg1.
            recoveredBlock19Block42PC := 236.
        ].
        recoveredBlock19Block42Step = 236 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) name.
            recoveredBlock19Block42PC := 238.
        ].
        recoveredBlock19Block42Step = 238 ifTrue: [
            recoveredBlock19Block42Stack3 := EmLibraryPointer.
            recoveredBlock19Block42PC := 240.
        ].
        recoveredBlock19Block42Step = 240 ifTrue: [
            recoveredBlock19Block42Stack4 := recoveredLocal6.
            recoveredBlock19Block42PC := 243.
        ].
        recoveredBlock19Block42Step = 243 ifTrue: [
            recoveredBlock19Block42Stack5 := recoveredArg2.
            recoveredBlock19Block42PC := 246.
        ].
        recoveredBlock19Block42Step = 246 ifTrue: [
            recoveredBlock19Block42Stack3 := (recoveredBlock19Block42Stack3) fromNumber: (recoveredBlock19Block42Stack4) in: (recoveredBlock19Block42Stack5).
            recoveredBlock19Block42PC := 248.
        ].
        recoveredBlock19Block42Step = 248 ifTrue: [
            (recoveredBlock19Block42Stack1) at: (recoveredBlock19Block42Stack2) put: (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 250.
        ].
        recoveredBlock19Block42Step = 250 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredLocal6.
            recoveredBlock19Block42PC := 253.
        ].
        recoveredBlock19Block42Step = 253 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal2.
            recoveredBlock19Block42PC := 256.
        ].
        recoveredBlock19Block42Step = 256 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) collection.
            recoveredBlock19Block42PC := 258.
        ].
        recoveredBlock19Block42Step = 258 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) size.
            recoveredBlock19Block42PC := 260.
        ].
        recoveredBlock19Block42Step = 260 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) + (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 261.
        ].
        recoveredBlock19Block42Step = 261 ifTrue: [
            recoveredLocal1 := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42PC := 264.
        ].
        recoveredBlock19Block42Step = 264 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredArg2.
            recoveredBlock19Block42PC := 267.
        ].
        recoveredBlock19Block42Step = 267 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal1.
            recoveredBlock19Block42PC := 270.
        ].
        recoveredBlock19Block42Step = 270 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) alignFilePosition: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 272.
        ].
        recoveredBlock19Block42Step = 272 ifTrue: [
            recoveredLocal6 := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42PC := 275.
        ].
        recoveredBlock19Block42Step = 275 ifTrue: [
            recoveredBlock19Block42Stack1 := nil.
            recoveredBlock19Block42PC := 276.
        ].
        recoveredBlock19Block42Step = 276 ifTrue: [
            recoveredBlock19Block42Stack2 := recoveredLocal6.
            recoveredBlock19Block42PC := 279.
        ].
        recoveredBlock19Block42Step = 279 ifTrue: [
            recoveredBlock19Block42Stack3 := recoveredLocal1.
            recoveredBlock19Block42PC := 282.
        ].
        recoveredBlock19Block42Step = 282 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) - (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 283.
        ].
        recoveredBlock19Block42Step = 283 ifTrue: [
            recoveredBlock19Block42Stack3 := 0.
            recoveredBlock19Block42PC := 285.
        ].
        recoveredBlock19Block42Step = 285 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) > (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 286.
        ].
        recoveredBlock19Block42Step = 286 ifTrue: [
            (recoveredBlock19Block42Stack2) ifTrue: [recoveredBlock19Block42PC := 290] ifFalse: [recoveredBlock19Block42PC := 307].
        ].
        recoveredBlock19Block42Step = 290 ifTrue: [
            recoveredBlock19Block42PC := 291.
        ].
        recoveredBlock19Block42Step = 291 ifTrue: [
            recoveredBlock19Block42Stack1 := recoveredBlock19Arg2.
            recoveredBlock19Block42PC := 294.
        ].
        recoveredBlock19Block42Step = 294 ifTrue: [
            recoveredBlock19Block42Stack2 := ByteArray.
            recoveredBlock19Block42PC := 296.
        ].
        recoveredBlock19Block42Step = 296 ifTrue: [
            recoveredBlock19Block42Stack3 := recoveredLocal6.
            recoveredBlock19Block42PC := 299.
        ].
        recoveredBlock19Block42Step = 299 ifTrue: [
            recoveredBlock19Block42Stack4 := recoveredLocal1.
            recoveredBlock19Block42PC := 302.
        ].
        recoveredBlock19Block42Step = 302 ifTrue: [
            recoveredBlock19Block42Stack3 := (recoveredBlock19Block42Stack3) - (recoveredBlock19Block42Stack4).
            recoveredBlock19Block42PC := 303.
        ].
        recoveredBlock19Block42Step = 303 ifTrue: [
            recoveredBlock19Block42Stack2 := (recoveredBlock19Block42Stack2) new: (recoveredBlock19Block42Stack3).
            recoveredBlock19Block42PC := 305.
        ].
        recoveredBlock19Block42Step = 305 ifTrue: [
            recoveredBlock19Block42Stack1 := (recoveredBlock19Block42Stack1) nextPutAll: (recoveredBlock19Block42Stack2).
            recoveredBlock19Block42PC := 307.
        ].
        recoveredBlock19Block42Step = 307 ifTrue: [
            recoveredBlock19Block42Result := recoveredBlock19Block42Stack1.
            recoveredBlock19Block42Done := true.
        ].
    ].
    recoveredBlock19Block42Result
].
            recoveredBlock19PC := 308.
        ].
        recoveredBlock19Step = 308 ifTrue: [
            (recoveredBlock19Stack1) forAllEntriesDo: (recoveredBlock19Stack2).
            recoveredBlock19PC := 310.
        ].
        recoveredBlock19Step = 310 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal7.
            recoveredBlock19PC := 313.
        ].
        recoveredBlock19Step = 313 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isEmpty.
            recoveredBlock19PC := 315.
        ].
        recoveredBlock19Step = 315 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 318] ifFalse: [recoveredBlock19PC := 330].
        ].
        recoveredBlock19Step = 318 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 319.
        ].
        recoveredBlock19Step = 319 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 320.
        ].
        recoveredBlock19Step = 320 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) objectCodeIndex.
            recoveredBlock19PC := 321.
        ].
        recoveredBlock19Step = 321 ifTrue: [
            recoveredBlock19Stack3 := EmLibraryPointer.
            recoveredBlock19PC := 323.
        ].
        recoveredBlock19Step = 323 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) void.
            recoveredBlock19PC := 325.
        ].
        recoveredBlock19Step = 325 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) putFilePointer: (recoveredBlock19Stack3).
            recoveredBlock19PC := 327.
        ].
        recoveredBlock19Step = 327 ifTrue: [
            recoveredBlock19PC := 378.
        ].
        recoveredBlock19Step = 330 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal8.
            recoveredBlock19PC := 333.
        ].
        recoveredBlock19Step = 333 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) class.
            recoveredBlock19PC := 335.
        ].
        recoveredBlock19Step = 335 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal8.
            recoveredBlock19PC := 338.
        ].
        recoveredBlock19Step = 338 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) collection.
            recoveredBlock19PC := 340.
        ].
        recoveredBlock19Step = 340 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) size.
            recoveredBlock19PC := 342.
        ].
        recoveredBlock19Step = 342 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) new: (recoveredBlock19Stack2).
            recoveredBlock19PC := 344.
        ].
        recoveredBlock19Step = 344 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 345.
        ].
        recoveredBlock19Step = 345 ifTrue: [
            recoveredLocal2 := recoveredBlock19Stack2.
            recoveredBlock19PC := 348.
        ].
        recoveredBlock19Step = 348 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal7.
            recoveredBlock19PC := 351.
        ].
        recoveredBlock19Step = 351 ifTrue: [
            (recoveredBlock19Stack1) initializeFrom: (recoveredBlock19Stack2).
            recoveredBlock19PC := 353.
        ].
        recoveredBlock19Step = 353 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg2.
            recoveredBlock19PC := 356.
        ].
        recoveredBlock19Step = 356 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal2.
            recoveredBlock19PC := 359.
        ].
        recoveredBlock19Step = 359 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) collection.
            recoveredBlock19PC := 361.
        ].
        recoveredBlock19Step = 361 ifTrue: [
            (recoveredBlock19Stack1) nextPutAll: (recoveredBlock19Stack2).
            recoveredBlock19PC := 363.
        ].
        recoveredBlock19Step = 363 ifTrue: [
            recoveredBlock19Stack1 := self.
            recoveredBlock19PC := 364.
        ].
        recoveredBlock19Step = 364 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 365.
        ].
        recoveredBlock19Step = 365 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) objectCodeIndex.
            recoveredBlock19PC := 366.
        ].
        recoveredBlock19Step = 366 ifTrue: [
            recoveredBlock19Stack3 := EmLibraryPointer.
            recoveredBlock19PC := 368.
        ].
        recoveredBlock19Step = 368 ifTrue: [
            recoveredBlock19Stack4 := recoveredLocal6.
            recoveredBlock19PC := 371.
        ].
        recoveredBlock19Step = 371 ifTrue: [
            recoveredBlock19Stack5 := recoveredArg2.
            recoveredBlock19PC := 374.
        ].
        recoveredBlock19Step = 374 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) fromNumber: (recoveredBlock19Stack4) in: (recoveredBlock19Stack5).
            recoveredBlock19PC := 376.
        ].
        recoveredBlock19Step = 376 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) at: (recoveredBlock19Stack2) putFilePointer: (recoveredBlock19Stack3).
            recoveredBlock19PC := 378.
        ].
        recoveredBlock19Step = 378 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack0) multipleInsertUsing: (recoveredStack1).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20031118; bytecode file offset 0x6d1c8"
!EmMethodEdition methodsFor: 'recovered'!
linkIn: recoveredArg1 named: recoveredArg2 ifMustCompile: recoveredArg3 ifNoCode: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) mustBeCompiled.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) useLinkerFor: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) useCachedByteCodesFor: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := Linker.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) collection.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) offsetOfElement: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkCodeIn: (recoveredStack1) at: (recoveredStack2) for: (recoveredStack3) named: (recoveredStack4).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := Linker.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaredGlobals.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := Linker.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaredPoolVariables.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectCodeIndex.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainDictionaryAt: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteCodeType.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := EmEditionsDictionary.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredArg1.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack2 := self.
            recoveredBlock103PC := 114.
        ].
        recoveredBlock103Step = 114 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) source.
            recoveredBlock103PC := 115.
        ].
        recoveredBlock103Step = 115 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Stack2.
            recoveredBlock103PC := 116.
        ].
        recoveredBlock103Step = 116 ifTrue: [
            recoveredLocal3 := recoveredBlock103Stack3.
            recoveredBlock103PC := 119.
        ].
        recoveredBlock103Step = 119 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) containsCompileTimeConstant: (recoveredBlock103Stack2).
            recoveredBlock103PC := 121.
        ].
        recoveredBlock103Step = 121 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 124] ifFalse: [recoveredBlock103PC := 133].
        ].
        recoveredBlock103Step = 124 ifTrue: [
            recoveredBlock103Stack1 := recoveredArg3.
            recoveredBlock103PC := 127.
        ].
        recoveredBlock103Step = 127 ifTrue: [
            recoveredBlock103Stack2 := recoveredLocal3.
            recoveredBlock103PC := 130.
        ].
        recoveredBlock103Step = 130 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) value: (recoveredBlock103Stack2).
            recoveredBlock103PC := 132.
        ].
        recoveredBlock103Step = 132 ifTrue: [
            ^recoveredBlock103Stack1
        ].
        recoveredBlock103Step = 133 ifTrue: [
            recoveredBlock103Stack1 := recoveredArg4.
            recoveredBlock103PC := 136.
        ].
        recoveredBlock103Step = 136 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) value.
            recoveredBlock103PC := 138.
        ].
        recoveredBlock103Step = 138 ifTrue: [
            ^recoveredBlock103Stack1
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainRecordAt: (recoveredStack1) ofType: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodFormatTimeStamp.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := EmRecord.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock150Stack0 recoveredBlock150Stack1 recoveredBlock150Stack2 recoveredBlock150Stack3 recoveredBlock150Stack4 recoveredBlock150PC recoveredBlock150Step recoveredBlock150Done recoveredBlock150Result |
    recoveredBlock150Stack0 := self.
    recoveredBlock150PC := 156.
    recoveredBlock150Done := false.
    [recoveredBlock150Done not] whileTrue: [
        recoveredBlock150Step := recoveredBlock150PC.
        recoveredBlock150Step = 156 ifTrue: [
            recoveredBlock150Stack1 := recoveredArg1.
            recoveredBlock150PC := 159.
        ].
        recoveredBlock150Step = 159 ifTrue: [
            recoveredBlock150Stack2 := self.
            recoveredBlock150PC := 160.
        ].
        recoveredBlock150Step = 160 ifTrue: [
            recoveredBlock150Stack2 := (recoveredBlock150Stack2) source.
            recoveredBlock150PC := 161.
        ].
        recoveredBlock150Step = 161 ifTrue: [
            recoveredBlock150Stack3 := recoveredBlock150Stack2.
            recoveredBlock150PC := 162.
        ].
        recoveredBlock150Step = 162 ifTrue: [
            recoveredLocal3 := recoveredBlock150Stack3.
            recoveredBlock150PC := 165.
        ].
        recoveredBlock150Step = 165 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) containsCompileTimeConstant: (recoveredBlock150Stack2).
            recoveredBlock150PC := 167.
        ].
        recoveredBlock150Step = 167 ifTrue: [
            (recoveredBlock150Stack1) ifTrue: [recoveredBlock150PC := 170] ifFalse: [recoveredBlock150PC := 182].
        ].
        recoveredBlock150Step = 170 ifTrue: [
            recoveredBlock150Stack1 := recoveredArg3.
            recoveredBlock150PC := 173.
        ].
        recoveredBlock150Step = 173 ifTrue: [
            recoveredBlock150Stack2 := recoveredLocal3.
            recoveredBlock150PC := 176.
        ].
        recoveredBlock150Step = 176 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) value: (recoveredBlock150Stack2).
            recoveredBlock150PC := 178.
        ].
        recoveredBlock150Step = 178 ifTrue: [
            recoveredBlock150PC := 187.
        ].
        recoveredBlock150Step = 182 ifTrue: [
            recoveredBlock150Stack1 := recoveredArg4.
            recoveredBlock150PC := 185.
        ].
        recoveredBlock150Step = 185 ifTrue: [
            recoveredBlock150Stack1 := (recoveredBlock150Stack1) value.
            recoveredBlock150PC := 187.
        ].
        recoveredBlock150Step = 187 ifTrue: [
            ^recoveredBlock150Stack1
        ].
    ].
    recoveredBlock150Result
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) obtainRecordAt: (recoveredStack1) ofType: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := Linker.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := (recoveredStack1) collection.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) startPosition.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkCodeIn: (recoveredStack1) at: (recoveredStack2) for: (recoveredStack3) named: (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := Linker.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaredGlobals.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := Linker.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) declaredPoolVariables.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 328] ifFalse: [recoveredPC := 238].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := [:recoveredBlock241Arg1 | 
    | recoveredBlock241Value0 recoveredBlock241Value1 recoveredBlock241Value2 recoveredBlock241Value3 recoveredBlock241Value4 recoveredBlock241Value5 recoveredBlock241Value6 recoveredBlock241Value7 recoveredBlock241Value8 |
    recoveredBlock241Value0 := EmImageSupport.
    recoveredBlock241Value1 := (recoveredBlock241Value0) errorReporter.
    recoveredBlock241Value2 := Array.
    recoveredBlock241Value3 := recoveredBlock241Arg1.
    recoveredBlock241Value4 := recoveredArg1.
    recoveredBlock241Value5 := (recoveredBlock241Value4) name.
    recoveredBlock241Value6 := recoveredArg2.
    recoveredBlock241Value7 := (recoveredBlock241Value2) with: (recoveredBlock241Value3) with: (recoveredBlock241Value5) with: (recoveredBlock241Value6).
    recoveredBlock241Value8 := (recoveredBlock241Value1) logError: (91) withParms: (recoveredBlock241Value7).
    recoveredBlock241Value8
].
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := [:recoveredBlock278Arg1 | 
    | recoveredBlock278Local1 recoveredBlock278Local2 recoveredBlock278Value0 recoveredBlock278Value1 recoveredBlock278Value2 recoveredBlock278Value3 recoveredBlock278Value4 recoveredBlock278Value5 recoveredBlock278Value6 recoveredBlock278Value7 recoveredBlock278Value8 recoveredBlock278Value9 recoveredBlock278Value10 recoveredBlock278Value11 recoveredBlock278Value12 recoveredBlock278Value13 |
    recoveredBlock278Value0 := recoveredBlock278Arg1.
    recoveredBlock278Value1 := (recoveredBlock278Value0) at: (1).
    recoveredBlock278Local2 := recoveredBlock278Value1.
    recoveredBlock278Value2 := recoveredBlock278Arg1.
    recoveredBlock278Value3 := (recoveredBlock278Value2) at: (2).
    recoveredBlock278Local1 := recoveredBlock278Value3.
    recoveredBlock278Value4 := EmImageSupport.
    recoveredBlock278Value5 := (recoveredBlock278Value4) errorReporter.
    recoveredBlock278Value6 := Array.
    recoveredBlock278Value7 := recoveredBlock278Local2.
    recoveredBlock278Value8 := recoveredBlock278Local1.
    recoveredBlock278Value9 := recoveredArg1.
    recoveredBlock278Value10 := (recoveredBlock278Value9) name.
    recoveredBlock278Value11 := recoveredArg2.
    recoveredBlock278Value12 := (recoveredBlock278Value6) with: (recoveredBlock278Value7) with: (recoveredBlock278Value8) with: (recoveredBlock278Value10) with: (recoveredBlock278Value11).
    recoveredBlock278Value13 := (recoveredBlock278Value5) logError: (92) withParms: (recoveredBlock278Value12).
    recoveredBlock278Value13
].
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 388.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack0 := (recoveredStack0) source.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 338].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsCompileTimeConstant: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 365].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) compile: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 388] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack0) filePointer: (recoveredStack1).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0) doesCompile.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200317c0; bytecode file offset 0x6d8b0"
!EmMethodEdition methodsFor: 'recovered'!
for: recoveredArg1 at: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedUserFields.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendedSourceKey.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := EmCompressor.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) compressString: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) library.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGateway.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ByteCodes.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterAt: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := Decoder.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodClass.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) canMethodBeLinked: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 129.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := Decoder.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodClass.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) decode: (recoveredStack1) fromClass: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) byteSize.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 65536.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultLength.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteSize.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteCodeType.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteSize.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteSize.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := (recoveredStack3) headerSize.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) class.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := (recoveredStack4) defaultLength.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := (recoveredStack4) byteSize.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := (recoveredStack4) byteSize.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) byteCodeType.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := (recoveredStack4) byteSize.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := (recoveredStack4) byteSize.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) collection: (recoveredStack2).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) endPosition.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) initializeToUse: (recoveredStack1).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) mustCompile: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := (recoveredStack2) timeStampIndex.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) previousIndex.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) initialMFTSIndex.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodClass.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := (recoveredStack3) methodFormatTimeStamp.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putTimeStamp: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) startOfOffsets.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultLength.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) putWord: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) element: (recoveredStack1) is: (recoveredStack2).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 282] ifFalse: [recoveredPC := 404].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) noLongerExistsInLibrary.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := [:recoveredBlock293Arg1 | 
    | recoveredBlock293Value0 recoveredBlock293Value1 recoveredBlock293Value2 recoveredBlock293Value3 recoveredBlock293Value4 |
    recoveredBlock293Value0 := EmUserFieldRecord.
    recoveredBlock293Value1 := recoveredLocal5.
    recoveredBlock293Value2 := (recoveredBlock293Value0) on: (recoveredBlock293Value1).
    recoveredBlock293Value3 := (self) library.
    recoveredBlock293Value4 := (recoveredBlock293Value2) insertInto: (recoveredBlock293Value3).
    recoveredBlock293Value4
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putPointerFrom: (recoveredStack2).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementTypeIndex.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := (recoveredStack0) wordAt: (recoveredStack1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsByteCharacters.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 367] ifFalse: [recoveredPC := 354].
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementTypeIndex.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack3 := 65533.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitAnd: (recoveredStack3).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putWord: (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 390.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack0) stopIfNotWordString: (recoveredStack1).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementTypeIndex.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := (recoveredStack2) setBit: (recoveredStack3).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putWord: (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack0) element: (recoveredStack1) is: (recoveredStack2).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredPC := 453.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack0) element: (recoveredStack1) is: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 424] ifFalse: [recoveredPC := 442].
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeKey: (recoveredStack3).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredPC := 453.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritedFieldsIndex.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack2 := (recoveredStack2) insert.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) putFilePointer: (recoveredStack2).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteCodeType.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack1) element: (recoveredStack2) is: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            (recoveredStack1) element: (recoveredStack2) is: (recoveredStack3).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

