"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200044d0; bytecode file offset 0x90206c"
!DBXmlDumper methodsFor: 'recovered'!
dumpLongs: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001b6f8; bytecode file offset 0x92209c"
!DBXmlDumper methodsFor: 'recovered'!
xmlEntityTag
    ^' ENTITY '
! !

"ASDBase.ic method 0x2001bfa4; bytecode file offset 0x92209c"
!DBXmlDumper methodsFor: 'recovered'!
xmlAttributeTag
    ^'<!!ATTLIST '
! !

"ASDBase.ic method 0x20086f20; bytecode file offset 0x9837f0"
!DBXmlDumper methodsFor: 'recovered'!
dumpInstanceBeginFor: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (recoveredValue0) dumpInstanceBeginOn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20094a04; bytecode file offset 0x9913f0"
!DBXmlDumper methodsFor: 'recovered'!
dumpReferenceBeginOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('		<r>').
    ^self
! !

"ASDBase.ic method 0x20094b34; bytecode file offset 0x9913f0"
!DBXmlDumper methodsFor: 'recovered'!
dumpValueBeginOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('		<v>').
    ^self
! !

"ASDBase.ic method 0x200d831c; bytecode file offset 0x9d4cb8"
!DBXmlDumper methodsFor: 'recovered'!
dumpValueEndOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('</v>').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200d8358; bytecode file offset 0x9d4cb8"
!DBXmlDumper methodsFor: 'recovered'!
dumpInstanceEndOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('</instance>').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200d83d0; bytecode file offset 0x9d4cb8"
!DBXmlDumper methodsFor: 'recovered'!
dumpReferenceEndOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('</r>').
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20122220; bytecode file offset 0xa1eaf4"
!DBXmlDumper methodsFor: 'recovered'!
dumpValue: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (self) dumpValueBeginOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) xmlDumpOn: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (self) dumpValueEndOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20122234; bytecode file offset 0xa1eaf4"
!DBXmlDumper methodsFor: 'recovered'!
dumpReference: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (self) dumpReferenceBeginOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) printOn: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (self) dumpReferenceEndOn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x201b5ef4; bytecode file offset 0xab27b4"
!DBXmlDumper methodsFor: 'recovered'!
dumpPointers: recoveredArg1 class: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) instSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) dumpVariablePointers: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) dumpInstancePointers: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6600; bytecode file offset 0xae2ec8"
!DBXmlDumper methodsFor: 'recovered'!
dumpXmlHeaderOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('<?xml version="1.0"?>').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('<!!DOCTYPE Object SYSTEM "smalltalk.dtd">').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    (recoveredValue0) nextPutAll: ('<Object rootID="r').
    ^self
! !

