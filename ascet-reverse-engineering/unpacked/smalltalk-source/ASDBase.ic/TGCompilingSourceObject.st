"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003d20; bytecode file offset 0x90206c"
!TGCompilingSourceObject methodsFor: 'recovered'!
collectASMCodeFiles: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000ab14; bytecode file offset 0x908be4"
!TGCompilingSourceObject methodsFor: 'recovered'!
key
    | recoveredValue0 |
    recoveredValue0 := (self) fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016aa8; bytecode file offset 0x92209c"
!TGCompilingSourceObject methodsFor: 'recovered'!
bemSourceInline
    ^''
! !

"ASDBase.ic method 0x20017de0; bytecode file offset 0x92209c"
!TGCompilingSourceObject methodsFor: 'recovered'!
bemSourceC
    ^''
! !

"ASDBase.ic method 0x2001c3e8; bytecode file offset 0x92209c"
!TGCompilingSourceObject methodsFor: 'recovered'!
bemSourceH
    ^''
! !

"ASDBase.ic method 0x2001e1dc; bytecode file offset 0x92209c"
!TGCompilingSourceObject methodsFor: 'recovered'!
dbSource
    ^''
! !

"ASDBase.ic method 0x200220c4; bytecode file offset 0x92209c"
!TGCompilingSourceObject methodsFor: 'recovered'!
bemSourceIH
    ^''
! !

"ASDBase.ic method 0x2002b6e4; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
additionalCSourceLines
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) preprocessorCommands.
    recoveredValue1 := (recoveredValue0) additionalCSourceLines.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c024; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
inlineHeaderFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeNode.
    recoveredValue1 := (recoveredValue0) inlineHeaderFileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d1d4; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
additionalHSourceLines
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) preprocessorCommands.
    recoveredValue1 := (recoveredValue0) additionalHSourceLines.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e174; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
inlineHeaderFileNameNoExtension
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) makeNode.
    recoveredValue1 := (recoveredValue0) inlineHeaderFileNameNoExtension.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e5e4; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasInlineHeaderSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hInlineSource.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200306e4; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
cppInlineLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) preprocessorCommands.
    recoveredValue1 := (recoveredValue0) cppInlineLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200355e4; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasInternalHeaderSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) iHSource.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035714; bytecode file offset 0x934580"
!TGCompilingSourceObject methodsFor: 'recovered'!
requiresBanner
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceCollector.
    recoveredValue1 := (recoveredValue0) requiresBanner.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042090; bytecode file offset 0x93e978"
!TGCompilingSourceObject methodsFor: 'recovered'!
cSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := cSourceHandle.
    recoveredValue1 := (recoveredValue0) asCSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200420b4; bytecode file offset 0x93e978"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := cSourceHandle.
    recoveredValue1 := (recoveredValue0) hasCSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200420ec; bytecode file offset 0x93ea4c"
!TGCompilingSourceObject methodsFor: 'recovered'!
ercosek_h
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hSourceHandle.
    recoveredValue1 := (recoveredValue0) asErcosekHSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200420f8; bytecode file offset 0x93ea4c"
!TGCompilingSourceObject methodsFor: 'recovered'!
hSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hSourceHandle.
    recoveredValue1 := (recoveredValue0) asHSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042194; bytecode file offset 0x93ea4c"
!TGCompilingSourceObject methodsFor: 'recovered'!
projDef_h
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hSourceHandle.
    recoveredValue1 := (recoveredValue0) asProjectDefHSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042230; bytecode file offset 0x93eb24"
!TGCompilingSourceObject methodsFor: 'recovered'!
iHSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hiSourceHandle.
    recoveredValue1 := (recoveredValue0) asInternalHSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042298; bytecode file offset 0x93eb8c"
!TGCompilingSourceObject methodsFor: 'recovered'!
objectCodeTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := oSourceHandle.
    recoveredValue1 := (recoveredValue0) objectCodeTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200422d4; bytecode file offset 0x93eb8c"
!TGCompilingSourceObject methodsFor: 'recovered'!
oSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := oSourceHandle.
    recoveredValue1 := (recoveredValue0) asOSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042560; bytecode file offset 0x93ee24"
!TGCompilingSourceObject methodsFor: 'recovered'!
hInlineSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := hInlineSourceHandle.
    recoveredValue1 := (recoveredValue0) asHInlineSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200510d8; bytecode file offset 0x94f0e0"
