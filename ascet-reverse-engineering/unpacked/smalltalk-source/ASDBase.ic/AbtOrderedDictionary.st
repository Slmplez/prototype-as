"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200651f8; bytecode file offset 0x961acc"
!AbtOrderedDictionary methodsFor: 'recovered'!
deferredUpdateCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) deferredUpdateCopyFrom: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200928fc; bytecode file offset 0x98f298"
!AbtOrderedDictionary methodsFor: 'recovered'!
abtReverseDoWithIndex: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sequenceableValues.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) abtReverseDoWithIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be2bc; bytecode file offset 0x9bb178"
!AbtOrderedDictionary methodsFor: 'recovered'!
sequenceableKeys: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceableKeys := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bef90; bytecode file offset 0x9bc0b4"
!AbtOrderedDictionary methodsFor: 'recovered'!
sequenceableValues: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceableValues := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201d4014; bytecode file offset 0xad08f8"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 afterValue: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | block280d5444Value0 block280d5444Value1 |
    block280d5444Value0 := ExCLDTValueOutOfRange.
    block280d5444Value1 := (block280d5444Value0) signalWith: (3).
    block280d5444Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2) afterKey: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d4030; bytecode file offset 0xad08f8"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 beforeValue: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [
    | block280d5468Value0 block280d5468Value1 |
    block280d5468Value0 := ExCLDTValueOutOfRange.
    block280d5468Value1 := (block280d5468Value0) signalWith: (3).
    block280d5468Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2) beforeKey: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021b724; bytecode file offset 0xb17ffc"
!AbtOrderedDictionary methodsFor: 'recovered'!
deferredUpdateCopyFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 recoveredBlock5Value7 recoveredBlock5Value8 recoveredBlock5Value9 |
    recoveredBlock5Value0 := Association.
    recoveredBlock5Value1 := (recoveredBlock5Value0) new.
    recoveredBlock5Value2 := recoveredBlock5Value1.
    recoveredBlock5Value3 := recoveredBlock5Arg1.
    recoveredBlock5Value4 := (recoveredBlock5Value3) key.
    (recoveredBlock5Value2) key: (recoveredBlock5Value4).
    recoveredBlock5Value5 := recoveredBlock5Arg1.
    recoveredBlock5Value6 := (recoveredBlock5Value5) value.
    recoveredBlock5Value7 := (recoveredBlock5Value6) recursiveDeferredUpdateOperation.
    recoveredBlock5Value8 := (recoveredBlock5Value1) value: (recoveredBlock5Value7).
    recoveredBlock5Value9 := (self) add: (recoveredBlock5Value8).
    recoveredBlock5Value9
].
    (recoveredValue0) associationsDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2025ccd4; bytecode file offset 0xb595a8"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 afterValue: recoveredArg3 ifAbsent: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg4.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) at: (recoveredValue3) put: (recoveredValue4) afterKey: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2025cce8; bytecode file offset 0xb595a8"
!AbtOrderedDictionary methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2 beforeValue: recoveredArg3 ifAbsent: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg4.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) at: (recoveredValue3) put: (recoveredValue4) beforeKey: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202abec8; bytecode file offset 0xba879c"
!AbtOrderedDictionary methodsFor: 'recovered'!
moveValue: recoveredArg1 afterValue: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredArg3.
    recoveredBlock25Value1 := (recoveredBlock25Value0) value.
    ^recoveredBlock25Value1
].
    recoveredValue5 := (self) keyAtValue: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) moveKey: (recoveredValue2) afterKey: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202abedc; bytecode file offset 0xba879c"
!AbtOrderedDictionary methodsFor: 'recovered'!
moveValue: recoveredArg1 beforeValue: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg3.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue2 := (self) keyAtValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 |
    recoveredBlock25Value0 := recoveredArg3.
    recoveredBlock25Value1 := (recoveredBlock25Value0) value.
    ^recoveredBlock25Value1
].
    recoveredValue5 := (self) keyAtValue: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (self) moveKey: (recoveredValue2) beforeKey: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2031f688; bytecode file offset 0xc1bf5c"
