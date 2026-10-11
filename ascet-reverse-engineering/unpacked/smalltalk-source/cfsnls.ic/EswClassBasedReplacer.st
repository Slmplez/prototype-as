"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20001aa8; bytecode file offset 0x24d00"
!EswClassBasedReplacer methodsFor: 'recovered'!
classesThatCantBeReplaced
    | recoveredValue0 |
    recoveredValue0 := classesThatCantBeReplaced.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20001b1c; bytecode file offset 0x24dac"
!EswClassBasedReplacer methodsFor: 'recovered'!
classBasedReplacementTable
    | recoveredValue0 |
    recoveredValue0 := classBasedReplacementTable.
    ^recoveredValue0
! !

"cfsnls.ic method 0x20002900; bytecode file offset 0x25b48"
!EswClassBasedReplacer methodsFor: 'recovered'!
initializeClassBasedReplacementTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := IdentityDictionary.
    recoveredValue1 := (recoveredValue0) new.
    classBasedReplacementTable := recoveredValue1.
    ^self
! !

"cfsnls.ic method 0x20002d44; bytecode file offset 0x25f9c"
!EswClassBasedReplacer methodsFor: 'recovered'!
definesClassBasedReplacement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := swapper.
    recoveredValue1 := (recoveredValue0) swappingStrategy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) definesClassBasedReplacementFor: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20002d54; bytecode file offset 0x25f9c"
!EswClassBasedReplacer methodsFor: 'recovered'!
definesLoadingReplacement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := swapper.
    recoveredValue1 := (recoveredValue0) swappingStrategy.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) definesLoadingReplacementFor: (recoveredValue2).
    ^recoveredValue3
! !

"cfsnls.ic method 0x20003720; bytecode file offset 0x26998"
!EswClassBasedReplacer methodsFor: 'recovered'!
restoreOriginalReplacement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) swapper.
    recoveredValue1 := (recoveredValue0) classEncoder.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) setToOriginalClassBasedReplacement: (recoveredValue2).
    ^self
! !

"cfsnls.ic method 0x20003748; bytecode file offset 0x26998"
!EswClassBasedReplacer methodsFor: 'recovered'!
makeHaveReplacement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) swapper.
    recoveredValue1 := (recoveredValue0) classEncoder.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) makeHaveClassBasedReplacement: (recoveredValue2).
    ^self
! !

"cfsnls.ic method 0x20004530; bytecode file offset 0x27780"
!EswClassBasedReplacer methodsFor: 'recovered'!
initialize
    super initialize.
    (self) initializeClassesThatCantBeReplaced.
    ^self
! !

"cfsnls.ic method 0x2000583c; bytecode file offset 0x28a7c"
!EswClassBasedReplacer methodsFor: 'recovered'!
optimizeRepresentation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := classBasedReplacementTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := classBasedReplacementTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            classBasedReplacementTable := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20006c6c; bytecode file offset 0x29eac"
!EswClassBasedReplacer methodsFor: 'recovered'!
removeReplacementForInstancesOf: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := classBasedReplacementTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := classBasedReplacementTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) restoreOriginalReplacement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) optimizeRepresentation.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20007ad4; bytecode file offset 0x2ad1c"
!EswClassBasedReplacer methodsFor: 'recovered'!
replaceInstancesOf: recoveredArg1 using: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classesThatCantBeReplaced.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) classBasedReplacementTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) initializeClassBasedReplacementTable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) classBasedReplacementTable.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) makeHaveReplacement: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x2000c51c; bytecode file offset 0x2f780"
!EswClassBasedReplacer methodsFor: 'recovered'!
initializeClassesThatCantBeReplaced
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (10).
    classesThatCantBeReplaced := recoveredValue1.
    recoveredValue2 := classesThatCantBeReplaced.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := EswPrivateString.
    (recoveredValue3) at: (1) put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := EswRootArray.
    (recoveredValue5) at: (2) put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := EswInstVarNamesArray.
    (recoveredValue7) at: (3) put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := EswIdentityUnlinkedObject.
    (recoveredValue9) at: (4) put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := Character.
    (recoveredValue11) at: (5) put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := False.
    (recoveredValue13) at: (6) put: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := SmallInteger.
    (recoveredValue15) at: (7) put: (recoveredValue16).
    recoveredValue17 := recoveredValue2.
    recoveredValue18 := Symbol.
    (recoveredValue17) at: (8) put: (recoveredValue18).
    recoveredValue19 := recoveredValue2.
    recoveredValue20 := True.
    (recoveredValue19) at: (9) put: (recoveredValue20).
    recoveredValue21 := UndefinedObject.
    (recoveredValue2) at: (10) put: (recoveredValue21).
    ^self
! !

"cfsnls.ic method 0x2000e76c; bytecode file offset 0x319c4"
!EswClassBasedReplacer methodsFor: 'recovered'!
dumpingReplacementFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := classBasedReplacementTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := swapper.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) swappingStrategy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) dumpingReplacementFor: (recoveredStack2) for: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := classBasedReplacementTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) eswBasicClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := swapper.
    recoveredBlock26Value1 := (recoveredBlock26Value0) swappingStrategy.
    recoveredBlock26Value2 := recoveredArg1.
    recoveredBlock26Value3 := (recoveredBlock26Value1) dumpingReplacementFor: (recoveredBlock26Value2) for: (self).
    ^recoveredBlock26Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) eswIsBlock.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredLocal2.
    recoveredBlock66Value1 := recoveredArg1.
    recoveredBlock66Value2 := (recoveredBlock66Value0) value: (recoveredBlock66Value1).
    recoveredBlock66Value3 := recoveredBlock66Value2.
    recoveredLocal1 := recoveredBlock66Value3.
    recoveredBlock66Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 |
    recoveredBlock85Value0 := (self) swapper.
    recoveredBlock85Value1 := ErrorInReplacementBlock.
    recoveredBlock85Value2 := recoveredLocal2.
    recoveredBlock85Value3 := (recoveredBlock85Value0) generateError: (recoveredBlock85Value1) forObject: (recoveredBlock85Value2).
    ^recoveredBlock85Value3
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) ifCurtailed: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

