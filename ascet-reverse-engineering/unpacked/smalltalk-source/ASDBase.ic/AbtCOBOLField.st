"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003528; bytecode file offset 0x90206c"
!AbtCOBOLField methodsFor: 'recovered'!
signSeparate: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004e50; bytecode file offset 0x90206c"
!AbtCOBOLField methodsFor: 'recovered'!
signLeading: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000761c; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
null
    | recoveredValue0 |
    recoveredValue0 := (self) nulls.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008654; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
space
    | recoveredValue0 |
    recoveredValue0 := (self) spaces.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200090d4; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
lowValue
    | recoveredValue0 |
    recoveredValue0 := (self) lowValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20009b0c; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
quote
    | recoveredValue0 |
    recoveredValue0 := (self) quotes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aca0; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
scale
    | recoveredValue0 |
    recoveredValue0 := (self) decimalLoc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000ad84; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
highValue
    | recoveredValue0 |
    recoveredValue0 := (self) highValues.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bc18; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
precision
    | recoveredValue0 |
    recoveredValue0 := (self) length.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000bd44; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
zeros
    | recoveredValue0 |
    recoveredValue0 := (self) zero.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c080; bytecode file offset 0x908be4"
!AbtCOBOLField methodsFor: 'recovered'!
zeroes
    | recoveredValue0 |
    recoveredValue0 := (self) zero.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000df14; bytecode file offset 0x90ab8c"
!AbtCOBOLField methodsFor: 'recovered'!
analyzePic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024d4c; bytecode file offset 0x92209c"
!AbtCOBOLField methodsFor: 'recovered'!
justifyChar
    ^' '
! !

"ASDBase.ic method 0x20027a78; bytecode file offset 0x92454c"
!AbtCOBOLField methodsFor: 'recovered'!
unsigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) signed.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038374; bytecode file offset 0x934c30"
!AbtCOBOLField methodsFor: 'recovered'!
determineAlignmentSize: recoveredArg1
    ^1
! !

"ASDBase.ic method 0x20048acc; bytecode file offset 0x945380"
!AbtCOBOLField methodsFor: 'recovered'!
makeSyncRight
    syncLeft := false.
    ^self
! !

"ASDBase.ic method 0x2004aa18; bytecode file offset 0x9472d4"
!AbtCOBOLField methodsFor: 'recovered'!
makeSyncLeft
    syncLeft := true.
    ^self
! !

"ASDBase.ic method 0x2004aa88; bytecode file offset 0x94733c"
!AbtCOBOLField methodsFor: 'recovered'!
makeSigned
    sign := true.
    ^self
! !

"ASDBase.ic method 0x2004aa98; bytecode file offset 0x94734c"
!AbtCOBOLField methodsFor: 'recovered'!
makeInitialValueAll
    all := true.
    ^self
! !

"ASDBase.ic method 0x2005e048; bytecode file offset 0x95a8fc"
!AbtCOBOLField methodsFor: 'recovered'!
isInitialValueAll
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := all.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d230; bytecode file offset 0x969c04"
!AbtCOBOLField methodsFor: 'recovered'!
syncLeft
    | recoveredValue0 |
    recoveredValue0 := syncLeft.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d3f4; bytecode file offset 0x96a390"
!AbtCOBOLField methodsFor: 'recovered'!
justLeft
    | recoveredValue0 |
    recoveredValue0 := justLeft.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd98; bytecode file offset 0x96a9dc"
!AbtCOBOLField methodsFor: 'recovered'!
sizeInBytes
    | recoveredValue0 |
    recoveredValue0 := sizeInBytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dfb8; bytecode file offset 0x96a9dc"
!AbtCOBOLField methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := sizeInBytes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e244; bytecode file offset 0x96af48"
!AbtCOBOLField methodsFor: 'recovered'!
decimalLoc
    | recoveredValue0 |
    recoveredValue0 := decimalLoc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eb08; bytecode file offset 0x96b41c"
!AbtCOBOLField methodsFor: 'recovered'!
signed
    | recoveredValue0 |
    recoveredValue0 := sign.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20071b0c; bytecode file offset 0x96e578"
!AbtCOBOLField methodsFor: 'recovered'!
zero
    ^0
! !

"ASDBase.ic method 0x20071ca4; bytecode file offset 0x96e578"
!AbtCOBOLField methodsFor: 'recovered'!
nulls
    ^0
! !

"ASDBase.ic method 0x2007a64c; bytecode file offset 0x97c330"
!AbtCOBOLField methodsFor: 'recovered'!
wordStorageEnabled
    ^false
