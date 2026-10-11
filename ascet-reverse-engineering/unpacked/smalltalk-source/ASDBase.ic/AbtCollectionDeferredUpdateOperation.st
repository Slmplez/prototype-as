"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000b48; bytecode file offset 0x8ffcfc"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
deferredUpdateOperation
    ^self
! !

"ASDBase.ic method 0x20000fd0; bytecode file offset 0x8ffcfc"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abtAsListItemCollection
    ^self
! !

"ASDBase.ic method 0x20002b58; bytecode file offset 0x8ffcfc"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
recursiveDeferredUpdateOperation
    ^self
! !

"ASDBase.ic method 0x2000a430; bytecode file offset 0x908be4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
privateInterfaceSpec
    | recoveredValue0 |
    recoveredValue0 := (self) shadowInterfaceSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20041d70; bytecode file offset 0x93e6d0"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abtActualElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := (recoveredValue0) abtActualElements.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041ddc; bytecode file offset 0x93e6d0"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049084; bytecode file offset 0x945938"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
primitiveCancel
    collectionOperations := nil.
    ^self
! !

"ASDBase.ic method 0x2005de48; bytecode file offset 0x95a704"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abrConverter
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) untitledConverter.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006c77c; bytecode file offset 0x9692b0"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abrDereferenced
    | recoveredValue0 |
    recoveredValue0 := shadowCollection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc38; bytecode file offset 0x96a9dc"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
defaultValuesSource
    | recoveredValue0 |
    recoveredValue0 := defaultValuesSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076dcc; bytecode file offset 0x9757c8"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
isDeferredUpdateOp
    ^true
! !

"ASDBase.ic method 0x200823d4; bytecode file offset 0x97ecd4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
reject: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) reject: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200823ec; bytecode file offset 0x97ecd4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
collect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20092eb0; bytecode file offset 0x98f7b0"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aca3c; bytecode file offset 0x9a92f4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
detect: recoveredArg1 ifNone: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := shadowCollection.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aef54; bytecode file offset 0x9ab80c"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abtPerformActionNamed: recoveredArg1 ifAbsent: recoveredArg2 arguments: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) performCollectionAction: (recoveredValue0) arguments: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c867c; bytecode file offset 0x9c4f88"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abtPerformActionNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) performCollectionAction: (recoveredValue0) arguments: (#()) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200e8384; bytecode file offset 0x9e4c4c"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
attributeChanged: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) shadowInterfaceSpec.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue0) interfaceSpecFeatureNamed: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) changeSymbol.
    (self) signalEvent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010d0f0; bytecode file offset 0xa09b08"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abrAdd: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [].
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) abtPerformActionNamed: ('add:') ifAbsent: (recoveredValue0) arguments: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010d1ec; bytecode file offset 0xa09b08"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [].
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) abtPerformActionNamed: ('add:') ifAbsent: (recoveredValue0) arguments: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010d208; bytecode file offset 0xa09b08"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
includes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [].
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    recoveredValue4 := (self) abtPerformActionNamed: ('includes:') ifAbsent: (recoveredValue0) arguments: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20131204; bytecode file offset 0xa2dabc"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
isDeferredOperationFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := shadowCollection.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013cdfc; bytecode file offset 0xa396b8"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
isExecutable
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
            recoveredStack2 := super isExecutable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := shadowCollection.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015d434; bytecode file offset 0xa59cec"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
shadowInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shadowInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) calculateShadowInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            shadowInterfaceSpec := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := shadowInterfaceSpec.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20164ce8; bytecode file offset 0xa615a4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
abtIsPublicInterfaceSameAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20174f38; bytecode file offset 0xa717f4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
defaultValuesSource: recoveredArg1
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
            defaultValuesSource := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtClone.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) target: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c8c20; bytecode file offset 0xbc54f4"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
calculateShadowInterfaceSpec
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := target.
    recoveredValue3 := (recoveredValue2) features.
    recoveredValue4 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := recoveredBlock13Arg2.
    recoveredBlock13Value3 := (recoveredBlock13Value0) interfaceSpecFeatureNamed: (recoveredBlock13Value1) put: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue3) keysAndValuesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := target.
    recoveredValue7 := (recoveredValue6) abtSelfReferenceSymbol.
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) selfReferenceAttributeSpec.
    (recoveredValue5) interfaceSpecFeatureNamed: (recoveredValue7) put: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    ^recoveredValue10
! !

