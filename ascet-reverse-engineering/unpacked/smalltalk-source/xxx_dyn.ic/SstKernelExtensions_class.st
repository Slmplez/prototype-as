"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000018; bytecode file offset 0x6147c"
!SstKernelExtensions class methodsFor: 'recovered'!
_PRAGMA_SstErrorConstants
    ^self
! !

"xxx_dyn.ic method 0x20000160; bytecode file offset 0x6147c"
!SstKernelExtensions class methodsFor: 'recovered'!
_PRAGMA_SstConstants
    ^self
! !

"xxx_dyn.ic method 0x20000250; bytecode file offset 0x6147c"
!SstKernelExtensions class methodsFor: 'recovered'!
_PRAGMA_NlsCatSSTG
    ^self
! !

"xxx_dyn.ic method 0x200010a8; bytecode file offset 0x626a4"
!SstKernelExtensions class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200015ac; bytecode file offset 0x626a4"
!SstKernelExtensions class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x2000297c; bytecode file offset 0x63b1c"
!SstKernelExtensions class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20002bd8; bytecode file offset 0x63cb8"
!SstKernelExtensions class methodsFor: 'recovered'!
timeStampFormatter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TimeStampFormatter := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000317c; bytecode file offset 0x64298"
!SstKernelExtensions class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := SstCron.
    (recoveredValue0) startUp.
    ^self
! !

"xxx_dyn.ic method 0x20006500; bytecode file offset 0x675cc"
!SstKernelExtensions class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    (self) initializeExceptions.
    (self) setupBase64Constants.
    ^self
! !

"xxx_dyn.ic method 0x2000b1c8; bytecode file offset 0x6c298"
!SstKernelExtensions class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := NlsCatSSTG.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := NlsCatSSTG.
    recoveredValue3 := (self) defaultMessagesLocale.
    (recoveredValue2) relocalizeTo: (recoveredValue3).
    ^self
! !

"xxx_dyn.ic method 0x200111ac; bytecode file offset 0x7228c"
!SstKernelExtensions class methodsFor: 'recovered'!
timeStampFormatter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TimeStampFormatter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcTime.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := MxSSTG190.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) dtFmt: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            TimeStampFormatter := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := TimeStampFormatter.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x200186a8; bytecode file offset 0x79c2c"
!SstKernelExtensions class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b10cArg1 | 
    | block2800b10cStack0 block2800b10cStack1 block2800b10cStack2 block2800b10cStack3 block2800b10cStack4 block2800b10cPC block2800b10cStep block2800b10cDone block2800b10cResult |
    block2800b10cStack0 := self.
    block2800b10cPC := 4.
    block2800b10cDone := false.
    [block2800b10cDone not] whileTrue: [
        block2800b10cStep := block2800b10cPC.
        block2800b10cStep = 4 ifTrue: [
            block2800b10cStack1 := block2800b10cArg1.
            block2800b10cPC := 5.
        ].
        block2800b10cStep = 5 ifTrue: [
            block2800b10cStack2 := 'cleanUpBeforeRemove'.
            block2800b10cPC := 7.
        ].
        block2800b10cStep = 7 ifTrue: [
            block2800b10cStack1 := (block2800b10cStack1) respondsTo: (block2800b10cStack2).
            block2800b10cPC := 8.
        ].
        block2800b10cStep = 8 ifTrue: [
            (block2800b10cStack1) ifTrue: [block2800b10cPC := 12] ifFalse: [block2800b10cPC := 15].
        ].
        block2800b10cStep = 12 ifTrue: [
            block2800b10cStack1 := block2800b10cArg1.
            block2800b10cPC := 13.
        ].
        block2800b10cStep = 13 ifTrue: [
            (block2800b10cStack1) cleanUpBeforeRemove.
            block2800b10cPC := 15.
        ].
        block2800b10cStep = 15 ifTrue: [
            block2800b10cStack1 := nil.
            block2800b10cPC := 16.
        ].
        block2800b10cStep = 16 ifTrue: [
            block2800b10cStack2 := block2800b10cArg1.
            block2800b10cPC := 17.
        ].
        block2800b10cStep = 17 ifTrue: [
            block2800b10cStack2 := (block2800b10cStack2) class.
            block2800b10cPC := 18.
        ].
        block2800b10cStep = 18 ifTrue: [
            block2800b10cStack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b10cPC := 20.
        ].
        block2800b10cStep = 20 ifTrue: [
            block2800b10cStack2 := (block2800b10cStack2) includesSelector: (block2800b10cStack3).
            block2800b10cPC := 22.
        ].
        block2800b10cStep = 22 ifTrue: [
            (block2800b10cStack2) ifTrue: [block2800b10cPC := 26] ifFalse: [block2800b10cPC := 30].
        ].
        block2800b10cStep = 26 ifTrue: [
            block2800b10cPC := 27.
        ].
        block2800b10cStep = 27 ifTrue: [
            block2800b10cStack1 := block2800b10cArg1.
            block2800b10cPC := 28.
        ].
        block2800b10cStep = 28 ifTrue: [
            block2800b10cStack1 := (block2800b10cStack1) cleanUpBeforeRemoveNonInherited.
            block2800b10cPC := 30.
        ].
        block2800b10cStep = 30 ifTrue: [
            block2800b10cResult := block2800b10cStack1.
            block2800b10cDone := true.
        ].
    ].
    block2800b10cResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ae0c; bytecode file offset 0x7bef0"
