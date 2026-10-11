"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"EHOOKS.ic method 0x20000000; bytecode file offset 0xf138"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateSplitbar
    ^self
! !

"EHOOKS.ic method 0x20000038; bytecode file offset 0xf168"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processesSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"EHOOKS.ic method 0x200000cc; bytecode file offset 0xf1fc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isRemoveMappingPossible
    | recoveredLocal1 |
    ^false
! !

"EHOOKS.ic method 0x20000194; bytecode file offset 0xf2c8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeEHooksApplCheckWellConfigured
    | recoveredValue0 |
    recoveredValue0 := (self) initializeEHooksApplCheckWellConfiguredPromptMissingFiles: (true).
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200001b4; bytecode file offset 0xf2e8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isOpenModulePossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSelectedProcess.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"EHOOKS.ic method 0x200001c8; bytecode file offset 0xf330"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isRemoveUndefinedPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAllUndefProcesses.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"EHOOKS.ic method 0x200001d8; bytecode file offset 0xf330"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
showUnusedOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetShowUnusedOnly.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"EHOOKS.ic method 0x200001e8; bytecode file offset 0xf330"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
itemIsModifiable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) modifiable.
    ^recoveredValue1
! !

"EHOOKS.ic method 0x200001f8; bytecode file offset 0xf330"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
deleteBypassFuncPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedBypassFuncs.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"EHOOKS.ic method 0x2000023c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksCommunicationWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetEHooksCommunicationWidget').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000024c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetProcessModules
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('processes').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000025c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetShowUnusedOnly
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('unused').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000026c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncSettingsLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('bypassFuncSettingsLabel').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000027c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetProcesses
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('processes').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000028c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetPeriod
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('period').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200002ac; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetNotebook
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('notebook').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200002cc; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetBypassFunc
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('bypassFuncs').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200002dc; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetAssignProcesses
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('removeProcess').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200002ec; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetStartEHooksButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetStartEHooksButton').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200002fc; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetFilterText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('filterText').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000030c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetDeassignProcesses
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('addProcess').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000032c; bytecode file offset 0xf474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetDispatchPoint
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dispatchPoint').
    ^recoveredValue0
! !

"EHOOKS.ic method 0x200003a4; bytecode file offset 0xf514"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateForNewPage
    (self) updateContentsLocal.
    ^self
! !

"EHOOKS.ic method 0x200003bc; bytecode file offset 0xf514"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateFilter
    (self) updateContentsLocal.
    ^self
! !

"EHOOKS.ic method 0x200003c8; bytecode file offset 0xf514"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
aboutToClose
    (self) cleanupEHooks.
    ^self
! !

"EHOOKS.ic method 0x20000450; bytecode file offset 0xf598"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
hasProcessReferences: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) eHooksConfig.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) hasProcessReferences: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000460; bytecode file offset 0xf598"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getAsdVariableFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) eHooksCommunicationWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getAsdVariableFor: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000498; bytecode file offset 0xf5f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksWidgetDestroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cleanupEHooks.
    ^self
! !

"EHOOKS.ic method 0x200004a4; bytecode file offset 0xf5f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
unusedValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkUpdateProcessList.
    ^self
! !

"EHOOKS.ic method 0x200004b0; bytecode file offset 0xf5f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncsextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateBypassFuncWidgets.
    ^self
! !

"EHOOKS.ic method 0x200004bc; bytecode file offset 0xf5f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
motion: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    (self) updateStatusBar.
    ^self
! !

"EHOOKS.ic method 0x200004ec; bytecode file offset 0xf634"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateEHooksCommunicationList
    | recoveredValue0 |
    recoveredValue0 := (self) eHooksCommunicationWidget.
    (recoveredValue0) updateList.
    ^self
! !

"EHOOKS.ic method 0x200005f8; bytecode file offset 0xf728"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksConfig
    | recoveredValue0 |
    recoveredValue0 := eHooksConfig.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x2000060c; bytecode file offset 0xf73c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
projectKey
    | recoveredValue0 |
    recoveredValue0 := projectKey.
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20000694; bytecode file offset 0xf7cc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isSelectAllPossible
    ^false
! !

"EHOOKS.ic method 0x200006e4; bytecode file offset 0xf818"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
deassignProcessIndex: recoveredArg1 fromTask: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteProcessIndex: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x200006fc; bytecode file offset 0xf83c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
modifyVerifyTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) modifyVerifyTabStrip: (recoveredValue0).
    ^self
! !

"EHOOKS.ic method 0x20000708; bytecode file offset 0xf83c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
singleSelectionTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) singleSelectionTabStrip: (recoveredValue0).
    ^self
! !

"EHOOKS.ic method 0x2000075c; bytecode file offset 0xf8a4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuRemoveUndefAssignments
    | recoveredValue0 |
    recoveredValue0 := (self) getAllUndefProcesses.
    (self) deassignProcesses: (recoveredValue0).
    ^self
! !

"EHOOKS.ic method 0x2000076c; bytecode file offset 0xf8a4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
makeBypassFuncListConsistent
    | recoveredValue0 |
    recoveredValue0 := (self) getBypassFuncs.
    (self) updateAssignedProcessesMakeConsistentBypassFuncs: (recoveredValue0).
    ^self
! !

"EHOOKS.ic method 0x200007a8; bytecode file offset 0xf8e0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
renameBypassFuncPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) selectedBypassFuncs.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x200008a0; bytecode file offset 0xf9d8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    (self) projectKey: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x200008bc; bytecode file offset 0xf9f4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
elementNameVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    (recoveredValue0) value: (recoveredValue2).
    ^self
! !

"EHOOKS.ic method 0x200008f8; bytecode file offset 0xfa30"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkAfterProjectOptionChanges
    (self) checkEHooksProjectFile.
    (self) checkEHooksConfigurationFile.
    ^self
! !

"EHOOKS.ic method 0x20000948; bytecode file offset 0xfa80"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
singleSelectionTabStrip: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super singleSelectionTabStrip: (recoveredValue0).
    ^self
! !

"EHOOKS.ic method 0x200009e8; bytecode file offset 0xfb20"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
listDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) itemPosition.
    (recoveredValue0) expandCollapsePos: (recoveredValue2) notify: (false).
    ^self
! !

"EHOOKS.ic method 0x20000a04; bytecode file offset 0xfb40"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initEHooksConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (self) getEHooksConfigForProject: (recoveredValue0).
    (self) eHooksConfig: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x20000bd4; bytecode file offset 0xfd04"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eHooksConfig := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000be8; bytecode file offset 0xfd18"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
projectKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectKey := recoveredValue0.
    ^self
! !

"EHOOKS.ic method 0x20000c38; bytecode file offset 0xfd6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getSendListFrom: recoveredArg1 entry: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getIndex: (1) fromList: (recoveredValue0) entry: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000c50; bytecode file offset 0xfd84"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getReceiveListFrom: recoveredArg1 entry: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getIndex: (2) fromList: (recoveredValue0) entry: (recoveredValue1).
    ^recoveredValue2
! !

"EHOOKS.ic method 0x20000c68; bytecode file offset 0xfdb8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
elementPathVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) getPathForElementPath: (recoveredValue2).
    (recoveredValue0) value: (recoveredValue3).
    ^self
! !

"EHOOKS.ic method 0x20000c7c; bytecode file offset 0xfdb8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncschildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (self) processObjectsForBypassFunc: (recoveredValue2).
    (recoveredValue0) children: (recoveredValue3).
    ^self
! !

"EHOOKS.ic method 0x20000c9c; bytecode file offset 0xfde0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
promptEHooksApplError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ASDSimCTGSLVarStepSolver.
    recoveredValue1 := ('Unable to start EHOOKS-DEV.\Please ensure, that EHOOKS-DEV is installed correctly.') withCrs.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) prompt.
    ^recoveredValue3
! !

"EHOOKS.ic method 0x20000e90; bytecode file offset 0xffe8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEditRename
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRenamePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuBypassFuncRename.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20000ea0; bytecode file offset 0xffe8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEditDelete
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDeletePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuBypassFuncDelete.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20000eb0; bytecode file offset 0xffe8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEditInsert
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInsertPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) menuBypassFuncAdd.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20000ed0; bytecode file offset 0x10008"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isBypassFuncAddPossible
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigIsValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack0 := (recoveredStack0) itemIsModifiable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20000f20; bytecode file offset 0x10058"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortMappingTableByColumn: recoveredArg1 list: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (self) setSortBlockForWidget: (recoveredValue0) fromColumn: (recoveredValue1).
    (self) updateContentsLocal.
    ^self
! !

"EHOOKS.ic method 0x20000f70; bytecode file offset 0x100ac"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
project
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000f9cArg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20000fbc; bytecode file offset 0x100f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
ecuVariableVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) getLabelForEcuVariable: (recoveredValue2) adapter: (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"EHOOKS.ic method 0x20000fe0; bytecode file offset 0x10118"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksConfigIsValid
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
            recoveredStack2 := (recoveredStack2) eHooksConfig.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileIsValid.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001000; bytecode file offset 0x1013c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getBypassFuncs
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBypassFuncs.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001024; bytecode file offset 0x10160"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
udpateEHooksASCETConfigFile: recoveredArg1
    (self) cleanupEHooks.
    (self) eHooksConfig: (nil).
    (self) initEHooksConfig.
    ^self
! !

"EHOOKS.ic method 0x20001080; bytecode file offset 0x101b8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isInsertPossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200010c4; bytecode file offset 0x10200"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortedElementsForMapping
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedElementsForMapping.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200010e8; bytecode file offset 0x10220"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassForTargetItem: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentOfItem: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001160; bytecode file offset 0x102a0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateContents
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigIsValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) writeASCETConfigFile.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) updateContentsLocal.
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

"EHOOKS.ic method 0x20001274; bytecode file offset 0x103cc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortedProcessVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) processVariables.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28000fe4Arg1 :block28000fe4Arg2 | 
    | block28000fe4Value0 block28000fe4Value1 block28000fe4Value2 block28000fe4Value3 block28000fe4Value4 |
    block28000fe4Value0 := block28000fe4Arg1.
    block28000fe4Value1 := (block28000fe4Value0) label.
    block28000fe4Value2 := block28000fe4Arg2.
    block28000fe4Value3 := (block28000fe4Value2) label.
    block28000fe4Value4 := (block28000fe4Value1) < (block28000fe4Value3).
    block28000fe4Value4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200012b8; bytecode file offset 0x103f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
mappingTableColumnHeadingSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedColumns.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectedColumns.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) sortMappingTableByColumn: (recoveredStack2) list: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200012e4; bytecode file offset 0x10420"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getLabelForEcuVariable: recoveredArg1 adapter: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMappingForAscetVariable: (recoveredStack2).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := '---'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x2000132c; bytecode file offset 0x10468"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2800102cArg1 :block2800102cArg2 | 
    | block2800102cValue0 block2800102cValue1 block2800102cValue2 block2800102cValue3 block2800102cValue4 block2800102cValue5 block2800102cValue6 |
    block2800102cValue0 := block2800102cArg1.
    block2800102cValue1 := (block2800102cValue0) last.
    block2800102cValue2 := (block2800102cValue1) defaultGlobalLabel.
    block2800102cValue3 := block2800102cArg2.
    block2800102cValue4 := (block2800102cValue3) last.
    block2800102cValue5 := (block2800102cValue4) defaultGlobalLabel.
    block2800102cValue6 := (block2800102cValue2) < (block2800102cValue5).
    block2800102cValue6
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001354; bytecode file offset 0x10498"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectedBypassFuncs
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28001050Arg1 | 
    | block28001050Value0 block28001050Value1 block28001050Value2 |
    block28001050Value0 := block28001050Arg1.
    block28001050Value1 := (block28001050Value0) isProcess.
    block28001050Value2 := (block28001050Value1) not.
    block28001050Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001384; bytecode file offset 0x104c0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksProject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eHooksScripting.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) project.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"EHOOKS.ic method 0x200013ac; bytecode file offset 0x104ec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksApplication
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) EHooksApplication.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) key.
    ^recoveredBlock6Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"EHOOKS.ic method 0x20001448; bytecode file offset 0x10598"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isBypassFuncDeletePossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigIsValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteBypassFuncPossible.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000145c; bytecode file offset 0x10598"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isBypassFuncRenamePossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigIsValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) renameBypassFuncPossible.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001484; bytecode file offset 0x105c8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncRename
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBypassFuncRenamePossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetBypassFunc.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedPos.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) editItemAt: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200014b4; bytecode file offset 0x105f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuProcesseDeassign
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetBypassFunc.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSelectedPos.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) deassignProcesses: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000156c; bytecode file offset 0x106a8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetStartEHooksButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ASDEHooksSpecificationToolbox.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) menuEHooksOpen: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200015bc; bytecode file offset 0x10714"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isBypassFuncMoveUpPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigIsValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200015d4; bytecode file offset 0x10714"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isBypassFuncMoveDownPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigIsValid.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001668; bytecode file offset 0x107b8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isDeletePossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBypassFuncDeletePossible.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000167c; bytecode file offset 0x107b8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isRenamePossible
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBypassFuncRenamePossible.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200016d0; bytecode file offset 0x10810"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEditDeleteFocusLocal
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuBypassFuncDelete.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasFocus.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) isBypassFuncDeletePossible.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001700; bytecode file offset 0x10848"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncDelete
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
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedBypassFuncs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteBypassFuncs: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProcessModules.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200018fc; bytecode file offset 0x10a44"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
performSetup
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectOptions.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ASDMethod.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionGroupTargetSpecific.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) editOptionsFor: (recoveredStack1) firstSelection: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001938; bytecode file offset 0x10aa0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectedSequenceCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block28001194Arg1 | 
    | block28001194Stack0 block28001194Stack1 block28001194Stack2 block28001194Stack3 block28001194PC block28001194Step block28001194Done block28001194Result |
    block28001194Stack0 := self.
    block28001194PC := 4.
    block28001194Done := false.
    [block28001194Done not] whileTrue: [
        block28001194Step := block28001194PC.
        block28001194Step = 4 ifTrue: [
            block28001194Stack1 := false.
            block28001194PC := 5.
        ].
        block28001194Step = 5 ifTrue: [
            block28001194Stack2 := block28001194Arg1.
            block28001194PC := 6.
        ].
        block28001194Step = 6 ifTrue: [
            block28001194Stack2 := (block28001194Stack2) isString.
            block28001194PC := 7.
        ].
        block28001194Step = 7 ifTrue: [
            (block28001194Stack2) ifTrue: [block28001194PC := 14] ifFalse: [block28001194PC := 10].
        ].
        block28001194Step = 10 ifTrue: [
            block28001194PC := 11.
        ].
        block28001194Step = 11 ifTrue: [
            block28001194Stack1 := block28001194Arg1.
            block28001194PC := 12.
        ].
        block28001194Step = 12 ifTrue: [
            block28001194Stack1 := (block28001194Stack1) isProcess.
            block28001194PC := 14.
        ].
        block28001194Step = 14 ifTrue: [
            block28001194Result := block28001194Stack1.
            block28001194Done := true.
        ].
    ].
    block28001194Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001958; bytecode file offset 0x10aa0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectedProcesses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProcessModules.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280011b8Arg1 | 
    | block280011b8Stack0 block280011b8Stack1 block280011b8Stack2 block280011b8Stack3 block280011b8PC block280011b8Step block280011b8Done block280011b8Result |
    block280011b8Stack0 := self.
    block280011b8PC := 4.
    block280011b8Done := false.
    [block280011b8Done not] whileTrue: [
        block280011b8Step := block280011b8PC.
        block280011b8Step = 4 ifTrue: [
            block280011b8Stack1 := false.
            block280011b8PC := 5.
        ].
        block280011b8Step = 5 ifTrue: [
            block280011b8Stack2 := block280011b8Arg1.
            block280011b8PC := 6.
        ].
        block280011b8Step = 6 ifTrue: [
            block280011b8Stack2 := (block280011b8Stack2) isString.
            block280011b8PC := 7.
        ].
        block280011b8Step = 7 ifTrue: [
            (block280011b8Stack2) ifTrue: [block280011b8PC := 14] ifFalse: [block280011b8PC := 10].
        ].
        block280011b8Step = 10 ifTrue: [
            block280011b8PC := 11.
        ].
        block280011b8Step = 11 ifTrue: [
            block280011b8Stack1 := block280011b8Arg1.
            block280011b8PC := 12.
        ].
        block280011b8Step = 12 ifTrue: [
            block280011b8Stack1 := (block280011b8Stack1) isProcess.
            block280011b8PC := 14.
        ].
        block280011b8Step = 14 ifTrue: [
            block280011b8Result := block280011b8Stack1.
            block280011b8Done := true.
        ].
    ].
    block280011b8Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200019f4; bytecode file offset 0x10b28"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortBlockForEcuVariable: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (self) getLabelForEcuVariable: (recoveredBlock4Value0) adapter: (recoveredBlock4Value1).
    recoveredBlock4Value3 := recoveredBlock4Arg2.
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := (self) getLabelForEcuVariable: (recoveredBlock4Value3) adapter: (recoveredBlock4Value4).
    recoveredBlock4Value6 := (recoveredBlock4Value2) < (recoveredBlock4Value5).
    recoveredBlock4Value6
].
    ^recoveredValue0
! !

"EHOOKS.ic method 0x20001b98; bytecode file offset 0x10ce0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncAdd
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) addBypassFunc.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) menuBypassFuncRename.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001bd4; bytecode file offset 0x10d18"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkUpdateProcessList
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) widgetProcessModules.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredLocal1 := recoveredValue1.
    (self) updateProcessClassList.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) widgetProcessModules.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) selectItem: (recoveredBlock11Value1) notify: (true).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"EHOOKS.ic method 0x20001c40; bytecode file offset 0x10d84"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
filterTextKeyReleased: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) type.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := KeyRelease.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) keysym.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := XKReturn.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) updateFilter.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001c78; bytecode file offset 0x10db8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksScripting
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eHooksApplication.
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
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) eHooksApplication.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isRunning.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 24].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) scripting.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"EHOOKS.ic method 0x20001cb0; bytecode file offset 0x10df8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processClassHasUnassignedProcesses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('VariantPrototype').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) processes.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := assignedProcesses.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) aliasName.
    recoveredBlock12Value3 := (recoveredBlock12Value0) includes: (recoveredBlock12Value2).
    recoveredBlock12Value4 := (recoveredBlock12Value3) not.
    recoveredBlock12Value4
].
    recoveredValue4 := (recoveredValue2) anySatisfy: (recoveredValue3).
    ^recoveredValue4
! !

"EHOOKS.ic method 0x20001cf0; bytecode file offset 0x10e34"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getSelectedProcess
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) processMethod.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) someElement.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001d2c; bytecode file offset 0x10e6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
expandBypassFunc: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) refreshHierarchyPos: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) expandPos: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001d64; bytecode file offset 0x10eac"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksDispatch
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEHooksApplCheckWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) checkEHooksAppl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuTriggerConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := (self) setDispatchPoint: (recoveredBlock16Value0).
    recoveredBlock16Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"EHOOKS.ic method 0x20001da4; bytecode file offset 0x10eec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateNotebookSensitivity
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNotebook.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNotebook.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) unmanageChild.
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

"EHOOKS.ic method 0x20001de4; bytecode file offset 0x10f2c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateBypassFuncList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBypassFuncs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updateAssignedProcessesMakeConsistentBypassFunc: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
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

"EHOOKS.ic method 0x20001e7c; bytecode file offset 0x10fcc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
removeProcessActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemIsModifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'No Process selected !!'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) menuProcesseDeassign.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001ec4; bytecode file offset 0x11014"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncsendEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkAnsiCNameCallData: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValue.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) renameBypassFunc: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ehooksConfigModified.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001f0c; bytecode file offset 0x1104c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkProjectIsWellConfigured: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) inputA2LFile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) inputECUImage.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20001f80; bytecode file offset 0x110d4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEHooksFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initEHooksConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) updateWidgetSensitivity.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) updateNotebookSensitivity.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNotebook.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280011dcArg1 | 
    | block280011dcValue0 block280011dcValue1 block280011dcValue2 |
    block280011dcValue0 := block280011dcArg1.
    block280011dcValue1 := (block280011dcValue0) userData.
    block280011dcValue2 := (block280011dcValue1) resize.
    block280011dcValue2
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20001fcc; bytecode file offset 0x1110c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenCorrespondingModule
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedProcess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := recoveredLocal1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) openModuleForProcess: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200020d4; bytecode file offset 0x1122c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateContentsLocal
    | recoveredLocal1 recoveredLocal2 recoveredValue0 |
    (self) updateWidgetSensitivity.
    (self) updateNotebookSensitivity.
    (self) updateStatusBar.
    (self) updateProcessClassList.
    (self) updateBypassFuncList.
    (self) updateBypassFuncWidgets.
    recoveredValue0 := (self) bypassFuncSettingsLabel.
    (recoveredValue0) labelString: (' ').
    (self) updateEHooksCommunicationList.
    ^self
! !

"EHOOKS.ic method 0x20002128; bytecode file offset 0x1126c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksApplication: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) EHooksApplication: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Association.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) key: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) EHooksApplication: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002320; bytecode file offset 0x1145c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncIndexOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentOfItem: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002404; bytecode file offset 0x11558"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
assignProcesses: recoveredArg1 toBypassFunc: recoveredArg2 afterIndex: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) assignProcesses: (recoveredStack1) toBypassFunc: (recoveredStack2) afterIndex: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := assignedProcesses.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block2800126cArg1 | 
    | block2800126cValue0 block2800126cValue1 block2800126cValue2 |
    block2800126cValue0 := block2800126cArg1.
    block2800126cValue1 := (block2800126cValue0) at: (1).
    block2800126cValue2 := (block2800126cValue1) aliasName.
    block2800126cValue2
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) expandBypassFunc: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) checkUpdateProcessList.
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