!AbtOrderedDictionary methodsFor: 'recovered'!
associationsSelect: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := sequenceableKeys.
    recoveredValue3 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12Stack5 recoveredBlock12Stack6 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := Association.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) new.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Stack3.
            recoveredBlock12PC := 26.
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Arg1.
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            (recoveredBlock12Stack4) key: (recoveredBlock12Stack5).
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack4 := sequenceableValues.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            recoveredBlock12Stack5 := recoveredBlock12Arg2.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack4 := (recoveredBlock12Stack4) at: (recoveredBlock12Stack5).
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack3 := (recoveredBlock12Stack3) value: (recoveredBlock12Stack4).
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack4 := recoveredBlock12Stack3.
            recoveredBlock12PC := 37.
        ].
        recoveredBlock12Step = 37 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack4.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) value: (recoveredBlock12Stack3).
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 44] ifFalse: [recoveredBlock12PC := 51].
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 48.
        ].
        recoveredBlock12Step = 48 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Local1.
            recoveredBlock12PC := 49.
        ].
        recoveredBlock12Step = 49 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 51.
        ].
        recoveredBlock12Step = 51 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) doWithIndex: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203933f8; bytecode file offset 0xc8fcc8"
!AbtOrderedDictionary methodsFor: 'recovered'!
abtPrimitiveCloneFrom: recoveredArg1 withRecursionSet: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) size.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue2) new: (recoveredValue3).
    sequenceableKeys := recoveredValue4.
    recoveredValue5 := OrderedCollection.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := (recoveredValue5) new: (recoveredValue6).
    sequenceableValues := recoveredValue7.
    recoveredLocal1 := 0.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := [:recoveredBlock35Arg1 :recoveredBlock35Arg2 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 recoveredBlock35Value10 recoveredBlock35Value11 |
    recoveredBlock35Value0 := lookupTable.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := recoveredLocal1.
    recoveredBlock35Value3 := (recoveredBlock35Value2) + (1).
    recoveredBlock35Value4 := recoveredBlock35Value3.
    recoveredLocal1 := recoveredBlock35Value4.
    (recoveredBlock35Value0) at: (recoveredBlock35Value1) put: (recoveredBlock35Value3).
    recoveredBlock35Value5 := sequenceableKeys.
    recoveredBlock35Value6 := recoveredBlock35Arg1.
    (recoveredBlock35Value5) add: (recoveredBlock35Value6).
    recoveredBlock35Value7 := sequenceableValues.
    recoveredBlock35Value8 := recoveredBlock35Arg2.
    recoveredBlock35Value9 := recoveredArg2.
    recoveredBlock35Value10 := (recoveredBlock35Value8) abtCloneWithRecursionSet: (recoveredBlock35Value9).
    recoveredBlock35Value11 := (recoveredBlock35Value7) add: (recoveredBlock35Value10).
    recoveredBlock35Value11
].
    (recoveredValue8) keysAndValuesDo: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203b0d48; bytecode file offset 0xcad634"
!AbtOrderedDictionary methodsFor: 'recovered'!
mutateSequenceableKeysAndValues: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 'ES'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) mutateObjects: (recoveredStack2) fromPlatform: (recoveredStack3) named: (recoveredStack4) withDefinition: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'oops'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:block280f5b98Arg1 | 
    | block280f5b98Value0 block280f5b98Value1 |
    block280f5b98Value0 := block280f5b98Arg1.
    block280f5b98Value1 := (block280f5b98Value0) key.
    block280f5b98Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            sequenceableKeys := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:block280f5bbcArg1 | 
    | block280f5bbcValue0 block280f5bbcValue1 |
    block280f5bbcValue0 := block280f5bbcArg1.
    block280f5bbcValue1 := (block280f5bbcValue0) value.
    block280f5bbcValue1
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            sequenceableValues := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