"ASDBase.ic method 0x202e8f40; bytecode file offset 0xbe581c"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
performCollectionAction: recoveredArg1 arguments: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shadowCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) deferredUpdateOpFor: (recoveredStack2) arguments: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := shadowCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) applyToShadow: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUpdate.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := collectionOperations.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) shadowInterfaceSpec.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := target.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) abtSelfReferenceSymbol.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceSpecFeatureNamed: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) changeSymbol.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) signalEvent: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ee880; bytecode file offset 0xbeb144"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
targetCopy
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := target.
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
            recoveredStack1 := target.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtClone.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExecutable.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := collectionOperations.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := collectionOperations.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredLocal1.
    recoveredBlock34Value2 := (recoveredBlock34Value0) applyToReal: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20314d74; bytecode file offset 0xc11650"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
target: recoveredArg1
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
            super target: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            collectionOperations := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := target.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) deferredUpdateCopy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            shadowCollection := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := shadowCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isDeferredUpdateOp.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 42] ifFalse: [recoveredBlock27PC := 47].
        ].
        recoveredBlock27Step = 42 ifTrue: [
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 44.
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27Stack2 := self.
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) parentOp: (recoveredBlock27Stack2).
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'collection'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032a9d0; bytecode file offset 0xc272ac"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
primitiveRedo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shadowCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ec5d4Arg1 | 
    | block280ec5d4Stack0 block280ec5d4Stack1 block280ec5d4Stack2 block280ec5d4Stack3 block280ec5d4PC block280ec5d4Step block280ec5d4Done block280ec5d4Result |
    block280ec5d4Stack0 := self.
    block280ec5d4PC := 4.
    block280ec5d4Done := false.
    [block280ec5d4Done not] whileTrue: [
        block280ec5d4Step := block280ec5d4PC.
        block280ec5d4Step = 4 ifTrue: [
            block280ec5d4Stack1 := nil.
            block280ec5d4PC := 5.
        ].
        block280ec5d4Step = 5 ifTrue: [
            block280ec5d4Stack2 := block280ec5d4Arg1.
            block280ec5d4PC := 6.
        ].
        block280ec5d4Step = 6 ifTrue: [
            block280ec5d4Stack2 := (block280ec5d4Stack2) isOperation.
            block280ec5d4PC := 7.
        ].
        block280ec5d4Step = 7 ifTrue: [
            (block280ec5d4Stack2) ifTrue: [block280ec5d4PC := 10] ifFalse: [block280ec5d4PC := 13].
        ].
        block280ec5d4Step = 10 ifTrue: [
            block280ec5d4PC := 11.
        ].
        block280ec5d4Step = 11 ifTrue: [
            block280ec5d4Stack1 := block280ec5d4Arg1.
            block280ec5d4PC := 12.
        ].
        block280ec5d4Step = 12 ifTrue: [
            block280ec5d4Stack1 := (block280ec5d4Stack1) redo.
            block280ec5d4PC := 13.
        ].
        block280ec5d4Step = 13 ifTrue: [
            block280ec5d4Result := block280ec5d4Stack1.
            block280ec5d4Done := true.
        ].
    ].
    block280ec5d4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := collectionOperations.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredBlock26Value0.
    recoveredBlock26Value2 := target.
    (recoveredBlock26Value1) redoToReal: (recoveredBlock26Value2).
    recoveredBlock26Value3 := shadowCollection.
    recoveredBlock26Value4 := (recoveredBlock26Value0) redoToShadow: (recoveredBlock26Value3).
    recoveredBlock26Value4
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtSelfReferenceSymbol.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'IS_self'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) signalIn: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203332cc; bytecode file offset 0xc2fba8"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
primitiveExecute
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shadowCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ecff4Arg1 | 
    | block280ecff4Stack0 block280ecff4Stack1 block280ecff4Stack2 block280ecff4Stack3 block280ecff4PC block280ecff4Step block280ecff4Done block280ecff4Result |
    block280ecff4Stack0 := self.
    block280ecff4PC := 4.
    block280ecff4Done := false.
    [block280ecff4Done not] whileTrue: [
        block280ecff4Step := block280ecff4PC.
        block280ecff4Step = 4 ifTrue: [
            block280ecff4Stack1 := nil.
            block280ecff4PC := 5.
        ].
        block280ecff4Step = 5 ifTrue: [
            block280ecff4Stack2 := block280ecff4Arg1.
            block280ecff4PC := 6.
        ].
        block280ecff4Step = 6 ifTrue: [
            block280ecff4Stack2 := (block280ecff4Stack2) isOperation.
            block280ecff4PC := 7.
        ].
        block280ecff4Step = 7 ifTrue: [
            (block280ecff4Stack2) ifTrue: [block280ecff4PC := 10] ifFalse: [block280ecff4PC := 19].
        ].
        block280ecff4Step = 10 ifTrue: [
            block280ecff4Stack2 := block280ecff4Arg1.
            block280ecff4PC := 11.
        ].
        block280ecff4Step = 11 ifTrue: [
            block280ecff4Stack2 := (block280ecff4Stack2) isExecutable.
            block280ecff4PC := 12.
        ].
        block280ecff4Step = 12 ifTrue: [
            (block280ecff4Stack2) ifTrue: [block280ecff4PC := 16] ifFalse: [block280ecff4PC := 19].
        ].
        block280ecff4Step = 16 ifTrue: [
            block280ecff4PC := 17.
        ].
        block280ecff4Step = 17 ifTrue: [
            block280ecff4Stack1 := block280ecff4Arg1.
            block280ecff4PC := 18.
        ].
        block280ecff4Step = 18 ifTrue: [
            block280ecff4Stack1 := (block280ecff4Stack1) execute.
            block280ecff4PC := 19.
        ].
        block280ecff4Step = 19 ifTrue: [
            block280ecff4Result := block280ecff4Stack1.
            block280ecff4Done := true.
        ].
    ].
    block280ecff4Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := collectionOperations.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := target.
    recoveredBlock32Value2 := (recoveredBlock32Value0) applyToReal: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtSelfReferenceSymbol.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'IS_self'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) signalIn: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203592c8; bytecode file offset 0xc55ba8"
