"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065f04; bytecode file offset 0x963428"
!TGReturnMessage methodsFor: 'recovered'!
lineNumber
    | recoveredValue0 |
    recoveredValue0 := lineNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067a5c; bytecode file offset 0x9646f8"
!TGReturnMessage methodsFor: 'recovered'!
lineString
    | recoveredValue0 |
    recoveredValue0 := lineString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068b3c; bytecode file offset 0x965b90"
!TGReturnMessage methodsFor: 'recovered'!
message
    | recoveredValue0 |
    recoveredValue0 := message.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069588; bytecode file offset 0x966bdc"
!TGReturnMessage methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bca0; bytecode file offset 0x96873c"
!TGReturnMessage methodsFor: 'recovered'!
category
    | recoveredValue0 |
    recoveredValue0 := category.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c3f4; bytecode file offset 0x9692b0"
!TGReturnMessage methodsFor: 'recovered'!
columnNumber
    | recoveredValue0 |
    recoveredValue0 := columnNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072208; bytecode file offset 0x96ee04"
!TGReturnMessage methodsFor: 'recovered'!
bitUserSource
    ^1
! !

"ASDBase.ic method 0x20072798; bytecode file offset 0x96f1c4"
!TGReturnMessage methodsFor: 'recovered'!
bitValidFileReference
    ^2
! !

"ASDBase.ic method 0x20072a70; bytecode file offset 0x96f3cc"
!TGReturnMessage methodsFor: 'recovered'!
bitFiledInReference
    ^3
! !

"ASDBase.ic method 0x20084f3c; bytecode file offset 0x981ca4"
!TGReturnMessage methodsFor: 'recovered'!
display: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) printOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20085540; bytecode file offset 0x981e1c"
!TGReturnMessage methodsFor: 'recovered'!
message: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) trimSeparators.
    message := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008b484; bytecode file offset 0x987d60"
!TGReturnMessage methodsFor: 'recovered'!
isFiledInReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitFiledInReference.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b494; bytecode file offset 0x987d60"
!TGReturnMessage methodsFor: 'recovered'!
isUserSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitUserSource.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008b4a4; bytecode file offset 0x987d60"
!TGReturnMessage methodsFor: 'recovered'!
isValidFileReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitValidFileReference.
    recoveredValue2 := (recoveredValue0) isBitSet: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b18a0; bytecode file offset 0x9ae1ac"
!TGReturnMessage methodsFor: 'recovered'!
setUserSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitUserSource.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    states := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b18b0; bytecode file offset 0x9ae1ac"
!TGReturnMessage methodsFor: 'recovered'!
clearUserSource
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitUserSource.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    states := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b18c0; bytecode file offset 0x9ae1ac"
!TGReturnMessage methodsFor: 'recovered'!
clearValidFileReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitValidFileReference.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    states := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b18d0; bytecode file offset 0x9ae1ac"
!TGReturnMessage methodsFor: 'recovered'!
clearFiledInReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitFiledInReference.
    recoveredValue2 := (recoveredValue0) clearBit: (recoveredValue1).
    states := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b18e0; bytecode file offset 0x9ae1ac"
!TGReturnMessage methodsFor: 'recovered'!
setFiledInReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitFiledInReference.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    states := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200b18f0; bytecode file offset 0x9ae1ac"
!TGReturnMessage methodsFor: 'recovered'!
setValidFileReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := states.
    recoveredValue1 := (self) bitValidFileReference.
    recoveredValue2 := (recoveredValue0) setBit: (recoveredValue1).
    states := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x200be3bc; bytecode file offset 0x9bb178"
!TGReturnMessage methodsFor: 'recovered'!
lineNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lineNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf360; bytecode file offset 0x9bc0b4"
!TGReturnMessage methodsFor: 'recovered'!
lineString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lineString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1340; bytecode file offset 0x9bdf14"
!TGReturnMessage methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2288; bytecode file offset 0x9bf474"
!TGReturnMessage methodsFor: 'recovered'!
category: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    category := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2da4; bytecode file offset 0x9bfde0"
!TGReturnMessage methodsFor: 'recovered'!
columnNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    columnNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012feb8; bytecode file offset 0xa2c774"
!TGReturnMessage methodsFor: 'recovered'!
initialize
    super initialize.
    lineNumber := -1.
    states := 0.
    ^self
! !

"ASDBase.ic method 0x20346170; bytecode file offset 0xc42a68"
!TGReturnMessage methodsFor: 'recovered'!
copyMessage
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := TGReturnMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) message.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMessage: (recoveredStack2).
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
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineNumber.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) lineNumber: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) lineString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) category.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) category: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFiledInReference.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setFiledInReference.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUserSource.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) setUserSource.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidFileReference.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 61].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) setValidFileReference.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20389340; bytecode file offset 0xc85c24"
!TGReturnMessage methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := fileName.
    recoveredValue3 := ('FileName: ') , (recoveredValue2).
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := lineNumber.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := ('LineNumber: ') , (recoveredValue7).
    (recoveredValue5) nextPutAll: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) isValidFileReference.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := ('  FileRef: ') , (recoveredValue11).
    (recoveredValue9) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) isUserSource.
    recoveredValue15 := (recoveredValue14) printString.
    recoveredValue16 := ('  UserSource: ') , (recoveredValue15).
    (recoveredValue13) nextPutAll: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue0.
    recoveredValue19 := lineString.
    recoveredValue20 := ('LineString: ') , (recoveredValue19).
    (recoveredValue18) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) cr.
    recoveredValue22 := recoveredValue0.
    recoveredValue23 := message.
    recoveredValue24 := ('Message: ') , (recoveredValue23).
    (recoveredValue22) nextPutAll: (recoveredValue24).
    (recoveredValue0) cr.
    ^self
! !

