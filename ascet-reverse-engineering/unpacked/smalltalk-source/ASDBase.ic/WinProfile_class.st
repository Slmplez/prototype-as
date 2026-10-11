"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200133e0; bytecode file offset 0x912098"
!WinProfile class methodsFor: 'recovered'!
kernelLibrary
    | recoveredValue0 |
    recoveredValue0 := KernelLibrary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053e58; bytecode file offset 0x951190"
!WinProfile class methodsFor: 'recovered'!
kernelLibrary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    KernelLibrary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054800; bytecode file offset 0x951190"
!WinProfile class methodsFor: 'recovered'!
CachedIniFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CachedIniFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2008e5d4; bytecode file offset 0x98aef8"
!WinProfile class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    (self) initializeClass.
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bd2ac; bytecode file offset 0x9b9b80"
!WinProfile class methodsFor: 'recovered'!
removeFromIniFileCache: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) CachedIniFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fffd0; bytecode file offset 0x9fc894"
!WinProfile class methodsFor: 'recovered'!
writeIniFile: recoveredArg1 stream: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ETASOSHandle.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) collection.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) position.
    recoveredValue6 := (recoveredValue0) createFile: (recoveredValue1) bytes: (recoveredValue3) write: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010893c; bytecode file offset 0xa051fc"
!WinProfile class methodsFor: 'recovered'!
writeAllCachedIniFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) CachedIniFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c6480Arg1 :block280c6480Arg2 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a86c; bytecode file offset 0xa07130"
!WinProfile class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) CachedIniFiles.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) CachedIniFiles: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201284ec; bytecode file offset 0xa24eb0"
!WinProfile class methodsFor: 'recovered'!
CachedIniFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CachedIniFiles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            CachedIniFiles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CachedIniFiles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201565e0; bytecode file offset 0xa52e9c"
!WinProfile class methodsFor: 'recovered'!
cachedIniFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) CachedIniFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    ^recoveredBlock8Value0
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015ab98; bytecode file offset 0xa5745c"
!WinProfile class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    (self) readIniFile: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) readSectionNames: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) getSectionEntries: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201877cc; bytecode file offset 0xa84090"
!WinProfile class methodsFor: 'recovered'!
updateIniFileCache: recoveredArg1 sections: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) CachedIniFiles.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) updateTimeStampFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201a7b18; bytecode file offset 0xaa43d8"
!WinProfile class methodsFor: 'recovered'!
updateTimeStampFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) CachedIniFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := recoveredBlock8Arg1.
    recoveredBlock8Value2 := (self) updateTimeStampFor: (recoveredBlock8Value0) in: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201b8ec8; bytecode file offset 0xab5798"