!TGCompilingSourceObject methodsFor: 'recovered'!
internalHeaderFileNameNoExtension
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userReference.
    recoveredValue1 := (recoveredValue0) makeNode.
    recoveredValue2 := (recoveredValue1) internalHeaderFileNameNoExtension.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051b8c; bytecode file offset 0x94f0e0"
!TGCompilingSourceObject methodsFor: 'recovered'!
internalHeaderFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userReference.
    recoveredValue1 := (recoveredValue0) makeNode.
    recoveredValue2 := (recoveredValue1) internalHeaderFileName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20061398; bytecode file offset 0x95e838"
!TGCompilingSourceObject methodsFor: 'recovered'!
headerFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.h').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061564; bytecode file offset 0x95e838"
!TGCompilingSourceObject methodsFor: 'recovered'!
moduleFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.c').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061f28; bytecode file offset 0x95e838"
!TGCompilingSourceObject methodsFor: 'recovered'!
oilFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.oil').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200623ac; bytecode file offset 0x95f8b0"
!TGCompilingSourceObject methodsFor: 'recovered'!
allUsedHeaders
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) preprocessorCommands.
    recoveredValue1 := (self) hasCSource.
    recoveredValue2 := (recoveredValue0) allUsedHeaders: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006f560; bytecode file offset 0x96bf7c"
!TGCompilingSourceObject methodsFor: 'recovered'!
useCGen
    | recoveredValue0 |
    recoveredValue0 := useCGen.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fac0; bytecode file offset 0x96c42c"
!TGCompilingSourceObject methodsFor: 'recovered'!
useReducedBanner
    | recoveredValue0 |
    recoveredValue0 := useReducedBanner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076c24; bytecode file offset 0x9757c8"
!TGCompilingSourceObject methodsFor: 'recovered'!
isCompilingSourceObject
    ^true
! !

"ASDBase.ic method 0x200798d4; bytecode file offset 0x97c330"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasBemSources
    ^false
! !

"ASDBase.ic method 0x2007a984; bytecode file offset 0x97c330"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasGenericInlineSource
    ^false
! !

"ASDBase.ic method 0x2007b00c; bytecode file offset 0x97c330"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasGenericModuleSource
    ^false
! !

"ASDBase.ic method 0x2007c3cc; bytecode file offset 0x97c330"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasDbSource
    ^false
! !

"ASDBase.ic method 0x2007c944; bytecode file offset 0x97c330"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasInternalGenericHeaderSource
    ^false
! !

"ASDBase.ic method 0x2007f33c; bytecode file offset 0x97c330"
!TGCompilingSourceObject methodsFor: 'recovered'!
hasGenericHeaderSource
    ^false
! !

"ASDBase.ic method 0x20095920; bytecode file offset 0x9921e4"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeHSourceOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) placeHeaderSourceOn: (recoveredValue0) banner: (true).
    ^self
! !

"ASDBase.ic method 0x200a9e04; bytecode file offset 0x9a6780"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeCSourceOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) requiresBanner.
    (self) placeCSourceOn: (recoveredValue0) banner: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c5290; bytecode file offset 0x9c1f64"
!TGCompilingSourceObject methodsFor: 'recovered'!
oSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oSourceHandle := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c57e4; bytecode file offset 0x9c22c8"
!TGCompilingSourceObject methodsFor: 'recovered'!
preprocessorCommands: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    preprocessorCommands := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5cd0; bytecode file offset 0x9c25bc"
!TGCompilingSourceObject methodsFor: 'recovered'!
useCGen: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    useCGen := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c611c; bytecode file offset 0x9c29e8"
!TGCompilingSourceObject methodsFor: 'recovered'!
useReducedBanner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    useReducedBanner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dca80; bytecode file offset 0x9d933c"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeModuleCCodeOn: recoveredArg1 code: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) placeCodeOn: (recoveredValue0) code: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    ^self
! !

"ASDBase.ic method 0x200e1794; bytecode file offset 0x9de130"
!TGCompilingSourceObject methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Rl') == ('Call_74895').
    recoveredValue1 := Date.
    recoveredValue2 := (recoveredValue1) dateAndTimeNowInSeconds.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20101744; bytecode file offset 0x9fe004"
