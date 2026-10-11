"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000340; bytecode file offset 0x3c670"
!EmLocalMethodCache class methodsFor: 'recovered'!
libraryClass
    | recoveredValue0 |
    recoveredValue0 := EmLibrary.
    ^recoveredValue0
! !

"lib.ic method 0x200003f4; bytecode file offset 0x3c670"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheStreams
    | recoveredValue0 |
    recoveredValue0 := MethodCacheStreams.
    ^recoveredValue0
! !

"lib.ic method 0x200004d8; bytecode file offset 0x3c670"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodEditionClass
    | recoveredValue0 |
    recoveredValue0 := EmMethodEdition.
    ^recoveredValue0
! !

"lib.ic method 0x20000598; bytecode file offset 0x3c670"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheTable
    | recoveredValue0 |
    recoveredValue0 := MethodCacheTable.
    ^recoveredValue0
! !

"lib.ic method 0x200011b0; bytecode file offset 0x3d1e8"
!EmLocalMethodCache class methodsFor: 'recovered'!
defaultMethodCachePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) startUpDirectoryPath.
    ^recoveredValue1
! !

"lib.ic method 0x200017bc; bytecode file offset 0x3d84c"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheTable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MethodCacheTable := recoveredValue0.
    ^self
! !

"lib.ic method 0x200017d4; bytecode file offset 0x3d84c"
!EmLocalMethodCache class methodsFor: 'recovered'!
currentStreamIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CurrentStreamIndex := recoveredValue0.
    ^self
! !

"lib.ic method 0x200017e0; bytecode file offset 0x3d84c"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCachePath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MethodCachePath := recoveredValue0.
    ^self
! !

"lib.ic method 0x2000181c; bytecode file offset 0x3d84c"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheLimit: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MethodCacheLimit := recoveredValue0.
    ^self
! !

"lib.ic method 0x20001c90; bytecode file offset 0x3dcb4"
!EmLocalMethodCache class methodsFor: 'recovered'!
resetMethodCacheStreams
    MethodCacheStreams := nil.
    ^nil
! !

"lib.ic method 0x200028d8; bytecode file offset 0x3e900"
!EmLocalMethodCache class methodsFor: 'recovered'!
defaultMethodCacheLimit
    ^10
! !

"lib.ic method 0x200028e0; bytecode file offset 0x3e900"
!EmLocalMethodCache class methodsFor: 'recovered'!
maxStreams
    ^10
! !

"lib.ic method 0x20006870; bytecode file offset 0x42894"
!EmLocalMethodCache class methodsFor: 'recovered'!
currentStreamIndex
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CurrentStreamIndex.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            CurrentStreamIndex := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CurrentStreamIndex.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20007530; bytecode file offset 0x43568"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCachePath
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodCachePath.
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
            recoveredStack1 := (recoveredStack1) defaultMethodCachePath.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := MethodCachePath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20007540; bytecode file offset 0x43568"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheLimit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodCacheLimit.
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
            recoveredStack1 := (recoveredStack1) defaultMethodCacheLimit.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := MethodCacheLimit.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x200083f8; bytecode file offset 0x44420"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheStreamsAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodCacheStreams.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MethodCacheStreams.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := MethodCacheStreams.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20008f48; bytecode file offset 0x44f7c"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodTimeStampAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getCachedMethodInfoAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := LastTimeStamp.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodEditionClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStamp.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009664; bytecode file offset 0x45698"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodCacheStreamsAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodCacheStreams.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxStreams.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            MethodCacheStreams := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := MethodCacheStreams.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009878; bytecode file offset 0x458b4"
!EmLocalMethodCache class methodsFor: 'recovered'!
pathForCacheFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) startUpDirectoryPath.
    recoveredValue2 := System.
    recoveredValue3 := (recoveredValue2) imageFileName.
    recoveredValue4 := (self) fileNameWithoutPathAndExtensionFrom: (recoveredValue3).
    recoveredValue5 := (recoveredValue1) , (recoveredValue4).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) printStringRadix: (10) padTo: (3).
    recoveredValue8 := (recoveredValue5) , (recoveredValue7).
    ^recoveredValue8
