"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000bfc; bytecode file offset 0x3cc2c"
!EmMethodDecoder methodsFor: 'recovered'!
isWordString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isDBString.
    ^recoveredValue1
! !

"lib.ic method 0x20001200; bytecode file offset 0x3d224"
!EmMethodDecoder methodsFor: 'recovered'!
position
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := stream.
    recoveredValue1 := (recoveredValue0) position.
    ^recoveredValue1
! !

"lib.ic method 0x20003d74; bytecode file offset 0x3fd9c"
!EmMethodDecoder methodsFor: 'recovered'!
writeByte: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := stream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asCharacter.
    (recoveredValue0) nextPut: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20005af4; bytecode file offset 0x41b20"
!EmMethodDecoder methodsFor: 'recovered'!
writeLiteralTypeFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmMethodLinker.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) literalTypeFor: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) writeByte: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"lib.ic method 0x20005f60; bytecode file offset 0x41f8c"
!EmMethodDecoder methodsFor: 'recovered'!
writeByteArray: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    (self) writeLiteralSize: (recoveredValue1).
    recoveredValue2 := stream.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20006800; bytecode file offset 0x42830"
!EmMethodDecoder methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (400).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    stream := recoveredValue3.
    ^self
! !

"lib.ic method 0x2000776c; bytecode file offset 0x4379c"
!EmMethodDecoder methodsFor: 'recovered'!
writeLong: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (65535).
    (self) writeWord: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) // (65536).
    (self) writeWord: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20008e64; bytecode file offset 0x44e8c"
!EmMethodDecoder methodsFor: 'recovered'!
writeWord: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bitAnd: (255).
    (self) writeByte: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) // (256).
    (self) writeByte: (recoveredValue3).
    ^self
! !

"lib.ic method 0x2000ff64; bytecode file offset 0x4bf90"
!EmMethodDecoder methodsFor: 'recovered'!
writeSmallInt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1073741824.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := 255.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) bitAnd: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) writeByte: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 256.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 isInteger) ifTrue: [(recoveredStack1 > 0) ifTrue: [recoveredStack1 := recoveredStack1 - 1. recoveredPC := 14] ifFalse: [recoveredPC := 40]] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) >= (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010d30; bytecode file offset 0x4cd70"
!EmMethodDecoder methodsFor: 'recovered'!
writeString: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) isWordString: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) writeLiteralSize: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) asInteger.
    recoveredBlock16Value2 := (self) writeWord: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) writeLiteralSize: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := stream.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012cac; bytecode file offset 0x4ecdc"
