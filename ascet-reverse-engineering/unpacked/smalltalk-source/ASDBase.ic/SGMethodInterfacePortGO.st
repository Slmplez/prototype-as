"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001cc0; bytecode file offset 0x8ffcfc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
toggleTempVar
    ^self
! !

"ASDBase.ic method 0x20002a90; bytecode file offset 0x8ffcfc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
repositionDependent
    ^self
! !

"ASDBase.ic method 0x20004cf8; bytecode file offset 0x90206c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
tempVar: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005148; bytecode file offset 0x90206c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
unHighlightGODisplay: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005270; bytecode file offset 0x90206c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
prepareForReplaceWith: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000d964; bytecode file offset 0x90a4b8"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
addSequenceCallTo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200422f0; bytecode file offset 0x93ebac"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isDisplayedSelected
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := oldLineColor.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057788; bytecode file offset 0x956284"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
couldRepositionablePin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) couldRepositionablePin: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e008; bytecode file offset 0x95a8d4"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
connNamesVisible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := (recoveredValue0) someElement.
    recoveredValue2 := (recoveredValue1) connNameVisible.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005e018; bytecode file offset 0x95a8d4"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getPosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) getPosition.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006e6f0; bytecode file offset 0x96b41c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
interfaceGOs
    | recoveredValue0 |
    recoveredValue0 := interfaceGOs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ed84; bytecode file offset 0x96b8a0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
methodName
    | recoveredValue0 |
    recoveredValue0 := methodName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f510; bytecode file offset 0x96bf7c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
methodAliasName
    | recoveredValue0 |
    recoveredValue0 := methodAliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007b4f4; bytecode file offset 0x97c330"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
hasTempVar
    ^false
! !

"ASDBase.ic method 0x2007cc1c; bytecode file offset 0x97c330"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isSelectorPort
    ^false
! !

"ASDBase.ic method 0x20082590; bytecode file offset 0x97ee90"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getInterfaceElementGOAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008e720; bytecode file offset 0x98b0bc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isSetMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methodName.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) setMethod.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008e770; bytecode file offset 0x98b0bc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isGetMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methodName.
    recoveredValue1 := SGReservedNames.
    recoveredValue2 := (recoveredValue1) getMethod.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200930b8; bytecode file offset 0x98f97c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
removeInterfaceGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) remove: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200930c4; bytecode file offset 0x98f97c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
addInterfaceGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a4d8; bytecode file offset 0x997194"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
checkBlockForElement: recoveredArg1 datamodelManager: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) checkBlockForElement: (recoveredValue1) datamodelManager: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c55f8; bytecode file offset 0x9c1f64"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
methodName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5cf0; bytecode file offset 0x9c25bc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
methodAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodAliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d01ac; bytecode file offset 0x9cca68"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
previousAliasNameTable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('call_91199').
    recoveredValue1 := previousAliasNameTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d91f0; bytecode file offset 0x9d5b4c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
userVisibility: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) userVisibilityPins: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) connNamesVisible: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e2894; bytecode file offset 0x9df430"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isSetOrGetMethod
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSetMethod.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetMethod.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x200e79d4; bytecode file offset 0x9e42a0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
previousAliasNameTable: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('hw') == ('call_91199').
    recoveredValue1 := recoveredArg1.
    previousAliasNameTable := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200fa374; bytecode file offset 0x9f6c38"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    interfaceGOs := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200fe370; bytecode file offset 0x9fac64"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
initMethodInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodName.
    (self) methodName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) aliasName.
    (self) methodAliasName: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011998c; bytecode file offset 0xa16880"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateFontFormalNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7c44Arg1 | 
    | block280c7c44Value0 block280c7c44Value1 |
    block280c7c44Value0 := block280c7c44Arg1.
    block280c7c44Value1 := (block280c7c44Value0) updateFontFormalNames.
    block280c7c44Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20119a4c; bytecode file offset 0xa16880"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
resetAllIdentifiers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7d64Arg1 | 
    | block280c7d64Value0 block280c7d64Value1 |
    block280c7d64Value0 := block280c7d64Arg1.
    block280c7d64Value1 := (block280c7d64Value0) resetAllIdentifiers.
    block280c7d64Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x20119f74; bytecode file offset 0xa16880"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateFontActualNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c8520Arg1 | 
    | block280c8520Value0 block280c8520Value1 |
    block280c8520Value0 := block280c8520Arg1.
    block280c8520Value1 := (block280c8520Value0) updateFontActualNames.
    block280c8520Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201222a8; bytecode file offset 0xa1eb6c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
initForSGClassGO: recoveredArg1 lineStyle: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    super initRBLineStyle: (recoveredValue0) manager: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    interfaceGOs := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x201248a0; bytecode file offset 0xa21168"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
backReferences
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) at: ('interfaceGOs') put: ('manager').
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012a5d4; bytecode file offset 0xa26e94"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
changeStarted
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c97b0Arg1 | 
    | block280c97b0Value0 block280c97b0Value1 |
    block280c97b0Value0 := block280c97b0Arg1.
    block280c97b0Value1 := (block280c97b0Value0) changeStarted.
    block280c97b0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012a6dc; bytecode file offset 0xa26fa0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getSelectFlag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectFlag.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201498cc; bytecode file offset 0xa46190"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
connNamesVisibleFlag
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getConnectorNameGO.
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
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
            recoveredStack1 := (recoveredStack1) isVisible.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20167fe0; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
moveDelta: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) moveDelta: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20167ff0; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
userVisibilityPins: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) userVisibility: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20168000; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
unwrappedFromComposedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) unwrappedFromComposedGO: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20168010; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
hideNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) hideNames: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20168020; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
connNamesVisible: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) connNameVisible: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20168030; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
wrappedInComposedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) wrappedInComposedGO: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20168040; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
visible: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) visible: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20168050; bytecode file offset 0xa6490c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
showNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) showNames: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20174868; bytecode file offset 0xa7112c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getPointedGOForBlockEditor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_92964'.
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
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPointedGOFor: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20177784; bytecode file offset 0xa74044"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
setSelectFlag: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) basicGraphObject.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) setSelectFlag: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b1e98; bytecode file offset 0xaae760"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4124Arg1 | 
    | block280d4124Value0 block280d4124Value1 block280d4124Value2 |
    block280d4124Value0 := block280d4124Arg1.
    block280d4124Value1 := (block280d4124Value0) connectedGOs.
    block280d4124Value2 := (block280d4124Value1) notEmpty.
    block280d4124Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cfc5c; bytecode file offset 0xacc520"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
modelVisibility: recoveredArg1 method: recoveredArg2 element: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_2009405652').
    recoveredValue1 := interfaceGOs.
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) modelVisibility: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201d7b8c; bytecode file offset 0xad4454"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isVisibleForLogicModel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280d5a98Arg1 | 
    | block280d5a98Value0 block280d5a98Value1 |
    block280d5a98Value0 := block280d5a98Arg1.
    block280d5a98Value1 := (block280d5a98Value0) isVisibleForLogicModel.
    block280d5a98Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8218; bytecode file offset 0xad4ad8"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
modelVisibility
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d5abcArg1 | 
    | block280d5abcValue0 block280d5abcValue1 block280d5abcValue2 |
    block280d5abcValue0 := block280d5abcArg1.
    block280d5abcValue1 := (block280d5abcValue0) modelVisibility.
    block280d5abcValue2 := (block280d5abcValue1) not.
    block280d5abcValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    ^true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d8248; bytecode file offset 0xad4b0c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
hasConnectorNameGOs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d5ae0Arg1 | 
    | block280d5ae0Value0 block280d5ae0Value1 block280d5ae0Value2 |
    block280d5ae0Value0 := block280d5ae0Arg1.
    block280d5ae0Value1 := (block280d5ae0Value0) getConnectorNameGO.
    block280d5ae0Value2 := (block280d5ae0Value1) isString.
    block280d5ae0Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [
    ^true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e4514; bytecode file offset 0xae0de8"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
redisplayConnections
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) connectedGOs.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) basicGraphObject.
    (recoveredBlock5Value1) updateLineStyle.
    recoveredBlock5Value2 := (self) manager.
    recoveredBlock5Value3 := (recoveredBlock5Value2) controller.
    recoveredBlock5Value4 := recoveredBlock5Arg1.
    recoveredBlock5Value5 := (recoveredBlock5Value4) logicFrame.
    recoveredBlock5Value6 := (recoveredBlock5Value3) displayOneRect: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f12a0; bytecode file offset 0xaedb74"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
connNameVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) connNamesVisible.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) connNamesVisible: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280d7c7cArg1 | 
    | block280d7c7cValue0 block280d7c7cValue1 block280d7c7cValue2 |
    block280d7c7cValue0 := block280d7c7cArg1.
    block280d7c7cValue1 := (block280d7c7cValue0) getConnectorNameGO.
    block280d7c7cValue2 := (block280d7c7cValue1) frame.
    block280d7c7cValue2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f60f4; bytecode file offset 0xaf29b0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
includesWrappedGO: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesWrappedGO: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := true.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20203554; bytecode file offset 0xaffe18"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
displayOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super displayOn: (recoveredValue0).
    recoveredValue1 := interfaceGOs.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) basicGraphObject.
    recoveredBlock13Value2 := recoveredArg1.
    recoveredBlock13Value3 := (recoveredBlock13Value1) displayOn: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20206980; bytecode file offset 0xb03280"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
removeConnections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) removeConnections.
    recoveredBlock12Value3 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2020699c; bytecode file offset 0xb03280"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
giveRedisplayRects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) giveRedisplayRects.
    recoveredBlock12Value3 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202069b8; bytecode file offset 0xb03280"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
connectedGOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) connectedGOs.
    recoveredBlock12Value3 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2020f21c; bytecode file offset 0xb0badc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getPointedGOFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) basicGraphObject.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) getPointedGOFor: (recoveredBlock6Stack3).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 27] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20218260; bytecode file offset 0xb14b38"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
toggleConnNameVisibility
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) connNamesVisible.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) connNamesVisible: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280dacb8Arg1 | 
    | block280dacb8Value0 block280dacb8Value1 block280dacb8Value2 block280dacb8Value3 |
    block280dacb8Value0 := block280dacb8Arg1.
    (block280dacb8Value0) repositionConnectorNameGO.
    block280dacb8Value1 := block280dacb8Arg1.
    block280dacb8Value2 := (block280dacb8Value1) getConnectorNameGO.
    block280dacb8Value3 := (block280dacb8Value2) frame.
    block280dacb8Value3
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) displayRectsSetModified: (recoveredStack1).
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

"ASDBase.ic method 0x2021fd38; bytecode file offset 0xb1c604"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getCopyForChangeDisplayGOs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredLocal1.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) basicGraphObject.
    recoveredBlock12Value3 := (recoveredBlock12Value2) getCopyForChangeDisplayGOs.
    recoveredBlock12Value4 := (recoveredBlock12Value0) addAll: (recoveredBlock12Value3).
    recoveredBlock12Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2022d33c; bytecode file offset 0xb29bfc"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
moveTo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getPosition.
    recoveredValue2 := (recoveredValue0) - (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := interfaceGOs.
    recoveredValue4 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) getPosition.
    recoveredBlock15Value3 := recoveredLocal1.
    recoveredBlock15Value4 := (recoveredBlock15Value2) + (recoveredBlock15Value3).
    recoveredBlock15Value5 := (recoveredBlock15Value0) moveTo: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x202381ac; bytecode file offset 0xb34a78"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getMethodForSGClass: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalStructMethodsForGraphics.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (recoveredBlock16Value0) aliasName.
    recoveredBlock16Value2 := (self) methodAliasName.
    recoveredBlock16Value3 := (recoveredBlock16Value1) = (recoveredBlock16Value2).
    recoveredBlock16Value3
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023d3c8; bytecode file offset 0xb39cb0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isModelVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isModelVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isModelVisible.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 31] ifFalse: [recoveredBlock16PC := 28].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d3dc; bytecode file offset 0xb39cb0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isUserVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isUserVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isUserVisible.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 31] ifFalse: [recoveredBlock16PC := 28].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2023d3f0; bytecode file offset 0xb39cb0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isVisible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super isVisible.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := interfaceGOs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) isVisible.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 31] ifFalse: [recoveredBlock16PC := 28].
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Stack1 := false.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202430ec; bytecode file offset 0xb3f9b8"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getPortPositions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := interfaceGOs.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := interfaceGOs.
    recoveredValue5 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) getPosition.
    recoveredBlock15Value3 := (recoveredBlock15Value0) add: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20266c88; bytecode file offset 0xb6354c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
scale: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) getPosition.
    recoveredBlock6Value2 := recoveredArg2.
    recoveredBlock6Value3 := (recoveredBlock6Value1) - (recoveredBlock6Value2).
    recoveredLocal1 := recoveredBlock6Value3.
    recoveredBlock6Value4 := recoveredBlock6Arg1.
    recoveredBlock6Value5 := recoveredArg2.
    recoveredBlock6Value6 := recoveredLocal1.
    recoveredBlock6Value7 := recoveredArg1.
    recoveredBlock6Value8 := (recoveredBlock6Value6) * (recoveredBlock6Value7).
    recoveredBlock6Value9 := (recoveredBlock6Value8) rounded.
    recoveredBlock6Value10 := (recoveredBlock6Value5) + (recoveredBlock6Value9).
    recoveredBlock6Value11 := (recoveredBlock6Value4) moveBasicTo: (recoveredBlock6Value10).
    recoveredBlock6Value11
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2026a6bc; bytecode file offset 0xb66f88"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
checkConsistentVisibleFlag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e0184Arg1 | 
    | block280e0184Value0 block280e0184Value1 |
    block280e0184Value0 := block280e0184Arg1.
    block280e0184Value1 := (block280e0184Value0) isVisible.
    block280e0184Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280e01a8Arg1 | 
    | block280e01a8Value0 block280e01a8Value1 block280e01a8Value2 |
    block280e01a8Value0 := block280e01a8Arg1.
    block280e01a8Value1 := (block280e01a8Value0) isVisible.
    block280e01a8Value2 := (block280e01a8Value1) not.
    block280e01a8Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) visible: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202726f8; bytecode file offset 0xb6efb4"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
connectionPointFor: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := interfaceGOs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack4 := recoveredArg2.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) connectionPointFor: (recoveredBlock6Stack3) with: (recoveredBlock6Stack4).
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 35] ifFalse: [recoveredBlock6PC := 30].
        ].
        recoveredBlock6Step = 30 ifTrue: [
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x2027947c; bytecode file offset 0xb75d4c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
logicFrame
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) @ (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := interfaceGOs.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [:block280e1144Arg1 | 
    | block280e1144Value0 block280e1144Value1 |
    block280e1144Value0 := block280e1144Arg1.
    block280e1144Value1 := (block280e1144Value0) logicFrame.
    block280e1144Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) enclosingRectOf: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029fdcc; bytecode file offset 0xb9c6a0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
tempVarAvailable
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectorPort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVisible.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280e3b50Arg1 | 
    | block280e3b50Value0 block280e3b50Value1 block280e3b50Value2 |
    block280e3b50Value0 := block280e3b50Arg1.
    block280e3b50Value1 := (block280e3b50Value0) externalConnectorGO.
    block280e3b50Value2 := (block280e3b50Value1) isDirectAccess.
    block280e3b50Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGetMethod.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4ccc; bytecode file offset 0xbb15a4"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue2) , ('/').
    recoveredValue4 := (self) methodName.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    (recoveredValue0) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) cr.
    recoveredValue7 := interfaceGOs.
    recoveredValue8 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg1.
    recoveredBlock26Value2 := (recoveredBlock26Value0) printOn: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) cr.
    ^self
! !

"ASDBase.ic method 0x202df028; bytecode file offset 0xbdb8f8"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
interfaceConnectorNameGOs
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) basicGraphObject.
            recoveredBlock12PC := 20.
        ].
        recoveredBlock12Step = 20 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getConnectorNameGO.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isString.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 43] ifFalse: [recoveredBlock12PC := 34].
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) basicGraphObject.
            recoveredBlock12PC := 40.
        ].
        recoveredBlock12Step = 40 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) getConnectorNameGO.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 43.
        ].
        recoveredBlock12Step = 43 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2033fb40; bytecode file offset 0xc3c410"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateConnectorsWith: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_91199'.
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlockInterfacePinDictTable: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 |
    recoveredBlock26Value0 := recoveredLocal2.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := [:recoveredBlock26Block38Arg1 | 
    | recoveredBlock26Block38Value0 recoveredBlock26Block38Value1 recoveredBlock26Block38Value2 |
    recoveredBlock26Block38Value0 := recoveredBlock26Arg1.
    recoveredBlock26Block38Value1 := recoveredBlock26Block38Arg1.
    recoveredBlock26Block38Value2 := (self) updateBIE: (recoveredBlock26Block38Value0) forPinInfo: (recoveredBlock26Block38Value1).
    recoveredBlock26Block38Value2
].
    recoveredBlock26Value3 := (recoveredBlock26Value0) at: (recoveredBlock26Value1) ifPresent: (recoveredBlock26Value2).
    recoveredBlock26Value4 := recoveredBlock26Value3.
    recoveredLocal1 := recoveredBlock26Value4.
    recoveredBlock26Value3
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20362fdc; bytecode file offset 0xc5f8c4"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateBIE: recoveredArg1 forPinInfo: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_91199'.
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
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) identifier: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) setDirectionTo: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) getPosition.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) moveDelta: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) visible: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 5.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) connNameVisible: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := [
    false
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) tempVar: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037cf68; bytecode file offset 0xc7984c"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
checkTypeIDsFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_81458'.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodElements.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Local1 recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18Stack4 recoveredBlock18Stack5 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := nil.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) interfaceGOs.
            recoveredBlock18PC := 27.
        ].
        recoveredBlock18Step = 27 ifTrue: [
            recoveredBlock18Stack3 := [:recoveredBlock18Block27Arg1 | 
    | recoveredBlock18Block27Value0 recoveredBlock18Block27Value1 recoveredBlock18Block27Value2 recoveredBlock18Block27Value3 recoveredBlock18Block27Value4 |
    recoveredBlock18Block27Value0 := recoveredBlock18Block27Arg1.
    recoveredBlock18Block27Value1 := (recoveredBlock18Block27Value0) connectorAliasName.
    recoveredBlock18Block27Value2 := recoveredBlock18Arg1.
    recoveredBlock18Block27Value3 := (recoveredBlock18Block27Value2) aliasName.
    recoveredBlock18Block27Value4 := (recoveredBlock18Block27Value1) equals: (recoveredBlock18Block27Value3).
    recoveredBlock18Block27Value4
].
            recoveredBlock18PC := 45.
        ].
        recoveredBlock18Step = 45 ifTrue: [
            recoveredBlock18Stack4 := [].
            recoveredBlock18PC := 47.
        ].
        recoveredBlock18Step = 47 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) detect: (recoveredBlock18Stack3) ifNone: (recoveredBlock18Stack4).
            recoveredBlock18PC := 49.
        ].
        recoveredBlock18Step = 49 ifTrue: [
            recoveredBlock18Stack3 := recoveredBlock18Stack2.
            recoveredBlock18PC := 50.
        ].
        recoveredBlock18Step = 50 ifTrue: [
            recoveredBlock18Local1 := recoveredBlock18Stack3.
            recoveredBlock18PC := 53.
        ].
        recoveredBlock18Step = 53 ifTrue: [
            (recoveredBlock18Stack2 == nil) ifTrue: [recoveredBlock18PC := 67] ifFalse: [recoveredBlock18PC := 56].
        ].
        recoveredBlock18Step = 56 ifTrue: [
            recoveredBlock18PC := 57.
        ].
        recoveredBlock18Step = 57 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Local1.
            recoveredBlock18PC := 60.
        ].
        recoveredBlock18Step = 60 ifTrue: [
            recoveredBlock18Stack2 := recoveredBlock18Arg1.
            recoveredBlock18PC := 63.
        ].
        recoveredBlock18Step = 63 ifTrue: [
            recoveredBlock18Stack2 := (recoveredBlock18Stack2) typeID.
            recoveredBlock18PC := 65.
        ].
        recoveredBlock18Step = 65 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) typeID: (recoveredBlock18Stack2).
            recoveredBlock18PC := 67.
        ].
        recoveredBlock18Step = 67 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20398828; bytecode file offset 0xc95100"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateConnectorsWithPinPosArray: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Wrong PinPosArray size...'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) interfaceGOs.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) externalConnectorGO.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) setDirection: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) moveTo: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 26] ifFalse: [recoveredLocal1 := nil. recoveredPC := 69]] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) repositionDependent.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0514; bytecode file offset 0xcecdec"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
