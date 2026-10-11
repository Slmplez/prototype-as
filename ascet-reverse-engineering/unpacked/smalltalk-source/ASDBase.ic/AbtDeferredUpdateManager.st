"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004faac; bytecode file offset 0x94d048"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
cancel
    (self) createNewOperation.
    ^self
! !

"ASDBase.ic method 0x2006d47c; bytecode file offset 0x96a390"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
target
    | recoveredValue0 |
    recoveredValue0 := target.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006db70; bytecode file offset 0x96a9dc"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
stack
    | recoveredValue0 |
    recoveredValue0 := stack.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20097de4; bytecode file offset 0x995850"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
executedOperation: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stack.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) executedOperation: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009d21c; bytecode file offset 0x999ad8"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
selfAttributeValue
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := value.
    recoveredValue1 := value.
    recoveredValue2 := (recoveredValue1) abtSelfReferenceSymbol.
    recoveredValue3 := (recoveredValue0) valueOfAttributeNamed: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b1a08; bytecode file offset 0x9ae2cc"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
calculatePrivateInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := target.
    recoveredValue1 := (recoveredValue0) abtMergedInterfaceSpec.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) mergedInterfaceSpec.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200b53ac; bytecode file offset 0x9b1ce4"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
undo
    | recoveredValue0 |
    recoveredValue0 := (self) stack.
    (recoveredValue0) undo.
    (self) createNewOperation.
    ^self
! !

"ASDBase.ic method 0x200b5410; bytecode file offset 0x9b1ce4"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
redo
    | recoveredValue0 |
    recoveredValue0 := (self) stack.
    (recoveredValue0) redo.
    (self) createNewOperation.
    ^self
! !

"ASDBase.ic method 0x200bc67c; bytecode file offset 0x9b8f3c"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
selfAttributeValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (self) value.
    recoveredValue2 := (recoveredValue1) abtSelfReferenceSymbol.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) valueOfAttributeNamed: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c4630; bytecode file offset 0x9c11bc"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
stack: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stack := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d3388; bytecode file offset 0x9cfc4c"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
createNewOperation
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) deferredUpdateOperation.
    recoveredValue2 := (recoveredValue1) stackHolder: (self).
    (self) value: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e0e80; bytecode file offset 0x9dd774"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
resetManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtUndoStack.
    recoveredValue1 := (recoveredValue0) new.
    (self) stack: (recoveredValue1).
    (self) createNewOperation.
    ^self
! !

"ASDBase.ic method 0x200eaa30; bytecode file offset 0x9e72f4"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
attributeChanged: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) value.
    recoveredValue1 := (self) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) abtFeatureNamed: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) changeSymbol.
    (recoveredValue0) signalEvent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012dc00; bytecode file offset 0xa2a4c4"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
targetChanged
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) createNewOperation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'targetChanged'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014ffec; bytecode file offset 0xa4c8b8"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
apply
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) target.
    (recoveredValue0) abrRemoveInterestFrom: (self).
    recoveredValue1 := (self) value.
    (recoveredValue1) execute.
    (self) addDependenciesToTarget.
    (self) createNewOperation.
    ^self
! !

"ASDBase.ic method 0x2015d480; bytecode file offset 0xa59d40"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
release
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) abrRemoveInterestFrom: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            super release.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d79c0; bytecode file offset 0xad4294"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
deferredUpdateOperation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeferredUpdateOp.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) deferredUpdateOperationClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) target: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := super deferredUpdateOperation.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028da20; bytecode file offset 0xb8a2ec"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
target: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := target.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) abrRemoveInterestFrom: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            target := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) resetManager.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) addDependenciesToTarget.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'targetChanged'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034a6d8; bytecode file offset 0xc46fc8"
!AbtDeferredUpdateManager methodsFor: 'recovered'!
addDependenciesToTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) target.
    recoveredValue1 := (recoveredValue0) abtAttributes.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 |
    recoveredBlock6Value0 := (self) target.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := DirectedMessage.
    recoveredBlock6Value3 := (recoveredBlock6Value2) new.
    recoveredBlock6Value4 := recoveredBlock6Value3.
    (recoveredBlock6Value4) receiver: (self).
    recoveredBlock6Value5 := recoveredBlock6Value3.
    (recoveredBlock6Value5) selector: ('attributeChanged:').
    recoveredBlock6Value6 := Array.
    recoveredBlock6Value7 := recoveredBlock6Arg1.
    recoveredBlock6Value8 := (recoveredBlock6Value6) with: (recoveredBlock6Value7).
    recoveredBlock6Value9 := (recoveredBlock6Value3) arguments: (recoveredBlock6Value8).
    recoveredBlock6Value10 := (recoveredBlock6Value0) abtWhenChanged: (recoveredBlock6Value1) perform: (recoveredBlock6Value9).
    recoveredBlock6Value10
].
    (recoveredValue1) keysDo: (recoveredValue2).
    recoveredValue3 := (self) target.
    recoveredValue4 := (self) target.
    recoveredValue5 := (recoveredValue4) abtSelfReferenceSymbol.
    recoveredValue6 := DirectedMessage.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := recoveredValue7.
    (recoveredValue8) receiver: (self).
    recoveredValue9 := recoveredValue7.
    (recoveredValue9) selector: ('targetChanged').
    recoveredValue10 := (recoveredValue7) arguments: (#()).
    (recoveredValue3) abtWhenChanged: (recoveredValue5) perform: (recoveredValue10).
    ^self
! !