!EmMethodDecoder methodsFor: 'recovered'!
writeLiteralSize: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 254.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 255.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 65535.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) writeWord: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) writeLong: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) writeWord: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200177e0; bytecode file offset 0x53838"
!EmMethodDecoder methodsFor: 'recovered'!
decode: recoveredArg1 fromClass: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) emDecodableMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            compiledMethod := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) flags.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            itsClass := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := stream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := compiledMethod.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) literalSize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) writeWord: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) writeLong: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := compiledMethod.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) emWriteBytesOn: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) emWriteLiteralsOn: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            compiledMethod := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            itsClass := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := stream.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) collection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := EmMethodDecoding.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) raiseDecodeExceptionFor: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := stream.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002fca0; bytecode file offset 0x6bd08"
!EmMethodDecoder methodsFor: 'recovered'!
writeVariable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := itsClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVariableAssociationFor: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 128.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) isWordString: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeString: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := itsClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSharedPoolNames.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Local1 recoveredBlock60Stack0 recoveredBlock60Stack1 recoveredBlock60Stack2 recoveredBlock60Stack3 recoveredBlock60Stack4 recoveredBlock60PC recoveredBlock60Step recoveredBlock60Done recoveredBlock60Result |
    recoveredBlock60Stack0 := self.
    recoveredBlock60PC := 66.
    recoveredBlock60Done := false.
    [recoveredBlock60Done not] whileTrue: [
        recoveredBlock60Step := recoveredBlock60PC.
        recoveredBlock60Step = 66 ifTrue: [
            recoveredBlock60Stack1 := System.
            recoveredBlock60PC := 68.
        ].
        recoveredBlock60Step = 68 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) image.
            recoveredBlock60PC := 70.
        ].
        recoveredBlock60Step = 70 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) globalNamespace.
            recoveredBlock60PC := 72.
        ].
        recoveredBlock60Step = 72 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Arg1.
            recoveredBlock60PC := 73.
        ].
        recoveredBlock60Step = 73 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) asGlobalKey.
            recoveredBlock60PC := 75.
        ].
        recoveredBlock60Step = 75 ifTrue: [
            recoveredBlock60Stack3 := [].
            recoveredBlock60PC := 77.
        ].
        recoveredBlock60Step = 77 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) at: (recoveredBlock60Stack2) ifAbsent: (recoveredBlock60Stack3).
            recoveredBlock60PC := 79.
        ].
        recoveredBlock60Step = 79 ifTrue: [
            recoveredBlock60Local1 := recoveredBlock60Stack1.
            recoveredBlock60PC := 80.
        ].
        recoveredBlock60Step = 80 ifTrue: [
            recoveredBlock60Stack1 := false.
            recoveredBlock60PC := 81.
        ].
        recoveredBlock60Step = 81 ifTrue: [
            recoveredBlock60Stack2 := recoveredBlock60Local1.
            recoveredBlock60PC := 82.
        ].
        recoveredBlock60Step = 82 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) class.
            recoveredBlock60PC := 84.
        ].
        recoveredBlock60Step = 84 ifTrue: [
            recoveredBlock60Stack3 := EsPoolDictionary.
            recoveredBlock60PC := 86.
        ].
        recoveredBlock60Step = 86 ifTrue: [
            (recoveredBlock60Stack2 ~~ recoveredBlock60Stack3) ifTrue: [recoveredBlock60PC := 104] ifFalse: [recoveredBlock60PC := 90].
        ].
        recoveredBlock60Step = 90 ifTrue: [
            recoveredBlock60PC := 91.
        ].
        recoveredBlock60Step = 91 ifTrue: [
            recoveredBlock60Stack1 := recoveredBlock60Local1.
            recoveredBlock60PC := 92.
        ].
        recoveredBlock60Step = 92 ifTrue: [
            recoveredBlock60Stack2 := recoveredArg1.
            recoveredBlock60PC := 95.
        ].
        recoveredBlock60Step = 95 ifTrue: [
            recoveredBlock60Stack2 := (recoveredBlock60Stack2) key.
            recoveredBlock60PC := 96.
        ].
        recoveredBlock60Step = 96 ifTrue: [
            recoveredBlock60Stack3 := [].
            recoveredBlock60PC := 98.
        ].
        recoveredBlock60Step = 98 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) associationAt: (recoveredBlock60Stack2) ifAbsent: (recoveredBlock60Stack3).
            recoveredBlock60PC := 100.
        ].
        recoveredBlock60Step = 100 ifTrue: [
            recoveredBlock60Stack2 := recoveredArg1.
            recoveredBlock60PC := 103.
        ].
        recoveredBlock60Step = 103 ifTrue: [
            recoveredBlock60Stack1 := (recoveredBlock60Stack1) == (recoveredBlock60Stack2).
            recoveredBlock60PC := 104.
        ].
        recoveredBlock60Step = 104 ifTrue: [
            recoveredBlock60Result := recoveredBlock60Stack1.
            recoveredBlock60Done := true.
        ].
    ].
    recoveredBlock60Result
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 129.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) isWordString: (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 140.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := (recoveredStack3) isWordString: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := 32.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) writeString: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeString: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) image.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) globalNamespace.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := (recoveredStack2) associationAt: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 226] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := 130.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := (recoveredStack3) isWordString: (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 214].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := 64.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredPC := 216.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) writeByte: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) writeString: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := [:recoveredBlock232Arg1 | 
    | recoveredBlock232Stack0 recoveredBlock232Stack1 recoveredBlock232Stack2 recoveredBlock232Stack3 recoveredBlock232Stack4 recoveredBlock232Stack5 recoveredBlock232PC recoveredBlock232Step recoveredBlock232Done recoveredBlock232Result |
    recoveredBlock232Stack0 := self.
    recoveredBlock232PC := 238.
    recoveredBlock232Done := false.
    [recoveredBlock232Done not] whileTrue: [
        recoveredBlock232Step := recoveredBlock232PC.
        recoveredBlock232Step = 238 ifTrue: [
            recoveredBlock232Stack1 := nil.
            recoveredBlock232PC := 239.
        ].
        recoveredBlock232Step = 239 ifTrue: [
            recoveredBlock232Stack2 := recoveredBlock232Arg1.
            recoveredBlock232PC := 240.
        ].
        recoveredBlock232Step = 240 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) value.
            recoveredBlock232PC := 242.
        ].
        recoveredBlock232Step = 242 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) class.
            recoveredBlock232PC := 244.
        ].
        recoveredBlock232Step = 244 ifTrue: [
            recoveredBlock232Stack3 := EsPoolDictionary.
            recoveredBlock232PC := 246.
        ].
        recoveredBlock232Step = 246 ifTrue: [
            (recoveredBlock232Stack2 ~~ recoveredBlock232Stack3) ifTrue: [recoveredBlock232PC := 323] ifFalse: [recoveredBlock232PC := 250].
        ].
        recoveredBlock232Step = 250 ifTrue: [
            recoveredBlock232Stack2 := recoveredBlock232Arg1.
            recoveredBlock232PC := 251.
        ].
        recoveredBlock232Step = 251 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) value.
            recoveredBlock232PC := 253.
        ].
        recoveredBlock232Step = 253 ifTrue: [
            recoveredBlock232Stack3 := recoveredLocal2.
            recoveredBlock232PC := 256.
        ].
        recoveredBlock232Step = 256 ifTrue: [
            recoveredBlock232Stack4 := [].
            recoveredBlock232PC := 258.
        ].
        recoveredBlock232Step = 258 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) associationAt: (recoveredBlock232Stack3) ifAbsent: (recoveredBlock232Stack4).
            recoveredBlock232PC := 260.
        ].
        recoveredBlock232Step = 260 ifTrue: [
            recoveredBlock232Stack3 := recoveredArg1.
            recoveredBlock232PC := 263.
        ].
        recoveredBlock232Step = 263 ifTrue: [
            (recoveredBlock232Stack2 ~~ recoveredBlock232Stack3) ifTrue: [recoveredBlock232PC := 323] ifFalse: [recoveredBlock232PC := 266].
        ].
        recoveredBlock232Step = 266 ifTrue: [
            recoveredBlock232PC := 267.
        ].
        recoveredBlock232Step = 267 ifTrue: [
            recoveredBlock232Stack1 := self.
            recoveredBlock232PC := 268.
        ].
        recoveredBlock232Step = 268 ifTrue: [
            recoveredBlock232Stack2 := 129.
            recoveredBlock232PC := 272.
        ].
        recoveredBlock232Step = 272 ifTrue: [
            recoveredBlock232Stack3 := self.
            recoveredBlock232PC := 273.
        ].
        recoveredBlock232Step = 273 ifTrue: [
            recoveredBlock232Stack4 := recoveredBlock232Arg1.
            recoveredBlock232PC := 274.
        ].
        recoveredBlock232Step = 274 ifTrue: [
            recoveredBlock232Stack4 := (recoveredBlock232Stack4) key.
            recoveredBlock232PC := 275.
        ].
        recoveredBlock232Step = 275 ifTrue: [
            recoveredBlock232Stack3 := (recoveredBlock232Stack3) isWordString: (recoveredBlock232Stack4).
            recoveredBlock232PC := 276.
        ].
        recoveredBlock232Step = 276 ifTrue: [
            (recoveredBlock232Stack3) ifTrue: [recoveredBlock232PC := 280] ifFalse: [recoveredBlock232PC := 288].
        ].
        recoveredBlock232Step = 280 ifTrue: [
            recoveredBlock232Stack3 := 64.
            recoveredBlock232PC := 284.
        ].
        recoveredBlock232Step = 284 ifTrue: [
            recoveredBlock232PC := 290.
        ].
        recoveredBlock232Step = 288 ifTrue: [
            recoveredBlock232Stack3 := 0.
            recoveredBlock232PC := 290.
        ].
        recoveredBlock232Step = 290 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) + (recoveredBlock232Stack3).
            recoveredBlock232PC := 291.
        ].
        recoveredBlock232Step = 291 ifTrue: [
            recoveredBlock232Stack3 := self.
            recoveredBlock232PC := 292.
        ].
        recoveredBlock232Step = 292 ifTrue: [
            recoveredBlock232Stack4 := recoveredLocal2.
            recoveredBlock232PC := 295.
        ].
        recoveredBlock232Step = 295 ifTrue: [
            recoveredBlock232Stack3 := (recoveredBlock232Stack3) isWordString: (recoveredBlock232Stack4).
            recoveredBlock232PC := 296.
        ].
        recoveredBlock232Step = 296 ifTrue: [
            (recoveredBlock232Stack3) ifTrue: [recoveredBlock232PC := 300] ifFalse: [recoveredBlock232PC := 306].
        ].
        recoveredBlock232Step = 300 ifTrue: [
            recoveredBlock232Stack3 := 32.
            recoveredBlock232PC := 302.
        ].
        recoveredBlock232Step = 302 ifTrue: [
            recoveredBlock232PC := 308.
        ].
        recoveredBlock232Step = 306 ifTrue: [
            recoveredBlock232Stack3 := 0.
            recoveredBlock232PC := 308.
        ].
        recoveredBlock232Step = 308 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) + (recoveredBlock232Stack3).
            recoveredBlock232PC := 309.
        ].
        recoveredBlock232Step = 309 ifTrue: [
            (recoveredBlock232Stack1) writeByte: (recoveredBlock232Stack2).
            recoveredBlock232PC := 311.
        ].
        recoveredBlock232Step = 311 ifTrue: [
            recoveredBlock232Stack1 := self.
            recoveredBlock232PC := 312.
        ].
        recoveredBlock232Step = 312 ifTrue: [
            recoveredBlock232Stack2 := recoveredBlock232Arg1.
            recoveredBlock232PC := 313.
        ].
        recoveredBlock232Step = 313 ifTrue: [
            recoveredBlock232Stack2 := (recoveredBlock232Stack2) key.
            recoveredBlock232PC := 314.
        ].
        recoveredBlock232Step = 314 ifTrue: [
            (recoveredBlock232Stack1) writeString: (recoveredBlock232Stack2).
            recoveredBlock232PC := 316.
        ].
        recoveredBlock232Step = 316 ifTrue: [
            recoveredBlock232Stack1 := self.
            recoveredBlock232PC := 317.
        ].
        recoveredBlock232Step = 317 ifTrue: [
            recoveredBlock232Stack2 := recoveredLocal2.
            recoveredBlock232PC := 320.
        ].
        recoveredBlock232Step = 320 ifTrue: [
            recoveredBlock232Stack1 := (recoveredBlock232Stack1) writeString: (recoveredBlock232Stack2).
            recoveredBlock232PC := 322.
        ].
        recoveredBlock232Step = 322 ifTrue: [
            ^recoveredBlock232Stack1
        ].
        recoveredBlock232Step = 323 ifTrue: [
            recoveredBlock232Result := recoveredBlock232Stack1.
            recoveredBlock232Done := true.
        ].
    ].
    recoveredBlock232Result
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := 131.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := (recoveredStack2) isWordString: (recoveredStack3).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 338] ifFalse: [recoveredPC := 346].
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredPC := 348.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) writeByte: (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeString: (recoveredStack1).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

