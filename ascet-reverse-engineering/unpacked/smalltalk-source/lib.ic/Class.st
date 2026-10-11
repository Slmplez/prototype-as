"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000000; bytecode file offset 0x3c0a8"
!Class methodsFor: 'recovered'!
residentClass
    ^self
! !

"lib.ic method 0x20000080; bytecode file offset 0x3c0a8"
!Class methodsFor: 'recovered'!
initializeAfterLoad
    ^self
! !

"lib.ic method 0x2000023c; bytecode file offset 0x3c264"
!Class methodsFor: 'recovered'!
mustCompileMethodFirst: recoveredArg1
    ^false
! !

"lib.ic method 0x20000b58; bytecode file offset 0x3cba0"
!Class methodsFor: 'recovered'!
definitionRecord
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) editionEntry.
    recoveredValue1 := (recoveredValue0) definitionRecord.
    ^recoveredValue1
! !

"lib.ic method 0x200012ec; bytecode file offset 0x3d664"
!Class methodsFor: 'recovered'!
removeFromSystem
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := (self) removeFrom: (recoveredValue0).
    ^recoveredValue1
! !

"lib.ic method 0x20001880; bytecode file offset 0x3d8a4"
!Class methodsFor: 'recovered'!
canMethodBeLinked: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) hasCTC.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"lib.ic method 0x20002958; bytecode file offset 0x3e998"
!Class methodsFor: 'recovered'!
isInstalled
    ^true
! !

"lib.ic method 0x20002970; bytecode file offset 0x3e998"
!Class methodsFor: 'recovered'!
canBeSubclassed
    ^true
! !

"lib.ic method 0x20005378; bytecode file offset 0x413a0"
!Class methodsFor: 'recovered'!
updateIn: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmClassEditions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) for: (self) in: (recoveredValue1) relocateUsing: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20006118; bytecode file offset 0x42144"
!Class methodsFor: 'recovered'!
changesSince: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) symbol.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) classEditionNamed: (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) loadDifferencesFrom: (self) in: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x200065ac; bytecode file offset 0x425e0"
!Class methodsFor: 'recovered'!
descriptionFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) textFilter.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) localUserFieldAt: ('description') in: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) filter: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200068f4; bytecode file offset 0x4292c"
!Class methodsFor: 'recovered'!
superclassWasChanged
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (self) controller.
    (recoveredValue2) applicationAddNewClassMFTSFor: (recoveredValue3) class: (self).
    (self) storeByteCodes.
    ^self
! !

"lib.ic method 0x20006d00; bytecode file offset 0x42d28"
!Class methodsFor: 'recovered'!
modifyIn: recoveredArg1 ifUnable: recoveredArg2
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
            recoveredStack0 := (recoveredStack0) isVersionIn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) newClassEditionFor: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20006e2c; bytecode file offset 0x42e54"
!Class methodsFor: 'recovered'!
subclass: recoveredArg1 instanceVariableNames: recoveredArg2 classVariableNames: recoveredArg3 poolDictionaries: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (false) fieldType: ('pointers') classInstanceVariableString: (nil) instanceVariableString: (recoveredValue1) classVariableString: (recoveredValue2) sharedPoolString: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20006e50; bytecode file offset 0x42e78"
!Class methodsFor: 'recovered'!
variableSubclass: recoveredArg1 instanceVariableNames: recoveredArg2 classVariableNames: recoveredArg3 poolDictionaries: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('pointers') classInstanceVariableString: (nil) instanceVariableString: (recoveredValue1) classVariableString: (recoveredValue2) sharedPoolString: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x2000731c; bytecode file offset 0x43370"
!Class methodsFor: 'recovered'!
variableLongSubclass: recoveredArg1 classVariableNames: recoveredArg2 poolDictionaries: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('longs') classInstanceVariableString: (nil) instanceVariableString: ('') classVariableString: (recoveredValue1) sharedPoolString: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20007330; bytecode file offset 0x43370"
!Class methodsFor: 'recovered'!
variableByteSubclass: recoveredArg1 classVariableNames: recoveredArg2 poolDictionaries: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('bytes') classInstanceVariableString: (nil) instanceVariableString: ('') classVariableString: (recoveredValue1) sharedPoolString: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20007344; bytecode file offset 0x43370"
!Class methodsFor: 'recovered'!
variableWordSubclass: recoveredArg1 classVariableNames: recoveredArg2 poolDictionaries: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('words') classInstanceVariableString: (nil) instanceVariableString: ('') classVariableString: (recoveredValue1) sharedPoolString: (recoveredValue2).
    ^recoveredValue3
! !

"lib.ic method 0x20007394; bytecode file offset 0x433e8"
!Class methodsFor: 'recovered'!
variableByteSubclass: recoveredArg1 classInstanceVariableNames: recoveredArg2 classVariableNames: recoveredArg3 poolDictionaries: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('bytes') classInstanceVariableString: (recoveredValue1) instanceVariableString: ('') classVariableString: (recoveredValue2) sharedPoolString: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200073a8; bytecode file offset 0x433e8"
!Class methodsFor: 'recovered'!
variableWordSubclass: recoveredArg1 classInstanceVariableNames: recoveredArg2 classVariableNames: recoveredArg3 poolDictionaries: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('words') classInstanceVariableString: (recoveredValue1) instanceVariableString: ('') classVariableString: (recoveredValue2) sharedPoolString: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200073bc; bytecode file offset 0x433e8"
!Class methodsFor: 'recovered'!
variableLongSubclass: recoveredArg1 classInstanceVariableNames: recoveredArg2 classVariableNames: recoveredArg3 poolDictionaries: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('longs') classInstanceVariableString: (recoveredValue1) instanceVariableString: ('') classVariableString: (recoveredValue2) sharedPoolString: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20007434; bytecode file offset 0x4345c"
!Class methodsFor: 'recovered'!
subclass: recoveredArg1 classInstanceVariableNames: recoveredArg2 instanceVariableNames: recoveredArg3 classVariableNames: recoveredArg4 poolDictionaries: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (false) fieldType: ('pointers') classInstanceVariableString: (recoveredValue1) instanceVariableString: (recoveredValue2) classVariableString: (recoveredValue3) sharedPoolString: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20007458; bytecode file offset 0x43480"
!Class methodsFor: 'recovered'!
variableSubclass: recoveredArg1 classInstanceVariableNames: recoveredArg2 instanceVariableNames: recoveredArg3 classVariableNames: recoveredArg4 poolDictionaries: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := (self) createClassNamed: (recoveredValue0) subclassOf: (self) variable: (true) fieldType: ('pointers') classInstanceVariableString: (recoveredValue1) instanceVariableString: (recoveredValue2) classVariableString: (recoveredValue3) sharedPoolString: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x20008468; bytecode file offset 0x444a0"
!Class methodsFor: 'recovered'!
removeFromImageIfNot: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    (self) canBeRemovedWith: (#()) ifNot: (recoveredValue0).
    recoveredValue1 := (self) owningImage.
    recoveredValue2 := (self) name.
    recoveredValue3 := (self) owningImage.
    recoveredValue4 := (recoveredValue3) globalNamespace.
    (recoveredValue1) removeClassNamed: (recoveredValue2) from: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20008a30; bytecode file offset 0x44a64"
!Class methodsFor: 'recovered'!
canBeRedefined
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) controller.
    recoveredValue1 := NlsCatEMb.
    recoveredValue2 := (recoveredValue1) residentMsg: ('MxEMb3').
    recoveredValue3 := [
    ^false
].
    (recoveredValue0) allowedTo: (recoveredValue2) ifNot: (recoveredValue3).
    ^true
! !

"lib.ic method 0x2000d060; bytecode file offset 0x49098"
!Class methodsFor: 'recovered'!
checkVersionStatusIn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersionIn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionEntryIn: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersion.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) timeStampIn: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) versionName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) versionName: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20011a9c; bytecode file offset 0x4daf0"
!Class methodsFor: 'recovered'!
storeByteCodes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 185.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := EmLibrary.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) operationsInterface.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) classStoreByteCodesFor: (recoveredStack1).
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

