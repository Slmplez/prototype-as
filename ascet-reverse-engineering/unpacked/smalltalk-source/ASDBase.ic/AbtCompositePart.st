"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20039f80; bytecode file offset 0x938608"
!AbtCompositePart methodsFor: 'recovered'!
partAttributeValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) subpartAttributeValue: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20086d34; bytecode file offset 0x98376c"
!AbtCompositePart methodsFor: 'recovered'!
partAttributeValue: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) subpartAttributeValue: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200874d4; bytecode file offset 0x983e10"
!AbtCompositePart methodsFor: 'recovered'!
subpartNamed: recoveredArg1 put: recoveredArg2 partIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) subpartNamed: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200946a8; bytecode file offset 0x991174"
!AbtCompositePart methodsFor: 'recovered'!
componentName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) componentName: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20094838; bytecode file offset 0x991174"
!AbtCompositePart methodsFor: 'recovered'!
removeComponentNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) removeComponentNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200948a8; bytecode file offset 0x991174"
!AbtCompositePart methodsFor: 'recovered'!
removeComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) removeComponent: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099e88; bytecode file offset 0x997194"
!AbtCompositePart methodsFor: 'recovered'!
componentName: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) keyAtValue: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009a128; bytecode file offset 0x997194"
!AbtCompositePart methodsFor: 'recovered'!
componentNamed: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009b068; bytecode file offset 0x997920"
!AbtCompositePart methodsFor: 'recovered'!
abtAddSubpart: recoveredArg1 named: recoveredArg2 atIndex: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) abtAddSubpart: (recoveredValue0) named: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae12c; bytecode file offset 0x9aaa48"
!AbtCompositePart methodsFor: 'recovered'!
abtAddSubpart: recoveredArg1 named: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200d2790; bytecode file offset 0x9cf06c"
!AbtCompositePart methodsFor: 'recovered'!
missingKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MsgBaseTimingProblemOrCorruptedDictionary.
    recoveredValue1 := (self) getMRIString: (recoveredValue0) group: ('AbtVaMsgBase').
    recoveredValue2 := (self) error: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ebb54; bytecode file offset 0x9e8410"
!AbtCompositePart methodsFor: 'recovered'!
abtWhenChangedVariable: recoveredArg1 perform: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) addDependencyOnVariable: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) abtWhenPrimitive: (recoveredValue1) perform: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ffff8; bytecode file offset 0x9fc8bc"
!AbtCompositePart methodsFor: 'recovered'!
valueOfSubpartNamed: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) abtSelfReferenceSymbol.
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (self) subpartAttributeValue: (recoveredValue4) put: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2010dbd8; bytecode file offset 0xa0a4a4"
!AbtCompositePart methodsFor: 'recovered'!
componentIndex: recoveredArg1
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
            recoveredStack2 := [
    0
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentIndex: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20111978; bytecode file offset 0xa0e234"
!AbtCompositePart methodsFor: 'recovered'!
abtWhenChangedVariable: recoveredArg1 signal: recoveredArg2 of: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) addDependencyOnVariable: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (self) abtWhenPrimitive: (recoveredValue1) signal: (recoveredValue2) of: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2014272c; bytecode file offset 0xa3f018"
!AbtCompositePart methodsFor: 'recovered'!
noSuchComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := MsgBaseNoSuchComponent.
    recoveredValue1 := (self) getMRIString: (recoveredValue0) group: ('AbtVaMsgBase').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) replace: (recoveredValue3).
    (self) error: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2014274c; bytecode file offset 0xa3f018"
!AbtCompositePart methodsFor: 'recovered'!
noSuchSubpart: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := MsgBaseNoSuchSubpart.
    recoveredValue1 := (self) getMRIString: (recoveredValue0) group: ('AbtVaMsgBase').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := (recoveredValue1) replace: (recoveredValue3).
    (self) error: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20147ebc; bytecode file offset 0xa44780"
!AbtCompositePart methodsFor: 'recovered'!
subpartNamed: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) components.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) parentPart: (self).
    recoveredValue5 := recoveredArg1.
    (recoveredValue3) nameInParentPart: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201562cc; bytecode file offset 0xa52b88"