!SstKernelExtensions class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) localize.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := defined.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block2800b6f4Arg1 | 
    | block2800b6f4Stack0 block2800b6f4Stack1 block2800b6f4Stack2 block2800b6f4Stack3 block2800b6f4Stack4 block2800b6f4PC block2800b6f4Step block2800b6f4Done block2800b6f4Result |
    block2800b6f4Stack0 := self.
    block2800b6f4PC := 4.
    block2800b6f4Done := false.
    [block2800b6f4Done not] whileTrue: [
        block2800b6f4Step := block2800b6f4PC.
        block2800b6f4Step = 4 ifTrue: [
            block2800b6f4Stack1 := block2800b6f4Arg1.
            block2800b6f4PC := 5.
        ].
        block2800b6f4Step = 5 ifTrue: [
            block2800b6f4Stack2 := 'setupAfterLoad'.
            block2800b6f4PC := 7.
        ].
        block2800b6f4Step = 7 ifTrue: [
            block2800b6f4Stack1 := (block2800b6f4Stack1) respondsTo: (block2800b6f4Stack2).
            block2800b6f4PC := 8.
        ].
        block2800b6f4Step = 8 ifTrue: [
            (block2800b6f4Stack1) ifTrue: [block2800b6f4PC := 12] ifFalse: [block2800b6f4PC := 15].
        ].
        block2800b6f4Step = 12 ifTrue: [
            block2800b6f4Stack1 := block2800b6f4Arg1.
            block2800b6f4PC := 13.
        ].
        block2800b6f4Step = 13 ifTrue: [
            (block2800b6f4Stack1) setupAfterLoad.
            block2800b6f4PC := 15.
        ].
        block2800b6f4Step = 15 ifTrue: [
            block2800b6f4Stack1 := nil.
            block2800b6f4PC := 16.
        ].
        block2800b6f4Step = 16 ifTrue: [
            block2800b6f4Stack2 := block2800b6f4Arg1.
            block2800b6f4PC := 17.
        ].
        block2800b6f4Step = 17 ifTrue: [
            block2800b6f4Stack2 := (block2800b6f4Stack2) class.
            block2800b6f4PC := 19.
        ].
        block2800b6f4Step = 19 ifTrue: [
            block2800b6f4Stack3 := 'setupAfterLoadNonInherited'.
            block2800b6f4PC := 21.
        ].
        block2800b6f4Step = 21 ifTrue: [
            block2800b6f4Stack2 := (block2800b6f4Stack2) includesSelector: (block2800b6f4Stack3).
            block2800b6f4PC := 23.
        ].
        block2800b6f4Step = 23 ifTrue: [
            (block2800b6f4Stack2) ifTrue: [block2800b6f4PC := 26] ifFalse: [block2800b6f4PC := 30].
        ].
        block2800b6f4Step = 26 ifTrue: [
            block2800b6f4PC := 27.
        ].
        block2800b6f4Step = 27 ifTrue: [
            block2800b6f4Stack1 := block2800b6f4Arg1.
            block2800b6f4PC := 28.
        ].
        block2800b6f4Step = 28 ifTrue: [
            block2800b6f4Stack1 := (block2800b6f4Stack1) setupAfterLoadNonInherited.
            block2800b6f4PC := 30.
        ].
        block2800b6f4Step = 30 ifTrue: [
            block2800b6f4Result := block2800b6f4Stack1.
            block2800b6f4Done := true.
        ].
    ].
    block2800b6f4Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001ba3c; bytecode file offset 0x7cb38"
!SstKernelExtensions class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'basicClass'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'Object'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) includeMethod: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'event:value:'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ignoreNoImplementorErrorsForMessageSend: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'EsAtomSet'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) includeClassNamed: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 'SstCronEvent'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) includeClassNamed: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'SstCronEntry'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) includeClassNamed: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'SstAdminPack'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'SstAdminPack'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) safeToReferenceClassByName: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001d8a0; bytecode file offset 0x7e98c"
!SstKernelExtensions class methodsFor: 'recovered'!
setupBase64Constants
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            SstBase64EncodingTable := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block2800b9a0Arg1 :block2800b9a0Arg2 | 
    | block2800b9a0Value0 block2800b9a0Value1 block2800b9a0Value2 block2800b9a0Value3 block2800b9a0Value4 |
    block2800b9a0Value0 := SstBase64EncodingTable.
    block2800b9a0Value1 := block2800b9a0Arg2.
    block2800b9a0Value2 := (block2800b9a0Value1) + (-1).
    block2800b9a0Value3 := block2800b9a0Arg1.
    block2800b9a0Value4 := (block2800b9a0Value0) at: (block2800b9a0Value2) put: (block2800b9a0Value3).
    block2800b9a0Value4
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            SstBase64DecodingTable := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := SstBase64EncodingTable.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:block2800b9c4Arg1 :block2800b9c4Arg2 | 
    | block2800b9c4Value0 block2800b9c4Value1 block2800b9c4Value2 block2800b9c4Value3 |
    block2800b9c4Value0 := SstBase64DecodingTable.
    block2800b9c4Value1 := block2800b9c4Arg2.
    block2800b9c4Value2 := block2800b9c4Arg1.
    block2800b9c4Value3 := (block2800b9c4Value0) at: (block2800b9c4Value1) put: (block2800b9c4Value2).
    block2800b9c4Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200282e0; bytecode file offset 0x893e8"
!SstKernelExtensions class methodsFor: 'recovered'!
initializeExceptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExSstInvocationError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExSstInvocationError := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExSstInvocationError.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := MxSSTG1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ExSstFatalError.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ExSstFatalError := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ExSstFatalError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := MxSSTG2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := ExError.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultHandler.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) defaultHandler: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := ExSstNonFatalError.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ExSstNonFatalError := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := ExSstNonFatalError.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := MxSSTG3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := ExSstSetupError.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ExSstSetupError := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ExSstSetupError.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := MxSSTG4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := ExSstUnknownException.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := ExError.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) newChild.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ExSstUnknownException := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := ExSstUnknownException.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := MxSSTG5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack2) description: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) resumable: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