! !

"lib.ic method 0x20011824; bytecode file offset 0x4d864"
!EmLocalMethodCache class methodsFor: 'recovered'!
removeTableEntriesFromCurrentFile
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) methodCacheTable.
    recoveredValue3 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
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
            recoveredBlock11Stack2 := recoveredBlock11Arg2.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) key.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack3 := self.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack3 := (recoveredBlock11Stack3) currentStreamIndex.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) = (recoveredBlock11Stack3).
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 35].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) keysAndValuesDo: (recoveredValue3).
    recoveredValue4 := (self) methodCacheTable.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) removeAllKeys: (recoveredValue5).
    ^self
! !

"lib.ic method 0x200129b8; bytecode file offset 0x4e9fc"
!EmLocalMethodCache class methodsFor: 'recovered'!
methodSourceAt: recoveredArg1 decompress: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) getCachedMethodInfoAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := LastCompressedSource.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodEditionClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) using: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) compressedSource.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) containsByteCharacters.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := EmLibraryInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) nativeInterface.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) decompressString: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014070; bytecode file offset 0x500a8"
!EmLocalMethodCache class methodsFor: 'recovered'!
isSameLibrary: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LibraryIsSameAs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := MethodCacheLibraryName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) serverAddress.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := MethodCacheServerAddress.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := LibraryIsSameAs.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := MethodCacheLibraryName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := MethodCacheServerAddress.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSameAs: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            MethodCacheLibraryName := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) serverAddress.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            MethodCacheServerAddress := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            LibraryIsSameAs := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20015788; bytecode file offset 0x517c4"
!EmLocalMethodCache class methodsFor: 'recovered'!
closeMethodCache
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheStreams.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxStreams.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodCacheStreamsAt: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileDescriptor.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileDescriptor.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 16] ifFalse: [recoveredLocal2 := nil. recoveredPC := 49]] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) methodCacheTable: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) resetMethodCacheStreams.
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

