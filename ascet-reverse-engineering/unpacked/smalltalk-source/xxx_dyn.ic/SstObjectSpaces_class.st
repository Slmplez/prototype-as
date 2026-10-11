"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001288; bytecode file offset 0x626a4"
!SstObjectSpaces class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001378; bytecode file offset 0x626a4"
!SstObjectSpaces class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20002958; bytecode file offset 0x63b1c"
!SstObjectSpaces class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x2000318c; bytecode file offset 0x64298"
!SstObjectSpaces class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := SstApplicationContext.
    (recoveredValue0) clearAll.
    ^self
! !

"xxx_dyn.ic method 0x2000319c; bytecode file offset 0x64298"
!SstObjectSpaces class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := SstApplicationContext.
    (recoveredValue0) cleanUpOnRestart.
    ^self
! !

"xxx_dyn.ic method 0x200031bc; bytecode file offset 0x64298"
!SstObjectSpaces class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := SstApplicationContext.
    (recoveredValue0) startUpOnRestart.
    ^self
! !

"xxx_dyn.ic method 0x20018834; bytecode file offset 0x79c2c"
!SstObjectSpaces class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b298Arg1 | 
    | block2800b298Stack0 block2800b298Stack1 block2800b298Stack2 block2800b298Stack3 block2800b298Stack4 block2800b298PC block2800b298Step block2800b298Done block2800b298Result |
    block2800b298Stack0 := self.
    block2800b298PC := 4.
    block2800b298Done := false.
    [block2800b298Done not] whileTrue: [
        block2800b298Step := block2800b298PC.
        block2800b298Step = 4 ifTrue: [
            block2800b298Stack1 := block2800b298Arg1.
            block2800b298PC := 5.
        ].
        block2800b298Step = 5 ifTrue: [
            block2800b298Stack2 := 'setupAfterLoad'.
            block2800b298PC := 7.
        ].
        block2800b298Step = 7 ifTrue: [
            block2800b298Stack1 := (block2800b298Stack1) respondsTo: (block2800b298Stack2).
            block2800b298PC := 8.
        ].
        block2800b298Step = 8 ifTrue: [
            (block2800b298Stack1) ifTrue: [block2800b298PC := 12] ifFalse: [block2800b298PC := 15].
        ].
        block2800b298Step = 12 ifTrue: [
            block2800b298Stack1 := block2800b298Arg1.
            block2800b298PC := 13.
        ].
        block2800b298Step = 13 ifTrue: [
            (block2800b298Stack1) setupAfterLoad.
            block2800b298PC := 15.
        ].
        block2800b298Step = 15 ifTrue: [
            block2800b298Stack1 := nil.
            block2800b298PC := 16.
        ].
        block2800b298Step = 16 ifTrue: [
            block2800b298Stack2 := block2800b298Arg1.
            block2800b298PC := 17.
        ].
        block2800b298Step = 17 ifTrue: [
            block2800b298Stack2 := (block2800b298Stack2) class.
            block2800b298PC := 18.
        ].
        block2800b298Step = 18 ifTrue: [
            block2800b298Stack3 := 'setupAfterLoadNonInherited'.
            block2800b298PC := 20.
        ].
        block2800b298Step = 20 ifTrue: [
            block2800b298Stack2 := (block2800b298Stack2) includesSelector: (block2800b298Stack3).
            block2800b298PC := 22.
        ].
        block2800b298Step = 22 ifTrue: [
            (block2800b298Stack2) ifTrue: [block2800b298PC := 26] ifFalse: [block2800b298PC := 30].
        ].
        block2800b298Step = 26 ifTrue: [
            block2800b298PC := 27.
        ].
        block2800b298Step = 27 ifTrue: [
            block2800b298Stack1 := block2800b298Arg1.
            block2800b298PC := 28.
        ].
        block2800b298Step = 28 ifTrue: [
            block2800b298Stack1 := (block2800b298Stack1) setupAfterLoadNonInherited.
            block2800b298PC := 30.
        ].
        block2800b298Step = 30 ifTrue: [
            block2800b298Result := block2800b298Stack1.
            block2800b298Done := true.
        ].
    ].
    block2800b298Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018b04; bytecode file offset 0x79c2c"
