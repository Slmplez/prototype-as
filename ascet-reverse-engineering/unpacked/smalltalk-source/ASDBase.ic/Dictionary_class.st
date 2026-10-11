"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200017e0; bytecode file offset 0x8ffcfc"
!Dictionary class methodsFor: 'recovered'!
_PRAGMA_IS_Dictionary
    ^self
! !

"ASDBase.ic method 0x20012de0; bytecode file offset 0x912098"
!Dictionary class methodsFor: 'recovered'!
recursiveDeferredUpdateOperationClass
    | recoveredValue0 |
    recoveredValue0 := AbtDictionaryDeferredUpdateOperation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001308c; bytecode file offset 0x912098"
!Dictionary class methodsFor: 'recovered'!
deferredUpdateOperationClass
    | recoveredValue0 |
    recoveredValue0 := AbtDictionaryDeferredUpdateOperation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20114744; bytecode file offset 0xa10ffc"
!Dictionary class methodsFor: 'recovered'!
emBehaviorId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 23.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20198ed8; bytecode file offset 0xa957a4"
!Dictionary class methodsFor: 'recovered'!
ObjectFilerMapping
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('contents') put: ('elements').
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) at: ('elementCount') put: ('elementCount').
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202bbcd8; bytecode file offset 0xbbfa78"
!Dictionary class methodsFor: 'recovered'!
IS_at_
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_at_.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_at_.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtActionSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := AbtParameterSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := Object.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack6) parameterType: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := 'aKey'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterName: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack4) add: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) parameters: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'at:'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            IS_at_ := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202bcd7c; bytecode file offset 0xbbfa78"
!Dictionary class methodsFor: 'recovered'!
IS_includes_
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_includes_.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_includes_.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtActionSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := AbtParameterSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := Object.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack6) parameterType: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := 'anObject'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterName: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack4) add: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) parameters: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'includes:'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            IS_includes_ := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202befb4; bytecode file offset 0xbbfa78"
!Dictionary class methodsFor: 'recovered'!
IS_removeKey_
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_removeKey_.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_removeKey_.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtActionSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := AbtParameterSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := Object.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack6) parameterType: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := 'aKey'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterName: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack4) add: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) parameters: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'abrRemoveKey:'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            IS_removeKey_ := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202c0670; bytecode file offset 0xbbfa78"
!Dictionary class methodsFor: 'recovered'!
IS_add_
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_add_.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_add_.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtActionSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := AbtParameterSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := Association.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack6) parameterType: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := 'anAssociation'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterName: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack4) add: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) parameters: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'abrAdd:'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            IS_add_ := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20339b8c; bytecode file offset 0xc364f8"
!Dictionary class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtInterfaceSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'add:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_add_.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'at:'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_at_.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'at:put:'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_at_put_.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 'removeKey:'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_removeKey_.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'includes:'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := (recoveredStack3) IS_includes_.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) featureNamed: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            IS_instanceInterfaceSpec := recoveredStack2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20342948; bytecode file offset 0xc3f234"
!Dictionary class methodsFor: 'recovered'!
IS_at_put_
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_at_put_.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_at_put_.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtActionSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := AbtParameterSpec.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := Object.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack6) parameterType: (recoveredStack7).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack6 := 'aKey'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterName: (recoveredStack6).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack4) add: (recoveredStack5).
            recoveredStack4 := recoveredStack3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := AbtParameterSpec.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := (recoveredStack5) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := Object.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack6) parameterType: (recoveredStack7).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := 'anObject'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) parameterName: (recoveredStack6).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack4) add: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) parameters: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'abrAt:put:'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            IS_at_put_ := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203724e4; bytecode file offset 0xc6edc4"
!Dictionary class methodsFor: 'recovered'!
deferredUpdateOpFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('at:' 'at:put:' 'removeKey:' 'keys' 'values').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 16].
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
            recoveredStack1 := super deferredUpdateOpFor: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := AbtCollectionAtPut.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := AbtDictionaryRemoveKey.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := AbtCollectionNonUpdateOp.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

