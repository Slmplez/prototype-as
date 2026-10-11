"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20001a5c; bytecode file offset 0x3dab4"
!EmMethodLinker methodsFor: 'recovered'!
readFloat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Float.
    recoveredValue1 := (recoveredValue0) emReadLiteralFrom: (self).
    ^recoveredValue1
! !

"lib.ic method 0x20002458; bytecode file offset 0x3e480"
!EmMethodLinker methodsFor: 'recovered'!
declaredGlobals
    | recoveredValue0 |
    recoveredValue0 := declaredGlobals.
    ^recoveredValue0
! !

"lib.ic method 0x20002494; bytecode file offset 0x3e4cc"
!EmMethodLinker methodsFor: 'recovered'!
declaredPoolVariables
    | recoveredValue0 |
    recoveredValue0 := declaredPoolVariables.
    ^recoveredValue0
! !

"lib.ic method 0x20002f44; bytecode file offset 0x3ef84"
!EmMethodLinker methodsFor: 'recovered'!
readByteCodeArray
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EsByteCodeArray.
    recoveredValue1 := (self) readByteArray.
    recoveredValue2 := (recoveredValue0) emFromLinkerBytes: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20004508; bytecode file offset 0x40530"
!EmMethodLinker methodsFor: 'recovered'!
readLong
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) readWord.
    recoveredValue1 := (self) readWord.
    recoveredValue2 := (recoveredValue1) * (65536).
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20004e38; bytecode file offset 0x40e5c"
!EmMethodLinker methodsFor: 'recovered'!
readWord
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) readByte.
    recoveredValue1 := (self) readByte.
    recoveredValue2 := (recoveredValue1) * (256).
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20005ca8; bytecode file offset 0x41ccc"
!EmMethodLinker methodsFor: 'recovered'!
readByte
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := contents.
    recoveredValue1 := position.
    recoveredValue2 := (recoveredValue1) + (1).
    recoveredValue3 := recoveredValue2.
    position := recoveredValue3.
    recoveredValue4 := (recoveredValue2) + (-1).
    recoveredValue5 := (recoveredValue0) byteAt: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20007d98; bytecode file offset 0x43dc4"