"EHOOKS.ic method 0x20002458; bytecode file offset 0x115a0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createLabel: recoveredArg1 inForm: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) zapBlanks.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredBlock11Value0.
    recoveredBlock11Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock11Value1) alignment: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredArg1.
    recoveredBlock11Value4 := (recoveredBlock11Value0) labelString: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    recoveredValue4 := (recoveredValue0) createLabel: (recoveredValue2) argBlock: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) manageChild.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"EHOOKS.ic method 0x200024f4; bytecode file offset 0x11644"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncAttributeLabelFor: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Settings for: '.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) someElement.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) funcNodeName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Settings for bypass functions'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002548; bytecode file offset 0x11694"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processVariables
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) processInstVars.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := false.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := [:block28001290Arg1 | 
    | block28001290Value0 |
    block28001290Value0 := block28001290Arg1.
    block28001290Value0
].
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) sgClassIfUndefined: (recoveredBlock6Stack3).
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) isRBDBUndefinedObject.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 38] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) isProcessClass.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    recoveredValue3 := (recoveredValue1) select: (recoveredValue2).
    ^recoveredValue3
! !

"EHOOKS.ic method 0x200025ec; bytecode file offset 0x11738"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksIsRunningFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) eHooksApplication.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Local1 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
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
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) isRunning.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 18] ifFalse: [recoveredBlock5PC := 38].
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) class.
            recoveredBlock5PC := 22.
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) EHooksApplication.
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) value.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack3.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            (recoveredBlock5Stack2 == nil) ifTrue: [recoveredBlock5PC := 37] ifFalse: [recoveredBlock5PC := 30].
        ].
        recoveredBlock5Step = 30 ifTrue: [
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Local1.
            recoveredBlock5PC := 32.
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 35.
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) equals: (recoveredBlock5Stack2).
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 38 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"EHOOKS.ic method 0x2000263c; bytecode file offset 0x1178c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
setDispatchPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) eHooksConfig.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (recoveredValue0) addDispatchPoints: (recoveredValue3).
    recoveredValue4 := (self) selectedBypassFuncs.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    recoveredBlock16Value1 := [:recoveredBlock16Block23Arg1 | 
    | recoveredBlock16Block23Value0 recoveredBlock16Block23Value1 recoveredBlock16Block23Value2 |
    recoveredBlock16Block23Value0 := recoveredBlock16Block23Arg1.
    recoveredBlock16Block23Value1 := recoveredArg1.
    recoveredBlock16Block23Value2 := (recoveredBlock16Block23Value0) changeDispatchPoint: (recoveredBlock16Block23Value1).
    recoveredBlock16Block23Value2
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^self
! !

"EHOOKS.ic method 0x20002690; bytecode file offset 0x117dc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
periodForFuncs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block280012b4Arg1 | 
    | block280012b4Stack0 block280012b4Stack1 block280012b4Stack2 block280012b4PC block280012b4Step block280012b4Done block280012b4Result |
    block280012b4Stack0 := self.
    block280012b4PC := 4.
    block280012b4Done := false.
    [block280012b4Done not] whileTrue: [
        block280012b4Step := block280012b4PC.
        block280012b4Step = 4 ifTrue: [
            block280012b4Stack1 := block280012b4Arg1.
            block280012b4PC := 5.
        ].
        block280012b4Step = 5 ifTrue: [
            block280012b4Stack1 := (block280012b4Stack1) period.
            block280012b4PC := 6.
        ].
        block280012b4Step = 6 ifTrue: [
            (block280012b4Stack1 == nil) ifTrue: [block280012b4PC := 16] ifFalse: [block280012b4PC := 10].
        ].
        block280012b4Step = 10 ifTrue: [
            block280012b4Stack1 := block280012b4Arg1.
            block280012b4PC := 11.
        ].
        block280012b4Step = 11 ifTrue: [
            block280012b4Stack1 := (block280012b4Stack1) period.
            block280012b4PC := 12.
        ].
        block280012b4Step = 12 ifTrue: [
            block280012b4PC := 18.
        ].
        block280012b4Step = 16 ifTrue: [
            block280012b4Stack1 := ''.
            block280012b4PC := 18.
        ].
        block280012b4Step = 18 ifTrue: [
            block280012b4Result := block280012b4Stack1.
            block280012b4Done := true.
        ].
    ].
    block280012b4Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20002730; bytecode file offset 0x1187c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getEHooksConfigForProject: recoveredArg1
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEHooksProjectFile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 |
    recoveredBlock14Value0 := ASDEHooksConfiguration.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) asFilename.
    recoveredBlock14Value3 := recoveredArg1.
    recoveredBlock14Value4 := (recoveredBlock14Value0) createForASCETConfigFile: (recoveredBlock14Value2) project: (recoveredBlock14Value3).
    recoveredBlock14Value5 := [:recoveredBlock14Block30Arg1 | 
    | recoveredBlock14Block30Value0 |
    recoveredBlock14Block30Value0 := recoveredBlock14Block30Arg1.
    ^recoveredBlock14Block30Value0
].
    recoveredBlock14Value6 := (recoveredBlock14Value4) ifNotNil: (recoveredBlock14Value5).
    recoveredBlock14Value6
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002784; bytecode file offset 0x118d4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
attachWidget: recoveredArg1 leftToFormTopTo: recoveredArg2 topOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := XmATTACHWIDGET.
    (recoveredBlock7Value1) topAttachment: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    recoveredBlock7Value4 := recoveredArg3.
    (recoveredBlock7Value3) topOffset: (recoveredBlock7Value4).
    recoveredBlock7Value5 := recoveredBlock7Value0.
    recoveredBlock7Value6 := recoveredArg2.
    (recoveredBlock7Value5) topWidget: (recoveredBlock7Value6).
    recoveredBlock7Value7 := recoveredBlock7Value0.
    recoveredBlock7Value8 := XmATTACHFORM.
    (recoveredBlock7Value7) leftAttachment: (recoveredBlock7Value8).
    recoveredBlock7Value9 := (recoveredBlock7Value0) leftOffset: (5).
    recoveredBlock7Value9
].
    (recoveredValue0) setValuesBlock: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x200027dc; bytecode file offset 0x11928"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processesForTask: recoveredArg1 processInstVars: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) project.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) processReferencesForProject: (recoveredValue3) processInstVars: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := recoveredBlock20Arg1.
    recoveredBlock20Value2 := (recoveredBlock20Value1) duplicate.
    recoveredBlock20Value3 := (recoveredBlock20Value0) copyWith: (recoveredBlock20Value2).
    recoveredBlock20Value4 := recoveredBlock20Value3.
    recoveredLocal1 := recoveredBlock20Value4.
    recoveredBlock20Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"EHOOKS.ic method 0x20002830; bytecode file offset 0x11984"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateStatusBar
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'EHOOKS file: '.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfigFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'Please perform "add project file" to select an EHOOKS project file.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) widgetstatusBarPan4.
    recoveredBlock28Value2 := recoveredLocal1.
    recoveredBlock28Value3 := (recoveredBlock28Value1) labelString: (recoveredBlock28Value2).
    recoveredBlock28Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200028dc; bytecode file offset 0x11a20"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksECUWriteSelectionName: recoveredArg1 measurementName: recoveredArg2 index: recoveredArg3 selection: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEHooksApplCheckWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EHooksSelect.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuSingleWriteSelectionName: (recoveredStack1) measurementName: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := EHooksSelectCopy.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuSingleWriteSelectionName: (recoveredStack1) measurementName: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002928; bytecode file offset 0x11a70"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksECUReadSelectionName: recoveredArg1 measurementName: recoveredArg2 index: recoveredArg3 selection: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEHooksApplCheckWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := EHooksSelect.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuSingleReadSelectionName: (recoveredStack1) measurementName: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := EHooksSelectCopy.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ecuReadBackupCopySelectionName: (recoveredStack1) measurementName: (recoveredStack2) index: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002978; bytecode file offset 0x11ac4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkEHooksAppl
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistenceOfNecessaryFilesPrompt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) performSetup.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) checkEHooksProjectFile.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksConfigurationFile.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileIsValid.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksAppl.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
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

"EHOOKS.ic method 0x20002a60; bytecode file offset 0x11bb8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateWidgetSensitivity
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartEHooksButton.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) itemIsModifiable.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasEHooksTarget.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetStartEHooksButton.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := StartEHooks.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAssignProcesses.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDeassignProcesses.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemIsModifiable.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002ac4; bytecode file offset 0x11c3c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getRenderableBitmapStringForElement: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := (recoveredStack4) visualCallBackImageElement.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := AbtWinHelpApp.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) typeLabel.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) resourceManager.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) visualCallBackImageElement.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) returnIconWithName: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) iconName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20002b48; bytecode file offset 0x11c98"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getPathForElementPath: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 |
    recoveredBlock15Value0 := recoveredLocal1.
    recoveredBlock15Value1 := recoveredBlock15Arg1.
    recoveredBlock15Value2 := (recoveredBlock15Value1) elementName.
    recoveredBlock15Value3 := (recoveredBlock15Value0) nextPutAll: (recoveredBlock15Value2).
    recoveredBlock15Value3
].
    recoveredValue4 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := (recoveredBlock30Value0) nextPutAll: ('/').
    recoveredBlock30Value1
].
    (recoveredValue2) do: (recoveredValue3) andBetweenDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"EHOOKS.ic method 0x20002ba4; bytecode file offset 0x11d04"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncsbeginEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProcess.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) funcNodeName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := EwTextEditPolicy.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) @ (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) selection: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) editPolicy: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) doit: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002c10; bytecode file offset 0x11d68"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
addVariable: recoveredArg1 toList: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) newVariableWrite.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 |
    recoveredBlock14Value0 := recoveredBlock14Arg1.
    recoveredBlock14Value1 := recoveredArg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) name.
    (recoveredBlock14Value0) name: (recoveredBlock14Value2).
    recoveredBlock14Value3 := recoveredBlock14Arg1.
    recoveredBlock14Value4 := recoveredArg1.
    recoveredBlock14Value5 := (recoveredBlock14Value4) measurementName.
    (recoveredBlock14Value3) measurementName: (recoveredBlock14Value5).
    recoveredBlock14Value6 := recoveredBlock14Arg1.
    recoveredBlock14Value7 := recoveredArg1.
    recoveredBlock14Value8 := (recoveredBlock14Value7) arrayIndex.
    (recoveredBlock14Value6) arrayIndex: (recoveredBlock14Value8).
    recoveredBlock14Value9 := recoveredArg2.
    recoveredBlock14Value10 := recoveredBlock14Arg1.
    recoveredBlock14Value11 := (recoveredBlock14Value9) add: (recoveredBlock14Value10).
    recoveredBlock14Value11
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20002c78; bytecode file offset 0x11dd4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
attachWidget: recoveredArg1 rightToFormTopTo: recoveredArg2 rightOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 recoveredBlock7Value8 recoveredBlock7Value9 recoveredBlock7Value10 recoveredBlock7Value11 recoveredBlock7Value12 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := recoveredBlock7Value0.
    recoveredBlock7Value2 := XmATTACHWIDGET.
    (recoveredBlock7Value1) topAttachment: (recoveredBlock7Value2).
    recoveredBlock7Value3 := recoveredBlock7Value0.
    (recoveredBlock7Value3) topOffset: (5).
    recoveredBlock7Value4 := recoveredBlock7Value0.
    recoveredBlock7Value5 := recoveredArg2.
    (recoveredBlock7Value4) topWidget: (recoveredBlock7Value5).
    recoveredBlock7Value6 := recoveredBlock7Value0.
    recoveredBlock7Value7 := XmATTACHFORM.
    (recoveredBlock7Value6) rightAttachment: (recoveredBlock7Value7).
    recoveredBlock7Value8 := recoveredBlock7Value0.
    recoveredBlock7Value9 := recoveredArg3.
    (recoveredBlock7Value8) rightOffset: (recoveredBlock7Value9).
    recoveredBlock7Value10 := recoveredBlock7Value0.
    recoveredBlock7Value11 := XmATTACHOPPOSITEFORM.
    (recoveredBlock7Value10) leftAttachment: (recoveredBlock7Value11).
    recoveredBlock7Value12 := (recoveredBlock7Value0) leftOffset: (-130).
    recoveredBlock7Value12
].
    (recoveredValue0) setValuesBlock: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x20002ce4; bytecode file offset 0x11e30"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
dispatchPointForFuncs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) dispatchPoint.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 33] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) dispatchPoint.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) add: (recoveredBlock13Stack2).
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20002d40; bytecode file offset 0x11e9c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
addProcessActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemIsModifiable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) selectedProcesses.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'No Process selected !!'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedBypassFuncs.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedSequenceCalls.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'No Bypass Function selected !!'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) menuProcesseAssign.
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

"EHOOKS.ic method 0x20002e18; bytecode file offset 0x11f68"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getIndex: recoveredArg1 fromList: recoveredArg2 entry: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) first.
    recoveredBlock7Value2 := recoveredArg3.
    recoveredBlock7Value3 := (recoveredBlock7Value1) equals: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 recoveredBlock25Value5 recoveredBlock25Value6 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) at: (2).
    recoveredBlock25Value2 := recoveredArg1.
    recoveredBlock25Value3 := [].
    recoveredBlock25Value4 := (recoveredBlock25Value1) at: (recoveredBlock25Value2) ifAbsent: (recoveredBlock25Value3).
    recoveredBlock25Value5 := [:recoveredBlock25Block44Arg1 | 
    | recoveredBlock25Block44Value0 |
    recoveredBlock25Block44Value0 := recoveredBlock25Block44Arg1.
    ^recoveredBlock25Block44Value0
].
    recoveredBlock25Value6 := (recoveredBlock25Value4) ifNotNil: (recoveredBlock25Value5).
    recoveredBlock25Value6
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^#()
! !

"EHOOKS.ic method 0x20002ef8; bytecode file offset 0x12058"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processeschildrenCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'VariantPrototype'.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) processes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) showUnusedOnly.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 |
    recoveredBlock21Value0 := assignedProcesses.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := (recoveredBlock21Value1) aliasName.
    recoveredBlock21Value3 := (recoveredBlock21Value0) includes: (recoveredBlock21Value2).
    recoveredBlock21Value4 := (recoveredBlock21Value3) not.
    recoveredBlock21Value4
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block280012fcArg1 :block280012fcArg2 | 
    | block280012fcValue0 block280012fcValue1 block280012fcValue2 block280012fcValue3 block280012fcValue4 |
    block280012fcValue0 := block280012fcArg1.
    block280012fcValue1 := (block280012fcValue0) label.
    block280012fcValue2 := block280012fcArg2.
    block280012fcValue3 := (block280012fcValue2) label.
    block280012fcValue4 := (block280012fcValue1) < (block280012fcValue3).
    block280012fcValue4
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) children: (recoveredStack1).
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

"EHOOKS.ic method 0x20002f70; bytecode file offset 0x12110"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
allEcuVariablesFromList: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) values.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28001320Arg1 | 
    | block28001320Stack0 block28001320Stack1 block28001320Stack2 block28001320Stack3 block28001320PC block28001320Step block28001320Done block28001320Result |
    block28001320Stack0 := self.
    block28001320PC := 4.
    block28001320Done := false.
    [block28001320Done not] whileTrue: [
        block28001320Step := block28001320PC.
        block28001320Step = 4 ifTrue: [
            block28001320Stack1 := false.
            block28001320PC := 5.
        ].
        block28001320Step = 5 ifTrue: [
            block28001320Stack2 := block28001320Arg1.
            block28001320PC := 6.
        ].
        block28001320Step = 6 ifTrue: [
            (block28001320Stack2 == nil) ifTrue: [block28001320PC := 14] ifFalse: [block28001320PC := 10].
        ].
        block28001320Step = 10 ifTrue: [
            block28001320PC := 11.
        ].
        block28001320Step = 11 ifTrue: [
            block28001320Stack1 := block28001320Arg1.
            block28001320PC := 12.
        ].
        block28001320Step = 12 ifTrue: [
            block28001320Stack1 := (block28001320Stack1) name.
            block28001320PC := 13.
        ].
        block28001320Step = 13 ifTrue: [
            block28001320Stack1 := (block28001320Stack1) notNil.
            block28001320PC := 14.
        ].
        block28001320Step = 14 ifTrue: [
            block28001320Result := block28001320Stack1.
            block28001320Done := true.
        ].
    ].
    block28001320Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := [:block28001344Arg1 :block28001344Arg2 | 
    | block28001344Value0 block28001344Value1 block28001344Value2 block28001344Value3 block28001344Value4 |
    block28001344Value0 := block28001344Arg1.
    block28001344Value1 := (block28001344Value0) name.
    block28001344Value2 := block28001344Arg2.
    block28001344Value3 := (block28001344Value2) name.
    block28001344Value4 := (block28001344Value1) < (block28001344Value3).
    block28001344Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:block28001368Arg1 | 
    | block28001368Value0 block28001368Value1 block28001368Value2 block28001368Value3 block28001368Value4 block28001368Value5 block28001368Value6 |
    block28001368Value0 := block28001368Arg1.
    block28001368Value1 := (block28001368Value0) name.
    block28001368Value2 := (block28001368Value1) , (' / ').
    block28001368Value3 := block28001368Arg1.
    block28001368Value4 := (block28001368Value3) arrayIndex.
    block28001368Value5 := (block28001368Value4) printString.
    block28001368Value6 := (block28001368Value2) , (block28001368Value5).
    block28001368Value6
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x200030a4; bytecode file offset 0x121fc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processObjectsForBypassFunc: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := SGStandardDataStructureGenerator.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVarProcessesForProject: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 |
    recoveredBlock28Value0 := recoveredLocal1.
    recoveredBlock28Value1 := SGStandardDataStructureGenerator.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := (recoveredBlock28Value2) at: (1).
    recoveredBlock28Value4 := recoveredBlock28Arg1.
    recoveredBlock28Value5 := (recoveredBlock28Value4) at: (2).
    recoveredBlock28Value6 := (recoveredBlock28Value1) createWithInstVar: (recoveredBlock28Value3) processMethod: (recoveredBlock28Value5).
    recoveredBlock28Value7 := (recoveredBlock28Value0) copyWith: (recoveredBlock28Value6).
    recoveredBlock28Value8 := recoveredBlock28Value7.
    recoveredLocal1 := recoveredBlock28Value8.
    recoveredBlock28Value7
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20003228; bytecode file offset 0x12378"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createTabStrip: recoveredArg1 parent: recoveredArg2 label: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'pageTabStrip'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg3.
    recoveredBlock13Value2 := (recoveredBlock13Value0) labelString: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) createTab: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'pageTabStrip'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := [:block28001488Arg1 | 
    nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) userData: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20003294; bytecode file offset 0x12404"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkExistenceOfNecessaryFilesPrompt: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProjectSettings.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksProjectFile.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 'EHOOKS project file'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) doCreateFileCheck: (recoveredStack1) stream: (recoveredStack2) fileKind: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getProjectSettings.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfigurationFile.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) asFilename.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'EHOOKS configuration file'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) doCreateFileCheck: (recoveredStack1) stream: (recoveredStack2) fileKind: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000337c; bytecode file offset 0x124dc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
resizeTabStrip: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selectedItems.
    recoveredValue2 := [
    ^self
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) userData.
    recoveredValue6 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 recoveredBlock26Value3 recoveredBlock26Value4 recoveredBlock26Value5 recoveredBlock26Value6 recoveredBlock26Value7 recoveredBlock26Value8 recoveredBlock26Value9 recoveredBlock26Value10 recoveredBlock26Value11 recoveredBlock26Value12 recoveredBlock26Value13 recoveredBlock26Value14 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredBlock26Value0.
    recoveredBlock26Value2 := recoveredArg1.
    recoveredBlock26Value3 := (recoveredBlock26Value2) clientLeft.
    (recoveredBlock26Value1) x: (recoveredBlock26Value3).
    recoveredBlock26Value4 := recoveredBlock26Value0.
    recoveredBlock26Value5 := recoveredArg1.
    recoveredBlock26Value6 := (recoveredBlock26Value5) clientTop.
    (recoveredBlock26Value4) y: (recoveredBlock26Value6).
    recoveredBlock26Value7 := recoveredBlock26Value0.
    recoveredBlock26Value8 := recoveredArg1.
    recoveredBlock26Value9 := (recoveredBlock26Value8) clientWidth.
    recoveredBlock26Value10 := (recoveredBlock26Value9) + (1).
    (recoveredBlock26Value7) width: (recoveredBlock26Value10).
    recoveredBlock26Value11 := recoveredArg1.
    recoveredBlock26Value12 := (recoveredBlock26Value11) clientHeight.
    recoveredBlock26Value13 := (recoveredBlock26Value12) + (1).
    recoveredBlock26Value14 := (recoveredBlock26Value0) height: (recoveredBlock26Value13).
    recoveredBlock26Value14
].
    (recoveredValue5) setValuesBlock: (recoveredValue6).
    ^self
! !

