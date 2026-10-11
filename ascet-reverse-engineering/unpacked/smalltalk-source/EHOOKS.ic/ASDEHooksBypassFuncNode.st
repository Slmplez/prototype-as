"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000210; bytecode file offset 0xf344"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
hasProcessReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := instVarProcessReferences.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"EHOOKS.ic method 0x20000530; bytecode file offset 0xf660"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
eHooksConfig
    | recoveredValue0 |
    recoveredValue0 := eHooksConfig.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000054c; bytecode file offset 0xf67c"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
funcNodeName
    | recoveredValue0 |
    recoveredValue0 := funcNodeName.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000570; bytecode file offset 0xf6a0"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
instVarProcessReferences
    | recoveredValue0 |
    recoveredValue0 := instVarProcessReferences.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000058c; bytecode file offset 0xf6bc"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
dispatchPoint
    | recoveredValue0 |
    recoveredValue0 := dispatchPoint.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200005a0; bytecode file offset 0xf6d8"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := period.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000684; bytecode file offset 0xf7cc"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
isProcess
    ^false
! !

"EHOOKS.ic method 0x20000740; bytecode file offset 0xf878"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
initInstVarProcessReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    instVarProcessReferences := recoveredValue1.
    ^self
! !

"EHOOKS.ic method 0x200008d8; bytecode file offset 0xfa14"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) instVarProcessReferences: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x20000998; bytecode file offset 0xfad0"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
addProcess: recoveredArg1 instVarAlias: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) aliasName.
    recoveredValue2 := recoveredArg2.
    (self) addProcessAlias: (recoveredValue1) instVarAlias: (recoveredValue2).
    ^self
! !

"EHOOKS.ic method 0x20000b04; bytecode file offset 0xfc34"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
eHooksConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eHooksConfig := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b20; bytecode file offset 0xfc58"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
funcNodeName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    funcNodeName := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b4c; bytecode file offset 0xfc7c"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
instVarProcessReferences: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instVarProcessReferences := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b60; bytecode file offset 0xfc98"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
dispatchPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dispatchPoint := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000b84; bytecode file offset 0xfcb4"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
period: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    period := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x200010a0; bytecode file offset 0x101dc"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
addProcessAlias: recoveredArg1 instVarAlias: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := instVarProcessReferences.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) copyWith: (recoveredValue4).
    instVarProcessReferences := recoveredValue5.
    ^self
! !

"EHOOKS.ic method 0x20001134; bytecode file offset 0x10274"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
store
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000fc0Arg1 | 
    | block28000fc0Value0 block28000fc0Value1 |
    block28000fc0Value0 := block28000fc0Arg1.
    block28000fc0Value1 := (block28000fc0Value0) writeASCETConfigFile.
    block28000fc0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"EHOOKS.ic method 0x20001994; bytecode file offset 0x10af4"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
changePeriod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'has to be of type string or nil'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) period: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) store.
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

"EHOOKS.ic method 0x200019b0; bytecode file offset 0x10af4"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
changeDispatchPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'has to be of type string or nil'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) dispatchPoint: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) store.
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

"EHOOKS.ic method 0x200021b8; bytecode file offset 0x112f4"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
shiftDownIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := instVarProcessReferences.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := instVarProcessReferences.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200021f4; bytecode file offset 0x1132c"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
shiftUpIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := instVarProcessReferences.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200023b8; bytecode file offset 0x11504"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
instVarProcessReferenceStringFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasAsIdString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := [
    ''
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasAsIdString.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20002a18; bytecode file offset 0x11b58"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
deleteProcessIndex: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := instVarProcessReferences.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            instVarProcessReferences := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) store.
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