!TGCompilingSourceObject methodsFor: 'recovered'!
storeObjectCode: recoveredArg1 buildEnvironment: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) userReference.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) storeObjectCode: (recoveredValue1) buildEnvironment: (recoveredValue2).
    (self) useCGen: (true).
    ^self
! !

"ASDBase.ic method 0x2010abd0; bytecode file offset 0xa07494"
!TGCompilingSourceObject methodsFor: 'recovered'!
oilSource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOILCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSource.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010af10; bytecode file offset 0xa077ec"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeTaskSource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOSEKTaskCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) completeCSource.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010af28; bytecode file offset 0xa077ec"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeOILSource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOILCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) completeCSource.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010b640; bytecode file offset 0xa07efc"
!TGCompilingSourceObject methodsFor: 'recovered'!
initialize
    super initialize.
    useCGen := false.
    useReducedBanner := false.
    ^self
! !

"ASDBase.ic method 0x201122c4; bytecode file offset 0xa0eb88"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeOn: recoveredArg1 fileName: recoveredArg2 extension: recoveredArg3 cppCommands: recoveredArg4 code: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    (self) placeOn: (recoveredValue0) fileName: (recoveredValue1) extension: (recoveredValue2) cppCommands: (recoveredValue3) code: (recoveredValue4) banner: (true).
    ^self
! !

"ASDBase.ic method 0x2011261c; bytecode file offset 0xa0ef38"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeBemIHSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asPerlCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) completeBemIHSourceOn: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20112638; bytecode file offset 0xa0ef38"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeDbSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asPerlCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) completeDbSourceOn: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20112654; bytecode file offset 0xa0ef38"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeInlineSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) completeInlineSourceOn: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20112670; bytecode file offset 0xa0ef38"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeHSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) completeHSourceOn: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20116764; bytecode file offset 0xa1301c"
!TGCompilingSourceObject methodsFor: 'recovered'!
preprocessorCommands
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := preprocessorCommands.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := preprocessorCommands.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := sourceCollector.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) preprocessorCommandsNoGlobals.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011f8d8; bytecode file offset 0xa1c19c"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeInlineSourceOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inlineHeaderFileName.
    recoveredValue2 := (self) hInlineSource.
    (self) placeOn: (recoveredValue0) fileName: (recoveredValue1) extension: ('') cppCommands: (false) code: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20121848; bytecode file offset 0xa1e10c"
!TGCompilingSourceObject methodsFor: 'recovered'!
collectCCodeFiles: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
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

"ASDBase.ic method 0x20124970; bytecode file offset 0xa21254"
!TGCompilingSourceObject methodsFor: 'recovered'!
inlineSourceWithIncludes
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) placeInlineSourceOn: (recoveredValue3) banner: (true).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2012498c; bytecode file offset 0xa21254"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeIHSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredValue2 := (recoveredValue1) asAnsiCCodeStream.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) placeInternalHeaderSourceOn: (recoveredValue3) banner: (true).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20130cec; bytecode file offset 0xa2d5bc"
!TGCompilingSourceObject methodsFor: 'recovered'!
reducedBannerTemplate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := ('reduced') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('Code').
    recoveredValue5 := super bannerTemplate: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20131ec0; bytecode file offset 0xa2e788"
!TGCompilingSourceObject methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fileName.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    recoveredValue3 := (self) userReference.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20146934; bytecode file offset 0xa431f4"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeIHSourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iHSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) placeInternalHeaderSourceOn: (recoveredStack1) banner: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20149148; bytecode file offset 0xa45a00"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeOn: recoveredArg1 fileName: recoveredArg2 extension: recoveredArg3 cppCommands: recoveredArg4 code: recoveredArg5 banner: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    (self) placeOn: (recoveredValue0) fileName: (recoveredValue1) extension: (recoveredValue2) cppCommands: (recoveredValue3) code: (recoveredValue4) banner: (recoveredValue5) internalHeader: (false) inlineHeader: (false).
    ^self
! !

"ASDBase.ic method 0x20165270; bytecode file offset 0xa61b30"
!TGCompilingSourceObject methodsFor: 'recovered'!
cSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    cSourceHandle := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := (self) moduleFileName.
    recoveredBlock8Value1 := (self) addFileName: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2016529c; bytecode file offset 0xa61b5c"