! !

"ASDBase.ic method 0x2007a8f4; bytecode file offset 0x97c330"
!AbtCOBOLField methodsFor: 'recovered'!
signSeparate
    ^false
! !

"ASDBase.ic method 0x2007d91c; bytecode file offset 0x97c330"
!AbtCOBOLField methodsFor: 'recovered'!
signLeading
    ^false
! !

"ASDBase.ic method 0x20084648; bytecode file offset 0x981ca4"
!AbtCOBOLField methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) decimalLoc: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084c78; bytecode file offset 0x981ca4"
!AbtCOBOLField methodsFor: 'recovered'!
precision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) length: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c35a0; bytecode file offset 0x9c058c"
!AbtCOBOLField methodsFor: 'recovered'!
syncLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    syncLeft := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3f0c; bytecode file offset 0x9c0bf0"
!AbtCOBOLField methodsFor: 'recovered'!
justLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    justLeft := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4548; bytecode file offset 0x9c11bc"
!AbtCOBOLField methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sizeInBytes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4c6c; bytecode file offset 0x9c16b0"
!AbtCOBOLField methodsFor: 'recovered'!
decimalLoc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    decimalLoc := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5168; bytecode file offset 0x9c1afc"
!AbtCOBOLField methodsFor: 'recovered'!
sign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sign := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d25e0; bytecode file offset 0x9cee9c"
!AbtCOBOLField methodsFor: 'recovered'!
makeSignTrailing
    (self) signLeading: (false).
    (self) sign: (true).
    ^self
! !

"ASDBase.ic method 0x200d3504; bytecode file offset 0x9cfdd0"
!AbtCOBOLField methodsFor: 'recovered'!
makeSignSeparate
    (self) signSeparate: (true).
    (self) sign: (true).
    ^self
! !

"ASDBase.ic method 0x200d3514; bytecode file offset 0x9cfdd0"
!AbtCOBOLField methodsFor: 'recovered'!
makeSignLeading
    (self) sign: (true).
    (self) signLeading: (true).
    ^self
! !

"ASDBase.ic method 0x200e0614; bytecode file offset 0x9dcf14"
!AbtCOBOLField methodsFor: 'recovered'!
lowValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := String.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := Nul.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e064c; bytecode file offset 0x9dcf14"
!AbtCOBOLField methodsFor: 'recovered'!
spaces
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := String.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := Space.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e06a0; bytecode file offset 0x9dcf64"
!AbtCOBOLField methodsFor: 'recovered'!
quotes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := String.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) atAllPut: ($").
    ^recoveredValue3
! !

"ASDBase.ic method 0x20100e88; bytecode file offset 0x9fd744"
!AbtCOBOLField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue2) + (recoveredValue3).
    recoveredValue5 := sizeInBytes.
    recoveredValue6 := (recoveredValue1) abtCobolDisplayFieldAt: (recoveredValue4) length: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20104e30; bytecode file offset 0xa016f8"
!AbtCOBOLField methodsFor: 'recovered'!
highValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := String.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (255) asCharacter.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20157d78; bytecode file offset 0xa54634"
!AbtCOBOLField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := sizeInBytes.
    recoveredValue2 := (recoveredValue1) + (-1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) data.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := offset.
    recoveredValue7 := (recoveredValue5) + (recoveredValue6).
    (recoveredValue0) memcpyFrom: (0) to: (recoveredValue2) into: (recoveredValue4) startingAt: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2015d2f8; bytecode file offset 0xa59bb8"
!AbtCOBOLField methodsFor: 'recovered'!
initialValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := initialValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSymbol.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := initialValue.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) perform: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := initialValue.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20160c28; bytecode file offset 0xa5d4e8"
!AbtCOBOLField methodsFor: 'recovered'!
valueClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) length.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Character.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016b8e0; bytecode file offset 0xa6819c"
!AbtCOBOLField methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := super initialize.
    recoveredLocal1 := recoveredValue0.
    type := self.
    decimalLoc := 0.
    sign := false.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20287900; bytecode file offset 0xb841d8"