"EHOOKS.ic method 0x20003114; bytecode file offset 0x1227c"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
instVarProcessesForProject: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71575'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) processInstVars.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceVariables.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block28001464Arg1 | 
    | block28001464Stack0 block28001464Stack1 block28001464Stack2 block28001464Stack3 block28001464PC block28001464Step block28001464Done block28001464Result |
    block28001464Stack0 := self.
    block28001464PC := 4.
    block28001464Done := false.
    [block28001464Done not] whileTrue: [
        block28001464Step := block28001464PC.
        block28001464Step = 4 ifTrue: [
            block28001464Stack1 := false.
            block28001464PC := 5.
        ].
        block28001464Step = 5 ifTrue: [
            block28001464Stack2 := block28001464Arg1.
            block28001464PC := 6.
        ].
        block28001464Step = 6 ifTrue: [
            block28001464Stack2 := (block28001464Stack2) isPrimitive.
            block28001464PC := 8.
        ].
        block28001464Step = 8 ifTrue: [
            (block28001464Stack2) ifTrue: [block28001464PC := 17] ifFalse: [block28001464PC := 12].
        ].
        block28001464Step = 12 ifTrue: [
            block28001464PC := 13.
        ].
        block28001464Step = 13 ifTrue: [
            block28001464Stack1 := block28001464Arg1.
            block28001464PC := 14.
        ].
        block28001464Step = 14 ifTrue: [
            block28001464Stack1 := (block28001464Stack1) sgClass.
            block28001464PC := 16.
        ].
        block28001464Step = 16 ifTrue: [
            block28001464Stack1 := (block28001464Stack1) isNil.
            block28001464PC := 17.
        ].
        block28001464Step = 17 ifTrue: [
            block28001464Result := block28001464Stack1.
            block28001464Done := true.
        ].
    ].
    block28001464Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarProcessesForProject: (recoveredStack1) processInstVars: (recoveredStack2) removeMissing: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) ctProcessesForProject: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20003320; bytecode file offset 0x12460"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := instVarProcessReferences.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6Stack6 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := 1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) at: (recoveredBlock6Stack3).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) includesKey: (recoveredBlock6Stack2).
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack1) ifTrue: [recoveredBlock6PC := 24] ifFalse: [recoveredBlock6PC := 37].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := 1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 30.
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack5 := 1.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) at: (recoveredBlock6Stack5).
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) at: (recoveredBlock6Stack4).
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) put: (recoveredBlock6Stack3).
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            recoveredBlock6Stack4 := 2.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) at: (recoveredBlock6Stack4).
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesKey: (recoveredBlock6Stack3).
            recoveredBlock6PC := 46.
        ].
        recoveredBlock6Step = 46 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 50] ifFalse: [recoveredBlock6PC := 64].
        ].
        recoveredBlock6Step = 50 ifTrue: [
            recoveredBlock6PC := 51.
        ].
        recoveredBlock6Step = 51 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 52.
        ].
        recoveredBlock6Step = 52 ifTrue: [
            recoveredBlock6Stack2 := 2.
            recoveredBlock6PC := 54.
        ].
        recoveredBlock6Step = 54 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 57.
        ].
        recoveredBlock6Step = 57 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack5 := 2.
            recoveredBlock6PC := 60.
        ].
        recoveredBlock6Step = 60 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) at: (recoveredBlock6Stack5).
            recoveredBlock6PC := 61.
        ].
        recoveredBlock6Step = 61 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) at: (recoveredBlock6Stack4).
            recoveredBlock6PC := 62.
        ].
        recoveredBlock6Step = 62 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) put: (recoveredBlock6Stack3).
            recoveredBlock6PC := 64.
        ].
        recoveredBlock6Step = 64 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x20003964; bytecode file offset 0x12ac4"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