isConsistentForSGClass: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodAliasName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) additionalStructMethodsForGraphics.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 recoveredBlock22Value3 |
    recoveredBlock22Value0 := recoveredBlock22Arg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) aliasName.
    recoveredBlock22Value2 := (self) methodAliasName.
    recoveredBlock22Value3 := (recoveredBlock22Value1) = (recoveredBlock22Value2).
    recoveredBlock22Value3
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    ^false
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodParameters.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := [:recoveredBlock52Arg1 | 
    | recoveredBlock52Value0 recoveredBlock52Value1 recoveredBlock52Value2 recoveredBlock52Value3 |
    recoveredBlock52Value0 := (self) interfaceGOs.
    recoveredBlock52Value1 := [:recoveredBlock52Block60Arg1 | 
    | recoveredBlock52Block60Value0 recoveredBlock52Block60Value1 recoveredBlock52Block60Value2 recoveredBlock52Block60Value3 recoveredBlock52Block60Value4 |
    recoveredBlock52Block60Value0 := recoveredBlock52Block60Arg1.
    recoveredBlock52Block60Value1 := (recoveredBlock52Block60Value0) connectorAliasName.
    recoveredBlock52Block60Value2 := recoveredBlock52Arg1.
    recoveredBlock52Block60Value3 := (recoveredBlock52Block60Value2) aliasName.
    recoveredBlock52Block60Value4 := (recoveredBlock52Block60Value1) = (recoveredBlock52Block60Value3).
    recoveredBlock52Block60Value4
].
    recoveredBlock52Value2 := [
    ^false
].
    recoveredBlock52Value3 := (recoveredBlock52Value0) detect: (recoveredBlock52Value1) ifNone: (recoveredBlock52Value2).
    recoveredBlock52Value3
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040d338; bytecode file offset 0xd09c18"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
showUnconnectedPorts: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) getSGCallGO.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 35] ifFalse: [recoveredBlock5PC := 20].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isMethodSpecified.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 26].
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isConnected.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 35].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := interfaceGOs.
    recoveredValue3 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := false.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) getExternalConnectorGO.
            recoveredBlock40PC := 50.
        ].
        recoveredBlock40Step = 50 ifTrue: [
            recoveredBlock40Stack3 := recoveredBlock40Stack2.
            recoveredBlock40PC := 51.
        ].
        recoveredBlock40Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock40Stack3.
            recoveredBlock40PC := 54.
        ].
        recoveredBlock40Step = 54 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 73] ifFalse: [recoveredBlock40PC := 58].
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack2 := recoveredLocal1.
            recoveredBlock40PC := 61.
        ].
        recoveredBlock40Step = 61 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) basicGraphObject.
            recoveredBlock40PC := 63.
        ].
        recoveredBlock40Step = 63 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isSelectorPin.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 73] ifFalse: [recoveredBlock40PC := 68].
        ].
        recoveredBlock40Step = 68 ifTrue: [
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isConnected.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    recoveredValue4 := [
    | recoveredBlock74Value0 recoveredBlock74Value1 |
    recoveredBlock74Value0 := ('hw') == ('call_84627').
    recoveredBlock74Value1 := recoveredArg1.
    (self) userVisibility: (recoveredBlock74Value1).
    ^self
].
    (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    ^nil
! !

"ASDBase.ic method 0x204402d0; bytecode file offset 0xd3cbc0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
buildPinDictionary
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) interfaceGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 recoveredBlock11Value13 recoveredBlock11Value14 recoveredBlock11Value15 recoveredBlock11Value16 recoveredBlock11Value17 recoveredBlock11Value18 recoveredBlock11Value19 recoveredBlock11Value20 recoveredBlock11Value21 recoveredBlock11Value22 recoveredBlock11Value23 recoveredBlock11Value24 recoveredBlock11Value25 recoveredBlock11Value26 |
    recoveredBlock11Value0 := Array.
    recoveredBlock11Value1 := (recoveredBlock11Value0) new: (6).
    recoveredLocal1 := recoveredBlock11Value1.
    recoveredBlock11Value2 := recoveredLocal1.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) identifier.
    (recoveredBlock11Value2) at: (1) put: (recoveredBlock11Value4).
    recoveredBlock11Value5 := recoveredLocal1.
    recoveredBlock11Value6 := recoveredBlock11Arg1.
    recoveredBlock11Value7 := (recoveredBlock11Value6) getDirection.
    (recoveredBlock11Value5) at: (2) put: (recoveredBlock11Value7).
    recoveredBlock11Value8 := recoveredLocal1.
    recoveredBlock11Value9 := recoveredBlock11Arg1.
    recoveredBlock11Value10 := (recoveredBlock11Value9) getPosition.
    (recoveredBlock11Value8) at: (3) put: (recoveredBlock11Value10).
    recoveredBlock11Value11 := recoveredLocal1.
    recoveredBlock11Value12 := recoveredBlock11Arg1.
    recoveredBlock11Value13 := (recoveredBlock11Value12) externalConnectorGO.
    recoveredBlock11Value14 := (recoveredBlock11Value13) userVisibility.
    (recoveredBlock11Value11) at: (4) put: (recoveredBlock11Value14).
    recoveredBlock11Value15 := recoveredLocal1.
    recoveredBlock11Value16 := recoveredBlock11Arg1.
    recoveredBlock11Value17 := (recoveredBlock11Value16) connNameVisible.
    (recoveredBlock11Value15) at: (5) put: (recoveredBlock11Value17).
    recoveredBlock11Value18 := recoveredLocal1.
    recoveredBlock11Value19 := recoveredBlock11Arg1.
    recoveredBlock11Value20 := (recoveredBlock11Value19) externalConnectorGO.
    recoveredBlock11Value21 := (recoveredBlock11Value20) hasTempVar.
    (recoveredBlock11Value18) at: (6) put: (recoveredBlock11Value21).
    recoveredBlock11Value22 := recoveredLocal2.
    recoveredBlock11Value23 := recoveredBlock11Arg1.
    recoveredBlock11Value24 := (recoveredBlock11Value23) connectorAliasName.
    recoveredBlock11Value25 := recoveredLocal1.
    recoveredBlock11Value26 := (recoveredBlock11Value22) at: (recoveredBlock11Value24) put: (recoveredBlock11Value25).
    recoveredBlock11Value26
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2047f3a8; bytecode file offset 0xd7bc90"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getBlockInterfacePinDictTable: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) interfaceGOs.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Local1 recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) connectorAliasName.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack3 := [].
            recoveredBlock11PC := 27.
        ].
        recoveredBlock11Step = 27 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 32.
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 35.
        ].
        recoveredBlock11Step = 35 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 79] ifFalse: [recoveredBlock11PC := 38].
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 39.
        ].
        recoveredBlock11Step = 39 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) previousAliasNameTable.
            recoveredBlock11PC := 41.
        ].
        recoveredBlock11Step = 41 ifTrue: [
            (recoveredBlock11Stack1 == nil) ifTrue: [recoveredBlock11PC := 79] ifFalse: [recoveredBlock11PC := 44].
        ].
        recoveredBlock11Step = 44 ifTrue: [
            recoveredBlock11Stack1 := 'hw'.
            recoveredBlock11PC := 46.
        ].
        recoveredBlock11Step = 46 ifTrue: [
            recoveredBlock11Stack2 := 'call_91199'.
            recoveredBlock11PC := 48.
        ].
        recoveredBlock11Step = 48 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) == (recoveredBlock11Stack2).
            recoveredBlock11PC := 49.
        ].
        recoveredBlock11Step = 49 ifTrue: [
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 51.
        ].
        recoveredBlock11Step = 51 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) previousAliasNameTable.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 56.
        ].
        recoveredBlock11Step = 56 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) connectorAliasName.
            recoveredBlock11PC := 57.
        ].
        recoveredBlock11Step = 57 ifTrue: [
            recoveredBlock11Stack3 := [:recoveredBlock11Block57Arg1 | 
    | recoveredBlock11Block57Value0 recoveredBlock11Block57Value1 recoveredBlock11Block57Value2 recoveredBlock11Block57Value3 recoveredBlock11Block57Value4 |
    recoveredBlock11Block57Value0 := recoveredArg1.
    recoveredBlock11Block57Value1 := recoveredBlock11Block57Arg1.
    recoveredBlock11Block57Value2 := [].
    recoveredBlock11Block57Value3 := (recoveredBlock11Block57Value0) at: (recoveredBlock11Block57Value1) ifAbsent: (recoveredBlock11Block57Value2).
    recoveredBlock11Block57Value4 := recoveredBlock11Block57Value3.
    recoveredBlock11Local1 := recoveredBlock11Block57Value4.
    recoveredBlock11Block57Value3
].
            recoveredBlock11PC := 77.
        ].
        recoveredBlock11Step = 77 ifTrue: [
            (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifPresent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 79.
        ].
        recoveredBlock11Step = 79 ifTrue: [
            recoveredBlock11Stack1 := recoveredBlock11Local1.
            recoveredBlock11PC := 82.
        ].
        recoveredBlock11Step = 82 ifTrue: [
            (recoveredBlock11Stack1 ~~ nil) ifTrue: [recoveredBlock11PC := 101] ifFalse: [recoveredBlock11PC := 86].
        ].
        recoveredBlock11Step = 86 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg1.
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 92.
        ].
        recoveredBlock11Step = 92 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) connectorName.
            recoveredBlock11PC := 94.
        ].
        recoveredBlock11Step = 94 ifTrue: [
            recoveredBlock11Stack3 := [].
            recoveredBlock11PC := 96.
        ].
        recoveredBlock11Step = 96 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsent: (recoveredBlock11Stack3).
            recoveredBlock11PC := 98.
        ].
        recoveredBlock11Step = 98 ifTrue: [
            recoveredBlock11Local1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 101.
        ].
        recoveredBlock11Step = 101 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 102.
        ].
        recoveredBlock11Step = 102 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Local1.
            recoveredBlock11PC := 105.
        ].
        recoveredBlock11Step = 105 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 120] ifFalse: [recoveredBlock11PC := 108].
        ].
        recoveredBlock11Step = 108 ifTrue: [
            recoveredBlock11PC := 109.
        ].
        recoveredBlock11Step = 109 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 112.
        ].
        recoveredBlock11Step = 112 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 115.
        ].
        recoveredBlock11Step = 115 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Local1.
            recoveredBlock11PC := 118.
        ].
        recoveredBlock11Step = 118 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) put: (recoveredBlock11Stack3).
            recoveredBlock11PC := 120.
        ].
        recoveredBlock11Step = 120 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x205194d4; bytecode file offset 0xe15dec"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateConnectorsWithout: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_91199'.
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlockInterfacePinDictTable: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 |
    recoveredBlock26Value0 := recoveredLocal1.
    recoveredBlock26Value1 := recoveredBlock26Arg1.
    recoveredBlock26Value2 := [
    | recoveredBlock26Block38Local1 recoveredBlock26Block38Local2 recoveredBlock26Block38Stack0 recoveredBlock26Block38Stack1 recoveredBlock26Block38Stack2 recoveredBlock26Block38Stack3 recoveredBlock26Block38Stack4 recoveredBlock26Block38Stack5 recoveredBlock26Block38PC recoveredBlock26Block38Step recoveredBlock26Block38Done recoveredBlock26Block38Result |
    recoveredBlock26Block38Stack0 := self.
    recoveredBlock26Block38PC := 44.
    recoveredBlock26Block38Done := false.
    [recoveredBlock26Block38Done not] whileTrue: [
        recoveredBlock26Block38Step := recoveredBlock26Block38PC.
        recoveredBlock26Block38Step = 44 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 47.
        ].
        recoveredBlock26Block38Step = 47 ifTrue: [
            recoveredBlock26Block38Stack2 := manager.
            recoveredBlock26Block38PC := 49.
        ].
        recoveredBlock26Block38Step = 49 ifTrue: [
            recoveredBlock26Block38Stack2 := (recoveredBlock26Block38Stack2) getPosition.
            recoveredBlock26Block38PC := 51.
        ].
        recoveredBlock26Block38Step = 51 ifTrue: [
            recoveredBlock26Block38Stack3 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 54.
        ].
        recoveredBlock26Block38Step = 54 ifTrue: [
            recoveredBlock26Block38Stack3 := (recoveredBlock26Block38Stack3) getPosition.
            recoveredBlock26Block38PC := 56.
        ].
        recoveredBlock26Block38Step = 56 ifTrue: [
            recoveredBlock26Block38Stack2 := (recoveredBlock26Block38Stack2) - (recoveredBlock26Block38Stack3).
            recoveredBlock26Block38PC := 57.
        ].
        recoveredBlock26Block38Step = 57 ifTrue: [
            (recoveredBlock26Block38Stack1) moveDelta: (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 59.
        ].
        recoveredBlock26Block38Step = 59 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 62.
        ].
        recoveredBlock26Block38Step = 62 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) externalIsSelectorPin.
            recoveredBlock26Block38PC := 64.
        ].
        recoveredBlock26Block38Step = 64 ifTrue: [
            (recoveredBlock26Block38Stack1) ifTrue: [recoveredBlock26Block38PC := 68] ifFalse: [recoveredBlock26Block38PC := 76].
        ].
        recoveredBlock26Block38Step = 68 ifTrue: [
            recoveredBlock26Block38Stack1 := manager.
            recoveredBlock26Block38PC := 70.
        ].
        recoveredBlock26Block38Step = 70 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) topPortPosAndDir.
            recoveredBlock26Block38PC := 72.
        ].
        recoveredBlock26Block38Step = 72 ifTrue: [
            recoveredBlock26Block38Local2 := recoveredBlock26Block38Stack1.
            recoveredBlock26Block38PC := 73.
        ].
        recoveredBlock26Block38Step = 73 ifTrue: [
            recoveredBlock26Block38PC := 97.
        ].
        recoveredBlock26Block38Step = 76 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 79.
        ].
        recoveredBlock26Block38Step = 79 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) externalIsArgument.
            recoveredBlock26Block38PC := 81.
        ].
        recoveredBlock26Block38Step = 81 ifTrue: [
            (recoveredBlock26Block38Stack1) ifTrue: [recoveredBlock26Block38PC := 84] ifFalse: [recoveredBlock26Block38PC := 92].
        ].
        recoveredBlock26Block38Step = 84 ifTrue: [
            recoveredBlock26Block38Stack1 := manager.
            recoveredBlock26Block38PC := 86.
        ].
        recoveredBlock26Block38Step = 86 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) inPortPosAndDir.
            recoveredBlock26Block38PC := 88.
        ].
        recoveredBlock26Block38Step = 88 ifTrue: [
            recoveredBlock26Block38Local2 := recoveredBlock26Block38Stack1.
            recoveredBlock26Block38PC := 89.
        ].
        recoveredBlock26Block38Step = 89 ifTrue: [
            recoveredBlock26Block38PC := 97.
        ].
        recoveredBlock26Block38Step = 92 ifTrue: [
            recoveredBlock26Block38Stack1 := manager.
            recoveredBlock26Block38PC := 94.
        ].
        recoveredBlock26Block38Step = 94 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) outPortPosAndDir.
            recoveredBlock26Block38PC := 96.
        ].
        recoveredBlock26Block38Step = 96 ifTrue: [
            recoveredBlock26Block38Local2 := recoveredBlock26Block38Stack1.
            recoveredBlock26Block38PC := 97.
        ].
        recoveredBlock26Block38Step = 97 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 100.
        ].
        recoveredBlock26Block38Step = 100 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) externalConnectorGO.
            recoveredBlock26Block38PC := 102.
        ].
        recoveredBlock26Block38Step = 102 ifTrue: [
            recoveredBlock26Block38Stack2 := nil.
            recoveredBlock26Block38PC := 103.
        ].
        recoveredBlock26Block38Step = 103 ifTrue: [
            (recoveredBlock26Block38Stack1) identifier: (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 105.
        ].
        recoveredBlock26Block38Step = 105 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 108.
        ].
        recoveredBlock26Block38Step = 108 ifTrue: [
            recoveredBlock26Block38Stack2 := recoveredBlock26Block38Local2.
            recoveredBlock26Block38PC := 109.
        ].
        recoveredBlock26Block38Step = 109 ifTrue: [
            recoveredBlock26Block38Stack3 := 1.
            recoveredBlock26Block38PC := 111.
        ].
        recoveredBlock26Block38Step = 111 ifTrue: [
            recoveredBlock26Block38Stack2 := (recoveredBlock26Block38Stack2) at: (recoveredBlock26Block38Stack3).
            recoveredBlock26Block38PC := 113.
        ].
        recoveredBlock26Block38Step = 113 ifTrue: [
            recoveredBlock26Block38Stack3 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 116.
        ].
        recoveredBlock26Block38Step = 116 ifTrue: [
            recoveredBlock26Block38Stack3 := (recoveredBlock26Block38Stack3) getPosition.
            recoveredBlock26Block38PC := 118.
        ].
        recoveredBlock26Block38Step = 118 ifTrue: [
            recoveredBlock26Block38Stack2 := (recoveredBlock26Block38Stack2) - (recoveredBlock26Block38Stack3).
            recoveredBlock26Block38PC := 119.
        ].
        recoveredBlock26Block38Step = 119 ifTrue: [
            (recoveredBlock26Block38Stack1) moveDelta: (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 121.
        ].
        recoveredBlock26Block38Step = 121 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 124.
        ].
        recoveredBlock26Block38Step = 124 ifTrue: [
            recoveredBlock26Block38Stack2 := recoveredBlock26Block38Local2.
            recoveredBlock26Block38PC := 125.
        ].
        recoveredBlock26Block38Step = 125 ifTrue: [
            recoveredBlock26Block38Stack3 := 2.
            recoveredBlock26Block38PC := 127.
        ].
        recoveredBlock26Block38Step = 127 ifTrue: [
            recoveredBlock26Block38Stack2 := (recoveredBlock26Block38Stack2) at: (recoveredBlock26Block38Stack3).
            recoveredBlock26Block38PC := 129.
        ].
        recoveredBlock26Block38Step = 129 ifTrue: [
            (recoveredBlock26Block38Stack1) setDirectionTo: (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 131.
        ].
        recoveredBlock26Block38Step = 131 ifTrue: [
            recoveredBlock26Block38Stack1 := 'Hw'.
            recoveredBlock26Block38PC := 133.
        ].
        recoveredBlock26Block38Step = 133 ifTrue: [
            recoveredBlock26Block38Stack2 := 'call_87865'.
            recoveredBlock26Block38PC := 135.
        ].
        recoveredBlock26Block38Step = 135 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) == (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 136.
        ].
        recoveredBlock26Block38Step = 136 ifTrue: [
            recoveredBlock26Block38PC := 137.
        ].
        recoveredBlock26Block38Step = 137 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredArg1.
            recoveredBlock26Block38PC := 140.
        ].
        recoveredBlock26Block38Step = 140 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) values.
            recoveredBlock26Block38PC := 142.
        ].
        recoveredBlock26Block38Step = 142 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) someElement.
            recoveredBlock26Block38PC := 144.
        ].
        recoveredBlock26Block38Step = 144 ifTrue: [
            recoveredBlock26Block38Local1 := recoveredBlock26Block38Stack1.
            recoveredBlock26Block38PC := 145.
        ].
        recoveredBlock26Block38Step = 145 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 148.
        ].
        recoveredBlock26Block38Step = 148 ifTrue: [
            recoveredBlock26Block38Stack2 := recoveredBlock26Block38Local1.
            recoveredBlock26Block38PC := 149.
        ].
        recoveredBlock26Block38Step = 149 ifTrue: [
            (recoveredBlock26Block38Stack2 == nil) ifTrue: [recoveredBlock26Block38PC := 168] ifFalse: [recoveredBlock26Block38PC := 152].
        ].
        recoveredBlock26Block38Step = 152 ifTrue: [
            recoveredBlock26Block38Stack2 := recoveredBlock26Block38Local1.
            recoveredBlock26Block38PC := 153.
        ].
        recoveredBlock26Block38Step = 153 ifTrue: [
            recoveredBlock26Block38Stack3 := 4.
            recoveredBlock26Block38PC := 155.
        ].
        recoveredBlock26Block38Step = 155 ifTrue: [
            recoveredBlock26Block38Stack4 := [
    true
].
            recoveredBlock26Block38PC := 157.
        ].
        recoveredBlock26Block38Step = 157 ifTrue: [
            recoveredBlock26Block38PC := 162.
        ].
        recoveredBlock26Block38Step = 162 ifTrue: [
            recoveredBlock26Block38Stack2 := (recoveredBlock26Block38Stack2) at: (recoveredBlock26Block38Stack3) ifAbsent: (recoveredBlock26Block38Stack4).
            recoveredBlock26Block38PC := 164.
        ].
        recoveredBlock26Block38Step = 164 ifTrue: [
            recoveredBlock26Block38PC := 169.
        ].
        recoveredBlock26Block38Step = 168 ifTrue: [
            recoveredBlock26Block38Stack2 := true.
            recoveredBlock26Block38PC := 169.
        ].
        recoveredBlock26Block38Step = 169 ifTrue: [
            (recoveredBlock26Block38Stack1) visible: (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 171.
        ].
        recoveredBlock26Block38Step = 171 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 174.
        ].
        recoveredBlock26Block38Step = 174 ifTrue: [
            recoveredBlock26Block38Stack2 := true.
            recoveredBlock26Block38PC := 175.
        ].
        recoveredBlock26Block38Step = 175 ifTrue: [
            (recoveredBlock26Block38Stack1) connNameVisible: (recoveredBlock26Block38Stack2).
            recoveredBlock26Block38PC := 177.
        ].
        recoveredBlock26Block38Step = 177 ifTrue: [
            recoveredBlock26Block38Stack1 := recoveredBlock26Arg1.
            recoveredBlock26Block38PC := 180.
        ].
        recoveredBlock26Block38Step = 180 ifTrue: [
            recoveredBlock26Block38Stack1 := (recoveredBlock26Block38Stack1) updatePositionAndAlignForConnectorNameGO.
            recoveredBlock26Block38PC := 182.
        ].
        recoveredBlock26Block38Step = 182 ifTrue: [
            recoveredBlock26Block38Result := recoveredBlock26Block38Stack1.
            recoveredBlock26Block38Done := true.
        ].
    ].
    recoveredBlock26Block38Result
].
    recoveredBlock26Value3 := (recoveredBlock26Value0) at: (recoveredBlock26Value1) ifAbsent: (recoveredBlock26Value2).
    recoveredBlock26Value3
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20528408; bytecode file offset 0xe24d00"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
displaySelected
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDisplayedSelected.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := oldLineColor.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) lineColor: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGO.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 recoveredBlock47Value3 recoveredBlock47Value4 recoveredBlock47Value5 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := (recoveredBlock47Value0) identifier.
    recoveredBlock47Value2 := recoveredLocal4.
    recoveredBlock47Value3 := (recoveredBlock47Value2) selectedGO.
    recoveredBlock47Value4 := (recoveredBlock47Value3) identifier.
    recoveredBlock47Value5 := (recoveredBlock47Value1) = (recoveredBlock47Value4).
    recoveredBlock47Value5
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Stack0 recoveredBlock70Stack1 recoveredBlock70Stack2 recoveredBlock70Stack3 recoveredBlock70Stack4 recoveredBlock70PC recoveredBlock70Step recoveredBlock70Done recoveredBlock70Result |
    recoveredBlock70Stack0 := self.
    recoveredBlock70PC := 76.
    recoveredBlock70Done := false.
    [recoveredBlock70Done not] whileTrue: [
        recoveredBlock70Step := recoveredBlock70PC.
        recoveredBlock70Step = 76 ifTrue: [
            recoveredBlock70Stack1 := nil.
            recoveredBlock70PC := 77.
        ].
        recoveredBlock70Step = 77 ifTrue: [
            recoveredBlock70Stack2 := recoveredBlock70Arg1.
            recoveredBlock70PC := 78.
        ].
        recoveredBlock70Step = 78 ifTrue: [
            recoveredBlock70Stack2 := (recoveredBlock70Stack2) getExternalConnectorGO.
            recoveredBlock70PC := 80.
        ].
        recoveredBlock70Step = 80 ifTrue: [
            recoveredBlock70Stack3 := recoveredBlock70Stack2.
            recoveredBlock70PC := 81.
        ].
        recoveredBlock70Step = 81 ifTrue: [
            recoveredLocal3 := recoveredBlock70Stack3.
            recoveredBlock70PC := 84.
        ].
        recoveredBlock70Step = 84 ifTrue: [
            (recoveredBlock70Stack2 == nil) ifTrue: [recoveredBlock70PC := 97] ifFalse: [recoveredBlock70PC := 88].
        ].
        recoveredBlock70Step = 88 ifTrue: [
            recoveredBlock70PC := 89.
        ].
        recoveredBlock70Step = 89 ifTrue: [
            recoveredBlock70Stack1 := recoveredLocal3.
            recoveredBlock70PC := 92.
        ].
        recoveredBlock70Step = 92 ifTrue: [
            recoveredBlock70Stack2 := recoveredLocal1.
            recoveredBlock70PC := 95.
        ].
        recoveredBlock70Step = 95 ifTrue: [
            recoveredBlock70Stack1 := (recoveredBlock70Stack1) lineWidth: (recoveredBlock70Stack2).
            recoveredBlock70PC := 97.
        ].
        recoveredBlock70Step = 97 ifTrue: [
            recoveredBlock70Result := recoveredBlock70Stack1.
            recoveredBlock70Done := true.
        ].
    ].
    recoveredBlock70Result
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            oldLineColor := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 188.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineColor.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            oldLineColor := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := ClrSelect.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) lineColor: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) lineStyle.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedGO.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 188] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:recoveredBlock135Arg1 | 
    | recoveredBlock135Value0 recoveredBlock135Value1 recoveredBlock135Value2 recoveredBlock135Value3 recoveredBlock135Value4 recoveredBlock135Value5 |
    recoveredBlock135Value0 := recoveredBlock135Arg1.
    recoveredBlock135Value1 := (recoveredBlock135Value0) identifier.
    recoveredBlock135Value2 := recoveredLocal4.
    recoveredBlock135Value3 := (recoveredBlock135Value2) selectedGO.
    recoveredBlock135Value4 := (recoveredBlock135Value3) identifier.
    recoveredBlock135Value5 := (recoveredBlock135Value1) = (recoveredBlock135Value4).
    recoveredBlock135Value5
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := [:recoveredBlock158Arg1 | 
    | recoveredBlock158Stack0 recoveredBlock158Stack1 recoveredBlock158Stack2 recoveredBlock158Stack3 recoveredBlock158Stack4 recoveredBlock158PC recoveredBlock158Step recoveredBlock158Done recoveredBlock158Result |
    recoveredBlock158Stack0 := self.
    recoveredBlock158PC := 164.
    recoveredBlock158Done := false.
    [recoveredBlock158Done not] whileTrue: [
        recoveredBlock158Step := recoveredBlock158PC.
        recoveredBlock158Step = 164 ifTrue: [
            recoveredBlock158Stack1 := nil.
            recoveredBlock158PC := 165.
        ].
        recoveredBlock158Step = 165 ifTrue: [
            recoveredBlock158Stack2 := recoveredBlock158Arg1.
            recoveredBlock158PC := 166.
        ].
        recoveredBlock158Step = 166 ifTrue: [
            recoveredBlock158Stack2 := (recoveredBlock158Stack2) getExternalConnectorGO.
            recoveredBlock158PC := 168.
        ].
        recoveredBlock158Step = 168 ifTrue: [
            recoveredBlock158Stack3 := recoveredBlock158Stack2.
            recoveredBlock158PC := 169.
        ].
        recoveredBlock158Step = 169 ifTrue: [
            recoveredLocal3 := recoveredBlock158Stack3.
            recoveredBlock158PC := 172.
        ].
        recoveredBlock158Step = 172 ifTrue: [
            (recoveredBlock158Stack2 == nil) ifTrue: [recoveredBlock158PC := 185] ifFalse: [recoveredBlock158PC := 176].
        ].
        recoveredBlock158Step = 176 ifTrue: [
            recoveredBlock158PC := 177.
        ].
        recoveredBlock158Step = 177 ifTrue: [
            recoveredBlock158Stack1 := recoveredLocal3.
            recoveredBlock158PC := 180.
        ].
        recoveredBlock158Step = 180 ifTrue: [
            recoveredBlock158Stack2 := recoveredLocal2.
            recoveredBlock158PC := 183.
        ].
        recoveredBlock158Step = 183 ifTrue: [
            recoveredBlock158Stack1 := (recoveredBlock158Stack1) lineWidth: (recoveredBlock158Stack2).
            recoveredBlock158PC := 185.
        ].
        recoveredBlock158Step = 185 ifTrue: [
            recoveredBlock158Result := recoveredBlock158Stack1.
            recoveredBlock158Done := true.
        ].
    ].
    recoveredBlock158Result
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) giveRedisplayRects.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) displayRects: (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055dd8c; bytecode file offset 0xe5a6c0"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
getMenu
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasPortMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := 'Pin ~Names'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) controller.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) capturedPoint.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceGOs.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredLocal2.
    recoveredBlock41Value2 := (recoveredBlock41Value0) getPointedGOFor: (recoveredBlock41Value1).
    recoveredBlock41Value3 := (recoveredBlock41Value2) notNil.
    recoveredBlock41Value3
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 89] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := ' <'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := '>'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := CwMenu.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMenuClass.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := 'displaySelected'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'Select Complete ~Port'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock122Value0 recoveredBlock122Value1 |
    recoveredBlock122Value0 := (self) methodAliasName.
    recoveredBlock122Value1 := (recoveredBlock122Value0) notNil.
    recoveredBlock122Value1
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock132Value0 |
    recoveredBlock132Value0 := (self) isDisplayedSelected.
    recoveredBlock132Value0
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) toggle: (recoveredStack4).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasConnectorNameGOs.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 177].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'toggleConnNameVisibility'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock163Value0 |
    recoveredBlock163Value0 := (self) connNamesVisibleFlag.
    recoveredBlock163Value0
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) toggle: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarAvailable.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 184] ifFalse: [recoveredPC := 219].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'toggleTempVar'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := '~Temporary Variable'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock196Value0 |
    recoveredBlock196Value0 := (self) tempVarAvailable.
    recoveredBlock196Value0
].
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock205Value0 |
    recoveredBlock205Value0 := (self) hasTempVar.
    recoveredBlock205Value0
].
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) toggle: (recoveredStack5).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 228] ifFalse: [recoveredPC := 226].
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205ed07c; bytecode file offset 0xee99b4"
!SGMethodInterfacePortGO methodsFor: 'recovered'!
updateConnectorIDsAndVisibilitiesWith: recoveredArg1 replacementType: recoveredArg2
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Local3 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) interfaceGOs.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block21Arg1 | 
    | recoveredBlock13Block21Stack0 recoveredBlock13Block21Stack1 recoveredBlock13Block21Stack2 recoveredBlock13Block21Stack3 recoveredBlock13Block21Stack4 recoveredBlock13Block21Stack5 recoveredBlock13Block21PC recoveredBlock13Block21Step recoveredBlock13Block21Done recoveredBlock13Block21Result |
    recoveredBlock13Block21Stack0 := self.
    recoveredBlock13Block21PC := 28.
    recoveredBlock13Block21Done := false.
    [recoveredBlock13Block21Done not] whileTrue: [
        recoveredBlock13Block21Step := recoveredBlock13Block21PC.
        recoveredBlock13Block21Step = 28 ifTrue: [
            recoveredBlock13Block21Stack1 := true.
            recoveredBlock13Block21PC := 29.
        ].
        recoveredBlock13Block21Step = 29 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 30.
        ].
        recoveredBlock13Block21Step = 30 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) connectorAliasName.
            recoveredBlock13Block21PC := 31.
        ].
        recoveredBlock13Block21Step = 31 ifTrue: [
            recoveredBlock13Block21Stack3 := recoveredBlock13Arg1.
            recoveredBlock13Block21PC := 34.
        ].
        recoveredBlock13Block21Step = 34 ifTrue: [
            recoveredBlock13Block21Stack3 := (recoveredBlock13Block21Stack3) key.
            recoveredBlock13Block21PC := 36.
        ].
        recoveredBlock13Block21Step = 36 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) = (recoveredBlock13Block21Stack3).
            recoveredBlock13Block21PC := 37.
        ].
        recoveredBlock13Block21Step = 37 ifTrue: [
            (recoveredBlock13Block21Stack2) ifTrue: [recoveredBlock13Block21PC := 83] ifFalse: [recoveredBlock13Block21PC := 40].
        ].
        recoveredBlock13Block21Step = 40 ifTrue: [
            recoveredBlock13Block21Stack2 := self.
            recoveredBlock13Block21PC := 41.
        ].
        recoveredBlock13Block21Step = 41 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) previousAliasNameTable.
            recoveredBlock13Block21PC := 43.
        ].
        recoveredBlock13Block21Step = 43 ifTrue: [
            (recoveredBlock13Block21Stack2 == nil) ifTrue: [recoveredBlock13Block21PC := 64] ifFalse: [recoveredBlock13Block21PC := 46].
        ].
        recoveredBlock13Block21Step = 46 ifTrue: [
            recoveredBlock13Block21Stack2 := self.
            recoveredBlock13Block21PC := 47.
        ].
        recoveredBlock13Block21Step = 47 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) previousAliasNameTable.
            recoveredBlock13Block21PC := 49.
        ].
        recoveredBlock13Block21Step = 49 ifTrue: [
            recoveredBlock13Block21Stack3 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 50.
        ].
        recoveredBlock13Block21Step = 50 ifTrue: [
            recoveredBlock13Block21Stack3 := (recoveredBlock13Block21Stack3) connectorAliasName.
            recoveredBlock13Block21PC := 51.
        ].
        recoveredBlock13Block21Step = 51 ifTrue: [
            recoveredBlock13Block21Stack4 := [].
            recoveredBlock13Block21PC := 53.
        ].
        recoveredBlock13Block21Step = 53 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) at: (recoveredBlock13Block21Stack3) ifAbsent: (recoveredBlock13Block21Stack4).
            recoveredBlock13Block21PC := 55.
        ].
        recoveredBlock13Block21Step = 55 ifTrue: [
            recoveredBlock13Block21Stack3 := recoveredBlock13Arg1.
            recoveredBlock13Block21PC := 58.
        ].
        recoveredBlock13Block21Step = 58 ifTrue: [
            recoveredBlock13Block21Stack3 := (recoveredBlock13Block21Stack3) key.
            recoveredBlock13Block21PC := 60.
        ].
        recoveredBlock13Block21Step = 60 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) = (recoveredBlock13Block21Stack3).
            recoveredBlock13Block21PC := 61.
        ].
        recoveredBlock13Block21Step = 61 ifTrue: [
            (recoveredBlock13Block21Stack2) ifTrue: [recoveredBlock13Block21PC := 83] ifFalse: [recoveredBlock13Block21PC := 64].
        ].
        recoveredBlock13Block21Step = 64 ifTrue: [
            recoveredBlock13Block21PC := 65.
        ].
        recoveredBlock13Block21Step = 65 ifTrue: [
            recoveredBlock13Block21Stack1 := false.
            recoveredBlock13Block21PC := 66.
        ].
        recoveredBlock13Block21Step = 66 ifTrue: [
            recoveredBlock13Block21Stack2 := recoveredBlock13Block21Arg1.
            recoveredBlock13Block21PC := 67.
        ].
        recoveredBlock13Block21Step = 67 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) connectorAliasName.
            recoveredBlock13Block21PC := 68.
        ].
        recoveredBlock13Block21Step = 68 ifTrue: [
            recoveredBlock13Block21Stack3 := 'return'.
            recoveredBlock13Block21PC := 70.
        ].
        recoveredBlock13Block21Step = 70 ifTrue: [
            recoveredBlock13Block21Stack2 := (recoveredBlock13Block21Stack2) = (recoveredBlock13Block21Stack3).
            recoveredBlock13Block21PC := 71.
        ].
        recoveredBlock13Block21Step = 71 ifTrue: [
            (recoveredBlock13Block21Stack2) ifTrue: [recoveredBlock13Block21PC := 74] ifFalse: [recoveredBlock13Block21PC := 83].
        ].
        recoveredBlock13Block21Step = 74 ifTrue: [
            recoveredBlock13Block21PC := 75.
        ].
        recoveredBlock13Block21Step = 75 ifTrue: [
            recoveredBlock13Block21Stack1 := recoveredBlock13Arg1.
            recoveredBlock13Block21PC := 78.
        ].
        recoveredBlock13Block21Step = 78 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) key.
            recoveredBlock13Block21PC := 80.
        ].
        recoveredBlock13Block21Step = 80 ifTrue: [
            recoveredBlock13Block21Stack2 := ''.
            recoveredBlock13Block21PC := 82.
        ].
        recoveredBlock13Block21Step = 82 ifTrue: [
            recoveredBlock13Block21Stack1 := (recoveredBlock13Block21Stack1) = (recoveredBlock13Block21Stack2).
            recoveredBlock13Block21PC := 83.
        ].
        recoveredBlock13Block21Step = 83 ifTrue: [
            recoveredBlock13Block21Result := recoveredBlock13Block21Stack1.
            recoveredBlock13Block21Done := true.
        ].
    ].
    recoveredBlock13Block21Result
].
            recoveredBlock13PC := 84.
        ].
        recoveredBlock13Step = 84 ifTrue: [
            recoveredBlock13Stack2 := [].
            recoveredBlock13PC := 86.
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) detect: (recoveredBlock13Stack1) ifNone: (recoveredBlock13Stack2).
            recoveredBlock13PC := 88.
        ].
        recoveredBlock13Step = 88 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack0.
            recoveredBlock13PC := 91.
        ].
        recoveredBlock13Step = 91 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 94.
        ].
        recoveredBlock13Step = 94 ifTrue: [
            (recoveredBlock13Stack0 ~~ nil) ifTrue: [recoveredBlock13PC := 122] ifFalse: [recoveredBlock13PC := 98].
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) interfaceGOs.
            recoveredBlock13PC := 100.
        ].
        recoveredBlock13Step = 100 ifTrue: [
            recoveredBlock13Stack1 := [:recoveredBlock13Block100Arg1 | 
    | recoveredBlock13Block100Value0 recoveredBlock13Block100Value1 recoveredBlock13Block100Value2 recoveredBlock13Block100Value3 recoveredBlock13Block100Value4 |
    recoveredBlock13Block100Value0 := recoveredBlock13Block100Arg1.
    recoveredBlock13Block100Value1 := (recoveredBlock13Block100Value0) connectorAliasName.
    recoveredBlock13Block100Value2 := recoveredBlock13Arg1.
    recoveredBlock13Block100Value3 := (recoveredBlock13Block100Value2) key.
    recoveredBlock13Block100Value4 := (recoveredBlock13Block100Value1) = (recoveredBlock13Block100Value3).
    recoveredBlock13Block100Value4
].
            recoveredBlock13PC := 115.
        ].
        recoveredBlock13Step = 115 ifTrue: [
            recoveredBlock13Stack2 := [].
            recoveredBlock13PC := 117.
        ].
        recoveredBlock13Step = 117 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) detect: (recoveredBlock13Stack1) ifNone: (recoveredBlock13Stack2).
            recoveredBlock13PC := 119.
        ].
        recoveredBlock13Step = 119 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Stack0.
            recoveredBlock13PC := 122.
        ].
        recoveredBlock13Step = 122 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 123.
        ].
        recoveredBlock13Step = 123 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) class.
            recoveredBlock13PC := 125.
        ].
        recoveredBlock13Step = 125 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) optionHandleMissingConnections.
            recoveredBlock13PC := 127.
        ].
        recoveredBlock13Step = 127 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 130] ifFalse: [recoveredBlock13PC := 230].
        ].
        recoveredBlock13Step = 130 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 133.
        ].
        recoveredBlock13Step = 133 ifTrue: [
            (recoveredBlock13Stack0 == nil) ifTrue: [recoveredBlock13PC := 160] ifFalse: [recoveredBlock13PC := 136].
        ].
        recoveredBlock13Step = 136 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 139.
        ].
        recoveredBlock13Step = 139 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) externalConnectorGO.
            recoveredBlock13PC := 141.
        ].
        recoveredBlock13Step = 141 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMissingPin.
            recoveredBlock13PC := 143.
        ].
        recoveredBlock13Step = 143 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 146] ifFalse: [recoveredBlock13PC := 230].
        ].
        recoveredBlock13Step = 146 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 149.
        ].
        recoveredBlock13Step = 149 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) externalConnectorGO.
            recoveredBlock13PC := 151.
        ].
        recoveredBlock13Step = 151 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) class.
            recoveredBlock13PC := 153.
        ].
        recoveredBlock13Step = 153 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg2.
            recoveredBlock13PC := 156.
        ].
        recoveredBlock13Step = 156 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) = (recoveredBlock13Stack1).
            recoveredBlock13PC := 157.
        ].
        recoveredBlock13Step = 157 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 230] ifFalse: [recoveredBlock13PC := 160].
        ].
        recoveredBlock13Step = 160 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 163.
        ].
        recoveredBlock13Step = 163 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) value.
            recoveredBlock13PC := 165.
        ].
        recoveredBlock13Step = 165 ifTrue: [
            recoveredBlock13Stack1 := 1.
            recoveredBlock13PC := 167.
        ].
        recoveredBlock13Step = 167 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) at: (recoveredBlock13Stack1).
            recoveredBlock13PC := 169.
        ].
        recoveredBlock13Step = 169 ifTrue: [
            recoveredBlock13Stack1 := [
    | recoveredBlock13Block169Stack0 recoveredBlock13Block169Stack1 recoveredBlock13Block169Stack2 recoveredBlock13Block169Stack3 recoveredBlock13Block169Stack4 recoveredBlock13Block169Stack5 recoveredBlock13Block169Stack6 recoveredBlock13Block169PC recoveredBlock13Block169Step recoveredBlock13Block169Done recoveredBlock13Block169Result |
    recoveredBlock13Block169Stack0 := self.
    recoveredBlock13Block169PC := 176.
    recoveredBlock13Block169Done := false.
    [recoveredBlock13Block169Done not] whileTrue: [
        recoveredBlock13Block169Step := recoveredBlock13Block169PC.
        recoveredBlock13Block169Step = 176 ifTrue: [
            recoveredBlock13Block169Stack1 := nil.
            recoveredBlock13Block169PC := 177.
        ].
        recoveredBlock13Block169Step = 177 ifTrue: [
            recoveredBlock13Block169Stack2 := recoveredBlock13Arg1.
            recoveredBlock13Block169PC := 180.
        ].
        recoveredBlock13Block169Step = 180 ifTrue: [
            recoveredBlock13Block169Stack2 := (recoveredBlock13Block169Stack2) value.
            recoveredBlock13Block169PC := 182.
        ].
        recoveredBlock13Block169Step = 182 ifTrue: [
            recoveredBlock13Block169Stack3 := 4.
            recoveredBlock13Block169PC := 184.
        ].
        recoveredBlock13Block169Step = 184 ifTrue: [
            recoveredBlock13Block169Stack2 := (recoveredBlock13Block169Stack2) at: (recoveredBlock13Block169Stack3).
            recoveredBlock13Block169PC := 186.
        ].
        recoveredBlock13Block169Step = 186 ifTrue: [
            (recoveredBlock13Block169Stack2) ifTrue: [recoveredBlock13Block169PC := 190] ifFalse: [recoveredBlock13Block169PC := 227].
        ].
        recoveredBlock13Block169Step = 190 ifTrue: [
            recoveredBlock13Block169PC := 191.
        ].
        recoveredBlock13Block169Step = 191 ifTrue: [
            recoveredBlock13Block169Stack1 := self.
            recoveredBlock13Block169PC := 192.
        ].
        recoveredBlock13Block169Step = 192 ifTrue: [
            recoveredBlock13Block169Stack1 := (recoveredBlock13Block169Stack1) manager.
            recoveredBlock13Block169PC := 194.
        ].
        recoveredBlock13Block169Step = 194 ifTrue: [
            recoveredBlock13Block169Stack2 := recoveredBlock13Arg1.
            recoveredBlock13Block169PC := 197.
        ].
        recoveredBlock13Block169Step = 197 ifTrue: [
            recoveredBlock13Block169Stack2 := (recoveredBlock13Block169Stack2) value.
            recoveredBlock13Block169PC := 199.
        ].
        recoveredBlock13Block169Step = 199 ifTrue: [
            recoveredBlock13Block169Stack3 := 3.
            recoveredBlock13Block169PC := 201.
        ].
        recoveredBlock13Block169Step = 201 ifTrue: [
            recoveredBlock13Block169Stack2 := (recoveredBlock13Block169Stack2) at: (recoveredBlock13Block169Stack3).
            recoveredBlock13Block169PC := 203.
        ].
        recoveredBlock13Block169Step = 203 ifTrue: [
            recoveredBlock13Block169Stack3 := recoveredBlock13Arg1.
            recoveredBlock13Block169PC := 206.
        ].
        recoveredBlock13Block169Step = 206 ifTrue: [
            recoveredBlock13Block169Stack3 := (recoveredBlock13Block169Stack3) value.
            recoveredBlock13Block169PC := 208.
        ].
        recoveredBlock13Block169Step = 208 ifTrue: [
            recoveredBlock13Block169Stack4 := 2.
            recoveredBlock13Block169PC := 210.
        ].
        recoveredBlock13Block169Step = 210 ifTrue: [
            recoveredBlock13Block169Stack3 := (recoveredBlock13Block169Stack3) at: (recoveredBlock13Block169Stack4).
            recoveredBlock13Block169PC := 212.
        ].
        recoveredBlock13Block169Step = 212 ifTrue: [
            recoveredBlock13Block169Stack4 := recoveredArg2.
            recoveredBlock13Block169PC := 215.
        ].
        recoveredBlock13Block169Step = 215 ifTrue: [
            recoveredBlock13Block169Stack5 := recoveredBlock13Arg1.
            recoveredBlock13Block169PC := 218.
        ].
        recoveredBlock13Block169Step = 218 ifTrue: [
            recoveredBlock13Block169Stack5 := (recoveredBlock13Block169Stack5) key.
            recoveredBlock13Block169PC := 220.
        ].
        recoveredBlock13Block169Step = 220 ifTrue: [
            recoveredBlock13Block169Stack1 := (recoveredBlock13Block169Stack1) addConnectorAt: (recoveredBlock13Block169Stack2) direction: (recoveredBlock13Block169Stack3) type: (recoveredBlock13Block169Stack4) aliasName: (recoveredBlock13Block169Stack5).
            recoveredBlock13Block169PC := 223.
        ].
        recoveredBlock13Block169Step = 223 ifTrue: [
            recoveredBlock13Block169Stack2 := recoveredBlock13Block169Stack1.
            recoveredBlock13Block169PC := 224.
        ].
        recoveredBlock13Block169Step = 224 ifTrue: [
            recoveredBlock13Local3 := recoveredBlock13Block169Stack2.
            recoveredBlock13Block169PC := 227.
        ].
        recoveredBlock13Block169Step = 227 ifTrue: [
            recoveredBlock13Block169Result := recoveredBlock13Block169Stack1.
            recoveredBlock13Block169Done := true.
        ].
    ].
    recoveredBlock13Block169Result
].
            recoveredBlock13PC := 228.
        ].
        recoveredBlock13Step = 228 ifTrue: [
            (recoveredBlock13Stack0) notNil: (recoveredBlock13Stack1).
            recoveredBlock13PC := 230.
        ].
        recoveredBlock13Step = 230 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 231.
        ].
        recoveredBlock13Step = 231 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 234.
        ].
        recoveredBlock13Step = 234 ifTrue: [
            (recoveredBlock13Stack1 == nil) ifTrue: [recoveredBlock13PC := 377] ifFalse: [recoveredBlock13PC := 238].
        ].
        recoveredBlock13Step = 238 ifTrue: [
            recoveredBlock13PC := 239.
        ].
        recoveredBlock13Step = 239 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Arg1.
            recoveredBlock13PC := 242.
        ].
        recoveredBlock13Step = 242 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) value.
            recoveredBlock13PC := 244.
        ].
        recoveredBlock13Step = 244 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack0.
            recoveredBlock13PC := 247.
        ].
        recoveredBlock13Step = 247 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 250.
        ].
        recoveredBlock13Step = 250 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) externalConnectorGO.
            recoveredBlock13PC := 252.
        ].
        recoveredBlock13Step = 252 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 255.
        ].
        recoveredBlock13Step = 255 ifTrue: [
            recoveredBlock13Stack2 := 1.
            recoveredBlock13PC := 257.
        ].
        recoveredBlock13Step = 257 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 259.
        ].
        recoveredBlock13Step = 259 ifTrue: [
            (recoveredBlock13Stack0) identifier: (recoveredBlock13Stack1).
            recoveredBlock13PC := 261.
        ].
        recoveredBlock13Step = 261 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 264.
        ].
        recoveredBlock13Step = 264 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 267.
        ].
        recoveredBlock13Step = 267 ifTrue: [
            recoveredBlock13Stack2 := 4.
            recoveredBlock13PC := 269.
        ].
        recoveredBlock13Step = 269 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2).
            recoveredBlock13PC := 271.
        ].
        recoveredBlock13Step = 271 ifTrue: [
            (recoveredBlock13Stack0) visible: (recoveredBlock13Stack1).
            recoveredBlock13PC := 273.
        ].
        recoveredBlock13Step = 273 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 276.
        ].
        recoveredBlock13Step = 276 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) externalConnectorGO.
            recoveredBlock13PC := 278.
        ].
        recoveredBlock13Step = 278 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) isMissingPin.
            recoveredBlock13PC := 280.
        ].
        recoveredBlock13Step = 280 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 284] ifFalse: [recoveredBlock13PC := 290].
        ].
        recoveredBlock13Step = 284 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 287.
        ].
        recoveredBlock13Step = 287 ifTrue: [
            recoveredBlock13Stack1 := true.
            recoveredBlock13PC := 288.
        ].
        recoveredBlock13Step = 288 ifTrue: [
            (recoveredBlock13Stack0) visible: (recoveredBlock13Stack1).
            recoveredBlock13PC := 290.
        ].
        recoveredBlock13Step = 290 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local2.
            recoveredBlock13PC := 293.
        ].
        recoveredBlock13Step = 293 ifTrue: [
            recoveredBlock13Stack1 := 5.
            recoveredBlock13PC := 295.
        ].
        recoveredBlock13Step = 295 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) at: (recoveredBlock13Stack1).
            recoveredBlock13PC := 297.
        ].
        recoveredBlock13Step = 297 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 300.
        ].
        recoveredBlock13Step = 300 ifTrue: [
            recoveredBlock13Stack0 := self.
            recoveredBlock13PC := 301.
        ].
        recoveredBlock13Step = 301 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) class.
            recoveredBlock13PC := 303.
        ].
        recoveredBlock13Step = 303 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) optionGraphicsCompatibilityMode.
            recoveredBlock13PC := 305.
        ].
        recoveredBlock13Step = 305 ifTrue: [
            (recoveredBlock13Stack0) ifTrue: [recoveredBlock13PC := 308] ifFalse: [recoveredBlock13PC := 320].
        ].
        recoveredBlock13Step = 308 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 311.
        ].
        recoveredBlock13Step = 311 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local1.
            recoveredBlock13PC := 314.
        ].
        recoveredBlock13Step = 314 ifTrue: [
            (recoveredBlock13Stack0) connNameVisible: (recoveredBlock13Stack1).
            recoveredBlock13PC := 316.
        ].
        recoveredBlock13Step = 316 ifTrue: [
            recoveredBlock13PC := 338.
        ].
        recoveredBlock13Step = 320 ifTrue: [
            recoveredBlock13Stack0 := recoveredBlock13Local3.
            recoveredBlock13PC := 323.
        ].
        recoveredBlock13Step = 323 ifTrue: [
            recoveredBlock13Stack1 := false.
            recoveredBlock13PC := 324.
        ].
        recoveredBlock13Step = 324 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local1.
            recoveredBlock13PC := 327.
        ].
        recoveredBlock13Step = 327 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 330] ifFalse: [recoveredBlock13PC := 336].
        ].
        recoveredBlock13Step = 330 ifTrue: [
            recoveredBlock13PC := 331.
        ].
        recoveredBlock13Step = 331 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 332.
        ].
        recoveredBlock13Step = 332 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) getBlock.
            recoveredBlock13PC := 334.
        ].
        recoveredBlock13Step = 334 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) connNamesVisible.
            recoveredBlock13PC := 336.
        ].
        recoveredBlock13Step = 336 ifTrue: [
            (recoveredBlock13Stack0) connNameVisible: (recoveredBlock13Stack1).
            recoveredBlock13PC := 338.
        ].
        recoveredBlock13Step = 338 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 339.
        ].
        recoveredBlock13Step = 339 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 342.
        ].
        recoveredBlock13Step = 342 ifTrue: [
            recoveredBlock13Stack2 := 6.
            recoveredBlock13PC := 344.
        ].
        recoveredBlock13Step = 344 ifTrue: [
            recoveredBlock13Stack3 := [
    false
].
            recoveredBlock13PC := 346.
        ].
        recoveredBlock13Step = 346 ifTrue: [
            recoveredBlock13PC := 352.
        ].
        recoveredBlock13Step = 352 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) ifAbsent: (recoveredBlock13Stack3).
            recoveredBlock13PC := 354.
        ].
        recoveredBlock13Step = 354 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 358] ifFalse: [recoveredBlock13PC := 369].
        ].
        recoveredBlock13Step = 358 ifTrue: [
            recoveredBlock13PC := 359.
        ].
        recoveredBlock13Step = 359 ifTrue: [
            recoveredBlock13Stack0 := recoveredLocal1.
            recoveredBlock13PC := 362.
        ].
        recoveredBlock13Step = 362 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local3.
            recoveredBlock13PC := 365.
        ].
        recoveredBlock13Step = 365 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) externalConnectorGO.
            recoveredBlock13PC := 367.
        ].
        recoveredBlock13Step = 367 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) add: (recoveredBlock13Stack1).
            recoveredBlock13PC := 369.
        ].
        recoveredBlock13Step = 369 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 370.
        ].
        recoveredBlock13Step = 370 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 371.
        ].
        recoveredBlock13Step = 371 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 374.
        ].
        recoveredBlock13Step = 374 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 377.
        ].
        recoveredBlock13Step = 377 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1) associationsDo: (recoveredStack2).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempVarAvailable.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 386] ifFalse: [recoveredPC := 401].
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := [:block2811b48cArg1 | 
    | block2811b48cValue0 block2811b48cValue1 |
    block2811b48cValue0 := block2811b48cArg1.
    block2811b48cValue1 := (block2811b48cValue0) tempVar: (true).
    block2811b48cValue1
].
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