"EHOOKS.ic method 0x200033fc; bytecode file offset 0x1254c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
buildProcessInstVarAliasArrayFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) widgetProcessModules.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) parentOfItem: (recoveredBlock13Stack3).
            recoveredBlock13PC := 25.
        ].
        recoveredBlock13Step = 25 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Stack2.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredLocal1 := recoveredBlock13Stack3.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 62] ifFalse: [recoveredBlock13PC := 32].
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack2 := recoveredLocal1.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13Stack3 := false.
            recoveredBlock13PC := 38.
        ].
        recoveredBlock13Step = 38 ifTrue: [
            (recoveredBlock13Stack2 == recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 62] ifFalse: [recoveredBlock13PC := 42].
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13PC := 43.
        ].
        recoveredBlock13Step = 43 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal2.
            recoveredBlock13PC := 46.
        ].
        recoveredBlock13Step = 46 ifTrue: [
            recoveredBlock13Stack2 := Array.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Arg1.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            recoveredBlock13Stack4 := recoveredLocal1.
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) aliasName.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) with: (recoveredBlock13Stack3) with: (recoveredBlock13Stack4).
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) copyWith: (recoveredBlock13Stack2).
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 59.
        ].
        recoveredBlock13Step = 59 ifTrue: [
            recoveredLocal2 := recoveredBlock13Stack2.
            recoveredBlock13PC := 62.
        ].
        recoveredBlock13Step = 62 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    ^recoveredValue4
! !

"EHOOKS.ic method 0x2000346c; bytecode file offset 0x125c0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectLastIndexForUniqueTasks: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := nil.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack2 := self.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack3 := self.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) widgetBypassFunc.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            recoveredBlock19Stack4 := recoveredBlock19Arg1.
            recoveredBlock19PC := 31.
        ].
        recoveredBlock19Step = 31 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) itemAt: (recoveredBlock19Stack4).
            recoveredBlock19PC := 33.
        ].
        recoveredBlock19Step = 33 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) bypassForTargetItem: (recoveredBlock19Stack3).
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack3.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            (recoveredBlock19Stack2 == nil) ifTrue: [recoveredBlock19PC := 63] ifFalse: [recoveredBlock19PC := 40].
        ].
        recoveredBlock19Step = 40 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal1.
            recoveredBlock19PC := 43.
        ].
        recoveredBlock19Step = 43 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Local1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) includes: (recoveredBlock19Stack3).
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            (recoveredBlock19Stack2) ifTrue: [recoveredBlock19PC := 63] ifFalse: [recoveredBlock19PC := 50].
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 54.
        ].
        recoveredBlock19Step = 54 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local1.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 60.
        ].
        recoveredBlock19Step = 60 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 61.
        ].
        recoveredBlock19Step = 61 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) add: (recoveredBlock19Stack2).
            recoveredBlock19PC := 63.
        ].
        recoveredBlock19Step = 63 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"EHOOKS.ic method 0x200034e0; bytecode file offset 0x1264c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) initEHooksConfig.
    (self) updateSplitbar.
    (self) updateContentsLocal.
    (self) onFinalizeDo: ('cleanupEHooks').
    recoveredValue0 := (self) widgetNotebook.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Local1 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) widgetNotebook.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) selectedItems.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack1 := 1.
            recoveredBlock22PC := 34.
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22Stack2 := [].
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) at: (recoveredBlock22Stack1) ifAbsent: (recoveredBlock22Stack2).
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Stack0.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            (recoveredBlock22Stack0 == nil) ifTrue: [recoveredBlock22PC := 58] ifFalse: [recoveredBlock22PC := 44].
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack0 := recoveredBlock22Local1.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) ~= (recoveredBlock22Stack1).
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            (recoveredBlock22Stack0) ifTrue: [recoveredBlock22PC := 50] ifFalse: [recoveredBlock22PC := 58].
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack0 := recoveredBlock22Arg1.
            recoveredBlock22PC := 51.
        ].
        recoveredBlock22Step = 51 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) userData.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) unmanageChild.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack0 := recoveredBlock22Arg1.
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) userData.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack0 := (recoveredBlock22Stack0) manageChild.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack0.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue1) do: (recoveredValue2).
    (self) updateFonts.
    ^self
! !

"EHOOKS.ic method 0x20003614; bytecode file offset 0x12770"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
changePeriodCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedBypassFuncs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := [:recoveredBlock20Block29Arg1 | 
    | recoveredBlock20Block29Stack0 recoveredBlock20Block29Stack1 recoveredBlock20Block29Stack2 recoveredBlock20Block29Stack3 recoveredBlock20Block29PC recoveredBlock20Block29Step recoveredBlock20Block29Done recoveredBlock20Block29Result |
    recoveredBlock20Block29Stack0 := self.
    recoveredBlock20Block29PC := 36.
    recoveredBlock20Block29Done := false.
    [recoveredBlock20Block29Done not] whileTrue: [
        recoveredBlock20Block29Step := recoveredBlock20Block29PC.
        recoveredBlock20Block29Step = 36 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Arg1.
            recoveredBlock20Block29PC := 39.
        ].
        recoveredBlock20Block29Step = 39 ifTrue: [
            recoveredBlock20Block29Stack2 := ''.
            recoveredBlock20Block29PC := 41.
        ].
        recoveredBlock20Block29Step = 41 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) equals: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 43.
        ].
        recoveredBlock20Block29Step = 43 ifTrue: [
            (recoveredBlock20Block29Stack1) ifTrue: [recoveredBlock20Block29PC := 46] ifFalse: [recoveredBlock20Block29PC := 54].
        ].
        recoveredBlock20Block29Step = 46 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 47.
        ].
        recoveredBlock20Block29Step = 47 ifTrue: [
            recoveredBlock20Block29Stack2 := nil.
            recoveredBlock20Block29PC := 48.
        ].
        recoveredBlock20Block29Step = 48 ifTrue: [
            (recoveredBlock20Block29Stack1) changePeriod: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 50.
        ].
        recoveredBlock20Block29Step = 50 ifTrue: [
            recoveredBlock20Block29PC := 62.
        ].
        recoveredBlock20Block29Step = 54 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 55.
        ].
        recoveredBlock20Block29Step = 55 ifTrue: [
            recoveredBlock20Block29Stack2 := recoveredBlock20Arg1.
            recoveredBlock20Block29PC := 58.
        ].
        recoveredBlock20Block29Step = 58 ifTrue: [
            recoveredBlock20Block29Stack2 := (recoveredBlock20Block29Stack2) asFloat.
            recoveredBlock20Block29PC := 60.
        ].
        recoveredBlock20Block29Step = 60 ifTrue: [
            (recoveredBlock20Block29Stack1) changePeriod: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 62.
        ].
        recoveredBlock20Block29Step = 62 ifTrue: [
            recoveredBlock20Block29Stack0 := (recoveredBlock20Block29Stack0) widgetBypassFunc.
            recoveredBlock20Block29PC := 64.
        ].
        recoveredBlock20Block29Step = 64 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 65.
        ].
        recoveredBlock20Block29Step = 65 ifTrue: [
            recoveredBlock20Block29Stack0 := (recoveredBlock20Block29Stack0) refreshItem: (recoveredBlock20Block29Stack1).
            recoveredBlock20Block29PC := 67.
        ].
        recoveredBlock20Block29Step = 67 ifTrue: [
            recoveredBlock20Block29Result := recoveredBlock20Block29Stack0.
            recoveredBlock20Block29Done := true.
        ].
    ].
    recoveredBlock20Block29Result
].
    recoveredBlock20Value2 := (recoveredBlock20Value0) do: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
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

"EHOOKS.ic method 0x20003694; bytecode file offset 0x12800"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuProcesseAssign
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedProcesses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedProcesses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildProcessInstVarAliasArrayFor: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:block280014f4Arg1 :block280014f4Arg2 | 
    | block280014f4Value0 block280014f4Value1 block280014f4Value2 |
    block280014f4Value0 := block280014f4Arg1.
    block280014f4Value1 := block280014f4Arg2.
    block280014f4Value2 := (block280014f4Value0) > (block280014f4Value1).
    block280014f4Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectLastIndexForUniqueTasks: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 |
    recoveredBlock49Value0 := recoveredLocal2.
    recoveredBlock49Value1 := (recoveredBlock49Value0) reverse.
    recoveredBlock49Value2 := (self) widgetBypassFunc.
    recoveredBlock49Value3 := recoveredBlock49Arg1.
    recoveredBlock49Value4 := (recoveredBlock49Value2) itemAt: (recoveredBlock49Value3).
    recoveredBlock49Value5 := (self) assignProcesses: (recoveredBlock49Value1) toTargetItem: (recoveredBlock49Value4).
    recoveredBlock49Value5
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) checkUpdateProcessList.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200037bc; bytecode file offset 0x12924"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
resizeTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) children.
    recoveredBlock7Value2 := [:recoveredBlock7Block18Arg1 | 
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 |
    recoveredBlock7Block18Value0 := recoveredBlock7Block18Arg1.
    recoveredBlock7Block18Value1 := [:recoveredBlock7Block18Block25Arg1 | 
    | recoveredBlock7Block18Block25Value0 recoveredBlock7Block18Block25Value1 recoveredBlock7Block18Block25Value2 recoveredBlock7Block18Block25Value3 recoveredBlock7Block18Block25Value4 recoveredBlock7Block18Block25Value5 recoveredBlock7Block18Block25Value6 recoveredBlock7Block18Block25Value7 recoveredBlock7Block18Block25Value8 recoveredBlock7Block18Block25Value9 recoveredBlock7Block18Block25Value10 recoveredBlock7Block18Block25Value11 recoveredBlock7Block18Block25Value12 |
    recoveredBlock7Block18Block25Value0 := recoveredBlock7Block18Block25Arg1.
    recoveredBlock7Block18Block25Value1 := recoveredBlock7Block18Block25Value0.
    recoveredBlock7Block18Block25Value2 := recoveredArg1.
    recoveredBlock7Block18Block25Value3 := (recoveredBlock7Block18Block25Value2) clientLeft.
    (recoveredBlock7Block18Block25Value1) x: (recoveredBlock7Block18Block25Value3).
    recoveredBlock7Block18Block25Value4 := recoveredBlock7Block18Block25Value0.
    recoveredBlock7Block18Block25Value5 := recoveredArg1.
    recoveredBlock7Block18Block25Value6 := (recoveredBlock7Block18Block25Value5) clientTop.
    (recoveredBlock7Block18Block25Value4) y: (recoveredBlock7Block18Block25Value6).
    recoveredBlock7Block18Block25Value7 := recoveredBlock7Block18Block25Value0.
    recoveredBlock7Block18Block25Value8 := recoveredArg1.
    recoveredBlock7Block18Block25Value9 := (recoveredBlock7Block18Block25Value8) clientWidth.
    (recoveredBlock7Block18Block25Value7) width: (recoveredBlock7Block18Block25Value9).
    recoveredBlock7Block18Block25Value10 := recoveredArg1.
    recoveredBlock7Block18Block25Value11 := (recoveredBlock7Block18Block25Value10) clientHeight.
    recoveredBlock7Block18Block25Value12 := (recoveredBlock7Block18Block25Value0) height: (recoveredBlock7Block18Block25Value11).
    recoveredBlock7Block18Block25Value12
].
    recoveredBlock7Block18Value2 := (recoveredBlock7Block18Value0) setValuesBlock: (recoveredBlock7Block18Value1).
    recoveredBlock7Block18Value2
].
    (recoveredBlock7Value1) do: (recoveredBlock7Value2).
    recoveredBlock7Value3 := (self) eHooksCommunicationWidget.
    recoveredBlock7Value4 := recoveredArg1.
    recoveredBlock7Value5 := (recoveredBlock7Value4) clientWidth.
    recoveredBlock7Value6 := (recoveredBlock7Value3) updateListColumnWidth: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"EHOOKS.ic method 0x20003b20; bytecode file offset 0x12c84"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getAllUndefProcesses
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
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
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) instVarProcessReferences.
    recoveredBlock35Value2 := [:recoveredBlock35Block47Arg1 :recoveredBlock35Block47Arg2 | 
    | recoveredBlock35Block47Stack0 recoveredBlock35Block47Stack1 recoveredBlock35Block47Stack2 recoveredBlock35Block47Stack3 recoveredBlock35Block47Stack4 recoveredBlock35Block47PC recoveredBlock35Block47Step recoveredBlock35Block47Done recoveredBlock35Block47Result |
    recoveredBlock35Block47Stack0 := nil.
    recoveredBlock35Block47PC := 54.
    recoveredBlock35Block47Done := false.
    [recoveredBlock35Block47Done not] whileTrue: [
        recoveredBlock35Block47Step := recoveredBlock35Block47PC.
        recoveredBlock35Block47Step = 54 ifTrue: [
            recoveredBlock35Block47Stack1 := nil.
            recoveredBlock35Block47PC := 55.
        ].
        recoveredBlock35Block47Step = 55 ifTrue: [
            recoveredBlock35Block47Stack2 := recoveredBlock35Arg1.
            recoveredBlock35Block47PC := 58.
        ].
        recoveredBlock35Block47Step = 58 ifTrue: [
            recoveredBlock35Block47Stack3 := recoveredBlock35Block47Arg1.
            recoveredBlock35Block47PC := 59.
        ].
        recoveredBlock35Block47Step = 59 ifTrue: [
            recoveredBlock35Block47Stack2 := (recoveredBlock35Block47Stack2) instVarProcessReferenceLabelFor: (recoveredBlock35Block47Stack3).
            recoveredBlock35Block47PC := 61.
        ].
        recoveredBlock35Block47Step = 61 ifTrue: [
            recoveredBlock35Block47Stack3 := ConditionalTable.
            recoveredBlock35Block47PC := 63.
        ].
        recoveredBlock35Block47Step = 63 ifTrue: [
            recoveredBlock35Block47Stack3 := (recoveredBlock35Block47Stack3) undefName.
            recoveredBlock35Block47PC := 65.
        ].
        recoveredBlock35Block47Step = 65 ifTrue: [
            recoveredBlock35Block47Stack2 := (recoveredBlock35Block47Stack2) equals: (recoveredBlock35Block47Stack3).
            recoveredBlock35Block47PC := 67.
        ].
        recoveredBlock35Block47Step = 67 ifTrue: [
            (recoveredBlock35Block47Stack2) ifTrue: [recoveredBlock35Block47PC := 70] ifFalse: [recoveredBlock35Block47PC := 77].
        ].
        recoveredBlock35Block47Step = 70 ifTrue: [
            recoveredBlock35Block47PC := 71.
        ].
        recoveredBlock35Block47Step = 71 ifTrue: [
            recoveredBlock35Block47Stack1 := recoveredLocal1.
            recoveredBlock35Block47PC := 74.
        ].
        recoveredBlock35Block47Step = 74 ifTrue: [
            recoveredBlock35Block47Stack2 := recoveredBlock35Block47Arg2.
            recoveredBlock35Block47PC := 75.
        ].
        recoveredBlock35Block47Step = 75 ifTrue: [
            recoveredBlock35Block47Stack1 := (recoveredBlock35Block47Stack1) add: (recoveredBlock35Block47Stack2).
            recoveredBlock35Block47PC := 77.
        ].
        recoveredBlock35Block47Step = 77 ifTrue: [
            recoveredBlock35Block47Result := recoveredBlock35Block47Stack1.
            recoveredBlock35Block47Done := true.
        ].
    ].
    recoveredBlock35Block47Result
].
    recoveredBlock35Value3 := (recoveredBlock35Value1) doWithIndex: (recoveredBlock35Value2).
    recoveredBlock35Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20003bb4; bytecode file offset 0x12d38"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
cleanupEHooks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksIsRunningFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 |
    recoveredBlock14Value0 := (nil) create.
    recoveredBlock14Value1 := (self) eHooksConfig.
    recoveredBlock14Value2 := (recoveredBlock14Value1) getProjectSettings.
    recoveredBlock14Value3 := (recoveredBlock14Value2) eHooksConfigurationFile.
    recoveredBlock14Value4 := (recoveredBlock14Value3) asFilename.
    recoveredBlock14Value5 := ('Save EHOOKS project: ') , (recoveredBlock14Value4).
    recoveredBlock14Value6 := (recoveredBlock14Value5) , ('...').
    (recoveredBlock14Value0) addText: (recoveredBlock14Value6).
    recoveredBlock14Value7 := recoveredBlock14Arg1.
    (recoveredBlock14Value7) save.
    recoveredBlock14Value8 := recoveredBlock14Arg1.
    recoveredBlock14Value9 := (recoveredBlock14Value8) releaseObject.
    recoveredBlock14Value9
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksScripting.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := [:block28001518Arg1 | 
    | block28001518Value0 block28001518Value1 block28001518Value2 |
    block28001518Value0 := block28001518Arg1.
    (block28001518Value0) quit.
    block28001518Value1 := block28001518Arg1.
    block28001518Value2 := (block28001518Value1) releaseObject.
    block28001518Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksApplication.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    (recoveredBlock72Value0) releaseObject.
    recoveredBlock72Value1 := (self) eHooksApplication: (nil).
    recoveredBlock72Value1
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20003d88; bytecode file offset 0x12ef0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
dispatchPointSingle: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedBypassFuncs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 |
    recoveredBlock20Value0 := recoveredLocal1.
    recoveredBlock20Value1 := [:recoveredBlock20Block29Arg1 | 
    | recoveredBlock20Block29Stack0 recoveredBlock20Block29Stack1 recoveredBlock20Block29Stack2 recoveredBlock20Block29Stack3 recoveredBlock20Block29PC recoveredBlock20Block29Step recoveredBlock20Block29Done recoveredBlock20Block29Result |
    recoveredBlock20Block29Stack0 := self.
    recoveredBlock20Block29PC := 36.
    recoveredBlock20Block29Done := false.
    [recoveredBlock20Block29Done not] whileTrue: [
        recoveredBlock20Block29Step := recoveredBlock20Block29PC.
        recoveredBlock20Block29Step = 36 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Arg1.
            recoveredBlock20Block29PC := 39.
        ].
        recoveredBlock20Block29Step = 39 ifTrue: [
            recoveredBlock20Block29Stack2 := EHooksNone.
            recoveredBlock20Block29PC := 41.
        ].
        recoveredBlock20Block29Step = 41 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) equals: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 43.
        ].
        recoveredBlock20Block29Step = 43 ifTrue: [
            (recoveredBlock20Block29Stack1) ifTrue: [recoveredBlock20Block29PC := 46] ifFalse: [recoveredBlock20Block29PC := 54].
        ].
        recoveredBlock20Block29Step = 46 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 47.
        ].
        recoveredBlock20Block29Step = 47 ifTrue: [
            recoveredBlock20Block29Stack2 := nil.
            recoveredBlock20Block29PC := 48.
        ].
        recoveredBlock20Block29Step = 48 ifTrue: [
            (recoveredBlock20Block29Stack1) changeDispatchPoint: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 50.
        ].
        recoveredBlock20Block29Step = 50 ifTrue: [
            recoveredBlock20Block29PC := 76.
        ].
        recoveredBlock20Block29Step = 54 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Arg1.
            recoveredBlock20Block29PC := 57.
        ].
        recoveredBlock20Block29Step = 57 ifTrue: [
            recoveredBlock20Block29Stack2 := EHooksSelect.
            recoveredBlock20Block29PC := 59.
        ].
        recoveredBlock20Block29Step = 59 ifTrue: [
            recoveredBlock20Block29Stack1 := (recoveredBlock20Block29Stack1) equals: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 61.
        ].
        recoveredBlock20Block29Step = 61 ifTrue: [
            (recoveredBlock20Block29Stack1) ifTrue: [recoveredBlock20Block29PC := 64] ifFalse: [recoveredBlock20Block29PC := 70].
        ].
        recoveredBlock20Block29Step = 64 ifTrue: [
            recoveredBlock20Block29Stack1 := self.
            recoveredBlock20Block29PC := 65.
        ].
        recoveredBlock20Block29Step = 65 ifTrue: [
            (recoveredBlock20Block29Stack1) menuOpenEHooksDispatch.
            recoveredBlock20Block29PC := 67.
        ].
        recoveredBlock20Block29Step = 67 ifTrue: [
            recoveredBlock20Block29PC := 76.
        ].
        recoveredBlock20Block29Step = 70 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 71.
        ].
        recoveredBlock20Block29Step = 71 ifTrue: [
            recoveredBlock20Block29Stack2 := recoveredBlock20Arg1.
            recoveredBlock20Block29PC := 74.
        ].
        recoveredBlock20Block29Step = 74 ifTrue: [
            (recoveredBlock20Block29Stack1) changeDispatchPoint: (recoveredBlock20Block29Stack2).
            recoveredBlock20Block29PC := 76.
        ].
        recoveredBlock20Block29Step = 76 ifTrue: [
            recoveredBlock20Block29Stack0 := (recoveredBlock20Block29Stack0) widgetBypassFunc.
            recoveredBlock20Block29PC := 78.
        ].
        recoveredBlock20Block29Step = 78 ifTrue: [
            recoveredBlock20Block29Stack1 := recoveredBlock20Block29Arg1.
            recoveredBlock20Block29PC := 79.
        ].
        recoveredBlock20Block29Step = 79 ifTrue: [
            recoveredBlock20Block29Stack0 := (recoveredBlock20Block29Stack0) refreshItem: (recoveredBlock20Block29Stack1).
            recoveredBlock20Block29PC := 81.
        ].
        recoveredBlock20Block29Step = 81 ifTrue: [
            recoveredBlock20Block29Result := recoveredBlock20Block29Stack0.
            recoveredBlock20Block29Done := true.
        ].
    ].
    recoveredBlock20Block29Result
].
    recoveredBlock20Value2 := (recoveredBlock20Value0) do: (recoveredBlock20Value1).
    recoveredBlock20Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) updateBypassFuncWidgets.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ehooksConfigModified.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20003e28; bytecode file offset 0x12fbc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkEHooksConfigurationFile
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigurationFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPathOnly.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := '%DATA%'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := EHooksConfigFileExt.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) endsWithIgnoreCase: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := EHooksConfigFileExt.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := CfsReadWriteFileStream.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := OSCall.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) deleteFile: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) asTokenizedFilename.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) setEHooksConfigurationFile: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) cleanupEHooks.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004070; bytecode file offset 0x13228"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateAssignedProcessesMakeConsistentBypassFuncs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            assignedProcesses := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) processInstVars.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVariables.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block280015ccArg1 | 
    | block280015ccStack0 block280015ccStack1 block280015ccStack2 block280015ccStack3 block280015ccPC block280015ccStep block280015ccDone block280015ccResult |
    block280015ccStack0 := self.
    block280015ccPC := 4.
    block280015ccDone := false.
    [block280015ccDone not] whileTrue: [
        block280015ccStep := block280015ccPC.
        block280015ccStep = 4 ifTrue: [
            block280015ccStack1 := block280015ccArg1.
            block280015ccPC := 5.
        ].
        block280015ccStep = 5 ifTrue: [
            block280015ccStack2 := [:block280015f0Arg1 | 
    nil
].
            block280015ccPC := 7.
        ].
        block280015ccStep = 7 ifTrue: [
            block280015ccPC := 12.
        ].
        block280015ccStep = 12 ifTrue: [
            block280015ccStack1 := (block280015ccStack1) sgClassIfUndefined: (block280015ccStack2).
            block280015ccPC := 14.
        ].
        block280015ccStep = 14 ifTrue: [
            block280015ccStack1 := (block280015ccStack1) isNil.
            block280015ccPC := 15.
        ].
        block280015ccStep = 15 ifTrue: [
            block280015ccResult := block280015ccStack1.
            block280015ccDone := true.
        ].
    ].
    block280015ccResult
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58Stack5 recoveredBlock58Stack6 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := assignedProcesses.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            recoveredBlock58Stack2 := self.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Arg1.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            recoveredBlock58Stack4 := recoveredLocal2.
            recoveredBlock58PC := 71.
        ].
        recoveredBlock58Step = 71 ifTrue: [
            recoveredBlock58Stack5 := recoveredLocal1.
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack4 := (recoveredBlock58Stack4) , (recoveredBlock58Stack5).
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) processesForTask: (recoveredBlock58Stack3) processInstVars: (recoveredBlock58Stack4).
            recoveredBlock58PC := 78.
        ].
        recoveredBlock58Step = 78 ifTrue: [
            recoveredBlock58Stack3 := [:block28001614Arg1 | 
    | block28001614Value0 block28001614Value1 |
    block28001614Value0 := block28001614Arg1.
    block28001614Value1 := (block28001614Value0) aliasName.
    block28001614Value1
].
            recoveredBlock58PC := 80.
        ].
        recoveredBlock58Step = 80 ifTrue: [
            recoveredBlock58PC := 88.
        ].
        recoveredBlock58Step = 88 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) collect: (recoveredBlock58Stack3).
            recoveredBlock58PC := 90.
        ].
        recoveredBlock58Step = 90 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) addAll: (recoveredBlock58Stack2).
            recoveredBlock58PC := 92.
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200040b8; bytecode file offset 0x13228"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateAssignedProcessesMakeConsistentBypassFunc: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            assignedProcesses := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) processInstVars.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceVariables.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:block28001638Arg1 | 
    | block28001638Stack0 block28001638Stack1 block28001638Stack2 block28001638Stack3 block28001638PC block28001638Step block28001638Done block28001638Result |
    block28001638Stack0 := self.
    block28001638PC := 4.
    block28001638Done := false.
    [block28001638Done not] whileTrue: [
        block28001638Step := block28001638PC.
        block28001638Step = 4 ifTrue: [
            block28001638Stack1 := block28001638Arg1.
            block28001638PC := 5.
        ].
        block28001638Step = 5 ifTrue: [
            block28001638Stack2 := [:block2800165cArg1 | 
    nil
].
            block28001638PC := 7.
        ].
        block28001638Step = 7 ifTrue: [
            block28001638PC := 12.
        ].
        block28001638Step = 12 ifTrue: [
            block28001638Stack1 := (block28001638Stack1) sgClassIfUndefined: (block28001638Stack2).
            block28001638PC := 14.
        ].
        block28001638Step = 14 ifTrue: [
            block28001638Stack1 := (block28001638Stack1) isNil.
            block28001638PC := 15.
        ].
        block28001638Step = 15 ifTrue: [
            block28001638Result := block28001638Stack1.
            block28001638Done := true.
        ].
    ].
    block28001638Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58Stack5 recoveredBlock58Stack6 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := assignedProcesses.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            recoveredBlock58Stack2 := self.
            recoveredBlock58PC := 67.
        ].
        recoveredBlock58Step = 67 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Arg1.
            recoveredBlock58PC := 68.
        ].
        recoveredBlock58Step = 68 ifTrue: [
            recoveredBlock58Stack4 := recoveredLocal2.
            recoveredBlock58PC := 71.
        ].
        recoveredBlock58Step = 71 ifTrue: [
            recoveredBlock58Stack5 := recoveredLocal1.
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack4 := (recoveredBlock58Stack4) , (recoveredBlock58Stack5).
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) processesForTask: (recoveredBlock58Stack3) processInstVars: (recoveredBlock58Stack4).
            recoveredBlock58PC := 78.
        ].
        recoveredBlock58Step = 78 ifTrue: [
            recoveredBlock58Stack3 := [:block28001680Arg1 | 
    | block28001680Value0 block28001680Value1 |
    block28001680Value0 := block28001680Arg1.
    block28001680Value1 := (block28001680Value0) aliasName.
    block28001680Value1
].
            recoveredBlock58PC := 80.
        ].
        recoveredBlock58Step = 80 ifTrue: [
            recoveredBlock58PC := 88.
        ].
        recoveredBlock58Step = 88 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) collect: (recoveredBlock58Stack3).
            recoveredBlock58PC := 90.
        ].
        recoveredBlock58Step = 90 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) addAll: (recoveredBlock58Stack2).
            recoveredBlock58PC := 92.
        ].
        recoveredBlock58Step = 92 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000421c; bytecode file offset 0x13384"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getRenderableBitmapStringForHierarchicalAlias: recoveredArg1 label: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '---'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 'ElementsTypeOther'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getModelPathFor: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) visualCallBackImageElement.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := AbtWinHelpApp.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := AbtWinHelpApp.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) resourceManager.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := (recoveredStack5) visualCallBackImageElement.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack4 := (recoveredStack4) returnIconWithName: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) createOnString: (recoveredStack3) image: (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) resourceManager.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := (recoveredStack4) iconName.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnIconWithName: (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) createOnString: (recoveredStack2) image: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x200042c0; bytecode file offset 0x13434"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