ctProcessesForProject: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('Kk') == ('Call_71575').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := instVarProcessReferences.
    recoveredValue4 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Local2 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := 1.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) at: (recoveredBlock18Stack2).
            recoveredBlock18PC := 29.
        ].
        recoveredBlock18Step = 29 ifTrue: [
            recoveredBlock18Local2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 30.
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Local2.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            recoveredBlock18Stack3 := 'dummy'.
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) = (recoveredBlock18Stack3).
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            (recoveredBlock18Stack2) ifTrue: [recoveredBlock18PC := 38] ifFalse: [recoveredBlock18PC := 78].
        ].
        recoveredBlock18Step = 38 ifTrue: [
            recoveredBlock18PC := 39.
        ].
        recoveredBlock18Step = 39 ifTrue: [
            recoveredBlock18Stack1 := recoveredArg1.
            recoveredBlock18PC := 42.
        ].
        recoveredBlock18Step = 42 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 43.
        ].
        recoveredBlock18Step = 43 ifTrue: [
            recoveredBlock18Stack3 := 2.
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) at: (recoveredBlock18Stack3).
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) methodAliasName: (recoveredBlock18Stack2).
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 51.
        ].
        recoveredBlock18Step = 51 ifTrue: [
            (recoveredBlock18Stack1 == nil) ifTrue: [recoveredBlock18PC := 68] ifFalse: [recoveredBlock18PC := 54].
        ].
        recoveredBlock18Step = 54 ifTrue: [
            recoveredBlock18Stack1 := recoveredLocal1.
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack2 := Array.
            recoveredBlock18PC := 59.
        ].
        recoveredBlock18Step = 59 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Local2.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack4 := recoveredBlock18Local1.
            recoveredBlock18PC := 61.
        ].
        recoveredBlock18Step = 61 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) with: (recoveredBlock18Stack3) with: (recoveredBlock18Stack4).
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) add: (recoveredBlock18Stack2).
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 68 ifTrue: [
            recoveredBlock18Stack1 := instVarProcessReferences.
            recoveredBlock18PC := 70.
        ].
        recoveredBlock18Step = 70 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 71.
        ].
        recoveredBlock18Step = 71 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) copyWithout: (recoveredBlock18Stack2).
            recoveredBlock18PC := 73.
        ].
        recoveredBlock18Step = 73 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Stack1.
            recoveredBlock18PC := 74.
        ].
        recoveredBlock18Step = 74 ifTrue: [
            instVarProcessReferences := recoveredBlock18Stack2.
            recoveredBlock18PC := 76.
        ].
        recoveredBlock18Step = 76 ifTrue: [
            recoveredBlock18Stack2 := nil.
            recoveredBlock18PC := 77.
        ].
        recoveredBlock18Step = 77 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack2.
            recoveredBlock18PC := 78.
        ].
        recoveredBlock18Step = 78 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"EHOOKS.ic method 0x20003a8c; bytecode file offset 0x12bf0"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