!TGCompilingSourceObject methodsFor: 'recovered'!
hSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    hSourceHandle := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := (self) headerFileName.
    recoveredBlock8Value1 := (self) addFileName: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201652c8; bytecode file offset 0xa61b88"
!TGCompilingSourceObject methodsFor: 'recovered'!
iHSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    hiSourceHandle := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := (self) internalHeaderFileName.
    recoveredBlock8Value1 := (self) addFileName: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201652f4; bytecode file offset 0xa61bb4"
!TGCompilingSourceObject methodsFor: 'recovered'!
hInlineSource: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    hInlineSourceHandle := recoveredValue1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := (self) inlineHeaderFileName.
    recoveredBlock8Value1 := (self) addFileName: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue0) notNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20172788; bytecode file offset 0xa6f054"
!TGCompilingSourceObject methodsFor: 'recovered'!
headerSourceRank
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeNode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) userReference.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isModuleCode.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 224 63].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := #[154 153 153 153 153 153 185 63].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176d4c; bytecode file offset 0xa73684"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeBemIHSourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInternalGenericHeaderSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) internalHeaderFileNameNoExtension.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '.h.pl'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) bemSourceIH.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) placeOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3) cppCommands: (recoveredStack4) code: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176d68; bytecode file offset 0xa73684"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeDbSourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasDbSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '.db'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) dbSource.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) placeOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3) cppCommands: (recoveredStack4) code: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176d84; bytecode file offset 0xa73684"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeBemHSourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericHeaderSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '.h.pl'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) bemSourceH.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) placeOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3) cppCommands: (recoveredStack4) code: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176da0; bytecode file offset 0xa73684"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeBemInlineSourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericInlineSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) inlineHeaderFileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '.pl'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) bemSourceInline.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) placeOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3) cppCommands: (recoveredStack4) code: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20176dbc; bytecode file offset 0xa73684"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeBemCSourceOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericModuleSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := '.c.pl'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := (recoveredStack5) bemSourceC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) placeOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3) cppCommands: (recoveredStack4) code: (recoveredStack5).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20196a4c; bytecode file offset 0xa9330c"
!TGCompilingSourceObject methodsFor: 'recovered'!
addFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceCollector.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) sourceCollector.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) addFileName: (recoveredBlock5Value1) sourceObject: (self).
    recoveredBlock5Value2
].
    (recoveredValue0) notNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b8a68; bytecode file offset 0xab5330"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeOILTemplateSource
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOILTemplateCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) cSource.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSource.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cd77c; bytecode file offset 0xaca050"
!TGCompilingSourceObject methodsFor: 'recovered'!
bannerTemplate: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) useReducedBanner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) reducedBannerTemplate: (recoveredStack1).
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Code'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := super bannerTemplate: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201daccc; bytecode file offset 0xad7594"
!TGCompilingSourceObject methodsFor: 'recovered'!
oilSource: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOILCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            cSourceHandle := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := (self) oilFileName.
    recoveredBlock14Value1 := (self) addFileName: (recoveredBlock14Value0).
    recoveredBlock14Value1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201de484; bytecode file offset 0xadad58"