!AbtCompositePart methodsFor: 'recovered'!
valueOfSubpartNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) subpartNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) abrValue.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20177838; bytecode file offset 0xa74114"
!AbtCompositePart methodsFor: 'recovered'!
componentNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) noSuchComponent: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) componentNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20177858; bytecode file offset 0xa74114"
!AbtCompositePart methodsFor: 'recovered'!
subpartNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) noSuchSubpart: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) subpartNamed: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017f59c; bytecode file offset 0xa7be58"
!AbtCompositePart methodsFor: 'recovered'!
components
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            components := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201b54b0; bytecode file offset 0xab1d74"
!AbtCompositePart methodsFor: 'recovered'!
subpartAttributeValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) class.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) at: (2).
    recoveredBlock7Value3 := (recoveredBlock7Value0) noSuchAttribute: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (self) subpartAttributeValue: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201bd630; bytecode file offset 0xab9ef4"
!AbtCompositePart methodsFor: 'recovered'!
addDependencyOnVariable: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentNamed: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) signals: (recoveredStack1) of: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'valueChanged'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) abtWhenPrimitive: (recoveredStack1) signal: (recoveredStack2) of: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6004; bytecode file offset 0xaf28c0"
!AbtCompositePart methodsFor: 'recovered'!
variableSubpartValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201f79ec; bytecode file offset 0xaf42b0"
!AbtCompositePart methodsFor: 'recovered'!
subpartAttributeValue: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) class.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value1) at: (1).
    recoveredBlock7Value3 := (recoveredBlock7Value0) noSuchAttribute: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) subpartAttributeValue: (recoveredValue0) ifAbsent: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2021dfd0; bytecode file offset 0xb1a88c"
!AbtCompositePart methodsFor: 'recovered'!
variableSubpartValue: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2022415c; bytecode file offset 0xb20a20"
!AbtCompositePart methodsFor: 'recovered'!
parentPartAboutToBeDestroyed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := abtIsDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280dbeb8Arg1 | 
    | block280dbeb8Value0 block280dbeb8Value1 |
    block280dbeb8Value0 := block280dbeb8Arg1.
    block280dbeb8Value1 := (block280dbeb8Value0) parentPartAboutToBeDestroyed.
    block280dbeb8Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := super parentPartAboutToBeDestroyed.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022901c; bytecode file offset 0xb258dc"
!AbtCompositePart methodsFor: 'recovered'!
recursiveDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super recursiveDo: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := components.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := components.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) recursiveDo: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022a038; bytecode file offset 0xb268f4"
!AbtCompositePart methodsFor: 'recovered'!
componentNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := (recoveredBlock20Value0) value.
    recoveredBlock20Value1
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20295c80; bytecode file offset 0xb92550"
!AbtCompositePart methodsFor: 'recovered'!
parentPartHasBeenDestroyed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := abtIsDestroyed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            abtIsDestroyed := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) primitiveDestroyPart.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280e310cArg1 | 
    | block280e310cValue0 block280e310cValue1 |
    block280e310cValue0 := block280e310cArg1.
    block280e310cValue1 := (block280e310cValue0) parentPartHasBeenDestroyed.
    block280e310cValue1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'destroyedPart'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) signalEvent: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) release.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202996e8; bytecode file offset 0xb95fb0"
!AbtCompositePart methodsFor: 'recovered'!
componentIndex: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) components.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredArg2.
    recoveredBlock28Value1 := (recoveredBlock28Value0) value.
    ^recoveredBlock28Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) keyAtValue: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexAt: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ad014; bytecode file offset 0xba98dc"
!AbtCompositePart methodsFor: 'recovered'!
allComponents
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Value0 recoveredBlock18Block25Value1 recoveredBlock18Block25Value2 |
    recoveredBlock18Block25Value0 := recoveredLocal1.
    recoveredBlock18Block25Value1 := recoveredBlock18Block25Arg1.
    recoveredBlock18Block25Value2 := (recoveredBlock18Block25Value0) add: (recoveredBlock18Block25Value1).
    recoveredBlock18Block25Value2
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) recursiveDo: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202fb94c; bytecode file offset 0xbf8224"
!AbtCompositePart methodsFor: 'recovered'!
destroyPartInternals
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e8f20Arg1 | 
    | block280e8f20Value0 block280e8f20Value1 |
    block280e8f20Value0 := block280e8f20Arg1.
    block280e8f20Value1 := (block280e8f20Value0) parentPartAboutToBeDestroyed.
    block280e8f20Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) primitiveDestroyPart.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := components.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := components.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280e8f44Arg1 | 
    | block280e8f44Value0 block280e8f44Value1 |
    block280e8f44Value0 := block280e8f44Arg1.
    block280e8f44Value1 := (block280e8f44Value0) parentPartHasBeenDestroyed.
    block280e8f44Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'destroyedPart'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) signalEvent: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) release.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20309104; bytecode file offset 0xc059c8"
