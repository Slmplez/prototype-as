"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200085e8; bytecode file offset 0x908be4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
supportsMultiMappableTargets
    | recoveredValue0 |
    recoveredValue0 := (self) isInputMapping.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200088b8; bytecode file offset 0x908be4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
mappingBase
    | recoveredValue0 |
    recoveredValue0 := (self) configuration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200096b0; bytecode file offset 0x908be4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
sourceObjectsForAutoMapping
    | recoveredValue0 |
    recoveredValue0 := (self) variableMappingSourceObjects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000aaa8; bytecode file offset 0x908be4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
fillFilterLeft
    | recoveredValue0 |
    recoveredValue0 := (self) fillFilterLeftForMessages.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b978; bytecode file offset 0x908be4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
fillFilterMapping
    | recoveredValue0 |
    recoveredValue0 := (self) fillFilterMappingForMessages.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001cfa0; bytecode file offset 0x92209c"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
rightColumnName
    ^'ECU Variables'
! !

"ASDBase.ic method 0x2001ed1c; bytecode file offset 0x92209c"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
leftColumnName
    ^'Messages'
! !

"ASDBase.ic method 0x20029404; bytecode file offset 0x934580"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
configuration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) eHooksConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a4bc; bytecode file offset 0x947128"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
variableMappingTargetObjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mappingObjects.
    recoveredValue1 := (self) variableMappingTargetObjects: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200641d4; bytecode file offset 0x961970"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
menuInspectEHooksConfig
    | recoveredValue0 |
    recoveredValue0 := (self) configuration.
    (recoveredValue0) inspect.
    ^self
! !

"ASDBase.ic method 0x20065374; bytecode file offset 0x961e78"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
menuEHooksGetLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) userInterface.
    recoveredValue2 := (recoveredValue1) widgetMappingTableProcess.
    recoveredValue3 := (recoveredValue2) menuEHooksGetLabels.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2006538c; bytecode file offset 0x961e78"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
menuEHooksGetLabelsBackupCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) userInterface.
    recoveredValue2 := (recoveredValue1) widgetMappingTableProcess.
    recoveredValue3 := (recoveredValue2) menuEHooksGetLabelsBackupCopy.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20070ab0; bytecode file offset 0x96d3ec"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
withoutSendReceive
    | recoveredValue0 |
    recoveredValue0 := withoutSendReceive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070b8c; bytecode file offset 0x96d580"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
selectedMappingType
    | recoveredValue0 |
    recoveredValue0 := selectedMappingType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20090c04; bytecode file offset 0x98d690"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
markGraphicsModified
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) updateToolbarSensitive.
    ^self
! !

"ASDBase.ic method 0x20090c90; bytecode file offset 0x98d690"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
menuImportMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) menuImportMapping.
    ^self
! !

"ASDBase.ic method 0x20090d58; bytecode file offset 0x98d690"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
menuToggleMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) userInterface.
    (recoveredValue1) menuToggleMapping.
    ^self
! !

"ASDBase.ic method 0x200ba7b0; bytecode file offset 0x9b708c"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
updateTargetsObjectsAndAutoMapOverwrite: recoveredArg1
    | recoveredValue0 |
    (self) updateMapping.
    recoveredValue0 := recoveredArg1.
    (self) autoMapOverwrite: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c725c; bytecode file offset 0x9c3c10"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
selectedMappingType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectedMappingType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca848; bytecode file offset 0x9c710c"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
autoMapping: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (recoveredValue0) userInterface.
    recoveredValue2 := (recoveredValue1) widgetMappingTableProcess.
    (recoveredValue2) automappingOverwriteExisiting: (false).
    ^self
! !

"ASDBase.ic method 0x200e60a8; bytecode file offset 0x9e2abc"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) withoutSendReceive: (false).
    ^self
! !