"lib.ic method 0x200135d4; bytecode file offset 0x4f630"
!Class methodsFor: 'recovered'!
addSharedPoolName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) instVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack9 := (recoveredStack9) asOrderedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack10 := recoveredStack9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack11 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack11 := (recoveredStack11) asSymbol.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack10) add: (recoveredStack11).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013650; bytecode file offset 0x4f6ac"
!Class methodsFor: 'recovered'!
addClassVarName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) instVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack8 := (recoveredStack8) asOrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack10 := (recoveredStack10) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack9) add: (recoveredStack10).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200136cc; bytecode file offset 0x4f728"
!Class methodsFor: 'recovered'!
addInstVarName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) instVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := (recoveredStack7) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack8 := recoveredStack7.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack9 := (recoveredStack9) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack8) add: (recoveredStack9).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013a58; bytecode file offset 0x4faa4"
!Class methodsFor: 'recovered'!
public
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPrivate.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 57.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) makePublic: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) privateStatus: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013ddc; bytecode file offset 0x4fe3c"
!Class methodsFor: 'recovered'!
removeSharedPoolName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) instVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack9 := (recoveredStack9) asOrderedCollection.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack10 := recoveredStack9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack11 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack11 := (recoveredStack11) asSymbol.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack12 := [].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack10) remove: (recoveredStack11) ifAbsent: (recoveredStack12).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013e5c; bytecode file offset 0x4febc"
!Class methodsFor: 'recovered'!
removeClassVarName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) instVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack8 := (recoveredStack8) asOrderedCollection.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack9 := recoveredStack8.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack10 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack10 := (recoveredStack10) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack11 := [].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack9) remove: (recoveredStack10) ifAbsent: (recoveredStack11).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20013edc; bytecode file offset 0x4ff3c"
!Class methodsFor: 'recovered'!
removeInstVarName: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack6 := (recoveredStack6) class.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack6 := (recoveredStack6) instVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack7 := (recoveredStack7) asOrderedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack8 := recoveredStack7.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack9 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack9 := (recoveredStack9) asString.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack10 := [].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack8) remove: (recoveredStack9) ifAbsent: (recoveredStack10).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014608; bytecode file offset 0x5065c"
!Class methodsFor: 'recovered'!
classInstanceVariables: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) hasController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) controller.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShape.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack7 := (recoveredStack7) instVarNames.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := (recoveredStack8) classVarNames.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack9 := (recoveredStack9) sharedPoolNames.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20016ef8; bytecode file offset 0x52f38"
!Class methodsFor: 'recovered'!
copyClassInstVarsFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) instVarAt: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) instVarAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 24] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20017278; bytecode file offset 0x532d8"
!Class methodsFor: 'recovered'!
currentUserCanModifyIn: recoveredArg1 ifUnable: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVersionIn: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) newClassEditionFor: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionEntryIn: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) developer.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentID.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 371.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) signatureIn: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := EmUser.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack5 := (recoveredStack5) called: (recoveredStack6).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := (recoveredStack5) fullName.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20018370; bytecode file offset 0x543c4"
!Class methodsFor: 'recovered'!
versionNameIn: recoveredArg1 is: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) signatureIn: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) methodsIn: (recoveredValue2).
    recoveredValue3 := EmLibrary.
    recoveredValue4 := (recoveredValue3) default.
    recoveredValue5 := (recoveredValue4) operationsInterface.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := [
    ^false
].
    (recoveredValue5) applicationVersionClassFor: (recoveredValue6) class: (self) versionName: (recoveredValue7) ifUnable: (recoveredValue8).
    recoveredValue9 := (self) owningImage.
    recoveredValue10 := NlsCatEMc.
    recoveredValue11 := (recoveredValue10) residentMsg: ('MxEMc8').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (self) signatureIn: (recoveredValue13).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) signature.
    recoveredValue17 := (recoveredValue11) bindWith: (recoveredValue12) with: (recoveredValue14) with: (recoveredValue16).
    (recoveredValue9) logClassNotice: (recoveredValue17).
    ^true
! !

"lib.ic method 0x200196b4; bytecode file offset 0x55704"
!Class methodsFor: 'recovered'!
createClassNamed: recoveredArg1 subclassOf: recoveredArg2 variable: recoveredArg3 fieldType: recoveredArg4 classInstanceVariableString: recoveredArg5 instanceVariableString: recoveredArg6 classVariableString: recoveredArg7 sharedPoolString: recoveredArg8
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarNames.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) creatorClass.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) owningImage.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) defaultApplication.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack6 := recoveredArg4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := (recoveredStack5) instanceShapeFor: (recoveredStack6) variable: (recoveredStack7).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack7 := (recoveredStack7) subStrings.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack8 := recoveredArg7.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack8 := (recoveredStack8) subStrings.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack9 := recoveredArg8.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack9 := (recoveredStack9) subStrings.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) createClassNamed: (recoveredStack1) in: (recoveredStack2) for: (recoveredStack3) subclassOf: (recoveredStack4) instanceShape: (recoveredStack5) classInstanceVariables: (recoveredStack6) instanceVariables: (recoveredStack7) classVariables: (recoveredStack8) sharedPoolNames: (recoveredStack9).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20019f68; bytecode file offset 0x55fac"
!Class methodsFor: 'recovered'!
initializeInstVarsFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := #('specialMethods' 'superclass' 'methodsArray' 'namedInstVarSize' 'instanceShape' 'instanceLink' 'classLink' 'methodDictionary' 'subclasses' 'instVarNames' 'classPool' 'sharedPoolNames').
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) indexOf: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) instVarAt: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) instVarAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 22] ifFalse: [recoveredLocal1 := nil. recoveredPC := 75]] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001a080; bytecode file offset 0x560d0"
!Class methodsFor: 'recovered'!
canBeRemovedWith: recoveredArg1 ifNot: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) includes: (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 45] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := EmImageSupport.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) errorReporter.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := 131.
            recoveredBlock5PC := 30.
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5Stack3 := Array.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) name.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) with: (recoveredBlock5Stack4).
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            (recoveredBlock5Stack1) reportError: (recoveredBlock5Stack2) withParms: (recoveredBlock5Stack3).
            recoveredBlock5PC := 39.
        ].
        recoveredBlock5Step = 39 ifTrue: [
            recoveredBlock5Stack1 := recoveredArg2.
            recoveredBlock5PC := 42.
        ].
        recoveredBlock5Step = 42 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) value.
            recoveredBlock5PC := 44.
        ].
        recoveredBlock5Step = 44 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) allLiveInstances.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 132.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001ab48; bytecode file offset 0x56b9c"
