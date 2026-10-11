"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200275b8; bytecode file offset 0x924260"
!SGGenericSourceObject methodsFor: 'recovered'!
hasBemSources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200275f4; bytecode file offset 0x924260"
!SGGenericSourceObject methodsFor: 'recovered'!
hasGenericModuleSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027660; bytecode file offset 0x924260"
!SGGenericSourceObject methodsFor: 'recovered'!
hasGenericInlineSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002787c; bytecode file offset 0x924260"
!SGGenericSourceObject methodsFor: 'recovered'!
hasDbSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbSourceHandles.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200278c4; bytecode file offset 0x924260"
!SGGenericSourceObject methodsFor: 'recovered'!
hasGenericHeaderSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20028134; bytecode file offset 0x934580"
!SGGenericSourceObject methodsFor: 'recovered'!
hasInternalHeaderSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) hasInternalGenericHeaderSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c514; bytecode file offset 0x934580"
!SGGenericSourceObject methodsFor: 'recovered'!
hasGenericCSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) hasGenericCSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d084; bytecode file offset 0x934580"
!SGGenericSourceObject methodsFor: 'recovered'!
hasGenericSCOOPIXSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) hasGenericSCOOPIXSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d0b4; bytecode file offset 0x934580"
!SGGenericSourceObject methodsFor: 'recovered'!
hasInlineHeaderSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) hasInlineGenericHeaderSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030d84; bytecode file offset 0x934580"
!SGGenericSourceObject methodsFor: 'recovered'!
hasGenericHSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) hasGenericHSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037bf4; bytecode file offset 0x934580"
!SGGenericSourceObject methodsFor: 'recovered'!
hasInlineGenericHeaderSource
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bemSourceHandle.
    recoveredValue1 := (recoveredValue0) hasInlineGenericHeaderSource.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070098; bytecode file offset 0x96cb7c"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceHandle
    | recoveredValue0 |
    recoveredValue0 := bemSourceHandle.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f91e0; bytecode file offset 0x9f5a9c"
!SGGenericSourceObject methodsFor: 'recovered'!
hasInternalGenericHeaderSource
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bemSourceHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) bemSourceHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInternalGenericHeaderSource.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200ff7fc; bytecode file offset 0x9fc0c0"
!SGGenericSourceObject methodsFor: 'recovered'!
addDbSourceHandle: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dbSourceHandles.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := (self) eccoDbFileName.
    (self) addFileName: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012ac28; bytecode file offset 0xa274f4"
!SGGenericSourceObject methodsFor: 'recovered'!
dbSourceHandles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbSourceHandles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            dbSourceHandles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := dbSourceHandles.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20158c38; bytecode file offset 0xa55574"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceH
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) bemSourceHandle.
    recoveredValue4 := (recoveredValue3) bemSourceH.
    (recoveredValue2) newlinePutAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asPerlCodeStream.
    recoveredValue7 := (recoveredValue6) getContentsWithReturnValue.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20158c5c; bytecode file offset 0xa55574"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceInline
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) bemSourceHandle.
    recoveredValue4 := (recoveredValue3) bemSourceInline.
    (recoveredValue2) newlinePutAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asPerlCodeStream.
    recoveredValue7 := (recoveredValue6) getContentsWithReturnValue.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20158c80; bytecode file offset 0xa55574"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceC
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) bemSourceHandle.
    recoveredValue4 := (recoveredValue3) bemSourceC.
    (recoveredValue2) newlinePutAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asPerlCodeStream.
    recoveredValue7 := (recoveredValue6) getContentsWithReturnValue.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20158ca4; bytecode file offset 0xa55574"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceIH
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (self) bemSourceHandle.
    recoveredValue4 := (recoveredValue3) bemSourceIH.
    (recoveredValue2) newlinePutAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) asPerlCodeStream.
    recoveredValue7 := (recoveredValue6) getContentsWithReturnValue.
    ^recoveredValue7
! !

"ASDBase.ic method 0x20198df4; bytecode file offset 0xa956c8"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceSIX
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) newline.
    recoveredValue4 := (self) bemSourceHandle.
    recoveredValue5 := (recoveredValue4) bemSourceSIX.
    (recoveredValue2) nextPutStream: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) asPerlCodeStream.
    recoveredValue8 := (recoveredValue7) getContentsWithReturnValue.
    ^recoveredValue8
! !

"ASDBase.ic method 0x202431b8; bytecode file offset 0xb3fa8c"
!SGGenericSourceObject methodsFor: 'recovered'!
dbSource
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) dbSourceHandles.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) dbSource.
    recoveredBlock11Value3 := (recoveredBlock11Value0) newlinePutAll: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asPerlCodeStream.
    recoveredValue6 := (recoveredValue5) getContentsWithReturnValue.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2032ba9c; bytecode file offset 0xc28378"
!SGGenericSourceObject methodsFor: 'recovered'!
bemSourceHandle: recoveredArg1
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
            bemSourceHandle := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) eccoHFileName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) addFileName: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericCSource.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
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
            recoveredStack1 := (recoveredStack1) eccoCFileName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addFileName: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInlineGenericHeaderSource.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) eccoInlineHFileName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addFileName: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInternalGenericHeaderSource.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) eccoInternalHFileName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) addFileName: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasGenericSCOOPIXSource.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) eccoSixFileName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) addFileName: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

