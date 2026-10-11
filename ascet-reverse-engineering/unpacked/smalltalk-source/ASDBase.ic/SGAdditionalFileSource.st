"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20042074; bytecode file offset 0x93e928"
!SGAdditionalFileSource methodsFor: 'recovered'!
hasCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := cSourceHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200420d4; bytecode file offset 0x93e990"
!SGAdditionalFileSource methodsFor: 'recovered'!
hasHSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hSourceHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ddd0; bytecode file offset 0x96a9dc"
!SGAdditionalFileSource methodsFor: 'recovered'!
cSourceHandle
    | recoveredValue0 |
    recoveredValue0 := cSourceHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e3bc; bytecode file offset 0x96af48"
!SGAdditionalFileSource methodsFor: 'recovered'!
hSourceHandle
    | recoveredValue0 |
    recoveredValue0 := hSourceHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ecf4; bytecode file offset 0x96b8a0"
!SGAdditionalFileSource methodsFor: 'recovered'!
oSourceHandle
    | recoveredValue0 |
    recoveredValue0 := oSourceHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078d64; bytecode file offset 0x9757c8"
!SGAdditionalFileSource methodsFor: 'recovered'!
isAdditionalFileSource
    ^true
! !

"ASDBase.ic method 0x20084bf4; bytecode file offset 0x981ca4"
!SGAdditionalFileSource methodsFor: 'recovered'!
collectModuleFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) collectCCodeFiles: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20095740; bytecode file offset 0x991ffc"
!SGAdditionalFileSource methodsFor: 'recovered'!
numOfObjectFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) objectCodeFiles.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201738d4; bytecode file offset 0xa70244"
!SGAdditionalFileSource methodsFor: 'recovered'!
cCodeFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cSourceHandle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) cCodeFiles.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201738f0; bytecode file offset 0xa70244"
!SGAdditionalFileSource methodsFor: 'recovered'!
objectCodeFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oSourceHandle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) objectCodeFiles.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017390c; bytecode file offset 0xa70244"
!SGAdditionalFileSource methodsFor: 'recovered'!
asmCodeFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) cSourceHandle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) asmCodeFiles.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20173944; bytecode file offset 0xa70244"
!SGAdditionalFileSource methodsFor: 'recovered'!
hCodeFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) hSourceHandle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) hCodeFiles.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2017397c; bytecode file offset 0xa70244"
!SGAdditionalFileSource methodsFor: 'recovered'!
libraryFiles
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oSourceHandle.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) libraryFiles.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201870f4; bytecode file offset 0xa83a18"
!SGAdditionalFileSource methodsFor: 'recovered'!
collectObjectFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objectCodeFiles.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) fileNameOnly.
    recoveredBlock5Value3 := (recoveredBlock5Value0) add: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018710c; bytecode file offset 0xa83a18"
!SGAdditionalFileSource methodsFor: 'recovered'!
collectCCodeFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cCodeFiles.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) fileNameOnly.
    recoveredBlock5Value3 := (recoveredBlock5Value0) add: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20187124; bytecode file offset 0xa83a18"
!SGAdditionalFileSource methodsFor: 'recovered'!
collectASMCodeFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asmCodeFiles.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) fileNameOnly.
    recoveredBlock5Value3 := (recoveredBlock5Value0) add: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018713c; bytecode file offset 0xa83a18"
!SGAdditionalFileSource methodsFor: 'recovered'!
collectLibraryFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) libraryFiles.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) fileName.
    recoveredBlock5Value3 := (recoveredBlock5Value0) add: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20187154; bytecode file offset 0xa83a18"
!SGAdditionalFileSource methodsFor: 'recovered'!
collectHCodeFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hCodeFiles.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value1) fileNameOnly.
    recoveredBlock5Value3 := (recoveredBlock5Value0) add: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20228d48; bytecode file offset 0xb2560c"
!SGAdditionalFileSource methodsFor: 'recovered'!
cSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    cSourceHandle := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) cCodeFiles.
    recoveredBlock10Value2 := [:recoveredBlock10Block20Arg1 | 
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 |
    recoveredBlock10Block20Value0 := recoveredBlock10Block20Arg1.
    recoveredBlock10Block20Value1 := (self) addFileName: (recoveredBlock10Block20Value0).
    recoveredBlock10Block20Value1
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20228d84; bytecode file offset 0xb25648"
!SGAdditionalFileSource methodsFor: 'recovered'!
hSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    hSourceHandle := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredArg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) hCodeFiles.
    recoveredBlock10Value2 := [:recoveredBlock10Block20Arg1 | 
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 |
    recoveredBlock10Block20Value0 := recoveredBlock10Block20Arg1.
    recoveredBlock10Block20Value1 := (self) addFileName: (recoveredBlock10Block20Value0).
    recoveredBlock10Block20Value1
].
    recoveredBlock10Value3 := (recoveredBlock10Value1) do: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2046e5a4; bytecode file offset 0xd6aeb4"
!SGAdditionalFileSource methodsFor: 'recovered'!
storeObjectCode: recoveredArg1 target: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := objRead.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) cCodeFiles.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asmCodeFiles.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) hostAccess.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack1 := self.
            recoveredBlock34PC := 43.
        ].
        recoveredBlock34Step = 43 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) hostAccess.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) getWorkingPath.
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            recoveredBlock34Stack2 := recoveredArg2.
            recoveredBlock34PC := 50.
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg1.
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) fileNameOnly.
            recoveredBlock34PC := 53.
        ].
        recoveredBlock34Step = 53 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) oFileName: (recoveredBlock34Stack3).
            recoveredBlock34PC := 55.
        ].
        recoveredBlock34Step = 55 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Stack2.
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredLocal2 := recoveredBlock34Stack3.
            recoveredBlock34PC := 59.
        ].
        recoveredBlock34Step = 59 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) , (recoveredBlock34Stack2).
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) checkExistency: (recoveredBlock34Stack1).
            recoveredBlock34PC := 63.
        ].
        recoveredBlock34Step = 63 ifTrue: [
            (recoveredBlock34Stack0) ifTrue: [recoveredBlock34PC := 66] ifFalse: [recoveredBlock34PC := 78].
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack0 := recoveredLocal3.
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal2.
            recoveredBlock34PC := 72.
        ].
        recoveredBlock34Step = 72 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) add: (recoveredBlock34Stack1).
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34PC := 92.
        ].
        recoveredBlock34Step = 78 ifTrue: [
            recoveredBlock34Stack0 := self.
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredBlock34Stack1 := TGReturnMessage.
            recoveredBlock34PC := 81.
        ].
        recoveredBlock34Step = 81 ifTrue: [
            recoveredBlock34Stack2 := 'Missing object file '.
            recoveredBlock34PC := 83.
        ].
        recoveredBlock34Step = 83 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal2.
            recoveredBlock34PC := 86.
        ].
        recoveredBlock34Step = 86 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) , (recoveredBlock34Stack3).
            recoveredBlock34PC := 88.
        ].
        recoveredBlock34Step = 88 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) createMessage: (recoveredBlock34Stack2).
            recoveredBlock34PC := 90.
        ].
        recoveredBlock34Step = 90 ifTrue: [
            recoveredBlock34Stack0 := (recoveredBlock34Stack0) addError: (recoveredBlock34Stack1).
            recoveredBlock34PC := 92.
        ].
        recoveredBlock34Step = 92 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack0.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) errors.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSourceHandle.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) buildCache.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) storeObjectCode: (recoveredStack1) buildEnvironment: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            objRead := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