!WinProfile class methodsFor: 'recovered'!
readFileOnce: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ETASOSHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchForIniFile: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFile: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) CachedIniFiles.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201fb12c; bytecode file offset 0xaf79fc"
!WinProfile class methodsFor: 'recovered'!
updateTimeStampFor: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'timeStamp'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := CfsStat.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) stat: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := (recoveredStack3) isError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := #(0).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) stMtime.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20209540; bytecode file offset 0xb05e0c"
!WinProfile class methodsFor: 'recovered'!
parseIniFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFile: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) parseIniFileContents: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) CachedIniFiles.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) updateTimeStampFor: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202af620; bytecode file offset 0xbabeec"
!WinProfile class methodsFor: 'recovered'!
checkTimeStamp: recoveredArg1 for: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) stMtime.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035a4c0; bytecode file offset 0xc56d90"
!WinProfile class methodsFor: 'recovered'!
isCommentLine: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOrNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := $;.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) min: (recoveredStack5).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'rem'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint16At: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 12079.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f23a0; bytecode file offset 0xceec78"
!WinProfile class methodsFor: 'recovered'!
readIniFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) CachedIniFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := nil.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) isError.
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            (recoveredBlock8Stack2) ifTrue: [recoveredBlock8PC := 54] ifFalse: [recoveredBlock8PC := 22].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack2 := 'timeStamp'.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack3 := [:recoveredBlock8Block28Arg1 | 
    | recoveredBlock8Block28Stack0 recoveredBlock8Block28Stack1 recoveredBlock8Block28Stack2 recoveredBlock8Block28Stack3 recoveredBlock8Block28Stack4 recoveredBlock8Block28Stack5 recoveredBlock8Block28PC recoveredBlock8Block28Step recoveredBlock8Block28Done recoveredBlock8Block28Result |
    recoveredBlock8Block28Stack0 := self.
    recoveredBlock8Block28PC := 34.
    recoveredBlock8Block28Done := false.
    [recoveredBlock8Block28Done not] whileTrue: [
        recoveredBlock8Block28Step := recoveredBlock8Block28PC.
        recoveredBlock8Block28Step = 34 ifTrue: [
            recoveredBlock8Block28Stack1 := nil.
            recoveredBlock8Block28PC := 35.
        ].
        recoveredBlock8Block28Step = 35 ifTrue: [
            recoveredBlock8Block28Stack2 := self.
            recoveredBlock8Block28PC := 36.
        ].
        recoveredBlock8Block28Step = 36 ifTrue: [
            recoveredBlock8Block28Stack3 := recoveredBlock8Block28Arg1.
            recoveredBlock8Block28PC := 37.
        ].
        recoveredBlock8Block28Step = 37 ifTrue: [
            recoveredBlock8Block28Stack4 := recoveredArg1.
            recoveredBlock8Block28PC := 40.
        ].
        recoveredBlock8Block28Step = 40 ifTrue: [
            recoveredBlock8Block28Stack2 := (recoveredBlock8Block28Stack2) checkTimeStamp: (recoveredBlock8Block28Stack3) for: (recoveredBlock8Block28Stack4).
            recoveredBlock8Block28PC := 42.
        ].
        recoveredBlock8Block28Step = 42 ifTrue: [
            (recoveredBlock8Block28Stack2) ifTrue: [recoveredBlock8Block28PC := 46] ifFalse: [recoveredBlock8Block28PC := 51].
        ].
        recoveredBlock8Block28Step = 46 ifTrue: [
            recoveredBlock8Block28PC := 47.
        ].
        recoveredBlock8Block28Step = 47 ifTrue: [
            recoveredBlock8Block28Stack1 := recoveredBlock8Arg1.
            recoveredBlock8Block28PC := 50.
        ].
        recoveredBlock8Block28Step = 50 ifTrue: [
            ^recoveredBlock8Block28Stack1
        ].
        recoveredBlock8Block28Step = 51 ifTrue: [
            recoveredBlock8Block28Result := recoveredBlock8Block28Stack1.
            recoveredBlock8Block28Done := true.
        ].
    ].
    recoveredBlock8Block28Result
].
            recoveredBlock8PC := 52.
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) at: (recoveredBlock8Stack2) ifPresent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 54.
        ].
        recoveredBlock8Step = 54 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue0) at: (recoveredValue1) ifPresent: (recoveredValue2).
    recoveredValue3 := Time.
    recoveredValue4 := [
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 |
    recoveredBlock59Value0 := recoveredArg1.
    recoveredBlock59Value1 := (self) parseIniFile: (recoveredBlock59Value0).
    recoveredBlock59Value2 := recoveredBlock59Value1.
    recoveredLocal2 := recoveredBlock59Value2.
    recoveredBlock59Value1
].
    (recoveredValue3) millisecondsToRun: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal2.
    (self) updateIniFileCache: (recoveredValue5) sections: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2042f9bc; bytecode file offset 0xd2c2a4"