"ASDBase.ic method 0x20264cc8; bytecode file offset 0xb61594"
!DBXmlDumper methodsFor: 'recovered'!
dumpObjectDescriptors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := NumPredefinedIds.
    recoveredValue1 := numBehaviors.
    recoveredValue2 := (recoveredValue0) + (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := objects.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredLocal1.
    recoveredBlock14Value2 := (self) dumpSingleDescriptor: (recoveredBlock14Value0) lastId: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := objectStream.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('</Object>').
    (recoveredValue5) cr.
    ^self
! !

"ASDBase.ic method 0x202cd5c4; bytecode file offset 0xbc9e9c"
!DBXmlDumper methodsFor: 'recovered'!
logRecursiveOneStage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBDBSurrogateArgument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPointers.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) instSize.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'members'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) canUnderstand: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) logRecursiveVariablePointersOneStage.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            super logRecursiveOneStage.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045ea8c; bytecode file offset 0xd5b38c"
!DBXmlDumper methodsFor: 'recovered'!
dumpSingleDescriptor: recoveredArg1 lastId: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) key.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSymbol.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := Symbol.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := ClassIdSymbol.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ClassIdDBSymbol.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpIdOf: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBytes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := objectStream.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) dumpInstanceBeginFor: (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := objectStream.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := '">'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLongs.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) dumpLongs: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) dumpPointers: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := objectStream.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) dumpInstanceEndOn: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053cf00; bytecode file offset 0xe39804"
!DBXmlDumper methodsFor: 'recovered'!
dumpInstancePointers: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instSize.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) basicSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nilIndices.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 |
    recoveredBlock17Value0 := (self) library.
    recoveredBlock17Value1 := DBLinDeLinError.
    recoveredBlock17Value2 := (self) class.
    recoveredBlock17Value3 := (recoveredBlock17Value2) name.
    recoveredBlock17Value4 := (recoveredBlock17Value3) , ('>>dumpPointers:class: missing nilIndices').
    recoveredBlock17Value5 := (recoveredBlock17Value1) createBasic: (recoveredBlock17Value4).
    recoveredBlock17Value6 := (recoveredBlock17Value0) showError: (recoveredBlock17Value5).
    recoveredBlock17Value6
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := objectStream.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) dumpValue: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVarAt: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDbObject.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := topDBObject.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) dumpIdOf: (recoveredStack4).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := objectStream.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) dumpReference: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := topDBObject.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDbObject.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) dbObject.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) dumpIdOf: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) dumpIdOf: (recoveredStack3).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPointers.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImmediateForDumping.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := objectStream.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) dumpReference: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := objectStream.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) dumpValue: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPointers.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := (recoveredStack2) isImmediateForDumping.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := (recoveredStack3) dumpIdOf: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := objectStream.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack2) dumpReference: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := objectStream.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack2) dumpValue: (recoveredStack3) on: (recoveredStack4).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 52] ifFalse: [recoveredLocal1 := nil. recoveredPC := 208]] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20567518; bytecode file offset 0xe63e58"
!DBXmlDumper methodsFor: 'recovered'!
dump: recoveredArg1 on: recoveredArg2 size: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            objectStream := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) initialize: (recoveredStack1) topObject: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            directLink := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            RBDBSurrogateArgument := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            RBDBLogLevel := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := Process.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) stackOverflowWarningSize.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) exspectedStackSize.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := Process.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) stackOverflowWarningSize.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := Process.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) exspectedStackSize.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) stackOverflowWarningSize: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) logRecursiveOneStage.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := NumPredefinedIds.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := numBehaviors.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := numObjects.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) assignComputedIdRanges: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) dumpXmlHeaderOn: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := '<!!-- Etas Xml Dumper v0.0 '.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := objectVersion.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := ' -->'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := '<!!-- NoOfBehaviors '.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := behaviors.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := ' -->'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := '<!!-- NoOfObjects '.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := objects.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := ' -->'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := '<!!-- RootObject '.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) dumpIdOf: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := objectStream.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := ' -->'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := objectStream.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) dumpBehaviorDescriptors.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack0) dumpObjectDescriptors.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := messageCounts.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 177] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'object dumping'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) recordSummaryMessage: (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRuntime.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := 'having dumped '.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) addText: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := objects.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := '  ('.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := numObjects.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := ') using '.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := objectStream.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := ' bytes '.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := Process.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) stackOverflowWarningSize: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := linkObjects.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2057b39c; bytecode file offset 0xe77cac"
!DBXmlDumper methodsFor: 'recovered'!
dumpVariablePointers: recoveredArg1 class: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'members'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) canUnderstand: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nilIndices.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 |
    recoveredBlock27Value0 := (self) library.
    recoveredBlock27Value1 := DBLinDeLinError.
    recoveredBlock27Value2 := (self) class.
    recoveredBlock27Value3 := (recoveredBlock27Value2) name.
    recoveredBlock27Value4 := (recoveredBlock27Value3) , ('>>dumpPointers:class: missing nilIndices').
    recoveredBlock27Value5 := (recoveredBlock27Value1) createBasic: (recoveredBlock27Value4).
    recoveredBlock27Value6 := (recoveredBlock27Value0) showInternalError: (recoveredBlock27Value5).
    recoveredBlock27Value6
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) members.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 :recoveredBlock61Arg2 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61Stack4 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal3.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg2.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) at: (recoveredBlock61Stack2).
            recoveredBlock61PC := 74.
        ].
        recoveredBlock61Step = 74 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 78] ifFalse: [recoveredBlock61PC := 88].
        ].
        recoveredBlock61Step = 78 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack2 := nil.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack3 := objectStream.
            recoveredBlock61PC := 82.
        ].
        recoveredBlock61Step = 82 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpValue: (recoveredBlock61Stack2) on: (recoveredBlock61Stack3).
            recoveredBlock61PC := 84.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61PC := 240.
        ].
        recoveredBlock61Step = 88 ifTrue: [
            recoveredBlock61Stack1 := recoveredArg1.
            recoveredBlock61PC := 91.
        ].
        recoveredBlock61Step = 91 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 92.
        ].
        recoveredBlock61Step = 92 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) perform: (recoveredBlock61Stack2).
            recoveredBlock61PC := 94.
        ].
        recoveredBlock61Step = 94 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Stack1.
            recoveredBlock61PC := 95.
        ].
        recoveredBlock61Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock61Stack2.
            recoveredBlock61PC := 98.
        ].
        recoveredBlock61Step = 98 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isDbObject.
            recoveredBlock61PC := 100.
        ].
        recoveredBlock61Step = 100 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 104] ifFalse: [recoveredBlock61PC := 200].
        ].
        recoveredBlock61Step = 104 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 107.
        ].
        recoveredBlock61Step = 107 ifTrue: [
            recoveredBlock61Stack2 := topDBObject.
            recoveredBlock61PC := 109.
        ].
        recoveredBlock61Step = 109 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) = (recoveredBlock61Stack2).
            recoveredBlock61PC := 110.
        ].
        recoveredBlock61Step = 110 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 114] ifFalse: [recoveredBlock61PC := 128].
        ].
        recoveredBlock61Step = 114 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 115.
        ].
        recoveredBlock61Step = 115 ifTrue: [
            recoveredBlock61Stack2 := self.
            recoveredBlock61PC := 116.
        ].
        recoveredBlock61Step = 116 ifTrue: [
            recoveredBlock61Stack3 := recoveredLocal2.
            recoveredBlock61PC := 119.
        ].
        recoveredBlock61Step = 119 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) dumpIdOf: (recoveredBlock61Stack3).
            recoveredBlock61PC := 121.
        ].
        recoveredBlock61Step = 121 ifTrue: [
            recoveredBlock61Stack3 := objectStream.
            recoveredBlock61PC := 123.
        ].
        recoveredBlock61Step = 123 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpReference: (recoveredBlock61Stack2) on: (recoveredBlock61Stack3).
            recoveredBlock61PC := 125.
        ].
        recoveredBlock61Step = 125 ifTrue: [
            recoveredBlock61PC := 196.
        ].
        recoveredBlock61Step = 128 ifTrue: [
            recoveredBlock61Stack1 := topDBObject.
            recoveredBlock61PC := 130.
        ].
        recoveredBlock61Step = 130 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isDbObject.
            recoveredBlock61PC := 132.
        ].
        recoveredBlock61Step = 132 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 136] ifFalse: [recoveredBlock61PC := 150].
        ].
        recoveredBlock61Step = 136 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 137.
        ].
        recoveredBlock61Step = 137 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal2.
            recoveredBlock61PC := 140.
        ].
        recoveredBlock61Step = 140 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) dbObject.
            recoveredBlock61PC := 142.
        ].
        recoveredBlock61Step = 142 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpIdOf: (recoveredBlock61Stack2).
            recoveredBlock61PC := 144.
        ].
        recoveredBlock61Step = 144 ifTrue: [
            recoveredLocal1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 147.
        ].
        recoveredBlock61Step = 147 ifTrue: [
            recoveredBlock61PC := 159.
        ].
        recoveredBlock61Step = 150 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 151.
        ].
        recoveredBlock61Step = 151 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal2.
            recoveredBlock61PC := 154.
        ].
        recoveredBlock61Step = 154 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpIdOf: (recoveredBlock61Stack2).
            recoveredBlock61PC := 156.
        ].
        recoveredBlock61Step = 156 ifTrue: [
            recoveredLocal1 := recoveredBlock61Stack1.
            recoveredBlock61PC := 159.
        ].
        recoveredBlock61Step = 159 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 162.
        ].
        recoveredBlock61Step = 162 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) class.
            recoveredBlock61PC := 163.
        ].
        recoveredBlock61Step = 163 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isPointers.
            recoveredBlock61PC := 165.
        ].
        recoveredBlock61Step = 165 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 168] ifFalse: [recoveredBlock61PC := 188].
        ].
        recoveredBlock61Step = 168 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 171.
        ].
        recoveredBlock61Step = 171 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isImmediateForDumping.
            recoveredBlock61PC := 173.
        ].
        recoveredBlock61Step = 173 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 188] ifFalse: [recoveredBlock61PC := 176].
        ].
        recoveredBlock61Step = 176 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 177.
        ].
        recoveredBlock61Step = 177 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal1.
            recoveredBlock61PC := 180.
        ].
        recoveredBlock61Step = 180 ifTrue: [
            recoveredBlock61Stack3 := objectStream.
            recoveredBlock61PC := 182.
        ].
        recoveredBlock61Step = 182 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpReference: (recoveredBlock61Stack2) on: (recoveredBlock61Stack3).
            recoveredBlock61PC := 184.
        ].
        recoveredBlock61Step = 184 ifTrue: [
            recoveredBlock61PC := 196.
        ].
        recoveredBlock61Step = 188 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 189.
        ].
        recoveredBlock61Step = 189 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal2.
            recoveredBlock61PC := 192.
        ].
        recoveredBlock61Step = 192 ifTrue: [
            recoveredBlock61Stack3 := objectStream.
            recoveredBlock61PC := 194.
        ].
        recoveredBlock61Step = 194 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpValue: (recoveredBlock61Stack2) on: (recoveredBlock61Stack3).
            recoveredBlock61PC := 196.
        ].
        recoveredBlock61Step = 196 ifTrue: [
            recoveredBlock61PC := 240.
        ].
        recoveredBlock61Step = 200 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 203.
        ].
        recoveredBlock61Step = 203 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) class.
            recoveredBlock61PC := 204.
        ].
        recoveredBlock61Step = 204 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isPointers.
            recoveredBlock61PC := 206.
        ].
        recoveredBlock61Step = 206 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 210] ifFalse: [recoveredBlock61PC := 232].
        ].
        recoveredBlock61Step = 210 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 213.
        ].
        recoveredBlock61Step = 213 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) isImmediateForDumping.
            recoveredBlock61PC := 215.
        ].
        recoveredBlock61Step = 215 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 232] ifFalse: [recoveredBlock61PC := 218].
        ].
        recoveredBlock61Step = 218 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 219.
        ].
        recoveredBlock61Step = 219 ifTrue: [
            recoveredBlock61Stack2 := self.
            recoveredBlock61PC := 220.
        ].
        recoveredBlock61Step = 220 ifTrue: [
            recoveredBlock61Stack3 := recoveredLocal2.
            recoveredBlock61PC := 223.
        ].
        recoveredBlock61Step = 223 ifTrue: [
            recoveredBlock61Stack2 := (recoveredBlock61Stack2) dumpIdOf: (recoveredBlock61Stack3).
            recoveredBlock61PC := 225.
        ].
        recoveredBlock61Step = 225 ifTrue: [
            recoveredBlock61Stack3 := objectStream.
            recoveredBlock61PC := 227.
        ].
        recoveredBlock61Step = 227 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpReference: (recoveredBlock61Stack2) on: (recoveredBlock61Stack3).
            recoveredBlock61PC := 229.
        ].
        recoveredBlock61Step = 229 ifTrue: [
            recoveredBlock61PC := 240.
        ].
        recoveredBlock61Step = 232 ifTrue: [
            recoveredBlock61Stack1 := self.
            recoveredBlock61PC := 233.
        ].
        recoveredBlock61Step = 233 ifTrue: [
            recoveredBlock61Stack2 := recoveredLocal2.
            recoveredBlock61PC := 236.
        ].
        recoveredBlock61Step = 236 ifTrue: [
            recoveredBlock61Stack3 := objectStream.
            recoveredBlock61PC := 238.
        ].
        recoveredBlock61Step = 238 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) dumpValue: (recoveredBlock61Stack2) on: (recoveredBlock61Stack3).
            recoveredBlock61PC := 240.
        ].
        recoveredBlock61Step = 240 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack1) dumpInstancePointers: (recoveredStack2) class: (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c4150; bytecode file offset 0xec0a70"
!DBXmlDumper methodsFor: 'recovered'!
dumpBehaviorDescriptors
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := behaviors.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) key.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredLocal5 := recoveredBlock6Stack1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) name.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) class.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            (recoveredBlock6Stack1 ~~ nil) ifTrue: [recoveredBlock6PC := 68] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack1 := TagMetaClass.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredLocal4 := recoveredBlock6Stack1.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack1 := NUL.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack1 := 0.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal3.
            recoveredBlock6PC := 50.
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6Stack2 := 1.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal3.
            recoveredBlock6PC := 55.
        ].
        recoveredBlock6Step = 55 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) size.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack4 := 6.
            recoveredBlock6PC := 59.
        ].
        recoveredBlock6Step = 59 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) - (recoveredBlock6Stack4).
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) copyFrom: (recoveredBlock6Stack2) to: (recoveredBlock6Stack3).
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredLocal3 := recoveredBlock6Stack1.
            recoveredBlock6PC := 65.
        ].
        recoveredBlock6Step = 65 ifTrue: [
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 68 ifTrue: [
            recoveredBlock6Stack1 := TagClass.
            recoveredBlock6PC := 70.
        ].
        recoveredBlock6Step = 70 ifTrue: [
            recoveredLocal4 := recoveredBlock6Stack1.
            recoveredBlock6PC := 73.
        ].
        recoveredBlock6Step = 73 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 74.
        ].
        recoveredBlock6Step = 74 ifTrue: [
            recoveredBlock6Stack2 := recoveredLocal5.
            recoveredBlock6PC := 77.
        ].
        recoveredBlock6Step = 77 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) repOf: (recoveredBlock6Stack2).
            recoveredBlock6PC := 79.
        ].
        recoveredBlock6Step = 79 ifTrue: [
            recoveredLocal2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) instSize.
            recoveredBlock6PC := 87.
        ].
        recoveredBlock6Step = 87 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 93.
        ].
        recoveredBlock6Step = 93 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isPointers.
            recoveredBlock6PC := 95.
        ].
        recoveredBlock6Step = 95 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 98] ifFalse: [recoveredBlock6PC := 292].
        ].
        recoveredBlock6Step = 98 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 101.
        ].
        recoveredBlock6Step = 101 ifTrue: [
            recoveredBlock6Stack2 := 0.
            recoveredBlock6PC := 103.
        ].
        recoveredBlock6Step = 103 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) > (recoveredBlock6Stack2).
            recoveredBlock6PC := 104.
        ].
        recoveredBlock6Step = 104 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 108] ifFalse: [recoveredBlock6PC := 176].
        ].
        recoveredBlock6Step = 108 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 110.
        ].
        recoveredBlock6Step = 110 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 111.
        ].
        recoveredBlock6Step = 111 ifTrue: [
            (recoveredBlock6Stack2) cr.
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 114.
        ].
        recoveredBlock6Step = 114 ifTrue: [
            recoveredBlock6Stack3 := '<class name="'.
            recoveredBlock6PC := 116.
        ].
        recoveredBlock6Step = 116 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 119.
        ].
        recoveredBlock6Step = 119 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal3.
            recoveredBlock6PC := 122.
        ].
        recoveredBlock6Step = 122 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 125.
        ].
        recoveredBlock6Step = 125 ifTrue: [
            recoveredBlock6Stack3 := '" >'.
            recoveredBlock6PC := 127.
        ].
        recoveredBlock6Step = 127 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 129.
        ].
        recoveredBlock6Step = 129 ifTrue: [
            (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 131.
        ].
        recoveredBlock6Step = 131 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 134.
        ].
        recoveredBlock6Step = 134 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) allInstVarNames.
            recoveredBlock6PC := 136.
        ].
        recoveredBlock6Step = 136 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block136Arg1 | 
    | recoveredBlock6Block136Value0 recoveredBlock6Block136Value1 recoveredBlock6Block136Value2 recoveredBlock6Block136Value3 recoveredBlock6Block136Value4 recoveredBlock6Block136Value5 |
    recoveredBlock6Block136Value0 := objectStream.
    recoveredBlock6Block136Value1 := recoveredBlock6Block136Value0.
    (recoveredBlock6Block136Value1) nextPutAll: ('<var>').
    recoveredBlock6Block136Value2 := recoveredBlock6Block136Value0.
    recoveredBlock6Block136Value3 := recoveredBlock6Block136Arg1.
    (recoveredBlock6Block136Value2) nextPutAll: (recoveredBlock6Block136Value3).
    recoveredBlock6Block136Value4 := recoveredBlock6Block136Value0.
    (recoveredBlock6Block136Value4) nextPutAll: ('</var>').
    recoveredBlock6Block136Value5 := (recoveredBlock6Block136Value0) cr.
    recoveredBlock6Block136Value5
].
            recoveredBlock6PC := 161.
        ].
        recoveredBlock6Step = 161 ifTrue: [
            (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 163.
        ].
        recoveredBlock6Step = 163 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 165.
        ].
        recoveredBlock6Step = 165 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 166.
        ].
        recoveredBlock6Step = 166 ifTrue: [
            recoveredBlock6Stack3 := '</class>'.
            recoveredBlock6PC := 168.
        ].
        recoveredBlock6Step = 168 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 170.
        ].
        recoveredBlock6Step = 170 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 172.
        ].
        recoveredBlock6Step = 172 ifTrue: [
            recoveredBlock6PC := 288.
        ].
        recoveredBlock6Step = 176 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 179.
        ].
        recoveredBlock6Step = 179 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) class.
            recoveredBlock6PC := 180.
        ].
        recoveredBlock6Step = 180 ifTrue: [
            recoveredBlock6Stack2 := 'members'.
            recoveredBlock6PC := 182.
        ].
        recoveredBlock6Step = 182 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) canUnderstand: (recoveredBlock6Stack2).
            recoveredBlock6PC := 184.
        ].
        recoveredBlock6Step = 184 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 188] ifFalse: [recoveredBlock6PC := 256].
        ].
        recoveredBlock6Step = 188 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 190.
        ].
        recoveredBlock6Step = 190 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 191.
        ].
        recoveredBlock6Step = 191 ifTrue: [
            (recoveredBlock6Stack2) cr.
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 194.
        ].
        recoveredBlock6Step = 194 ifTrue: [
            recoveredBlock6Stack3 := '<class name="'.
            recoveredBlock6PC := 196.
        ].
        recoveredBlock6Step = 196 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 199.
        ].
        recoveredBlock6Step = 199 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal3.
            recoveredBlock6PC := 202.
        ].
        recoveredBlock6Step = 202 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 205.
        ].
        recoveredBlock6Step = 205 ifTrue: [
            recoveredBlock6Stack3 := '" >'.
            recoveredBlock6PC := 207.
        ].
        recoveredBlock6Step = 207 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 209.
        ].
        recoveredBlock6Step = 209 ifTrue: [
            (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 211.
        ].
        recoveredBlock6Step = 211 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal5.
            recoveredBlock6PC := 214.
        ].
        recoveredBlock6Step = 214 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) members.
            recoveredBlock6PC := 216.
        ].
        recoveredBlock6Step = 216 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block216Arg1 | 
    | recoveredBlock6Block216Value0 recoveredBlock6Block216Value1 recoveredBlock6Block216Value2 recoveredBlock6Block216Value3 recoveredBlock6Block216Value4 recoveredBlock6Block216Value5 |
    recoveredBlock6Block216Value0 := objectStream.
    recoveredBlock6Block216Value1 := recoveredBlock6Block216Value0.
    (recoveredBlock6Block216Value1) nextPutAll: ('<var>').
    recoveredBlock6Block216Value2 := recoveredBlock6Block216Value0.
    recoveredBlock6Block216Value3 := recoveredBlock6Block216Arg1.
    (recoveredBlock6Block216Value2) nextPutAll: (recoveredBlock6Block216Value3).
    recoveredBlock6Block216Value4 := recoveredBlock6Block216Value0.
    (recoveredBlock6Block216Value4) nextPutAll: ('</var>').
    recoveredBlock6Block216Value5 := (recoveredBlock6Block216Value0) cr.
    recoveredBlock6Block216Value5
].
            recoveredBlock6PC := 241.
        ].
        recoveredBlock6Step = 241 ifTrue: [
            (recoveredBlock6Stack1) do: (recoveredBlock6Stack2).
            recoveredBlock6PC := 243.
        ].
        recoveredBlock6Step = 243 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 245.
        ].
        recoveredBlock6Step = 245 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 246.
        ].
        recoveredBlock6Step = 246 ifTrue: [
            recoveredBlock6Stack3 := '</class>'.
            recoveredBlock6PC := 248.
        ].
        recoveredBlock6Step = 248 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 250.
        ].
        recoveredBlock6Step = 250 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 252.
        ].
        recoveredBlock6Step = 252 ifTrue: [
            recoveredBlock6PC := 288.
        ].
        recoveredBlock6Step = 256 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 258.
        ].
        recoveredBlock6Step = 258 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 259.
        ].
        recoveredBlock6Step = 259 ifTrue: [
            (recoveredBlock6Stack2) cr.
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 262.
        ].
        recoveredBlock6Step = 262 ifTrue: [
            recoveredBlock6Stack3 := '<variableClass name="'.
            recoveredBlock6PC := 264.
        ].
        recoveredBlock6Step = 264 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 267.
        ].
        recoveredBlock6Step = 267 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal3.
            recoveredBlock6PC := 270.
        ].
        recoveredBlock6Step = 270 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 273.
        ].
        recoveredBlock6Step = 273 ifTrue: [
            recoveredBlock6Stack3 := '" >'.
            recoveredBlock6PC := 275.
        ].
        recoveredBlock6Step = 275 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 277.
        ].
        recoveredBlock6Step = 277 ifTrue: [
            (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 279.
        ].
        recoveredBlock6Step = 279 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 281.
        ].
        recoveredBlock6Step = 281 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 282.
        ].
        recoveredBlock6Step = 282 ifTrue: [
            recoveredBlock6Stack3 := '</variableClass>'.
            recoveredBlock6PC := 284.
        ].
        recoveredBlock6Step = 284 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 286.
        ].
        recoveredBlock6Step = 286 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 288.
        ].
        recoveredBlock6Step = 288 ifTrue: [
            recoveredBlock6PC := 324.
        ].
        recoveredBlock6Step = 292 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 294.
        ].
        recoveredBlock6Step = 294 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 295.
        ].
        recoveredBlock6Step = 295 ifTrue: [
            (recoveredBlock6Stack2) cr.
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 298.
        ].
        recoveredBlock6Step = 298 ifTrue: [
            recoveredBlock6Stack3 := '<variableByteClass name="'.
            recoveredBlock6PC := 300.
        ].
        recoveredBlock6Step = 300 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 303.
        ].
        recoveredBlock6Step = 303 ifTrue: [
            recoveredBlock6Stack3 := recoveredLocal3.
            recoveredBlock6PC := 306.
        ].
        recoveredBlock6Step = 306 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 309.
        ].
        recoveredBlock6Step = 309 ifTrue: [
            recoveredBlock6Stack3 := '" >'.
            recoveredBlock6PC := 311.
        ].
        recoveredBlock6Step = 311 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 313.
        ].
        recoveredBlock6Step = 313 ifTrue: [
            (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 315.
        ].
        recoveredBlock6Step = 315 ifTrue: [
            recoveredBlock6Stack1 := objectStream.
            recoveredBlock6PC := 317.
        ].
        recoveredBlock6Step = 317 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Stack1.
            recoveredBlock6PC := 318.
        ].
        recoveredBlock6Step = 318 ifTrue: [
            recoveredBlock6Stack3 := '</variableByteClass>'.
            recoveredBlock6PC := 320.
        ].
        recoveredBlock6Step = 320 ifTrue: [
            (recoveredBlock6Stack2) nextPutAll: (recoveredBlock6Stack3).
            recoveredBlock6PC := 322.
        ].
        recoveredBlock6Step = 322 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 324.
        ].
        recoveredBlock6Step = 324 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    recoveredValue2 := objectStream.
    (recoveredValue2) cr.
    ^self