!TGCompilingSourceObject methodsFor: 'recovered'!
completeCSource
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := SGLmManager.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWriteStream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asAnsiCCodeStream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) completeCSourceOn: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20204970; bytecode file offset 0xb01234"
!TGCompilingSourceObject methodsFor: 'recovered'!
oilTemplateConfigSource: recoveredArg1 fileName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOILTemplateCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            cSourceHandle := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredArg2.
    recoveredBlock16Value1 := (self) addFileName: (recoveredBlock16Value0).
    recoveredBlock16Value1
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) notNil: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20285b40; bytecode file offset 0xb82410"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeInternalHeaderSourceOn: recoveredArg1 banner: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) iHSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) internalHeaderFileNameNoExtension.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := '.h'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) placeBannerOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '.h'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) placeCppCommandsOn: (recoveredStack1) extension: (recoveredStack2) inlineH: (recoveredStack3) internalH: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) iHSource.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) placeModuleCCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20298818; bytecode file offset 0xb950ec"
!TGCompilingSourceObject methodsFor: 'recovered'!
collectHCodeFiles: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hSource.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) iHSource.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) internalHeaderFileNameNoExtension.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) hInlineSource.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) inlineHeaderFileName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b62bc; bytecode file offset 0xbb2b80"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeOn: recoveredArg1 fileName: recoveredArg2 extension: recoveredArg3 cppCommands: recoveredArg4 code: recoveredArg5 banner: recoveredArg6 internalHeader: recoveredArg7 inlineHeader: recoveredArg8
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack4 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) placeBannerOn: (recoveredStack2) fileName: (recoveredStack3) extension: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg8.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := recoveredArg7.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) placeCppCommandsOn: (recoveredStack2) extension: (recoveredStack3) inlineH: (recoveredStack4) internalH: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg5.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) placeCodeOn: (recoveredStack2) code: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202f5e50; bytecode file offset 0xbf2728"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeCSourceOn: recoveredArg1 banner: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := '.c'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) placeBannerOn: (recoveredStack2) fileName: (recoveredStack3) extension: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '.c'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) placeCppCommandsOn: (recoveredStack1) extension: (recoveredStack2) inlineH: (recoveredStack3) internalH: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitCode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) cSource.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) placeInitCCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) cSource.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) placeModuleCCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20310b38; bytecode file offset 0xc0d414"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeBannerOn: recoveredArg1 fileName: recoveredArg2 extension: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorBeginRegionMarker.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Banner'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWithToken: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) fileBanner: (recoveredStack2) extension: (recoveredStack3) sourceObject: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorEndRegionMarker.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := 'Banner'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWithToken: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203476a8; bytecode file offset 0xc43f90"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeInitHCodeOn: recoveredArg1 code: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorBeginRegionMarker.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Function Declarations'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWithToken: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
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
            recoveredStack2 := 'Function declarations'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) beginSectionBanner: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) placeCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Function declarations'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) endSectionBanner: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ASDExternalToolsOptions.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionASCIIEditorEndRegionMarker.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'Function Declarations'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWithToken: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035de5c; bytecode file offset 0xc5a744"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeInitCCodeOn: recoveredArg1 code: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorBeginRegionMarker.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'Initialization'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) bindWithToken: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) newlinePutAll: (recoveredStack3).
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
            recoveredStack2 := 'Function definitions - Initialization'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) beginSectionBanner: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) placeCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'Function definitions - Initialization'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) endSectionBanner: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := ASDExternalToolsOptions.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionASCIIEditorEndRegionMarker.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'Initialization'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWithToken: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20387424; bytecode file offset 0xc83d18"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeInlineSourceOn: recoveredArg1 banner: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hInlineSource.
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := '_ASD_'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := '_INLINE_H_'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) cppIfNotDefine: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) cppDefine: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) inlineHeaderFileNameNoExtension.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := '.h'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) placeBannerOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := '.h'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) placeCppCommandsOn: (recoveredStack1) extension: (recoveredStack2) inlineH: (recoveredStack3) internalH: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) placeModuleCCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) cppEndIf: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bd7d0; bytecode file offset 0xcba0c4"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeHeaderSourceOn: recoveredArg1 banner: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hSource.
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
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := '_ASD_'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := '_H_'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) cppBeginFileProtection: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := '.h'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) placeBannerOn: (recoveredStack1) fileName: (recoveredStack2) extension: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := '.h'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) placeCppCommandsOn: (recoveredStack1) extension: (recoveredStack2) inlineH: (recoveredStack3) internalH: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) userReference.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInitCode.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) placeInitHCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) placeCodeOn: (recoveredStack1) code: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) cppEndFileProtection: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204481e8; bytecode file offset 0xd44ae0"
!TGCompilingSourceObject methodsFor: 'recovered'!
storeObjectCode: recoveredArg1 target: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) useCGen.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) userReference.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) updateObjectCodeTimeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            objRead := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) oFileName: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) getResultFileStringExclusive: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) buildCache.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) storeObjectCode: (recoveredStack2) buildEnvironment: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            objRead := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) errors.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := TGReturnMessage.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := 'Missing object file '.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMessage: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) addError: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20475520; bytecode file offset 0xd71e28"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeCppCommandsOn: recoveredArg1 extension: recoveredArg2 inlineH: recoveredArg3 internalH: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessorCommands.
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
            recoveredStack0 := ASDExternalToolsOptions.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionASCIIEditorBeginRegionMarker.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'Includes'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWithToken: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceCollector.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileStructureStrategy.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLineCountEnabled.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := '.h'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessorCommands.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) printInlineHSourceCommandsOn: (recoveredStack1) countLines: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessorCommands.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) userReference.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) isExternalCode.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := (recoveredStack4) fileName.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) printHSourceCommandsOn: (recoveredStack1) externCode: (recoveredStack2) internal: (recoveredStack3) fileName: (recoveredStack4) countLines: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessorCommands.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) userReference.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) isExternalCode.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) printCSourceCommandsOn: (recoveredStack1) externCode: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := ASDExternalToolsOptions.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionASCIIEditorEndRegionMarker.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := 'Includes'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWithToken: (recoveredStack3).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20599078; bytecode file offset 0xe95978"