!Class methodsFor: 'recovered'!
description: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefinedIn: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 53.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) logError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := EmUser.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerOf: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'description'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := 369.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := [
    ^false
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) localUserFieldAt: (recoveredStack1) in: (recoveredStack2) put: (recoveredStack3) userMustBeDeveloperTo: (recoveredStack4) ifUnable: (recoveredStack5).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e900; bytecode file offset 0x5a974"
!Class methodsFor: 'recovered'!
deleteFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbol.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) signatureIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 133.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerOf: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 134.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeFrom: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteClassName: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'MxEMc5'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) logClassNotice: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) callDeferredCallbacks.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20020818; bytecode file offset 0x5c8bc"
!Class methodsFor: 'recovered'!
definitionWasChanged
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := EmImageSupport.
    recoveredValue1 := (recoveredValue0) errorReporter.
    recoveredValue2 := Array.
    recoveredValue3 := (self) defaultSignature.
    recoveredValue4 := (self) controller.
    recoveredValue5 := (recoveredValue4) signature.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue5).
    (recoveredValue1) logError: (58) withParms: (recoveredValue6).
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) default.
    recoveredValue9 := (recoveredValue8) operationsInterface.
    recoveredValue10 := (self) controller.
    recoveredValue11 := [
    ^nil
].
    (recoveredValue9) applicationRedefineClassFor: (recoveredValue10) class: (self) ifUnable: (recoveredValue11).
    recoveredValue12 := (self) owningImage.
    recoveredValue13 := NlsCatEMbsES.
    recoveredValue14 := (recoveredValue13) residentMsg: ('MxEMbsES34').
    recoveredValue15 := (self) defaultSignature.
    recoveredValue16 := (self) controller.
    recoveredValue17 := (recoveredValue16) signature.
    recoveredValue18 := (recoveredValue14) bindWith: (recoveredValue15) with: (recoveredValue17).
    (recoveredValue12) logClassNotice: (recoveredValue18).
    recoveredValue19 := (self) owningImage.
    recoveredValue20 := EmConstants.
    recoveredValue21 := ('EmNclassChangedCallback') asPoolKey.
    recoveredValue22 := (recoveredValue20) at: (recoveredValue21).
    recoveredValue23 := [
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 recoveredBlock73Value3 recoveredBlock73Value4 recoveredBlock73Value5 recoveredBlock73Value6 recoveredBlock73Value7 recoveredBlock73Value8 recoveredBlock73Value9 recoveredBlock73Value10 recoveredBlock73Value11 recoveredBlock73Value12 recoveredBlock73Value13 recoveredBlock73Value14 |
    recoveredBlock73Value0 := EmClassChangeCallbackData.
    recoveredBlock73Value1 := (recoveredBlock73Value0) new.
    recoveredBlock73Value2 := recoveredBlock73Value1.
    recoveredBlock73Value3 := (self) name.
    (recoveredBlock73Value2) className: (recoveredBlock73Value3).
    recoveredBlock73Value4 := recoveredBlock73Value1.
    recoveredBlock73Value5 := (self) controller.
    recoveredBlock73Value6 := (recoveredBlock73Value5) name.
    (recoveredBlock73Value4) applicationName: (recoveredBlock73Value6).
    recoveredBlock73Value7 := recoveredBlock73Value1.
    recoveredBlock73Value8 := EmConstants.
    recoveredBlock73Value9 := ('EMCChanged') asPoolKey.
    recoveredBlock73Value10 := (recoveredBlock73Value8) at: (recoveredBlock73Value9).
    recoveredBlock73Value11 := EmConstants.
    recoveredBlock73Value12 := ('EMCDirectDefinitionChange') asPoolKey.
    recoveredBlock73Value13 := (recoveredBlock73Value11) at: (recoveredBlock73Value12).
    recoveredBlock73Value14 := (recoveredBlock73Value10) | (recoveredBlock73Value13).
    (recoveredBlock73Value7) changeType: (recoveredBlock73Value14).
    recoveredBlock73Value1
].
    (recoveredValue19) deferCallbacks: (recoveredValue22) computedCallData: (recoveredValue23).
    (self) storeByteCodes.
    ^self
! !

