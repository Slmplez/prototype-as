"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023e28; bytecode file offset 0x92209c"
!TGCompileObject methodsFor: 'recovered'!
description
    ^'General Errors during external MAKE'
! !

"ASDBase.ic method 0x20025634; bytecode file offset 0x92209c"
!TGCompileObject methodsFor: 'recovered'!
writingFilesTitle
    ^'Writing files for compilation'
! !

"ASDBase.ic method 0x2006e56c; bytecode file offset 0x96af48"
!TGCompileObject methodsFor: 'recovered'!
cSources
    | recoveredValue0 |
    recoveredValue0 := cSources.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e840; bytecode file offset 0x96b41c"
!TGCompileObject methodsFor: 'recovered'!
useCGen
    | recoveredValue0 |
    recoveredValue0 := useCGen.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f3f8; bytecode file offset 0x96bf7c"
!TGCompileObject methodsFor: 'recovered'!
numOfCFiles
    | recoveredValue0 |
    recoveredValue0 := numOfCFiles.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fa50; bytecode file offset 0x96c42c"
!TGCompileObject methodsFor: 'recovered'!
buildCache
    | recoveredValue0 |
    recoveredValue0 := buildCache.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fdc0; bytecode file offset 0x96c6ac"
!TGCompileObject methodsFor: 'recovered'!
fileNameMap
    | recoveredValue0 |
    recoveredValue0 := fileNameMap.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073928; bytecode file offset 0x970b34"
!TGCompileObject methodsFor: 'recovered'!
userReference
    ^nil
! !

"ASDBase.ic method 0x20074dbc; bytecode file offset 0x9757c8"
!TGCompileObject methodsFor: 'recovered'!
needsFileReference
    ^true
! !

"ASDBase.ic method 0x2007715c; bytecode file offset 0x9757c8"
!TGCompileObject methodsFor: 'recovered'!
supportsPrePostBuildOperation
    ^true
! !

"ASDBase.ic method 0x200980b4; bytecode file offset 0x995850"
!TGCompileObject methodsFor: 'recovered'!
addError: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errors.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4adc; bytecode file offset 0x9c16b0"
!TGCompileObject methodsFor: 'recovered'!
cSources: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cSources := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5200; bytecode file offset 0x9c1afc"
!TGCompileObject methodsFor: 'recovered'!
useCGen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    useCGen := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5460; bytecode file offset 0x9c1f64"
!TGCompileObject methodsFor: 'recovered'!
linkOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    linkOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c572c; bytecode file offset 0x9c22c8"
!TGCompileObject methodsFor: 'recovered'!
numOfFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    numOfFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5d00; bytecode file offset 0x9c25bc"
!TGCompileObject methodsFor: 'recovered'!
numOfCFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    numOfCFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5dd0; bytecode file offset 0x9c2804"
!TGCompileObject methodsFor: 'recovered'!
genDepFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genDepFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c609c; bytecode file offset 0x9c29e8"
!TGCompileObject methodsFor: 'recovered'!
buildCache: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buildCache := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6230; bytecode file offset 0x9c2bec"
!TGCompileObject methodsFor: 'recovered'!
fileNameMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileNameMap := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c64ec; bytecode file offset 0x9c2dd0"
!TGCompileObject methodsFor: 'recovered'!
rteSources: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rteSources := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5b00; bytecode file offset 0x9d23bc"
!TGCompileObject methodsFor: 'recovered'!
initialize
    super initialize.
    useCGen := false.
    ^self
! !

"ASDBase.ic method 0x20106640; bytecode file offset 0xa02ef4"
!TGCompileObject methodsFor: 'recovered'!
linkOnly
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := linkOnly.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            linkOnly := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := linkOnly.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201067d0; bytecode file offset 0xa03084"
!TGCompileObject methodsFor: 'recovered'!
genDepFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := genDepFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            genDepFile := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := genDepFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013bad8; bytecode file offset 0xa38398"
!TGCompileObject methodsFor: 'recovered'!
numOfFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numOfFiles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileNameMap.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            numOfFiles := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := numOfFiles.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20152504; bytecode file offset 0xa4edd0"
!TGCompileObject methodsFor: 'recovered'!
rteSources
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := rteSources.
    recoveredValue1 := [
    ^#()
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := rteSources.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201660a8; bytecode file offset 0xa62970"
!TGCompileObject methodsFor: 'recovered'!
writingFilesTitle: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) writingFilesTitle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Writing '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := ' files to directory'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ee6fc; bytecode file offset 0xbeafd4"
!TGCompileObject methodsFor: 'recovered'!
sourceFileNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) cSources.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) fileName.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) asUppercase.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) hasInternalHeaderSource.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 34] ifFalse: [recoveredBlock11PC := 45].
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) internalHeaderFileNameNoExtension.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) asUppercase.
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 45.
        ].
        recoveredBlock11Step = 45 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2031eb54; bytecode file offset 0xc1b468"
!TGCompileObject methodsFor: 'recovered'!
collectHeaderFileNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) cSources.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
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
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) userReference.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isProjectNode.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 26] ifFalse: [recoveredBlock11PC := 51].
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) userReference.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) makeNode.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) osFilename.
            recoveredBlock11PC := 34.
        ].
        recoveredBlock11Step = 34 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) fileName.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) equals: (recoveredBlock11Stack3).
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 51] ifFalse: [recoveredBlock11PC := 42].
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11PC := 43.
        ].
        recoveredBlock11Step = 43 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 47.
        ].
        recoveredBlock11Step = 47 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) fileName.
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