!AbtCollectionDeferredUpdateOperation methodsFor: 'recovered'!
primitiveUndo
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := shadowCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280efeecArg1 | 
    | block280efeecStack0 block280efeecStack1 block280efeecStack2 block280efeecStack3 block280efeecPC block280efeecStep block280efeecDone block280efeecResult |
    block280efeecStack0 := self.
    block280efeecPC := 4.
    block280efeecDone := false.
    [block280efeecDone not] whileTrue: [
        block280efeecStep := block280efeecPC.
        block280efeecStep = 4 ifTrue: [
            block280efeecStack1 := nil.
            block280efeecPC := 5.
        ].
        block280efeecStep = 5 ifTrue: [
            block280efeecStack2 := block280efeecArg1.
            block280efeecPC := 6.
        ].
        block280efeecStep = 6 ifTrue: [
            block280efeecStack2 := (block280efeecStack2) isOperation.
            block280efeecPC := 7.
        ].
        block280efeecStep = 7 ifTrue: [
            (block280efeecStack2) ifTrue: [block280efeecPC := 10] ifFalse: [block280efeecPC := 19].
        ].
        block280efeecStep = 10 ifTrue: [
            block280efeecStack2 := block280efeecArg1.
            block280efeecPC := 11.
        ].
        block280efeecStep = 11 ifTrue: [
            block280efeecStack2 := (block280efeecStack2) isUndoable.
            block280efeecPC := 12.
        ].
        block280efeecStep = 12 ifTrue: [
            (block280efeecStack2) ifTrue: [block280efeecPC := 16] ifFalse: [block280efeecPC := 19].
        ].
        block280efeecStep = 16 ifTrue: [
            block280efeecPC := 17.
        ].
        block280efeecStep = 17 ifTrue: [
            block280efeecStack1 := block280efeecArg1.
            block280efeecPC := 18.
        ].
        block280efeecStep = 18 ifTrue: [
            block280efeecStack1 := (block280efeecStack1) undo.
            block280efeecPC := 19.
        ].
        block280efeecStep = 19 ifTrue: [
            block280efeecResult := block280efeecStack1.
            block280efeecDone := true.
        ].
    ].
    block280efeecResult
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := collectionOperations.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := recoveredBlock32Value0.
    recoveredBlock32Value2 := target.
    (recoveredBlock32Value1) undoToReal: (recoveredBlock32Value2).
    recoveredBlock32Value3 := shadowCollection.
    recoveredBlock32Value4 := (recoveredBlock32Value0) undoToShadow: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtSelfReferenceSymbol.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := 'IS_self'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtFeatureNamed: (recoveredStack2) selector: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := target.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) signalIn: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