extendedLabel
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) funcNodeName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) dispatchPoint.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ' ('.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := '+'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 50] ifFalse: [recoveredLocal1 := nil. recoveredPC := 79]] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20003c6c; bytecode file offset 0x12dc0"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
addProcess: recoveredArg1 instVarAlias: recoveredArg2 afterIndex: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := instVarProcessReferences.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            instVarProcessReferences := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := instVarProcessReferences.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) min: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := instVarProcessReferences.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := instVarProcessReferences.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := instVarProcessReferences.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            instVarProcessReferences := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWith: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            instVarProcessReferences := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20003cf8; bytecode file offset 0x12e50"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
processReferencesForProject: recoveredArg1 processInstVars: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Kk') == ('Call_71575').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) instVarProcessesForProject: (recoveredValue3) processInstVars: (recoveredValue4) removeMissing: (false).
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Stack0 recoveredBlock26Stack1 recoveredBlock26Stack2 recoveredBlock26Stack3 recoveredBlock26Stack4 recoveredBlock26PC recoveredBlock26Step recoveredBlock26Done recoveredBlock26Result |
    recoveredBlock26Stack0 := self.
    recoveredBlock26PC := 32.
    recoveredBlock26Done := false.
    [recoveredBlock26Done not] whileTrue: [
        recoveredBlock26Step := recoveredBlock26PC.
        recoveredBlock26Step = 32 ifTrue: [
            recoveredBlock26Stack1 := nil.
            recoveredBlock26PC := 33.
        ].
        recoveredBlock26Step = 33 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 34.
        ].
        recoveredBlock26Step = 34 ifTrue: [
            recoveredBlock26Stack3 := 1.
            recoveredBlock26PC := 36.
        ].
        recoveredBlock26Step = 36 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) at: (recoveredBlock26Stack3).
            recoveredBlock26PC := 38.
        ].
        recoveredBlock26Step = 38 ifTrue: [
            (recoveredBlock26Stack2 == nil) ifTrue: [recoveredBlock26PC := 61] ifFalse: [recoveredBlock26PC := 42].
        ].
        recoveredBlock26Step = 42 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 43.
        ].
        recoveredBlock26Step = 43 ifTrue: [
            recoveredBlock26Stack3 := 2.
            recoveredBlock26PC := 45.
        ].
        recoveredBlock26Step = 45 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) at: (recoveredBlock26Stack3).
            recoveredBlock26PC := 47.
        ].
        recoveredBlock26Step = 47 ifTrue: [
            (recoveredBlock26Stack2 == nil) ifTrue: [recoveredBlock26PC := 61] ifFalse: [recoveredBlock26PC := 50].
        ].
        recoveredBlock26Step = 50 ifTrue: [
            recoveredBlock26PC := 51.
        ].
        recoveredBlock26Step = 51 ifTrue: [
            recoveredBlock26Stack1 := recoveredLocal1.
            recoveredBlock26PC := 54.
        ].
        recoveredBlock26Step = 54 ifTrue: [
            recoveredBlock26Stack2 := recoveredBlock26Arg1.
            recoveredBlock26PC := 55.
        ].
        recoveredBlock26Step = 55 ifTrue: [
            recoveredBlock26Stack3 := 2.
            recoveredBlock26PC := 57.
        ].
        recoveredBlock26Step = 57 ifTrue: [
            recoveredBlock26Stack2 := (recoveredBlock26Stack2) at: (recoveredBlock26Stack3).
            recoveredBlock26PC := 59.
        ].
        recoveredBlock26Step = 59 ifTrue: [
            recoveredBlock26Stack1 := (recoveredBlock26Stack1) add: (recoveredBlock26Stack2).
            recoveredBlock26PC := 61.
        ].
        recoveredBlock26Step = 61 ifTrue: [
            recoveredBlock26Result := recoveredBlock26Stack1.
            recoveredBlock26Done := true.
        ].
    ].
    recoveredBlock26Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (self) ctProcessesForProject: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 recoveredBlock70Value2 recoveredBlock70Value3 |
    recoveredBlock70Value0 := recoveredLocal1.
    recoveredBlock70Value1 := recoveredBlock70Arg1.
    recoveredBlock70Value2 := (recoveredBlock70Value1) at: (2).
    recoveredBlock70Value3 := (recoveredBlock70Value0) add: (recoveredBlock70Value2).
    recoveredBlock70Value3
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue10) asArray.
    ^recoveredValue11
! !

