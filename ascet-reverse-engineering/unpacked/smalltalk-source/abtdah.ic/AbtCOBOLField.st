"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"abtdah.ic method 0x20000088; bytecode file offset 0x100e0"
!AbtCOBOLField methodsFor: 'recovered'!
signSeparate: recoveredArg1
    ^self
! !

"abtdah.ic method 0x200000b8; bytecode file offset 0x100e0"
!AbtCOBOLField methodsFor: 'recovered'!
signLeading: recoveredArg1
    ^self
! !

"abtdah.ic method 0x20000108; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
lowValue
    | recoveredValue0 |
    recoveredValue0 := (self) lowValues.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000120; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
scale
    | recoveredValue0 |
    recoveredValue0 := (self) decimalLoc.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000012c; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
space
    | recoveredValue0 |
    recoveredValue0 := (self) spaces.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000138; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
zeros
    | recoveredValue0 |
    recoveredValue0 := (self) zero.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000015c; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
highValue
    | recoveredValue0 |
    recoveredValue0 := (self) highValues.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000198; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
null
    | recoveredValue0 |
    recoveredValue0 := (self) nulls.
    ^recoveredValue0
! !

"abtdah.ic method 0x200001b0; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
precision
    | recoveredValue0 |
    recoveredValue0 := (self) length.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000204; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
zeroes
    | recoveredValue0 |
    recoveredValue0 := (self) zero.
    ^recoveredValue0
! !

"abtdah.ic method 0x2000021c; bytecode file offset 0x10284"
!AbtCOBOLField methodsFor: 'recovered'!
quote
    | recoveredValue0 |
    recoveredValue0 := (self) quotes.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000294; bytecode file offset 0x102c0"
!AbtCOBOLField methodsFor: 'recovered'!
analyzePic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"abtdah.ic method 0x200004ac; bytecode file offset 0x104e4"
!AbtCOBOLField methodsFor: 'recovered'!
justifyChar
    ^' '
! !

"abtdah.ic method 0x200004cc; bytecode file offset 0x104f8"
!AbtCOBOLField methodsFor: 'recovered'!
unsigned
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) signed.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"abtdah.ic method 0x20000568; bytecode file offset 0x10590"
!AbtCOBOLField methodsFor: 'recovered'!
determineAlignmentSize: recoveredArg1
    ^1
! !

"abtdah.ic method 0x200006ec; bytecode file offset 0x10714"
!AbtCOBOLField methodsFor: 'recovered'!
makeSyncRight
    syncLeft := false.
    ^self
! !

"abtdah.ic method 0x20000760; bytecode file offset 0x10788"
!AbtCOBOLField methodsFor: 'recovered'!
makeSyncLeft
    syncLeft := true.
    ^self
! !

"abtdah.ic method 0x20000770; bytecode file offset 0x10798"
!AbtCOBOLField methodsFor: 'recovered'!
makeSigned
    sign := true.
    ^self
! !

"abtdah.ic method 0x20000780; bytecode file offset 0x107a8"
!AbtCOBOLField methodsFor: 'recovered'!
makeInitialValueAll
    all := true.
    ^self
! !

"abtdah.ic method 0x200009ac; bytecode file offset 0x109d4"
!AbtCOBOLField methodsFor: 'recovered'!
isInitialValueAll
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := all.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"abtdah.ic method 0x20000b40; bytecode file offset 0x10b78"
!AbtCOBOLField methodsFor: 'recovered'!
syncLeft
    | recoveredValue0 |
    recoveredValue0 := syncLeft.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000b6c; bytecode file offset 0x10ba4"
!AbtCOBOLField methodsFor: 'recovered'!
justLeft
    | recoveredValue0 |
    recoveredValue0 := justLeft.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000b98; bytecode file offset 0x10bc8"
!AbtCOBOLField methodsFor: 'recovered'!
sizeInBytes
    | recoveredValue0 |
    recoveredValue0 := sizeInBytes.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000ba0; bytecode file offset 0x10bc8"
!AbtCOBOLField methodsFor: 'recovered'!
length
    | recoveredValue0 |
    recoveredValue0 := sizeInBytes.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000bbc; bytecode file offset 0x10be4"
!AbtCOBOLField methodsFor: 'recovered'!
decimalLoc
    | recoveredValue0 |
    recoveredValue0 := decimalLoc.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000bd0; bytecode file offset 0x10bf8"
!AbtCOBOLField methodsFor: 'recovered'!
signed
    | recoveredValue0 |
    recoveredValue0 := sign.
    ^recoveredValue0
! !

