"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004af74; bytecode file offset 0x947a60"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
dpBlob
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b3e4; bytecode file offset 0x947d20"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
kpBlobObject
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b524; bytecode file offset 0x947ec0"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
paBlob
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008427c; bytecode file offset 0x981ca4"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a5db8; bytecode file offset 0x9a27f0"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
dpBlob: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a611c; bytecode file offset 0x9a2a28"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
kpBlob: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a62c0; bytecode file offset 0x9a2b84"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
paBlob: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20118d70; bytecode file offset 0xa15634"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
kpBlob
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280c789cArg1 | 
    | block280c789cValue0 block280c789cValue1 |
    block280c789cValue0 := block280c789cArg1.
    block280c789cValue1 := (block280c789cValue0) kpBlobString.
    block280c789cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d6660; bytecode file offset 0xad2f28"
!ASAP2BytesDpKpPaIFData methodsFor: 'recovered'!
kpBlobPredefinedRasterIDs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280d5780Arg1 | 
    | block280d5780Stack0 block280d5780Stack1 block280d5780Stack2 block280d5780PC block280d5780Step block280d5780Done block280d5780Result |
    block280d5780Stack0 := self.
    block280d5780PC := 4.
    block280d5780Done := false.
    [block280d5780Done not] whileTrue: [
        block280d5780Step := block280d5780PC.
        block280d5780Step = 4 ifTrue: [
            block280d5780Stack1 := block280d5780Arg1.
            block280d5780PC := 5.
        ].
        block280d5780Step = 5 ifTrue: [
            block280d5780Stack1 := (block280d5780Stack1) isString.
            block280d5780PC := 6.
        ].
        block280d5780Step = 6 ifTrue: [
            (block280d5780Stack1) ifTrue: [block280d5780PC := 10] ifFalse: [block280d5780PC := 14].
        ].
        block280d5780Step = 10 ifTrue: [
            block280d5780Stack1 := nil.
            block280d5780PC := 11.
        ].
        block280d5780Step = 11 ifTrue: [
            block280d5780PC := 16.
        ].
        block280d5780Step = 14 ifTrue: [
            block280d5780Stack1 := block280d5780Arg1.
            block280d5780PC := 15.
        ].
        block280d5780Step = 15 ifTrue: [
            block280d5780Stack1 := (block280d5780Stack1) raster.
            block280d5780PC := 16.
        ].
        block280d5780Step = 16 ifTrue: [
            block280d5780Result := block280d5780Stack1.
            block280d5780Done := true.
        ].
    ].
    block280d5780Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