! !

"ASDBase.ic method 0x205d3e2c; bytecode file offset 0xed073c"
!DBXmlDumper methodsFor: 'recovered'!
logRecursiveVariablePointersOneStage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBDBSurrogateArgument.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) stopRecursion: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) logSurrogate.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) members.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nilIndices.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 |
    currentErrorString := 'missing nilIndices'.
    recoveredBlock51Value0 := DBLinDeLinError.
    recoveredBlock51Value1 := (recoveredBlock51Value0) createObjectFiler: (self).
    ^recoveredBlock51Value1
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) perform: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDbObject.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := topDBObject.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack2) logRecursiveOneStage.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack2) logRecursiveOneStage.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := topDBObject.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) isDbObject.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := directLink.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 166] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := (recoveredStack2) asRBDBProxyObject.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack2) instVarAt: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := linkObjects.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) addReferenceOnly: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := DBDumpFoundDirectLink.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            currentErrorString := recoveredStack2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := DBLinDeLinError.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) createObjectFiler: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 253.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 253] ifFalse: [recoveredPC := 242].
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := linkObjects.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack3 := (recoveredStack3) dbObject.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack3 := (recoveredStack3) asRBDBProxyObject.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack2) addReferenceOnly: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack2) logRecursiveOneStage.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 278].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := (recoveredStack2) isRBDBObject.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 286] ifFalse: [recoveredPC := 313].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack3 := topDBObject.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := (recoveredStack3) dbObject.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 298].
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := (recoveredStack2) isTemp.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 306].
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := linkObjects.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack2) addReferenceOnly: (recoveredStack3).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            RBDBSurrogateArgument := recoveredStack2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack2) logRecursiveOneStage.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 82] ifFalse: [recoveredPC := 352]] ifFalse: [recoveredPC := 325].
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 342].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