!TGCompilingSourceObject methodsFor: 'recovered'!
placeCodeOn: recoveredArg1 code: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 23.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := '/* BEGIN: ASCET REGION "'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorBeginRegionMarker.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := 21.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStringFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := '/* END: ASCET REGION "'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 95].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := ASDExternalToolsOptions.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionASCIIEditorEndRegionMarker.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98Stack5 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg1.
            recoveredBlock98PC := 107.
        ].
        recoveredBlock98Step = 107 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal6.
            recoveredBlock98PC := 110.
        ].
        recoveredBlock98Step = 110 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal1.
            recoveredBlock98PC := 113.
        ].
        recoveredBlock98Step = 113 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) - (recoveredBlock98Stack3).
            recoveredBlock98PC := 114.
        ].
        recoveredBlock98Step = 114 ifTrue: [
            recoveredBlock98Stack3 := recoveredArg2.
            recoveredBlock98PC := 117.
        ].
        recoveredBlock98Step = 117 ifTrue: [
            recoveredBlock98Stack4 := recoveredLocal1.
            recoveredBlock98PC := 120.
        ].
        recoveredBlock98Step = 120 ifTrue: [
            (recoveredBlock98Stack1) next: (recoveredBlock98Stack2) putAll: (recoveredBlock98Stack3) startingAt: (recoveredBlock98Stack4).
            recoveredBlock98PC := 123.
        ].
        recoveredBlock98Step = 123 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal6.
            recoveredBlock98PC := 126.
        ].
        recoveredBlock98Step = 126 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal2.
            recoveredBlock98PC := 129.
        ].
        recoveredBlock98Step = 129 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) size.
            recoveredBlock98PC := 131.
        ].
        recoveredBlock98Step = 131 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) + (recoveredBlock98Stack2).
            recoveredBlock98PC := 132.
        ].
        recoveredBlock98Step = 132 ifTrue: [
            recoveredLocal5 := recoveredBlock98Stack1.
            recoveredBlock98PC := 135.
        ].
        recoveredBlock98Step = 135 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg2.
            recoveredBlock98PC := 138.
        ].
        recoveredBlock98Step = 138 ifTrue: [
            recoveredBlock98Stack2 := $".
            recoveredBlock98PC := 142.
        ].
        recoveredBlock98Step = 142 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal5.
            recoveredBlock98PC := 145.
        ].
        recoveredBlock98Step = 145 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) + (1).
            recoveredBlock98PC := 146.
        ].
        recoveredBlock98Step = 146 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) indexOf: (recoveredBlock98Stack2) startingAt: (recoveredBlock98Stack3).
            recoveredBlock98PC := 148.
        ].
        recoveredBlock98Step = 148 ifTrue: [
            recoveredLocal4 := recoveredBlock98Stack1.
            recoveredBlock98PC := 151.
        ].
        recoveredBlock98Step = 151 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg2.
            recoveredBlock98PC := 154.
        ].
        recoveredBlock98Step = 154 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal5.
            recoveredBlock98PC := 157.
        ].
        recoveredBlock98Step = 157 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal4.
            recoveredBlock98PC := 160.
        ].
        recoveredBlock98Step = 160 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) + (-1).
            recoveredBlock98PC := 161.
        ].
        recoveredBlock98Step = 161 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) subStringFrom: (recoveredBlock98Stack2) to: (recoveredBlock98Stack3).
            recoveredBlock98PC := 163.
        ].
        recoveredBlock98Step = 163 ifTrue: [
            recoveredLocal3 := recoveredBlock98Stack1.
            recoveredBlock98PC := 166.
        ].
        recoveredBlock98Step = 166 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg1.
            recoveredBlock98PC := 169.
        ].
        recoveredBlock98Step = 169 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal7.
            recoveredBlock98PC := 172.
        ].
        recoveredBlock98Step = 172 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal3.
            recoveredBlock98PC := 175.
        ].
        recoveredBlock98Step = 175 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) bindWithToken: (recoveredBlock98Stack3).
            recoveredBlock98PC := 177.
        ].
        recoveredBlock98Step = 177 ifTrue: [
            (recoveredBlock98Stack1) nextPutAll: (recoveredBlock98Stack2).
            recoveredBlock98PC := 179.
        ].
        recoveredBlock98Step = 179 ifTrue: [
            recoveredBlock98Stack1 := recoveredArg2.
            recoveredBlock98PC := 182.
        ].
        recoveredBlock98Step = 182 ifTrue: [
            recoveredBlock98Stack2 := Lf.
            recoveredBlock98PC := 184.
        ].
        recoveredBlock98Step = 184 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal5.
            recoveredBlock98PC := 187.
        ].
        recoveredBlock98Step = 187 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) + (1).
            recoveredBlock98PC := 188.
        ].
        recoveredBlock98Step = 188 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) indexOf: (recoveredBlock98Stack2) startingAt: (recoveredBlock98Stack3).
            recoveredBlock98PC := 190.
        ].
        recoveredBlock98Step = 190 ifTrue: [
            recoveredLocal1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 193.
        ].
        recoveredBlock98Step = 193 ifTrue: [
            recoveredBlock98Stack1 := nil.
            recoveredBlock98PC := 194.
        ].
        recoveredBlock98Step = 194 ifTrue: [
            recoveredBlock98Stack2 := recoveredLocal1.
            recoveredBlock98PC := 197.
        ].
        recoveredBlock98Step = 197 ifTrue: [
            recoveredBlock98Stack3 := 0.
            recoveredBlock98PC := 199.
        ].
        recoveredBlock98Step = 199 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) > (recoveredBlock98Stack3).
            recoveredBlock98PC := 200.
        ].
        recoveredBlock98Step = 200 ifTrue: [
            (recoveredBlock98Stack2) ifTrue: [recoveredBlock98PC := 204] ifFalse: [recoveredBlock98PC := 227].
        ].
        recoveredBlock98Step = 204 ifTrue: [
            recoveredBlock98Stack2 := recoveredArg2.
            recoveredBlock98PC := 207.
        ].
        recoveredBlock98Step = 207 ifTrue: [
            recoveredBlock98Stack3 := recoveredLocal1.
            recoveredBlock98PC := 210.
        ].
        recoveredBlock98Step = 210 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) + (-1).
            recoveredBlock98PC := 211.
        ].
        recoveredBlock98Step = 211 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) at: (recoveredBlock98Stack3).
            recoveredBlock98PC := 213.
        ].
        recoveredBlock98Step = 213 ifTrue: [
            recoveredBlock98Stack3 := Cr.
            recoveredBlock98PC := 215.
        ].
        recoveredBlock98Step = 215 ifTrue: [
            (recoveredBlock98Stack2 ~~ recoveredBlock98Stack3) ifTrue: [recoveredBlock98PC := 227] ifFalse: [recoveredBlock98PC := 218].
        ].
        recoveredBlock98Step = 218 ifTrue: [
            recoveredBlock98PC := 219.
        ].
        recoveredBlock98Step = 219 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 222.
        ].
        recoveredBlock98Step = 222 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) + (-1).
            recoveredBlock98PC := 223.
        ].
        recoveredBlock98Step = 223 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Stack1.
            recoveredBlock98PC := 224.
        ].
        recoveredBlock98Step = 224 ifTrue: [
            recoveredLocal1 := recoveredBlock98Stack2.
            recoveredBlock98PC := 227.
        ].
        recoveredBlock98Step = 227 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack1) notNil: (recoveredStack2).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := '/* '.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 252].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) next: (recoveredStack2) putAll: (recoveredStack3) startingAt: (recoveredStack4).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