"lib.ic method 0x20022d8c; bytecode file offset 0x5edf0"
!Class methodsFor: 'recovered'!
private
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationAssocs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 54.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllSubApplications.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) subclasses.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Stack0 recoveredBlock44Stack1 recoveredBlock44Stack2 recoveredBlock44Stack3 recoveredBlock44Stack4 recoveredBlock44Stack5 recoveredBlock44Stack6 recoveredBlock44Stack7 recoveredBlock44Stack8 recoveredBlock44PC recoveredBlock44Step recoveredBlock44Done recoveredBlock44Result |
    recoveredBlock44Stack0 := self.
    recoveredBlock44PC := 50.
    recoveredBlock44Done := false.
    [recoveredBlock44Done not] whileTrue: [
        recoveredBlock44Step := recoveredBlock44PC.
        recoveredBlock44Step = 50 ifTrue: [
            recoveredBlock44Stack1 := recoveredLocal1.
            recoveredBlock44PC := 53.
        ].
        recoveredBlock44Step = 53 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 54.
        ].
        recoveredBlock44Step = 54 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) controller.
            recoveredBlock44PC := 56.
        ].
        recoveredBlock44Step = 56 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) includes: (recoveredBlock44Stack2).
            recoveredBlock44PC := 58.
        ].
        recoveredBlock44Step = 58 ifTrue: [
            (recoveredBlock44Stack1) ifTrue: [recoveredBlock44PC := 92] ifFalse: [recoveredBlock44PC := 62].
        ].
        recoveredBlock44Step = 62 ifTrue: [
            recoveredBlock44Stack1 := EmImageSupport.
            recoveredBlock44PC := 64.
        ].
        recoveredBlock44Step = 64 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) errorReporter.
            recoveredBlock44PC := 65.
        ].
        recoveredBlock44Step = 65 ifTrue: [
            recoveredBlock44Stack2 := 55.
            recoveredBlock44PC := 67.
        ].
        recoveredBlock44Step = 67 ifTrue: [
            recoveredBlock44Stack3 := Array.
            recoveredBlock44PC := 69.
        ].
        recoveredBlock44Step = 69 ifTrue: [
            recoveredBlock44Stack4 := self.
            recoveredBlock44PC := 70.
        ].
        recoveredBlock44Step = 70 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) name.
            recoveredBlock44PC := 72.
        ].
        recoveredBlock44Step = 72 ifTrue: [
            recoveredBlock44Stack5 := self.
            recoveredBlock44PC := 73.
        ].
        recoveredBlock44Step = 73 ifTrue: [
            recoveredBlock44Stack5 := (recoveredBlock44Stack5) controller.
            recoveredBlock44PC := 75.
        ].
        recoveredBlock44Step = 75 ifTrue: [
            recoveredBlock44Stack5 := (recoveredBlock44Stack5) name.
            recoveredBlock44PC := 77.
        ].
        recoveredBlock44Step = 77 ifTrue: [
            recoveredBlock44Stack6 := recoveredBlock44Arg1.
            recoveredBlock44PC := 78.
        ].
        recoveredBlock44Step = 78 ifTrue: [
            recoveredBlock44Stack6 := (recoveredBlock44Stack6) name.
            recoveredBlock44PC := 80.
        ].
        recoveredBlock44Step = 80 ifTrue: [
            recoveredBlock44Stack7 := recoveredBlock44Arg1.
            recoveredBlock44PC := 81.
        ].
        recoveredBlock44Step = 81 ifTrue: [
            recoveredBlock44Stack7 := (recoveredBlock44Stack7) controller.
            recoveredBlock44PC := 83.
        ].
        recoveredBlock44Step = 83 ifTrue: [
            recoveredBlock44Stack7 := (recoveredBlock44Stack7) name.
            recoveredBlock44PC := 85.
        ].
        recoveredBlock44Step = 85 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) with: (recoveredBlock44Stack4) with: (recoveredBlock44Stack5) with: (recoveredBlock44Stack6) with: (recoveredBlock44Stack7).
            recoveredBlock44PC := 88.
        ].
        recoveredBlock44Step = 88 ifTrue: [
            (recoveredBlock44Stack1) reportError: (recoveredBlock44Stack2) withParms: (recoveredBlock44Stack3).
            recoveredBlock44PC := 90.
        ].
        recoveredBlock44Step = 90 ifTrue: [
            recoveredBlock44Stack1 := false.
            recoveredBlock44PC := 91.
        ].
        recoveredBlock44Step = 91 ifTrue: [
            ^recoveredBlock44Stack1
        ].
        recoveredBlock44Step = 92 ifTrue: [
            recoveredBlock44Stack1 := nil.
            recoveredBlock44PC := 93.
        ].
        recoveredBlock44Step = 93 ifTrue: [
            recoveredBlock44Stack2 := recoveredBlock44Arg1.
            recoveredBlock44PC := 94.
        ].
        recoveredBlock44Step = 94 ifTrue: [
            recoveredBlock44Stack2 := (recoveredBlock44Stack2) isPrivate.
            recoveredBlock44PC := 96.
        ].
        recoveredBlock44Step = 96 ifTrue: [
            (recoveredBlock44Stack2) ifTrue: [recoveredBlock44PC := 120] ifFalse: [recoveredBlock44PC := 100].
        ].
        recoveredBlock44Step = 100 ifTrue: [
            recoveredBlock44PC := 101.
        ].
        recoveredBlock44Step = 101 ifTrue: [
            recoveredBlock44Stack1 := EmImageSupport.
            recoveredBlock44PC := 103.
        ].
        recoveredBlock44Step = 103 ifTrue: [
            recoveredBlock44Stack1 := (recoveredBlock44Stack1) errorReporter.
            recoveredBlock44PC := 104.
        ].
        recoveredBlock44Step = 104 ifTrue: [
            recoveredBlock44Stack2 := 56.
            recoveredBlock44PC := 106.
        ].
        recoveredBlock44Step = 106 ifTrue: [
            recoveredBlock44Stack3 := Array.
            recoveredBlock44PC := 108.
        ].
        recoveredBlock44Step = 108 ifTrue: [
            recoveredBlock44Stack4 := self.
            recoveredBlock44PC := 109.
        ].
        recoveredBlock44Step = 109 ifTrue: [
            recoveredBlock44Stack4 := (recoveredBlock44Stack4) name.
            recoveredBlock44PC := 111.
        ].
        recoveredBlock44Step = 111 ifTrue: [
            recoveredBlock44Stack5 := recoveredBlock44Arg1.
            recoveredBlock44PC := 112.
        ].
        recoveredBlock44Step = 112 ifTrue: [
            recoveredBlock44Stack5 := (recoveredBlock44Stack5) name.
            recoveredBlock44PC := 114.
        ].
        recoveredBlock44Step = 114 ifTrue: [
            recoveredBlock44Stack3 := (recoveredBlock44Stack3) with: (recoveredBlock44Stack4) with: (recoveredBlock44Stack5).
            recoveredBlock44PC := 116.
        ].
        recoveredBlock44Step = 116 ifTrue: [
            (recoveredBlock44Stack1) reportError: (recoveredBlock44Stack2) withParms: (recoveredBlock44Stack3).
            recoveredBlock44PC := 118.
        ].
        recoveredBlock44Step = 118 ifTrue: [
            recoveredBlock44Stack1 := false.
            recoveredBlock44PC := 119.
        ].
        recoveredBlock44Step = 119 ifTrue: [
            ^recoveredBlock44Stack1
        ].
        recoveredBlock44Step = 120 ifTrue: [
            recoveredBlock44Result := recoveredBlock44Stack1.
            recoveredBlock44Done := true.
        ].
    ].
    recoveredBlock44Result
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) makePrivate: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) privateStatus: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2003045c; bytecode file offset 0x6c51c"
!Class methodsFor: 'recovered'!
removeFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1ESN15N'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationAssocAt: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 141.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamesIn: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Stack0 recoveredBlock52Stack1 recoveredBlock52Stack2 recoveredBlock52Stack3 recoveredBlock52Stack4 recoveredBlock52PC recoveredBlock52Step recoveredBlock52Done recoveredBlock52Result |
    recoveredBlock52Stack0 := self.
    recoveredBlock52PC := 58.
    recoveredBlock52Done := false.
    [recoveredBlock52Done not] whileTrue: [
        recoveredBlock52Step := recoveredBlock52PC.
        recoveredBlock52Step = 58 ifTrue: [
            recoveredBlock52Stack1 := nil.
            recoveredBlock52PC := 59.
        ].
        recoveredBlock52Step = 59 ifTrue: [
            recoveredBlock52Stack2 := EmNamespaceSupport.
            recoveredBlock52PC := 61.
        ].
        recoveredBlock52Step = 61 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) declarationPattern.
            recoveredBlock52PC := 63.
        ].
        recoveredBlock52Step = 63 ifTrue: [
            recoveredBlock52Stack3 := recoveredBlock52Arg1.
            recoveredBlock52PC := 64.
        ].
        recoveredBlock52Step = 64 ifTrue: [
            recoveredBlock52Stack2 := (recoveredBlock52Stack2) match: (recoveredBlock52Stack3).
            recoveredBlock52PC := 66.
        ].
        recoveredBlock52Step = 66 ifTrue: [
            (recoveredBlock52Stack2) ifTrue: [recoveredBlock52PC := 70] ifFalse: [recoveredBlock52PC := 76].
        ].
        recoveredBlock52Step = 70 ifTrue: [
            recoveredBlock52PC := 71.
        ].
        recoveredBlock52Step = 71 ifTrue: [
            recoveredBlock52Stack1 := true.
            recoveredBlock52PC := 72.
        ].
        recoveredBlock52Step = 72 ifTrue: [
            recoveredBlock52Stack2 := recoveredBlock52Stack1.
            recoveredBlock52PC := 73.
        ].
        recoveredBlock52Step = 73 ifTrue: [
            recoveredLocal1 := recoveredBlock52Stack2.
            recoveredBlock52PC := 76.
        ].
        recoveredBlock52Step = 76 ifTrue: [
            recoveredBlock52Result := recoveredBlock52Stack1.
            recoveredBlock52Done := true.
        ].
    ].
    recoveredBlock52Result
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamesIn: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Stack0 recoveredBlock87Stack1 recoveredBlock87Stack2 recoveredBlock87Stack3 recoveredBlock87Stack4 recoveredBlock87PC recoveredBlock87Step recoveredBlock87Done recoveredBlock87Result |
    recoveredBlock87Stack0 := self.
    recoveredBlock87PC := 94.
    recoveredBlock87Done := false.
    [recoveredBlock87Done not] whileTrue: [
        recoveredBlock87Step := recoveredBlock87PC.
        recoveredBlock87Step = 94 ifTrue: [
            recoveredBlock87Stack1 := nil.
            recoveredBlock87PC := 95.
        ].
        recoveredBlock87Step = 95 ifTrue: [
            recoveredBlock87Stack2 := EmNamespaceSupport.
            recoveredBlock87PC := 97.
        ].
        recoveredBlock87Step = 97 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) declarationPattern.
            recoveredBlock87PC := 99.
        ].
        recoveredBlock87Step = 99 ifTrue: [
            recoveredBlock87Stack3 := recoveredBlock87Arg1.
            recoveredBlock87PC := 100.
        ].
        recoveredBlock87Step = 100 ifTrue: [
            recoveredBlock87Stack2 := (recoveredBlock87Stack2) match: (recoveredBlock87Stack3).
            recoveredBlock87PC := 102.
        ].
        recoveredBlock87Step = 102 ifTrue: [
            (recoveredBlock87Stack2) ifTrue: [recoveredBlock87PC := 106] ifFalse: [recoveredBlock87PC := 112].
        ].
        recoveredBlock87Step = 106 ifTrue: [
            recoveredBlock87PC := 107.
        ].
        recoveredBlock87Step = 107 ifTrue: [
            recoveredBlock87Stack1 := true.
            recoveredBlock87PC := 108.
        ].
        recoveredBlock87Step = 108 ifTrue: [
            recoveredBlock87Stack2 := recoveredBlock87Stack1.
            recoveredBlock87PC := 109.
        ].
        recoveredBlock87Step = 109 ifTrue: [
            recoveredLocal1 := recoveredBlock87Stack2.
            recoveredBlock87PC := 112.
        ].
        recoveredBlock87Step = 112 ifTrue: [
            recoveredBlock87Result := recoveredBlock87Stack1.
            recoveredBlock87Done := true.
        ].
    ].
    recoveredBlock87Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbol.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) applications.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Value0 recoveredBlock139Value1 recoveredBlock139Value2 recoveredBlock139Value3 recoveredBlock139Value4 recoveredBlock139Value5 recoveredBlock139Value6 |
    recoveredBlock139Value0 := recoveredBlock139Arg1.
    recoveredBlock139Value1 := NlsCatEMc.
    recoveredBlock139Value2 := (recoveredBlock139Value1) residentMsg: ('MxEMc6').
    recoveredBlock139Value3 := recoveredLocal5.
    recoveredBlock139Value4 := (recoveredBlock139Value2) bindWith: ('%1') with: (recoveredBlock139Value3).
    recoveredBlock139Value5 := [
    ^false
].
    recoveredBlock139Value6 := (recoveredBlock139Value0) allowedTo: (recoveredBlock139Value4) ifNot: (recoveredBlock139Value5).
    recoveredBlock139Value6
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Value0 recoveredBlock183Value1 recoveredBlock183Value2 recoveredBlock183Value3 recoveredBlock183Value4 |
    recoveredBlock183Value0 := recoveredLocal3.
    recoveredBlock183Value1 := recoveredBlock183Arg1.
    recoveredBlock183Value2 := recoveredBlock183Arg1.
    recoveredBlock183Value3 := (self) signatureIn: (recoveredBlock183Value2).
    recoveredBlock183Value4 := (recoveredBlock183Value0) at: (recoveredBlock183Value1) put: (recoveredBlock183Value3).
    recoveredBlock183Value4
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) removeFromImageIfNot: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := [:recoveredBlock217Arg1 | 
    | recoveredBlock217Stack0 recoveredBlock217Stack1 recoveredBlock217Stack2 recoveredBlock217Stack3 recoveredBlock217Stack4 recoveredBlock217PC recoveredBlock217Step recoveredBlock217Done recoveredBlock217Result |
    recoveredBlock217Stack0 := self.
    recoveredBlock217PC := 224.
    recoveredBlock217Done := false.
    [recoveredBlock217Done not] whileTrue: [
        recoveredBlock217Step := recoveredBlock217PC.
        recoveredBlock217Step = 224 ifTrue: [
            recoveredBlock217Stack0 := (recoveredBlock217Stack0) owningImage.
            recoveredBlock217PC := 226.
        ].
        recoveredBlock217Step = 226 ifTrue: [
            recoveredBlock217Stack1 := NlsCatEMc.
            recoveredBlock217PC := 228.
        ].
        recoveredBlock217Step = 228 ifTrue: [
            recoveredBlock217Stack2 := 'MxEMc7'.
            recoveredBlock217PC := 230.
        ].
        recoveredBlock217Step = 230 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) residentMsg: (recoveredBlock217Stack2).
            recoveredBlock217PC := 232.
        ].
        recoveredBlock217Step = 232 ifTrue: [
            recoveredBlock217Stack2 := recoveredLocal3.
            recoveredBlock217PC := 235.
        ].
        recoveredBlock217Step = 235 ifTrue: [
            recoveredBlock217Stack3 := recoveredBlock217Arg1.
            recoveredBlock217PC := 236.
        ].
        recoveredBlock217Step = 236 ifTrue: [
            recoveredBlock217Stack2 := (recoveredBlock217Stack2) at: (recoveredBlock217Stack3).
            recoveredBlock217PC := 238.
        ].
        recoveredBlock217Step = 238 ifTrue: [
            recoveredBlock217Stack3 := recoveredBlock217Arg1.
            recoveredBlock217PC := 239.
        ].
        recoveredBlock217Step = 239 ifTrue: [
            recoveredBlock217Stack3 := (recoveredBlock217Stack3) signature.
            recoveredBlock217PC := 241.
        ].
        recoveredBlock217Step = 241 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) bindWith: (recoveredBlock217Stack2) with: (recoveredBlock217Stack3).
            recoveredBlock217PC := 243.
        ].
        recoveredBlock217Step = 243 ifTrue: [
            (recoveredBlock217Stack0) logClassNotice: (recoveredBlock217Stack1).
            recoveredBlock217PC := 245.
        ].
        recoveredBlock217Step = 245 ifTrue: [
            recoveredBlock217Stack0 := self.
            recoveredBlock217PC := 246.
        ].
        recoveredBlock217Step = 246 ifTrue: [
            recoveredBlock217Stack0 := (recoveredBlock217Stack0) owningImage.
            recoveredBlock217PC := 248.
        ].
        recoveredBlock217Step = 248 ifTrue: [
            (recoveredBlock217Stack0) callDeferredCallbacks.
            recoveredBlock217PC := 250.
        ].
        recoveredBlock217Step = 250 ifTrue: [
            recoveredBlock217Stack0 := nil.
            recoveredBlock217PC := 251.
        ].
        recoveredBlock217Step = 251 ifTrue: [
            recoveredBlock217Stack1 := recoveredBlock217Arg1.
            recoveredBlock217PC := 252.
        ].
        recoveredBlock217Step = 252 ifTrue: [
            recoveredBlock217Stack2 := recoveredLocal5.
            recoveredBlock217PC := 255.
        ].
        recoveredBlock217Step = 255 ifTrue: [
            recoveredBlock217Stack1 := (recoveredBlock217Stack1) isAwareOf: (recoveredBlock217Stack2).
            recoveredBlock217PC := 257.
        ].
        recoveredBlock217Step = 257 ifTrue: [
            (recoveredBlock217Stack1) ifTrue: [recoveredBlock217PC := 260] ifFalse: [recoveredBlock217PC := 267].
        ].
        recoveredBlock217Step = 260 ifTrue: [
            recoveredBlock217PC := 261.
        ].
        recoveredBlock217Step = 261 ifTrue: [
            recoveredBlock217Stack0 := recoveredBlock217Arg1.
            recoveredBlock217PC := 262.
        ].
        recoveredBlock217Step = 262 ifTrue: [
            recoveredBlock217Stack1 := recoveredLocal5.
            recoveredBlock217PC := 265.
        ].
        recoveredBlock217Step = 265 ifTrue: [
            recoveredBlock217Stack0 := (recoveredBlock217Stack0) addUndefined: (recoveredBlock217Stack1).
            recoveredBlock217PC := 267.
        ].
        recoveredBlock217Step = 267 ifTrue: [
            recoveredBlock217Result := recoveredBlock217Stack0.
            recoveredBlock217Done := true.
        ].
    ].
    recoveredBlock217Result
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredPC := 356.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 'MxEMc6'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := '%1'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            (recoveredStack0) allowedTo: (recoveredStack1) ifNot: (recoveredStack2).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := (recoveredStack0) signatureIn: (recoveredStack1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) removeMethodsFrom: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := NlsCatEMc.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack2 := 'MxEMc7'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) logClassNotice: (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAwareOf: (recoveredStack1).
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 348] ifFalse: [recoveredPC := 356].
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            (recoveredStack0) addUndefined: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 362] ifFalse: [recoveredPC := 371].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack0 := EmNamespaceSupport.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack0) noteDamageTo: (recoveredStack1).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20035de4; bytecode file offset 0x71f20"
!Class methodsFor: 'recovered'!
moveEditionFrom: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1ESN15N'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUndefinedIn: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 141.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 133.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerOf: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := EmUser.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 134.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEdition.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 136.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) applications.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := 135.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := (recoveredStack4) signature.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamesIn: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := [:recoveredBlock196Arg1 | 
    | recoveredBlock196Value0 recoveredBlock196Value1 recoveredBlock196Value2 |
    recoveredBlock196Value0 := recoveredBlock196Arg1.
    recoveredBlock196Value1 := recoveredArg2.
    recoveredBlock196Value2 := (self) moveSelector: (recoveredBlock196Value0) to: (recoveredBlock196Value1).
    recoveredBlock196Value2
].
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamesIn: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := [:recoveredBlock219Arg1 | 
    | recoveredBlock219Value0 recoveredBlock219Value1 recoveredBlock219Value2 recoveredBlock219Value3 |
    recoveredBlock219Value0 := (self) class.
    recoveredBlock219Value1 := recoveredBlock219Arg1.
    recoveredBlock219Value2 := recoveredArg2.
    recoveredBlock219Value3 := (recoveredBlock219Value0) moveSelector: (recoveredBlock219Value1) to: (recoveredBlock219Value2).
    recoveredBlock219Value3
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMethodsIn: (recoveredStack1).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasMethodsIn: (recoveredStack1).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 264] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) deleteFrom: (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 280] ifFalse: [recoveredPC := 502].
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootApplication.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBasedOn: (recoveredStack1).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 296].
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassVisible: (recoveredStack1).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 314].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := 137.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack5 := recoveredArg2.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack5 := (recoveredStack5) signature.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootApplication.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBasedOn: (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 499] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootApplication.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAllDependentApplications.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := (recoveredStack0) applications.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := [:recoveredBlock378Arg1 | 
    | recoveredBlock378Stack0 recoveredBlock378Stack1 recoveredBlock378Stack2 recoveredBlock378Stack3 recoveredBlock378Stack4 recoveredBlock378Stack5 recoveredBlock378Stack6 recoveredBlock378Stack7 recoveredBlock378PC recoveredBlock378Step recoveredBlock378Done recoveredBlock378Result |
    recoveredBlock378Stack0 := self.
    recoveredBlock378PC := 384.
    recoveredBlock378Done := false.
    [recoveredBlock378Done not] whileTrue: [
        recoveredBlock378Step := recoveredBlock378PC.
        recoveredBlock378Step = 384 ifTrue: [
            recoveredBlock378Stack1 := nil.
            recoveredBlock378PC := 385.
        ].
        recoveredBlock378Step = 385 ifTrue: [
            recoveredBlock378Stack2 := recoveredLocal6.
            recoveredBlock378PC := 388.
        ].
        recoveredBlock378Step = 388 ifTrue: [
            recoveredBlock378Stack3 := recoveredBlock378Arg1.
            recoveredBlock378PC := 389.
        ].
        recoveredBlock378Step = 389 ifTrue: [
            recoveredBlock378Stack3 := (recoveredBlock378Stack3) rootApplication.
            recoveredBlock378PC := 391.
        ].
        recoveredBlock378Step = 391 ifTrue: [
            recoveredBlock378Stack2 := (recoveredBlock378Stack2) includes: (recoveredBlock378Stack3).
            recoveredBlock378PC := 393.
        ].
        recoveredBlock378Step = 393 ifTrue: [
            (recoveredBlock378Stack2) ifTrue: [recoveredBlock378PC := 424] ifFalse: [recoveredBlock378PC := 396].
        ].
        recoveredBlock378Step = 396 ifTrue: [
            recoveredBlock378PC := 397.
        ].
        recoveredBlock378Step = 397 ifTrue: [
            recoveredBlock378Stack1 := EmImageSupport.
            recoveredBlock378PC := 399.
        ].
        recoveredBlock378Step = 399 ifTrue: [
            recoveredBlock378Stack1 := (recoveredBlock378Stack1) errorReporter.
            recoveredBlock378PC := 401.
        ].
        recoveredBlock378Step = 401 ifTrue: [
            recoveredBlock378Stack2 := 138.
            recoveredBlock378PC := 404.
        ].
        recoveredBlock378Step = 404 ifTrue: [
            recoveredBlock378Stack3 := Array.
            recoveredBlock378PC := 406.
        ].
        recoveredBlock378Step = 406 ifTrue: [
            recoveredBlock378Stack4 := self.
            recoveredBlock378PC := 407.
        ].
        recoveredBlock378Step = 407 ifTrue: [
            recoveredBlock378Stack4 := (recoveredBlock378Stack4) name.
            recoveredBlock378PC := 409.
        ].
        recoveredBlock378Step = 409 ifTrue: [
            recoveredBlock378Stack5 := recoveredBlock378Arg1.
            recoveredBlock378PC := 410.
        ].
        recoveredBlock378Step = 410 ifTrue: [
            recoveredBlock378Stack5 := (recoveredBlock378Stack5) signature.
            recoveredBlock378PC := 412.
        ].
        recoveredBlock378Step = 412 ifTrue: [
            recoveredBlock378Stack6 := recoveredArg2.
            recoveredBlock378PC := 415.
        ].
        recoveredBlock378Step = 415 ifTrue: [
            recoveredBlock378Stack6 := (recoveredBlock378Stack6) signature.
            recoveredBlock378PC := 417.
        ].
        recoveredBlock378Step = 417 ifTrue: [
            recoveredBlock378Stack3 := (recoveredBlock378Stack3) with: (recoveredBlock378Stack4) with: (recoveredBlock378Stack5) with: (recoveredBlock378Stack6).
            recoveredBlock378PC := 420.
        ].
        recoveredBlock378Step = 420 ifTrue: [
            (recoveredBlock378Stack1) reportError: (recoveredBlock378Stack2) withParms: (recoveredBlock378Stack3).
            recoveredBlock378PC := 422.
        ].
        recoveredBlock378Step = 422 ifTrue: [
            recoveredBlock378Stack1 := false.
            recoveredBlock378PC := 423.
        ].
        recoveredBlock378Step = 423 ifTrue: [
            ^recoveredBlock378Stack1
        ].
        recoveredBlock378Step = 424 ifTrue: [
            recoveredBlock378Result := recoveredBlock378Stack1.
            recoveredBlock378Done := true.
        ].
    ].
    recoveredBlock378Result
].
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := (recoveredStack0) subclasses.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := [:recoveredBlock430Arg1 | 
    | recoveredBlock430Value0 recoveredBlock430Value1 recoveredBlock430Value2 recoveredBlock430Value3 |
    recoveredBlock430Value0 := recoveredBlock430Arg1.
    recoveredBlock430Value1 := (recoveredBlock430Value0) applications.
    recoveredBlock430Value2 := [:recoveredBlock430Block441Arg1 | 
    | recoveredBlock430Block441Stack0 recoveredBlock430Block441Stack1 recoveredBlock430Block441Stack2 recoveredBlock430Block441Stack3 recoveredBlock430Block441Stack4 recoveredBlock430Block441Stack5 recoveredBlock430Block441Stack6 recoveredBlock430Block441Stack7 recoveredBlock430Block441Stack8 recoveredBlock430Block441PC recoveredBlock430Block441Step recoveredBlock430Block441Done recoveredBlock430Block441Result |
    recoveredBlock430Block441Stack0 := self.
    recoveredBlock430Block441PC := 448.
    recoveredBlock430Block441Done := false.
    [recoveredBlock430Block441Done not] whileTrue: [
        recoveredBlock430Block441Step := recoveredBlock430Block441PC.
        recoveredBlock430Block441Step = 448 ifTrue: [
            recoveredBlock430Block441Stack1 := nil.
            recoveredBlock430Block441PC := 449.
        ].
        recoveredBlock430Block441Step = 449 ifTrue: [
            recoveredBlock430Block441Stack2 := recoveredLocal6.
            recoveredBlock430Block441PC := 452.
        ].
        recoveredBlock430Block441Step = 452 ifTrue: [
            recoveredBlock430Block441Stack3 := recoveredBlock430Block441Arg1.
            recoveredBlock430Block441PC := 453.
        ].
        recoveredBlock430Block441Step = 453 ifTrue: [
            recoveredBlock430Block441Stack3 := (recoveredBlock430Block441Stack3) rootApplication.
            recoveredBlock430Block441PC := 455.
        ].
        recoveredBlock430Block441Step = 455 ifTrue: [
            recoveredBlock430Block441Stack2 := (recoveredBlock430Block441Stack2) includes: (recoveredBlock430Block441Stack3).
            recoveredBlock430Block441PC := 457.
        ].
        recoveredBlock430Block441Step = 457 ifTrue: [
            (recoveredBlock430Block441Stack2) ifTrue: [recoveredBlock430Block441PC := 493] ifFalse: [recoveredBlock430Block441PC := 460].
        ].
        recoveredBlock430Block441Step = 460 ifTrue: [
            recoveredBlock430Block441PC := 461.
        ].
        recoveredBlock430Block441Step = 461 ifTrue: [
            recoveredBlock430Block441Stack1 := EmImageSupport.
            recoveredBlock430Block441PC := 463.
        ].
        recoveredBlock430Block441Step = 463 ifTrue: [
            recoveredBlock430Block441Stack1 := (recoveredBlock430Block441Stack1) errorReporter.
            recoveredBlock430Block441PC := 465.
        ].
        recoveredBlock430Block441Step = 465 ifTrue: [
            recoveredBlock430Block441Stack2 := 139.
            recoveredBlock430Block441PC := 468.
        ].
        recoveredBlock430Block441Step = 468 ifTrue: [
            recoveredBlock430Block441Stack3 := Array.
            recoveredBlock430Block441PC := 470.
        ].
        recoveredBlock430Block441Step = 470 ifTrue: [
            recoveredBlock430Block441Stack4 := self.
            recoveredBlock430Block441PC := 471.
        ].
        recoveredBlock430Block441Step = 471 ifTrue: [
            recoveredBlock430Block441Stack4 := (recoveredBlock430Block441Stack4) name.
            recoveredBlock430Block441PC := 473.
        ].
        recoveredBlock430Block441Step = 473 ifTrue: [
            recoveredBlock430Block441Stack5 := recoveredBlock430Arg1.
            recoveredBlock430Block441PC := 476.
        ].
        recoveredBlock430Block441Step = 476 ifTrue: [
            recoveredBlock430Block441Stack5 := (recoveredBlock430Block441Stack5) name.
            recoveredBlock430Block441PC := 478.
        ].
        recoveredBlock430Block441Step = 478 ifTrue: [
            recoveredBlock430Block441Stack6 := recoveredBlock430Block441Arg1.
            recoveredBlock430Block441PC := 479.
        ].
        recoveredBlock430Block441Step = 479 ifTrue: [
            recoveredBlock430Block441Stack6 := (recoveredBlock430Block441Stack6) signature.
            recoveredBlock430Block441PC := 481.
        ].
        recoveredBlock430Block441Step = 481 ifTrue: [
            recoveredBlock430Block441Stack7 := recoveredArg2.
            recoveredBlock430Block441PC := 484.
        ].
        recoveredBlock430Block441Step = 484 ifTrue: [
            recoveredBlock430Block441Stack7 := (recoveredBlock430Block441Stack7) signature.
            recoveredBlock430Block441PC := 486.
        ].
        recoveredBlock430Block441Step = 486 ifTrue: [
            recoveredBlock430Block441Stack3 := (recoveredBlock430Block441Stack3) with: (recoveredBlock430Block441Stack4) with: (recoveredBlock430Block441Stack5) with: (recoveredBlock430Block441Stack6) with: (recoveredBlock430Block441Stack7).
            recoveredBlock430Block441PC := 489.
        ].
        recoveredBlock430Block441Step = 489 ifTrue: [
            (recoveredBlock430Block441Stack1) reportError: (recoveredBlock430Block441Stack2) withParms: (recoveredBlock430Block441Stack3).
            recoveredBlock430Block441PC := 491.
        ].
        recoveredBlock430Block441Step = 491 ifTrue: [
            recoveredBlock430Block441Stack1 := false.
            recoveredBlock430Block441PC := 492.
        ].
        recoveredBlock430Block441Step = 492 ifTrue: [
            ^recoveredBlock430Block441Stack1
        ].
        recoveredBlock430Block441Step = 493 ifTrue: [
            recoveredBlock430Block441Result := recoveredBlock430Block441Stack1.
            recoveredBlock430Block441Done := true.
        ].
    ].
    recoveredBlock430Block441Result
].
    recoveredBlock430Value3 := (recoveredBlock430Value1) do: (recoveredBlock430Value2).
    recoveredBlock430Value3
].
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredPC := 536.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClassVisible: (recoveredStack1).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 536] ifFalse: [recoveredPC := 512].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack0 := EmImageSupport.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorReporter.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := 140.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            (recoveredStack0) reportError: (recoveredStack1) withParms: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationAssocAt: (recoveredStack1).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack0) key: (recoveredStack1).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationAssocAt: (recoveredStack1).
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            (recoveredStack0) key: (recoveredStack1).
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock560Value0 recoveredBlock560Value1 recoveredBlock560Value2 recoveredBlock560Value3 recoveredBlock560Value4 recoveredBlock560Value5 recoveredBlock560Value6 |
    recoveredBlock560Value0 := recoveredArg2.
    recoveredBlock560Value1 := (self) applicationAssocAt: (recoveredBlock560Value0).
    recoveredBlock560Value2 := recoveredArg1.
    (recoveredBlock560Value1) key: (recoveredBlock560Value2).
    recoveredBlock560Value3 := (self) class.
    recoveredBlock560Value4 := recoveredArg2.
    recoveredBlock560Value5 := (recoveredBlock560Value3) applicationAssocAt: (recoveredBlock560Value4).
    recoveredBlock560Value6 := recoveredArg1.
    (recoveredBlock560Value5) key: (recoveredBlock560Value6).
    ^false
].
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 604] ifFalse: [recoveredPC := 622].
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPublic.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 610] ifFalse: [recoveredPC := 616].
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := 'PubliclyDefined'.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredPC := 618.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := 'PrivatelyDefined'.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredPC := 624.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := 'Extended'.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            (recoveredStack0) createEditionOf: (recoveredStack1) type: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionsRecordIn: (recoveredStack1).
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack2 := [:recoveredBlock643Arg1 | 
    | recoveredBlock643Value0 recoveredBlock643Value1 recoveredBlock643Value2 |
    recoveredBlock643Value0 := recoveredBlock643Arg1.
    recoveredBlock643Value1 := recoveredLocal4.
    recoveredBlock643Value2 := (recoveredBlock643Value0) copyInfoFrom: (recoveredBlock643Value1).
    recoveredBlock643Value2
].
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            (recoveredStack0) updateIn: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 754] ifFalse: [recoveredPC := 668].
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootApplication.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 754] ifFalse: [recoveredPC := 682].
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaceAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 726] ifFalse: [recoveredPC := 708].
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalNamespace.
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := (recoveredStack1) rootApplication.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack0 := (recoveredStack0) declareNamespace: (recoveredStack1).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            (recoveredStack0) removeClassNamed: (recoveredStack1).
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            (recoveredStack0) declareVariable: (recoveredStack1).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack0 := (recoveredStack0) image.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            (recoveredStack0) installClass: (recoveredStack1).
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 754.
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamesIn: (recoveredStack1).
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack1 := [:recoveredBlock760Arg1 | 
    | recoveredBlock760Stack0 recoveredBlock760Stack1 recoveredBlock760Stack2 recoveredBlock760Stack3 recoveredBlock760PC recoveredBlock760Step recoveredBlock760Done recoveredBlock760Result |
    recoveredBlock760Stack0 := self.
    recoveredBlock760PC := 766.
    recoveredBlock760Done := false.
    [recoveredBlock760Done not] whileTrue: [
        recoveredBlock760Step := recoveredBlock760PC.
        recoveredBlock760Step = 766 ifTrue: [
            recoveredBlock760Stack1 := recoveredBlock760Arg1.
            recoveredBlock760PC := 767.
        ].
        recoveredBlock760Step = 767 ifTrue: [
            (recoveredBlock760Stack0) resaveMethod: (recoveredBlock760Stack1).
            recoveredBlock760PC := 769.
        ].
        recoveredBlock760Step = 769 ifTrue: [
            recoveredBlock760Stack0 := nil.
            recoveredBlock760PC := 770.
        ].
        recoveredBlock760Step = 770 ifTrue: [
            recoveredBlock760Stack1 := EmNamespaceSupport.
            recoveredBlock760PC := 772.
        ].
        recoveredBlock760Step = 772 ifTrue: [
            recoveredBlock760Stack1 := (recoveredBlock760Stack1) declarationPattern.
            recoveredBlock760PC := 774.
        ].
        recoveredBlock760Step = 774 ifTrue: [
            recoveredBlock760Stack2 := recoveredBlock760Arg1.
            recoveredBlock760PC := 775.
        ].
        recoveredBlock760Step = 775 ifTrue: [
            recoveredBlock760Stack1 := (recoveredBlock760Stack1) match: (recoveredBlock760Stack2).
            recoveredBlock760PC := 777.
        ].
        recoveredBlock760Step = 777 ifTrue: [
            (recoveredBlock760Stack1) ifTrue: [recoveredBlock760PC := 780] ifFalse: [recoveredBlock760PC := 790].
        ].
        recoveredBlock760Step = 780 ifTrue: [
            recoveredBlock760PC := 781.
        ].
        recoveredBlock760Step = 781 ifTrue: [
            recoveredBlock760Stack0 := EmNamespaceSupport.
            recoveredBlock760PC := 783.
        ].
        recoveredBlock760Step = 783 ifTrue: [
            recoveredBlock760Stack1 := recoveredArg1.
            recoveredBlock760PC := 786.
        ].
        recoveredBlock760Step = 786 ifTrue: [
            recoveredBlock760Stack1 := (recoveredBlock760Stack1) rootApplication.
            recoveredBlock760PC := 788.
        ].
        recoveredBlock760Step = 788 ifTrue: [
            recoveredBlock760Stack0 := (recoveredBlock760Stack0) noteDamageTo: (recoveredBlock760Stack1).
            recoveredBlock760PC := 790.
        ].
        recoveredBlock760Step = 790 ifTrue: [
            recoveredBlock760Result := recoveredBlock760Stack0.
            recoveredBlock760Done := true.
        ].
    ].
    recoveredBlock760Result
].
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            (recoveredStack0) updateCategoryDictionaryRecordIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 817.
        ].
        recoveredStep = 817 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamesIn: (recoveredStack1).
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack1 := [:recoveredBlock819Arg1 | 
    | recoveredBlock819Stack0 recoveredBlock819Stack1 recoveredBlock819Stack2 recoveredBlock819Stack3 recoveredBlock819PC recoveredBlock819Step recoveredBlock819Done recoveredBlock819Result |
    recoveredBlock819Stack0 := self.
    recoveredBlock819PC := 826.
    recoveredBlock819Done := false.
    [recoveredBlock819Done not] whileTrue: [
        recoveredBlock819Step := recoveredBlock819PC.
        recoveredBlock819Step = 826 ifTrue: [
            recoveredBlock819Stack0 := (recoveredBlock819Stack0) class.
            recoveredBlock819PC := 828.
        ].
        recoveredBlock819Step = 828 ifTrue: [
            recoveredBlock819Stack1 := recoveredBlock819Arg1.
            recoveredBlock819PC := 829.
        ].
        recoveredBlock819Step = 829 ifTrue: [
            (recoveredBlock819Stack0) resaveMethod: (recoveredBlock819Stack1).
            recoveredBlock819PC := 831.
        ].
        recoveredBlock819Step = 831 ifTrue: [
            recoveredBlock819Stack0 := nil.
            recoveredBlock819PC := 832.
        ].
        recoveredBlock819Step = 832 ifTrue: [
            recoveredBlock819Stack1 := EmNamespaceSupport.
            recoveredBlock819PC := 834.
        ].
        recoveredBlock819Step = 834 ifTrue: [
            recoveredBlock819Stack1 := (recoveredBlock819Stack1) declarationPattern.
            recoveredBlock819PC := 836.
        ].
        recoveredBlock819Step = 836 ifTrue: [
            recoveredBlock819Stack2 := recoveredBlock819Arg1.
            recoveredBlock819PC := 837.
        ].
        recoveredBlock819Step = 837 ifTrue: [
            recoveredBlock819Stack1 := (recoveredBlock819Stack1) match: (recoveredBlock819Stack2).
            recoveredBlock819PC := 839.
        ].
        recoveredBlock819Step = 839 ifTrue: [
            (recoveredBlock819Stack1) ifTrue: [recoveredBlock819PC := 842] ifFalse: [recoveredBlock819PC := 852].
        ].
        recoveredBlock819Step = 842 ifTrue: [
            recoveredBlock819PC := 843.
        ].
        recoveredBlock819Step = 843 ifTrue: [
            recoveredBlock819Stack0 := EmNamespaceSupport.
            recoveredBlock819PC := 845.
        ].
        recoveredBlock819Step = 845 ifTrue: [
            recoveredBlock819Stack1 := recoveredArg1.
            recoveredBlock819PC := 848.
        ].
        recoveredBlock819Step = 848 ifTrue: [
            recoveredBlock819Stack1 := (recoveredBlock819Stack1) rootApplication.
            recoveredBlock819PC := 850.
        ].
        recoveredBlock819Step = 850 ifTrue: [
            recoveredBlock819Stack0 := (recoveredBlock819Stack0) noteDamageTo: (recoveredBlock819Stack1).
            recoveredBlock819PC := 852.
        ].
        recoveredBlock819Step = 852 ifTrue: [
            recoveredBlock819Result := recoveredBlock819Stack0.
            recoveredBlock819Done := true.
        ].
    ].
    recoveredBlock819Result
].
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            (recoveredStack0) updateCategoryDictionaryRecordIn: (recoveredStack1) ifUnable: (recoveredStack2).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 876.
        ].
        recoveredStep = 876 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredStack0 := (recoveredStack0) editionEntryIn: (recoveredStack1).
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack0 := (recoveredStack0) inheritedUserFields.
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack2 := [:recoveredBlock894Arg1 | 
    | recoveredBlock894Value0 recoveredBlock894Value1 recoveredBlock894Value2 recoveredBlock894Value3 |
    recoveredBlock894Value0 := recoveredBlock894Arg1.
    recoveredBlock894Value1 := (recoveredBlock894Value0) currentEntry.
    recoveredBlock894Value2 := recoveredLocal2.
    recoveredBlock894Value3 := (recoveredBlock894Value1) copyInheritedUserFieldsFrom: (recoveredBlock894Value2).
    recoveredBlock894Value3
].
            recoveredPC := 914.
        ].
        recoveredStep = 914 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 922.
        ].
        recoveredStep = 922 ifTrue: [
            (recoveredStack0) updateEditionsRecordIn: (recoveredStack1) with: (recoveredStack2) ifUnable: (recoveredStack3).
            recoveredPC := 927.
        ].
        recoveredStep = 927 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 928.
        ].
        recoveredStep = 928 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 931.
        ].
        recoveredStep = 931 ifTrue: [
            recoveredStack0 := (recoveredStack0) signatureIn: (recoveredStack1).
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 938.
        ].
        recoveredStep = 938 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 941.
        ].
        recoveredStep = 941 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 942.
        ].
        recoveredStep = 942 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 943.
        ].
        recoveredStep = 943 ifTrue: [
            (recoveredStack1) locallyRemove: (recoveredStack2).
            recoveredPC := 947.
        ].
        recoveredStep = 947 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 948.
        ].
        recoveredStep = 948 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 950.
        ].
        recoveredStep = 950 ifTrue: [
            (recoveredStack0) deleteClassName: (recoveredStack1).
            recoveredPC := 955.
        ].
        recoveredStep = 955 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 956.
        ].
        recoveredStep = 956 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 961.
        ].
        recoveredStep = 961 ifTrue: [
            recoveredStack1 := 'Deleted %1 from %2'.
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 967.
        ].
        recoveredStep = 967 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 970.
        ].
        recoveredStep = 970 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            (recoveredStack0) logClassNotice: (recoveredStack1).
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 982.
        ].
        recoveredStep = 982 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 987.
        ].
        recoveredStep = 987 ifTrue: [
            recoveredStack1 := 'Created %1 in %2'.
            recoveredPC := 990.
        ].
        recoveredStep = 990 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack2 := (recoveredStack2) signatureIn: (recoveredStack3).
            recoveredPC := 999.
        ].
        recoveredStep = 999 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 1002.
        ].
        recoveredStep = 1002 ifTrue: [
            recoveredStack3 := (recoveredStack3) signature.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            (recoveredStack0) logClassNotice: (recoveredStack1).
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 1014.
        ].
        recoveredStep = 1014 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