!AbtCOBOLField methodsFor: 'recovered'!
getNumber: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) next.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) next.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2030ab98; bytecode file offset 0xc07464"
!AbtCOBOLField methodsFor: 'recovered'!
calcDecimalLoc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) countableChars.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := $V.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d9c08; bytecode file offset 0xcd64d4"
!AbtCOBOLField methodsFor: 'recovered'!
allocatableChars: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) countableChars.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) doubleByteChars.
    recoveredLocal1 := recoveredValue3.
    recoveredLocal3 := 0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Stack0 recoveredBlock23Stack1 recoveredBlock23Stack2 recoveredBlock23Stack3 recoveredBlock23Stack4 recoveredBlock23PC recoveredBlock23Step recoveredBlock23Done recoveredBlock23Result |
    recoveredBlock23Stack0 := self.
    recoveredBlock23PC := 30.
    recoveredBlock23Done := false.
    [recoveredBlock23Done not] whileTrue: [
        recoveredBlock23Step := recoveredBlock23PC.
        recoveredBlock23Step = 30 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 31.
        ].
        recoveredBlock23Step = 31 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal2.
            recoveredBlock23PC := 34.
        ].
        recoveredBlock23Step = 34 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg1.
            recoveredBlock23PC := 35.
        ].
        recoveredBlock23Step = 35 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) includes: (recoveredBlock23Stack3).
            recoveredBlock23PC := 36.
        ].
        recoveredBlock23Step = 36 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 40] ifFalse: [recoveredBlock23PC := 79].
        ].
        recoveredBlock23Step = 40 ifTrue: [
            recoveredBlock23PC := 41.
        ].
        recoveredBlock23Step = 41 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal3.
            recoveredBlock23PC := 44.
        ].
        recoveredBlock23Step = 44 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (1).
            recoveredBlock23PC := 45.
        ].
        recoveredBlock23Step = 45 ifTrue: [
            recoveredLocal3 := recoveredBlock23Stack1.
            recoveredBlock23PC := 48.
        ].
        recoveredBlock23Step = 48 ifTrue: [
            recoveredBlock23Stack1 := nil.
            recoveredBlock23PC := 49.
        ].
        recoveredBlock23Step = 49 ifTrue: [
            recoveredBlock23Stack2 := recoveredLocal1.
            recoveredBlock23PC := 52.
        ].
        recoveredBlock23Step = 52 ifTrue: [
            recoveredBlock23Stack3 := recoveredBlock23Arg1.
            recoveredBlock23PC := 53.
        ].
        recoveredBlock23Step = 53 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) includes: (recoveredBlock23Stack3).
            recoveredBlock23PC := 54.
        ].
        recoveredBlock23Step = 54 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 58] ifFalse: [recoveredBlock23PC := 79].
        ].
        recoveredBlock23Step = 58 ifTrue: [
            recoveredBlock23Stack2 := recoveredArg1.
            recoveredBlock23PC := 61.
        ].
        recoveredBlock23Step = 61 ifTrue: [
            recoveredBlock23Stack3 := recoveredLocal1.
            recoveredBlock23PC := 64.
        ].
        recoveredBlock23Step = 64 ifTrue: [
            recoveredBlock23Stack3 := (recoveredBlock23Stack3) first.
            recoveredBlock23PC := 66.
        ].
        recoveredBlock23Step = 66 ifTrue: [
            recoveredBlock23Stack2 := (recoveredBlock23Stack2) includes: (recoveredBlock23Stack3).
            recoveredBlock23PC := 67.
        ].
        recoveredBlock23Step = 67 ifTrue: [
            (recoveredBlock23Stack2) ifTrue: [recoveredBlock23PC := 70] ifFalse: [recoveredBlock23PC := 79].
        ].
        recoveredBlock23Step = 70 ifTrue: [
            recoveredBlock23PC := 71.
        ].
        recoveredBlock23Step = 71 ifTrue: [
            recoveredBlock23Stack1 := recoveredLocal3.
            recoveredBlock23PC := 74.
        ].
        recoveredBlock23Step = 74 ifTrue: [
            recoveredBlock23Stack1 := (recoveredBlock23Stack1) + (1).
            recoveredBlock23PC := 75.
        ].
        recoveredBlock23Step = 75 ifTrue: [
            recoveredBlock23Stack2 := recoveredBlock23Stack1.
            recoveredBlock23PC := 76.
        ].
        recoveredBlock23Step = 76 ifTrue: [
            recoveredLocal3 := recoveredBlock23Stack2.
            recoveredBlock23PC := 79.
        ].
        recoveredBlock23Step = 79 ifTrue: [
            recoveredBlock23Result := recoveredBlock23Stack1.
            recoveredBlock23Done := true.
        ].
    ].
    recoveredBlock23Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203e42fc; bytecode file offset 0xce0bd4"
!AbtCOBOLField methodsFor: 'recovered'!
expand: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsStream.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := $(.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNumber: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) nextPut: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 44] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