"ASDBase.ic method 0x200f8d20; bytecode file offset 0x9f5620"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
variableMappingObjects
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) configuration.
    recoveredValue1 := (self) mappingType.
    recoveredValue2 := (self) sourceObjects.
    recoveredValue3 := (self) targetObjects.
    recoveredValue4 := (recoveredValue0) mappingsType: (recoveredValue1) updateUIForSourceObjects: (recoveredValue2) targetObjects: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2010ce50; bytecode file offset 0xa09704"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
withoutSendReceive: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := withoutSendReceive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            withoutSendReceive := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20136e50; bytecode file offset 0xa3371c"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
createUpdateMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasMenu.
    recoveredValue1 := (recoveredValue0) defaultMenuClass.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (self) mappingMenuLabel.
    recoveredValue4 := (recoveredValue2) title: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    (self) addAutoMappingMenu: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20140be8; bytecode file offset 0xa3d4b4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
mappingHasChanged
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super mappingHasChanged.
    recoveredValue0 := (self) uiController.
    recoveredValue1 := (self) mappingObjects.
    recoveredValue2 := (self) mappingType.
    (recoveredValue0) uiMappings: (recoveredValue1) type: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2015ed9c; bytecode file offset 0xa5b6e8"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
isDeletePossible
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
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMappingTableProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetBackupLabelsPossible.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015edbc; bytecode file offset 0xa5b6e8"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
isGetLabelsBackupPossible
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
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMappingTableProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetBackupLabelsPossible.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015eddc; bytecode file offset 0xa5b6e8"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
isGetLabelsPossible
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
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMappingTableProcess.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetLabelsPossible.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201705ac; bytecode file offset 0xa6ce78"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
isAutomappingPossible
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
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) modifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) userInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetEHooksSpecification.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetSelectedMapping.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20173f60; bytecode file offset 0xa70828"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
updateLabelsAndAutoMapOverwriteExisiting: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Local1 recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) variableMappingTargetObjects.
    recoveredBlock6Value1 := (self) targetObjects: (recoveredBlock6Value0).
    recoveredBlock6Value1
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    (self) autoLabelMapping.
    ^self
! !

"ASDBase.ic method 0x201e1620; bytecode file offset 0xaddef0"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
fillFilterRight
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRightListFilter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) filter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ASDGenericFilter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetRightListFilter.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) filter: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20254ac0; bytecode file offset 0xb51390"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
mappingObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mappingObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    ^recoveredBlock6Value0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableMappingObjects.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280df29cArg1 :block280df29cArg2 | 
    | block280df29cValue0 block280df29cValue1 block280df29cValue2 |
    block280df29cValue0 := block280df29cArg1.
    block280df29cValue1 := block280df29cValue0.
    block280df29cValue2 := block280df29cArg2.
    (block280df29cValue1) addAll: (block280df29cValue2).
    block280df29cValue0
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            mappingObjects := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026a31c; bytecode file offset 0xb66bfc"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
initMappings
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
            recoveredStack1 := (recoveredStack1) variableMappingSourceObjects.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) sourceObjects: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) persistentMappingObjects.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableMappingTargetObjects: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) targetObjects: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableMappingObjects.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280e0160Arg1 :block280e0160Arg2 | 
    | block280e0160Value0 block280e0160Value1 block280e0160Value2 |
    block280e0160Value0 := block280e0160Arg1.
    block280e0160Value1 := block280e0160Value0.
    block280e0160Value2 := block280e0160Arg2.
    (block280e0160Value1) addAll: (block280e0160Value2).
    block280e0160Value0
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            mappingObjects := recoveredStack0.
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