!EmMethodLinker methodsFor: 'recovered'!
readSmallInt
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) readWord.
    recoveredValue1 := (recoveredValue0) - (536870912).
    recoveredValue2 := (self) readWord.
    recoveredValue3 := (recoveredValue2) - (8192).
    recoveredValue4 := (recoveredValue3) * (65536).
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20008048; bytecode file offset 0x44078"
!EmMethodLinker methodsFor: 'recovered'!
readByteArray
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asByteArray.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200088e4; bytecode file offset 0x44914"
!EmMethodLinker methodsFor: 'recovered'!
globalNamespace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'image'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000b3d4; bytecode file offset 0x47400"
!EmMethodLinker methodsFor: 'recovered'!
readLiteralSize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readByte.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 255.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) readWord.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) readLong.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000c44c; bytecode file offset 0x48478"
!EmMethodLinker methodsFor: 'recovered'!
readString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readLiteralSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := contents.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := position.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := position.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            position := recoveredStack3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20012a18; bytecode file offset 0x4ea5c"
!EmMethodLinker methodsFor: 'recovered'!
readWordString
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := DBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) readLiteralSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) ceiling.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) readWord.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) asCharacter.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 47]] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2001abd8; bytecode file offset 0x56c2c"
!EmMethodLinker methodsFor: 'recovered'!
readLiteral
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) readByte.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 128.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := EmMethodLinking.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkErrorException.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := LiteralMap.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := EmMethodLinking.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) linkErrorException.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := Float.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) readFloat.
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
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) emReadLiteralFrom: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) readVariable: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20026394; bytecode file offset 0x62410"
!EmMethodLinker methodsFor: 'recovered'!
linkCodeIn: recoveredArg1 at: recoveredArg2 for: recoveredArg3 named: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := EmMethodLinking.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) linkErrorException.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            contents := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            position := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            itsClass := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            itsSelector := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            declaredGlobals := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            declaredPoolVariables := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := CompiledMethod.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := self.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) readWord.
            recoveredBlock51PC := 63.
        ].
        recoveredBlock51Step = 63 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) new: (recoveredBlock51Stack2).
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            recoveredLocal2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 68.
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) readLong.
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal1.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) odd.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            (recoveredBlock51Stack0) ifTrue: [recoveredBlock51PC := 82] ifFalse: [recoveredBlock51PC := 123].
        ].
        recoveredBlock51Step = 82 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal1.
            recoveredBlock51PC := 85.
        ].
        recoveredBlock51Step = 85 ifTrue: [
            recoveredBlock51Stack1 := 2.
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 87 ifTrue: [
            recoveredBlock51Stack0 := (recoveredBlock51Stack0) // (recoveredBlock51Stack1).
            recoveredBlock51PC := 88.
        ].
        recoveredBlock51Step = 88 ifTrue: [
            recoveredLocal1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 91.
        ].
        recoveredBlock51Step = 91 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 94.
        ].
        recoveredBlock51Step = 94 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 97.
        ].
        recoveredBlock51Step = 97 ifTrue: [
            recoveredBlock51Stack2 := 64.
            recoveredBlock51PC := 100.
        ].
        recoveredBlock51Step = 100 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) bitAnd: (recoveredBlock51Stack2).
            recoveredBlock51PC := 102.
        ].
        recoveredBlock51Step = 102 ifTrue: [
            recoveredBlock51Stack2 := 0.
            recoveredBlock51PC := 104.
        ].
        recoveredBlock51Step = 104 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) ~= (recoveredBlock51Stack2).
            recoveredBlock51PC := 105.
        ].
        recoveredBlock51Step = 105 ifTrue: [
            (recoveredBlock51Stack0) hasCTC: (recoveredBlock51Stack1).
            recoveredBlock51PC := 107.
        ].
        recoveredBlock51Step = 107 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal1.
            recoveredBlock51PC := 113.
        ].
        recoveredBlock51Step = 113 ifTrue: [
            recoveredBlock51Stack2 := -7.
            recoveredBlock51PC := 115.
        ].
        recoveredBlock51Step = 115 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) bitShift: (recoveredBlock51Stack2).
            recoveredBlock51PC := 117.
        ].
        recoveredBlock51Step = 117 ifTrue: [
            recoveredBlock51Stack2 := 3.
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 119 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) bitAnd: (recoveredBlock51Stack2).
            recoveredBlock51PC := 121.
        ].
        recoveredBlock51Step = 121 ifTrue: [
            (recoveredBlock51Stack0) optimizationLevel: (recoveredBlock51Stack1).
            recoveredBlock51PC := 123.
        ].
        recoveredBlock51Step = 123 ifTrue: [
            recoveredBlock51Stack0 := recoveredLocal2.
            recoveredBlock51PC := 126.
        ].
        recoveredBlock51Step = 126 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 127.
        ].
        recoveredBlock51Step = 127 ifTrue: [
            recoveredBlock51Stack2 := self.
            recoveredBlock51PC := 128.
        ].
        recoveredBlock51Step = 128 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) readByteCodeArray.
            recoveredBlock51PC := 130.
        ].
        recoveredBlock51Step = 130 ifTrue: [
            (recoveredBlock51Stack1) bytecodes: (recoveredBlock51Stack2).
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 133.
        ].
        recoveredBlock51Step = 133 ifTrue: [
            recoveredBlock51Stack2 := self.
            recoveredBlock51PC := 134.
        ].
        recoveredBlock51Step = 134 ifTrue: [
            (recoveredBlock51Stack1) emReadLiteralsFrom: (recoveredBlock51Stack2).
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 137.
        ].
        recoveredBlock51Step = 137 ifTrue: [
            recoveredBlock51Stack2 := itsClass.
            recoveredBlock51PC := 139.
        ].
        recoveredBlock51Step = 139 ifTrue: [
            (recoveredBlock51Stack1) methodClass: (recoveredBlock51Stack2).
            recoveredBlock51PC := 141.
        ].
        recoveredBlock51Step = 141 ifTrue: [
            recoveredBlock51Stack1 := itsSelector.
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 143 ifTrue: [
            (recoveredBlock51Stack0) selector: (recoveredBlock51Stack1).
            recoveredBlock51PC := 145.
        ].
        recoveredBlock51Step = 145 ifTrue: [
            recoveredBlock51Stack0 := nil.
            recoveredBlock51PC := 146.
        ].
        recoveredBlock51Step = 146 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 147.
        ].
        recoveredBlock51Step = 147 ifTrue: [
            itsSelector := recoveredBlock51Stack1.
            recoveredBlock51PC := 149.
        ].
        recoveredBlock51Step = 149 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 150.
        ].
        recoveredBlock51Step = 150 ifTrue: [
            itsClass := recoveredBlock51Stack1.
            recoveredBlock51PC := 152.
        ].
        recoveredBlock51Step = 152 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 153.
        ].
        recoveredBlock51Step = 153 ifTrue: [
            position := recoveredBlock51Stack1.
            recoveredBlock51PC := 155.
        ].
        recoveredBlock51Step = 155 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Stack0.
            recoveredBlock51PC := 156.
        ].
        recoveredBlock51Step = 156 ifTrue: [
            contents := recoveredBlock51Stack1.
            recoveredBlock51PC := 158.
        ].
        recoveredBlock51Step = 158 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack0.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := EmMethodLinking.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) linkErrorException.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := [:recoveredBlock162Arg1 | 
    | recoveredBlock162Value0 recoveredBlock162Value1 |
    recoveredLocal2 := nil.
    recoveredBlock162Value0 := recoveredBlock162Arg1.
    recoveredBlock162Value1 := (recoveredBlock162Value0) exitWith: (nil).
    recoveredBlock162Value1
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2002a81c; bytecode file offset 0x6688c"
!EmMethodLinker methodsFor: 'recovered'!
readVariable: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := DBString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) emReadLiteralFrom: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 159.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 129.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := DBString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) emReadLiteralFrom: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := itsClass.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableAssociationAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := EsPoolDictionary.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPoolKey.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := (recoveredStack1) associationAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) unmanagedNamespace.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 154] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := declaredPoolVariables.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) declareVariable: (recoveredStack2) poolName: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := declaredGlobals.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := declaredPoolVariables.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := (recoveredStack1) declareVariable: (recoveredStack2) poolName: (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := itsClass.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock222Value0 recoveredBlock222Value1 recoveredBlock222Value2 recoveredBlock222Value3 recoveredBlock222Value4 |
    recoveredBlock222Value0 := declaredGlobals.
    recoveredBlock222Value1 := recoveredLocal5.
    (recoveredBlock222Value0) add: (recoveredBlock222Value1).
    recoveredBlock222Value2 := (self) globalNamespace.
    recoveredBlock222Value3 := recoveredLocal5.
    recoveredBlock222Value4 := (recoveredBlock222Value2) declareVariable: (recoveredBlock222Value3).
    recoveredBlock222Value4
].
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableAssociationAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