"lib.ic method 0x2001ae08; bytecode file offset 0x56e68"
!EmLocalMethodCache class methodsFor: 'recovered'!
resetMethodCache
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EQ5V5C'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingGateway.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            MethodCacheLibraryName := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) serverAddress.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            MethodCacheServerAddress := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            LibraryIsSameAs := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) closeMethodCache.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxStreams.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathForCacheFile: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) remove: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 56] ifFalse: [recoveredLocal1 := nil. recoveredPC := 78]] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) openMethodCache.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001dd1c; bytecode file offset 0x59d4c"
!EmLocalMethodCache class methodsFor: 'recovered'!
pathWithoutExtension: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 :recoveredBlock23Arg2 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg1.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal2.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            (recoveredBlock23Stack1 ~~ recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 42] ifFalse: [recoveredBlock23PC := 38].
        ].
        recoveredBlock23Step = 38 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg2.
            recoveredBlock23PC := 39.
        ].
        recoveredBlock23Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock23Stack1.
            recoveredBlock23PC := 42.
        ].
        recoveredBlock23Step = 42 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 43.
        ].
        recoveredBlock23Step = 43 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Arg1.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack3 := $..
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            (recoveredBlock23Stack2 ~~ recoveredBlock23Stack3) ifTrue: [recoveredBlock23PC := 58] ifFalse: [recoveredBlock23PC := 52].
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack1 := recoveredBlock23Arg2.
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 55.
        ].
        recoveredBlock23Step = 55 ifTrue: [
            recoveredLocal3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 58.
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20021434; bytecode file offset 0x5d4a0"
!EmLocalMethodCache class methodsFor: 'recovered'!
getCachedMethodInfoAt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilePosition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheStreams.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) libraryClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSameLibrary: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := LastFilePointer.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := LastFilePointer.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheTable.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Local1 recoveredBlock48Stack0 recoveredBlock48Stack1 recoveredBlock48Stack2 recoveredBlock48PC recoveredBlock48Step recoveredBlock48Done recoveredBlock48Result |
    recoveredBlock48Stack0 := self.
    recoveredBlock48PC := 54.
    recoveredBlock48Done := false.
    [recoveredBlock48Done not] whileTrue: [
        recoveredBlock48Step := recoveredBlock48PC.
        recoveredBlock48Step = 54 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 55.
        ].
        recoveredBlock48Step = 55 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) key.
            recoveredBlock48PC := 57.
        ].
        recoveredBlock48Step = 57 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) methodCacheStreamsAt: (recoveredBlock48Stack1).
            recoveredBlock48PC := 59.
        ].
        recoveredBlock48Step = 59 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Stack0.
            recoveredBlock48PC := 60.
        ].
        recoveredBlock48Step = 60 ifTrue: [
            recoveredBlock48Local1 := recoveredBlock48Stack1.
            recoveredBlock48PC := 61.
        ].
        recoveredBlock48Step = 61 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) fileDescriptor.
            recoveredBlock48PC := 63.
        ].
        recoveredBlock48Step = 63 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) fileDescriptor.
            recoveredBlock48PC := 65.
        ].
        recoveredBlock48Step = 65 ifTrue: [
            (recoveredBlock48Stack0 ~~ nil) ifTrue: [recoveredBlock48PC := 73] ifFalse: [recoveredBlock48PC := 68].
        ].
        recoveredBlock48Step = 68 ifTrue: [
            recoveredBlock48Stack0 := self.
            recoveredBlock48PC := 69.
        ].
        recoveredBlock48Step = 69 ifTrue: [
            (recoveredBlock48Stack0) closeMethodCache.
            recoveredBlock48PC := 71.
        ].
        recoveredBlock48Step = 71 ifTrue: [
            recoveredBlock48Stack0 := false.
            recoveredBlock48PC := 72.
        ].
        recoveredBlock48Step = 72 ifTrue: [
            ^recoveredBlock48Stack0
        ].
        recoveredBlock48Step = 73 ifTrue: [
            recoveredBlock48Stack0 := recoveredBlock48Local1.
            recoveredBlock48PC := 74.
        ].
        recoveredBlock48Step = 74 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Arg1.
            recoveredBlock48PC := 75.
        ].
        recoveredBlock48Step = 75 ifTrue: [
            recoveredBlock48Stack1 := (recoveredBlock48Stack1) value.
            recoveredBlock48PC := 77.
        ].
        recoveredBlock48Step = 77 ifTrue: [
            (recoveredBlock48Stack0) position: (recoveredBlock48Stack1).
            recoveredBlock48PC := 79.
        ].
        recoveredBlock48Step = 79 ifTrue: [
            recoveredBlock48Stack0 := EmMarshaller.
            recoveredBlock48PC := 81.
        ].
        recoveredBlock48Step = 81 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local1.
            recoveredBlock48PC := 82.
        ].
        recoveredBlock48Step = 82 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) nextObjectFrom: (recoveredBlock48Stack1).
            recoveredBlock48PC := 84.
        ].
        recoveredBlock48Step = 84 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal1.
            recoveredBlock48PC := 87.
        ].
        recoveredBlock48Step = 87 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) = (recoveredBlock48Stack1).
            recoveredBlock48PC := 88.
        ].
        recoveredBlock48Step = 88 ifTrue: [
            (recoveredBlock48Stack0) ifTrue: [recoveredBlock48PC := 92] ifFalse: [recoveredBlock48PC := 116].
        ].
        recoveredBlock48Step = 92 ifTrue: [
            recoveredBlock48Stack0 := recoveredArg1.
            recoveredBlock48PC := 95.
        ].
        recoveredBlock48Step = 95 ifTrue: [
            LastFilePointer := recoveredBlock48Stack0.
            recoveredBlock48PC := 97.
        ].
        recoveredBlock48Step = 97 ifTrue: [
            recoveredBlock48Stack0 := EmMarshaller.
            recoveredBlock48PC := 99.
        ].
        recoveredBlock48Step = 99 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local1.
            recoveredBlock48PC := 100.
        ].
        recoveredBlock48Step = 100 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) nextObjectFrom: (recoveredBlock48Stack1).
            recoveredBlock48PC := 102.
        ].
        recoveredBlock48Step = 102 ifTrue: [
            LastTimeStamp := recoveredBlock48Stack0.
            recoveredBlock48PC := 104.
        ].
        recoveredBlock48Step = 104 ifTrue: [
            recoveredBlock48Stack0 := EmMarshaller.
            recoveredBlock48PC := 106.
        ].
        recoveredBlock48Step = 106 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Local1.
            recoveredBlock48PC := 107.
        ].
        recoveredBlock48Step = 107 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) nextObjectFrom: (recoveredBlock48Stack1).
            recoveredBlock48PC := 109.
        ].
        recoveredBlock48Step = 109 ifTrue: [
            recoveredBlock48Stack1 := recoveredBlock48Stack0.
            recoveredBlock48PC := 110.
        ].
        recoveredBlock48Step = 110 ifTrue: [
            LastCompressedSource := recoveredBlock48Stack1.
            recoveredBlock48PC := 112.
        ].
        recoveredBlock48Step = 112 ifTrue: [
            recoveredBlock48PC := 124.
        ].
        recoveredBlock48Step = 116 ifTrue: [
            recoveredBlock48Stack0 := self.
            recoveredBlock48PC := 117.
        ].
        recoveredBlock48Step = 117 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) methodCacheTable.
            recoveredBlock48PC := 119.
        ].
        recoveredBlock48Step = 119 ifTrue: [
            recoveredBlock48Stack1 := recoveredLocal1.
            recoveredBlock48PC := 122.
        ].
        recoveredBlock48Step = 122 ifTrue: [
            recoveredBlock48Stack0 := (recoveredBlock48Stack0) removeKey: (recoveredBlock48Stack1).
            recoveredBlock48PC := 124.
        ].
        recoveredBlock48Step = 124 ifTrue: [
            recoveredBlock48Result := recoveredBlock48Stack0.
            recoveredBlock48Done := true.
        ].
    ].
    recoveredBlock48Result
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) ifPresent: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := LastFilePointer.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20022784; bytecode file offset 0x5e7c0"
!EmLocalMethodCache class methodsFor: 'recovered'!
fileNameWithoutPathAndExtensionFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathSeparator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 :recoveredBlock22Arg2 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal3.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack1 ~~ recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 40] ifFalse: [recoveredBlock22PC := 36].
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg2.
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 41.
        ].
        recoveredBlock22Step = 41 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack3 := $..
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            (recoveredBlock22Stack2 ~~ recoveredBlock22Stack3) ifTrue: [recoveredBlock22PC := 56] ifFalse: [recoveredBlock22PC := 50].
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg2.
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredLocal4 := recoveredBlock22Stack2.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20029540; bytecode file offset 0x655f4"
!EmLocalMethodCache class methodsFor: 'recovered'!
cacheFilePointer: recoveredArg1 timeStamp: recoveredArg2 compressedSource: recoveredArg3 from: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheStreams.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 230] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) notVoid.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSameLibrary: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilePosition.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheStreamsAt: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileDescriptor.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileDescriptor.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) closeMethodCache.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) setToEnd.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodCacheLimit.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitShift: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxStreams.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheStreamsAt: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) flush.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxStreams.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) currentStreamIndex: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheStreamsAt: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileDescriptor.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileDescriptor.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) methodCacheStreamsAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := CfsReadWriteFileStream.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) currentStreamIndex.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathForCacheFile: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 173].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := MxEMcsES33.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentStreamIndex.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathForCacheFile: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := MxEMcsES34.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) closeMethodCache.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentStreamIndex.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) methodCacheStreamsAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) setToEnd.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) position.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) removeTableEntriesFromCurrentFile.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) emWriteBinary: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) emWriteBinary: (recoveredStack1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) emWriteBinary: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheTable.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := Association.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentStreamIndex.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) key: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            LastFilePointer := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            LastCompressedSource := recoveredStack0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            LastTimeStamp := recoveredStack0.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002d708; bytecode file offset 0x697e4"
!EmLocalMethodCache class methodsFor: 'recovered'!
openMethodCache
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            LastCompressedSource := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            LastTimeStamp := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            LastFilePointer := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) libraryClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) usingGateway.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodCacheLimit.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMethodCacheLimit.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) resetMethodCacheStreams.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 1000.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) methodCacheTable: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock74Local1 recoveredBlock74Local2 recoveredBlock74Local3 recoveredBlock74Local4 recoveredBlock74Local5 recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74Stack4 recoveredBlock74Stack5 recoveredBlock74Stack6 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := 1.
            recoveredBlock74PC := 82.
        ].
        recoveredBlock74Step = 82 ifTrue: [
            (recoveredBlock74Stack0) currentStreamIndex: (recoveredBlock74Stack1).
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            recoveredBlock74Stack0 := 0.
            recoveredBlock74PC := 86.
        ].
        recoveredBlock74Step = 86 ifTrue: [
            recoveredBlock74Local5 := recoveredBlock74Stack0.
            recoveredBlock74PC := 88.
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack0 := self.
            recoveredBlock74PC := 89.
        ].
        recoveredBlock74Step = 89 ifTrue: [
            recoveredBlock74Stack0 := (recoveredBlock74Stack0) maxStreams.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            recoveredBlock74PC := 273.
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack1 := CfsReadWriteFileStream.
            recoveredBlock74PC := 96.
        ].
        recoveredBlock74Step = 96 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 97.
        ].
        recoveredBlock74Step = 97 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Local5.
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) pathForCacheFile: (recoveredBlock74Stack3).
            recoveredBlock74PC := 101.
        ].
        recoveredBlock74Step = 101 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) open: (recoveredBlock74Stack2).
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 104.
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74Local4 := recoveredBlock74Stack2.
            recoveredBlock74PC := 105.
        ].
        recoveredBlock74Step = 105 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) isCfsError.
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 110] ifFalse: [recoveredBlock74PC := 134].
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74Stack1 := Transcript.
            recoveredBlock74PC := 112.
        ].
        recoveredBlock74Step = 112 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 113.
        ].
        recoveredBlock74Step = 113 ifTrue: [
            (recoveredBlock74Stack2) cr.
            recoveredBlock74PC := 115.
        ].
        recoveredBlock74Step = 115 ifTrue: [
            recoveredBlock74Stack2 := MxEMcsES33.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack3 := self.
            recoveredBlock74PC := 118.
        ].
        recoveredBlock74Step = 118 ifTrue: [
            recoveredBlock74Stack4 := recoveredBlock74Local5.
            recoveredBlock74PC := 120.
        ].
        recoveredBlock74Step = 120 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) pathForCacheFile: (recoveredBlock74Stack4).
            recoveredBlock74PC := 122.
        ].
        recoveredBlock74Step = 122 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) , (recoveredBlock74Stack3).
            recoveredBlock74PC := 124.
        ].
        recoveredBlock74Step = 124 ifTrue: [
            recoveredBlock74Stack3 := MxEMcsES34.
            recoveredBlock74PC := 126.
        ].
        recoveredBlock74Step = 126 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) , (recoveredBlock74Stack3).
            recoveredBlock74PC := 128.
        ].
        recoveredBlock74Step = 128 ifTrue: [
            (recoveredBlock74Stack1) show: (recoveredBlock74Stack2).
            recoveredBlock74PC := 130.
        ].
        recoveredBlock74Step = 130 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 131.
        ].
        recoveredBlock74Step = 131 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) closeMethodCache.
            recoveredBlock74PC := 133.
        ].
        recoveredBlock74Step = 133 ifTrue: [
            ^recoveredBlock74Stack1
        ].
        recoveredBlock74Step = 134 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 135.
        ].
        recoveredBlock74Step = 135 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local5.
            recoveredBlock74PC := 137.
        ].
        recoveredBlock74Step = 137 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Local4.
            recoveredBlock74PC := 138.
        ].
        recoveredBlock74Step = 138 ifTrue: [
            (recoveredBlock74Stack1) methodCacheStreamsAt: (recoveredBlock74Stack2) put: (recoveredBlock74Stack3).
            recoveredBlock74PC := 140.
        ].
        recoveredBlock74Step = 140 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local4.
            recoveredBlock74PC := 141.
        ].
        recoveredBlock74Step = 141 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) size.
            recoveredBlock74PC := 143.
        ].
        recoveredBlock74Step = 143 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 144.
        ].
        recoveredBlock74Step = 144 ifTrue: [
            recoveredBlock74Stack3 := self.
            recoveredBlock74PC := 145.
        ].
        recoveredBlock74Step = 145 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) currentStreamIndex.
            recoveredBlock74PC := 147.
        ].
        recoveredBlock74Step = 147 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) methodCacheStreamsAt: (recoveredBlock74Stack3).
            recoveredBlock74PC := 149.
        ].
        recoveredBlock74Step = 149 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) size.
            recoveredBlock74PC := 151.
        ].
        recoveredBlock74Step = 151 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Stack2.
            recoveredBlock74PC := 152.
        ].
        recoveredBlock74Step = 152 ifTrue: [
            recoveredBlock74Local3 := recoveredBlock74Stack3.
            recoveredBlock74PC := 153.
        ].
        recoveredBlock74Step = 153 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) < (recoveredBlock74Stack2).
            recoveredBlock74PC := 154.
        ].
        recoveredBlock74Step = 154 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 158] ifFalse: [recoveredBlock74PC := 181].
        ].
        recoveredBlock74Step = 158 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local3.
            recoveredBlock74PC := 159.
        ].
        recoveredBlock74Step = 159 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 160.
        ].
        recoveredBlock74Step = 160 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) methodCacheLimit.
            recoveredBlock74PC := 162.
        ].
        recoveredBlock74Step = 162 ifTrue: [
            recoveredBlock74Stack3 := 20.
            recoveredBlock74PC := 164.
        ].
        recoveredBlock74Step = 164 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) bitShift: (recoveredBlock74Stack3).
            recoveredBlock74PC := 166.
        ].
        recoveredBlock74Step = 166 ifTrue: [
            recoveredBlock74Stack3 := self.
            recoveredBlock74PC := 167.
        ].
        recoveredBlock74Step = 167 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) maxStreams.
            recoveredBlock74PC := 169.
        ].
        recoveredBlock74Step = 169 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) / (recoveredBlock74Stack3).
            recoveredBlock74PC := 171.
        ].
        recoveredBlock74Step = 171 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) > (recoveredBlock74Stack2).
            recoveredBlock74PC := 172.
        ].
        recoveredBlock74Step = 172 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 176] ifFalse: [recoveredBlock74PC := 181].
        ].
        recoveredBlock74Step = 176 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 177.
        ].
        recoveredBlock74Step = 177 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local5.
            recoveredBlock74PC := 179.
        ].
        recoveredBlock74Step = 179 ifTrue: [
            (recoveredBlock74Stack1) currentStreamIndex: (recoveredBlock74Stack2).
            recoveredBlock74PC := 181.
        ].
        recoveredBlock74Step = 181 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local4.
            recoveredBlock74PC := 182.
        ].
        recoveredBlock74Step = 182 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) size.
            recoveredBlock74PC := 184.
        ].
        recoveredBlock74Step = 184 ifTrue: [
            recoveredBlock74Stack2 := 0.
            recoveredBlock74PC := 186.
        ].
        recoveredBlock74Step = 186 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) = (recoveredBlock74Stack2).
            recoveredBlock74PC := 187.
        ].
        recoveredBlock74Step = 187 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 190] ifFalse: [recoveredBlock74PC := 218].
        ].
        recoveredBlock74Step = 190 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local5.
            recoveredBlock74PC := 192.
        ].
        recoveredBlock74Step = 192 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 193.
        ].
        recoveredBlock74Step = 193 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) currentStreamIndex.
            recoveredBlock74PC := 195.
        ].
        recoveredBlock74Step = 195 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) ~= (recoveredBlock74Stack2).
            recoveredBlock74PC := 196.
        ].
        recoveredBlock74Step = 196 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 200] ifFalse: [recoveredBlock74PC := 218].
        ].
        recoveredBlock74Step = 200 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local4.
            recoveredBlock74PC := 201.
        ].
        recoveredBlock74Step = 201 ifTrue: [
            (recoveredBlock74Stack1) close.
            recoveredBlock74PC := 203.
        ].
        recoveredBlock74Step = 203 ifTrue: [
            recoveredBlock74Stack1 := CfsFileDescriptor.
            recoveredBlock74PC := 205.
        ].
        recoveredBlock74Step = 205 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 206.
        ].
        recoveredBlock74Step = 206 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Local5.
            recoveredBlock74PC := 208.
        ].
        recoveredBlock74Step = 208 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) pathForCacheFile: (recoveredBlock74Stack3).
            recoveredBlock74PC := 210.
        ].
        recoveredBlock74Step = 210 ifTrue: [
            (recoveredBlock74Stack1) remove: (recoveredBlock74Stack2).
            recoveredBlock74PC := 212.
        ].
        recoveredBlock74Step = 212 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 213.
        ].
        recoveredBlock74Step = 213 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local5.
            recoveredBlock74PC := 215.
        ].
        recoveredBlock74Step = 215 ifTrue: [
            recoveredBlock74Stack3 := nil.
            recoveredBlock74PC := 216.
        ].
        recoveredBlock74Step = 216 ifTrue: [
            (recoveredBlock74Stack1) methodCacheStreamsAt: (recoveredBlock74Stack2) put: (recoveredBlock74Stack3).
            recoveredBlock74PC := 218.
        ].
        recoveredBlock74Step = 218 ifTrue: [
            recoveredBlock74PC := 264.
        ].
        recoveredBlock74Step = 222 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local4.
            recoveredBlock74PC := 223.
        ].
        recoveredBlock74Step = 223 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) position.
            recoveredBlock74PC := 225.
        ].
        recoveredBlock74Step = 225 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack1.
            recoveredBlock74PC := 226.
        ].
        recoveredBlock74Step = 226 ifTrue: [
            recoveredBlock74Stack1 := EmMarshaller.
            recoveredBlock74PC := 228.
        ].
        recoveredBlock74Step = 228 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local4.
            recoveredBlock74PC := 229.
        ].
        recoveredBlock74Step = 229 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextObjectFrom: (recoveredBlock74Stack2).
            recoveredBlock74PC := 231.
        ].
        recoveredBlock74Step = 231 ifTrue: [
            recoveredBlock74Local2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 232.
        ].
        recoveredBlock74Step = 232 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local2.
            recoveredBlock74PC := 233.
        ].
        recoveredBlock74Step = 233 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) isInteger.
            recoveredBlock74PC := 235.
        ].
        recoveredBlock74Step = 235 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 238] ifFalse: [recoveredBlock74PC := 260].
        ].
        recoveredBlock74Step = 238 ifTrue: [
            recoveredBlock74Stack1 := EmMarshaller.
            recoveredBlock74PC := 240.
        ].
        recoveredBlock74Step = 240 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 241.
        ].
        recoveredBlock74Step = 241 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Local4.
            recoveredBlock74PC := 242.
        ].
        recoveredBlock74Step = 242 ifTrue: [
            (recoveredBlock74Stack2) nextObjectFrom: (recoveredBlock74Stack3).
            recoveredBlock74PC := 244.
        ].
        recoveredBlock74Step = 244 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local4.
            recoveredBlock74PC := 245.
        ].
        recoveredBlock74Step = 245 ifTrue: [
            (recoveredBlock74Stack1) nextObjectFrom: (recoveredBlock74Stack2).
            recoveredBlock74PC := 247.
        ].
        recoveredBlock74Step = 247 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 248.
        ].
        recoveredBlock74Step = 248 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) methodCacheTable.
            recoveredBlock74PC := 250.
        ].
        recoveredBlock74Step = 250 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local2.
            recoveredBlock74PC := 251.
        ].
        recoveredBlock74Step = 251 ifTrue: [
            recoveredBlock74Stack3 := Association.
            recoveredBlock74PC := 253.
        ].
        recoveredBlock74Step = 253 ifTrue: [
            recoveredBlock74Stack4 := recoveredBlock74Local5.
            recoveredBlock74PC := 255.
        ].
        recoveredBlock74Step = 255 ifTrue: [
            recoveredBlock74Stack5 := recoveredBlock74Local1.
            recoveredBlock74PC := 256.
        ].
        recoveredBlock74Step = 256 ifTrue: [
            recoveredBlock74Stack3 := (recoveredBlock74Stack3) key: (recoveredBlock74Stack4) value: (recoveredBlock74Stack5).
            recoveredBlock74PC := 258.
        ].
        recoveredBlock74Step = 258 ifTrue: [
            (recoveredBlock74Stack1) at: (recoveredBlock74Stack2) put: (recoveredBlock74Stack3).
            recoveredBlock74PC := 260.
        ].
        recoveredBlock74Step = 260 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 261.
        ].
        recoveredBlock74Step = 261 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 262.
        ].
        recoveredBlock74Step = 262 ifTrue: [
            recoveredBlock74Local2 := recoveredBlock74Stack2.
            recoveredBlock74PC := 263.
        ].
        recoveredBlock74Step = 263 ifTrue: [
            recoveredBlock74Local1 := recoveredBlock74Stack1.
            recoveredBlock74PC := 264.
        ].
        recoveredBlock74Step = 264 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Local4.
            recoveredBlock74PC := 265.
        ].
        recoveredBlock74Step = 265 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) atEnd.
            recoveredBlock74PC := 267.
        ].
        recoveredBlock74Step = 267 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 269] ifFalse: [recoveredBlock74PC := 222].
        ].
        recoveredBlock74Step = 269 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 270.
        ].
        recoveredBlock74Step = 270 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 271.
        ].
        recoveredBlock74Step = 271 ifTrue: [
            recoveredBlock74Local4 := recoveredBlock74Stack2.
            recoveredBlock74PC := 272.
        ].
        recoveredBlock74Step = 272 ifTrue: [
            recoveredBlock74Local3 := recoveredBlock74Stack1.
            recoveredBlock74PC := 273.
        ].
        recoveredBlock74Step = 273 ifTrue: [
            (recoveredBlock74Stack0 isInteger and: [recoveredBlock74Local5 isInteger]) ifTrue: [(recoveredBlock74Local5 + 1 <= recoveredBlock74Stack0) ifTrue: [recoveredBlock74Local5 := recoveredBlock74Local5 + 1. recoveredBlock74PC := 94] ifFalse: [recoveredBlock74Local5 := nil. recoveredBlock74PC := 293]] ifFalse: [recoveredBlock74PC := 279].
        ].
        recoveredBlock74Step = 279 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Stack0.
            recoveredBlock74PC := 280.
        ].
        recoveredBlock74Step = 280 ifTrue: [
            recoveredBlock74Stack2 := recoveredBlock74Local5.
            recoveredBlock74PC := 282.
        ].
        recoveredBlock74Step = 282 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) + (1).
            recoveredBlock74PC := 283.
        ].
        recoveredBlock74Step = 283 ifTrue: [
            recoveredBlock74Stack3 := recoveredBlock74Stack2.
            recoveredBlock74PC := 284.
        ].
        recoveredBlock74Step = 284 ifTrue: [
            recoveredBlock74Local5 := recoveredBlock74Stack3.
            recoveredBlock74PC := 286.
        ].
        recoveredBlock74Step = 286 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) < (recoveredBlock74Stack2).
            recoveredBlock74PC := 287.
        ].
        recoveredBlock74Step = 287 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 290] ifFalse: [recoveredBlock74PC := 94].
        ].
        recoveredBlock74Step = 290 ifTrue: [
            recoveredBlock74Stack1 := nil.
            recoveredBlock74PC := 291.
        ].
        recoveredBlock74Step = 291 ifTrue: [
            recoveredBlock74Local5 := recoveredBlock74Stack1.
            recoveredBlock74PC := 293.
        ].
        recoveredBlock74Step = 293 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack0.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := [:recoveredBlock296Arg1 | 
    | recoveredBlock296Value0 recoveredBlock296Value1 |
    (self) resetMethodCache.
    recoveredBlock296Value0 := recoveredBlock296Arg1.
    recoveredBlock296Value1 := (recoveredBlock296Value0) exitWith: (nil).
    recoveredBlock296Value1
].
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