"ASDBase.ic method 0x202d8090; bytecode file offset 0xbd4968"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
variableMappingSourceObjects
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPublicSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInputMapping.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) withoutSendReceive.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingSourceObjectsForInput: (recoveredStack1) withoutSendRec: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutputMapping.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) withoutSendReceive.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingSourceObjectsForInput: (recoveredStack1) withoutSendRec: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b0b08; bytecode file offset 0xcad3ec"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
persistentMappingObjects
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPublicSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInputMapping.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageInput.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) addAll: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutputMapping.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingMessageOutput.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 |
    recoveredBlock59Value0 := recoveredLocal1.
    recoveredBlock59Value1 := recoveredBlock59Arg1.
    recoveredBlock59Value2 := (recoveredBlock59Value0) addAll: (recoveredBlock59Value1).
    recoveredBlock59Value2
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20425934; bytecode file offset 0xd22218"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
updateMappingObjects
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mappingObjects.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) targetObject.
    recoveredBlock5Value2 := [:recoveredBlock5Block16Arg1 | 
    | recoveredBlock5Block16Stack0 recoveredBlock5Block16Stack1 recoveredBlock5Block16Stack2 recoveredBlock5Block16Stack3 recoveredBlock5Block16PC recoveredBlock5Block16Step recoveredBlock5Block16Done recoveredBlock5Block16Result |
    recoveredBlock5Block16Stack0 := self.
    recoveredBlock5Block16PC := 22.
    recoveredBlock5Block16Done := false.
    [recoveredBlock5Block16Done not] whileTrue: [
        recoveredBlock5Block16Step := recoveredBlock5Block16PC.
        recoveredBlock5Block16Step = 22 ifTrue: [
            recoveredBlock5Block16Stack0 := (recoveredBlock5Block16Stack0) targetObjects.
            recoveredBlock5Block16PC := 23.
        ].
        recoveredBlock5Block16Step = 23 ifTrue: [
            recoveredBlock5Block16Stack1 := [:recoveredBlock5Block16Block23Arg1 | 
    | recoveredBlock5Block16Block23Value0 recoveredBlock5Block16Block23Value1 recoveredBlock5Block16Block23Value2 recoveredBlock5Block16Block23Value3 recoveredBlock5Block16Block23Value4 |
    recoveredBlock5Block16Block23Value0 := recoveredBlock5Block16Block23Arg1.
    recoveredBlock5Block16Block23Value1 := (recoveredBlock5Block16Block23Value0) displayName.
    recoveredBlock5Block16Block23Value2 := recoveredBlock5Block16Arg1.
    recoveredBlock5Block16Block23Value3 := (recoveredBlock5Block16Block23Value2) displayName.
    recoveredBlock5Block16Block23Value4 := (recoveredBlock5Block16Block23Value1) equals: (recoveredBlock5Block16Block23Value3).
    recoveredBlock5Block16Block23Value4
].
            recoveredBlock5Block16PC := 39.
        ].
        recoveredBlock5Block16Step = 39 ifTrue: [
            recoveredBlock5Block16Stack2 := [].
            recoveredBlock5Block16PC := 41.
        ].
        recoveredBlock5Block16Step = 41 ifTrue: [
            recoveredBlock5Block16Stack0 := (recoveredBlock5Block16Stack0) detect: (recoveredBlock5Block16Stack1) ifNone: (recoveredBlock5Block16Stack2).
            recoveredBlock5Block16PC := 43.
        ].
        recoveredBlock5Block16Step = 43 ifTrue: [
            (recoveredBlock5Block16Stack0 ~~ nil) ifTrue: [recoveredBlock5Block16PC := 72] ifFalse: [recoveredBlock5Block16PC := 46].
        ].
        recoveredBlock5Block16Step = 46 ifTrue: [
            recoveredBlock5Block16Stack0 := nil.
            recoveredBlock5Block16PC := 47.
        ].
        recoveredBlock5Block16Step = 47 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 50.
        ].
        recoveredBlock5Block16Step = 50 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) mappingState.
            recoveredBlock5Block16PC := 52.
        ].
        recoveredBlock5Block16Step = 52 ifTrue: [
            (recoveredBlock5Block16Stack1) ifTrue: [recoveredBlock5Block16PC := 56] ifFalse: [recoveredBlock5Block16PC := 69].
        ].
        recoveredBlock5Block16Step = 56 ifTrue: [
            recoveredBlock5Block16PC := 57.
        ].
        recoveredBlock5Block16Step = 57 ifTrue: [
            recoveredBlock5Block16Stack0 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 60.
        ].
        recoveredBlock5Block16Step = 60 ifTrue: [
            recoveredBlock5Block16Stack1 := false.
            recoveredBlock5Block16PC := 61.
        ].
        recoveredBlock5Block16Step = 61 ifTrue: [
            (recoveredBlock5Block16Stack0) mappingState: (recoveredBlock5Block16Stack1).
            recoveredBlock5Block16PC := 63.
        ].
        recoveredBlock5Block16Step = 63 ifTrue: [
            recoveredBlock5Block16Stack0 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 66.
        ].
        recoveredBlock5Block16Step = 66 ifTrue: [
            recoveredBlock5Block16Stack1 := true.
            recoveredBlock5Block16PC := 67.
        ].
        recoveredBlock5Block16Step = 67 ifTrue: [
            recoveredBlock5Block16Stack0 := (recoveredBlock5Block16Stack0) modified: (recoveredBlock5Block16Stack1).
            recoveredBlock5Block16PC := 69.
        ].
        recoveredBlock5Block16Step = 69 ifTrue: [
            recoveredBlock5Block16PC := 95.
        ].
        recoveredBlock5Block16Step = 72 ifTrue: [
            recoveredBlock5Block16Stack0 := nil.
            recoveredBlock5Block16PC := 73.
        ].
        recoveredBlock5Block16Step = 73 ifTrue: [
            recoveredBlock5Block16Stack1 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 76.
        ].
        recoveredBlock5Block16Step = 76 ifTrue: [
            recoveredBlock5Block16Stack1 := (recoveredBlock5Block16Stack1) mappingState.
            recoveredBlock5Block16PC := 78.
        ].
        recoveredBlock5Block16Step = 78 ifTrue: [
            (recoveredBlock5Block16Stack1) ifTrue: [recoveredBlock5Block16PC := 95] ifFalse: [recoveredBlock5Block16PC := 82].
        ].
        recoveredBlock5Block16Step = 82 ifTrue: [
            recoveredBlock5Block16PC := 83.
        ].
        recoveredBlock5Block16Step = 83 ifTrue: [
            recoveredBlock5Block16Stack0 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 86.
        ].
        recoveredBlock5Block16Step = 86 ifTrue: [
            recoveredBlock5Block16Stack1 := true.
            recoveredBlock5Block16PC := 87.
        ].
        recoveredBlock5Block16Step = 87 ifTrue: [
            (recoveredBlock5Block16Stack0) mappingState: (recoveredBlock5Block16Stack1).
            recoveredBlock5Block16PC := 89.
        ].
        recoveredBlock5Block16Step = 89 ifTrue: [
            recoveredBlock5Block16Stack0 := recoveredBlock5Arg1.
            recoveredBlock5Block16PC := 92.
        ].
        recoveredBlock5Block16Step = 92 ifTrue: [
            recoveredBlock5Block16Stack1 := true.
            recoveredBlock5Block16PC := 93.
        ].
        recoveredBlock5Block16Step = 93 ifTrue: [
            recoveredBlock5Block16Stack0 := (recoveredBlock5Block16Stack0) modified: (recoveredBlock5Block16Stack1).
            recoveredBlock5Block16PC := 95.
        ].
        recoveredBlock5Block16Step = 95 ifTrue: [
            recoveredBlock5Block16Result := recoveredBlock5Block16Stack0.
            recoveredBlock5Block16Done := true.
        ].
    ].
    recoveredBlock5Block16Result
].
    recoveredBlock5Value3 := (recoveredBlock5Value1) ifNotNil: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20429dd4; bytecode file offset 0xd26700"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