"EHOOKS.ic method 0x20005464; bytecode file offset 0x145f0"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
instVarProcessReferenceLabelFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) processInstVars.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarProcessesForProject: (recoveredStack1) processInstVars: (recoveredStack2) removeMissing: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := ConditionalTable.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) noContentString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Stack0 recoveredBlock38Stack1 recoveredBlock38Stack2 recoveredBlock38Stack3 recoveredBlock38Stack4 recoveredBlock38Stack5 recoveredBlock38Stack6 recoveredBlock38PC recoveredBlock38Step recoveredBlock38Done recoveredBlock38Result |
    recoveredBlock38Stack0 := self.
    recoveredBlock38PC := 44.
    recoveredBlock38Done := false.
    [recoveredBlock38Done not] whileTrue: [
        recoveredBlock38Step := recoveredBlock38PC.
        recoveredBlock38Step = 44 ifTrue: [
            recoveredBlock38Stack1 := false.
            recoveredBlock38PC := 45.
        ].
        recoveredBlock38Step = 45 ifTrue: [
            recoveredBlock38Stack2 := recoveredBlock38Arg1.
            recoveredBlock38PC := 46.
        ].
        recoveredBlock38Step = 46 ifTrue: [
            recoveredBlock38Stack3 := 1.
            recoveredBlock38PC := 48.
        ].
        recoveredBlock38Step = 48 ifTrue: [
            recoveredBlock38Stack4 := [
    ''
].
            recoveredBlock38PC := 50.
        ].
        recoveredBlock38Step = 50 ifTrue: [
            recoveredBlock38PC := 57.
        ].
        recoveredBlock38Step = 57 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) at: (recoveredBlock38Stack3) ifAbsent: (recoveredBlock38Stack4).
            recoveredBlock38PC := 59.
        ].
        recoveredBlock38Step = 59 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) aliasName.
            recoveredBlock38PC := 61.
        ].
        recoveredBlock38Step = 61 ifTrue: [
            recoveredBlock38Stack3 := recoveredArg1.
            recoveredBlock38PC := 64.
        ].
        recoveredBlock38Step = 64 ifTrue: [
            recoveredBlock38Stack4 := 1.
            recoveredBlock38PC := 66.
        ].
        recoveredBlock38Step = 66 ifTrue: [
            recoveredBlock38Stack5 := [
    ''
].
            recoveredBlock38PC := 68.
        ].
        recoveredBlock38Step = 68 ifTrue: [
            recoveredBlock38PC := 75.
        ].
        recoveredBlock38Step = 75 ifTrue: [
            recoveredBlock38Stack3 := (recoveredBlock38Stack3) at: (recoveredBlock38Stack4) ifAbsent: (recoveredBlock38Stack5).
            recoveredBlock38PC := 77.
        ].
        recoveredBlock38Step = 77 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) equals: (recoveredBlock38Stack3).
            recoveredBlock38PC := 79.
        ].
        recoveredBlock38Step = 79 ifTrue: [
            (recoveredBlock38Stack2) ifTrue: [recoveredBlock38PC := 82] ifFalse: [recoveredBlock38PC := 117].
        ].
        recoveredBlock38Step = 82 ifTrue: [
            recoveredBlock38PC := 83.
        ].
        recoveredBlock38Step = 83 ifTrue: [
            recoveredBlock38Stack1 := recoveredBlock38Arg1.
            recoveredBlock38PC := 84.
        ].
        recoveredBlock38Step = 84 ifTrue: [
            recoveredBlock38Stack2 := 2.
            recoveredBlock38PC := 86.
        ].
        recoveredBlock38Step = 86 ifTrue: [
            recoveredBlock38Stack3 := [
    ''
].
            recoveredBlock38PC := 88.
        ].
        recoveredBlock38Step = 88 ifTrue: [
            recoveredBlock38PC := 95.
        ].
        recoveredBlock38Step = 95 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) at: (recoveredBlock38Stack2) ifAbsent: (recoveredBlock38Stack3).
            recoveredBlock38PC := 97.
        ].
        recoveredBlock38Step = 97 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) aliasName.
            recoveredBlock38PC := 99.
        ].
        recoveredBlock38Step = 99 ifTrue: [
            recoveredBlock38Stack2 := recoveredArg1.
            recoveredBlock38PC := 102.
        ].
        recoveredBlock38Step = 102 ifTrue: [
            recoveredBlock38Stack3 := 2.
            recoveredBlock38PC := 104.
        ].
        recoveredBlock38Step = 104 ifTrue: [
            recoveredBlock38Stack4 := [
    ''
].
            recoveredBlock38PC := 106.
        ].
        recoveredBlock38Step = 106 ifTrue: [
            recoveredBlock38PC := 113.
        ].
        recoveredBlock38Step = 113 ifTrue: [
            recoveredBlock38Stack2 := (recoveredBlock38Stack2) at: (recoveredBlock38Stack3) ifAbsent: (recoveredBlock38Stack4).
            recoveredBlock38PC := 115.
        ].
        recoveredBlock38Step = 115 ifTrue: [
            recoveredBlock38Stack1 := (recoveredBlock38Stack1) equals: (recoveredBlock38Stack2).
            recoveredBlock38PC := 117.
        ].
        recoveredBlock38Step = 117 ifTrue: [
            recoveredBlock38Result := recoveredBlock38Stack1.
            recoveredBlock38Done := true.
        ].
    ].
    recoveredBlock38Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock118Value0 recoveredBlock118Value1 |
    recoveredBlock118Value0 := ConditionalTable.
    recoveredBlock118Value1 := (recoveredBlock118Value0) undefName.
    ^recoveredBlock118Value1
].
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := '/'.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200057a8; bytecode file offset 0x14920"
!ASDEHooksBypassFuncNode methodsFor: 'recovered'!
instVarProcessesForProject: recoveredArg1 processInstVars: recoveredArg2 removeMissing: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := ('Kk') == ('Call_71575').
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := OrderedCollection.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := instVarProcessReferences.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Local1 recoveredBlock24Local2 recoveredBlock24Local3 recoveredBlock24Local4 recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 33.
        ].
        recoveredBlock24Step = 33 ifTrue: [
            recoveredBlock24Stack2 := 1.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) at: (recoveredBlock24Stack2).
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Local4 := recoveredBlock24Stack1.
            recoveredBlock24PC := 40.
        ].
        recoveredBlock24Step = 40 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local4.
            recoveredBlock24PC := 44.
        ].
        recoveredBlock24Step = 44 ifTrue: [
            recoveredBlock24Stack3 := 'dummy'.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) ~= (recoveredBlock24Stack3).
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 50] ifFalse: [recoveredBlock24PC := 173].
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg2.
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            recoveredBlock24Stack2 := [:recoveredBlock24Block54Arg1 | 
    | recoveredBlock24Block54Value0 recoveredBlock24Block54Value1 recoveredBlock24Block54Value2 recoveredBlock24Block54Value3 |
    recoveredBlock24Block54Value0 := recoveredBlock24Block54Arg1.
    recoveredBlock24Block54Value1 := (recoveredBlock24Block54Value0) aliasName.
    recoveredBlock24Block54Value2 := recoveredBlock24Local4.
    recoveredBlock24Block54Value3 := (recoveredBlock24Block54Value1) = (recoveredBlock24Block54Value2).
    recoveredBlock24Block54Value3
].
            recoveredBlock24PC := 68.
        ].
        recoveredBlock24Step = 68 ifTrue: [
            recoveredBlock24Stack3 := [].
            recoveredBlock24PC := 70.
        ].
        recoveredBlock24Step = 70 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) detect: (recoveredBlock24Stack2) ifNone: (recoveredBlock24Stack3).
            recoveredBlock24PC := 72.
        ].
        recoveredBlock24Step = 72 ifTrue: [
            recoveredBlock24Local3 := recoveredBlock24Stack1.
            recoveredBlock24PC := 75.
        ].
        recoveredBlock24Step = 75 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local3.
            recoveredBlock24PC := 78.
        ].
        recoveredBlock24Step = 78 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 119] ifFalse: [recoveredBlock24PC := 82].
        ].
        recoveredBlock24Step = 82 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local3.
            recoveredBlock24PC := 85.
        ].
        recoveredBlock24Step = 85 ifTrue: [
            recoveredBlock24Stack2 := [:block28001878Arg1 | 
    nil
].
            recoveredBlock24PC := 87.
        ].
        recoveredBlock24Step = 87 ifTrue: [
            recoveredBlock24PC := 92.
        ].
        recoveredBlock24Step = 92 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) sgClassIfUndefined: (recoveredBlock24Stack2).
            recoveredBlock24PC := 94.
        ].
        recoveredBlock24Step = 94 ifTrue: [
            recoveredBlock24Local2 := recoveredBlock24Stack1.
            recoveredBlock24PC := 97.
        ].
        recoveredBlock24Step = 97 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 100.
        ].
        recoveredBlock24Step = 100 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 119] ifFalse: [recoveredBlock24PC := 104].
        ].
        recoveredBlock24Step = 104 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 107.
        ].
        recoveredBlock24Step = 107 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 110.
        ].
        recoveredBlock24Step = 110 ifTrue: [
            recoveredBlock24Stack3 := 2.
            recoveredBlock24PC := 112.
        ].
        recoveredBlock24Step = 112 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) at: (recoveredBlock24Stack3).
            recoveredBlock24PC := 114.
        ].
        recoveredBlock24Step = 114 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) methodAliasName: (recoveredBlock24Stack2).
            recoveredBlock24PC := 116.
        ].
        recoveredBlock24Step = 116 ifTrue: [
            recoveredBlock24Local1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 119.
        ].
        recoveredBlock24Step = 119 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local3.
            recoveredBlock24PC := 122.
        ].
        recoveredBlock24Step = 122 ifTrue: [
            (recoveredBlock24Stack1 == nil) ifTrue: [recoveredBlock24PC := 140] ifFalse: [recoveredBlock24PC := 126].
        ].
        recoveredBlock24Step = 126 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Local2.
            recoveredBlock24PC := 129.
        ].
        recoveredBlock24Step = 129 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) notNil.
            recoveredBlock24PC := 130.
        ].
        recoveredBlock24Step = 130 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Local1.
            recoveredBlock24PC := 133.
        ].
        recoveredBlock24Step = 133 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) isNil.
            recoveredBlock24PC := 134.
        ].
        recoveredBlock24Step = 134 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) & (recoveredBlock24Stack2).
            recoveredBlock24PC := 136.
        ].
        recoveredBlock24Step = 136 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 140] ifFalse: [recoveredBlock24PC := 158].
        ].
        recoveredBlock24Step = 140 ifTrue: [
            recoveredBlock24Stack1 := recoveredArg3.
            recoveredBlock24PC := 143.
        ].
        recoveredBlock24Step = 143 ifTrue: [
            (recoveredBlock24Stack1) ifTrue: [recoveredBlock24PC := 146] ifFalse: [recoveredBlock24PC := 158].
        ].
        recoveredBlock24Step = 146 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 149.
        ].
        recoveredBlock24Step = 149 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 152.
        ].
        recoveredBlock24Step = 152 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) add: (recoveredBlock24Stack2).
            recoveredBlock24PC := 154.
        ].
        recoveredBlock24Step = 154 ifTrue: [
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 158 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal2.
            recoveredBlock24PC := 161.
        ].
        recoveredBlock24Step = 161 ifTrue: [
            recoveredBlock24Stack2 := Array.
            recoveredBlock24PC := 163.
        ].
        recoveredBlock24Step = 163 ifTrue: [
            recoveredBlock24Stack3 := recoveredBlock24Local3.
            recoveredBlock24PC := 166.
        ].
        recoveredBlock24Step = 166 ifTrue: [
            recoveredBlock24Stack4 := recoveredBlock24Local1.
            recoveredBlock24PC := 169.
        ].
        recoveredBlock24Step = 169 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) with: (recoveredBlock24Stack3) with: (recoveredBlock24Stack4).
            recoveredBlock24PC := 171.
        ].
        recoveredBlock24Step = 171 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) add: (recoveredBlock24Stack2).
            recoveredBlock24PC := 173.
        ].
        recoveredBlock24Step = 173 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [:recoveredBlock179Arg1 | 
    | recoveredBlock179Value0 recoveredBlock179Value1 recoveredBlock179Value2 recoveredBlock179Value3 |
    recoveredBlock179Value0 := instVarProcessReferences.
    recoveredBlock179Value1 := recoveredBlock179Arg1.
    recoveredBlock179Value2 := (recoveredBlock179Value0) copyWithout: (recoveredBlock179Value1).
    recoveredBlock179Value3 := recoveredBlock179Value2.
    instVarProcessReferences := recoveredBlock179Value3.
    recoveredBlock179Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

