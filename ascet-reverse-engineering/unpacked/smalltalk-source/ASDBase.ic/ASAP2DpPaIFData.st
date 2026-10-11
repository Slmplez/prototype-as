"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004bc9c; bytecode file offset 0x94877c"
!ASAP2DpPaIFData methodsFor: 'recovered'!
paBlob
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200843fc; bytecode file offset 0x981ca4"
!ASAP2DpPaIFData methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6a28; bytecode file offset 0x9a32e0"
!ASAP2DpPaIFData methodsFor: 'recovered'!
paBlob: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200dc51c; bytecode file offset 0x9d8e58"
!ASAP2DpPaIFData methodsFor: 'recovered'!
putIn: recoveredArg1 paBlob: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) paBlob.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) blob: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200f2980; bytecode file offset 0x9ef23c"
!ASAP2DpPaIFData methodsFor: 'recovered'!
isV10
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
            recoveredStack2 := (recoveredStack2) paBlob.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dpBlob.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20109cb8; bytecode file offset 0xa06578"
!ASAP2DpPaIFData methodsFor: 'recovered'!
isValidMemoryLayoutIfData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) paBlob.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := super isValidMemoryLayoutIfData.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b2c6c; bytecode file offset 0xaaf53c"
!ASAP2DpPaIFData methodsFor: 'recovered'!
getPaBlob: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBlobWithoutComment: (recoveredValue0).
    (self) paBlob: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) keyWords.
    recoveredValue5 := (recoveredValue4) keyAtValue: ('getPaBlob:').
    recoveredValue6 := (self) class.
    recoveredValue7 := (recoveredValue6) keyWords.
    (self) skipToEnd: (recoveredValue2) of: (recoveredValue5) keyWords: (recoveredValue7).
    ^self
! !