updateMapping
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := System.
    recoveredValue1 := [
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) variableMappingSourceObjects.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            (recoveredBlock6Stack0) sourceObjects: (recoveredBlock6Stack1).
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) variableMappingTargetObjects.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack0) targetObjects: (recoveredBlock6Stack1).
            recoveredBlock6PC := 21.
        ].
        recoveredBlock6Step = 21 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack1 := self.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) variableMappingObjects.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := OrderedCollection.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) new.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack3 := [:block280fd050Arg1 :block280fd050Arg2 | 
    | block280fd050Value0 block280fd050Value1 block280fd050Value2 |
    block280fd050Value0 := block280fd050Arg1.
    block280fd050Value1 := block280fd050Value0.
    block280fd050Value2 := block280fd050Arg2.
    (block280fd050Value1) addAll: (block280fd050Value2).
    block280fd050Value0
].
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) inject: (recoveredBlock6Stack2) into: (recoveredBlock6Stack3).
            recoveredBlock6PC := 42.
        ].
        recoveredBlock6Step = 42 ifTrue: [
            (recoveredBlock6Stack0) mappingObjects: (recoveredBlock6Stack1).
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 45.
        ].
        recoveredBlock6Step = 45 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) mappingObjects.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack1 := [:block280fd074Arg1 | 
    | block280fd074Value0 block280fd074Value1 |
    block280fd074Value0 := block280fd074Arg1.
    block280fd074Value1 := (block280fd074Value0) isMapped.
    block280fd074Value1
].
            recoveredBlock6PC := 49.
        ].
        recoveredBlock6Step = 49 ifTrue: [
            recoveredBlock6PC := 56.
        ].
        recoveredBlock6Step = 56 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) select: (recoveredBlock6Stack1).
            recoveredBlock6PC := 58.
        ].
        recoveredBlock6Step = 58 ifTrue: [
            recoveredBlock6Stack1 := [:recoveredBlock6Block58Arg1 | 
    | recoveredBlock6Block58Value0 recoveredBlock6Block58Value1 recoveredBlock6Block58Value2 recoveredBlock6Block58Value3 recoveredBlock6Block58Value4 |
    recoveredBlock6Block58Value0 := recoveredBlock6Block58Arg1.
    recoveredBlock6Block58Value1 := (recoveredBlock6Block58Value0) sourceObject.
    (self) removeFromSourceObjects: (recoveredBlock6Block58Value1).
    recoveredBlock6Block58Value2 := recoveredBlock6Block58Arg1.
    recoveredBlock6Block58Value3 := (recoveredBlock6Block58Value2) targetObject.
    recoveredBlock6Block58Value4 := (self) removeFromTargetObjects: (recoveredBlock6Block58Value3).
    recoveredBlock6Block58Value4
].
            recoveredBlock6PC := 76.
        ].
        recoveredBlock6Step = 76 ifTrue: [
            (recoveredBlock6Stack0) do: (recoveredBlock6Stack1).
            recoveredBlock6PC := 78.
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 79.
        ].
        recoveredBlock6Step = 79 ifTrue: [
            (recoveredBlock6Stack0) fillFilters.
            recoveredBlock6PC := 81.
        ].
        recoveredBlock6Step = 81 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 82.
        ].
        recoveredBlock6Step = 82 ifTrue: [
            (recoveredBlock6Stack0) updateLeftList.
            recoveredBlock6PC := 84.
        ].
        recoveredBlock6Step = 84 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 85.
        ].
        recoveredBlock6Step = 85 ifTrue: [
            (recoveredBlock6Stack0) updateRightList.
            recoveredBlock6PC := 87.
        ].
        recoveredBlock6Step = 87 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 88.
        ].
        recoveredBlock6Step = 88 ifTrue: [
            (recoveredBlock6Stack0) updateMappingList.
            recoveredBlock6PC := 90.
        ].
        recoveredBlock6Step = 90 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 91.
        ].
        recoveredBlock6Step = 91 ifTrue: [
            (recoveredBlock6Stack0) updateLabelMappingComplete.
            recoveredBlock6PC := 93.
        ].
        recoveredBlock6Step = 93 ifTrue: [
            recoveredBlock6Stack0 := self.
            recoveredBlock6PC := 94.
        ].
        recoveredBlock6Step = 94 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) uiController.
            recoveredBlock6PC := 96.
        ].
        recoveredBlock6Step = 96 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) userInterface.
            recoveredBlock6PC := 98.
        ].
        recoveredBlock6Step = 98 ifTrue: [
            recoveredBlock6Stack0 := (recoveredBlock6Stack0) updateToolbarSensitive.
            recoveredBlock6PC := 100.
        ].
        recoveredBlock6Step = 100 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack0.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) showBusyCursorWhile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20462a2c; bytecode file offset 0xd5f324"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