"abtdah.ic method 0x20000c48; bytecode file offset 0x10c80"
!AbtCOBOLField methodsFor: 'recovered'!
nulls
    ^0
! !

"abtdah.ic method 0x20000c50; bytecode file offset 0x10c80"
!AbtCOBOLField methodsFor: 'recovered'!
zero
    ^0
! !

"abtdah.ic method 0x20000dac; bytecode file offset 0x10e2c"
!AbtCOBOLField methodsFor: 'recovered'!
signLeading
    ^false
! !

"abtdah.ic method 0x20000db4; bytecode file offset 0x10e2c"
!AbtCOBOLField methodsFor: 'recovered'!
signSeparate
    ^false
! !

"abtdah.ic method 0x20000dfc; bytecode file offset 0x10e2c"
!AbtCOBOLField methodsFor: 'recovered'!
wordStorageEnabled
    ^false
! !

"abtdah.ic method 0x20000f10; bytecode file offset 0x10f60"
!AbtCOBOLField methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) decimalLoc: (recoveredValue0).
    ^self
! !

"abtdah.ic method 0x20000f28; bytecode file offset 0x10f60"
!AbtCOBOLField methodsFor: 'recovered'!
precision: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) length: (recoveredValue0).
    ^self
! !

"abtdah.ic method 0x20001ab8; bytecode file offset 0x11b00"
!AbtCOBOLField methodsFor: 'recovered'!
syncLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    syncLeft := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001aec; bytecode file offset 0x11b2c"
!AbtCOBOLField methodsFor: 'recovered'!
justLeft: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    justLeft := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001b18; bytecode file offset 0x11b40"
!AbtCOBOLField methodsFor: 'recovered'!
length: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sizeInBytes := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001b2c; bytecode file offset 0x11b5c"
!AbtCOBOLField methodsFor: 'recovered'!
decimalLoc: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    decimalLoc := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001b48; bytecode file offset 0x11b70"
!AbtCOBOLField methodsFor: 'recovered'!
sign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sign := recoveredValue0.
    ^self
! !

"abtdah.ic method 0x20001cd4; bytecode file offset 0x11d04"
!AbtCOBOLField methodsFor: 'recovered'!
makeSignTrailing
    (self) signLeading: (false).
    (self) sign: (true).
    ^self
! !

"abtdah.ic method 0x20001cf4; bytecode file offset 0x11d34"
!AbtCOBOLField methodsFor: 'recovered'!
makeSignLeading
    (self) sign: (true).
    (self) signLeading: (true).
    ^self
! !

"abtdah.ic method 0x20001d04; bytecode file offset 0x11d34"
!AbtCOBOLField methodsFor: 'recovered'!
makeSignSeparate
    (self) signSeparate: (true).
    (self) sign: (true).
    ^self
! !

"abtdah.ic method 0x20001f58; bytecode file offset 0x11fcc"
!AbtCOBOLField methodsFor: 'recovered'!
spaces
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := PrimErrSupportDLLMissing.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20001f74; bytecode file offset 0x11fcc"
!AbtCOBOLField methodsFor: 'recovered'!
lowValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := PrimErrInvalidReftype.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20001fe4; bytecode file offset 0x1201c"
!AbtCOBOLField methodsFor: 'recovered'!
quotes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) atAllPut: ($").
    ^recoveredValue3
! !

"abtdah.ic method 0x20002364; bytecode file offset 0x12394"
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

"abtdah.ic method 0x20002480; bytecode file offset 0x124bc"
!AbtCOBOLField methodsFor: 'recovered'!
highValues
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Bag.
    recoveredValue1 := (self) length.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredValue3 := (255) asCharacter.
    recoveredValue4 := (recoveredValue2) atAllPut: (recoveredValue3).
    ^recoveredValue4
! !

"abtdah.ic method 0x20002e8c; bytecode file offset 0x12ebc"
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

"abtdah.ic method 0x20002f28; bytecode file offset 0x12f5c"
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

"abtdah.ic method 0x20002fb8; bytecode file offset 0x12fec"
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
            recoveredStack0 := Bag.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"abtdah.ic method 0x200031e0; bytecode file offset 0x13210"
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

"abtdah.ic method 0x2000452c; bytecode file offset 0x14578"
!AbtCOBOLField methodsFor: 'recovered'!
getNumber: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Bag.
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

"abtdah.ic method 0x20005190; bytecode file offset 0x151d0"
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

"abtdah.ic method 0x20005ebc; bytecode file offset 0x15efc"
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

"abtdah.ic method 0x20005f34; bytecode file offset 0x15f80"
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
            recoveredStack1 := Bag.
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