!WinProfile class methodsFor: 'recovered'!
readFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := Cr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := Lf.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := $ .
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (Character value: 9).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := $[.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 6.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := $;.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFileOnce: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFileOnce: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := ETASError.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 'invalidFileType'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasic: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204604d4; bytecode file offset 0xd5cdcc"
!WinProfile class methodsFor: 'recovered'!
searchForIniFile: recoveredArg1
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
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolute.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppProgramPath.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) systemPath.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) getWindowsDirectory: (recoveredStack2) cbSysPath: (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) trimNull.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := EtasGeneralDllApi.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAppDataPath.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20474718; bytecode file offset 0xd71020"
!WinProfile class methodsFor: 'recovered'!
writeIniFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) CachedIniFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := (self) etasDevHalt.
    recoveredBlock8Value0
].
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isError.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 30] ifFalse: [recoveredBlock16PC := 34].
        ].
        recoveredBlock16Step = 30 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 33.
        ].
        recoveredBlock16Step = 33 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16Stack1 := WriteStream.
            recoveredBlock16PC := 36.
        ].
        recoveredBlock16Step = 36 ifTrue: [
            recoveredBlock16Stack2 := Locale.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) current.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) preferredStringClass.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) new.
            recoveredBlock16PC := 44.
        ].
        recoveredBlock16Step = 44 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) on: (recoveredBlock16Stack2).
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack2 := 'timeStamp'.
            recoveredBlock16PC := 54.
        ].
        recoveredBlock16Step = 54 ifTrue: [
            recoveredBlock16Stack3 := [].
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) removeKey: (recoveredBlock16Stack2) ifAbsent: (recoveredBlock16Stack3).
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredLocal1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 61.
        ].
        recoveredBlock16Step = 61 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            recoveredBlock16Stack2 := [:block281018a8Arg1 :block281018a8Arg2 | 
    | block281018a8Value0 block281018a8Value1 block281018a8Value2 block281018a8Value3 block281018a8Value4 |
    block281018a8Value0 := block281018a8Arg1.
    block281018a8Value1 := (block281018a8Value0) sequenceNumber.
    block281018a8Value2 := block281018a8Arg2.
    block281018a8Value3 := (block281018a8Value2) sequenceNumber.
    block281018a8Value4 := (block281018a8Value1) < (block281018a8Value3).
    block281018a8Value4
].
            recoveredBlock16PC := 66.
        ].
        recoveredBlock16Step = 66 ifTrue: [
            recoveredBlock16PC := 78.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) asSortedCollection: (recoveredBlock16Stack2).
            recoveredBlock16PC := 80.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block80Arg1 | 
    | recoveredBlock16Block80Value0 recoveredBlock16Block80Value1 recoveredBlock16Block80Value2 recoveredBlock16Block80Value3 |
    recoveredBlock16Block80Value0 := recoveredBlock16Block80Arg1.
    recoveredBlock16Block80Value1 := recoveredBlock16Local1.
    (recoveredBlock16Block80Value0) putIn: (recoveredBlock16Block80Value1).
    recoveredBlock16Block80Value2 := recoveredBlock16Local1.
    recoveredBlock16Block80Value3 := (recoveredBlock16Block80Value2) cr.
    recoveredBlock16Block80Value3
].
            recoveredBlock16PC := 98.
        ].
        recoveredBlock16Step = 98 ifTrue: [
            (recoveredBlock16Stack1) do: (recoveredBlock16Stack2).
            recoveredBlock16PC := 100.
        ].
        recoveredBlock16Step = 100 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 103.
        ].
        recoveredBlock16Step = 103 ifTrue: [
            recoveredBlock16Stack2 := 'timeStamp'.
            recoveredBlock16PC := 105.
        ].
        recoveredBlock16Step = 105 ifTrue: [
            recoveredBlock16Stack3 := recoveredLocal1.
            recoveredBlock16PC := 108.
        ].
        recoveredBlock16Step = 108 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 110.
        ].
        recoveredBlock16Step = 110 ifTrue: [
            recoveredBlock16Stack1 := recoveredArg1.
            recoveredBlock16PC := 113.
        ].
        recoveredBlock16Step = 113 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local1.
            recoveredBlock16PC := 116.
        ].
        recoveredBlock16Step = 116 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) writeIniFile: (recoveredBlock16Stack1) stream: (recoveredBlock16Stack2).
            recoveredBlock16PC := 118.
        ].
        recoveredBlock16Step = 118 ifTrue: [
            ^recoveredBlock16Stack0
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x205a9648; bytecode file offset 0xea5f90"
!WinProfile class methodsFor: 'recovered'!
parseIniFileContents: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredLocal1 := 0.
    recoveredValue0 := EsOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := Array.
    recoveredValue4 := Cr.
    recoveredValue5 := Lf.
    recoveredValue6 := (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue2) asArrayOfSubstringsSeparatedBy: (recoveredValue6).
    recoveredLocal4 := recoveredValue7.
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := [:recoveredBlock34Arg1 :recoveredBlock34Arg2 | 
    | recoveredBlock34Local1 recoveredBlock34Local2 recoveredBlock34Local3 recoveredBlock34Local4 recoveredBlock34Stack0 recoveredBlock34Stack1 recoveredBlock34Stack2 recoveredBlock34Stack3 recoveredBlock34Stack4 recoveredBlock34Stack5 recoveredBlock34PC recoveredBlock34Step recoveredBlock34Done recoveredBlock34Result |
    recoveredBlock34Stack0 := self.
    recoveredBlock34PC := 40.
    recoveredBlock34Done := false.
    [recoveredBlock34Done not] whileTrue: [
        recoveredBlock34Step := recoveredBlock34PC.
        recoveredBlock34Step = 40 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 41.
        ].
        recoveredBlock34Step = 41 ifTrue: [
            recoveredBlock34Stack2 := self.
            recoveredBlock34PC := 42.
        ].
        recoveredBlock34Step = 42 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg1.
            recoveredBlock34PC := 45.
        ].
        recoveredBlock34Step = 45 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) isCommentLine: (recoveredBlock34Stack3).
            recoveredBlock34PC := 47.
        ].
        recoveredBlock34Step = 47 ifTrue: [
            (recoveredBlock34Stack2) ifTrue: [recoveredBlock34PC := 295] ifFalse: [recoveredBlock34PC := 50].
        ].
        recoveredBlock34Step = 50 ifTrue: [
            recoveredBlock34PC := 51.
        ].
        recoveredBlock34Step = 51 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 54.
        ].
        recoveredBlock34Step = 54 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) firstOrNil.
            recoveredBlock34PC := 56.
        ].
        recoveredBlock34Step = 56 ifTrue: [
            recoveredBlock34Stack2 := $[.
            recoveredBlock34PC := 60.
        ].
        recoveredBlock34Step = 60 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) = (recoveredBlock34Stack2).
            recoveredBlock34PC := 61.
        ].
        recoveredBlock34Step = 61 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 64] ifFalse: [recoveredBlock34PC := 120].
        ].
        recoveredBlock34Step = 64 ifTrue: [
            recoveredBlock34Stack1 := IniSection.
            recoveredBlock34PC := 66.
        ].
        recoveredBlock34Step = 66 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Arg1.
            recoveredBlock34PC := 69.
        ].
        recoveredBlock34Step = 69 ifTrue: [
            recoveredBlock34Stack3 := 2.
            recoveredBlock34PC := 71.
        ].
        recoveredBlock34Step = 71 ifTrue: [
            recoveredBlock34Stack4 := recoveredBlock34Arg1.
            recoveredBlock34PC := 74.
        ].
        recoveredBlock34Step = 74 ifTrue: [
            recoveredBlock34Stack4 := (recoveredBlock34Stack4) size.
            recoveredBlock34PC := 76.
        ].
        recoveredBlock34Step = 76 ifTrue: [
            recoveredBlock34Stack4 := (recoveredBlock34Stack4) + (-1).
            recoveredBlock34PC := 77.
        ].
        recoveredBlock34Step = 77 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) copyFrom: (recoveredBlock34Stack3) to: (recoveredBlock34Stack4).
            recoveredBlock34PC := 79.
        ].
        recoveredBlock34Step = 79 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) trimBlanks.
            recoveredBlock34PC := 81.
        ].
        recoveredBlock34Step = 81 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) create: (recoveredBlock34Stack2).
            recoveredBlock34PC := 83.
        ].
        recoveredBlock34Step = 83 ifTrue: [
            recoveredLocal2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 86.
        ].
        recoveredBlock34Step = 86 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal3.
            recoveredBlock34PC := 89.
        ].
        recoveredBlock34Step = 89 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal2.
            recoveredBlock34PC := 92.
        ].
        recoveredBlock34Step = 92 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) name.
            recoveredBlock34PC := 94.
        ].
        recoveredBlock34Step = 94 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) asLowercase.
            recoveredBlock34PC := 96.
        ].
        recoveredBlock34Step = 96 ifTrue: [
            recoveredBlock34Stack3 := recoveredLocal2.
            recoveredBlock34PC := 99.
        ].
        recoveredBlock34Step = 99 ifTrue: [
            (recoveredBlock34Stack1) at: (recoveredBlock34Stack2) put: (recoveredBlock34Stack3).
            recoveredBlock34PC := 101.
        ].
        recoveredBlock34Step = 101 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal1.
            recoveredBlock34PC := 104.
        ].
        recoveredBlock34Step = 104 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) + (1).
            recoveredBlock34PC := 105.
        ].
        recoveredBlock34Step = 105 ifTrue: [
            recoveredLocal1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 108.
        ].
        recoveredBlock34Step = 108 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal2.
            recoveredBlock34PC := 111.
        ].
        recoveredBlock34Step = 111 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal1.
            recoveredBlock34PC := 114.
        ].
        recoveredBlock34Step = 114 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) sequenceNumber: (recoveredBlock34Stack2).
            recoveredBlock34PC := 116.
        ].
        recoveredBlock34Step = 116 ifTrue: [
            recoveredBlock34PC := 295.
        ].
        recoveredBlock34Step = 120 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Arg1.
            recoveredBlock34PC := 123.
        ].
        recoveredBlock34Step = 123 ifTrue: [
            recoveredBlock34Stack2 := $=.
            recoveredBlock34PC := 126.
        ].
        recoveredBlock34Step = 126 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) allSubStrings: (recoveredBlock34Stack2).
            recoveredBlock34PC := 128.
        ].
        recoveredBlock34Step = 128 ifTrue: [
            recoveredBlock34Local3 := recoveredBlock34Stack1.
            recoveredBlock34PC := 131.
        ].
        recoveredBlock34Step = 131 ifTrue: [
            recoveredBlock34Stack1 := ''.
            recoveredBlock34PC := 133.
        ].
        recoveredBlock34Step = 133 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 136.
        ].
        recoveredBlock34Step = 136 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local3.
            recoveredBlock34PC := 139.
        ].
        recoveredBlock34Step = 139 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) size.
            recoveredBlock34PC := 141.
        ].
        recoveredBlock34Step = 141 ifTrue: [
            recoveredBlock34Stack2 := 2.
            recoveredBlock34PC := 143.
        ].
        recoveredBlock34Step = 143 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) > (recoveredBlock34Stack2).
            recoveredBlock34PC := 144.
        ].
        recoveredBlock34Step = 144 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 148] ifFalse: [recoveredBlock34PC := 193].
        ].
        recoveredBlock34Step = 148 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local3.
            recoveredBlock34PC := 151.
        ].
        recoveredBlock34Step = 151 ifTrue: [
            recoveredBlock34Stack2 := 2.
            recoveredBlock34PC := 153.
        ].
        recoveredBlock34Step = 153 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2).
            recoveredBlock34PC := 155.
        ].
        recoveredBlock34Step = 155 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 158.
        ].
        recoveredBlock34Step = 158 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local3.
            recoveredBlock34PC := 161.
        ].
        recoveredBlock34Step = 161 ifTrue: [
            recoveredBlock34Stack2 := 3.
            recoveredBlock34PC := 163.
        ].
        recoveredBlock34Step = 163 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Local3.
            recoveredBlock34PC := 166.
        ].
        recoveredBlock34Step = 166 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) size.
            recoveredBlock34PC := 168.
        ].
        recoveredBlock34Step = 168 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) copyFrom: (recoveredBlock34Stack2) to: (recoveredBlock34Stack3).
            recoveredBlock34PC := 170.
        ].
        recoveredBlock34Step = 170 ifTrue: [
            recoveredBlock34Stack2 := [:recoveredBlock34Block170Arg1 | 
    | recoveredBlock34Block170Value0 recoveredBlock34Block170Value1 recoveredBlock34Block170Value2 recoveredBlock34Block170Value3 recoveredBlock34Block170Value4 |
    recoveredBlock34Block170Value0 := recoveredBlock34Local1.
    recoveredBlock34Block170Value1 := (recoveredBlock34Block170Value0) , ('=').
    recoveredBlock34Block170Value2 := recoveredBlock34Block170Arg1.
    recoveredBlock34Block170Value3 := (recoveredBlock34Block170Value1) , (recoveredBlock34Block170Value2).
    recoveredBlock34Block170Value4 := recoveredBlock34Block170Value3.
    recoveredBlock34Local1 := recoveredBlock34Block170Value4.
    recoveredBlock34Block170Value3
].
            recoveredBlock34PC := 191.
        ].
        recoveredBlock34Step = 191 ifTrue: [
            (recoveredBlock34Stack1) do: (recoveredBlock34Stack2).
            recoveredBlock34PC := 193.
        ].
        recoveredBlock34Step = 193 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local3.
            recoveredBlock34PC := 196.
        ].
        recoveredBlock34Step = 196 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) size.
            recoveredBlock34PC := 198.
        ].
        recoveredBlock34Step = 198 ifTrue: [
            recoveredBlock34Stack2 := 2.
            recoveredBlock34PC := 200.
        ].
        recoveredBlock34Step = 200 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) = (recoveredBlock34Stack2).
            recoveredBlock34PC := 201.
        ].
        recoveredBlock34Step = 201 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 204] ifFalse: [recoveredBlock34PC := 214].
        ].
        recoveredBlock34Step = 204 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local3.
            recoveredBlock34PC := 207.
        ].
        recoveredBlock34Step = 207 ifTrue: [
            recoveredBlock34Stack2 := 2.
            recoveredBlock34PC := 209.
        ].
        recoveredBlock34Step = 209 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) at: (recoveredBlock34Stack2).
            recoveredBlock34PC := 211.
        ].
        recoveredBlock34Step = 211 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack1.
            recoveredBlock34PC := 214.
        ].
        recoveredBlock34Step = 214 ifTrue: [
            recoveredBlock34Stack1 := Locale.
            recoveredBlock34PC := 216.
        ].
        recoveredBlock34Step = 216 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) current.
            recoveredBlock34PC := 218.
        ].
        recoveredBlock34Step = 218 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) isDBLocale.
            recoveredBlock34PC := 220.
        ].
        recoveredBlock34Step = 220 ifTrue: [
            (recoveredBlock34Stack1) ifTrue: [recoveredBlock34PC := 224] ifFalse: [recoveredBlock34PC := 236].
        ].
        recoveredBlock34Step = 224 ifTrue: [
            recoveredBlock34Stack1 := EsLeadEncodedBytes.
            recoveredBlock34PC := 226.
        ].
        recoveredBlock34Step = 226 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Local1.
            recoveredBlock34PC := 229.
        ].
        recoveredBlock34Step = 229 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) fromString: (recoveredBlock34Stack2).
            recoveredBlock34PC := 231.
        ].
        recoveredBlock34Step = 231 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) asString.
            recoveredBlock34PC := 233.
        ].
        recoveredBlock34Step = 233 ifTrue: [
            recoveredBlock34PC := 239.
        ].
        recoveredBlock34Step = 236 ifTrue: [
            recoveredBlock34Stack1 := recoveredBlock34Local1.
            recoveredBlock34PC := 239.
        ].
        recoveredBlock34Step = 239 ifTrue: [
            recoveredBlock34Local2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 242.
        ].
        recoveredBlock34Step = 242 ifTrue: [
            recoveredBlock34Stack1 := IniEntry.
            recoveredBlock34PC := 244.
        ].
        recoveredBlock34Step = 244 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Local3.
            recoveredBlock34PC := 247.
        ].
        recoveredBlock34Step = 247 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) first.
            recoveredBlock34PC := 249.
        ].
        recoveredBlock34Step = 249 ifTrue: [
            recoveredBlock34Stack2 := (recoveredBlock34Stack2) trimSeparators.
            recoveredBlock34PC := 251.
        ].
        recoveredBlock34Step = 251 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Local2.
            recoveredBlock34PC := 254.
        ].
        recoveredBlock34Step = 254 ifTrue: [
            recoveredBlock34Stack3 := (recoveredBlock34Stack3) trimBlanks.
            recoveredBlock34PC := 256.
        ].
        recoveredBlock34Step = 256 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) create: (recoveredBlock34Stack2) value: (recoveredBlock34Stack3).
            recoveredBlock34PC := 258.
        ].
        recoveredBlock34Step = 258 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Stack1.
            recoveredBlock34PC := 259.
        ].
        recoveredBlock34Step = 259 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Arg2.
            recoveredBlock34PC := 262.
        ].
        recoveredBlock34Step = 262 ifTrue: [
            (recoveredBlock34Stack2) lineNumber: (recoveredBlock34Stack3).
            recoveredBlock34PC := 264.
        ].
        recoveredBlock34Step = 264 ifTrue: [
            recoveredBlock34Local4 := recoveredBlock34Stack1.
            recoveredBlock34PC := 267.
        ].
        recoveredBlock34Step = 267 ifTrue: [
            recoveredBlock34Stack1 := nil.
            recoveredBlock34PC := 268.
        ].
        recoveredBlock34Step = 268 ifTrue: [
            recoveredBlock34Stack2 := recoveredLocal2.
            recoveredBlock34PC := 271.
        ].
        recoveredBlock34Step = 271 ifTrue: [
            (recoveredBlock34Stack2 == nil) ifTrue: [recoveredBlock34PC := 283] ifFalse: [recoveredBlock34PC := 274].
        ].
        recoveredBlock34Step = 274 ifTrue: [
            recoveredBlock34PC := 275.
        ].
        recoveredBlock34Step = 275 ifTrue: [
            recoveredBlock34Stack1 := recoveredLocal2.
            recoveredBlock34PC := 278.
        ].
        recoveredBlock34Step = 278 ifTrue: [
            recoveredBlock34Stack2 := recoveredBlock34Local4.
            recoveredBlock34PC := 281.
        ].
        recoveredBlock34Step = 281 ifTrue: [
            recoveredBlock34Stack1 := (recoveredBlock34Stack1) addEntry: (recoveredBlock34Stack2).
            recoveredBlock34PC := 283.
        ].
        recoveredBlock34Step = 283 ifTrue: [
            recoveredBlock34Stack2 := nil.
            recoveredBlock34PC := 284.
        ].
        recoveredBlock34Step = 284 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Stack2.
            recoveredBlock34PC := 285.
        ].
        recoveredBlock34Step = 285 ifTrue: [
            recoveredBlock34Local3 := recoveredBlock34Stack3.
            recoveredBlock34PC := 288.
        ].
        recoveredBlock34Step = 288 ifTrue: [
            recoveredBlock34Stack3 := recoveredBlock34Stack2.
            recoveredBlock34PC := 289.
        ].
        recoveredBlock34Step = 289 ifTrue: [
            recoveredBlock34Local2 := recoveredBlock34Stack3.
            recoveredBlock34PC := 292.
        ].
        recoveredBlock34Step = 292 ifTrue: [
            recoveredBlock34Local1 := recoveredBlock34Stack2.
            recoveredBlock34PC := 295.
        ].
        recoveredBlock34Step = 295 ifTrue: [
            recoveredBlock34Result := recoveredBlock34Stack1.
            recoveredBlock34Done := true.
        ].
    ].
    recoveredBlock34Result
].
    (recoveredValue8) doWithIndex: (recoveredValue9).
    recoveredValue10 := recoveredLocal3.
    ^recoveredValue10
! !