addAutoMappingMenu: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'menuEHooksGetLabels'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'Get ECU Labels'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) isGetLabelsPossible.
    recoveredBlock9Value0
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'menuEHooksGetLabelsBackupCopy'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'Get ECU Backup Copy Labels'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock38Value0 |
    recoveredBlock38Value0 := (self) isGetLabelsBackupPossible.
    recoveredBlock38Value0
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'menuAutoMappingOverwrite'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 'Get ECU Labels and Map (overwrite existing mappings)'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock66Value0 |
    recoveredBlock66Value0 := (self) isAutomappingPossible.
    recoveredBlock66Value0
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'menuAutoMappingKeep'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 'Get ECU Labels and Map (keep existing mappings)'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock94Value0 |
    recoveredBlock94Value0 := (self) isAutomappingPossible.
    recoveredBlock94Value0
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e0cc4; bytecode file offset 0xddd5e4"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
createMappingMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super createMappingMenu.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) addAutoMappingMenu: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 'menuExportMapping'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := '~Export...'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := (self) item.
    recoveredBlock21Value1 := (recoveredBlock21Value0) eHooksConfiguration.
    recoveredBlock21Value2 := (recoveredBlock21Value1) notNil.
    recoveredBlock21Value2
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'menuImportMapping'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := '~Import...'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock46Stack0 recoveredBlock46Stack1 recoveredBlock46Stack2 recoveredBlock46Stack3 recoveredBlock46PC recoveredBlock46Step recoveredBlock46Done recoveredBlock46Result |
    recoveredBlock46Stack0 := self.
    recoveredBlock46PC := 52.
    recoveredBlock46Done := false.
    [recoveredBlock46Done not] whileTrue: [
        recoveredBlock46Step := recoveredBlock46PC.
        recoveredBlock46Step = 52 ifTrue: [
            recoveredBlock46Stack1 := false.
            recoveredBlock46PC := 53.
        ].
        recoveredBlock46Step = 53 ifTrue: [
            recoveredBlock46Stack2 := self.
            recoveredBlock46PC := 54.
        ].
        recoveredBlock46Step = 54 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) item.
            recoveredBlock46PC := 56.
        ].
        recoveredBlock46Step = 56 ifTrue: [
            recoveredBlock46Stack2 := (recoveredBlock46Stack2) modifiable.
            recoveredBlock46PC := 58.
        ].
        recoveredBlock46Step = 58 ifTrue: [
            (recoveredBlock46Stack2) ifTrue: [recoveredBlock46PC := 62] ifFalse: [recoveredBlock46PC := 69].
        ].
        recoveredBlock46Step = 62 ifTrue: [
            recoveredBlock46PC := 63.
        ].
        recoveredBlock46Step = 63 ifTrue: [
            recoveredBlock46Stack1 := self.
            recoveredBlock46PC := 64.
        ].
        recoveredBlock46Step = 64 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) item.
            recoveredBlock46PC := 66.
        ].
        recoveredBlock46Step = 66 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) eHooksConfiguration.
            recoveredBlock46PC := 68.
        ].
        recoveredBlock46Step = 68 ifTrue: [
            recoveredBlock46Stack1 := (recoveredBlock46Stack1) notNil.
            recoveredBlock46PC := 69.
        ].
        recoveredBlock46Step = 69 ifTrue: [
            recoveredBlock46Result := recoveredBlock46Stack1.
            recoveredBlock46Done := true.
        ].
    ].
    recoveredBlock46Result
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := MainController.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEtasInternalMode.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) addSingleLine.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'menuInspectMapping'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) userInterface.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasInternalMenuLabelPrefix.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := 'Inspect UI Mapping'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 'menuInspectEHooksConfig'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) userInterface.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := (recoveredStack2) etasInternalMenuLabelPrefix.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := 'Inspect EHooks Configuration'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack6 := nil.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack0) addWithID: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3) visible: (recoveredStack4) for: (recoveredStack5) accelerator: (recoveredStack6) acceleratorText: (recoveredStack7).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f10ac; bytecode file offset 0xded9cc"
!ASDEHooksMappingTableWidget methodsFor: 'recovered'!
variableMappingTargetObjects: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultPublicSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInputMapping.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuVarsInput.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOutputMapping.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuVarsOutput.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) targetObjects: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := [:recoveredBlock57Block65Arg1 | 
    | recoveredBlock57Block65Local1 recoveredBlock57Block65Value0 recoveredBlock57Block65Value1 recoveredBlock57Block65Value2 recoveredBlock57Block65Value3 recoveredBlock57Block65Value4 recoveredBlock57Block65Value5 recoveredBlock57Block65Value6 recoveredBlock57Block65Value7 recoveredBlock57Block65Value8 recoveredBlock57Block65Value9 recoveredBlock57Block65Value10 recoveredBlock57Block65Value11 recoveredBlock57Block65Value12 |
    recoveredBlock57Block65Value0 := (self) configuration.
    recoveredBlock57Block65Value1 := recoveredBlock57Block65Arg1.
    recoveredBlock57Block65Value2 := (recoveredBlock57Block65Value1) name.
    recoveredBlock57Block65Value3 := (recoveredBlock57Block65Value0) createTargetObject: (recoveredBlock57Block65Value2).
    recoveredBlock57Block65Value4 := recoveredBlock57Block65Value3.
    recoveredBlock57Block65Value5 := recoveredBlock57Block65Arg1.
    (recoveredBlock57Block65Value4) ehooksAttributesNode: (recoveredBlock57Block65Value5).
    recoveredBlock57Block65Local1 := recoveredBlock57Block65Value3.
    recoveredBlock57Block65Value6 := (self) targetObjects.
    recoveredBlock57Block65Value7 := recoveredBlock57Block65Local1.
    (recoveredBlock57Block65Value6) add: (recoveredBlock57Block65Value7).
    recoveredBlock57Block65Value8 := recoveredLocal2.
    recoveredBlock57Block65Value9 := recoveredBlock57Block65Arg1.
    recoveredBlock57Block65Value10 := (recoveredBlock57Block65Value9) name.
    recoveredBlock57Block65Value11 := recoveredBlock57Block65Local1.
    recoveredBlock57Block65Value12 := (recoveredBlock57Block65Value8) at: (recoveredBlock57Block65Value10) put: (recoveredBlock57Block65Value11).
    recoveredBlock57Block65Value12
].
    recoveredBlock57Value2 := (recoveredBlock57Value0) do: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := [:recoveredBlock108Arg1 | 
    | recoveredBlock108Local1 recoveredBlock108Stack0 recoveredBlock108Stack1 recoveredBlock108Stack2 recoveredBlock108Stack3 recoveredBlock108Stack4 recoveredBlock108PC recoveredBlock108Step recoveredBlock108Done recoveredBlock108Result |
    recoveredBlock108Stack0 := self.
    recoveredBlock108PC := 114.
    recoveredBlock108Done := false.
    [recoveredBlock108Done not] whileTrue: [
        recoveredBlock108Step := recoveredBlock108PC.
        recoveredBlock108Step = 114 ifTrue: [
            recoveredBlock108Stack1 := nil.
            recoveredBlock108PC := 115.
        ].
        recoveredBlock108Step = 115 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 116.
        ].
        recoveredBlock108Step = 116 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) isMapped.
            recoveredBlock108PC := 118.
        ].
        recoveredBlock108Step = 118 ifTrue: [
            (recoveredBlock108Stack2) ifTrue: [recoveredBlock108PC := 122] ifFalse: [recoveredBlock108PC := 162].
        ].
        recoveredBlock108Step = 122 ifTrue: [
            recoveredBlock108PC := 123.
        ].
        recoveredBlock108Step = 123 ifTrue: [
            recoveredBlock108Stack1 := recoveredLocal2.
            recoveredBlock108PC := 126.
        ].
        recoveredBlock108Step = 126 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Arg1.
            recoveredBlock108PC := 127.
        ].
        recoveredBlock108Step = 127 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) targetObject.
            recoveredBlock108PC := 129.
        ].
        recoveredBlock108Step = 129 ifTrue: [
            recoveredBlock108Stack2 := (recoveredBlock108Stack2) displayName.
            recoveredBlock108PC := 131.
        ].
        recoveredBlock108Step = 131 ifTrue: [
            recoveredBlock108Stack3 := [].
            recoveredBlock108PC := 133.
        ].
        recoveredBlock108Step = 133 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) at: (recoveredBlock108Stack2) ifAbsent: (recoveredBlock108Stack3).
            recoveredBlock108PC := 135.
        ].
        recoveredBlock108Step = 135 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Stack1.
            recoveredBlock108PC := 136.
        ].
        recoveredBlock108Step = 136 ifTrue: [
            recoveredBlock108Local1 := recoveredBlock108Stack2.
            recoveredBlock108PC := 137.
        ].
        recoveredBlock108Step = 137 ifTrue: [
            (recoveredBlock108Stack1 ~~ nil) ifTrue: [recoveredBlock108PC := 148] ifFalse: [recoveredBlock108PC := 140].
        ].
        recoveredBlock108Step = 140 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 141.
        ].
        recoveredBlock108Step = 141 ifTrue: [
            recoveredBlock108Stack2 := false.
            recoveredBlock108PC := 142.
        ].
        recoveredBlock108Step = 142 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) mappingState: (recoveredBlock108Stack2).
            recoveredBlock108PC := 144.
        ].
        recoveredBlock108Step = 144 ifTrue: [
            recoveredBlock108PC := 162.
        ].
        recoveredBlock108Step = 148 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 149.
        ].
        recoveredBlock108Step = 149 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) isMappingInvalid.
            recoveredBlock108PC := 151.
        ].
        recoveredBlock108Step = 151 ifTrue: [
            (recoveredBlock108Stack1) ifTrue: [recoveredBlock108PC := 158] ifFalse: [recoveredBlock108PC := 154].
        ].
        recoveredBlock108Step = 154 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 155.
        ].
        recoveredBlock108Step = 155 ifTrue: [
            recoveredBlock108Stack2 := true.
            recoveredBlock108PC := 156.
        ].
        recoveredBlock108Step = 156 ifTrue: [
            (recoveredBlock108Stack1) mappingState: (recoveredBlock108Stack2).
            recoveredBlock108PC := 158.
        ].
        recoveredBlock108Step = 158 ifTrue: [
            recoveredBlock108Stack1 := recoveredBlock108Arg1.
            recoveredBlock108PC := 159.
        ].
        recoveredBlock108Step = 159 ifTrue: [
            recoveredBlock108Stack2 := recoveredBlock108Local1.
            recoveredBlock108PC := 160.
        ].
        recoveredBlock108Step = 160 ifTrue: [
            recoveredBlock108Stack1 := (recoveredBlock108Stack1) targetObject: (recoveredBlock108Stack2).
            recoveredBlock108PC := 162.
        ].
        recoveredBlock108Step = 162 ifTrue: [
            recoveredBlock108Result := recoveredBlock108Stack1.
            recoveredBlock108Done := true.
        ].
    ].
    recoveredBlock108Result
].
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) targetObjects.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