!AbtCompositePart methodsFor: 'recovered'!
removeSubpartNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtSelfReferenceSymbol.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredArg2.
    recoveredBlock30Value1 := (recoveredBlock30Value0) value.
    ^recoveredBlock30Value1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) removedFromParentPart.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203189d8; bytecode file offset 0xc152a0"
!AbtCompositePart methodsFor: 'recovered'!
removeComponent: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) == (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 |
    recoveredBlock26Value0 := recoveredArg2.
    recoveredBlock26Value1 := (recoveredBlock26Value0) value.
    ^recoveredBlock26Value1
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyAtValue: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock45Value0 |
    recoveredBlock45Value0 := (self) missingKey.
    recoveredBlock45Value0
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeComponentNamed: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033c04c; bytecode file offset 0xc38914"
!AbtCompositePart methodsFor: 'recovered'!
subpartNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := components.
    recoveredBlock20Value1 := [:recoveredBlock20Block28Arg1 | 
    | recoveredBlock20Block28Local1 recoveredBlock20Block28Stack0 recoveredBlock20Block28Stack1 recoveredBlock20Block28Stack2 recoveredBlock20Block28Stack3 recoveredBlock20Block28Stack4 recoveredBlock20Block28Stack5 recoveredBlock20Block28PC recoveredBlock20Block28Step recoveredBlock20Block28Done recoveredBlock20Block28Result |
    recoveredBlock20Block28Stack0 := self.
    recoveredBlock20Block28PC := 34.
    recoveredBlock20Block28Done := false.
    [recoveredBlock20Block28Done not] whileTrue: [
        recoveredBlock20Block28Step := recoveredBlock20Block28PC.
        recoveredBlock20Block28Step = 34 ifTrue: [
            recoveredBlock20Block28Stack1 := nil.
            recoveredBlock20Block28PC := 35.
        ].
        recoveredBlock20Block28Step = 35 ifTrue: [
            recoveredBlock20Block28Stack2 := recoveredBlock20Block28Arg1.
            recoveredBlock20Block28PC := 36.
        ].
        recoveredBlock20Block28Step = 36 ifTrue: [
            recoveredBlock20Block28Stack3 := recoveredArg1.
            recoveredBlock20Block28PC := 39.
        ].
        recoveredBlock20Block28Step = 39 ifTrue: [
            recoveredBlock20Block28Stack4 := [].
            recoveredBlock20Block28PC := 41.
        ].
        recoveredBlock20Block28Step = 41 ifTrue: [
            recoveredBlock20Block28Stack2 := (recoveredBlock20Block28Stack2) subpartNamed: (recoveredBlock20Block28Stack3) ifAbsent: (recoveredBlock20Block28Stack4).
            recoveredBlock20Block28PC := 43.
        ].
        recoveredBlock20Block28Step = 43 ifTrue: [
            recoveredBlock20Block28Stack3 := recoveredBlock20Block28Stack2.
            recoveredBlock20Block28PC := 44.
        ].
        recoveredBlock20Block28Step = 44 ifTrue: [
            recoveredBlock20Block28Local1 := recoveredBlock20Block28Stack3.
            recoveredBlock20Block28PC := 45.
        ].
        recoveredBlock20Block28Step = 45 ifTrue: [
            (recoveredBlock20Block28Stack2 == nil) ifTrue: [recoveredBlock20Block28PC := 51] ifFalse: [recoveredBlock20Block28PC := 48].
        ].
        recoveredBlock20Block28Step = 48 ifTrue: [
            recoveredBlock20Block28PC := 49.
        ].
        recoveredBlock20Block28Step = 49 ifTrue: [
            recoveredBlock20Block28Stack1 := recoveredBlock20Block28Local1.
            recoveredBlock20Block28PC := 50.
        ].
        recoveredBlock20Block28Step = 50 ifTrue: [
            ^recoveredBlock20Block28Stack1
        ].
        recoveredBlock20Block28Step = 51 ifTrue: [
            recoveredBlock20Block28Result := recoveredBlock20Block28Stack1.
            recoveredBlock20Block28Done := true.
        ].
    ].
    recoveredBlock20Block28Result
].
    (recoveredBlock20Value0) do: (recoveredBlock20Value1).
    recoveredBlock20Value2 := recoveredArg2.
    recoveredBlock20Value3 := (recoveredBlock20Value2) value.
    recoveredBlock20Value3
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20365748; bytecode file offset 0xc62018"
!AbtCompositePart methodsFor: 'recovered'!
removeComponentNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtSelfReferenceSymbol.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) | (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock28Value0 recoveredBlock28Value1 |
    recoveredBlock28Value0 := recoveredArg2.
    recoveredBlock28Value1 := (recoveredBlock28Value0) value.
    ^recoveredBlock28Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock49Value0 |
    recoveredBlock49Value0 := (self) missingKey.
    ^recoveredBlock49Value0
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) removedFromParentPart.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2040e700; bytecode file offset 0xd0afcc"
!AbtCompositePart methodsFor: 'recovered'!
subpartAttributeValue: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := components.
    recoveredBlock23Value1 := [:recoveredBlock23Block32Arg1 | 
    | recoveredBlock23Block32Stack0 recoveredBlock23Block32Stack1 recoveredBlock23Block32Stack2 recoveredBlock23Block32Stack3 recoveredBlock23Block32Stack4 recoveredBlock23Block32PC recoveredBlock23Block32Step recoveredBlock23Block32Done recoveredBlock23Block32Result |
    recoveredBlock23Block32Stack0 := self.
    recoveredBlock23Block32PC := 38.
    recoveredBlock23Block32Done := false.
    [recoveredBlock23Block32Done not] whileTrue: [
        recoveredBlock23Block32Step := recoveredBlock23Block32PC.
        recoveredBlock23Block32Step = 38 ifTrue: [
            recoveredBlock23Block32Stack1 := false.
            recoveredBlock23Block32PC := 39.
        ].
        recoveredBlock23Block32Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock23Block32Stack1.
            recoveredBlock23Block32PC := 42.
        ].
        recoveredBlock23Block32Step = 42 ifTrue: [
            recoveredBlock23Block32Stack1 := recoveredBlock23Block32Arg1.
            recoveredBlock23Block32PC := 43.
        ].
        recoveredBlock23Block32Step = 43 ifTrue: [
            recoveredBlock23Block32Stack2 := recoveredArg1.
            recoveredBlock23Block32PC := 46.
        ].
        recoveredBlock23Block32Step = 46 ifTrue: [
            recoveredBlock23Block32Stack3 := [
    recoveredLocal2 := true.
    true
].
            recoveredBlock23Block32PC := 58.
        ].
        recoveredBlock23Block32Step = 58 ifTrue: [
            recoveredBlock23Block32Stack1 := (recoveredBlock23Block32Stack1) subpartAttributeValue: (recoveredBlock23Block32Stack2) ifAbsent: (recoveredBlock23Block32Stack3).
            recoveredBlock23Block32PC := 60.
        ].
        recoveredBlock23Block32Step = 60 ifTrue: [
            recoveredLocal1 := recoveredBlock23Block32Stack1.
            recoveredBlock23Block32PC := 63.
        ].
        recoveredBlock23Block32Step = 63 ifTrue: [
            recoveredBlock23Block32Stack1 := nil.
            recoveredBlock23Block32PC := 64.
        ].
        recoveredBlock23Block32Step = 64 ifTrue: [
            recoveredBlock23Block32Stack2 := recoveredLocal2.
            recoveredBlock23Block32PC := 67.
        ].
        recoveredBlock23Block32Step = 67 ifTrue: [
            (recoveredBlock23Block32Stack2) ifTrue: [recoveredBlock23Block32PC := 75] ifFalse: [recoveredBlock23Block32PC := 70].
        ].
        recoveredBlock23Block32Step = 70 ifTrue: [
            recoveredBlock23Block32PC := 71.
        ].
        recoveredBlock23Block32Step = 71 ifTrue: [
            recoveredBlock23Block32Stack1 := recoveredLocal1.
            recoveredBlock23Block32PC := 74.
        ].
        recoveredBlock23Block32Step = 74 ifTrue: [
            ^recoveredBlock23Block32Stack1
        ].
        recoveredBlock23Block32Step = 75 ifTrue: [
            recoveredBlock23Block32Result := recoveredBlock23Block32Stack1.
            recoveredBlock23Block32Done := true.
        ].
    ].
    recoveredBlock23Block32Result
].
    (recoveredBlock23Value0) do: (recoveredBlock23Value1).
    recoveredBlock23Value2 := recoveredArg2.
    recoveredBlock23Value3 := (recoveredBlock23Value2) value.
    ^recoveredBlock23Value3
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueOfAttributeNamed: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2041f7cc; bytecode file offset 0xd1c098"
!AbtCompositePart methodsFor: 'recovered'!
subpartAttributeValue: recoveredArg1 ifAbsent: recoveredArg2 put: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := components.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := components.
    recoveredBlock23Value1 := [:recoveredBlock23Block32Arg1 | 
    | recoveredBlock23Block32Stack0 recoveredBlock23Block32Stack1 recoveredBlock23Block32Stack2 recoveredBlock23Block32Stack3 recoveredBlock23Block32Stack4 recoveredBlock23Block32Stack5 recoveredBlock23Block32PC recoveredBlock23Block32Step recoveredBlock23Block32Done recoveredBlock23Block32Result |
    recoveredBlock23Block32Stack0 := self.
    recoveredBlock23Block32PC := 38.
    recoveredBlock23Block32Done := false.
    [recoveredBlock23Block32Done not] whileTrue: [
        recoveredBlock23Block32Step := recoveredBlock23Block32PC.
        recoveredBlock23Block32Step = 38 ifTrue: [
            recoveredBlock23Block32Stack1 := false.
            recoveredBlock23Block32PC := 39.
        ].
        recoveredBlock23Block32Step = 39 ifTrue: [
            recoveredLocal2 := recoveredBlock23Block32Stack1.
            recoveredBlock23Block32PC := 42.
        ].
        recoveredBlock23Block32Step = 42 ifTrue: [
            recoveredBlock23Block32Stack1 := recoveredBlock23Block32Arg1.
            recoveredBlock23Block32PC := 43.
        ].
        recoveredBlock23Block32Step = 43 ifTrue: [
            recoveredBlock23Block32Stack2 := recoveredArg1.
            recoveredBlock23Block32PC := 46.
        ].
        recoveredBlock23Block32Step = 46 ifTrue: [
            recoveredBlock23Block32Stack3 := [
    recoveredLocal2 := true.
    true
].
            recoveredBlock23Block32PC := 58.
        ].
        recoveredBlock23Block32Step = 58 ifTrue: [
            recoveredBlock23Block32Stack4 := recoveredArg3.
            recoveredBlock23Block32PC := 61.
        ].
        recoveredBlock23Block32Step = 61 ifTrue: [
            recoveredBlock23Block32Stack1 := (recoveredBlock23Block32Stack1) subpartAttributeValue: (recoveredBlock23Block32Stack2) ifAbsent: (recoveredBlock23Block32Stack3) put: (recoveredBlock23Block32Stack4).
            recoveredBlock23Block32PC := 64.
        ].
        recoveredBlock23Block32Step = 64 ifTrue: [
            recoveredLocal1 := recoveredBlock23Block32Stack1.
            recoveredBlock23Block32PC := 67.
        ].
        recoveredBlock23Block32Step = 67 ifTrue: [
            recoveredBlock23Block32Stack1 := nil.
            recoveredBlock23Block32PC := 68.
        ].
        recoveredBlock23Block32Step = 68 ifTrue: [
            recoveredBlock23Block32Stack2 := recoveredLocal2.
            recoveredBlock23Block32PC := 71.
        ].
        recoveredBlock23Block32Step = 71 ifTrue: [
            (recoveredBlock23Block32Stack2) ifTrue: [recoveredBlock23Block32PC := 79] ifFalse: [recoveredBlock23Block32PC := 74].
        ].
        recoveredBlock23Block32Step = 74 ifTrue: [
            recoveredBlock23Block32PC := 75.
        ].
        recoveredBlock23Block32Step = 75 ifTrue: [
            recoveredBlock23Block32Stack1 := recoveredLocal1.
            recoveredBlock23Block32PC := 78.
        ].
        recoveredBlock23Block32Step = 78 ifTrue: [
            ^recoveredBlock23Block32Stack1
        ].
        recoveredBlock23Block32Step = 79 ifTrue: [
            recoveredBlock23Block32Result := recoveredBlock23Block32Stack1.
            recoveredBlock23Block32Done := true.
        ].
    ].
    recoveredBlock23Block32Result
].
    (recoveredBlock23Value0) do: (recoveredBlock23Value1).
    recoveredBlock23Value2 := recoveredArg2.
    recoveredBlock23Value3 := (recoveredBlock23Value2) value.
    ^recoveredBlock23Value3
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueOfAttributeNamed: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