doCreateFileCheck: recoveredArg1 stream: recoveredArg2 fileKind: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CfsReadWriteFileStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'Invalid setup entry '''.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := ''':'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) tab.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) isEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := '<no entry>'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) tab.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) deleteFile: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004370; bytecode file offset 0x134bc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
assignProcesses: recoveredArg1 toTargetItem: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) parentOfItem: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFuncIndexOf: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) assignProcesses: (recoveredStack1) toBypassFunc: (recoveredStack2) afterIndex: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetBypassFunc.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) selectPos: (recoveredStack2) notify: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 78] ifFalse: [recoveredLocal1 := nil. recoveredPC := 98]] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200044fc; bytecode file offset 0x13684"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncCreateFromOS
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := SGMuxGO.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'Overwrite bypass functions?'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableOSLogicKeys.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'No operating systems specified'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectOtherTarget: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBypassFuncFromOS: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200045c4; bytecode file offset 0x13730"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateProcessClassList
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) sortedProcessVariables.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Local1 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack3 := [:block280016c8Arg1 | 
    nil
].
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) sgClassIfUndefined: (recoveredBlock17Stack3).
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack3.
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            (recoveredBlock17Stack2 == nil) ifTrue: [recoveredBlock17PC := 71] ifFalse: [recoveredBlock17PC := 42].
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack1 := nil.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) dbObject.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) includes: (recoveredBlock17Stack3).
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 71] ifFalse: [recoveredBlock17PC := 56].
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) dbObject.
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Arg1.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) add: (recoveredBlock17Stack2).
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack1.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) showUnusedOnly.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := (self) processClassHasUnassignedProcesses: (recoveredBlock83Value0).
    recoveredBlock83Value1
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProcesses.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004834; bytecode file offset 0x139a0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
deassignProcesses: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280016ecArg1 :block280016ecArg2 | 
    | block280016ecValue0 block280016ecValue1 block280016ecValue2 |
    block280016ecValue0 := block280016ecArg1.
    block280016ecValue1 := block280016ecArg2.
    block280016ecValue2 := (block280016ecValue0) > (block280016ecValue1).
    block280016ecValue2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) widgetBypassFunc.
            recoveredBlock17PC := 25.
        ].
        recoveredBlock17Step = 25 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) getItemPos: (recoveredBlock17Stack1).
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredLocal2 := recoveredBlock17Stack0.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack0 := nil.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := self.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) widgetBypassFunc.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal2.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) parentOfItem: (recoveredBlock17Stack2).
            recoveredBlock17PC := 38.
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredLocal3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            (recoveredBlock17Stack1 == nil) ifTrue: [recoveredBlock17PC := 92] ifFalse: [recoveredBlock17PC := 46].
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17PC := 47.
        ].
        recoveredBlock17Step = 47 ifTrue: [
            recoveredBlock17Stack0 := nil.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal2.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) instVar.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack2 := 'dummy'.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) ~= (recoveredBlock17Stack2).
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 60] ifFalse: [recoveredBlock17PC := 92].
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack0 := nil.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack2 := false.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            (recoveredBlock17Stack1 == recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 92] ifFalse: [recoveredBlock17PC := 70].
        ].
        recoveredBlock17Step = 70 ifTrue: [
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 72.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) widgetBypassFunc.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal3.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) indexOf: (recoveredBlock17Stack1).
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            recoveredLocal1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Arg1.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) - (recoveredBlock17Stack2).
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal3.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) deassignProcessIndex: (recoveredBlock17Stack1) fromTask: (recoveredBlock17Stack2).
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock97Value0 |
    (self) updateBypassFuncList.
    (self) checkUpdateProcessList.
    recoveredBlock97Value0 := (self) makeBypassFuncListConsistent.
    recoveredBlock97Value0
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) showBusyCursorWhile: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200049b4; bytecode file offset 0x13b48"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createSecondLabelBeside: recoveredArg1 form: recoveredArg2 widgetDictionary: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'Seconds'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28001710Arg1 | 
    | block28001710Value0 block28001710Value1 block28001710Value2 block28001710Value3 |
    block28001710Value0 := block28001710Arg1.
    block28001710Value1 := block28001710Value0.
    block28001710Value2 := XmALIGNMENTBEGINNING.
    (block28001710Value1) alignment: (block28001710Value2).
    block28001710Value3 := (block28001710Value0) labelString: ('[s]').
    block28001710Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := '#'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'Seconds'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 recoveredBlock61Value5 recoveredBlock61Value6 recoveredBlock61Value7 recoveredBlock61Value8 recoveredBlock61Value9 recoveredBlock61Value10 recoveredBlock61Value11 recoveredBlock61Value12 recoveredBlock61Value13 recoveredBlock61Value14 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := recoveredBlock61Value0.
    recoveredBlock61Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock61Value1) topAttachment: (recoveredBlock61Value2).
    recoveredBlock61Value3 := recoveredBlock61Value0.
    recoveredBlock61Value4 := recoveredArg1.
    (recoveredBlock61Value3) topWidget: (recoveredBlock61Value4).
    recoveredBlock61Value5 := recoveredBlock61Value0.
    recoveredBlock61Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock61Value5) bottomAttachment: (recoveredBlock61Value6).
    recoveredBlock61Value7 := recoveredBlock61Value0.
    recoveredBlock61Value8 := recoveredArg1.
    (recoveredBlock61Value7) bottomWidget: (recoveredBlock61Value8).
    recoveredBlock61Value9 := recoveredBlock61Value0.
    recoveredBlock61Value10 := XmATTACHFORM.
    (recoveredBlock61Value9) rightAttachment: (recoveredBlock61Value10).
    recoveredBlock61Value11 := recoveredBlock61Value0.
    (recoveredBlock61Value11) rightOffset: (2).
    recoveredBlock61Value12 := recoveredBlock61Value0.
    recoveredBlock61Value13 := XmATTACHOPPOSITEFORM.
    (recoveredBlock61Value12) leftAttachment: (recoveredBlock61Value13).
    recoveredBlock61Value14 := (recoveredBlock61Value0) leftOffset: (-20).
    recoveredBlock61Value14
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20004c28; bytecode file offset 0x13dc4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkEHooksProjectFile
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectSettings.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProjectFile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPathOnly.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := '%DATA%'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := AscetConfigFileExt.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) endsWithIgnoreCase: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := AscetConfigFileExt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := CfsReadWriteFileStream.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 133].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) asTokenizedFilename.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) setEHooksProjectFile: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileIsValid.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigFileName.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) getEHooksProjectFile.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPath.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasSamePathName: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) udpateEHooksASCETConfigFile: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) updateContentsLocal.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004d24; bytecode file offset 0x13eb0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncsvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) items.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := (recoveredStack4) item.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) includes: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) hasProcessReferences: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) isProcess.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrivate.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) processMethod.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := 'GeneralOverlayKey'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon: (recoveredStack2) overlayedWith: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) processMethod.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconName.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := (recoveredStack4) widgetBypassFunc.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := (recoveredStack5) item.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := (recoveredStack4) parentOfItem: (recoveredStack5).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) taskLabelForProcess: (recoveredStack3) task: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) extendedLabel.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20004e10; bytecode file offset 0x13fa4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createTabInputsOutputs: recoveredArg1 parent: recoveredArg2 inputAdapter: recoveredArg3 outputAdapter: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'Input/Output'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTabStrip: (recoveredStack1) parent: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'widgetTabInputOutput'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'widgetEHooksCommunication'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 recoveredBlock33Value7 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := recoveredBlock33Value0.
    recoveredBlock33Value2 := (self) project.
    (recoveredBlock33Value1) project: (recoveredBlock33Value2).
    recoveredBlock33Value3 := recoveredBlock33Value0.
    recoveredBlock33Value4 := recoveredArg3.
    (recoveredBlock33Value3) inputAdapter: (recoveredBlock33Value4).
    recoveredBlock33Value5 := recoveredBlock33Value0.
    recoveredBlock33Value6 := recoveredArg4.
    (recoveredBlock33Value5) outputAdapter: (recoveredBlock33Value6).
    recoveredBlock33Value7 := recoveredBlock33Value0.
    (recoveredBlock33Value7) eHooksWidget: (self).
    recoveredBlock33Value0
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) createASDEHooksCommunicationWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'widgetEHooksCommunicationWidget'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:block28001758Arg1 | 
    | block28001758Value0 block28001758Value1 block28001758Value2 block28001758Value3 block28001758Value4 block28001758Value5 block28001758Value6 block28001758Value7 block28001758Value8 block28001758Value9 block28001758Value10 block28001758Value11 block28001758Value12 |
    block28001758Value0 := block28001758Arg1.
    block28001758Value1 := block28001758Value0.
    block28001758Value2 := XmATTACHFORM.
    (block28001758Value1) bottomAttachment: (block28001758Value2).
    block28001758Value3 := block28001758Value0.
    (block28001758Value3) bottomOffset: (0).
    block28001758Value4 := block28001758Value0.
    block28001758Value5 := XmATTACHFORM.
    (block28001758Value4) topAttachment: (block28001758Value5).
    block28001758Value6 := block28001758Value0.
    (block28001758Value6) topOffset: (0).
    block28001758Value7 := block28001758Value0.
    block28001758Value8 := XmATTACHFORM.
    (block28001758Value7) leftAttachment: (block28001758Value8).
    block28001758Value9 := block28001758Value0.
    (block28001758Value9) leftOffset: (0).
    block28001758Value10 := block28001758Value0.
    block28001758Value11 := XmATTACHFORM.
    (block28001758Value10) rightAttachment: (block28001758Value11).
    block28001758Value12 := (block28001758Value0) rightOffset: (0).
    block28001758Value12
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20005010; bytecode file offset 0x141b4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateBypassFuncWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) selectedBypassFuncs.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFuncSettingsLabel.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFuncAttributeLabelFor: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatchPoints.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatchPointForFuncs: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := EHooksSelect.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := EHooksNone.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDispatchPoint.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := EHooksNone.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDispatchPoint.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDispatchPoint.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPeriod.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := EHooksNone.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) periodForFuncs: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPeriod.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPeriod.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20005254; bytecode file offset 0x143f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processesvisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) items.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'VariantPrototype'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) processes.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) showUnusedOnly.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 |
    recoveredBlock46Value0 := assignedProcesses.
    recoveredBlock46Value1 := recoveredBlock46Arg1.
    recoveredBlock46Value2 := (recoveredBlock46Value1) aliasName.
    recoveredBlock46Value3 := (recoveredBlock46Value0) includes: (recoveredBlock46Value2).
    recoveredBlock46Value4 := (recoveredBlock46Value3) not.
    recoveredBlock46Value4
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) & (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) hasChildren: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodDeclaration.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrivate.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := 'GeneralOverlayKey'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon: (recoveredStack2) overlayedWith: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) visualCallBackImage.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) resourceManager.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconNameElement.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) osLabelString.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20005374; bytecode file offset 0x144d8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
taskLabelForProcess: recoveredArg1 task: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ConditionalTable.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVar.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) processMethod.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) relatedCTVariable.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 |
    recoveredBlock57Value0 := recoveredArg1.
    recoveredBlock57Value1 := (recoveredBlock57Value0) instVar.
    recoveredBlock57Value2 := (recoveredBlock57Value1) label.
    recoveredBlock57Value3 := ('[') , (recoveredBlock57Value2).
    recoveredBlock57Value4 := (recoveredBlock57Value3) , (']').
    recoveredBlock57Value4
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVar.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := ConditionalTable.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) instVar.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := [:recoveredBlock131Arg1 | 
    | recoveredBlock131Value0 recoveredBlock131Value1 recoveredBlock131Value2 recoveredBlock131Value3 recoveredBlock131Value4 |
    recoveredBlock131Value0 := recoveredArg1.
    recoveredBlock131Value1 := (recoveredBlock131Value0) instVar.
    recoveredBlock131Value2 := (recoveredBlock131Value1) label.
    recoveredBlock131Value3 := ('[') , (recoveredBlock131Value2).
    recoveredBlock131Value4 := (recoveredBlock131Value3) , (']').
    recoveredBlock131Value4
].
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClassIfUndefined: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"EHOOKS.ic method 0x20005580; bytecode file offset 0x146f4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuShiftUp
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block28001830Arg1 :block28001830Arg2 | 
    | block28001830Value0 block28001830Value1 block28001830Value2 |
    block28001830Value0 := block28001830Arg1.
    block28001830Value1 := block28001830Arg2.
    block28001830Value2 := (block28001830Value0) < (block28001830Value1).
    block28001830Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) + (-1).
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 46] ifFalse: [recoveredBlock30PC := 60].
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) widgetBypassFunc.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) getItemPos: (recoveredBlock30Stack2).
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredLocal5 := recoveredBlock30Stack1.
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) widgetBypassFunc.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal5.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) parentOfItem: (recoveredBlock30Stack3).
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredLocal6 := recoveredBlock30Stack3.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            (recoveredBlock30Stack2 == nil) ifTrue: [recoveredBlock30PC := 152] ifFalse: [recoveredBlock30PC := 84].
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal6.
            recoveredBlock30PC := 89.
        ].
        recoveredBlock30Step = 89 ifTrue: [
            recoveredBlock30Stack3 := false.
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            (recoveredBlock30Stack2 == recoveredBlock30Stack3) ifTrue: [recoveredBlock30PC := 152] ifFalse: [recoveredBlock30PC := 94].
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 96.
        ].
        recoveredBlock30Step = 96 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) widgetBypassFunc.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal6.
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) indexOf: (recoveredBlock30Stack2).
            recoveredBlock30PC := 102.
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredLocal4 := recoveredBlock30Stack1.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 108.
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal4.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal6.
            recoveredBlock30PC := 116.
        ].
        recoveredBlock30Step = 116 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 117.
        ].
        recoveredBlock30Step = 117 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal4.
            recoveredBlock30PC := 120.
        ].
        recoveredBlock30Step = 120 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) - (recoveredBlock30Stack3).
            recoveredBlock30PC := 121.
        ].
        recoveredBlock30Step = 121 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) shiftUpIndex: (recoveredBlock30Stack2).
            recoveredBlock30PC := 123.
        ].
        recoveredBlock30Step = 123 ifTrue: [
            (recoveredBlock30Stack1 ~~ nil) ifTrue: [recoveredBlock30PC := 140] ifFalse: [recoveredBlock30PC := 126].
        ].
        recoveredBlock30Step = 126 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 129.
        ].
        recoveredBlock30Step = 129 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 130 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 132.
        ].
        recoveredBlock30Step = 132 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 133.
        ].
        recoveredBlock30Step = 133 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 134.
        ].
        recoveredBlock30Step = 134 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 137.
        ].
        recoveredBlock30Step = 137 ifTrue: [
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 140 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 143.
        ].
        recoveredBlock30Step = 143 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 144.
        ].
        recoveredBlock30Step = 144 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) + (-1).
            recoveredBlock30PC := 145.
        ].
        recoveredBlock30Step = 145 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 147.
        ].
        recoveredBlock30Step = 147 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 148.
        ].
        recoveredBlock30Step = 148 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 149.
        ].
        recoveredBlock30Step = 149 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 152 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := [:recoveredBlock160Arg1 | 
    | recoveredBlock160Value0 recoveredBlock160Value1 recoveredBlock160Value2 |
    recoveredBlock160Value0 := (self) widgetBypassFunc.
    recoveredBlock160Value1 := recoveredBlock160Arg1.
    recoveredBlock160Value2 := (recoveredBlock160Value0) refreshHierarchyPos: (recoveredBlock160Value1).
    recoveredBlock160Value2
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 recoveredBlock176Value5 |
    recoveredBlock176Value0 := (self) widgetBypassFunc.
    recoveredBlock176Value1 := recoveredBlock176Arg1.
    recoveredBlock176Value2 := (recoveredBlock176Value1) + (1).
    (recoveredBlock176Value0) deselectPos: (recoveredBlock176Value2).
    recoveredBlock176Value3 := (self) widgetBypassFunc.
    recoveredBlock176Value4 := recoveredBlock176Arg1.
    recoveredBlock176Value5 := (recoveredBlock176Value3) selectPos: (recoveredBlock176Value4) notify: (true).
    recoveredBlock176Value5
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"EHOOKS.ic method 0x20005694; bytecode file offset 0x14808"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuShiftDown
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSelectedPos.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:block28001854Arg1 :block28001854Arg2 | 
    | block28001854Value0 block28001854Value1 block28001854Value2 |
    block28001854Value0 := block28001854Arg1.
    block28001854Value1 := block28001854Arg2.
    block28001854Value2 := (block28001854Value0) > (block28001854Value1).
    block28001854Value2
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Stack0 recoveredBlock30Stack1 recoveredBlock30Stack2 recoveredBlock30Stack3 recoveredBlock30Stack4 recoveredBlock30PC recoveredBlock30Step recoveredBlock30Done recoveredBlock30Result |
    recoveredBlock30Stack0 := self.
    recoveredBlock30PC := 36.
    recoveredBlock30Done := false.
    [recoveredBlock30Done not] whileTrue: [
        recoveredBlock30Step := recoveredBlock30PC.
        recoveredBlock30Step = 36 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal1.
            recoveredBlock30PC := 39.
        ].
        recoveredBlock30Step = 39 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 40.
        ].
        recoveredBlock30Step = 40 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) + (1).
            recoveredBlock30PC := 41.
        ].
        recoveredBlock30Step = 41 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) = (recoveredBlock30Stack2).
            recoveredBlock30PC := 42.
        ].
        recoveredBlock30Step = 42 ifTrue: [
            (recoveredBlock30Stack1) ifTrue: [recoveredBlock30PC := 46] ifFalse: [recoveredBlock30PC := 60].
        ].
        recoveredBlock30Step = 46 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 49.
        ].
        recoveredBlock30Step = 49 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 50.
        ].
        recoveredBlock30Step = 50 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 52.
        ].
        recoveredBlock30Step = 52 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 53.
        ].
        recoveredBlock30Step = 53 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 54.
        ].
        recoveredBlock30Step = 54 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 57.
        ].
        recoveredBlock30Step = 57 ifTrue: [
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 60 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 61.
        ].
        recoveredBlock30Step = 61 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) widgetBypassFunc.
            recoveredBlock30PC := 62.
        ].
        recoveredBlock30Step = 62 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 63.
        ].
        recoveredBlock30Step = 63 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) getItemPos: (recoveredBlock30Stack2).
            recoveredBlock30PC := 65.
        ].
        recoveredBlock30Step = 65 ifTrue: [
            recoveredLocal5 := recoveredBlock30Stack1.
            recoveredBlock30PC := 68.
        ].
        recoveredBlock30Step = 68 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 69.
        ].
        recoveredBlock30Step = 69 ifTrue: [
            recoveredBlock30Stack2 := self.
            recoveredBlock30PC := 70.
        ].
        recoveredBlock30Step = 70 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) widgetBypassFunc.
            recoveredBlock30PC := 71.
        ].
        recoveredBlock30Step = 71 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal5.
            recoveredBlock30PC := 74.
        ].
        recoveredBlock30Step = 74 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) parentOfItem: (recoveredBlock30Stack3).
            recoveredBlock30PC := 76.
        ].
        recoveredBlock30Step = 76 ifTrue: [
            recoveredBlock30Stack3 := recoveredBlock30Stack2.
            recoveredBlock30PC := 77.
        ].
        recoveredBlock30Step = 77 ifTrue: [
            recoveredLocal6 := recoveredBlock30Stack3.
            recoveredBlock30PC := 80.
        ].
        recoveredBlock30Step = 80 ifTrue: [
            (recoveredBlock30Stack2 == nil) ifTrue: [recoveredBlock30PC := 152] ifFalse: [recoveredBlock30PC := 84].
        ].
        recoveredBlock30Step = 84 ifTrue: [
            recoveredBlock30PC := 85.
        ].
        recoveredBlock30Step = 85 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 86.
        ].
        recoveredBlock30Step = 86 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal6.
            recoveredBlock30PC := 89.
        ].
        recoveredBlock30Step = 89 ifTrue: [
            recoveredBlock30Stack3 := false.
            recoveredBlock30PC := 90.
        ].
        recoveredBlock30Step = 90 ifTrue: [
            (recoveredBlock30Stack2 == recoveredBlock30Stack3) ifTrue: [recoveredBlock30PC := 152] ifFalse: [recoveredBlock30PC := 94].
        ].
        recoveredBlock30Step = 94 ifTrue: [
            recoveredBlock30PC := 95.
        ].
        recoveredBlock30Step = 95 ifTrue: [
            recoveredBlock30Stack1 := self.
            recoveredBlock30PC := 96.
        ].
        recoveredBlock30Step = 96 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) widgetBypassFunc.
            recoveredBlock30PC := 97.
        ].
        recoveredBlock30Step = 97 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal6.
            recoveredBlock30PC := 100.
        ].
        recoveredBlock30Step = 100 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) indexOf: (recoveredBlock30Stack2).
            recoveredBlock30PC := 102.
        ].
        recoveredBlock30Step = 102 ifTrue: [
            recoveredLocal4 := recoveredBlock30Stack1.
            recoveredBlock30PC := 105.
        ].
        recoveredBlock30Step = 105 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal2.
            recoveredBlock30PC := 108.
        ].
        recoveredBlock30Step = 108 ifTrue: [
            recoveredBlock30Stack2 := recoveredLocal4.
            recoveredBlock30PC := 111.
        ].
        recoveredBlock30Step = 111 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 113.
        ].
        recoveredBlock30Step = 113 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal6.
            recoveredBlock30PC := 116.
        ].
        recoveredBlock30Step = 116 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 117.
        ].
        recoveredBlock30Step = 117 ifTrue: [
            recoveredBlock30Stack3 := recoveredLocal4.
            recoveredBlock30PC := 120.
        ].
        recoveredBlock30Step = 120 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) - (recoveredBlock30Stack3).
            recoveredBlock30PC := 121.
        ].
        recoveredBlock30Step = 121 ifTrue: [
            recoveredBlock30Stack1 := (recoveredBlock30Stack1) shiftDownIndex: (recoveredBlock30Stack2).
            recoveredBlock30PC := 123.
        ].
        recoveredBlock30Step = 123 ifTrue: [
            (recoveredBlock30Stack1 ~~ nil) ifTrue: [recoveredBlock30PC := 140] ifFalse: [recoveredBlock30PC := 126].
        ].
        recoveredBlock30Step = 126 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 129.
        ].
        recoveredBlock30Step = 129 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 130.
        ].
        recoveredBlock30Step = 130 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 132.
        ].
        recoveredBlock30Step = 132 ifTrue: [
            recoveredBlock30Stack1 := recoveredBlock30Arg1.
            recoveredBlock30PC := 133.
        ].
        recoveredBlock30Step = 133 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 134.
        ].
        recoveredBlock30Step = 134 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 137.
        ].
        recoveredBlock30Step = 137 ifTrue: [
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 140 ifTrue: [
            recoveredBlock30Stack1 := recoveredLocal3.
            recoveredBlock30PC := 143.
        ].
        recoveredBlock30Step = 143 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Arg1.
            recoveredBlock30PC := 144.
        ].
        recoveredBlock30Step = 144 ifTrue: [
            recoveredBlock30Stack2 := (recoveredBlock30Stack2) + (1).
            recoveredBlock30PC := 145.
        ].
        recoveredBlock30Step = 145 ifTrue: [
            (recoveredBlock30Stack1) add: (recoveredBlock30Stack2).
            recoveredBlock30PC := 147.
        ].
        recoveredBlock30Step = 147 ifTrue: [
            recoveredBlock30Stack1 := nil.
            recoveredBlock30PC := 148.
        ].
        recoveredBlock30Step = 148 ifTrue: [
            recoveredBlock30Stack2 := recoveredBlock30Stack1.
            recoveredBlock30PC := 149.
        ].
        recoveredBlock30Step = 149 ifTrue: [
            recoveredLocal1 := recoveredBlock30Stack2.
            recoveredBlock30PC := 152.
        ].
        recoveredBlock30Step = 152 ifTrue: [
            recoveredBlock30Result := recoveredBlock30Stack1.
            recoveredBlock30Done := true.
        ].
    ].
    recoveredBlock30Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := [:recoveredBlock160Arg1 | 
    | recoveredBlock160Value0 recoveredBlock160Value1 recoveredBlock160Value2 |
    recoveredBlock160Value0 := (self) widgetBypassFunc.
    recoveredBlock160Value1 := recoveredBlock160Arg1.
    recoveredBlock160Value2 := (recoveredBlock160Value0) refreshHierarchyPos: (recoveredBlock160Value1).
    recoveredBlock160Value2
].
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 recoveredBlock176Value5 |
    recoveredBlock176Value0 := (self) widgetBypassFunc.
    recoveredBlock176Value1 := recoveredBlock176Arg1.
    recoveredBlock176Value2 := (recoveredBlock176Value1) + (-1).
    (recoveredBlock176Value0) deselectPos: (recoveredBlock176Value2).
    recoveredBlock176Value3 := (self) widgetBypassFunc.
    recoveredBlock176Value4 := recoveredBlock176Arg1.
    recoveredBlock176Value5 := (recoveredBlock176Value3) selectPos: (recoveredBlock176Value4) notify: (true).
    recoveredBlock176Value5
].
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"EHOOKS.ic method 0x20005a04; bytecode file offset 0x14be8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createBypassFuncMenu
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 |
    recoveredValue0 := ('Kli') == ('Call_58916').
    recoveredValue1 := ('Kli') == ('WHAT5754').
    recoveredValue2 := ASDXMLImportProtoMember.
    recoveredValue3 := (recoveredValue2) defaultMenuClass.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) owner: (self).
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) title: ('~BypassFunc').
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := [
    | recoveredBlock36Value0 |
    recoveredBlock36Value0 := (self) isBypassFuncAddPossible.
    recoveredBlock36Value0
].
    (recoveredValue7) add: ('menuBypassFuncCreateFromOS') label: ('~Create from operating system...') enable: (recoveredValue8) for: (self) accelerator: (nil) acceleratorText: ('').
    recoveredValue9 := recoveredValue4.
    (recoveredValue9) addSingleLine.
    recoveredValue10 := recoveredValue4.
    recoveredValue11 := [
    | recoveredBlock59Value0 |
    recoveredBlock59Value0 := (self) isBypassFuncAddPossible.
    recoveredBlock59Value0
].
    (recoveredValue10) add: ('menuBypassFuncAdd') label: ('~Add') enable: (recoveredValue11) for: (self) accelerator: (nil) acceleratorText: ('Insert').
    recoveredValue12 := recoveredValue4.
    recoveredValue13 := [
    | recoveredBlock80Value0 |
    recoveredBlock80Value0 := (self) isBypassFuncRenamePossible.
    recoveredBlock80Value0
].
    (recoveredValue12) add: ('menuBypassFuncRename') label: ('~Rename') enable: (recoveredValue13) for: (self) accelerator: (nil) acceleratorText: ('F2').
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := [
    | recoveredBlock100Value0 |
    recoveredBlock100Value0 := (self) isBypassFuncDeletePossible.
    recoveredBlock100Value0
].
    (recoveredValue14) add: ('menuBypassFuncDelete') label: ('~Delete') enable: (recoveredValue15) for: (self) accelerator: (nil) acceleratorText: ('Delete').
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) addSingleLine.
    recoveredValue17 := recoveredValue4.
    recoveredValue18 := [
    | recoveredBlock123Value0 |
    recoveredBlock123Value0 := (self) isBypassFuncMoveUpPossible.
    recoveredBlock123Value0
].
    recoveredValue19 := CwAccelerator.
    recoveredValue20 := ControlMask.
    recoveredValue21 := XKUp.
    recoveredValue22 := (recoveredValue19) mask: (recoveredValue20) keysym: (recoveredValue21).
    (recoveredValue17) add: ('menuShiftUp') label: ('Move ~Up') enable: (recoveredValue18) for: (self) accelerator: (recoveredValue22) acceleratorText: ('Ctrl+Up').
    recoveredValue23 := recoveredValue4.
    recoveredValue24 := [
    | recoveredBlock151Value0 |
    recoveredBlock151Value0 := (self) isBypassFuncMoveDownPossible.
    recoveredBlock151Value0
].
    recoveredValue25 := CwAccelerator.
    recoveredValue26 := ControlMask.
    recoveredValue27 := XKDown.
    recoveredValue28 := (recoveredValue25) mask: (recoveredValue26) keysym: (recoveredValue27).
    (recoveredValue23) add: ('menuShiftDown') label: ('Move D~own') enable: (recoveredValue24) for: (self) accelerator: (recoveredValue28) acceleratorText: ('Ctrl+Down').
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) addSingleLine.
    recoveredValue30 := recoveredValue4.
    recoveredValue31 := [
    | recoveredBlock182Value0 |
    recoveredBlock182Value0 := (self) isOpenModulePossible.
    recoveredBlock182Value0
].
    (recoveredValue30) add: ('menuOpenCorrespondingModule') label: ('Op~en Module') enable: (recoveredValue31) for: (self) accelerator: (nil) acceleratorText: (nil).
    recoveredValue32 := recoveredValue4.
    recoveredValue33 := [
    | recoveredBlock201Value0 |
    recoveredBlock201Value0 := (self) isRemoveUndefinedPossible.
    recoveredBlock201Value0
].
    (recoveredValue32) add: ('menuRemoveUndefAssignments') label: ('~Remove undefined processes') enable: (recoveredValue33) for: (self) accelerator: (nil) acceleratorText: (nil).
    recoveredLocal1 := recoveredValue4.
    recoveredValue34 := recoveredLocal1.
    ^recoveredValue34
! !

"EHOOKS.ic method 0x20005d34; bytecode file offset 0x14ef4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
ehooksConfigModified
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksIsRunningFor: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEHooksApplCheckWellConfiguredPromptMissingFiles: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) checkEHooksAppl.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) newBypassFunctionCollection.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Local1 recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) eHooksProject.
            recoveredBlock43PC := 52.
        ].
        recoveredBlock43Step = 52 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) newBypassFunction.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Stack0.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            recoveredBlock43Local1 := recoveredBlock43Stack1.
            recoveredBlock43PC := 56.
        ].
        recoveredBlock43Step = 56 ifTrue: [
            (recoveredBlock43Stack0 ~~ nil) ifTrue: [recoveredBlock43PC := 62] ifFalse: [recoveredBlock43PC := 60].
        ].
        recoveredBlock43Step = 60 ifTrue: [
            recoveredBlock43Stack0 := nil.
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            ^recoveredBlock43Stack0
        ].
        recoveredBlock43Step = 62 ifTrue: [
            recoveredBlock43Stack0 := nil.
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 64.
        ].
        recoveredBlock43Step = 64 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) dispatchPoint.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            (recoveredBlock43Stack1 == nil) ifTrue: [recoveredBlock43PC := 95] ifFalse: [recoveredBlock43PC := 70].
        ].
        recoveredBlock43Step = 70 ifTrue: [
            recoveredBlock43PC := 71.
        ].
        recoveredBlock43Step = 71 ifTrue: [
            recoveredBlock43Stack0 := recoveredBlock43Local1.
            recoveredBlock43PC := 72.
        ].
        recoveredBlock43Step = 72 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 73.
        ].
        recoveredBlock43Step = 73 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) funcNodeName.
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            (recoveredBlock43Stack0) identifier: (recoveredBlock43Stack1).
            recoveredBlock43PC := 77.
        ].
        recoveredBlock43Step = 77 ifTrue: [
            recoveredBlock43Stack0 := recoveredBlock43Local1.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 79.
        ].
        recoveredBlock43Step = 79 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) funcNodeName.
            recoveredBlock43PC := 81.
        ].
        recoveredBlock43Step = 81 ifTrue: [
            (recoveredBlock43Stack0) name: (recoveredBlock43Stack1).
            recoveredBlock43PC := 83.
        ].
        recoveredBlock43Step = 83 ifTrue: [
            recoveredBlock43Stack0 := recoveredBlock43Local1.
            recoveredBlock43PC := 84.
        ].
        recoveredBlock43Step = 84 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Arg1.
            recoveredBlock43PC := 85.
        ].
        recoveredBlock43Step = 85 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) dispatchPoint.
            recoveredBlock43PC := 87.
        ].
        recoveredBlock43Step = 87 ifTrue: [
            (recoveredBlock43Stack0) bypassContainer: (recoveredBlock43Stack1).
            recoveredBlock43PC := 89.
        ].
        recoveredBlock43Step = 89 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal4.
            recoveredBlock43PC := 92.
        ].
        recoveredBlock43Step = 92 ifTrue: [
            recoveredBlock43Stack1 := recoveredBlock43Local1.
            recoveredBlock43PC := 93.
        ].
        recoveredBlock43Step = 93 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) add: (recoveredBlock43Stack1).
            recoveredBlock43PC := 95.
        ].
        recoveredBlock43Step = 95 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack0.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) newVariableWriteCollection.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputMapping.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 |
    recoveredBlock113Value0 := recoveredBlock113Arg1.
    recoveredBlock113Value1 := recoveredLocal3.
    recoveredBlock113Value2 := (self) addVariable: (recoveredBlock113Value0) toList: (recoveredBlock113Value1).
    recoveredBlock113Value2
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 'varhooks size:   '.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) count.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := 'bypassFunc size: '.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) count.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) show: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) count.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := Transcript.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 'bfunc: '.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (-1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := (recoveredStack4) getFunctionAt: (recoveredStack5).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := (recoveredStack4) name.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) getFunctionAt: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 180] ifFalse: [recoveredPC := 249]] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 245] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 256] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack4 := (recoveredStack4) eHooksProject.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack4 := (recoveredStack4) newSourceFileCollection.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack5 := (recoveredStack5) eHooksProject.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack5 := (recoveredStack5) newIncludeDirCollection.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) synchronizeVarHooks: (recoveredStack2) bypassFuncs: (recoveredStack3) sourceFiles: (recoveredStack4) sourceDirs: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) save.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20005ee8; bytecode file offset 0x150cc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
performAutomappingOverwriteExisting: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEHooksApplCheckWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) checkEHooksAppl.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksCommunicationWidget.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableList.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksCommunicationWidget.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) resetAutomapping.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 |
    recoveredBlock33Value0 := recoveredLocal1.
    recoveredBlock33Value1 := (self) project.
    recoveredBlock33Value2 := (recoveredBlock33Value1) completeLibraryPath.
    recoveredBlock33Value3 := ('Automapping for: ') , (recoveredBlock33Value2).
    (recoveredBlock33Value0) addText: (recoveredBlock33Value3).
    recoveredBlock33Value4 := (self) sortedElementsForMapping.
    recoveredBlock33Value5 := [:recoveredBlock33Block56Arg1 | 
    | recoveredBlock33Block56Local1 recoveredBlock33Block56Local2 recoveredBlock33Block56Stack0 recoveredBlock33Block56Stack1 recoveredBlock33Block56Stack2 recoveredBlock33Block56Stack3 recoveredBlock33Block56Stack4 recoveredBlock33Block56Stack5 recoveredBlock33Block56PC recoveredBlock33Block56Step recoveredBlock33Block56Done recoveredBlock33Block56Result |
    recoveredBlock33Block56Stack0 := self.
    recoveredBlock33Block56PC := 62.
    recoveredBlock33Block56Done := false.
    [recoveredBlock33Block56Done not] whileTrue: [
        recoveredBlock33Block56Step := recoveredBlock33Block56PC.
        recoveredBlock33Block56Step = 62 ifTrue: [
            recoveredBlock33Block56Stack1 := nil.
            recoveredBlock33Block56PC := 63.
        ].
        recoveredBlock33Block56Step = 63 ifTrue: [
            recoveredBlock33Block56Stack2 := self.
            recoveredBlock33Block56PC := 64.
        ].
        recoveredBlock33Block56Step = 64 ifTrue: [
            recoveredBlock33Block56Stack2 := (recoveredBlock33Block56Stack2) eHooksProject.
            recoveredBlock33Block56PC := 66.
        ].
        recoveredBlock33Block56Step = 66 ifTrue: [
            recoveredBlock33Block56Stack3 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56PC := 69.
        ].
        recoveredBlock33Block56Step = 69 ifTrue: [
            recoveredBlock33Block56Stack3 := (recoveredBlock33Block56Stack3) last.
            recoveredBlock33Block56PC := 71.
        ].
        recoveredBlock33Block56Step = 71 ifTrue: [
            recoveredBlock33Block56Stack3 := (recoveredBlock33Block56Stack3) elementName.
            recoveredBlock33Block56PC := 73.
        ].
        recoveredBlock33Block56Step = 73 ifTrue: [
            recoveredBlock33Block56Stack2 := (recoveredBlock33Block56Stack2) isHookableMeasurement: (recoveredBlock33Block56Stack3).
            recoveredBlock33Block56PC := 75.
        ].
        recoveredBlock33Block56Step = 75 ifTrue: [
            (recoveredBlock33Block56Stack2) ifTrue: [recoveredBlock33Block56PC := 78] ifFalse: [recoveredBlock33Block56PC := 302].
        ].
        recoveredBlock33Block56Step = 78 ifTrue: [
            recoveredBlock33Block56PC := 79.
        ].
        recoveredBlock33Block56Step = 79 ifTrue: [
            recoveredBlock33Block56Stack1 := self.
            recoveredBlock33Block56PC := 80.
        ].
        recoveredBlock33Block56Step = 80 ifTrue: [
            recoveredBlock33Block56Stack2 := Array.
            recoveredBlock33Block56PC := 82.
        ].
        recoveredBlock33Block56Step = 82 ifTrue: [
            recoveredBlock33Block56Stack3 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56PC := 85.
        ].
        recoveredBlock33Block56Step = 85 ifTrue: [
            recoveredBlock33Block56Stack3 := (recoveredBlock33Block56Stack3) last.
            recoveredBlock33Block56PC := 87.
        ].
        recoveredBlock33Block56Step = 87 ifTrue: [
            recoveredBlock33Block56Stack3 := (recoveredBlock33Block56Stack3) elementName.
            recoveredBlock33Block56PC := 89.
        ].
        recoveredBlock33Block56Step = 89 ifTrue: [
            recoveredBlock33Block56Stack4 := '-1'.
            recoveredBlock33Block56PC := 91.
        ].
        recoveredBlock33Block56Step = 91 ifTrue: [
            recoveredBlock33Block56Stack2 := (recoveredBlock33Block56Stack2) with: (recoveredBlock33Block56Stack3) with: (recoveredBlock33Block56Stack4).
            recoveredBlock33Block56PC := 93.
        ].
        recoveredBlock33Block56Step = 93 ifTrue: [
            recoveredBlock33Block56Stack1 := (recoveredBlock33Block56Stack1) getAsdVariableFor: (recoveredBlock33Block56Stack2).
            recoveredBlock33Block56PC := 95.
        ].
        recoveredBlock33Block56Step = 95 ifTrue: [
            recoveredBlock33Block56Stack2 := [:recoveredBlock33Block56Block95Arg1 | 
    | recoveredBlock33Block56Block95Stack0 recoveredBlock33Block56Block95Stack1 recoveredBlock33Block56Block95Stack2 recoveredBlock33Block56Block95Stack3 recoveredBlock33Block56Block95PC recoveredBlock33Block56Block95Step recoveredBlock33Block56Block95Done recoveredBlock33Block56Block95Result |
    recoveredBlock33Block56Block95Stack0 := self.
    recoveredBlock33Block56Block95PC := 102.
    recoveredBlock33Block56Block95Done := false.
    [recoveredBlock33Block56Block95Done not] whileTrue: [
        recoveredBlock33Block56Block95Step := recoveredBlock33Block56Block95PC.
        recoveredBlock33Block56Block95Step = 102 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredLocal2.
            recoveredBlock33Block56Block95PC := 105.
        ].
        recoveredBlock33Block56Block95Step = 105 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 108.
        ].
        recoveredBlock33Block56Block95Step = 108 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := (recoveredBlock33Block56Block95Stack2) last.
            recoveredBlock33Block56Block95PC := 110.
        ].
        recoveredBlock33Block56Block95Step = 110 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) getSendListFrom: (recoveredBlock33Block56Block95Stack1) entry: (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 112.
        ].
        recoveredBlock33Block56Block95Step = 112 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := [:block2800189cArg1 | 
    | block2800189cValue0 block2800189cValue1 block2800189cValue2 |
    block2800189cValue0 := block2800189cArg1.
    block2800189cValue1 := (block2800189cValue0) isProject.
    block2800189cValue2 := (block2800189cValue1) not.
    block2800189cValue2
].
            recoveredBlock33Block56Block95PC := 114.
        ].
        recoveredBlock33Block56Block95Step = 114 ifTrue: [
            recoveredBlock33Block56Block95PC := 123.
        ].
        recoveredBlock33Block56Block95Step = 123 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) select: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 125.
        ].
        recoveredBlock33Block56Block95Step = 125 ifTrue: [
            recoveredBlock33Block56Local2 := recoveredBlock33Block56Block95Stack0.
            recoveredBlock33Block56Block95PC := 128.
        ].
        recoveredBlock33Block56Block95Step = 128 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := self.
            recoveredBlock33Block56Block95PC := 129.
        ].
        recoveredBlock33Block56Block95Step = 129 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredLocal2.
            recoveredBlock33Block56Block95PC := 132.
        ].
        recoveredBlock33Block56Block95Step = 132 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 135.
        ].
        recoveredBlock33Block56Block95Step = 135 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := (recoveredBlock33Block56Block95Stack2) last.
            recoveredBlock33Block56Block95PC := 137.
        ].
        recoveredBlock33Block56Block95Step = 137 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) getReceiveListFrom: (recoveredBlock33Block56Block95Stack1) entry: (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 139.
        ].
        recoveredBlock33Block56Block95Step = 139 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := [:block280018c0Arg1 | 
    | block280018c0Value0 block280018c0Value1 block280018c0Value2 |
    block280018c0Value0 := block280018c0Arg1.
    block280018c0Value1 := (block280018c0Value0) isProject.
    block280018c0Value2 := (block280018c0Value1) not.
    block280018c0Value2
].
            recoveredBlock33Block56Block95PC := 141.
        ].
        recoveredBlock33Block56Block95Step = 141 ifTrue: [
            recoveredBlock33Block56Block95PC := 149.
        ].
        recoveredBlock33Block56Block95Step = 149 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) select: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 151.
        ].
        recoveredBlock33Block56Block95Step = 151 ifTrue: [
            recoveredBlock33Block56Local1 := recoveredBlock33Block56Block95Stack0.
            recoveredBlock33Block56Block95PC := 154.
        ].
        recoveredBlock33Block56Block95Step = 154 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := recoveredBlock33Block56Local2.
            recoveredBlock33Block56Block95PC := 157.
        ].
        recoveredBlock33Block56Block95Step = 157 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) isEmpty.
            recoveredBlock33Block56Block95PC := 159.
        ].
        recoveredBlock33Block56Block95Step = 159 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) ifTrue: [recoveredBlock33Block56Block95PC := 162] ifFalse: [recoveredBlock33Block56Block95PC := 220].
        ].
        recoveredBlock33Block56Block95Step = 162 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := recoveredBlock33Block56Local1.
            recoveredBlock33Block56Block95PC := 165.
        ].
        recoveredBlock33Block56Block95Step = 165 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) notEmpty.
            recoveredBlock33Block56Block95PC := 167.
        ].
        recoveredBlock33Block56Block95Step = 167 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) ifTrue: [recoveredBlock33Block56Block95PC := 170] ifFalse: [recoveredBlock33Block56Block95PC := 220].
        ].
        recoveredBlock33Block56Block95Step = 170 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := recoveredArg1.
            recoveredBlock33Block56Block95PC := 173.
        ].
        recoveredBlock33Block56Block95Step = 173 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) ifTrue: [recoveredBlock33Block56Block95PC := 188] ifFalse: [recoveredBlock33Block56Block95PC := 176].
        ].
        recoveredBlock33Block56Block95Step = 176 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := self.
            recoveredBlock33Block56Block95PC := 177.
        ].
        recoveredBlock33Block56Block95Step = 177 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) eHooksConfig.
            recoveredBlock33Block56Block95PC := 179.
        ].
        recoveredBlock33Block56Block95Step = 179 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 182.
        ].
        recoveredBlock33Block56Block95Step = 182 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) getInputMappingForAscetVariable: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 184.
        ].
        recoveredBlock33Block56Block95Step = 184 ifTrue: [
            (recoveredBlock33Block56Block95Stack0 ~~ nil) ifTrue: [recoveredBlock33Block56Block95PC := 220] ifFalse: [recoveredBlock33Block56Block95PC := 188].
        ].
        recoveredBlock33Block56Block95Step = 188 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := self.
            recoveredBlock33Block56Block95PC := 189.
        ].
        recoveredBlock33Block56Block95Step = 189 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) eHooksConfig.
            recoveredBlock33Block56Block95PC := 191.
        ].
        recoveredBlock33Block56Block95Step = 191 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Block95Arg1.
            recoveredBlock33Block56Block95PC := 192.
        ].
        recoveredBlock33Block56Block95Step = 192 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 195.
        ].
        recoveredBlock33Block56Block95Step = 195 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) setLocalInputMappingTo: (recoveredBlock33Block56Block95Stack1) forAscetVariable: (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 197.
        ].
        recoveredBlock33Block56Block95Step = 197 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := self.
            recoveredBlock33Block56Block95PC := 198.
        ].
        recoveredBlock33Block56Block95Step = 198 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) eHooksCommunicationWidget.
            recoveredBlock33Block56Block95PC := 199.
        ].
        recoveredBlock33Block56Block95Step = 199 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 202.
        ].
        recoveredBlock33Block56Block95Step = 202 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) addInput: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 204.
        ].
        recoveredBlock33Block56Block95Step = 204 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := recoveredLocal1.
            recoveredBlock33Block56Block95PC := 207.
        ].
        recoveredBlock33Block56Block95Step = 207 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := 'Map Read: '.
            recoveredBlock33Block56Block95PC := 209.
        ].
        recoveredBlock33Block56Block95Step = 209 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 212.
        ].
        recoveredBlock33Block56Block95Step = 212 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := (recoveredBlock33Block56Block95Stack2) last.
            recoveredBlock33Block56Block95PC := 214.
        ].
        recoveredBlock33Block56Block95Step = 214 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := (recoveredBlock33Block56Block95Stack2) elementName.
            recoveredBlock33Block56Block95PC := 216.
        ].
        recoveredBlock33Block56Block95Step = 216 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := (recoveredBlock33Block56Block95Stack1) , (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 218.
        ].
        recoveredBlock33Block56Block95Step = 218 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) addText: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 220.
        ].
        recoveredBlock33Block56Block95Step = 220 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := nil.
            recoveredBlock33Block56Block95PC := 221.
        ].
        recoveredBlock33Block56Block95Step = 221 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Local2.
            recoveredBlock33Block56Block95PC := 224.
        ].
        recoveredBlock33Block56Block95Step = 224 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := (recoveredBlock33Block56Block95Stack1) notEmpty.
            recoveredBlock33Block56Block95PC := 226.
        ].
        recoveredBlock33Block56Block95Step = 226 ifTrue: [
            (recoveredBlock33Block56Block95Stack1) ifTrue: [recoveredBlock33Block56Block95PC := 230] ifFalse: [recoveredBlock33Block56Block95PC := 291].
        ].
        recoveredBlock33Block56Block95Step = 230 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Local1.
            recoveredBlock33Block56Block95PC := 233.
        ].
        recoveredBlock33Block56Block95Step = 233 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := (recoveredBlock33Block56Block95Stack1) isEmpty.
            recoveredBlock33Block56Block95PC := 235.
        ].
        recoveredBlock33Block56Block95Step = 235 ifTrue: [
            (recoveredBlock33Block56Block95Stack1) ifTrue: [recoveredBlock33Block56Block95PC := 238] ifFalse: [recoveredBlock33Block56Block95PC := 291].
        ].
        recoveredBlock33Block56Block95Step = 238 ifTrue: [
            recoveredBlock33Block56Block95PC := 239.
        ].
        recoveredBlock33Block56Block95Step = 239 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := nil.
            recoveredBlock33Block56Block95PC := 240.
        ].
        recoveredBlock33Block56Block95Step = 240 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredArg1.
            recoveredBlock33Block56Block95PC := 243.
        ].
        recoveredBlock33Block56Block95Step = 243 ifTrue: [
            (recoveredBlock33Block56Block95Stack1) ifTrue: [recoveredBlock33Block56Block95PC := 258] ifFalse: [recoveredBlock33Block56Block95PC := 246].
        ].
        recoveredBlock33Block56Block95Step = 246 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := self.
            recoveredBlock33Block56Block95PC := 247.
        ].
        recoveredBlock33Block56Block95Step = 247 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := (recoveredBlock33Block56Block95Stack1) eHooksConfig.
            recoveredBlock33Block56Block95PC := 249.
        ].
        recoveredBlock33Block56Block95Step = 249 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 252.
        ].
        recoveredBlock33Block56Block95Step = 252 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := (recoveredBlock33Block56Block95Stack1) getOutputMappingForAscetVariable: (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 254.
        ].
        recoveredBlock33Block56Block95Step = 254 ifTrue: [
            (recoveredBlock33Block56Block95Stack1 ~~ nil) ifTrue: [recoveredBlock33Block56Block95PC := 291] ifFalse: [recoveredBlock33Block56Block95PC := 258].
        ].
        recoveredBlock33Block56Block95Step = 258 ifTrue: [
            recoveredBlock33Block56Block95PC := 259.
        ].
        recoveredBlock33Block56Block95Step = 259 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := self.
            recoveredBlock33Block56Block95PC := 260.
        ].
        recoveredBlock33Block56Block95Step = 260 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) eHooksConfig.
            recoveredBlock33Block56Block95PC := 262.
        ].
        recoveredBlock33Block56Block95Step = 262 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Block95Arg1.
            recoveredBlock33Block56Block95PC := 263.
        ].
        recoveredBlock33Block56Block95Step = 263 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 266.
        ].
        recoveredBlock33Block56Block95Step = 266 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) setLocalOutputMappingTo: (recoveredBlock33Block56Block95Stack1) forAscetVariable: (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 268.
        ].
        recoveredBlock33Block56Block95Step = 268 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := self.
            recoveredBlock33Block56Block95PC := 269.
        ].
        recoveredBlock33Block56Block95Step = 269 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) eHooksCommunicationWidget.
            recoveredBlock33Block56Block95PC := 270.
        ].
        recoveredBlock33Block56Block95Step = 270 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 273.
        ].
        recoveredBlock33Block56Block95Step = 273 ifTrue: [
            (recoveredBlock33Block56Block95Stack0) addOutput: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 275.
        ].
        recoveredBlock33Block56Block95Step = 275 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := recoveredLocal1.
            recoveredBlock33Block56Block95PC := 278.
        ].
        recoveredBlock33Block56Block95Step = 278 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := 'Map Write: '.
            recoveredBlock33Block56Block95PC := 280.
        ].
        recoveredBlock33Block56Block95Step = 280 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := recoveredBlock33Block56Arg1.
            recoveredBlock33Block56Block95PC := 283.
        ].
        recoveredBlock33Block56Block95Step = 283 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := (recoveredBlock33Block56Block95Stack2) last.
            recoveredBlock33Block56Block95PC := 285.
        ].
        recoveredBlock33Block56Block95Step = 285 ifTrue: [
            recoveredBlock33Block56Block95Stack2 := (recoveredBlock33Block56Block95Stack2) elementName.
            recoveredBlock33Block56Block95PC := 287.
        ].
        recoveredBlock33Block56Block95Step = 287 ifTrue: [
            recoveredBlock33Block56Block95Stack1 := (recoveredBlock33Block56Block95Stack1) , (recoveredBlock33Block56Block95Stack2).
            recoveredBlock33Block56Block95PC := 289.
        ].
        recoveredBlock33Block56Block95Step = 289 ifTrue: [
            recoveredBlock33Block56Block95Stack0 := (recoveredBlock33Block56Block95Stack0) addText: (recoveredBlock33Block56Block95Stack1).
            recoveredBlock33Block56Block95PC := 291.
        ].
        recoveredBlock33Block56Block95Step = 291 ifTrue: [
            recoveredBlock33Block56Block95Result := recoveredBlock33Block56Block95Stack0.
            recoveredBlock33Block56Block95Done := true.
        ].
    ].
    recoveredBlock33Block56Block95Result
].
            recoveredBlock33Block56PC := 292.
        ].
        recoveredBlock33Block56Step = 292 ifTrue: [
            recoveredBlock33Block56Stack1 := (recoveredBlock33Block56Stack1) ifNotNil: (recoveredBlock33Block56Stack2).
            recoveredBlock33Block56PC := 294.
        ].
        recoveredBlock33Block56Step = 294 ifTrue: [
            recoveredBlock33Block56Stack2 := nil.
            recoveredBlock33Block56PC := 295.
        ].
        recoveredBlock33Block56Step = 295 ifTrue: [
            recoveredBlock33Block56Stack3 := recoveredBlock33Block56Stack2.
            recoveredBlock33Block56PC := 296.
        ].
        recoveredBlock33Block56Step = 296 ifTrue: [
            recoveredBlock33Block56Local2 := recoveredBlock33Block56Stack3.
            recoveredBlock33Block56PC := 299.
        ].
        recoveredBlock33Block56Step = 299 ifTrue: [
            recoveredBlock33Block56Local1 := recoveredBlock33Block56Stack2.
            recoveredBlock33Block56PC := 302.
        ].
        recoveredBlock33Block56Step = 302 ifTrue: [
            recoveredBlock33Block56Result := recoveredBlock33Block56Stack1.
            recoveredBlock33Block56Done := true.
        ].
    ].
    recoveredBlock33Block56Result
].
    recoveredBlock33Value6 := (recoveredBlock33Value4) do: (recoveredBlock33Value5).
    recoveredBlock33Value6
].
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := 'EHooks automapping...'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack0) measureTimeFor: (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) writeASCETConfigFile.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) updateEHooksCommunicationList.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x200060e4; bytecode file offset 0x152f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) userData: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'startEHooks'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:block280018e4Arg1 | 
    | block280018e4Value0 block280018e4Value1 block280018e4Value2 block280018e4Value3 block280018e4Value4 |
    block280018e4Value0 := block280018e4Arg1.
    block280018e4Value1 := block280018e4Value0.
    (block280018e4Value1) recomputeSize: (false).
    block280018e4Value2 := block280018e4Value0.
    (block280018e4Value2) labelString: ('Start EHOOKS...').
    block280018e4Value3 := block280018e4Value0.
    (block280018e4Value3) height: (25).
    block280018e4Value4 := (block280018e4Value0) width: (125).
    block280018e4Value4
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'widgetStartEHooksButton'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:block28001908Arg1 | 
    | block28001908Value0 block28001908Value1 block28001908Value2 block28001908Value3 block28001908Value4 block28001908Value5 block28001908Value6 block28001908Value7 block28001908Value8 |
    block28001908Value0 := block28001908Arg1.
    block28001908Value1 := block28001908Value0.
    block28001908Value2 := XmATTACHFORM.
    (block28001908Value1) topAttachment: (block28001908Value2).
    block28001908Value3 := block28001908Value0.
    (block28001908Value3) topOffset: (5).
    block28001908Value4 := block28001908Value0.
    block28001908Value5 := XmATTACHNONE.
    (block28001908Value4) leftAttachment: (block28001908Value5).
    block28001908Value6 := block28001908Value0.
    block28001908Value7 := XmATTACHFORM.
    (block28001908Value6) rightAttachment: (block28001908Value7).
    block28001908Value8 := (block28001908Value0) rightOffset: (5).
    block28001908Value8
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := 'widgetNotebook'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := [:block2800192cArg1 | 
    nil
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasTabStrip: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'notebook'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := [:recoveredBlock134Arg1 | 
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 recoveredBlock134Value4 recoveredBlock134Value5 recoveredBlock134Value6 recoveredBlock134Value7 recoveredBlock134Value8 recoveredBlock134Value9 recoveredBlock134Value10 recoveredBlock134Value11 recoveredBlock134Value12 recoveredBlock134Value13 recoveredBlock134Value14 |
    recoveredBlock134Value0 := recoveredBlock134Arg1.
    recoveredBlock134Value1 := recoveredBlock134Value0.
    recoveredBlock134Value2 := XmATTACHWIDGET.
    (recoveredBlock134Value1) topAttachment: (recoveredBlock134Value2).
    recoveredBlock134Value3 := recoveredBlock134Value0.
    recoveredBlock134Value4 := recoveredLocal1.
    (recoveredBlock134Value3) topWidget: (recoveredBlock134Value4).
    recoveredBlock134Value5 := recoveredBlock134Value0.
    (recoveredBlock134Value5) topOffset: (0).
    recoveredBlock134Value6 := recoveredBlock134Value0.
    recoveredBlock134Value7 := XmATTACHFORM.
    (recoveredBlock134Value6) leftAttachment: (recoveredBlock134Value7).
    recoveredBlock134Value8 := recoveredBlock134Value0.
    (recoveredBlock134Value8) leftOffset: (0).
    recoveredBlock134Value9 := recoveredBlock134Value0.
    recoveredBlock134Value10 := XmATTACHFORM.
    (recoveredBlock134Value9) bottomAttachment: (recoveredBlock134Value10).
    recoveredBlock134Value11 := recoveredBlock134Value0.
    (recoveredBlock134Value11) bottomOffset: (0).
    recoveredBlock134Value12 := recoveredBlock134Value0.
    recoveredBlock134Value13 := XmATTACHFORM.
    (recoveredBlock134Value12) rightAttachment: (recoveredBlock134Value13).
    recoveredBlock134Value14 := (recoveredBlock134Value0) rightOffset: (0).
    recoveredBlock134Value14
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := 'widgetStartEHooksButton:clientData:callData:'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack0) createTabScheduling: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack3 := ASDEHooksConfigurationInputsAdapter.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock265Value0 |
    recoveredBlock265Value0 := (self) eHooksConfig.
    recoveredBlock265Value0
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := (recoveredStack3) createWithConfigBlock: (recoveredStack4).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := ASDEHooksConfigurationOutputsAdapter.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock279Value0 |
    recoveredBlock279Value0 := (self) eHooksConfig.
    recoveredBlock279Value0
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := (recoveredStack4) createWithConfigBlock: (recoveredStack5).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) createTabInputsOutputs: (recoveredStack1) parent: (recoveredStack2) inputAdapter: (recoveredStack3) outputAdapter: (recoveredStack4).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := 'eHooksWidgetDestroy:clientData:callData:'.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := 'widgetEHooksFocus:clientData:callData:'.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := PointerMotionMask.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := 'motion:clientData:event:'.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x20006320; bytecode file offset 0x15510"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeEHooksApplCheckWellConfiguredPromptMissingFiles: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileIsValid.
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksApplication.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) isRunning.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            (recoveredBlock14Stack1) ifTrue: [recoveredBlock14PC := 26] ifFalse: [recoveredBlock14PC := 78].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) class.
            recoveredBlock14PC := 30.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) EHooksApplication.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) value.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Stack2.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack3.
            recoveredBlock14PC := 36.
        ].
        recoveredBlock14Step = 36 ifTrue: [
            (recoveredBlock14Stack2 == nil) ifTrue: [recoveredBlock14PC := 72] ifFalse: [recoveredBlock14PC := 40].
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Local1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack3 := self.
            recoveredBlock14PC := 42.
        ].
        recoveredBlock14Step = 42 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) getUserInterface.
            recoveredBlock14PC := 44.
        ].
        recoveredBlock14Step = 44 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) equals: (recoveredBlock14Stack3).
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 72] ifFalse: [recoveredBlock14PC := 50].
        ].
        recoveredBlock14Step = 50 ifTrue: [
            recoveredBlock14PC := 51.
        ].
        recoveredBlock14Step = 51 ifTrue: [
            recoveredBlock14Stack1 := ASDSimCTGSLVarStepSolver.
            recoveredBlock14PC := 53.
        ].
        recoveredBlock14Step = 53 ifTrue: [
            recoveredBlock14Stack2 := 'EHOOKS is already open for project: %1. \Please close that instance of EHOOKS before trying to configure this project.'.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) withCrs.
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack3 := recoveredBlock14Local1.
            recoveredBlock14PC := 58.
        ].
        recoveredBlock14Step = 58 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) uiController.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) item.
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14Stack3 := (recoveredBlock14Stack3) completeLibraryPath.
            recoveredBlock14PC := 64.
        ].
        recoveredBlock14Step = 64 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) bindWith: (recoveredBlock14Stack3).
            recoveredBlock14PC := 66.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) message: (recoveredBlock14Stack2).
            recoveredBlock14PC := 68.
        ].
        recoveredBlock14Step = 68 ifTrue: [
            (recoveredBlock14Stack1) prompt.
            recoveredBlock14PC := 70.
        ].
        recoveredBlock14Step = 70 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 72 ifTrue: [
            recoveredBlock14Stack2 := nil.
            recoveredBlock14PC := 73.
        ].
        recoveredBlock14Step = 73 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack2.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 78 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) cleanupEHooks.
            recoveredBlock14PC := 81.
        ].
        recoveredBlock14Step = 81 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) filePath.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksScripting.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) show.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkExistenceOfNecessaryFilesPrompt: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksApplication.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksApplication.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunning.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := EtasEHooksOleObjectWrapperApplication.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObject.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := 'EHOOKS application not found. Please install EHOOKS.'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0) start.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRunning.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) eHooksApplication: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksScripting.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasProject.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 278] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := (recoveredStack0) getProjectSettings.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfigurationFile.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNameOnly.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 220] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksScripting.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack0 := (recoveredStack0) openProject: (recoveredStack1).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 232].
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksScripting.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := (recoveredStack0) createProject: (recoveredStack1) file: (recoveredStack2).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 248] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksScripting.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 262] ifFalse: [recoveredPC := 260].
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksProject.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkProjectIsWellConfigured: (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 304] ifFalse: [recoveredPC := 288].
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 294] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := ASDSimCTGSLVarStepSolver.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := 'Specify valid values for a2l / hex file in EHOOKS tool'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack0) save.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock311Value0 recoveredBlock311Value1 recoveredBlock311Value2 recoveredBlock311Value3 recoveredBlock311Value4 recoveredBlock311Value5 recoveredBlock311Value6 |
    recoveredBlock311Value0 := (self) eHooksConfig.
    recoveredBlock311Value1 := (self) eHooksProject.
    recoveredBlock311Value2 := (recoveredBlock311Value1) identifier.
    (recoveredBlock311Value0) setIdentifier: (recoveredBlock311Value2).
    recoveredBlock311Value3 := (self) eHooksConfig.
    recoveredBlock311Value4 := (self) eHooksProject.
    recoveredBlock311Value5 := (recoveredBlock311Value4) backendLocation.
    recoveredBlock311Value6 := (recoveredBlock311Value3) setBackendLocation: (recoveredBlock311Value5).
    recoveredBlock311Value6
].
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksProject.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"EHOOKS.ic method 0x2000743c; bytecode file offset 0x16788"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createTabScheduling: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 'Scheduling'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) createTabStrip: (recoveredStack1) parent: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal19 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'widgetTabScheduling'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal19.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsForm'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block28001b90Arg1 | 
    | block28001b90Value0 |
    block28001b90Value0 := block28001b90Arg1.
    block28001b90Value0
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsForm'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := [:block28001bb4Arg1 | 
    | block28001bb4Value0 block28001bb4Value1 block28001bb4Value2 block28001bb4Value3 block28001bb4Value4 block28001bb4Value5 block28001bb4Value6 block28001bb4Value7 block28001bb4Value8 block28001bb4Value9 block28001bb4Value10 block28001bb4Value11 block28001bb4Value12 |
    block28001bb4Value0 := block28001bb4Arg1.
    block28001bb4Value1 := block28001bb4Value0.
    block28001bb4Value2 := XmATTACHFORM.
    (block28001bb4Value1) topAttachment: (block28001bb4Value2).
    block28001bb4Value3 := block28001bb4Value0.
    (block28001bb4Value3) topOffset: (0).
    block28001bb4Value4 := block28001bb4Value0.
    block28001bb4Value5 := XmATTACHFORM.
    (block28001bb4Value4) leftAttachment: (block28001bb4Value5).
    block28001bb4Value6 := block28001bb4Value0.
    (block28001bb4Value6) leftOffset: (0).
    block28001bb4Value7 := block28001bb4Value0.
    block28001bb4Value8 := XmATTACHFORM.
    (block28001bb4Value7) rightAttachment: (block28001bb4Value8).
    block28001bb4Value9 := block28001bb4Value0.
    (block28001bb4Value9) rightOffset: (0).
    block28001bb4Value10 := block28001bb4Value0.
    block28001bb4Value11 := XmATTACHFORM.
    (block28001bb4Value10) bottomAttachment: (block28001bb4Value11).
    block28001bb4Value12 := (block28001bb4Value0) bottomOffset: (0).
    block28001bb4Value12
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'Dispatch point'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) inForm: (recoveredStack2).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := 'dispatchPointLabel'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := [:block28001bd8Arg1 | 
    | block28001bd8Value0 block28001bd8Value1 block28001bd8Value2 block28001bd8Value3 block28001bd8Value4 block28001bd8Value5 block28001bd8Value6 |
    block28001bd8Value0 := block28001bd8Arg1.
    block28001bd8Value1 := block28001bd8Value0.
    block28001bd8Value2 := XmATTACHFORM.
    (block28001bd8Value1) topAttachment: (block28001bd8Value2).
    block28001bd8Value3 := block28001bd8Value0.
    (block28001bd8Value3) topOffset: (5).
    block28001bd8Value4 := block28001bd8Value0.
    block28001bd8Value5 := XmATTACHFORM.
    (block28001bd8Value4) leftAttachment: (block28001bd8Value5).
    block28001bd8Value6 := (block28001bd8Value0) leftOffset: (5).
    block28001bd8Value6
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 'dispatchPoint'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := [:block28001bfcArg1 | 
    | block28001bfcValue0 block28001bfcValue1 |
    block28001bfcValue0 := block28001bfcArg1.
    block28001bfcValue1 := (block28001bfcValue0) height: (25).
    block28001bfcValue1
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := 'dispatchPoint'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [:block28001c20Arg1 | 
    | block28001c20Value0 block28001c20Value1 block28001c20Value2 block28001c20Value3 block28001c20Value4 block28001c20Value5 block28001c20Value6 block28001c20Value7 block28001c20Value8 block28001c20Value9 |
    block28001c20Value0 := block28001c20Arg1.
    block28001c20Value1 := block28001c20Value0.
    block28001c20Value2 := XmATTACHFORM.
    (block28001c20Value1) topAttachment: (block28001c20Value2).
    block28001c20Value3 := block28001c20Value0.
    (block28001c20Value3) topOffset: (5).
    block28001c20Value4 := block28001c20Value0.
    block28001c20Value5 := XmATTACHFORM.
    (block28001c20Value4) rightAttachment: (block28001c20Value5).
    block28001c20Value6 := block28001c20Value0.
    (block28001c20Value6) rightOffset: (5).
    block28001c20Value7 := block28001c20Value0.
    block28001c20Value8 := XmATTACHOPPOSITEFORM.
    (block28001c20Value7) leftAttachment: (block28001c20Value8).
    block28001c20Value9 := (block28001c20Value0) leftOffset: (-130).
    block28001c20Value9
].
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := 'Period'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) inForm: (recoveredStack2).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := 'periodLabel'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack0) attachWidget: (recoveredStack1) leftToFormTopTo: (recoveredStack2) topOffset: (recoveredStack3).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack2 := [:block28001c44Arg1 | 
    | block28001c44Value0 block28001c44Value1 |
    block28001c44Value0 := block28001c44Arg1.
    block28001c44Value1 := (block28001c44Value0) height: (22).
    block28001c44Value1
].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            (recoveredStack0) attachWidget: (recoveredStack1) rightToFormTopTo: (recoveredStack2) rightOffset: (recoveredStack3).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) createSecondLabelBeside: (recoveredStack1) form: (recoveredStack2) widgetDictionary: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := 'processForm'.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := 'processForm'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := 'processesLabel'.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := [:block28001c68Arg1 | 
    | block28001c68Value0 block28001c68Value1 block28001c68Value2 block28001c68Value3 block28001c68Value4 block28001c68Value5 |
    block28001c68Value0 := block28001c68Arg1.
    block28001c68Value1 := block28001c68Value0.
    block28001c68Value2 := XmALIGNMENTBEGINNING.
    (block28001c68Value1) alignment: (block28001c68Value2).
    block28001c68Value3 := block28001c68Value0.
    (block28001c68Value3) labelString: ('Processes').
    block28001c68Value4 := block28001c68Value0.
    (block28001c68Value4) height: (20).
    block28001c68Value5 := block28001c68Value0.
    (block28001c68Value5) width: (230).
    block28001c68Value0
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack1 := 'processesLabel'.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack1 := 'processes'.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := [:recoveredBlock413Arg1 | 
    | recoveredBlock413Value0 recoveredBlock413Value1 recoveredBlock413Value2 recoveredBlock413Value3 recoveredBlock413Value4 recoveredBlock413Value5 recoveredBlock413Value6 |
    recoveredBlock413Value0 := recoveredBlock413Arg1.
    recoveredBlock413Value1 := recoveredBlock413Value0.
    recoveredBlock413Value2 := IS_firstColumnPosition_.
    recoveredBlock413Value3 := (self) resourceManager.
    recoveredBlock413Value4 := (recoveredBlock413Value2) iconHierarchyPolicy: (recoveredBlock413Value3).
    (recoveredBlock413Value1) hierarchyPolicy: (recoveredBlock413Value4).
    recoveredBlock413Value5 := XmEXTENDEDSELECT.
    recoveredBlock413Value6 := (recoveredBlock413Value0) selectionPolicy: (recoveredBlock413Value5).
    recoveredBlock413Value6
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := 'processesScrolledList'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := 'processes'.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := 'addProcess'.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := [:block28001c8cArg1 | 
    | block28001c8cValue0 block28001c8cValue1 block28001c8cValue2 block28001c8cValue3 |
    block28001c8cValue0 := block28001c8cArg1.
    block28001c8cValue1 := block28001c8cValue0.
    (block28001c8cValue1) labelString: ('>>').
    block28001c8cValue2 := block28001c8cValue0.
    (block28001c8cValue2) height: (30).
    block28001c8cValue3 := (block28001c8cValue0) width: (40).
    block28001c8cValue3
].
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 524.
        ].
        recoveredStep = 524 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack1 := 'addProcess'.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 538.
        ].
        recoveredStep = 538 ifTrue: [
            recoveredStack1 := 'removeProcess'.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack2 := [:block28001cb0Arg1 | 
    | block28001cb0Value0 block28001cb0Value1 block28001cb0Value2 block28001cb0Value3 |
    block28001cb0Value0 := block28001cb0Arg1.
    block28001cb0Value1 := block28001cb0Value0.
    (block28001cb0Value1) labelString: ('<<').
    block28001cb0Value2 := block28001cb0Value0.
    (block28001cb0Value2) height: (30).
    block28001cb0Value3 := (block28001cb0Value0) width: (40).
    block28001cb0Value3
].
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := 'removeProcess'.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack1 := 'bypassFuncForm'.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack1 := 'bypassFuncForm'.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack1 := 'bypassFuncLabel'.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack2 := [:block28001cd4Arg1 | 
    | block28001cd4Value0 block28001cd4Value1 block28001cd4Value2 block28001cd4Value3 |
    block28001cd4Value0 := block28001cd4Arg1.
    block28001cd4Value1 := block28001cd4Value0.
    block28001cd4Value2 := XmALIGNMENTBEGINNING.
    (block28001cd4Value1) alignment: (block28001cd4Value2).
    block28001cd4Value3 := block28001cd4Value0.
    (block28001cd4Value3) labelString: ('Bypass function').
    block28001cd4Value0
].
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack1 := 'bypassFuncLabel'.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsLabel'.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack2 := [:block28001cf8Arg1 | 
    | block28001cf8Value0 block28001cf8Value1 block28001cf8Value2 block28001cf8Value3 |
    block28001cf8Value0 := block28001cf8Arg1.
    block28001cf8Value1 := block28001cf8Value0.
    (block28001cf8Value1) labelString: ('---').
    block28001cf8Value2 := block28001cf8Value0.
    block28001cf8Value3 := XmALIGNMENTBEGINNING.
    (block28001cf8Value2) alignment: (block28001cf8Value3).
    block28001cf8Value0
].
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsLabel'.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack1 := 'Bypass function'.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := [:recoveredBlock716Arg1 | 
    | recoveredBlock716Value0 recoveredBlock716Value1 recoveredBlock716Value2 recoveredBlock716Value3 recoveredBlock716Value4 recoveredBlock716Value5 recoveredBlock716Value6 |
    recoveredBlock716Value0 := recoveredBlock716Arg1.
    recoveredBlock716Value1 := recoveredBlock716Value0.
    recoveredBlock716Value2 := IS_firstColumnPosition_.
    recoveredBlock716Value3 := (self) resourceManager.
    recoveredBlock716Value4 := (recoveredBlock716Value2) iconHierarchyPolicy: (recoveredBlock716Value3).
    (recoveredBlock716Value1) hierarchyPolicy: (recoveredBlock716Value4).
    recoveredBlock716Value5 := XmEXTENDEDSELECT.
    recoveredBlock716Value6 := (recoveredBlock716Value0) selectionPolicy: (recoveredBlock716Value5).
    recoveredBlock716Value6
].
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := 'bypassFuncsScrolledList'.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack1 := 'bypassFuncs'.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack0 := recoveredLocal19.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack1 := 'unused'.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack2 := [:block28001d1cArg1 | 
    | block28001d1cValue0 block28001d1cValue1 block28001d1cValue2 block28001d1cValue3 block28001d1cValue4 block28001d1cValue5 |
    block28001d1cValue0 := block28001d1cArg1.
    block28001d1cValue1 := block28001d1cValue0.
    block28001d1cValue2 := XmALIGNMENTBEGINNING.
    (block28001d1cValue1) alignment: (block28001d1cValue2).
    block28001d1cValue3 := block28001d1cValue0.
    (block28001d1cValue3) labelString: ('Unused processes only').
    block28001d1cValue4 := block28001d1cValue0.
    (block28001d1cValue4) height: (20).
    block28001d1cValue5 := block28001d1cValue0.
    (block28001d1cValue5) width: (125).
    block28001d1cValue0
].
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack1 := 'unused'.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 841.
        ].
        recoveredStep = 841 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 843.
        ].
        recoveredStep = 843 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack1 := [:recoveredBlock846Arg1 | 
    | recoveredBlock846Value0 recoveredBlock846Value1 recoveredBlock846Value2 recoveredBlock846Value3 recoveredBlock846Value4 recoveredBlock846Value5 recoveredBlock846Value6 recoveredBlock846Value7 recoveredBlock846Value8 recoveredBlock846Value9 recoveredBlock846Value10 recoveredBlock846Value11 recoveredBlock846Value12 recoveredBlock846Value13 |
    recoveredBlock846Value0 := recoveredBlock846Arg1.
    recoveredBlock846Value1 := recoveredBlock846Value0.
    recoveredBlock846Value2 := XmATTACHWIDGET.
    (recoveredBlock846Value1) bottomAttachment: (recoveredBlock846Value2).
    recoveredBlock846Value3 := recoveredBlock846Value0.
    recoveredBlock846Value4 := recoveredLocal7.
    (recoveredBlock846Value3) bottomWidget: (recoveredBlock846Value4).
    recoveredBlock846Value5 := recoveredBlock846Value0.
    (recoveredBlock846Value5) bottomOffset: (5).
    recoveredBlock846Value6 := recoveredBlock846Value0.
    recoveredBlock846Value7 := XmATTACHFORM.
    (recoveredBlock846Value6) topAttachment: (recoveredBlock846Value7).
    recoveredBlock846Value8 := recoveredBlock846Value0.
    recoveredBlock846Value9 := XmATTACHFORM.
    (recoveredBlock846Value8) leftAttachment: (recoveredBlock846Value9).
    recoveredBlock846Value10 := recoveredBlock846Value0.
    (recoveredBlock846Value10) leftOffset: (5).
    recoveredBlock846Value11 := recoveredBlock846Value0.
    recoveredBlock846Value12 := XmATTACHPOSITION.
    (recoveredBlock846Value11) rightAttachment: (recoveredBlock846Value12).
    recoveredBlock846Value13 := (recoveredBlock846Value0) rightPosition: (35).
    recoveredBlock846Value13
].
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 907.
        ].
        recoveredStep = 907 ifTrue: [
            recoveredStack1 := [:block28001d40Arg1 | 
    | block28001d40Value0 block28001d40Value1 block28001d40Value2 block28001d40Value3 block28001d40Value4 block28001d40Value5 block28001d40Value6 |
    block28001d40Value0 := block28001d40Arg1.
    block28001d40Value1 := block28001d40Value0.
    block28001d40Value2 := XmATTACHFORM.
    (block28001d40Value1) topAttachment: (block28001d40Value2).
    block28001d40Value3 := block28001d40Value0.
    block28001d40Value4 := XmATTACHFORM.
    (block28001d40Value3) leftAttachment: (block28001d40Value4).
    block28001d40Value5 := XmATTACHFORM.
    block28001d40Value6 := (block28001d40Value0) rightAttachment: (block28001d40Value5).
    block28001d40Value6
].
            recoveredPC := 910.
        ].
        recoveredStep = 910 ifTrue: [
            recoveredPC := 930.
        ].
        recoveredStep = 930 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 935.
        ].
        recoveredStep = 935 ifTrue: [
            recoveredStack1 := [:recoveredBlock935Arg1 | 
    | recoveredBlock935Value0 recoveredBlock935Value1 recoveredBlock935Value2 recoveredBlock935Value3 recoveredBlock935Value4 recoveredBlock935Value5 recoveredBlock935Value6 recoveredBlock935Value7 recoveredBlock935Value8 recoveredBlock935Value9 recoveredBlock935Value10 recoveredBlock935Value11 recoveredBlock935Value12 recoveredBlock935Value13 recoveredBlock935Value14 recoveredBlock935Value15 recoveredBlock935Value16 |
    recoveredBlock935Value0 := recoveredBlock935Arg1.
    recoveredBlock935Value1 := recoveredBlock935Value0.
    recoveredBlock935Value2 := XmATTACHFORM.
    (recoveredBlock935Value1) bottomAttachment: (recoveredBlock935Value2).
    recoveredBlock935Value3 := recoveredBlock935Value0.
    recoveredBlock935Value4 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock935Value3) topAttachment: (recoveredBlock935Value4).
    recoveredBlock935Value5 := recoveredBlock935Value0.
    recoveredBlock935Value6 := recoveredLocal13.
    (recoveredBlock935Value5) topWidget: (recoveredBlock935Value6).
    recoveredBlock935Value7 := recoveredBlock935Value0.
    recoveredBlock935Value8 := XmATTACHFORM.
    (recoveredBlock935Value7) leftAttachment: (recoveredBlock935Value8).
    recoveredBlock935Value9 := recoveredBlock935Value0.
    recoveredBlock935Value10 := XmATTACHWIDGET.
    (recoveredBlock935Value9) rightAttachment: (recoveredBlock935Value10).
    recoveredBlock935Value11 := recoveredBlock935Value0.
    recoveredBlock935Value12 := recoveredLocal13.
    (recoveredBlock935Value11) rightWidget: (recoveredBlock935Value12).
    recoveredBlock935Value13 := recoveredBlock935Value0.
    (recoveredBlock935Value13) rightOffset: (5).
    recoveredBlock935Value14 := recoveredBlock935Value0.
    (recoveredBlock935Value14) y: (30).
    recoveredBlock935Value15 := recoveredBlock935Value0.
    (recoveredBlock935Value15) height: (230).
    recoveredBlock935Value16 := (recoveredBlock935Value0) width: (180).
    recoveredBlock935Value16
].
            recoveredPC := 1007.
        ].
        recoveredStep = 1007 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack1 := [:recoveredBlock1012Arg1 | 
    | recoveredBlock1012Value0 recoveredBlock1012Value1 recoveredBlock1012Value2 recoveredBlock1012Value3 recoveredBlock1012Value4 recoveredBlock1012Value5 recoveredBlock1012Value6 |
    recoveredBlock1012Value0 := recoveredBlock1012Arg1.
    recoveredBlock1012Value1 := recoveredBlock1012Value0.
    recoveredBlock1012Value2 := XmATTACHWIDGET.
    (recoveredBlock1012Value1) topAttachment: (recoveredBlock1012Value2).
    recoveredBlock1012Value3 := recoveredBlock1012Value0.
    recoveredBlock1012Value4 := recoveredLocal16.
    (recoveredBlock1012Value3) topWidget: (recoveredBlock1012Value4).
    recoveredBlock1012Value5 := XmATTACHFORM.
    recoveredBlock1012Value6 := (recoveredBlock1012Value0) rightAttachment: (recoveredBlock1012Value5).
    recoveredBlock1012Value6
].
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            recoveredStack1 := [:recoveredBlock1045Arg1 | 
    | recoveredBlock1045Value0 recoveredBlock1045Value1 recoveredBlock1045Value2 recoveredBlock1045Value3 recoveredBlock1045Value4 recoveredBlock1045Value5 recoveredBlock1045Value6 recoveredBlock1045Value7 |
    recoveredBlock1045Value0 := recoveredBlock1045Arg1.
    recoveredBlock1045Value1 := recoveredBlock1045Value0.
    recoveredBlock1045Value2 := XmATTACHWIDGET.
    (recoveredBlock1045Value1) topAttachment: (recoveredBlock1045Value2).
    recoveredBlock1045Value3 := recoveredBlock1045Value0.
    recoveredBlock1045Value4 := recoveredLocal13.
    (recoveredBlock1045Value3) topWidget: (recoveredBlock1045Value4).
    recoveredBlock1045Value5 := recoveredBlock1045Value0.
    (recoveredBlock1045Value5) topOffset: (10).
    recoveredBlock1045Value6 := XmATTACHFORM.
    recoveredBlock1045Value7 := (recoveredBlock1045Value0) rightAttachment: (recoveredBlock1045Value6).
    recoveredBlock1045Value7
].
            recoveredPC := 1078.
        ].
        recoveredStep = 1078 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1080.
        ].
        recoveredStep = 1080 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1083.
        ].
        recoveredStep = 1083 ifTrue: [
            recoveredStack1 := [:recoveredBlock1083Arg1 | 
    | recoveredBlock1083Value0 recoveredBlock1083Value1 recoveredBlock1083Value2 recoveredBlock1083Value3 recoveredBlock1083Value4 recoveredBlock1083Value5 recoveredBlock1083Value6 recoveredBlock1083Value7 recoveredBlock1083Value8 recoveredBlock1083Value9 recoveredBlock1083Value10 recoveredBlock1083Value11 recoveredBlock1083Value12 recoveredBlock1083Value13 recoveredBlock1083Value14 recoveredBlock1083Value15 recoveredBlock1083Value16 recoveredBlock1083Value17 |
    recoveredBlock1083Value0 := recoveredBlock1083Arg1.
    recoveredBlock1083Value1 := recoveredBlock1083Value0.
    recoveredBlock1083Value2 := XmATTACHFORM.
    (recoveredBlock1083Value1) bottomAttachment: (recoveredBlock1083Value2).
    recoveredBlock1083Value3 := recoveredBlock1083Value0.
    (recoveredBlock1083Value3) bottomOffset: (5).
    recoveredBlock1083Value4 := recoveredBlock1083Value0.
    recoveredBlock1083Value5 := XmATTACHWIDGET.
    (recoveredBlock1083Value4) topAttachment: (recoveredBlock1083Value5).
    recoveredBlock1083Value6 := recoveredBlock1083Value0.
    recoveredBlock1083Value7 := recoveredLocal17.
    (recoveredBlock1083Value6) topWidget: (recoveredBlock1083Value7).
    recoveredBlock1083Value8 := recoveredBlock1083Value0.
    recoveredBlock1083Value9 := XmATTACHWIDGET.
    (recoveredBlock1083Value8) leftAttachment: (recoveredBlock1083Value9).
    recoveredBlock1083Value10 := recoveredBlock1083Value0.
    recoveredBlock1083Value11 := recoveredLocal15.
    (recoveredBlock1083Value10) leftWidget: (recoveredBlock1083Value11).
    recoveredBlock1083Value12 := recoveredBlock1083Value0.
    (recoveredBlock1083Value12) leftOffset: (5).
    recoveredBlock1083Value13 := recoveredBlock1083Value0.
    recoveredBlock1083Value14 := XmATTACHWIDGET.
    (recoveredBlock1083Value13) rightAttachment: (recoveredBlock1083Value14).
    recoveredBlock1083Value15 := recoveredBlock1083Value0.
    recoveredBlock1083Value16 := recoveredLocal5.
    (recoveredBlock1083Value15) rightWidget: (recoveredBlock1083Value16).
    recoveredBlock1083Value17 := (recoveredBlock1083Value0) rightOffset: (5).
    recoveredBlock1083Value17
].
            recoveredPC := 1156.
        ].
        recoveredStep = 1156 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1161.
        ].
        recoveredStep = 1161 ifTrue: [
            recoveredStack1 := [:block28001d64Arg1 | 
    | block28001d64Value0 block28001d64Value1 block28001d64Value2 block28001d64Value3 block28001d64Value4 block28001d64Value5 block28001d64Value6 |
    block28001d64Value0 := block28001d64Arg1.
    block28001d64Value1 := block28001d64Value0.
    block28001d64Value2 := XmATTACHFORM.
    (block28001d64Value1) topAttachment: (block28001d64Value2).
    block28001d64Value3 := block28001d64Value0.
    block28001d64Value4 := XmATTACHFORM.
    (block28001d64Value3) leftAttachment: (block28001d64Value4).
    block28001d64Value5 := XmATTACHFORM.
    block28001d64Value6 := (block28001d64Value0) rightAttachment: (block28001d64Value5).
    block28001d64Value6
].
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredPC := 1184.
        ].
        recoveredStep = 1184 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1186.
        ].
        recoveredStep = 1186 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1189.
        ].
        recoveredStep = 1189 ifTrue: [
            recoveredStack1 := [:recoveredBlock1189Arg1 | 
    | recoveredBlock1189Value0 recoveredBlock1189Value1 recoveredBlock1189Value2 recoveredBlock1189Value3 recoveredBlock1189Value4 recoveredBlock1189Value5 recoveredBlock1189Value6 recoveredBlock1189Value7 recoveredBlock1189Value8 recoveredBlock1189Value9 recoveredBlock1189Value10 recoveredBlock1189Value11 |
    recoveredBlock1189Value0 := recoveredBlock1189Arg1.
    recoveredBlock1189Value1 := recoveredBlock1189Value0.
    recoveredBlock1189Value2 := XmATTACHWIDGET.
    (recoveredBlock1189Value1) topAttachment: (recoveredBlock1189Value2).
    recoveredBlock1189Value3 := recoveredBlock1189Value0.
    recoveredBlock1189Value4 := recoveredLocal17.
    (recoveredBlock1189Value3) topWidget: (recoveredBlock1189Value4).
    recoveredBlock1189Value5 := recoveredBlock1189Value0.
    (recoveredBlock1189Value5) topOffset: (5).
    recoveredBlock1189Value6 := recoveredBlock1189Value0.
    recoveredBlock1189Value7 := XmATTACHOPPOSITEFORM.
    (recoveredBlock1189Value6) leftAttachment: (recoveredBlock1189Value7).
    recoveredBlock1189Value8 := recoveredBlock1189Value0.
    (recoveredBlock1189Value8) leftOffset: (-225).
    recoveredBlock1189Value9 := recoveredBlock1189Value0.
    recoveredBlock1189Value10 := XmATTACHFORM.
    (recoveredBlock1189Value9) rightAttachment: (recoveredBlock1189Value10).
    recoveredBlock1189Value11 := (recoveredBlock1189Value0) rightOffset: (5).
    recoveredBlock1189Value11
].
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1240.
        ].
        recoveredStep = 1240 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack1 := [:recoveredBlock1243Arg1 | 
    | recoveredBlock1243Value0 recoveredBlock1243Value1 recoveredBlock1243Value2 recoveredBlock1243Value3 recoveredBlock1243Value4 recoveredBlock1243Value5 recoveredBlock1243Value6 recoveredBlock1243Value7 recoveredBlock1243Value8 recoveredBlock1243Value9 recoveredBlock1243Value10 |
    recoveredBlock1243Value0 := recoveredBlock1243Arg1.
    recoveredBlock1243Value1 := recoveredBlock1243Value0.
    recoveredBlock1243Value2 := XmATTACHFORM.
    (recoveredBlock1243Value1) bottomAttachment: (recoveredBlock1243Value2).
    recoveredBlock1243Value3 := recoveredBlock1243Value0.
    recoveredBlock1243Value4 := XmATTACHWIDGET.
    (recoveredBlock1243Value3) topAttachment: (recoveredBlock1243Value4).
    recoveredBlock1243Value5 := recoveredBlock1243Value0.
    recoveredBlock1243Value6 := recoveredLocal11.
    (recoveredBlock1243Value5) topWidget: (recoveredBlock1243Value6).
    recoveredBlock1243Value7 := recoveredBlock1243Value0.
    recoveredBlock1243Value8 := XmATTACHFORM.
    (recoveredBlock1243Value7) leftAttachment: (recoveredBlock1243Value8).
    recoveredBlock1243Value9 := XmATTACHFORM.
    recoveredBlock1243Value10 := (recoveredBlock1243Value0) rightAttachment: (recoveredBlock1243Value9).
    recoveredBlock1243Value10
].
            recoveredPC := 1280.
        ].
        recoveredStep = 1280 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1285.
        ].
        recoveredStep = 1285 ifTrue: [
            recoveredStack1 := [:block28001d88Arg1 | 
    | block28001d88Value0 block28001d88Value1 block28001d88Value2 block28001d88Value3 block28001d88Value4 block28001d88Value5 block28001d88Value6 block28001d88Value7 block28001d88Value8 block28001d88Value9 |
    block28001d88Value0 := block28001d88Arg1.
    block28001d88Value1 := block28001d88Value0.
    block28001d88Value2 := XmATTACHFORM.
    (block28001d88Value1) bottomAttachment: (block28001d88Value2).
    block28001d88Value3 := block28001d88Value0.
    (block28001d88Value3) bottomOffset: (5).
    block28001d88Value4 := block28001d88Value0.
    block28001d88Value5 := XmATTACHFORM.
    (block28001d88Value4) leftAttachment: (block28001d88Value5).
    block28001d88Value6 := block28001d88Value0.
    (block28001d88Value6) leftOffset: (5).
    block28001d88Value7 := block28001d88Value0.
    block28001d88Value8 := XmATTACHPOSITION.
    (block28001d88Value7) rightAttachment: (block28001d88Value8).
    block28001d88Value9 := (block28001d88Value0) rightPosition: (35).
    block28001d88Value9
].
            recoveredPC := 1288.
        ].
        recoveredStep = 1288 ifTrue: [
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1330.
        ].
        recoveredStep = 1330 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1333.
        ].
        recoveredStep = 1333 ifTrue: [
            recoveredStack1 := [:recoveredBlock1333Arg1 | 
    | recoveredBlock1333Value0 recoveredBlock1333Value1 recoveredBlock1333Value2 recoveredBlock1333Value3 recoveredBlock1333Value4 recoveredBlock1333Value5 recoveredBlock1333Value6 recoveredBlock1333Value7 recoveredBlock1333Value8 recoveredBlock1333Value9 recoveredBlock1333Value10 recoveredBlock1333Value11 recoveredBlock1333Value12 recoveredBlock1333Value13 recoveredBlock1333Value14 recoveredBlock1333Value15 recoveredBlock1333Value16 |
    recoveredBlock1333Value0 := recoveredBlock1333Arg1.
    recoveredBlock1333Value1 := recoveredBlock1333Value0.
    recoveredBlock1333Value2 := XmATTACHWIDGET.
    (recoveredBlock1333Value1) topAttachment: (recoveredBlock1333Value2).
    recoveredBlock1333Value3 := recoveredBlock1333Value0.
    (recoveredBlock1333Value3) topOffset: (5).
    recoveredBlock1333Value4 := recoveredBlock1333Value0.
    recoveredBlock1333Value5 := recoveredLocal6.
    (recoveredBlock1333Value4) topWidget: (recoveredBlock1333Value5).
    recoveredBlock1333Value6 := recoveredBlock1333Value0.
    recoveredBlock1333Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1333Value6) rightAttachment: (recoveredBlock1333Value7).
    recoveredBlock1333Value8 := recoveredBlock1333Value0.
    recoveredBlock1333Value9 := recoveredLocal6.
    (recoveredBlock1333Value8) rightWidget: (recoveredBlock1333Value9).
    recoveredBlock1333Value10 := recoveredBlock1333Value0.
    recoveredBlock1333Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1333Value10) leftAttachment: (recoveredBlock1333Value11).
    recoveredBlock1333Value12 := recoveredBlock1333Value0.
    recoveredBlock1333Value13 := recoveredLocal6.
    (recoveredBlock1333Value12) leftWidget: (recoveredBlock1333Value13).
    recoveredBlock1333Value14 := recoveredBlock1333Value0.
    recoveredBlock1333Value15 := XmATTACHFORM.
    (recoveredBlock1333Value14) bottomAttachment: (recoveredBlock1333Value15).
    recoveredBlock1333Value16 := (recoveredBlock1333Value0) bottomOffset: (5).
    recoveredBlock1333Value16
].
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1400.
        ].
        recoveredStep = 1400 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1403.
        ].
        recoveredStep = 1403 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1408.
        ].
        recoveredStep = 1408 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            recoveredStack4 := 'processesvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1412.
        ].
        recoveredStep = 1412 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1413.
        ].
        recoveredStep = 1413 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1417.
        ].
        recoveredStep = 1417 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1420.
        ].
        recoveredStep = 1420 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1421.
        ].
        recoveredStep = 1421 ifTrue: [
            recoveredStack4 := 'listDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1424.
        ].
        recoveredStep = 1424 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1425.
        ].
        recoveredStep = 1425 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1429.
        ].
        recoveredStep = 1429 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1432.
        ].
        recoveredStep = 1432 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1433.
        ].
        recoveredStep = 1433 ifTrue: [
            recoveredStack4 := 'processeschildrenCallback:clientData:callData:'.
            recoveredPC := 1436.
        ].
        recoveredStep = 1436 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1437.
        ].
        recoveredStep = 1437 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1441.
        ].
        recoveredStep = 1441 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 1444.
        ].
        recoveredStep = 1444 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1445.
        ].
        recoveredStep = 1445 ifTrue: [
            recoveredStack3 := 'processesSelectionCallback:clientData:callData:'.
            recoveredPC := 1448.
        ].
        recoveredStep = 1448 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1449.
        ].
        recoveredStep = 1449 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1453.
        ].
        recoveredStep = 1453 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1456.
        ].
        recoveredStep = 1456 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1460.
        ].
        recoveredStep = 1460 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1461.
        ].
        recoveredStep = 1461 ifTrue: [
            recoveredStack3 := 'addProcessActivate:clientData:callData:'.
            recoveredPC := 1464.
        ].
        recoveredStep = 1464 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1465.
        ].
        recoveredStep = 1465 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1469.
        ].
        recoveredStep = 1469 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1472.
        ].
        recoveredStep = 1472 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1476.
        ].
        recoveredStep = 1476 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1477.
        ].
        recoveredStep = 1477 ifTrue: [
            recoveredStack3 := 'removeProcessActivate:clientData:callData:'.
            recoveredPC := 1480.
        ].
        recoveredStep = 1480 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1481.
        ].
        recoveredStep = 1481 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1485.
        ].
        recoveredStep = 1485 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1489.
        ].
        recoveredStep = 1489 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1492.
        ].
        recoveredStep = 1492 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUserInterface.
            recoveredPC := 1497.
        ].
        recoveredStep = 1497 ifTrue: [
            recoveredStack4 := 'subwidgetFocus:clientData:callData:'.
            recoveredPC := 1500.
        ].
        recoveredStep = 1500 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 1501.
        ].
        recoveredStep = 1501 ifTrue: [
            recoveredStack5 := (recoveredStack5) getUserInterface.
            recoveredPC := 1505.
        ].
        recoveredStep = 1505 ifTrue: [
            recoveredStack5 := (recoveredStack5) lastFocusWidget.
            recoveredPC := 1509.
        ].
        recoveredStep = 1509 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1513.
        ].
        recoveredStep = 1513 ifTrue: [
            recoveredStack2 := XmNbeginEditCallback.
            recoveredPC := 1516.
        ].
        recoveredStep = 1516 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1517.
        ].
        recoveredStep = 1517 ifTrue: [
            recoveredStack4 := 'bypassFuncsbeginEditCallback:clientData:callData:'.
            recoveredPC := 1520.
        ].
        recoveredStep = 1520 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1521.
        ].
        recoveredStep = 1521 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1525.
        ].
        recoveredStep = 1525 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1528.
        ].
        recoveredStep = 1528 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1529.
        ].
        recoveredStep = 1529 ifTrue: [
            recoveredStack4 := 'listDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1532.
        ].
        recoveredStep = 1532 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1533.
        ].
        recoveredStep = 1533 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1537.
        ].
        recoveredStep = 1537 ifTrue: [
            recoveredStack2 := XmNendEditCallback.
            recoveredPC := 1540.
        ].
        recoveredStep = 1540 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1541.
        ].
        recoveredStep = 1541 ifTrue: [
            recoveredStack4 := 'bypassFuncsendEditCallback:clientData:callData:'.
            recoveredPC := 1544.
        ].
        recoveredStep = 1544 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1545.
        ].
        recoveredStep = 1545 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1549.
        ].
        recoveredStep = 1549 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1552.
        ].
        recoveredStep = 1552 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1553.
        ].
        recoveredStep = 1553 ifTrue: [
            recoveredStack4 := 'bypassFuncsvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1556.
        ].
        recoveredStep = 1556 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1557.
        ].
        recoveredStep = 1557 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1561.
        ].
        recoveredStep = 1561 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1564.
        ].
        recoveredStep = 1564 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1565.
        ].
        recoveredStep = 1565 ifTrue: [
            recoveredStack4 := 'bypassFuncschildrenCallback:clientData:callData:'.
            recoveredPC := 1568.
        ].
        recoveredStep = 1568 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1569.
        ].
        recoveredStep = 1569 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1573.
        ].
        recoveredStep = 1573 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 1576.
        ].
        recoveredStep = 1576 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1577.
        ].
        recoveredStep = 1577 ifTrue: [
            recoveredStack3 := 'bypassFuncsextendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1580.
        ].
        recoveredStep = 1580 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1581.
        ].
        recoveredStep = 1581 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1585.
        ].
        recoveredStep = 1585 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1588.
        ].
        recoveredStep = 1588 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1592.
        ].
        recoveredStep = 1592 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1593.
        ].
        recoveredStep = 1593 ifTrue: [
            recoveredStack3 := 'dispatchPointSingle:clientData:callData:'.
            recoveredPC := 1596.
        ].
        recoveredStep = 1596 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1597.
        ].
        recoveredStep = 1597 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1601.
        ].
        recoveredStep = 1601 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1604.
        ].
        recoveredStep = 1604 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1608.
        ].
        recoveredStep = 1608 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1609.
        ].
        recoveredStep = 1609 ifTrue: [
            recoveredStack3 := 'changePeriodCallback:clientData:callData:'.
            recoveredPC := 1612.
        ].
        recoveredStep = 1612 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1613.
        ].
        recoveredStep = 1613 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1617.
        ].
        recoveredStep = 1617 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1620.
        ].
        recoveredStep = 1620 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1624.
        ].
        recoveredStep = 1624 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1625.
        ].
        recoveredStep = 1625 ifTrue: [
            recoveredStack3 := 'unusedValue:clientData:callData:'.
            recoveredPC := 1628.
        ].
        recoveredStep = 1628 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1629.
        ].
        recoveredStep = 1629 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1633.
        ].
        recoveredStep = 1633 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1636.
        ].
        recoveredStep = 1636 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1641.
        ].
        recoveredStep = 1641 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1644.
        ].
        recoveredStep = 1644 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1649.
        ].
        recoveredStep = 1649 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1652.
        ].
        recoveredStep = 1652 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1657.
        ].
        recoveredStep = 1657 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1660.
        ].
        recoveredStep = 1660 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1665.
        ].
        recoveredStep = 1665 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1668.
        ].
        recoveredStep = 1668 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1673.
        ].
        recoveredStep = 1673 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1676.
        ].
        recoveredStep = 1676 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1677.
        ].
        recoveredStep = 1677 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBypassFuncMenu.
            recoveredPC := 1681.
        ].
        recoveredStep = 1681 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1682.
        ].
        recoveredStep = 1682 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 1687.
        ].
        recoveredStep = 1687 ifTrue: [
            recoveredStack0 := EtasOleControl.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 1695.
        ].
        recoveredStep = 1695 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1698.
        ].
        recoveredStep = 1698 ifTrue: [
            (recoveredStack0) updateListFontAndItemHeight: (recoveredStack1).
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack0 := EtasOleControl.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 1711.
        ].
        recoveredStep = 1711 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            (recoveredStack0) updateListFontAndItemHeight: (recoveredStack1).
            recoveredPC := 1719.
        ].
        recoveredStep = 1719 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1720.
        ].
        recoveredStep = 1720 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            (recoveredStack0) widgetDictionary: (recoveredStack1).
            recoveredPC := 1727.
        ].
        recoveredStep = 1727 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1728.
        ].
        recoveredStep = 1728 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