!SstObjectSpaces class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b568Arg1 | 
    | block2800b568Stack0 block2800b568Stack1 block2800b568Stack2 block2800b568Stack3 block2800b568Stack4 block2800b568PC block2800b568Step block2800b568Done block2800b568Result |
    block2800b568Stack0 := self.
    block2800b568PC := 4.
    block2800b568Done := false.
    [block2800b568Done not] whileTrue: [
        block2800b568Step := block2800b568PC.
        block2800b568Step = 4 ifTrue: [
            block2800b568Stack1 := block2800b568Arg1.
            block2800b568PC := 5.
        ].
        block2800b568Step = 5 ifTrue: [
            block2800b568Stack2 := 'cleanUpBeforeRemove'.
            block2800b568PC := 7.
        ].
        block2800b568Step = 7 ifTrue: [
            block2800b568Stack1 := (block2800b568Stack1) respondsTo: (block2800b568Stack2).
            block2800b568PC := 8.
        ].
        block2800b568Step = 8 ifTrue: [
            (block2800b568Stack1) ifTrue: [block2800b568PC := 12] ifFalse: [block2800b568PC := 15].
        ].
        block2800b568Step = 12 ifTrue: [
            block2800b568Stack1 := block2800b568Arg1.
            block2800b568PC := 13.
        ].
        block2800b568Step = 13 ifTrue: [
            (block2800b568Stack1) cleanUpBeforeRemove.
            block2800b568PC := 15.
        ].
        block2800b568Step = 15 ifTrue: [
            block2800b568Stack1 := nil.
            block2800b568PC := 16.
        ].
        block2800b568Step = 16 ifTrue: [
            block2800b568Stack2 := block2800b568Arg1.
            block2800b568PC := 17.
        ].
        block2800b568Step = 17 ifTrue: [
            block2800b568Stack2 := (block2800b568Stack2) class.
            block2800b568PC := 18.
        ].
        block2800b568Step = 18 ifTrue: [
            block2800b568Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b568PC := 20.
        ].
        block2800b568Step = 20 ifTrue: [
            block2800b568Stack2 := (block2800b568Stack2) includesSelector: (block2800b568Stack3).
            block2800b568PC := 22.
        ].
        block2800b568Step = 22 ifTrue: [
            (block2800b568Stack2) ifTrue: [block2800b568PC := 26] ifFalse: [block2800b568PC := 30].
        ].
        block2800b568Step = 26 ifTrue: [
            block2800b568PC := 27.
        ].
        block2800b568Step = 27 ifTrue: [
            block2800b568Stack1 := block2800b568Arg1.
            block2800b568PC := 28.
        ].
        block2800b568Step = 28 ifTrue: [
            block2800b568Stack1 := (block2800b568Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b568PC := 30.
        ].
        block2800b568Step = 30 ifTrue: [
            block2800b568Result := block2800b568Stack1.
            block2800b568Done := true.
        ].
    ].
    block2800b568Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20021db4; bytecode file offset 0x82ecc"
!SstObjectSpaces class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := 'localSpace'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 'SstObjectSpace'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) excludeMethod: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'Contexts'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := 'LookupTable new'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := 'SstApplicationContext'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) initializeClassVariable: (recoveredStack3) to: (recoveredStack4) inClassNamed: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 'SstLocalSpace'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) includeClassNamed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 'SstRemoteSpace'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) includeClassNamed: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'SstObjectHandle'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) includeClassNamed: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'SstGlobalHandle'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) includeClassNamed: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) globalNamespace.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'SstUIHandler'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'SstUIHandler'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := 'initialize'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack5 := 'SstApplicationContext'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) safeToReferenceClassByName: (recoveredStack3) inMethod: (recoveredStack4) inClassNamed: (recoveredStack5).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'SstUIHandler'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 'packagingRulesFor:'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack4 := 'SstObjectSpaces'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) safeToReferenceClassByName: (recoveredStack2) inClassMethod: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

