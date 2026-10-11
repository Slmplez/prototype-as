"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x200004a0; bytecode file offset 0x15af4"
!EsVariableWithBinding methodsFor: 'recovered'!
defined
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"parse.ic method 0x200004c0; bytecode file offset 0x15b54"
!EsVariableWithBinding methodsFor: 'recovered'!
isValidStoreTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) isValidStoreTarget.
    ^recoveredValue1
! !

"parse.ic method 0x200004d8; bytecode file offset 0x15b54"
!EsVariableWithBinding methodsFor: 'recovered'!
magicValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"parse.ic method 0x200004e4; bytecode file offset 0x15b54"
!EsVariableWithBinding methodsFor: 'recovered'!
instVarIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"parse.ic method 0x200004fc; bytecode file offset 0x15b54"
!EsVariableWithBinding methodsFor: 'recovered'!
local
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"parse.ic method 0x20000ab0; bytecode file offset 0x1614c"
!EsVariableWithBinding methodsFor: 'recovered'!
binding
    | recoveredValue0 |
    recoveredValue0 := binding.
    ^recoveredValue0
! !

"parse.ic method 0x20000b2c; bytecode file offset 0x16190"
!EsVariableWithBinding methodsFor: 'recovered'!
sourceClass
    | recoveredValue0 |
    recoveredValue0 := sourceClass.
    ^recoveredValue0
! !

"parse.ic method 0x20000d04; bytecode file offset 0x163a0"
!EsVariableWithBinding methodsFor: 'recovered'!
isScopedVariable
    ^false
! !

"parse.ic method 0x20001304; bytecode file offset 0x1695c"
!EsVariableWithBinding methodsFor: 'recovered'!
valueOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := binding.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) valueOn: (recoveredValue1).
    ^self
! !

"parse.ic method 0x2000131c; bytecode file offset 0x16974"
!EsVariableWithBinding methodsFor: 'recovered'!
isReferenceTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) value.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) = (recoveredValue2).
    ^recoveredValue3
! !

"parse.ic method 0x2000150c; bytecode file offset 0x16ba8"
!EsVariableWithBinding methodsFor: 'recovered'!
isLocalReference
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) == ('LOCAL').
    ^recoveredValue2
! !

"parse.ic method 0x2000151c; bytecode file offset 0x16ba8"
!EsVariableWithBinding methodsFor: 'recovered'!
isMagicFalse
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) == ('MAGICFALSE').
    ^recoveredValue2
! !

"parse.ic method 0x2000152c; bytecode file offset 0x16ba8"
!EsVariableWithBinding methodsFor: 'recovered'!
isMagicTrue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) == ('MAGICTRUE').
    ^recoveredValue2
! !

"parse.ic method 0x2000153c; bytecode file offset 0x16ba8"
!EsVariableWithBinding methodsFor: 'recovered'!
isMagicNil
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) == ('MAGICNIL').
    ^recoveredValue2
! !

"parse.ic method 0x2000154c; bytecode file offset 0x16ba8"
!EsVariableWithBinding methodsFor: 'recovered'!
isInstVar
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := binding.
    recoveredValue1 := (recoveredValue0) type.
    recoveredValue2 := (recoveredValue1) == ('INSTVAR').
    ^recoveredValue2
! !

"parse.ic method 0x20001774; bytecode file offset 0x16dcc"
!EsVariableWithBinding methodsFor: 'recovered'!
storeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := binding.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) storeOn: (recoveredValue1) valueRequired: (recoveredValue2).
    ^self
! !

"parse.ic method 0x20001b18; bytecode file offset 0x1716c"
!EsVariableWithBinding methodsFor: 'recovered'!
binding: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    binding := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001b2c; bytecode file offset 0x17198"
!EsVariableWithBinding methodsFor: 'recovered'!
sourceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceClass := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001c4c; bytecode file offset 0x172a4"
!EsVariableWithBinding methodsFor: 'recovered'!
resolveNamesIn: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) resolveVariable: (self) in: (recoveredValue1) forStore: (false).
    ^self
! !

"parse.ic method 0x20002bd4; bytecode file offset 0x18238"
!EsVariableWithBinding methodsFor: 'recovered'!
receiverType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := binding.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'MAGICSUPER'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'super'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'normal'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20002c24; bytecode file offset 0x18280"
!EsVariableWithBinding methodsFor: 'recovered'!
isMagicSuper
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
            recoveredStack2 := binding.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := binding.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'MAGICSUPER'.
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

"parse.ic method 0x20002c48; bytecode file offset 0x182a8"
!EsVariableWithBinding methodsFor: 'recovered'!
isMagicSelf
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
            recoveredStack2 := (recoveredStack2) binding.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := binding.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'MAGICSELF'.
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

"parse.ic method 0x200030a8; bytecode file offset 0x1870c"
!EsVariableWithBinding methodsFor: 'recovered'!
referencesAnyOf: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := binding.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'LOCAL'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := binding.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200036fc; bytecode file offset 0x18d5c"
!EsVariableWithBinding methodsFor: 'recovered'!
isOptimizedBoolean
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := binding.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'MAGICFALSE'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'MAGICTRUE'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004540; bytecode file offset 0x19bbc"
!EsVariableWithBinding methodsFor: 'recovered'!
referencesSelf
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := binding.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'INSTVAR'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'MAGICSELF'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'MAGICSUPER'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004558; bytecode file offset 0x19bbc"
!EsVariableWithBinding methodsFor: 'recovered'!
isMagic
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := binding.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) type.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'MAGICNIL'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'MAGICTRUE'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'MAGICFALSE'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200048a8; bytecode file offset 0x19f0c"
!EsVariableWithBinding methodsFor: 'recovered'!
asObject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := binding.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 'MAGICNIL'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'MAGICTRUE'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'MAGICFALSE'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

