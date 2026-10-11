"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000028; bytecode file offset 0x8fc8ec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateSplitbar
    ^self
! !

"ASDBase.ic method 0x20001210; bytecode file offset 0x8ffcfc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateStatusBar
    ^self
! !

"ASDBase.ic method 0x20001d18; bytecode file offset 0x8ffcfc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkEHooksAppl
    ^self
! !

"ASDBase.ic method 0x20002f98; bytecode file offset 0x8ffcfc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkAfterProjectOptionChanges
    ^self
! !

"ASDBase.ic method 0x200061bc; bytecode file offset 0x902de8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processesSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000860c; bytecode file offset 0x908be4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectedMappingObjects
    | recoveredValue0 |
    recoveredValue0 := (self) selectedBypassFuncs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b4ec; bytecode file offset 0x908be4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksConfig
    | recoveredValue0 |
    recoveredValue0 := (self) eHooksConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200123fc; bytecode file offset 0x90ecb0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isRemoveMappingPossible
    | recoveredLocal1 |
    ^false
! !

"ASDBase.ic method 0x20024950; bytecode file offset 0x92209c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
mappingType
    ^'Process'
! !

"ASDBase.ic method 0x20027320; bytecode file offset 0x923d40"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeEHooksApplCheckWellConfigured
    | recoveredValue0 |
    recoveredValue0 := (self) initializeEHooksApplCheckWellConfiguredPromptMissingFiles: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200276a8; bytecode file offset 0x924260"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isOpenModulePossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSelectedProcess.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20027888; bytecode file offset 0x924260"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkEHooksAppWellConfigured
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) initializeEHooksApplCheckWellConfigured.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030f74; bytecode file offset 0x934580"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) eHooksConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032474; bytecode file offset 0x934580"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
showUnusedOnly
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetShowUnusedOnly.
    recoveredValue1 := (recoveredValue0) set.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200325d4; bytecode file offset 0x934580"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
itemIsModifiable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) modifiable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032684; bytecode file offset 0x934580"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isRemoveUndefinedPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getAllUndefProcesses.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200346a4; bytecode file offset 0x934580"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
deleteBypassFuncPossible
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) selectedBypassFuncs.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036244; bytecode file offset 0x934580"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
processVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) allValidProcessInstVars.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042b9c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetNotebook
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('notebook').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042d7c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetFilterText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('filterText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043b7c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetShowUnusedOnly
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('unused').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043bbc; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createTabInput
    | recoveredValue0 |
    recoveredValue0 := (self) createMappingTab: ('Input').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043fac; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEHooksButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetEHooksButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004400c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetProcessModules
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('processes').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004414c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createTabOutput
    | recoveredValue0 |
    recoveredValue0 := (self) createMappingTab: ('Output').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200447ec; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetFileNameField
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetFileNameField').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004487c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetTabInput
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetTabInput').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200453ac; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetWithoutSendRecInput
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetWithoutSendRecInput').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004549c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetMappingTableOutput
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMappingTableOutput').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045dbc; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetTabOutput
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetTabOutput').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200465dc; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetTabScheduling
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetTabScheduling').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200466cc; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetAssignProcesses
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('removeProcess').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004671c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetPeriod
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('period').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200467dc; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetMappingTableInput
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetMappingTableInput').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046b6c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEHooksStartButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetEHooksStartButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046d5c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetProcesses
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('processes').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20046dfc; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetDispatchPoint
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('dispatchPoint').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004714c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
addBypassFuncUICopy
    | recoveredValue0 |
    recoveredValue0 := (self) addBypassFuncUICopy: ('bypass_func').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004727c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetDeassignProcesses
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('addProcess').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200472ac; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncSettingsLabel
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('bypassFuncSettingsLabel').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047a9c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEHooksToolBar
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetEHooksToolBar').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047c6c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetWithoutSendRecOutput
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetWithoutSendRecOutput').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004854c; bytecode file offset 0x9451f8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetBypassFunc
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('bypassFuncs').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e198; bytecode file offset 0x94d048"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
aboutToClose
    (self) cleanupEHooks.
    ^self
! !

"ASDBase.ic method 0x2004e234; bytecode file offset 0x94d048"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateContents
    (self) updateContentsLocal.
    ^self
! !

"ASDBase.ic method 0x2004f218; bytecode file offset 0x94d048"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateFilter
    (self) updateContentsLocal.
    ^self
! !

"ASDBase.ic method 0x20052334; bytecode file offset 0x94f0e0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getBypassFuncsUICopies
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := (recoveredValue0) uiController.
    recoveredValue2 := (recoveredValue1) getBypassFunctionsCopies.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057d48; bytecode file offset 0x956284"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
hasProcessReferences: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) eHooksConfig.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) hasProcessReferences: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a3e0; bytecode file offset 0x957a6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
unusedValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) checkUpdateProcessList.
    ^self
! !

"ASDBase.ic method 0x2005a62c; bytecode file offset 0x957a6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksWidgetDestroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) cleanupEHooks.
    ^self
! !

"ASDBase.ic method 0x2005aa40; bytecode file offset 0x957a6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncsextendedSelectionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) updateBypassFuncWidgets.
    ^self
! !

"ASDBase.ic method 0x2005b124; bytecode file offset 0x957a6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
motion: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    (self) updateStatusBar.
    ^self
! !

"ASDBase.ic method 0x20063d14; bytecode file offset 0x961970"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuImportMapping
    | recoveredValue0 |
    recoveredValue0 := (self) getUserInterface.
    (recoveredValue0) menuImportMapping.
    ^self
! !

"ASDBase.ic method 0x20063fe4; bytecode file offset 0x961970"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
cleanupEHooks
    | recoveredValue0 |
    recoveredValue0 := (self) project.
    (recoveredValue0) cleanupEHooks.
    ^self
! !

"ASDBase.ic method 0x20064354; bytecode file offset 0x961970"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuExportMapping
    | recoveredValue0 |
    recoveredValue0 := (self) getUserInterface.
    (recoveredValue0) menuExportMapping.
    ^self
! !

"ASDBase.ic method 0x20064c64; bytecode file offset 0x961970"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuInspectMapping
    | recoveredValue0 |
    recoveredValue0 := (self) getBypassFuncsUICopies.
    (recoveredValue0) inspect.
    ^self
! !

"ASDBase.ic method 0x2006f5f8; bytecode file offset 0x96bf7c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
projectKey
    | recoveredValue0 |
    recoveredValue0 := projectKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f820; bytecode file offset 0x96c1f4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
currentTab
    | recoveredValue0 |
    recoveredValue0 := currentTab.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074bcc; bytecode file offset 0x9757c8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
eHooksConfigIsValid
    ^true
! !

"ASDBase.ic method 0x2007cf1c; bytecode file offset 0x97c330"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isSelectAllPossible
    ^false
! !

"ASDBase.ic method 0x200815e8; bytecode file offset 0x97e234"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createDefaultEHooksVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDEHooksVariable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createDefault: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20086700; bytecode file offset 0x9830a8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
deassignProcessIndex: recoveredArg1 fromTask: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) deleteProcessIndex: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200873cc; bytecode file offset 0x983d14"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
singleSelectionTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) singleSelectionTabStrip: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20087408; bytecode file offset 0x983d14"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
modifyVerifyTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) modifyVerifyTabStrip: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008cfa4; bytecode file offset 0x989db0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
makeBypassFuncListConsistent
    | recoveredValue0 |
    recoveredValue0 := (self) getBypassFuncsUICopies.
    (self) updateAssignedProcessesMakeConsistentBypassFuncs: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20090878; bytecode file offset 0x98d184"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
renameBypassFuncPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) selectedBypassFuncs.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) = (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090b8c; bytecode file offset 0x98d690"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuInspectEHooksConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) eHooksConfiguration.
    (recoveredValue1) inspect.
    ^self
! !

"ASDBase.ic method 0x200960e0; bytecode file offset 0x992bec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
project: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    (self) projectKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009ab30; bytecode file offset 0x9973fc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
elementNameVisualInfoCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    (recoveredValue0) value: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a217c; bytecode file offset 0x99ea58"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
markGraphicsModified
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := (recoveredValue0) uiController.
    recoveredValue2 := (recoveredValue1) userInterface.
    (recoveredValue2) updateToolbarSensitive.
    ^self
! !

"ASDBase.ic method 0x200aaa20; bytecode file offset 0x9a72e0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isInputOrOutputTab: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) isInputTab: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) isOutputTab: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) | (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200aefb8; bytecode file offset 0x9ab894"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
listDefaultActionCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) itemPosition.
    (recoveredValue0) expandCollapsePos: (recoveredValue2) notify: (false).
    ^self
! !

"ASDBase.ic method 0x200b2f4c; bytecode file offset 0x9af848"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
schedulingHasChanged
    (self) modified: (true).
    (self) markGraphicsModified.
    ^self
! !

"ASDBase.ic method 0x200c5bd8; bytecode file offset 0x9c25bc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
projectKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e80; bytecode file offset 0x9c2804"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
currentTab: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currentTab := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c60b4; bytecode file offset 0x9c29e8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
modified: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    modified := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8154; bytecode file offset 0x9c4a0c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getSendListFrom: recoveredArg1 entry: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getIndex: (1) fromList: (recoveredValue0) entry: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c816c; bytecode file offset 0x9c4a24"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getReceiveListFrom: recoveredArg1 entry: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getIndex: (2) fromList: (recoveredValue0) entry: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c9cd0; bytecode file offset 0x9c65cc"
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

"ASDBase.ic method 0x200c9cf8; bytecode file offset 0x9c65cc"
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

"ASDBase.ic method 0x200cbee4; bytecode file offset 0x9c87ac"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
promptEHooksApplError
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := ('Unable to start EHOOKS-DEV.\Please ensure, that EHOOKS-DEV is installed correctly.') withCrs.
    recoveredValue2 := (recoveredValue0) errorMessage: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) prompt.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d3e60; bytecode file offset 0x9d079c"
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

"ASDBase.ic method 0x200d3ec0; bytecode file offset 0x9d079c"
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

"ASDBase.ic method 0x200d3ee0; bytecode file offset 0x9d079c"
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

"ASDBase.ic method 0x200d3f70; bytecode file offset 0x9d082c"
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

"ASDBase.ic method 0x200dbffc; bytecode file offset 0x9d88b8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortMappingTableByColumn: recoveredArg1 list: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (self) setSortBlockForWidget: (recoveredValue0) fromColumn: (recoveredValue1).
    (self) updateContentsLocal.
    ^self
! !

"ASDBase.ic method 0x200e3cc8; bytecode file offset 0x9e05b0"
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
            recoveredStack1 := [:block280c3618Arg1 | 
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

"ASDBase.ic method 0x20100bc4; bytecode file offset 0x9fd484"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateEHooksWriteHook: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) updateEHooksVariable: (recoveredValue0) with: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) modelBlockPath: ('dummy').
    ^self
! !

"ASDBase.ic method 0x20102dc0; bytecode file offset 0x9ff68c"
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

"ASDBase.ic method 0x2010a084; bytecode file offset 0xa06940"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEHooksAutoMappingKeep
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
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
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) automappingOverwriteExisiting: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010a0a4; bytecode file offset 0xa06960"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEHooksAutoMappingOverwrite
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
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
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) automappingOverwriteExisiting: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010e2a4; bytecode file offset 0xa0ab80"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isInputTab: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Input'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010e2b4; bytecode file offset 0xa0ab80"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isOutputTab: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Output'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010e2c4; bytecode file offset 0xa0ab80"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isSchedulingTab: recoveredArg1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) labelString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Scheduling'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20112944; bytecode file offset 0xa0f254"
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

"ASDBase.ic method 0x20113718; bytecode file offset 0xa0ffe4"
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

"ASDBase.ic method 0x20118a20; bytecode file offset 0xa152e0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isValidEHooksConfiguration
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
            recoveredStack2 := (recoveredStack2) eHooksConfig.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
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
            recoveredStack1 := (recoveredStack1) configFileName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011b624; bytecode file offset 0xa17ee8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateFileNameWidget
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetFileNameField.
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
            recoveredStack1 := (recoveredStack1) configFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
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

"ASDBase.ic method 0x2012b994; bytecode file offset 0xa28270"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isGetLabelsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentTab.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInputOrOutputTab: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012b9ac; bytecode file offset 0xa28270"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
isGetBackupLabelsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentTab.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInputTab: (recoveredStack3).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) project.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfiguration.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012cbc8; bytecode file offset 0xa2951c"
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
            recoveredStack1 := [:block280c9e70Arg1 :block280c9e70Arg2 | 
    | block280c9e70Value0 block280c9e70Value1 block280c9e70Value2 block280c9e70Value3 block280c9e70Value4 |
    block280c9e70Value0 := block280c9e70Arg1.
    block280c9e70Value1 := (block280c9e70Value0) label.
    block280c9e70Value2 := block280c9e70Arg2.
    block280c9e70Value3 := (block280c9e70Value2) label.
    block280c9e70Value4 := (block280c9e70Value1) < (block280c9e70Value3).
    block280c9e70Value4
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

"ASDBase.ic method 0x20135a84; bytecode file offset 0xa32348"
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

"ASDBase.ic method 0x2013c528; bytecode file offset 0xa38de8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
sortBlockForName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cb8e0Arg1 :block280cb8e0Arg2 | 
    | block280cb8e0Value0 block280cb8e0Value1 block280cb8e0Value2 block280cb8e0Value3 block280cb8e0Value4 block280cb8e0Value5 block280cb8e0Value6 |
    block280cb8e0Value0 := block280cb8e0Arg1.
    block280cb8e0Value1 := (block280cb8e0Value0) last.
    block280cb8e0Value2 := (block280cb8e0Value1) defaultGlobalLabel.
    block280cb8e0Value3 := block280cb8e0Arg2.
    block280cb8e0Value4 := (block280cb8e0Value3) last.
    block280cb8e0Value5 := (block280cb8e0Value4) defaultGlobalLabel.
    block280cb8e0Value6 := (block280cb8e0Value2) < (block280cb8e0Value5).
    block280cb8e0Value6
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

"ASDBase.ic method 0x2013f7c0; bytecode file offset 0xa3c08c"
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
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
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBypassFunctionsCopies.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013fb7c; bytecode file offset 0xa3c460"
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
            recoveredStack1 := [:block280cbfa0Arg1 | 
    | block280cbfa0Value0 block280cbfa0Value1 block280cbfa0Value2 |
    block280cbfa0Value0 := block280cbfa0Arg1.
    block280cbfa0Value1 := (block280cbfa0Value0) isProcess.
    block280cbfa0Value2 := (block280cbfa0Value1) not.
    block280cbfa0Value2
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

"ASDBase.ic method 0x20144aa0; bytecode file offset 0xa4139c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateEhooksMappingSelectName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) widgetSelectedMapping.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) selectElementNamed: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014fd24; bytecode file offset 0xa4c5f8"
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

"ASDBase.ic method 0x2014fd38; bytecode file offset 0xa4c5f8"
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

"ASDBase.ic method 0x201515f0; bytecode file offset 0xa4deb8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateWidgetSearchResults
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSearchResultActive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) userInterface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) updateWidgetSearchResults.
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

"ASDBase.ic method 0x20160208; bytecode file offset 0xa5cae4"
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

"ASDBase.ic method 0x20160220; bytecode file offset 0xa5cae4"
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

"ASDBase.ic method 0x20161c9c; bytecode file offset 0xa5e560"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initEHooksConfig
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
            recoveredStack0 := (recoveredStack0) initEHooksConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidEHooksConfiguration.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) initEHooksSpecificationWidget.
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

"ASDBase.ic method 0x20168ec4; bytecode file offset 0xa65790"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateEHooksVariable: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) name.
    (recoveredValue0) name: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) measurementName.
    (recoveredValue3) measurementName: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) arrayIndex.
    (recoveredValue6) arrayIndex: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201715f4; bytecode file offset 0xa6debc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateForNewPage
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidEHooksConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) updateContentsLocal.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMappingTableInput.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) updateMapping.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMappingTableOutput.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) updateMapping.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017abd8; bytecode file offset 0xa77498"
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

"ASDBase.ic method 0x2018192c; bytecode file offset 0xa7e1f8"
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
            (recoveredStack0) schedulingHasChanged.
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

"ASDBase.ic method 0x20189a04; bytecode file offset 0xa862c8"
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

"ASDBase.ic method 0x2018ef98; bytecode file offset 0xa8b864"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncDelete
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
            recoveredStack1 := (recoveredStack1) selectedBypassFuncs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) deleteBypassFuncsUICopies: (recoveredStack1).
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
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetProcessModules.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) refresh.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) schedulingHasChanged.
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

"ASDBase.ic method 0x201a23a0; bytecode file offset 0xa9ec6c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateWidgetSensitivity
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) widgetAssignProcesses.
    recoveredValue1 := (self) itemIsModifiable.
    (recoveredValue0) sensitive: (recoveredValue1).
    recoveredValue2 := (self) widgetDeassignProcesses.
    recoveredValue3 := (self) itemIsModifiable.
    (recoveredValue2) sensitive: (recoveredValue3).
    recoveredValue4 := (self) widgetEHooksStartButton.
    recoveredValue5 := (self) isValidEHooksConfiguration.
    (recoveredValue4) sensitive: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x201b0e94; bytecode file offset 0xaad780"
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
            recoveredStack1 := [:block280d3ee4Arg1 | 
    | block280d3ee4Stack0 block280d3ee4Stack1 block280d3ee4Stack2 block280d3ee4Stack3 block280d3ee4PC block280d3ee4Step block280d3ee4Done block280d3ee4Result |
    block280d3ee4Stack0 := self.
    block280d3ee4PC := 4.
    block280d3ee4Done := false.
    [block280d3ee4Done not] whileTrue: [
        block280d3ee4Step := block280d3ee4PC.
        block280d3ee4Step = 4 ifTrue: [
            block280d3ee4Stack1 := false.
            block280d3ee4PC := 5.
        ].
        block280d3ee4Step = 5 ifTrue: [
            block280d3ee4Stack2 := block280d3ee4Arg1.
            block280d3ee4PC := 6.
        ].
        block280d3ee4Step = 6 ifTrue: [
            block280d3ee4Stack2 := (block280d3ee4Stack2) isString.
            block280d3ee4PC := 7.
        ].
        block280d3ee4Step = 7 ifTrue: [
            (block280d3ee4Stack2) ifTrue: [block280d3ee4PC := 14] ifFalse: [block280d3ee4PC := 10].
        ].
        block280d3ee4Step = 10 ifTrue: [
            block280d3ee4PC := 11.
        ].
        block280d3ee4Step = 11 ifTrue: [
            block280d3ee4Stack1 := block280d3ee4Arg1.
            block280d3ee4PC := 12.
        ].
        block280d3ee4Step = 12 ifTrue: [
            block280d3ee4Stack1 := (block280d3ee4Stack1) isProcess.
            block280d3ee4PC := 14.
        ].
        block280d3ee4Step = 14 ifTrue: [
            block280d3ee4Result := block280d3ee4Stack1.
            block280d3ee4Done := true.
        ].
    ].
    block280d3ee4Result
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

"ASDBase.ic method 0x201b0eb4; bytecode file offset 0xaad780"
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
            recoveredStack1 := [:block280d3f08Arg1 | 
    | block280d3f08Stack0 block280d3f08Stack1 block280d3f08Stack2 block280d3f08Stack3 block280d3f08PC block280d3f08Step block280d3f08Done block280d3f08Result |
    block280d3f08Stack0 := self.
    block280d3f08PC := 4.
    block280d3f08Done := false.
    [block280d3f08Done not] whileTrue: [
        block280d3f08Step := block280d3f08PC.
        block280d3f08Step = 4 ifTrue: [
            block280d3f08Stack1 := false.
            block280d3f08PC := 5.
        ].
        block280d3f08Step = 5 ifTrue: [
            block280d3f08Stack2 := block280d3f08Arg1.
            block280d3f08PC := 6.
        ].
        block280d3f08Step = 6 ifTrue: [
            block280d3f08Stack2 := (block280d3f08Stack2) isString.
            block280d3f08PC := 7.
        ].
        block280d3f08Step = 7 ifTrue: [
            (block280d3f08Stack2) ifTrue: [block280d3f08PC := 14] ifFalse: [block280d3f08PC := 10].
        ].
        block280d3f08Step = 10 ifTrue: [
            block280d3f08PC := 11.
        ].
        block280d3f08Step = 11 ifTrue: [
            block280d3f08Stack1 := block280d3f08Arg1.
            block280d3f08PC := 12.
        ].
        block280d3f08Step = 12 ifTrue: [
            block280d3f08Stack1 := (block280d3f08Stack1) isProcess.
            block280d3f08PC := 14.
        ].
        block280d3f08Step = 14 ifTrue: [
            block280d3f08Result := block280d3f08Stack1.
            block280d3f08Done := true.
        ].
    ].
    block280d3f08Result
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

"ASDBase.ic method 0x201b0f24; bytecode file offset 0xaad7f4"
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
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) updateWidgetSearchResults.
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

"ASDBase.ic method 0x201c9860; bytecode file offset 0xac6130"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
checkEHooksConfigurationFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidEHooksConfiguration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Missing EHOOKS configuration file. \Please specify existing *.ehcfg file or new file.'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEditButton: (recoveredStack1) clientData: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cfc24; bytecode file offset 0xacc4ec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
withoutSendRecChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) widgetMappingTableInput.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) getState.
    (recoveredValue0) withoutSendReceive: (recoveredValue2).
    recoveredValue3 := (self) widgetMappingTableInput.
    (recoveredValue3) updateMapping.
    recoveredValue4 := (self) widgetMappingTableOutput.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) getState.
    (recoveredValue4) withoutSendReceive: (recoveredValue6).
    recoveredValue7 := (self) widgetMappingTableOutput.
    (recoveredValue7) updateMapping.
    ^self
! !

"ASDBase.ic method 0x201dc844; bytecode file offset 0xad9118"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEHooksFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) updateWidgetSensitivity.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) updateNotebookSensitivity.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNotebook.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block280d5ed0Arg1 | 
    | block280d5ed0Value0 block280d5ed0Value1 block280d5ed0Value2 |
    block280d5ed0Value0 := block280d5ed0Arg1.
    block280d5ed0Value1 := (block280d5ed0Value0) userData.
    block280d5ed0Value2 := (block280d5ed0Value1) resize.
    block280d5ed0Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x201de58c; bytecode file offset 0xadae54"
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

"ASDBase.ic method 0x201e0384; bytecode file offset 0xadcc68"
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

"ASDBase.ic method 0x201e61d0; bytecode file offset 0xae2a9c"
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

"ASDBase.ic method 0x201ebd10; bytecode file offset 0xae85dc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncAdd
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) addBypassFuncUICopy.
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
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) menuBypassFuncRename.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) schedulingHasChanged.
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

"ASDBase.ic method 0x201ec214; bytecode file offset 0xae8adc"
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

"ASDBase.ic method 0x201edc18; bytecode file offset 0xaea4f4"
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

"ASDBase.ic method 0x201f2554; bytecode file offset 0xaeee20"
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

"ASDBase.ic method 0x20204d54; bytecode file offset 0xb01628"
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
            recoveredStack0 := RBUserInfo.
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

"ASDBase.ic method 0x202126f4; bytecode file offset 0xb0efb8"
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

"ASDBase.ic method 0x20217bbc; bytecode file offset 0xb1447c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := modified.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            modified := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := modified.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetMappingTableInput.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) modified.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetMappingTableOutput.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) modified.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20222630; bytecode file offset 0xb1ef04"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
openEHooksButtonMenu: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) focusWidget.
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
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) subMenuEHooks.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetEHooksButton.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUserInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) mousePosition.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) openPopupOn: (recoveredStack1) owner: (recoveredStack2) position: (recoveredStack3).
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

"ASDBase.ic method 0x2022efb0; bytecode file offset 0xb2b888"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
addBypassFuncUICopy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) getBypassFuncsUICopies.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [:block280dcd7cArg1 | 
    | block280dcd7cValue0 block280dcd7cValue1 |
    block280dcd7cValue0 := block280dcd7cArg1.
    block280dcd7cValue1 := (block280dcd7cValue0) funcNodeName.
    block280dcd7cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueStringFor: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := ASDEHooksBypassFuncNode.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) eHooksConfig.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWithName: (recoveredStack2) eHooksConfig: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBypassFuncsUICopies.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024ab10; bytecode file offset 0xb473ec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createEHooksVariableFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASDEHooksVariable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) name: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) measurementName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) measurementName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) arrayIndex.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) arrayIndex: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) conversion.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) conversion: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024b8a4; bytecode file offset 0xb48184"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeEHooksApplCheckWellConfiguredPromptMissingFiles: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksConfigurationFile.
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
            recoveredStack0 := CfsStat.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) configFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'EHOOKS configuration file not found. \Please change configuration file or \start EHOOKS to create a new configuration file'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) startApplicationServerPromptMissingFiles: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025e20c; bytecode file offset 0xb5aacc"
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

"ASDBase.ic method 0x2026ee90; bytecode file offset 0xb6b768"
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
            recoveredStack2 := [:block280e0454Arg1 | 
    | block280e0454Value0 block280e0454Value1 block280e0454Value2 |
    block280e0454Value0 := block280e0454Arg1.
    block280e0454Value1 := (block280e0454Value0) at: (1).
    block280e0454Value2 := (block280e0454Value1) aliasName.
    block280e0454Value2
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

"ASDBase.ic method 0x20272750; bytecode file offset 0xb6f01c"
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

"ASDBase.ic method 0x20275a08; bytecode file offset 0xb722f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initEHooksSpecificationWidget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) widgetMappingTableInput.
    (recoveredValue0) initMappings.
    recoveredValue1 := (self) widgetMappingTableOutput.
    (recoveredValue1) initMappings.
    (self) updateBypassFuncList.
    (self) updateBypassFuncWidgets.
    recoveredValue2 := (self) getUserInterface.
    recoveredValue3 := (recoveredValue2) uiController.
    recoveredValue4 := (self) eHooksConfig.
    recoveredValue5 := (recoveredValue4) bypassFunctions.
    recoveredValue6 := (self) eHooksConfig.
    recoveredValue7 := (recoveredValue6) class.
    recoveredValue8 := (recoveredValue7) mappingTypeProcess.
    (recoveredValue3) uiMappings: (recoveredValue5) type: (recoveredValue8).
    (self) updateContentsLocal.
    ^self
! !

"ASDBase.ic method 0x20275c18; bytecode file offset 0xb724ec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEHooksGetLabelsBackupCopy
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
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
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInputMapping.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuBackupCopyVarsInput.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuOpenEHooksECUReadBackupCopySelection: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    recoveredBlock22Value0 := (self) eHooksConfig.
    recoveredBlock22Value1 := recoveredBlock22Arg1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) ecuReadVarsBackupCopySelection: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateMapping.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20278a9c; bytecode file offset 0xb7536c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEHooksStartButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) getUserInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280e1048Arg1 | 
    | block280e1048Stack0 block280e1048Stack1 block280e1048Stack2 block280e1048Stack3 block280e1048PC block280e1048Step block280e1048Done block280e1048Result |
    block280e1048Stack0 := self.
    block280e1048PC := 4.
    block280e1048Done := false.
    [block280e1048Done not] whileTrue: [
        block280e1048Step := block280e1048PC.
        block280e1048Step = 4 ifTrue: [
            block280e1048Stack1 := block280e1048Arg1.
            block280e1048PC := 5.
        ].
        block280e1048Step = 5 ifTrue: [
            block280e1048Stack1 := (block280e1048Stack1) widgetEHooksSpecification.
            block280e1048PC := 6.
        ].
        block280e1048Step = 6 ifTrue: [
            block280e1048Stack2 := [:block280e106cArg1 | 
    | block280e106cStack0 block280e106cStack1 block280e106cStack2 block280e106cStack3 block280e106cPC block280e106cStep block280e106cDone block280e106cResult |
    block280e106cStack0 := self.
    block280e106cPC := 4.
    block280e106cDone := false.
    [block280e106cDone not] whileTrue: [
        block280e106cStep := block280e106cPC.
        block280e106cStep = 4 ifTrue: [
            block280e106cStack1 := nil.
            block280e106cPC := 5.
        ].
        block280e106cStep = 5 ifTrue: [
            block280e106cStack2 := block280e106cArg1.
            block280e106cPC := 6.
        ].
        block280e106cStep = 6 ifTrue: [
            block280e106cStack2 := (block280e106cStack2) initializeEHooksConfigurationFile.
            block280e106cPC := 8.
        ].
        block280e106cStep = 8 ifTrue: [
            (block280e106cStack2) ifTrue: [block280e106cPC := 12] ifFalse: [block280e106cPC := 17].
        ].
        block280e106cStep = 12 ifTrue: [
            block280e106cPC := 13.
        ].
        block280e106cStep = 13 ifTrue: [
            block280e106cStack1 := block280e106cArg1.
            block280e106cPC := 14.
        ].
        block280e106cStep = 14 ifTrue: [
            block280e106cStack2 := true.
            block280e106cPC := 15.
        ].
        block280e106cStep = 15 ifTrue: [
            block280e106cStack1 := (block280e106cStack1) startApplicationServerPromptMissingFiles: (block280e106cStack2).
            block280e106cPC := 17.
        ].
        block280e106cStep = 17 ifTrue: [
            block280e106cResult := block280e106cStack1.
            block280e106cDone := true.
        ].
    ].
    block280e106cResult
].
            block280e1048PC := 8.
        ].
        block280e1048Step = 8 ifTrue: [
            block280e1048PC := 26.
        ].
        block280e1048Step = 26 ifTrue: [
            block280e1048Stack1 := (block280e1048Stack1) ifNotNil: (block280e1048Stack2).
            block280e1048PC := 28.
        ].
        block280e1048Step = 28 ifTrue: [
            block280e1048Result := block280e1048Stack1.
            block280e1048Done := true.
        ].
    ].
    block280e1048Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202845f8; bytecode file offset 0xb80ecc"
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
            recoveredStack1 := 'Settings'.
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

"ASDBase.ic method 0x202991fc; bytecode file offset 0xb95ae4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateEHooksBypassFunction: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) funcNodeName.
    (recoveredValue0) identifier: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) funcNodeName.
    (recoveredValue3) name: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) ecuTriggerConfigDispatchPoint.
    (recoveredValue6) bypassContainer: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue10) ecuTriggerConfigEnablerParameter.
    (recoveredValue9) enabler: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue13) ecuTriggerConfigIndicatorVariable.
    (recoveredValue12) indicator: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) ecuTriggerConfigControlVariable.
    (recoveredValue15) control: (recoveredValue17).
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := recoveredArg2.
    recoveredValue20 := (recoveredValue19) ecuTriggerConfigForceWrites.
    (recoveredValue18) forceWrites: (recoveredValue20).
    ^self
! !

"ASDBase.ic method 0x2029afcc; bytecode file offset 0xb978b4"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateContentsLocal
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) project.
    recoveredValue1 := (recoveredValue0) eHooksConfiguration.
    recoveredValue2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    (self) updateWidgetSensitivity.
    (self) updateNotebookSensitivity.
    (self) updateStatusBar.
    (self) updateProcessClassList.
    (self) updateBypassFuncList.
    (self) updateBypassFuncWidgets.
    recoveredBlock6Value0 := (self) bypassFuncSettingsLabel.
    (recoveredBlock6Value0) labelString: ('Settings').
    recoveredBlock6Value1 := (self) updateFileNameWidget.
    recoveredBlock6Value1
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2029b948; bytecode file offset 0xb98218"
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
            recoveredStack2 := [:block280e385cArg1 | 
    | block280e385cStack0 block280e385cStack1 block280e385cStack2 block280e385cPC block280e385cStep block280e385cDone block280e385cResult |
    block280e385cStack0 := self.
    block280e385cPC := 4.
    block280e385cDone := false.
    [block280e385cDone not] whileTrue: [
        block280e385cStep := block280e385cPC.
        block280e385cStep = 4 ifTrue: [
            block280e385cStack1 := block280e385cArg1.
            block280e385cPC := 5.
        ].
        block280e385cStep = 5 ifTrue: [
            block280e385cStack1 := (block280e385cStack1) period.
            block280e385cPC := 6.
        ].
        block280e385cStep = 6 ifTrue: [
            (block280e385cStack1 == nil) ifTrue: [block280e385cPC := 16] ifFalse: [block280e385cPC := 10].
        ].
        block280e385cStep = 10 ifTrue: [
            block280e385cStack1 := block280e385cArg1.
            block280e385cPC := 11.
        ].
        block280e385cStep = 11 ifTrue: [
            block280e385cStack1 := (block280e385cStack1) period.
            block280e385cPC := 12.
        ].
        block280e385cStep = 12 ifTrue: [
            block280e385cPC := 18.
        ].
        block280e385cStep = 16 ifTrue: [
            block280e385cStack1 := ''.
            block280e385cPC := 18.
        ].
        block280e385cStep = 18 ifTrue: [
            block280e385cResult := block280e385cStack1.
            block280e385cDone := true.
        ].
    ].
    block280e385cResult
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

"ASDBase.ic method 0x202a2fa8; bytecode file offset 0xb9f8a4"
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

"ASDBase.ic method 0x202a7108; bytecode file offset 0xba39dc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetSelectedMapping
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
            recoveredStack0 := (recoveredStack0) widgetNotebook.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) userData.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) extendedWidget.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ac974; bytecode file offset 0xba924c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateBypassFuncList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBypassFuncsUICopies.
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
            (recoveredStack0) updateAssignedProcessesMakeConsistentBypassFuncs: (recoveredStack1).
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
            recoveredStack2 := [:block280e4768Arg1 :block280e4768Arg2 | 
    | block280e4768Value0 block280e4768Value1 block280e4768Value2 block280e4768Value3 block280e4768Value4 |
    block280e4768Value0 := block280e4768Arg1.
    block280e4768Value1 := (block280e4768Value0) funcNodeName.
    block280e4768Value2 := block280e4768Arg2.
    block280e4768Value3 := (block280e4768Value2) funcNodeName.
    block280e4768Value4 := (block280e4768Value1) < (block280e4768Value3).
    block280e4768Value4
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b4f2c; bytecode file offset 0xbb1804"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
setDispatchPoint: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) eHooksConfig.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) bypassContainer.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue3).
    (recoveredValue0) addDispatchPoints: (recoveredValue4).
    recoveredValue5 := (self) selectedBypassFuncs.
    recoveredValue6 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := [:recoveredBlock17Block25Arg1 | 
    | recoveredBlock17Block25Value0 recoveredBlock17Block25Value1 recoveredBlock17Block25Value2 recoveredBlock17Block25Value3 |
    recoveredBlock17Block25Value0 := recoveredBlock17Block25Arg1.
    recoveredBlock17Block25Value1 := recoveredArg1.
    recoveredBlock17Block25Value2 := (recoveredBlock17Block25Value1) bypassContainer.
    recoveredBlock17Block25Value3 := (recoveredBlock17Block25Value0) changeDispatchPoint: (recoveredBlock17Block25Value2).
    recoveredBlock17Block25Value3
].
    recoveredBlock17Value2 := (recoveredBlock17Value0) do: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202d2310; bytecode file offset 0xbcebe0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateWithoutSendRecWidgets
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMappingTableInput.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) withoutSendReceive.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWithoutSendRecInput.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMappingTableOutput.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) withoutSendReceive.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetWithoutSendRecOutput.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) set: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack0.
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

"ASDBase.ic method 0x202d5638; bytecode file offset 0xbd1f0c"
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
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value1) ecuTriggerConfigDispatchPoint.
    recoveredBlock13Value3 := (recoveredBlock13Value0) add: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) someElement.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202dac00; bytecode file offset 0xbd74e0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
bypassFuncsendEditCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) funcNodeName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) newValue.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
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
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) getBypassFuncsUICopies.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) newValue.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) renameBypassFunc: (recoveredStack1) existingFuncs: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) refreshItem: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ef7d0; bytecode file offset 0xbec0a4"
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

"ASDBase.ic method 0x202f2148; bytecode file offset 0xbeea2c"
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

"ASDBase.ic method 0x202fbe14; bytecode file offset 0xbf86f0"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) updateSplitbar.
    recoveredValue0 := (self) widgetNotebook.
    recoveredValue1 := (recoveredValue0) items.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Stack0 recoveredBlock9Stack1 recoveredBlock9Stack2 recoveredBlock9Stack3 recoveredBlock9PC recoveredBlock9Step recoveredBlock9Done recoveredBlock9Result |
    recoveredBlock9Stack0 := self.
    recoveredBlock9PC := 16.
    recoveredBlock9Done := false.
    [recoveredBlock9Done not] whileTrue: [
        recoveredBlock9Step := recoveredBlock9PC.
        recoveredBlock9Step = 16 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) widgetNotebook.
            recoveredBlock9PC := 17.
        ].
        recoveredBlock9Step = 17 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) selectedItems.
            recoveredBlock9PC := 18.
        ].
        recoveredBlock9Step = 18 ifTrue: [
            recoveredBlock9Stack1 := 1.
            recoveredBlock9PC := 20.
        ].
        recoveredBlock9Step = 20 ifTrue: [
            recoveredBlock9Stack2 := [].
            recoveredBlock9PC := 22.
        ].
        recoveredBlock9Step = 22 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) at: (recoveredBlock9Stack1) ifAbsent: (recoveredBlock9Stack2).
            recoveredBlock9PC := 24.
        ].
        recoveredBlock9Step = 24 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Stack0.
            recoveredBlock9PC := 25.
        ].
        recoveredBlock9Step = 25 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Stack1.
            recoveredBlock9PC := 26.
        ].
        recoveredBlock9Step = 26 ifTrue: [
            (recoveredBlock9Stack0 == nil) ifTrue: [recoveredBlock9PC := 44] ifFalse: [recoveredBlock9PC := 30].
        ].
        recoveredBlock9Step = 30 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Local1.
            recoveredBlock9PC := 31.
        ].
        recoveredBlock9Step = 31 ifTrue: [
            recoveredBlock9Stack1 := recoveredBlock9Arg1.
            recoveredBlock9PC := 32.
        ].
        recoveredBlock9Step = 32 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) ~= (recoveredBlock9Stack1).
            recoveredBlock9PC := 33.
        ].
        recoveredBlock9Step = 33 ifTrue: [
            (recoveredBlock9Stack0) ifTrue: [recoveredBlock9PC := 36] ifFalse: [recoveredBlock9PC := 44].
        ].
        recoveredBlock9Step = 36 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Arg1.
            recoveredBlock9PC := 37.
        ].
        recoveredBlock9Step = 37 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) userData.
            recoveredBlock9PC := 39.
        ].
        recoveredBlock9Step = 39 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) unmanageChild.
            recoveredBlock9PC := 41.
        ].
        recoveredBlock9Step = 41 ifTrue: [
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 44 ifTrue: [
            recoveredBlock9Stack0 := recoveredBlock9Arg1.
            recoveredBlock9PC := 45.
        ].
        recoveredBlock9Step = 45 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) userData.
            recoveredBlock9PC := 47.
        ].
        recoveredBlock9Step = 47 ifTrue: [
            recoveredBlock9Stack0 := (recoveredBlock9Stack0) manageChild.
            recoveredBlock9PC := 49.
        ].
        recoveredBlock9Step = 49 ifTrue: [
            recoveredBlock9Result := recoveredBlock9Stack0.
            recoveredBlock9Done := true.
        ].
    ].
    recoveredBlock9Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2030dde8; bytecode file offset 0xc0a6c8"
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

"ASDBase.ic method 0x20316318; bytecode file offset 0xc12bf8"
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
            recoveredStack0 := RBUserInfo.
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
            recoveredStack0 := RBUserInfo.
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

"ASDBase.ic method 0x20323d7c; bytecode file offset 0xc2065c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEHooksGetLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInputMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := (recoveredStack1) ecuNoCopyVarsInput.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuOpenEHooksECUReadSelection: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := (self) eHooksConfig.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) ecuReadVarsSelection: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) menuOpenEHooksECUWriteSelection: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 |
    recoveredBlock39Value0 := (self) eHooksConfig.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := (recoveredBlock39Value0) ecuWriteVarsSelection: (recoveredBlock39Value1).
    recoveredBlock39Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) updateMapping.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203299f0; bytecode file offset 0xc262d8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
widgetEditButton: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) configFileName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForConfigFilePath: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfiguration.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) configFileName: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) updateFileNameWidget.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEHooksStartButton.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) isValidEHooksConfiguration.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2032d3b0; bytecode file offset 0xc29c84"
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

"ASDBase.ic method 0x20335b0c; bytecode file offset 0xc323d8"
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
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMappingTableInput.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoveMappingPossible.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetMappingTableOutput.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasFocus.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRemoveMappingPossible.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2033eae4; bytecode file offset 0xc3b3c8"
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
            recoveredStack2 := [:block280edc30Arg1 :block280edc30Arg2 | 
    | block280edc30Value0 block280edc30Value1 block280edc30Value2 block280edc30Value3 block280edc30Value4 |
    block280edc30Value0 := block280edc30Arg1.
    block280edc30Value1 := (block280edc30Value0) label.
    block280edc30Value2 := block280edc30Arg2.
    block280edc30Value3 := (block280edc30Value2) label.
    block280edc30Value4 := (block280edc30Value1) < (block280edc30Value3).
    block280edc30Value4
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

"ASDBase.ic method 0x20344f30; bytecode file offset 0xc41818"
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
            recoveredStack2 := [:block280ee0f8Arg1 | 
    | block280ee0f8Stack0 block280ee0f8Stack1 block280ee0f8Stack2 block280ee0f8Stack3 block280ee0f8PC block280ee0f8Step block280ee0f8Done block280ee0f8Result |
    block280ee0f8Stack0 := self.
    block280ee0f8PC := 4.
    block280ee0f8Done := false.
    [block280ee0f8Done not] whileTrue: [
        block280ee0f8Step := block280ee0f8PC.
        block280ee0f8Step = 4 ifTrue: [
            block280ee0f8Stack1 := false.
            block280ee0f8PC := 5.
        ].
        block280ee0f8Step = 5 ifTrue: [
            block280ee0f8Stack2 := block280ee0f8Arg1.
            block280ee0f8PC := 6.
        ].
        block280ee0f8Step = 6 ifTrue: [
            (block280ee0f8Stack2 == nil) ifTrue: [block280ee0f8PC := 14] ifFalse: [block280ee0f8PC := 10].
        ].
        block280ee0f8Step = 10 ifTrue: [
            block280ee0f8PC := 11.
        ].
        block280ee0f8Step = 11 ifTrue: [
            block280ee0f8Stack1 := block280ee0f8Arg1.
            block280ee0f8PC := 12.
        ].
        block280ee0f8Step = 12 ifTrue: [
            block280ee0f8Stack1 := (block280ee0f8Stack1) name.
            block280ee0f8PC := 13.
        ].
        block280ee0f8Step = 13 ifTrue: [
            block280ee0f8Stack1 := (block280ee0f8Stack1) notNil.
            block280ee0f8PC := 14.
        ].
        block280ee0f8Step = 14 ifTrue: [
            block280ee0f8Result := block280ee0f8Stack1.
            block280ee0f8Done := true.
        ].
    ].
    block280ee0f8Result
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
            recoveredStack2 := [:block280ee11cArg1 :block280ee11cArg2 | 
    | block280ee11cValue0 block280ee11cValue1 block280ee11cValue2 block280ee11cValue3 block280ee11cValue4 |
    block280ee11cValue0 := block280ee11cArg1.
    block280ee11cValue1 := (block280ee11cValue0) name.
    block280ee11cValue2 := block280ee11cArg2.
    block280ee11cValue3 := (block280ee11cValue2) name.
    block280ee11cValue4 := (block280ee11cValue1) < (block280ee11cValue3).
    block280ee11cValue4
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
            recoveredStack2 := [:block280ee140Arg1 | 
    | block280ee140Value0 block280ee140Value1 block280ee140Value2 block280ee140Value3 block280ee140Value4 block280ee140Value5 block280ee140Value6 |
    block280ee140Value0 := block280ee140Arg1.
    block280ee140Value1 := (block280ee140Value0) name.
    block280ee140Value2 := (block280ee140Value1) , (' / ').
    block280ee140Value3 := block280ee140Arg1.
    block280ee140Value4 := (block280ee140Value3) arrayIndex.
    block280ee140Value5 := (block280ee140Value4) printString.
    block280ee140Value6 := (block280ee140Value2) , (block280ee140Value5).
    block280ee140Value6
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

"ASDBase.ic method 0x2034e134; bytecode file offset 0xc4aa40"
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
            recoveredStack2 := SGOSProcessObject.
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
    recoveredBlock28Value1 := SGOSProcessObject.
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

"ASDBase.ic method 0x2035350c; bytecode file offset 0xc4fde8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateEhooksBypassSelectName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) widgetBypassFunc.
    recoveredBlock7Value1 := [:recoveredBlock7Block15Arg1 | 
    | recoveredBlock7Block15Local1 recoveredBlock7Block15Stack0 recoveredBlock7Block15Stack1 recoveredBlock7Block15Stack2 recoveredBlock7Block15Stack3 recoveredBlock7Block15Stack4 recoveredBlock7Block15Stack5 recoveredBlock7Block15PC recoveredBlock7Block15Step recoveredBlock7Block15Done recoveredBlock7Block15Result |
    recoveredBlock7Block15Stack0 := self.
    recoveredBlock7Block15PC := 22.
    recoveredBlock7Block15Done := false.
    [recoveredBlock7Block15Done not] whileTrue: [
        recoveredBlock7Block15Step := recoveredBlock7Block15PC.
        recoveredBlock7Block15Step = 22 ifTrue: [
            recoveredBlock7Block15Stack1 := recoveredBlock7Block15Arg1.
            recoveredBlock7Block15PC := 23.
        ].
        recoveredBlock7Block15Step = 23 ifTrue: [
            (recoveredBlock7Block15Stack1) setInputFocus.
            recoveredBlock7Block15PC := 25.
        ].
        recoveredBlock7Block15Step = 25 ifTrue: [
            recoveredBlock7Block15Stack1 := recoveredBlock7Block15Arg1.
            recoveredBlock7Block15PC := 26.
        ].
        recoveredBlock7Block15Step = 26 ifTrue: [
            (recoveredBlock7Block15Stack1) expandAll.
            recoveredBlock7Block15PC := 28.
        ].
        recoveredBlock7Block15Step = 28 ifTrue: [
            recoveredBlock7Block15Stack1 := recoveredBlock7Block15Arg1.
            recoveredBlock7Block15PC := 29.
        ].
        recoveredBlock7Block15Step = 29 ifTrue: [
            recoveredBlock7Block15Stack1 := (recoveredBlock7Block15Stack1) selectedItems.
            recoveredBlock7Block15PC := 30.
        ].
        recoveredBlock7Block15Step = 30 ifTrue: [
            recoveredBlock7Block15Local1 := recoveredBlock7Block15Stack1.
            recoveredBlock7Block15PC := 31.
        ].
        recoveredBlock7Block15Step = 31 ifTrue: [
            recoveredBlock7Block15Stack1 := recoveredBlock7Block15Arg1.
            recoveredBlock7Block15PC := 32.
        ].
        recoveredBlock7Block15Step = 32 ifTrue: [
            recoveredBlock7Block15Stack2 := Array.
            recoveredBlock7Block15PC := 34.
        ].
        recoveredBlock7Block15Step = 34 ifTrue: [
            recoveredBlock7Block15Stack3 := 0.
            recoveredBlock7Block15PC := 36.
        ].
        recoveredBlock7Block15Step = 36 ifTrue: [
            recoveredBlock7Block15Stack2 := (recoveredBlock7Block15Stack2) new: (recoveredBlock7Block15Stack3).
            recoveredBlock7Block15PC := 38.
        ].
        recoveredBlock7Block15Step = 38 ifTrue: [
            (recoveredBlock7Block15Stack1) selectedItems: (recoveredBlock7Block15Stack2).
            recoveredBlock7Block15PC := 40.
        ].
        recoveredBlock7Block15Step = 40 ifTrue: [
            recoveredBlock7Block15Stack1 := recoveredBlock7Block15Arg1.
            recoveredBlock7Block15PC := 41.
        ].
        recoveredBlock7Block15Step = 41 ifTrue: [
            recoveredBlock7Block15Stack2 := recoveredArg1.
            recoveredBlock7Block15PC := 44.
        ].
        recoveredBlock7Block15Step = 44 ifTrue: [
            recoveredBlock7Block15Stack3 := 'funcNodeName'.
            recoveredBlock7Block15PC := 46.
        ].
        recoveredBlock7Block15Step = 46 ifTrue: [
            recoveredBlock7Block15Stack4 := true.
            recoveredBlock7Block15PC := 47.
        ].
        recoveredBlock7Block15Step = 47 ifTrue: [
            recoveredBlock7Block15Stack1 := (recoveredBlock7Block15Stack1) selectItem: (recoveredBlock7Block15Stack2) equalMethod: (recoveredBlock7Block15Stack3) notify: (recoveredBlock7Block15Stack4).
            recoveredBlock7Block15PC := 50.
        ].
        recoveredBlock7Block15Step = 50 ifTrue: [
            (recoveredBlock7Block15Stack1) ifTrue: [recoveredBlock7Block15PC := 58] ifFalse: [recoveredBlock7Block15PC := 54].
        ].
        recoveredBlock7Block15Step = 54 ifTrue: [
            recoveredBlock7Block15Stack1 := recoveredBlock7Block15Arg1.
            recoveredBlock7Block15PC := 55.
        ].
        recoveredBlock7Block15Step = 55 ifTrue: [
            recoveredBlock7Block15Stack2 := recoveredBlock7Block15Local1.
            recoveredBlock7Block15PC := 56.
        ].
        recoveredBlock7Block15Step = 56 ifTrue: [
            (recoveredBlock7Block15Stack1) selectedItems: (recoveredBlock7Block15Stack2).
            recoveredBlock7Block15PC := 58.
        ].
        recoveredBlock7Block15Step = 58 ifTrue: [
            ^recoveredBlock7Block15Stack0
        ].
    ].
    recoveredBlock7Block15Result
].
    recoveredBlock7Value2 := (recoveredBlock7Value0) ifNotNil: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2035c678; bytecode file offset 0xc58f5c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuEHooksAutoMappingSubmenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'menuEHooksAutoMappingOverwrite'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := 'overwrite existing mappings'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9) icon: (recoveredStack10).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'menuEHooksAutoMappingKeep'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := 'keep existing mappings'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9) icon: (recoveredStack10).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203672a0; bytecode file offset 0xc63b74"
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
            recoveredStack3 := [:block280f0d44Arg1 | 
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

"ASDBase.ic method 0x20372c50; bytecode file offset 0xc6f534"
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

"ASDBase.ic method 0x20373da0; bytecode file offset 0xc7069c"
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

"ASDBase.ic method 0x2037aef4; bytecode file offset 0xc777f8"
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

"ASDBase.ic method 0x2037c28c; bytecode file offset 0xc78b90"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createEHooksWriteVariablesFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) count.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) getWriteAt: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := EtasEHooksOleObjectWrapperVariableWrite.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) createObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) automationObject: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) createEHooksVariableFrom: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 26] ifFalse: [recoveredLocal2 := nil. recoveredPC := 67]] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2037c2b8; bytecode file offset 0xc78b90"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createEHooksReadVariablesFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) count.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) getReadAt: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := EtasEHooksOleObjectWrapperVariableRead.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) createObject.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) automationObject: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) createEHooksVariableFrom: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 26] ifFalse: [recoveredLocal2 := nil. recoveredPC := 67]] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20383e94; bytecode file offset 0xc80778"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
resizeTabStrip: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
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
    recoveredBlock7Value3 := (recoveredBlock7Value1) do: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) deferRedraw: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20389244; bytecode file offset 0xc85b1c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksDispatch
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksAppWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) selectedBypassFuncs.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 recoveredBlock11Block19Value2 |
    recoveredBlock11Block19Value0 := recoveredBlock11Block19Arg1.
    recoveredBlock11Block19Value1 := [:recoveredBlock11Block19Block27Arg1 | 
    | recoveredBlock11Block19Block27Value0 recoveredBlock11Block19Block27Value1 recoveredBlock11Block19Block27Value2 recoveredBlock11Block19Block27Value3 recoveredBlock11Block19Block27Value4 |
    recoveredBlock11Block19Block27Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block19Block27Value1 := recoveredBlock11Block19Block27Arg1.
    recoveredBlock11Block19Block27Value2 := (recoveredBlock11Block19Block27Value0) newEHooksTriggerConfigurationFrom: (recoveredBlock11Block19Block27Value1) client: (self).
    recoveredBlock11Block19Block27Value3 := [:recoveredBlock11Block19Block27Block43Arg1 | 
    | recoveredBlock11Block19Block27Block43Value0 recoveredBlock11Block19Block27Block43Value1 recoveredBlock11Block19Block27Block43Value2 recoveredBlock11Block19Block27Block43Value3 |
    recoveredBlock11Block19Block27Block43Value0 := recoveredBlock11Block19Block27Block43Arg1.
    (self) setDispatchPoint: (recoveredBlock11Block19Block27Block43Value0).
    recoveredBlock11Block19Block27Block43Value1 := recoveredBlock11Block19Block27Arg1.
    recoveredBlock11Block19Block27Block43Value2 := recoveredBlock11Block19Block27Block43Arg1.
    recoveredBlock11Block19Block27Block43Value3 := (recoveredBlock11Block19Block27Block43Value1) changeECUTriggerConfiguration: (recoveredBlock11Block19Block27Block43Value2).
    recoveredBlock11Block19Block27Block43Value3
].
    recoveredBlock11Block19Block27Value4 := (recoveredBlock11Block19Block27Value2) ifNotNil: (recoveredBlock11Block19Block27Value3).
    recoveredBlock11Block19Block27Value4
].
    recoveredBlock11Block19Value2 := (recoveredBlock11Block19Value0) do: (recoveredBlock11Block19Value1).
    recoveredBlock11Block19Value2
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) ifNotNil: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a0624; bytecode file offset 0xc9cf00"
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
            recoveredStack0 := (recoveredStack0) allPossibleProcessInstVars.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredLocal1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) getValidInstVarProcessesBasedOn: (recoveredBlock30Value1).
    recoveredBlock30Value3 := [:recoveredBlock30Block42Arg1 | 
    | recoveredBlock30Block42Value0 recoveredBlock30Block42Value1 recoveredBlock30Block42Value2 recoveredBlock30Block42Value3 |
    recoveredBlock30Block42Value0 := recoveredBlock30Block42Arg1.
    recoveredBlock30Block42Value1 := (recoveredBlock30Block42Value0) last.
    recoveredBlock30Block42Value2 := [:recoveredBlock30Block42Block51Arg1 | 
    | recoveredBlock30Block42Block51Value0 recoveredBlock30Block42Block51Value1 recoveredBlock30Block42Block51Value2 recoveredBlock30Block42Block51Value3 |
    recoveredBlock30Block42Block51Value0 := assignedProcesses.
    recoveredBlock30Block42Block51Value1 := recoveredBlock30Block42Block51Arg1.
    recoveredBlock30Block42Block51Value2 := (recoveredBlock30Block42Block51Value1) aliasName.
    recoveredBlock30Block42Block51Value3 := (recoveredBlock30Block42Block51Value0) add: (recoveredBlock30Block42Block51Value2).
    recoveredBlock30Block42Block51Value3
].
    recoveredBlock30Block42Value3 := (recoveredBlock30Block42Value1) ifNotNil: (recoveredBlock30Block42Value2).
    recoveredBlock30Block42Value3
].
    recoveredBlock30Value4 := (recoveredBlock30Value2) do: (recoveredBlock30Value3).
    recoveredBlock30Value4
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c29a8; bytecode file offset 0xcbf2a0"
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
            recoveredStack1 := [:block280f67b0Arg1 :block280f67b0Arg2 | 
    | block280f67b0Value0 block280f67b0Value1 block280f67b0Value2 |
    block280f67b0Value0 := block280f67b0Arg1.
    block280f67b0Value1 := block280f67b0Arg2.
    block280f67b0Value2 := (block280f67b0Value0) > (block280f67b0Value1).
    block280f67b0Value2
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
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) updateWidgetSearchResults.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c3410; bytecode file offset 0xcbfcec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
deleteBypassFuncsUICopies: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) getUserInterface.
    recoveredValue1 := (recoveredValue0) uiController.
    recoveredValue2 := (recoveredValue1) uiElementMappings.
    recoveredValue3 := [
    ^self
].
    recoveredValue4 := (recoveredValue2) at: ('Process') ifAbsent: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 35.
        ].
        recoveredBlock25Step = 35 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block35Arg1 | 
    | recoveredBlock25Block35Value0 recoveredBlock25Block35Value1 recoveredBlock25Block35Value2 recoveredBlock25Block35Value3 recoveredBlock25Block35Value4 |
    recoveredBlock25Block35Value0 := recoveredBlock25Block35Arg1.
    recoveredBlock25Block35Value1 := (recoveredBlock25Block35Value0) funcNodeName.
    recoveredBlock25Block35Value2 := recoveredBlock25Arg1.
    recoveredBlock25Block35Value3 := (recoveredBlock25Block35Value2) funcNodeName.
    recoveredBlock25Block35Value4 := (recoveredBlock25Block35Value1) = (recoveredBlock25Block35Value3).
    recoveredBlock25Block35Value4
].
            recoveredBlock25PC := 52.
        ].
        recoveredBlock25Step = 52 ifTrue: [
            recoveredBlock25Stack3 := [].
            recoveredBlock25PC := 54.
        ].
        recoveredBlock25Step = 54 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) detect: (recoveredBlock25Stack2) ifNone: (recoveredBlock25Stack3).
            recoveredBlock25PC := 56.
        ].
        recoveredBlock25Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 60.
        ].
        recoveredBlock25Step = 60 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 63.
        ].
        recoveredBlock25Step = 63 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 77] ifFalse: [recoveredBlock25PC := 66].
        ].
        recoveredBlock25Step = 66 ifTrue: [
            recoveredBlock25PC := 67.
        ].
        recoveredBlock25Step = 67 ifTrue: [
            recoveredBlock25Stack1 := recoveredLocal2.
            recoveredBlock25PC := 70.
        ].
        recoveredBlock25Step = 70 ifTrue: [
            recoveredBlock25Stack2 := recoveredLocal1.
            recoveredBlock25PC := 73.
        ].
        recoveredBlock25Step = 73 ifTrue: [
            recoveredBlock25Stack3 := [].
            recoveredBlock25PC := 75.
        ].
        recoveredBlock25Step = 75 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) remove: (recoveredBlock25Stack2) ifAbsent: (recoveredBlock25Stack3).
            recoveredBlock25PC := 77.
        ].
        recoveredBlock25Step = 77 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203d5f54; bytecode file offset 0xcd2868"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksECUWriteSelection: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksAppWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) newVariableWriteCollection.
    recoveredBlock11Value2 := [:recoveredBlock11Block22Arg1 | 
    | recoveredBlock11Block22Value0 recoveredBlock11Block22Value1 recoveredBlock11Block22Value2 recoveredBlock11Block22Value3 recoveredBlock11Block22Value4 recoveredBlock11Block22Value5 |
    recoveredBlock11Block22Value0 := recoveredArg1.
    recoveredBlock11Block22Value1 := [:recoveredBlock11Block22Block31Arg1 | 
    | recoveredBlock11Block22Block31Value0 recoveredBlock11Block22Block31Value1 recoveredBlock11Block22Block31Value2 recoveredBlock11Block22Block31Value3 |
    recoveredBlock11Block22Block31Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block22Block31Value1 := (recoveredBlock11Block22Block31Value0) newVariableWrite.
    recoveredBlock11Block22Block31Value2 := [:recoveredBlock11Block22Block31Block43Arg1 | 
    | recoveredBlock11Block22Block31Block43Value0 recoveredBlock11Block22Block31Block43Value1 recoveredBlock11Block22Block31Block43Value2 recoveredBlock11Block22Block31Block43Value3 recoveredBlock11Block22Block31Block43Value4 |
    recoveredBlock11Block22Block31Block43Value0 := recoveredBlock11Block22Block31Block43Arg1.
    recoveredBlock11Block22Block31Block43Value1 := recoveredBlock11Block22Block31Arg1.
    (self) updateEHooksWriteHook: (recoveredBlock11Block22Block31Block43Value0) with: (recoveredBlock11Block22Block31Block43Value1).
    recoveredBlock11Block22Block31Block43Value2 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Block31Block43Value3 := recoveredBlock11Block22Block31Block43Arg1.
    recoveredBlock11Block22Block31Block43Value4 := (recoveredBlock11Block22Block31Block43Value2) add: (recoveredBlock11Block22Block31Block43Value3).
    recoveredBlock11Block22Block31Block43Value4
].
    recoveredBlock11Block22Block31Value3 := (recoveredBlock11Block22Block31Value1) ifNotNil: (recoveredBlock11Block22Block31Value2).
    recoveredBlock11Block22Block31Value3
].
    (recoveredBlock11Block22Value0) do: (recoveredBlock11Block22Value1).
    recoveredBlock11Block22Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block22Value3 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Value4 := (recoveredBlock11Block22Value2) ecuWriteSelection: (recoveredBlock11Block22Value3).
    recoveredBlock11Block22Value5 := (self) createEHooksWriteVariablesFrom: (recoveredBlock11Block22Value4).
    ^recoveredBlock11Block22Value5
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) ifNotNil: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d5f88; bytecode file offset 0xcd2868"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksECUReadSelection: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksAppWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) newVariableReadCollection.
    recoveredBlock11Value2 := [:recoveredBlock11Block22Arg1 | 
    | recoveredBlock11Block22Value0 recoveredBlock11Block22Value1 recoveredBlock11Block22Value2 recoveredBlock11Block22Value3 recoveredBlock11Block22Value4 recoveredBlock11Block22Value5 |
    recoveredBlock11Block22Value0 := recoveredArg1.
    recoveredBlock11Block22Value1 := [:recoveredBlock11Block22Block31Arg1 | 
    | recoveredBlock11Block22Block31Value0 recoveredBlock11Block22Block31Value1 recoveredBlock11Block22Block31Value2 recoveredBlock11Block22Block31Value3 |
    recoveredBlock11Block22Block31Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block22Block31Value1 := (recoveredBlock11Block22Block31Value0) newVariableRead.
    recoveredBlock11Block22Block31Value2 := [:recoveredBlock11Block22Block31Block43Arg1 | 
    | recoveredBlock11Block22Block31Block43Value0 recoveredBlock11Block22Block31Block43Value1 recoveredBlock11Block22Block31Block43Value2 recoveredBlock11Block22Block31Block43Value3 recoveredBlock11Block22Block31Block43Value4 |
    recoveredBlock11Block22Block31Block43Value0 := recoveredBlock11Block22Block31Block43Arg1.
    recoveredBlock11Block22Block31Block43Value1 := recoveredBlock11Block22Block31Arg1.
    (self) updateEHooksVariable: (recoveredBlock11Block22Block31Block43Value0) with: (recoveredBlock11Block22Block31Block43Value1).
    recoveredBlock11Block22Block31Block43Value2 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Block31Block43Value3 := recoveredBlock11Block22Block31Block43Arg1.
    recoveredBlock11Block22Block31Block43Value4 := (recoveredBlock11Block22Block31Block43Value2) add: (recoveredBlock11Block22Block31Block43Value3).
    recoveredBlock11Block22Block31Block43Value4
].
    recoveredBlock11Block22Block31Value3 := (recoveredBlock11Block22Block31Value1) ifNotNil: (recoveredBlock11Block22Block31Value2).
    recoveredBlock11Block22Block31Value3
].
    (recoveredBlock11Block22Value0) do: (recoveredBlock11Block22Value1).
    recoveredBlock11Block22Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block22Value3 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Value4 := (recoveredBlock11Block22Value2) ecuReadSelection: (recoveredBlock11Block22Value3).
    recoveredBlock11Block22Value5 := (self) createEHooksReadVariablesFrom: (recoveredBlock11Block22Value4).
    ^recoveredBlock11Block22Value5
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) ifNotNil: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f548c; bytecode file offset 0xcf1d74"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
getAllUndefProcesses
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentityDictionary.
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
    | recoveredBlock35Block47Stack0 recoveredBlock35Block47Stack1 recoveredBlock35Block47Stack2 recoveredBlock35Block47Stack3 recoveredBlock35Block47Stack4 recoveredBlock35Block47Stack5 recoveredBlock35Block47PC recoveredBlock35Block47Step recoveredBlock35Block47Done recoveredBlock35Block47Result |
    recoveredBlock35Block47Stack0 := self.
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
            recoveredBlock35Block47Stack4 := self.
            recoveredBlock35Block47PC := 60.
        ].
        recoveredBlock35Block47Step = 60 ifTrue: [
            recoveredBlock35Block47Stack4 := (recoveredBlock35Block47Stack4) project.
            recoveredBlock35Block47PC := 62.
        ].
        recoveredBlock35Block47Step = 62 ifTrue: [
            recoveredBlock35Block47Stack4 := (recoveredBlock35Block47Stack4) allValidProcessInstVars.
            recoveredBlock35Block47PC := 64.
        ].
        recoveredBlock35Block47Step = 64 ifTrue: [
            recoveredBlock35Block47Stack2 := (recoveredBlock35Block47Stack2) getValidInstVarProcessFor: (recoveredBlock35Block47Stack3) basedOn: (recoveredBlock35Block47Stack4).
            recoveredBlock35Block47PC := 66.
        ].
        recoveredBlock35Block47Step = 66 ifTrue: [
            recoveredBlock35Block47Stack2 := (recoveredBlock35Block47Stack2) last.
            recoveredBlock35Block47PC := 68.
        ].
        recoveredBlock35Block47Step = 68 ifTrue: [
            (recoveredBlock35Block47Stack2 ~~ nil) ifTrue: [recoveredBlock35Block47PC := 82] ifFalse: [recoveredBlock35Block47PC := 72].
        ].
        recoveredBlock35Block47Step = 72 ifTrue: [
            recoveredBlock35Block47PC := 73.
        ].
        recoveredBlock35Block47Step = 73 ifTrue: [
            recoveredBlock35Block47Stack1 := recoveredLocal1.
            recoveredBlock35Block47PC := 76.
        ].
        recoveredBlock35Block47Step = 76 ifTrue: [
            recoveredBlock35Block47Stack2 := recoveredBlock35Block47Arg2.
            recoveredBlock35Block47PC := 77.
        ].
        recoveredBlock35Block47Step = 77 ifTrue: [
            recoveredBlock35Block47Stack3 := recoveredBlock35Arg1.
            recoveredBlock35Block47PC := 80.
        ].
        recoveredBlock35Block47Step = 80 ifTrue: [
            recoveredBlock35Block47Stack1 := (recoveredBlock35Block47Stack1) at: (recoveredBlock35Block47Stack2) put: (recoveredBlock35Block47Stack3).
            recoveredBlock35Block47PC := 82.
        ].
        recoveredBlock35Block47Step = 82 ifTrue: [
            recoveredBlock35Block47Result := recoveredBlock35Block47Stack1.
            recoveredBlock35Block47Done := true.
        ].
    ].
    recoveredBlock35Block47Result
].
    recoveredBlock35Value3 := (recoveredBlock35Value1) doWithIndex: (recoveredBlock35Value2).
    recoveredBlock35Value3
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fa288; bytecode file offset 0xcf6b8c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
initializeEHooksConfigurationFile
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksConfigurationFile.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := CfsStat.
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
            recoveredStack1 := (recoveredStack1) configFileName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'EHOOKS configuration file not found. \Do you want to create a new configuration file?'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) yesNo.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) configFileName.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := CfsDirectoryDescriptor.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'configuration file directory'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) mkdirRecursive: (recoveredStack1) errorLabel: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) exists: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'Cannot create directory "'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := '". \Please change configuration file'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrs.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ff180; bytecode file offset 0xcfba74"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
subMenuEHooks
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'menuEHooksGetLabels'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := 'Get ECU Labels'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock22Value0 |
    recoveredBlock22Value0 := (self) isGetLabelsPossible.
    recoveredBlock22Value0
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9) icon: (recoveredStack10).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'menuEHooksGetLabelsBackupCopy'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 'Get ECU Backup Copy Labels'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock50Value0 |
    recoveredBlock50Value0 := (self) isGetBackupLabelsPossible.
    recoveredBlock50Value0
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack10 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9) icon: (recoveredStack10).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'menuEHooksAutoMappingSubmenu'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := 'Get ECU Labels and Map'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := [
    | recoveredBlock78Value0 |
    recoveredBlock78Value0 := (self) isGetLabelsPossible.
    recoveredBlock78Value0
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) addSubMenuWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20403dc0; bytecode file offset 0xd006ac"
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
            (recoveredStack0) schedulingHasChanged.
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

"ASDBase.ic method 0x20412674; bytecode file offset 0xd0ef6c"
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

"ASDBase.ic method 0x20420a70; bytecode file offset 0xd1d340"
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

"ASDBase.ic method 0x204231fc; bytecode file offset 0xd1fae8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
autoMappingECUVarNamedSelection: recoveredArg1 ecuLabels: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksAppWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := OrderedCollection.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) new.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredLocal1 := recoveredBlock11Stack1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack1 := recoveredArg2.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11Stack2 := [:recoveredBlock11Block28Arg1 | 
    | recoveredBlock11Block28Stack0 recoveredBlock11Block28Stack1 recoveredBlock11Block28Stack2 recoveredBlock11Block28Stack3 recoveredBlock11Block28Stack4 recoveredBlock11Block28Stack5 recoveredBlock11Block28PC recoveredBlock11Block28Step recoveredBlock11Block28Done recoveredBlock11Block28Result |
    recoveredBlock11Block28Stack0 := self.
    recoveredBlock11Block28PC := 34.
    recoveredBlock11Block28Done := false.
    [recoveredBlock11Block28Done not] whileTrue: [
        recoveredBlock11Block28Step := recoveredBlock11Block28PC.
        recoveredBlock11Block28Step = 34 ifTrue: [
            recoveredBlock11Block28Stack1 := nil.
            recoveredBlock11Block28PC := 35.
        ].
        recoveredBlock11Block28Step = 35 ifTrue: [
            recoveredBlock11Block28Stack2 := recoveredBlock11Arg1.
            recoveredBlock11Block28PC := 38.
        ].
        recoveredBlock11Block28Step = 38 ifTrue: [
            recoveredBlock11Block28Stack3 := recoveredBlock11Block28Arg1.
            recoveredBlock11Block28PC := 39.
        ].
        recoveredBlock11Block28Step = 39 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) isHookableMeasurement: (recoveredBlock11Block28Stack3).
            recoveredBlock11Block28PC := 41.
        ].
        recoveredBlock11Block28Step = 41 ifTrue: [
            (recoveredBlock11Block28Stack2) ifTrue: [recoveredBlock11Block28PC := 44] ifFalse: [recoveredBlock11Block28PC := 68].
        ].
        recoveredBlock11Block28Step = 44 ifTrue: [
            recoveredBlock11Block28PC := 45.
        ].
        recoveredBlock11Block28Step = 45 ifTrue: [
            recoveredBlock11Block28Stack1 := nil.
            recoveredBlock11Block28PC := 46.
        ].
        recoveredBlock11Block28Step = 46 ifTrue: [
            recoveredBlock11Block28Stack2 := self.
            recoveredBlock11Block28PC := 47.
        ].
        recoveredBlock11Block28Step = 47 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) eHooksConfig.
            recoveredBlock11Block28PC := 49.
        ].
        recoveredBlock11Block28Step = 49 ifTrue: [
            recoveredBlock11Block28Stack3 := recoveredBlock11Block28Arg1.
            recoveredBlock11Block28PC := 50.
        ].
        recoveredBlock11Block28Step = 50 ifTrue: [
            recoveredBlock11Block28Stack4 := recoveredArg1.
            recoveredBlock11Block28PC := 53.
        ].
        recoveredBlock11Block28Step = 53 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) findEcuVarNamed: (recoveredBlock11Block28Stack3) in: (recoveredBlock11Block28Stack4).
            recoveredBlock11Block28PC := 55.
        ].
        recoveredBlock11Block28Step = 55 ifTrue: [
            (recoveredBlock11Block28Stack2 ~~ nil) ifTrue: [recoveredBlock11Block28PC := 68] ifFalse: [recoveredBlock11Block28PC := 58].
        ].
        recoveredBlock11Block28Step = 58 ifTrue: [
            recoveredBlock11Block28PC := 59.
        ].
        recoveredBlock11Block28Step = 59 ifTrue: [
            recoveredBlock11Block28Stack1 := recoveredLocal1.
            recoveredBlock11Block28PC := 62.
        ].
        recoveredBlock11Block28Step = 62 ifTrue: [
            recoveredBlock11Block28Stack2 := self.
            recoveredBlock11Block28PC := 63.
        ].
        recoveredBlock11Block28Step = 63 ifTrue: [
            recoveredBlock11Block28Stack3 := recoveredBlock11Block28Arg1.
            recoveredBlock11Block28PC := 64.
        ].
        recoveredBlock11Block28Step = 64 ifTrue: [
            recoveredBlock11Block28Stack2 := (recoveredBlock11Block28Stack2) createDefaultEHooksVariable: (recoveredBlock11Block28Stack3).
            recoveredBlock11Block28PC := 66.
        ].
        recoveredBlock11Block28Step = 66 ifTrue: [
            recoveredBlock11Block28Stack1 := (recoveredBlock11Block28Stack1) add: (recoveredBlock11Block28Stack2).
            recoveredBlock11Block28PC := 68.
        ].
        recoveredBlock11Block28Step = 68 ifTrue: [
            recoveredBlock11Block28Result := recoveredBlock11Block28Stack1.
            recoveredBlock11Block28Done := true.
        ].
    ].
    recoveredBlock11Block28Result
].
            recoveredBlock11PC := 69.
        ].
        recoveredBlock11Step = 69 ifTrue: [
            (recoveredBlock11Stack1) do: (recoveredBlock11Stack2).
            recoveredBlock11PC := 71.
        ].
        recoveredBlock11Step = 71 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 72.
        ].
        recoveredBlock11Step = 72 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 75.
        ].
        recoveredBlock11Step = 75 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) isEmpty.
            recoveredBlock11PC := 77.
        ].
        recoveredBlock11Step = 77 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 93] ifFalse: [recoveredBlock11PC := 80].
        ].
        recoveredBlock11Step = 80 ifTrue: [
            recoveredBlock11PC := 81.
        ].
        recoveredBlock11Step = 81 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 84.
        ].
        recoveredBlock11Step = 84 ifTrue: [
            recoveredBlock11Stack2 := recoveredArg1.
            recoveredBlock11PC := 87.
        ].
        recoveredBlock11Step = 87 ifTrue: [
            (recoveredBlock11Stack1) addAll: (recoveredBlock11Stack2).
            recoveredBlock11PC := 89.
        ].
        recoveredBlock11Step = 89 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal1.
            recoveredBlock11PC := 92.
        ].
        recoveredBlock11Step = 92 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 93 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042b808; bytecode file offset 0xd280ec"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectedBypassFuncs: recoveredArg1
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
            recoveredStack1 := [:block280fd2fcArg1 | 
    | block280fd2fcValue0 block280fd2fcValue1 block280fd2fcValue2 |
    block280fd2fcValue0 := block280fd2fcArg1.
    block280fd2fcValue1 := (block280fd2fcValue0) isProcess.
    block280fd2fcValue2 := (block280fd2fcValue1) not.
    block280fd2fcValue2
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) asSet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Local3 recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) widgetBypassFunc.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 36.
        ].
        recoveredBlock27Step = 36 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) indexOfItem: (recoveredBlock27Stack1).
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Local3 := recoveredBlock27Stack0.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack0 := nil.
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local3.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack2 := 0.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) ~= (recoveredBlock27Stack2).
            recoveredBlock27PC := 44.
        ].
        recoveredBlock27Step = 44 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 48] ifFalse: [recoveredBlock27PC := 95].
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack0 := nil.
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredBlock27PC := 73.
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27Stack0 := self.
            recoveredBlock27PC := 55.
        ].
        recoveredBlock27Step = 55 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) widgetBypassFunc.
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) allVisibleItems.
            recoveredBlock27PC := 58.
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local3.
            recoveredBlock27PC := 59.
        ].
        recoveredBlock27Step = 59 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) at: (recoveredBlock27Stack1).
            recoveredBlock27PC := 61.
        ].
        recoveredBlock27Step = 61 ifTrue: [
            recoveredBlock27Local2 := recoveredBlock27Stack0.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local2.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) isProcess.
            recoveredBlock27PC := 64.
        ].
        recoveredBlock27Step = 64 ifTrue: [
            (recoveredBlock27Stack0) ifTrue: [recoveredBlock27PC := 70] ifFalse: [recoveredBlock27PC := 68].
        ].
        recoveredBlock27Step = 68 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local2.
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            recoveredBlock27Local1 := recoveredBlock27Stack0.
            recoveredBlock27PC := 70.
        ].
        recoveredBlock27Step = 70 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local3.
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) + (-1).
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            recoveredBlock27Local3 := recoveredBlock27Stack0.
            recoveredBlock27PC := 73.
        ].
        recoveredBlock27Step = 73 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local3.
            recoveredBlock27PC := 74.
        ].
        recoveredBlock27Step = 74 ifTrue: [
            recoveredBlock27Stack1 := 0.
            recoveredBlock27PC := 76.
        ].
        recoveredBlock27Step = 76 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) > (recoveredBlock27Stack1).
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            (recoveredBlock27Stack0) ifTrue: [recoveredBlock27PC := 80] ifFalse: [recoveredBlock27PC := 83].
        ].
        recoveredBlock27Step = 80 ifTrue: [
            recoveredBlock27Stack0 := recoveredBlock27Local1.
            recoveredBlock27PC := 81.
        ].
        recoveredBlock27Step = 81 ifTrue: [
            (recoveredBlock27Stack0 == nil) ifTrue: [recoveredBlock27PC := 54] ifFalse: [recoveredBlock27PC := 83].
        ].
        recoveredBlock27Step = 83 ifTrue: [
            recoveredBlock27Stack0 := nil.
            recoveredBlock27PC := 84.
        ].
        recoveredBlock27Step = 84 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local2.
            recoveredBlock27PC := 85.
        ].
        recoveredBlock27Step = 85 ifTrue: [
            (recoveredBlock27Stack1 == nil) ifTrue: [recoveredBlock27PC := 95] ifFalse: [recoveredBlock27PC := 88].
        ].
        recoveredBlock27Step = 88 ifTrue: [
            recoveredBlock27PC := 89.
        ].
        recoveredBlock27Step = 89 ifTrue: [
            recoveredBlock27Stack0 := recoveredLocal1.
            recoveredBlock27PC := 92.
        ].
        recoveredBlock27Step = 92 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Local2.
            recoveredBlock27PC := 93.
        ].
        recoveredBlock27Step = 93 ifTrue: [
            recoveredBlock27Stack0 := (recoveredBlock27Stack0) add: (recoveredBlock27Stack1).
            recoveredBlock27PC := 95.
        ].
        recoveredBlock27Step = 95 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack0.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042e77c; bytecode file offset 0xd2b06c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuRemoveUndefAssignments
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
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Local1 recoveredBlock27Local2 recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 recoveredBlock27Value4 recoveredBlock27Value5 recoveredBlock27Value6 recoveredBlock27Value7 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := (recoveredBlock27Value0) instVarProcessReferences.
    recoveredBlock27Value2 := (recoveredBlock27Value1) reverse.
    recoveredBlock27Local2 := recoveredBlock27Value2.
    recoveredBlock27Value3 := recoveredBlock27Local2.
    recoveredBlock27Value4 := (recoveredBlock27Value3) size.
    recoveredBlock27Local1 := recoveredBlock27Value4.
    recoveredBlock27Value5 := recoveredBlock27Local2.
    recoveredBlock27Value6 := [:recoveredBlock27Block54Arg1 :recoveredBlock27Block54Arg2 | 
    | recoveredBlock27Block54Stack0 recoveredBlock27Block54Stack1 recoveredBlock27Block54Stack2 recoveredBlock27Block54Stack3 recoveredBlock27Block54Stack4 recoveredBlock27Block54Stack5 recoveredBlock27Block54PC recoveredBlock27Block54Step recoveredBlock27Block54Done recoveredBlock27Block54Result |
    recoveredBlock27Block54Stack0 := self.
    recoveredBlock27Block54PC := 60.
    recoveredBlock27Block54Done := false.
    [recoveredBlock27Block54Done not] whileTrue: [
        recoveredBlock27Block54Step := recoveredBlock27Block54PC.
        recoveredBlock27Block54Step = 60 ifTrue: [
            recoveredBlock27Block54Stack1 := nil.
            recoveredBlock27Block54PC := 61.
        ].
        recoveredBlock27Block54Step = 61 ifTrue: [
            recoveredBlock27Block54Stack2 := recoveredBlock27Arg1.
            recoveredBlock27Block54PC := 64.
        ].
        recoveredBlock27Block54Step = 64 ifTrue: [
            recoveredBlock27Block54Stack3 := recoveredBlock27Block54Arg1.
            recoveredBlock27Block54PC := 65.
        ].
        recoveredBlock27Block54Step = 65 ifTrue: [
            recoveredBlock27Block54Stack4 := self.
            recoveredBlock27Block54PC := 66.
        ].
        recoveredBlock27Block54Step = 66 ifTrue: [
            recoveredBlock27Block54Stack4 := (recoveredBlock27Block54Stack4) project.
            recoveredBlock27Block54PC := 68.
        ].
        recoveredBlock27Block54Step = 68 ifTrue: [
            recoveredBlock27Block54Stack4 := (recoveredBlock27Block54Stack4) allValidProcessInstVars.
            recoveredBlock27Block54PC := 70.
        ].
        recoveredBlock27Block54Step = 70 ifTrue: [
            recoveredBlock27Block54Stack2 := (recoveredBlock27Block54Stack2) getValidInstVarProcessFor: (recoveredBlock27Block54Stack3) basedOn: (recoveredBlock27Block54Stack4).
            recoveredBlock27Block54PC := 72.
        ].
        recoveredBlock27Block54Step = 72 ifTrue: [
            recoveredBlock27Block54Stack2 := (recoveredBlock27Block54Stack2) last.
            recoveredBlock27Block54PC := 74.
        ].
        recoveredBlock27Block54Step = 74 ifTrue: [
            (recoveredBlock27Block54Stack2 ~~ nil) ifTrue: [recoveredBlock27Block54PC := 91] ifFalse: [recoveredBlock27Block54PC := 78].
        ].
        recoveredBlock27Block54Step = 78 ifTrue: [
            recoveredBlock27Block54PC := 79.
        ].
        recoveredBlock27Block54Step = 79 ifTrue: [
            recoveredBlock27Block54Stack1 := self.
            recoveredBlock27Block54PC := 80.
        ].
        recoveredBlock27Block54Step = 80 ifTrue: [
            recoveredBlock27Block54Stack2 := recoveredBlock27Local1.
            recoveredBlock27Block54PC := 83.
        ].
        recoveredBlock27Block54Step = 83 ifTrue: [
            recoveredBlock27Block54Stack2 := (recoveredBlock27Block54Stack2) + (1).
            recoveredBlock27Block54PC := 84.
        ].
        recoveredBlock27Block54Step = 84 ifTrue: [
            recoveredBlock27Block54Stack3 := recoveredBlock27Block54Arg2.
            recoveredBlock27Block54PC := 85.
        ].
        recoveredBlock27Block54Step = 85 ifTrue: [
            recoveredBlock27Block54Stack2 := (recoveredBlock27Block54Stack2) - (recoveredBlock27Block54Stack3).
            recoveredBlock27Block54PC := 86.
        ].
        recoveredBlock27Block54Step = 86 ifTrue: [
            recoveredBlock27Block54Stack3 := recoveredBlock27Arg1.
            recoveredBlock27Block54PC := 89.
        ].
        recoveredBlock27Block54Step = 89 ifTrue: [
            recoveredBlock27Block54Stack1 := (recoveredBlock27Block54Stack1) deassignProcessIndex: (recoveredBlock27Block54Stack2) fromTask: (recoveredBlock27Block54Stack3).
            recoveredBlock27Block54PC := 91.
        ].
        recoveredBlock27Block54Step = 91 ifTrue: [
            recoveredBlock27Block54Result := recoveredBlock27Block54Stack1.
            recoveredBlock27Block54Done := true.
        ].
    ].
    recoveredBlock27Block54Result
].
    recoveredBlock27Value7 := (recoveredBlock27Value5) doWithIndex: (recoveredBlock27Value6).
    recoveredBlock27Value7
].
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042efc8; bytecode file offset 0xd2b8b8"
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
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredLocal1.
    recoveredBlock30Value1 := [:recoveredBlock30Block39Arg1 | 
    | recoveredBlock30Block39Stack0 recoveredBlock30Block39Stack1 recoveredBlock30Block39Stack2 recoveredBlock30Block39Stack3 recoveredBlock30Block39Stack4 recoveredBlock30Block39PC recoveredBlock30Block39Step recoveredBlock30Block39Done recoveredBlock30Block39Result |
    recoveredBlock30Block39Stack0 := self.
    recoveredBlock30Block39PC := 46.
    recoveredBlock30Block39Done := false.
    [recoveredBlock30Block39Done not] whileTrue: [
        recoveredBlock30Block39Step := recoveredBlock30Block39PC.
        recoveredBlock30Block39Step = 46 ifTrue: [
            recoveredBlock30Block39Stack1 := nil.
            recoveredBlock30Block39PC := 47.
        ].
        recoveredBlock30Block39Step = 47 ifTrue: [
            recoveredBlock30Block39Stack2 := recoveredBlock30Block39Arg1.
            recoveredBlock30Block39PC := 48.
        ].
        recoveredBlock30Block39Step = 48 ifTrue: [
            recoveredBlock30Block39Stack2 := (recoveredBlock30Block39Stack2) period.
            recoveredBlock30Block39PC := 50.
        ].
        recoveredBlock30Block39Step = 50 ifTrue: [
            recoveredBlock30Block39Stack2 := (recoveredBlock30Block39Stack2) asString.
            recoveredBlock30Block39PC := 52.
        ].
        recoveredBlock30Block39Step = 52 ifTrue: [
            recoveredBlock30Block39Stack3 := recoveredBlock30Arg1.
            recoveredBlock30Block39PC := 55.
        ].
        recoveredBlock30Block39Step = 55 ifTrue: [
            recoveredBlock30Block39Stack2 := (recoveredBlock30Block39Stack2) equals: (recoveredBlock30Block39Stack3).
            recoveredBlock30Block39PC := 57.
        ].
        recoveredBlock30Block39Step = 57 ifTrue: [
            (recoveredBlock30Block39Stack2) ifTrue: [recoveredBlock30Block39PC := 97] ifFalse: [recoveredBlock30Block39PC := 60].
        ].
        recoveredBlock30Block39Step = 60 ifTrue: [
            recoveredBlock30Block39PC := 61.
        ].
        recoveredBlock30Block39Step = 61 ifTrue: [
            recoveredBlock30Block39Stack1 := recoveredBlock30Arg1.
            recoveredBlock30Block39PC := 64.
        ].
        recoveredBlock30Block39Step = 64 ifTrue: [
            recoveredBlock30Block39Stack2 := ''.
            recoveredBlock30Block39PC := 66.
        ].
        recoveredBlock30Block39Step = 66 ifTrue: [
            recoveredBlock30Block39Stack1 := (recoveredBlock30Block39Stack1) equals: (recoveredBlock30Block39Stack2).
            recoveredBlock30Block39PC := 68.
        ].
        recoveredBlock30Block39Step = 68 ifTrue: [
            (recoveredBlock30Block39Stack1) ifTrue: [recoveredBlock30Block39PC := 72] ifFalse: [recoveredBlock30Block39PC := 80].
        ].
        recoveredBlock30Block39Step = 72 ifTrue: [
            recoveredBlock30Block39Stack1 := recoveredBlock30Block39Arg1.
            recoveredBlock30Block39PC := 73.
        ].
        recoveredBlock30Block39Step = 73 ifTrue: [
            recoveredBlock30Block39Stack2 := nil.
            recoveredBlock30Block39PC := 74.
        ].
        recoveredBlock30Block39Step = 74 ifTrue: [
            (recoveredBlock30Block39Stack1) changePeriod: (recoveredBlock30Block39Stack2).
            recoveredBlock30Block39PC := 76.
        ].
        recoveredBlock30Block39Step = 76 ifTrue: [
            recoveredBlock30Block39PC := 88.
        ].
        recoveredBlock30Block39Step = 80 ifTrue: [
            recoveredBlock30Block39Stack1 := recoveredBlock30Block39Arg1.
            recoveredBlock30Block39PC := 81.
        ].
        recoveredBlock30Block39Step = 81 ifTrue: [
            recoveredBlock30Block39Stack2 := recoveredBlock30Arg1.
            recoveredBlock30Block39PC := 84.
        ].
        recoveredBlock30Block39Step = 84 ifTrue: [
            recoveredBlock30Block39Stack2 := (recoveredBlock30Block39Stack2) asFloat.
            recoveredBlock30Block39PC := 86.
        ].
        recoveredBlock30Block39Step = 86 ifTrue: [
            (recoveredBlock30Block39Stack1) changePeriod: (recoveredBlock30Block39Stack2).
            recoveredBlock30Block39PC := 88.
        ].
        recoveredBlock30Block39Step = 88 ifTrue: [
            recoveredBlock30Block39Stack1 := self.
            recoveredBlock30Block39PC := 89.
        ].
        recoveredBlock30Block39Step = 89 ifTrue: [
            recoveredBlock30Block39Stack1 := (recoveredBlock30Block39Stack1) widgetBypassFunc.
            recoveredBlock30Block39PC := 91.
        ].
        recoveredBlock30Block39Step = 91 ifTrue: [
            recoveredBlock30Block39Stack2 := recoveredBlock30Block39Arg1.
            recoveredBlock30Block39PC := 92.
        ].
        recoveredBlock30Block39Step = 92 ifTrue: [
            (recoveredBlock30Block39Stack1) refreshItem: (recoveredBlock30Block39Stack2).
            recoveredBlock30Block39PC := 94.
        ].
        recoveredBlock30Block39Step = 94 ifTrue: [
            recoveredBlock30Block39Stack1 := self.
            recoveredBlock30Block39PC := 95.
        ].
        recoveredBlock30Block39Step = 95 ifTrue: [
            recoveredBlock30Block39Stack1 := (recoveredBlock30Block39Stack1) schedulingHasChanged.
            recoveredBlock30Block39PC := 97.
        ].
        recoveredBlock30Block39Step = 97 ifTrue: [
            recoveredBlock30Block39Result := recoveredBlock30Block39Stack1.
            recoveredBlock30Block39Done := true.
        ].
    ].
    recoveredBlock30Block39Result
].
    recoveredBlock30Value2 := (recoveredBlock30Value0) do: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042fefc; bytecode file offset 0xd2c7e8"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
automappingOverwriteExisiting: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceObjectsForAutoMapping.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280fd4d0Arg1 | 
    | block280fd4d0Value0 block280fd4d0Value1 |
    block280fd4d0Value0 := block280fd4d0Arg1.
    block280fd4d0Value1 := (block280fd4d0Value0) nameForMapping.
    block280fd4d0Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInputMapping.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuNoCopyVarsInput.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoMappingECUVarNamedSelection: (recoveredStack1) ecuLabels: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredLocal1 := true.
    recoveredBlock43Value0 := (self) eHooksConfig.
    recoveredBlock43Value1 := recoveredBlock43Arg1.
    recoveredBlock43Value2 := (recoveredBlock43Value0) ecuReadVarsSelection: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) eHooksConfig.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) ecuVarsOutput.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) autoMappingECUVarNamedSelection: (recoveredStack1) ecuLabels: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Value0 recoveredBlock77Value1 recoveredBlock77Value2 |
    recoveredLocal1 := true.
    recoveredBlock77Value0 := (self) eHooksConfig.
    recoveredBlock77Value1 := recoveredBlock77Arg1.
    recoveredBlock77Value2 := (recoveredBlock77Value0) ecuWriteVarsSelection: (recoveredBlock77Value1).
    recoveredBlock77Value2
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) updateTargetsObjectsAndAutoMapOverwrite: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20437f98; bytecode file offset 0xd34890"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
singleSelectionTabStrip: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super singleSelectionTabStrip: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) currentTab: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) updateFileNameWidget.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemIsModifiable.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasEHooksTarget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isGetLabelsPossible.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEHooksButton.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetEHooksButton.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetSelectedMapping.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) mappingObjects.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) updateMapping.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043eb7c; bytecode file offset 0xd3b468"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuOpenEHooksECUReadBackupCopySelection: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkEHooksAppWellConfigured.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ehooksAppServerScriptingProject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) newVariableReadCollection.
    recoveredBlock11Value2 := [:recoveredBlock11Block22Arg1 | 
    | recoveredBlock11Block22Value0 recoveredBlock11Block22Value1 recoveredBlock11Block22Value2 recoveredBlock11Block22Value3 recoveredBlock11Block22Value4 recoveredBlock11Block22Value5 recoveredBlock11Block22Value6 recoveredBlock11Block22Value7 |
    recoveredBlock11Block22Value0 := recoveredArg1.
    recoveredBlock11Block22Value1 := [:recoveredBlock11Block22Block31Arg1 | 
    | recoveredBlock11Block22Block31Value0 recoveredBlock11Block22Block31Value1 recoveredBlock11Block22Block31Value2 recoveredBlock11Block22Block31Value3 |
    recoveredBlock11Block22Block31Value0 := recoveredBlock11Arg1.
    recoveredBlock11Block22Block31Value1 := (recoveredBlock11Block22Block31Value0) newVariableRead.
    recoveredBlock11Block22Block31Value2 := [:recoveredBlock11Block22Block31Block43Arg1 | 
    | recoveredBlock11Block22Block31Block43Value0 recoveredBlock11Block22Block31Block43Value1 recoveredBlock11Block22Block31Block43Value2 recoveredBlock11Block22Block31Block43Value3 recoveredBlock11Block22Block31Block43Value4 |
    recoveredBlock11Block22Block31Block43Value0 := recoveredBlock11Block22Block31Block43Arg1.
    recoveredBlock11Block22Block31Block43Value1 := recoveredBlock11Block22Block31Arg1.
    (self) updateEHooksVariable: (recoveredBlock11Block22Block31Block43Value0) with: (recoveredBlock11Block22Block31Block43Value1).
    recoveredBlock11Block22Block31Block43Value2 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Block31Block43Value3 := recoveredBlock11Block22Block31Block43Arg1.
    recoveredBlock11Block22Block31Block43Value4 := (recoveredBlock11Block22Block31Block43Value2) add: (recoveredBlock11Block22Block31Block43Value3).
    recoveredBlock11Block22Block31Block43Value4
].
    recoveredBlock11Block22Block31Value3 := (recoveredBlock11Block22Block31Value1) ifNotNil: (recoveredBlock11Block22Block31Value2).
    recoveredBlock11Block22Block31Value3
].
    (recoveredBlock11Block22Value0) do: (recoveredBlock11Block22Value1).
    recoveredBlock11Block22Value2 := recoveredBlock11Arg1.
    recoveredBlock11Block22Value3 := recoveredBlock11Block22Arg1.
    recoveredBlock11Block22Value4 := (recoveredBlock11Block22Value2) ecuReadBackupCopySelection: (recoveredBlock11Block22Value3).
    recoveredBlock11Block22Value5 := (self) createEHooksReadVariablesFrom: (recoveredBlock11Block22Value4).
    recoveredBlock11Block22Value6 := [:recoveredBlock11Block22Block78Arg1 | 
    | recoveredBlock11Block22Block78Stack0 recoveredBlock11Block22Block78Stack1 recoveredBlock11Block22Block78Stack2 recoveredBlock11Block22Block78Stack3 recoveredBlock11Block22Block78PC recoveredBlock11Block22Block78Step recoveredBlock11Block22Block78Done recoveredBlock11Block22Block78Result |
    recoveredBlock11Block22Block78Stack0 := self.
    recoveredBlock11Block22Block78PC := 84.
    recoveredBlock11Block22Block78Done := false.
    [recoveredBlock11Block22Block78Done not] whileTrue: [
        recoveredBlock11Block22Block78Step := recoveredBlock11Block22Block78PC.
        recoveredBlock11Block22Block78Step = 84 ifTrue: [
            recoveredBlock11Block22Block78Stack1 := recoveredBlock11Block22Block78Arg1.
            recoveredBlock11Block22Block78PC := 85.
        ].
        recoveredBlock11Block22Block78Step = 85 ifTrue: [
            recoveredBlock11Block22Block78Stack2 := [:block280fe314Arg1 | 
    | block280fe314Value0 block280fe314Value1 |
    block280fe314Value0 := block280fe314Arg1.
    block280fe314Value1 := block280fe314Value0.
    (block280fe314Value1) ecuBackupCopy: (true).
    block280fe314Value0
].
            recoveredBlock11Block22Block78PC := 87.
        ].
        recoveredBlock11Block22Block78Step = 87 ifTrue: [
            recoveredBlock11Block22Block78PC := 96.
        ].
        recoveredBlock11Block22Block78Step = 96 ifTrue: [
            recoveredBlock11Block22Block78Stack1 := (recoveredBlock11Block22Block78Stack1) collect: (recoveredBlock11Block22Block78Stack2).
            recoveredBlock11Block22Block78PC := 98.
        ].
        recoveredBlock11Block22Block78Step = 98 ifTrue: [
            ^recoveredBlock11Block22Block78Stack1
        ].
    ].
    recoveredBlock11Block22Block78Result
].
    recoveredBlock11Block22Value7 := (recoveredBlock11Block22Value5) ifNotNil: (recoveredBlock11Block22Value6).
    recoveredBlock11Block22Value7
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) ifNotNil: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044021c; bytecode file offset 0xd3cb0c"
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
            recoveredBlock17Stack3 := [:block280fe578Arg1 | 
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

"ASDBase.ic method 0x2044aa84; bytecode file offset 0xd47374"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
selectedOrAssociatedBypassFuncs: recoveredArg1
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
            recoveredStack1 := [:block280ff004Arg1 | 
    | block280ff004Value0 block280ff004Value1 block280ff004Value2 |
    block280ff004Value0 := block280ff004Arg1.
    block280ff004Value1 := (block280ff004Value0) isProcess.
    block280ff004Value2 := (block280ff004Value1) not.
    block280ff004Value2
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) asSet.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := (self) widgetBypassFunc.
    recoveredBlock27Value1 := (recoveredBlock27Value0) items.
    recoveredBlock27Value2 := [:recoveredBlock27Block37Arg1 | 
    | recoveredBlock27Block37Value0 recoveredBlock27Block37Value1 recoveredBlock27Block37Value2 recoveredBlock27Block37Value3 recoveredBlock27Block37Value4 recoveredBlock27Block37Value5 |
    recoveredBlock27Block37Value0 := recoveredBlock27Block37Arg1.
    recoveredBlock27Block37Value1 := (self) processObjectsForBypassFunc: (recoveredBlock27Block37Value0).
    recoveredBlock27Block37Value2 := [:recoveredBlock27Block37Block49Arg1 | 
    | recoveredBlock27Block37Block49Stack0 recoveredBlock27Block37Block49Stack1 recoveredBlock27Block37Block49Stack2 recoveredBlock27Block37Block49Stack3 recoveredBlock27Block37Block49Stack4 recoveredBlock27Block37Block49PC recoveredBlock27Block37Block49Step recoveredBlock27Block37Block49Done recoveredBlock27Block37Block49Result |
    recoveredBlock27Block37Block49Stack0 := nil.
    recoveredBlock27Block37Block49PC := 56.
    recoveredBlock27Block37Block49Done := false.
    [recoveredBlock27Block37Block49Done not] whileTrue: [
        recoveredBlock27Block37Block49Step := recoveredBlock27Block37Block49PC.
        recoveredBlock27Block37Block49Step = 56 ifTrue: [
            recoveredBlock27Block37Block49Stack1 := false.
            recoveredBlock27Block37Block49PC := 57.
        ].
        recoveredBlock27Block37Block49Step = 57 ifTrue: [
            recoveredBlock27Block37Block49Stack2 := recoveredBlock27Block37Block49Arg1.
            recoveredBlock27Block37Block49PC := 58.
        ].
        recoveredBlock27Block37Block49Step = 58 ifTrue: [
            recoveredBlock27Block37Block49Stack2 := (recoveredBlock27Block37Block49Stack2) instVar.
            recoveredBlock27Block37Block49PC := 60.
        ].
        recoveredBlock27Block37Block49Step = 60 ifTrue: [
            recoveredBlock27Block37Block49Stack3 := recoveredBlock27Arg1.
            recoveredBlock27Block37Block49PC := 63.
        ].
        recoveredBlock27Block37Block49Step = 63 ifTrue: [
            recoveredBlock27Block37Block49Stack3 := (recoveredBlock27Block37Block49Stack3) instVar.
            recoveredBlock27Block37Block49PC := 65.
        ].
        recoveredBlock27Block37Block49Step = 65 ifTrue: [
            (recoveredBlock27Block37Block49Stack2 ~~ recoveredBlock27Block37Block49Stack3) ifTrue: [recoveredBlock27Block37Block49PC := 78] ifFalse: [recoveredBlock27Block37Block49PC := 68].
        ].
        recoveredBlock27Block37Block49Step = 68 ifTrue: [
            recoveredBlock27Block37Block49PC := 69.
        ].
        recoveredBlock27Block37Block49Step = 69 ifTrue: [
            recoveredBlock27Block37Block49Stack1 := recoveredBlock27Block37Block49Arg1.
            recoveredBlock27Block37Block49PC := 70.
        ].
        recoveredBlock27Block37Block49Step = 70 ifTrue: [
            recoveredBlock27Block37Block49Stack1 := (recoveredBlock27Block37Block49Stack1) processMethod.
            recoveredBlock27Block37Block49PC := 72.
        ].
        recoveredBlock27Block37Block49Step = 72 ifTrue: [
            recoveredBlock27Block37Block49Stack2 := recoveredBlock27Arg1.
            recoveredBlock27Block37Block49PC := 75.
        ].
        recoveredBlock27Block37Block49Step = 75 ifTrue: [
            recoveredBlock27Block37Block49Stack2 := (recoveredBlock27Block37Block49Stack2) processMethod.
            recoveredBlock27Block37Block49PC := 77.
        ].
        recoveredBlock27Block37Block49Step = 77 ifTrue: [
            recoveredBlock27Block37Block49Stack1 := (recoveredBlock27Block37Block49Stack1) == (recoveredBlock27Block37Block49Stack2).
            recoveredBlock27Block37Block49PC := 78.
        ].
        recoveredBlock27Block37Block49Step = 78 ifTrue: [
            recoveredBlock27Block37Block49Result := recoveredBlock27Block37Block49Stack1.
            recoveredBlock27Block37Block49Done := true.
        ].
    ].
    recoveredBlock27Block37Block49Result
].
    recoveredBlock27Block37Value3 := [].
    recoveredBlock27Block37Value4 := [:recoveredBlock27Block37Block81Arg1 | 
    | recoveredBlock27Block37Block81Value0 recoveredBlock27Block37Block81Value1 recoveredBlock27Block37Block81Value2 |
    recoveredBlock27Block37Block81Value0 := recoveredLocal1.
    recoveredBlock27Block37Block81Value1 := recoveredBlock27Block37Arg1.
    recoveredBlock27Block37Block81Value2 := (recoveredBlock27Block37Block81Value0) add: (recoveredBlock27Block37Block81Value1).
    recoveredBlock27Block37Block81Value2
].
    recoveredBlock27Block37Value5 := (recoveredBlock27Block37Value1) detect: (recoveredBlock27Block37Value2) ifNone: (recoveredBlock27Block37Value3) ifOne: (recoveredBlock27Block37Value4).
    recoveredBlock27Block37Value5
].
    recoveredBlock27Value3 := (recoveredBlock27Value1) do: (recoveredBlock27Value2).
    recoveredBlock27Value3
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045a4bc; bytecode file offset 0xd56dac"
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
            recoveredStack2 := [:block28100150Arg1 :block28100150Arg2 | 
    | block28100150Value0 block28100150Value1 block28100150Value2 |
    block28100150Value0 := block28100150Arg1.
    block28100150Value1 := block28100150Arg2.
    block28100150Value2 := (block28100150Value0) > (block28100150Value1).
    block28100150Value2
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

"ASDBase.ic method 0x2045ce38; bytecode file offset 0xd59750"
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
            recoveredStack3 := [:block28100468Arg1 | 
    | block28100468Value0 block28100468Value1 block28100468Value2 block28100468Value3 |
    block28100468Value0 := block28100468Arg1.
    block28100468Value1 := block28100468Value0.
    block28100468Value2 := XmALIGNMENTBEGINNING.
    (block28100468Value1) alignment: (block28100468Value2).
    block28100468Value3 := (block28100468Value0) labelString: ('[s]').
    block28100468Value3
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

"ASDBase.ic method 0x2049dbac; bytecode file offset 0xd9a4dc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
promptForConfigFilePath: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) saveModel.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidFileName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) pathName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainController.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLastExportPath.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := '*.ehcfg'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := 'EHCFG'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := RBFileSelectionPrompter.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'File Name for EHOOKS Configuration File'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := '*.ehcfg'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) appendDefaultExtension.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := XmOPEN.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) accessType: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 110].
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
            (recoveredStack0) initEHooksConfigWhenEmpty.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) setEHooksConfigFile: (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) initEHooksConfig.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) setEHooksConfigFile: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c1474; bytecode file offset 0xdbdd84"
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
            recoveredPC := 149.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) getUserInterface.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := (recoveredStack2) resourceManager.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := (recoveredStack3) item.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) iconName.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) returnIconWithName: (recoveredStack3).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) icon: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := (recoveredStack2) extendedLabel.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f4380; bytecode file offset 0xdf0ca0"
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

"ASDBase.ic method 0x20507034; bytecode file offset 0xe03958"
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
            recoveredStack1 := SGReservedNames.
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
            recoveredStack1 := SGReservedNames.
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

"ASDBase.ic method 0x20521118; bytecode file offset 0xe1da44"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
menuBypassFuncCreateFromOS
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableOtherOSLogicKeys.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 'No operating systems specified.'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectOtherTarget: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicModel.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogicForKey: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTasks.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 'There are no tasks defined.'.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := CwMessagePrompter.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 'Are you sure to overwrite existing Scheduling ?'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) setBypassFunctionsCopiesEmpty.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 recoveredBlock112Value3 recoveredBlock112Value4 |
    recoveredBlock112Value0 := recoveredBlock112Arg1.
    recoveredBlock112Value1 := (recoveredBlock112Value0) name.
    recoveredBlock112Value2 := (self) addBypassFuncUICopy: (recoveredBlock112Value1).
    recoveredBlock112Value3 := [:recoveredBlock112Block125Arg1 | 
    | recoveredBlock112Block125Value0 recoveredBlock112Block125Value1 recoveredBlock112Block125Value2 recoveredBlock112Block125Value3 |
    recoveredBlock112Block125Value0 := recoveredBlock112Arg1.
    recoveredBlock112Block125Value1 := (recoveredBlock112Block125Value0) instVarProcessReferences.
    recoveredBlock112Block125Value2 := [:recoveredBlock112Block125Block137Arg1 | 
    | recoveredBlock112Block125Block137Stack0 recoveredBlock112Block125Block137Stack1 recoveredBlock112Block125Block137Stack2 recoveredBlock112Block125Block137Stack3 recoveredBlock112Block125Block137Stack4 recoveredBlock112Block125Block137Stack5 recoveredBlock112Block125Block137PC recoveredBlock112Block125Block137Step recoveredBlock112Block125Block137Done recoveredBlock112Block125Block137Result |
    recoveredBlock112Block125Block137Stack0 := self.
    recoveredBlock112Block125Block137PC := 144.
    recoveredBlock112Block125Block137Done := false.
    [recoveredBlock112Block125Block137Done not] whileTrue: [
        recoveredBlock112Block125Block137Step := recoveredBlock112Block125Block137PC.
        recoveredBlock112Block125Block137Step = 144 ifTrue: [
            recoveredBlock112Block125Block137Stack1 := recoveredBlock112Block125Block137Arg1.
            recoveredBlock112Block125Block137PC := 145.
        ].
        recoveredBlock112Block125Block137Step = 145 ifTrue: [
            recoveredBlock112Block125Block137Stack1 := (recoveredBlock112Block125Block137Stack1) size.
            recoveredBlock112Block125Block137PC := 147.
        ].
        recoveredBlock112Block125Block137Step = 147 ifTrue: [
            recoveredBlock112Block125Block137Stack2 := 1.
            recoveredBlock112Block125Block137PC := 149.
        ].
        recoveredBlock112Block125Block137Step = 149 ifTrue: [
            recoveredBlock112Block125Block137Stack1 := (recoveredBlock112Block125Block137Stack1) > (recoveredBlock112Block125Block137Stack2).
            recoveredBlock112Block125Block137PC := 150.
        ].
        recoveredBlock112Block125Block137Step = 150 ifTrue: [
            (recoveredBlock112Block125Block137Stack1) ifTrue: [recoveredBlock112Block125Block137PC := 154] ifFalse: [recoveredBlock112Block125Block137PC := 176].
        ].
        recoveredBlock112Block125Block137Step = 154 ifTrue: [
            recoveredBlock112Block125Block137Stack1 := recoveredBlock112Block125Arg1.
            recoveredBlock112Block125Block137PC := 157.
        ].
        recoveredBlock112Block125Block137Step = 157 ifTrue: [
            recoveredBlock112Block125Block137Stack2 := recoveredBlock112Block125Block137Arg1.
            recoveredBlock112Block125Block137PC := 158.
        ].
        recoveredBlock112Block125Block137Step = 158 ifTrue: [
            recoveredBlock112Block125Block137Stack3 := 2.
            recoveredBlock112Block125Block137PC := 160.
        ].
        recoveredBlock112Block125Block137Step = 160 ifTrue: [
            recoveredBlock112Block125Block137Stack2 := (recoveredBlock112Block125Block137Stack2) at: (recoveredBlock112Block125Block137Stack3).
            recoveredBlock112Block125Block137PC := 162.
        ].
        recoveredBlock112Block125Block137Step = 162 ifTrue: [
            recoveredBlock112Block125Block137Stack3 := recoveredBlock112Block125Block137Arg1.
            recoveredBlock112Block125Block137PC := 163.
        ].
        recoveredBlock112Block125Block137Step = 163 ifTrue: [
            recoveredBlock112Block125Block137Stack4 := 1.
            recoveredBlock112Block125Block137PC := 165.
        ].
        recoveredBlock112Block125Block137Step = 165 ifTrue: [
            recoveredBlock112Block125Block137Stack3 := (recoveredBlock112Block125Block137Stack3) at: (recoveredBlock112Block125Block137Stack4).
            recoveredBlock112Block125Block137PC := 167.
        ].
        recoveredBlock112Block125Block137Step = 167 ifTrue: [
            recoveredBlock112Block125Block137Stack4 := self.
            recoveredBlock112Block125Block137PC := 168.
        ].
        recoveredBlock112Block125Block137Step = 168 ifTrue: [
            recoveredBlock112Block125Block137Stack4 := (recoveredBlock112Block125Block137Stack4) project.
            recoveredBlock112Block125Block137PC := 169.
        ].
        recoveredBlock112Block125Block137Step = 169 ifTrue: [
            recoveredBlock112Block125Block137Stack1 := (recoveredBlock112Block125Block137Stack1) addProcessAlias: (recoveredBlock112Block125Block137Stack2) instVarConvertAlias: (recoveredBlock112Block125Block137Stack3) forProject: (recoveredBlock112Block125Block137Stack4).
            recoveredBlock112Block125Block137PC := 172.
        ].
        recoveredBlock112Block125Block137Step = 172 ifTrue: [
            recoveredBlock112Block125Block137PC := 177.
        ].
        recoveredBlock112Block125Block137Step = 176 ifTrue: [
            recoveredBlock112Block125Block137Stack1 := nil.
            recoveredBlock112Block125Block137PC := 177.
        ].
        recoveredBlock112Block125Block137Step = 177 ifTrue: [
            recoveredBlock112Block125Block137Result := recoveredBlock112Block125Block137Stack1.
            recoveredBlock112Block125Block137Done := true.
        ].
    ].
    recoveredBlock112Block125Block137Result
].
    recoveredBlock112Block125Value3 := (recoveredBlock112Block125Value1) do: (recoveredBlock112Block125Value2).
    recoveredBlock112Block125Value3
].
    recoveredBlock112Value4 := (recoveredBlock112Value2) ifNotNil: (recoveredBlock112Value3).
    recoveredBlock112Value4
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) updateBypassFuncList.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052ee94; bytecode file offset 0xe2b790"
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
            recoveredStack1 := [:block2810d320Arg1 :block2810d320Arg2 | 
    | block2810d320Value0 block2810d320Value1 block2810d320Value2 |
    block2810d320Value0 := block2810d320Arg1.
    block2810d320Value1 := block2810d320Arg2.
    block2810d320Value2 := (block2810d320Value0) < (block2810d320Value1).
    block2810d320Value2
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
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2052efb0; bytecode file offset 0xe2b8ac"
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
            recoveredStack1 := [:block2810d344Arg1 :block2810d344Arg2 | 
    | block2810d344Value0 block2810d344Value1 block2810d344Value2 |
    block2810d344Value0 := block2810d344Arg1.
    block2810d344Value1 := block2810d344Arg2.
    block2810d344Value2 := (block2810d344Value0) > (block2810d344Value1).
    block2810d344Value2
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
            (recoveredStack0) schedulingHasChanged.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20535404; bytecode file offset 0xe31d48"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
updateBypassFuncWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack0 := (recoveredStack0) widgetBypassFunc.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:block2810d734Arg1 | 
    | block2810d734Value0 block2810d734Value1 |
    block2810d734Value0 := block2810d734Arg1.
    block2810d734Value1 := (block2810d734Value0) isProcess.
    block2810d734Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedOrAssociatedBypassFuncs: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedBypassFuncs: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) bypassFuncSettingsLabel.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) bypassFuncAttributeLabelFor: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) eHooksConfig.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatchPoints.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatchPointForFuncs: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := EHooksSelect.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := EHooksNone.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDispatchPoint.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := EHooksNone.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDispatchPoint.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 139].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDispatchPoint.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPeriod.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := EHooksNone.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) equals: (recoveredStack3).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 177] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := (recoveredStack2) periodForFuncs: (recoveredStack3).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 177] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPeriod.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPeriod.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059cf80; bytecode file offset 0xe998bc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
ehooksConfigModified
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
            recoveredStack0 := (recoveredStack0) bypassFunctions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block281152d0Arg1 | 
    | block281152d0Value0 block281152d0Value1 |
    block281152d0Value0 := block281152d0Arg1.
    block281152d0Value1 := (block281152d0Value0) toBeSynchronized.
    block281152d0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
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
            recoveredStack0 := (recoveredStack0) eHooksApplicationIsValidAndRunning.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
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
            recoveredStack1 := false.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeEHooksApplCheckWellConfiguredPromptMissingFiles: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) checkEHooksAppl.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := SGMonitorManager.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorStream.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := SGEHooksToolAccess.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := (recoveredBlock64Value0) ehooksAppServerScriptingProject.
    recoveredBlock64Value2 := [:recoveredBlock64Block75Arg1 | 
    | recoveredBlock64Block75Value0 recoveredBlock64Block75Value1 recoveredBlock64Block75Value2 recoveredBlock64Block75Value3 recoveredBlock64Block75Value4 recoveredBlock64Block75Value5 |
    recoveredBlock64Block75Value0 := recoveredBlock64Arg1.
    recoveredBlock64Block75Value1 := recoveredLocal1.
    (recoveredBlock64Block75Value0) logSynchronizeStart: (recoveredBlock64Block75Value1).
    recoveredBlock64Block75Value2 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Value3 := (recoveredBlock64Block75Value2) newBypassFunctionCollection.
    recoveredBlock64Block75Value4 := [:recoveredBlock64Block75Block95Arg1 | 
    | recoveredBlock64Block75Block95Value0 recoveredBlock64Block75Block95Value1 recoveredBlock64Block75Block95Value2 recoveredBlock64Block75Block95Value3 recoveredBlock64Block75Block95Value4 recoveredBlock64Block75Block95Value5 |
    recoveredBlock64Block75Block95Value0 := recoveredLocal2.
    recoveredBlock64Block75Block95Value1 := [:recoveredBlock64Block75Block95Block105Arg1 | 
    | recoveredBlock64Block75Block95Block105Value0 recoveredBlock64Block75Block95Block105Value1 recoveredBlock64Block75Block95Block105Value2 recoveredBlock64Block75Block95Block105Value3 recoveredBlock64Block75Block95Block105Value4 |
    recoveredBlock64Block75Block95Block105Value0 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Block95Block105Value1 := recoveredBlock64Block75Block95Block105Arg1.
    recoveredBlock64Block75Block95Block105Value2 := (recoveredBlock64Block75Block95Block105Value0) newEHooksBypassFunctionFrom: (recoveredBlock64Block75Block95Block105Value1) client: (self).
    recoveredBlock64Block75Block95Block105Value3 := [:recoveredBlock64Block75Block95Block105Block119Arg1 | 
    | recoveredBlock64Block75Block95Block105Block119Value0 recoveredBlock64Block75Block95Block105Block119Value1 recoveredBlock64Block75Block95Block105Block119Value2 |
    recoveredBlock64Block75Block95Block105Block119Value0 := recoveredBlock64Block75Block95Arg1.
    recoveredBlock64Block75Block95Block105Block119Value1 := recoveredBlock64Block75Block95Block105Block119Arg1.
    recoveredBlock64Block75Block95Block105Block119Value2 := (recoveredBlock64Block75Block95Block105Block119Value0) add: (recoveredBlock64Block75Block95Block105Block119Value1).
    recoveredBlock64Block75Block95Block105Block119Value2
].
    recoveredBlock64Block75Block95Block105Value4 := (recoveredBlock64Block75Block95Block105Value2) ifNotNil: (recoveredBlock64Block75Block95Block105Value3).
    recoveredBlock64Block75Block95Block105Value4
].
    (recoveredBlock64Block75Block95Value0) do: (recoveredBlock64Block75Block95Value1).
    recoveredBlock64Block75Block95Value2 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Block95Value3 := (recoveredBlock64Block75Block95Value2) newVariableWriteCollection.
    recoveredBlock64Block75Block95Value4 := [:recoveredBlock64Block75Block95Block143Arg1 | 
    | recoveredBlock64Block75Block95Block143Value0 recoveredBlock64Block75Block95Block143Value1 recoveredBlock64Block75Block95Block143Value2 recoveredBlock64Block75Block95Block143Value3 recoveredBlock64Block75Block95Block143Value4 recoveredBlock64Block75Block95Block143Value5 recoveredBlock64Block75Block95Block143Value6 |
    recoveredBlock64Block75Block95Block143Value0 := (self) eHooksConfig.
    recoveredBlock64Block75Block95Block143Value1 := (recoveredBlock64Block75Block95Block143Value0) hookVariables.
    recoveredBlock64Block75Block95Block143Value2 := [:recoveredBlock64Block75Block95Block143Block153Arg1 | 
    | recoveredBlock64Block75Block95Block143Block153Value0 recoveredBlock64Block75Block95Block143Block153Value1 recoveredBlock64Block75Block95Block143Block153Value2 recoveredBlock64Block75Block95Block143Block153Value3 |
    recoveredBlock64Block75Block95Block143Block153Value0 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Block95Block143Block153Value1 := (recoveredBlock64Block75Block95Block143Block153Value0) newVariableWrite.
    recoveredBlock64Block75Block95Block143Block153Value2 := [:recoveredBlock64Block75Block95Block143Block153Block165Arg1 | 
    | recoveredBlock64Block75Block95Block143Block153Block165Value0 recoveredBlock64Block75Block95Block143Block153Block165Value1 recoveredBlock64Block75Block95Block143Block153Block165Value2 recoveredBlock64Block75Block95Block143Block153Block165Value3 recoveredBlock64Block75Block95Block143Block153Block165Value4 |
    recoveredBlock64Block75Block95Block143Block153Block165Value0 := recoveredBlock64Block75Block95Block143Block153Block165Arg1.
    recoveredBlock64Block75Block95Block143Block153Block165Value1 := recoveredBlock64Block75Block95Block143Block153Arg1.
    (self) updateEHooksWriteHook: (recoveredBlock64Block75Block95Block143Block153Block165Value0) with: (recoveredBlock64Block75Block95Block143Block153Block165Value1).
    recoveredBlock64Block75Block95Block143Block153Block165Value2 := recoveredBlock64Block75Block95Block143Arg1.
    recoveredBlock64Block75Block95Block143Block153Block165Value3 := recoveredBlock64Block75Block95Block143Block153Block165Arg1.
    recoveredBlock64Block75Block95Block143Block153Block165Value4 := (recoveredBlock64Block75Block95Block143Block153Block165Value2) add: (recoveredBlock64Block75Block95Block143Block153Block165Value3).
    recoveredBlock64Block75Block95Block143Block153Block165Value4
].
    recoveredBlock64Block75Block95Block143Block153Value3 := (recoveredBlock64Block75Block95Block143Block153Value1) ifNotNil: (recoveredBlock64Block75Block95Block143Block153Value2).
    recoveredBlock64Block75Block95Block143Block153Value3
].
    (recoveredBlock64Block75Block95Block143Value1) do: (recoveredBlock64Block75Block95Block143Value2).
    recoveredBlock64Block75Block95Block143Value3 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Block95Block143Value4 := (recoveredBlock64Block75Block95Block143Value3) newIncludeDirCollection.
    recoveredBlock64Block75Block95Block143Value5 := [:recoveredBlock64Block75Block95Block143Block195Arg1 | 
    | recoveredBlock64Block75Block95Block143Block195Value0 recoveredBlock64Block75Block95Block143Block195Value1 recoveredBlock64Block75Block95Block143Block195Value2 recoveredBlock64Block75Block95Block143Block195Value3 |
    recoveredBlock64Block75Block95Block143Block195Value0 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Block95Block143Block195Value1 := (recoveredBlock64Block75Block95Block143Block195Value0) newSourceFileCollection.
    recoveredBlock64Block75Block95Block143Block195Value2 := [:recoveredBlock64Block75Block95Block143Block195Block207Arg1 | 
    | recoveredBlock64Block75Block95Block143Block195Block207Value0 recoveredBlock64Block75Block95Block143Block195Block207Value1 recoveredBlock64Block75Block95Block143Block195Block207Value2 recoveredBlock64Block75Block95Block143Block195Block207Value3 recoveredBlock64Block75Block95Block143Block195Block207Value4 recoveredBlock64Block75Block95Block143Block195Block207Value5 recoveredBlock64Block75Block95Block143Block195Block207Value6 recoveredBlock64Block75Block95Block143Block195Block207Value7 recoveredBlock64Block75Block95Block143Block195Block207Value8 recoveredBlock64Block75Block95Block143Block195Block207Value9 recoveredBlock64Block75Block95Block143Block195Block207Value10 recoveredBlock64Block75Block95Block143Block195Block207Value11 recoveredBlock64Block75Block95Block143Block195Block207Value12 recoveredBlock64Block75Block95Block143Block195Block207Value13 recoveredBlock64Block75Block95Block143Block195Block207Value14 |
    recoveredBlock64Block75Block95Block143Block195Block207Value0 := recoveredBlock64Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value1 := recoveredBlock64Block75Block95Block143Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value2 := (recoveredBlock64Block75Block95Block143Block195Block207Value1) count.
    recoveredBlock64Block75Block95Block143Block195Block207Value3 := recoveredLocal1.
    (recoveredBlock64Block75Block95Block143Block195Block207Value0) logSynchronizeVariables: (recoveredBlock64Block75Block95Block143Block195Block207Value2) on: (recoveredBlock64Block75Block95Block143Block195Block207Value3).
    recoveredBlock64Block75Block95Block143Block195Block207Value4 := recoveredBlock64Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value5 := recoveredBlock64Block75Block95Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value6 := (recoveredBlock64Block75Block95Block143Block195Block207Value5) count.
    recoveredBlock64Block75Block95Block143Block195Block207Value7 := recoveredLocal1.
    (recoveredBlock64Block75Block95Block143Block195Block207Value4) logSynchronizeFunctions: (recoveredBlock64Block75Block95Block143Block195Block207Value6) on: (recoveredBlock64Block75Block95Block143Block195Block207Value7).
    recoveredBlock64Block75Block95Block143Block195Block207Value8 := recoveredBlock64Block75Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value9 := recoveredBlock64Block75Block95Block143Block195Block207Value8.
    recoveredBlock64Block75Block95Block143Block195Block207Value10 := recoveredBlock64Block75Block95Block143Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value11 := recoveredBlock64Block75Block95Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value12 := recoveredBlock64Block75Block95Block143Block195Block207Arg1.
    recoveredBlock64Block75Block95Block143Block195Block207Value13 := recoveredBlock64Block75Block95Block143Block195Arg1.
    (recoveredBlock64Block75Block95Block143Block195Block207Value9) synchronizeVarHooks: (recoveredBlock64Block75Block95Block143Block195Block207Value10) bypassFuncs: (recoveredBlock64Block75Block95Block143Block195Block207Value11) sourceFiles: (recoveredBlock64Block75Block95Block143Block195Block207Value12) sourceDirs: (recoveredBlock64Block75Block95Block143Block195Block207Value13).
    recoveredBlock64Block75Block95Block143Block195Block207Value14 := recoveredBlock64Block75Block95Block143Block195Block207Value8.
    (recoveredBlock64Block75Block95Block143Block195Block207Value14) save.
    ^self
].
    recoveredBlock64Block75Block95Block143Block195Value3 := (recoveredBlock64Block75Block95Block143Block195Value1) ifNotNil: (recoveredBlock64Block75Block95Block143Block195Value2).
    recoveredBlock64Block75Block95Block143Block195Value3
].
    recoveredBlock64Block75Block95Block143Value6 := (recoveredBlock64Block75Block95Block143Value4) ifNotNil: (recoveredBlock64Block75Block95Block143Value5).
    recoveredBlock64Block75Block95Block143Value6
].
    recoveredBlock64Block75Block95Value5 := (recoveredBlock64Block75Block95Value3) ifNotNil: (recoveredBlock64Block75Block95Value4).
    recoveredBlock64Block75Block95Value5
].
    recoveredBlock64Block75Value5 := (recoveredBlock64Block75Value3) ifNotNil: (recoveredBlock64Block75Value4).
    recoveredBlock64Block75Value5
].
    (recoveredBlock64Value1) ifNotNil: (recoveredBlock64Value2).
    recoveredBlock64Value3 := recoveredBlock64Arg1.
    recoveredBlock64Value4 := recoveredLocal1.
    (recoveredBlock64Value3) logSynchronizeFailed: (recoveredBlock64Value4).
    ^nil
].
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205dd770; bytecode file offset 0xeda12c"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createBypassFuncMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_58916'.
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
            recoveredStack1 := 'Kli'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'WHAT5754'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) owner: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := '~BypassFunc'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := 'menuBypassFuncCreateFromOS'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := '~Create from operating system...'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock36Value0 |
    recoveredBlock36Value0 := (self) isBypassFuncAddPossible.
    recoveredBlock36Value0
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack8 := ''.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'menuBypassFuncAdd'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := '~Add'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock59Value0 |
    recoveredBlock59Value0 := (self) isBypassFuncAddPossible.
    recoveredBlock59Value0
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack8 := 'Insert'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := 'menuBypassFuncRename'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack4 := '~Rename'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock80Value0 |
    recoveredBlock80Value0 := (self) isBypassFuncRenamePossible.
    recoveredBlock80Value0
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack8 := 'F2'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := 'menuBypassFuncDelete'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := '~Delete'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock100Value0 |
    recoveredBlock100Value0 := (self) isBypassFuncDeletePossible.
    recoveredBlock100Value0
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack8 := 'Delete'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'menuShiftUp'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := 'Move ~Up'.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock123Value0 |
    recoveredBlock123Value0 := (self) isBypassFuncMoveUpPossible.
    recoveredBlock123Value0
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack7 := CwAccelerator.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack8 := ControlMask.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack9 := XKUp.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack7 := (recoveredStack7) mask: (recoveredStack8) keysym: (recoveredStack9).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack8 := 'Ctrl+Up'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 'menuShiftDown'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := 'Move D~own'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock151Value0 |
    recoveredBlock151Value0 := (self) isBypassFuncMoveDownPossible.
    recoveredBlock151Value0
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack7 := CwAccelerator.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack8 := ControlMask.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack9 := XKDown.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack7 := (recoveredStack7) mask: (recoveredStack8) keysym: (recoveredStack9).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack8 := 'Ctrl+Down'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := 'menuOpenCorrespondingModule'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack4 := 'Op~en Module'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock182Value0 |
    recoveredBlock182Value0 := (self) isOpenModulePossible.
    recoveredBlock182Value0
].
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := 'menuRemoveUndefAssignments'.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := '~Remove undefined processes'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock201Value0 |
    recoveredBlock201Value0 := (self) isRemoveUndefinedPossible.
    recoveredBlock201Value0
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := 'menuExportMapping'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := '~Export...'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack5 := true.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack9 := ''.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := 'menuImportMapping'.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack4 := '~Import...'.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock243Value0 |
    recoveredBlock243Value0 := (self) itemIsModifiable.
    recoveredBlock243Value0
].
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack9 := ''.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEtasInternalMode.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 276] ifFalse: [recoveredPC := 368].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack2) addSingleLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack3 := 'menuInspectMapping'.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := (recoveredStack4) getUserInterface.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := (recoveredStack4) etasInternalMenuLabelPrefix.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack5 := 'Inspect UI Mapping'.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack6 := [
    true
].
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack2) addWithID: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5) visible: (recoveredStack6) for: (recoveredStack7) accelerator: (recoveredStack8) acceleratorText: (recoveredStack9).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := 'menuInspectEHooksConfig'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUserInterface.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := (recoveredStack3) etasInternalMenuLabelPrefix.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack4 := 'Inspect EHooks Configuration'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack7 := nil.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack1) addWithID: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4) visible: (recoveredStack5) for: (recoveredStack6) accelerator: (recoveredStack7) acceleratorText: (recoveredStack8).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205e00a8; bytecode file offset 0xedca20"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createMappingTab: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'form'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'widgetTab'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'widgetMappingTable'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getUserInterface.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) widgetNotebook.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializePageName: (recoveredStack1) pageLabel: (recoveredStack2) createWidgetHierarchyBlock: (recoveredStack3) onNotebook: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := widgetDictionary.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := ASDEHooksMappingTableWidget.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) asAtom.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) widgetAt: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 recoveredBlock91Value3 recoveredBlock91Value4 recoveredBlock91Value5 recoveredBlock91Value6 recoveredBlock91Value7 recoveredBlock91Value8 recoveredBlock91Value9 recoveredBlock91Value10 |
    recoveredBlock91Value0 := recoveredBlock91Arg1.
    recoveredBlock91Value1 := recoveredBlock91Value0.
    recoveredBlock91Value2 := recoveredLocal6.
    recoveredBlock91Value3 := (recoveredBlock91Value2) uiController.
    (recoveredBlock91Value1) uiController: (recoveredBlock91Value3).
    recoveredBlock91Value4 := recoveredBlock91Value0.
    recoveredBlock91Value5 := recoveredLocal6.
    recoveredBlock91Value6 := (recoveredBlock91Value5) uiController.
    recoveredBlock91Value7 := (recoveredBlock91Value6) item.
    (recoveredBlock91Value4) item: (recoveredBlock91Value7).
    recoveredBlock91Value8 := recoveredBlock91Value0.
    recoveredBlock91Value9 := recoveredArg1.
    recoveredBlock91Value10 := (recoveredBlock91Value9) asAtom.
    (recoveredBlock91Value8) mappingType: (recoveredBlock91Value10).
    recoveredBlock91Value0
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWidget: (recoveredStack1) parent: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := 'withoutSendRec'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := [:block2811a3acArg1 | 
    | block2811a3acValue0 block2811a3acValue1 block2811a3acValue2 block2811a3acValue3 block2811a3acValue4 block2811a3acValue5 |
    block2811a3acValue0 := block2811a3acArg1.
    block2811a3acValue1 := block2811a3acValue0.
    block2811a3acValue2 := XmALIGNMENTBEGINNING.
    (block2811a3acValue1) alignment: (block2811a3acValue2).
    block2811a3acValue3 := block2811a3acValue0.
    (block2811a3acValue3) labelString: ('Without Send/Receive Messages').
    block2811a3acValue4 := block2811a3acValue0.
    (block2811a3acValue4) height: (20).
    block2811a3acValue5 := block2811a3acValue0.
    (block2811a3acValue5) width: (125).
    block2811a3acValue0
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := 'widgetWithoutSendRec'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAtom.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := [:recoveredBlock235Arg1 | 
    | recoveredBlock235Value0 recoveredBlock235Value1 recoveredBlock235Value2 recoveredBlock235Value3 recoveredBlock235Value4 recoveredBlock235Value5 recoveredBlock235Value6 recoveredBlock235Value7 recoveredBlock235Value8 recoveredBlock235Value9 recoveredBlock235Value10 recoveredBlock235Value11 recoveredBlock235Value12 recoveredBlock235Value13 recoveredBlock235Value14 |
    recoveredBlock235Value0 := recoveredBlock235Arg1.
    recoveredBlock235Value1 := recoveredBlock235Value0.
    recoveredBlock235Value2 := XmATTACHWIDGET.
    (recoveredBlock235Value1) bottomAttachment: (recoveredBlock235Value2).
    recoveredBlock235Value3 := recoveredBlock235Value0.
    recoveredBlock235Value4 := recoveredLocal1.
    (recoveredBlock235Value3) bottomWidget: (recoveredBlock235Value4).
    recoveredBlock235Value5 := recoveredBlock235Value0.
    (recoveredBlock235Value5) bottomOffset: (0).
    recoveredBlock235Value6 := recoveredBlock235Value0.
    recoveredBlock235Value7 := XmATTACHFORM.
    (recoveredBlock235Value6) topAttachment: (recoveredBlock235Value7).
    recoveredBlock235Value8 := recoveredBlock235Value0.
    (recoveredBlock235Value8) topOffset: (0).
    recoveredBlock235Value9 := recoveredBlock235Value0.
    recoveredBlock235Value10 := XmATTACHFORM.
    (recoveredBlock235Value9) leftAttachment: (recoveredBlock235Value10).
    recoveredBlock235Value11 := recoveredBlock235Value0.
    (recoveredBlock235Value11) leftOffset: (0).
    recoveredBlock235Value12 := recoveredBlock235Value0.
    recoveredBlock235Value13 := XmATTACHFORM.
    (recoveredBlock235Value12) rightAttachment: (recoveredBlock235Value13).
    recoveredBlock235Value14 := (recoveredBlock235Value0) rightOffset: (0).
    recoveredBlock235Value14
].
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := [:block2811a3d0Arg1 | 
    | block2811a3d0Value0 block2811a3d0Value1 block2811a3d0Value2 block2811a3d0Value3 block2811a3d0Value4 block2811a3d0Value5 block2811a3d0Value6 block2811a3d0Value7 block2811a3d0Value8 block2811a3d0Value9 |
    block2811a3d0Value0 := block2811a3d0Arg1.
    block2811a3d0Value1 := block2811a3d0Value0.
    block2811a3d0Value2 := XmATTACHFORM.
    (block2811a3d0Value1) bottomAttachment: (block2811a3d0Value2).
    block2811a3d0Value3 := block2811a3d0Value0.
    (block2811a3d0Value3) bottomOffset: (5).
    block2811a3d0Value4 := block2811a3d0Value0.
    block2811a3d0Value5 := XmATTACHFORM.
    (block2811a3d0Value4) leftAttachment: (block2811a3d0Value5).
    block2811a3d0Value6 := block2811a3d0Value0.
    (block2811a3d0Value6) leftOffset: (5).
    block2811a3d0Value7 := block2811a3d0Value0.
    block2811a3d0Value8 := XmATTACHFORM.
    (block2811a3d0Value7) rightAttachment: (block2811a3d0Value8).
    block2811a3d0Value9 := (block2811a3d0Value0) rightOffset: (0).
    block2811a3d0Value9
].
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetNotebook.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := 'mappingFormResizeCallback:clientData:callData:'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := 'withoutSendRecChanged:clientData:callData:'.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205f1e44; bytecode file offset 0xeee7bc"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
startApplicationServerPromptMissingFiles: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGBasicWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:recoveredBlock14Arg1 :recoveredBlock14Arg2 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 |
    recoveredBlock14Value0 := RBUserInfo.
    recoveredBlock14Value1 := ('EHOOKS is already open for project: %1. \Please close that instance of EHOOKS before trying to configure this project.') withCrs.
    recoveredBlock14Value2 := recoveredBlock14Arg2.
    recoveredBlock14Value3 := (recoveredBlock14Value2) completeLibraryPath.
    recoveredBlock14Value4 := (recoveredBlock14Value1) bindWith: (recoveredBlock14Value3).
    recoveredBlock14Value5 := (recoveredBlock14Value0) message: (recoveredBlock14Value4).
    (recoveredBlock14Value5) prompt.
    ^nil
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ehooksApplicationServerIsRunningForProject: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksAppServerScriptingProject.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePath.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksAppServerScripting.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) show.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksApplicationServerIsRunning.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) project.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) project.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) currentPlatform.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) buildTool.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack5 := [:recoveredBlock89Arg1 | 
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 recoveredBlock89Value5 recoveredBlock89Value6 recoveredBlock89Value7 |
    recoveredBlock89Value0 := RBUserInfo.
    recoveredBlock89Value1 := (self) project.
    recoveredBlock89Value2 := (recoveredBlock89Value1) platform.
    recoveredBlock89Value3 := (recoveredBlock89Value2) buildTool.
    recoveredBlock89Value4 := (recoveredBlock89Value3) label.
    recoveredBlock89Value5 := ('EHOOKS application not found. Please install EHOOKS ') , (recoveredBlock89Value4).
    recoveredBlock89Value6 := (recoveredBlock89Value5) , ('.').
    recoveredBlock89Value7 := (recoveredBlock89Value0) message: (recoveredBlock89Value6).
    (recoveredBlock89Value7) prompt.
    ^nil
].
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) createApplicationServerForProject: (recoveredStack2) tool: (recoveredStack3) logStream: (recoveredStack4) ifFail: (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) ehooksApplicationServerIsRunning.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) cleanupEHooks: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := SGEHooksToolAccess.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := [:recoveredBlock143Arg1 | 
    | recoveredBlock143Value0 recoveredBlock143Value1 recoveredBlock143Value2 recoveredBlock143Value3 |
    recoveredBlock143Value0 := SGEHooksToolAccess.
    recoveredBlock143Value1 := (recoveredBlock143Value0) ehooksAppServerScripting.
    recoveredBlock143Value2 := [:recoveredBlock143Block154Arg1 | 
    | recoveredBlock143Block154Local1 recoveredBlock143Block154Local2 recoveredBlock143Block154Local3 recoveredBlock143Block154Local4 recoveredBlock143Block154Local5 recoveredBlock143Block154Stack0 recoveredBlock143Block154Stack1 recoveredBlock143Block154Stack2 recoveredBlock143Block154Stack3 recoveredBlock143Block154Stack4 recoveredBlock143Block154Stack5 recoveredBlock143Block154PC recoveredBlock143Block154Step recoveredBlock143Block154Done recoveredBlock143Block154Result |
    recoveredBlock143Block154Stack0 := self.
    recoveredBlock143Block154PC := 160.
    recoveredBlock143Block154Done := false.
    [recoveredBlock143Block154Done not] whileTrue: [
        recoveredBlock143Block154Step := recoveredBlock143Block154PC.
        recoveredBlock143Block154Step = 160 ifTrue: [
            recoveredBlock143Block154Stack1 := false.
            recoveredBlock143Block154PC := 161.
        ].
        recoveredBlock143Block154Step = 161 ifTrue: [
            recoveredBlock143Block154Local4 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 164.
        ].
        recoveredBlock143Block154Step = 164 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154PC := 167.
        ].
        recoveredBlock143Block154Step = 167 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) hasProject.
            recoveredBlock143Block154PC := 169.
        ].
        recoveredBlock143Block154Step = 169 ifTrue: [
            (recoveredBlock143Block154Stack1) ifTrue: [recoveredBlock143Block154PC := 252] ifFalse: [recoveredBlock143Block154PC := 172].
        ].
        recoveredBlock143Block154Step = 172 ifTrue: [
            recoveredBlock143Block154Stack1 := self.
            recoveredBlock143Block154PC := 173.
        ].
        recoveredBlock143Block154Step = 173 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) eHooksConfig.
            recoveredBlock143Block154PC := 175.
        ].
        recoveredBlock143Block154Step = 175 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) configFileName.
            recoveredBlock143Block154PC := 177.
        ].
        recoveredBlock143Block154Step = 177 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) asFilename.
            recoveredBlock143Block154PC := 179.
        ].
        recoveredBlock143Block154Step = 179 ifTrue: [
            recoveredBlock143Block154Local3 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 182.
        ].
        recoveredBlock143Block154Step = 182 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Local3.
            recoveredBlock143Block154PC := 185.
        ].
        recoveredBlock143Block154Step = 185 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) fileNameOnly.
            recoveredBlock143Block154PC := 187.
        ].
        recoveredBlock143Block154Step = 187 ifTrue: [
            recoveredBlock143Block154Local2 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 190.
        ].
        recoveredBlock143Block154Step = 190 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Local3.
            recoveredBlock143Block154PC := 193.
        ].
        recoveredBlock143Block154Step = 193 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) pathName.
            recoveredBlock143Block154PC := 195.
        ].
        recoveredBlock143Block154Step = 195 ifTrue: [
            recoveredBlock143Block154Local1 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 198.
        ].
        recoveredBlock143Block154Step = 198 ifTrue: [
            recoveredBlock143Block154Stack1 := CfsStat.
            recoveredBlock143Block154PC := 200.
        ].
        recoveredBlock143Block154Step = 200 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Local3.
            recoveredBlock143Block154PC := 203.
        ].
        recoveredBlock143Block154Step = 203 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) exists: (recoveredBlock143Block154Stack2).
            recoveredBlock143Block154PC := 205.
        ].
        recoveredBlock143Block154Step = 205 ifTrue: [
            (recoveredBlock143Block154Stack1) ifTrue: [recoveredBlock143Block154PC := 208] ifFalse: [recoveredBlock143Block154PC := 220].
        ].
        recoveredBlock143Block154Step = 208 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154PC := 211.
        ].
        recoveredBlock143Block154Step = 211 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Local3.
            recoveredBlock143Block154PC := 214.
        ].
        recoveredBlock143Block154Step = 214 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) openProject: (recoveredBlock143Block154Stack2).
            recoveredBlock143Block154PC := 216.
        ].
        recoveredBlock143Block154Step = 216 ifTrue: [
            (recoveredBlock143Block154Stack1 ~~ nil) ifTrue: [recoveredBlock143Block154PC := 240] ifFalse: [recoveredBlock143Block154PC := 220].
        ].
        recoveredBlock143Block154Step = 220 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154PC := 223.
        ].
        recoveredBlock143Block154Step = 223 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Local2.
            recoveredBlock143Block154PC := 226.
        ].
        recoveredBlock143Block154Step = 226 ifTrue: [
            recoveredBlock143Block154Stack3 := recoveredBlock143Block154Local1.
            recoveredBlock143Block154PC := 229.
        ].
        recoveredBlock143Block154Step = 229 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) createProject: (recoveredBlock143Block154Stack2) file: (recoveredBlock143Block154Stack3).
            recoveredBlock143Block154PC := 231.
        ].
        recoveredBlock143Block154Step = 231 ifTrue: [
            (recoveredBlock143Block154Stack1 ~~ nil) ifTrue: [recoveredBlock143Block154PC := 236] ifFalse: [recoveredBlock143Block154PC := 234].
        ].
        recoveredBlock143Block154Step = 234 ifTrue: [
            recoveredBlock143Block154Stack1 := nil.
            recoveredBlock143Block154PC := 235.
        ].
        recoveredBlock143Block154Step = 235 ifTrue: [
            ^recoveredBlock143Block154Stack1
        ].
        recoveredBlock143Block154Step = 236 ifTrue: [
            recoveredBlock143Block154Stack1 := true.
            recoveredBlock143Block154PC := 237.
        ].
        recoveredBlock143Block154Step = 237 ifTrue: [
            recoveredBlock143Block154Local4 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 240.
        ].
        recoveredBlock143Block154Step = 240 ifTrue: [
            recoveredBlock143Block154Stack1 := nil.
            recoveredBlock143Block154PC := 241.
        ].
        recoveredBlock143Block154Step = 241 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 242.
        ].
        recoveredBlock143Block154Step = 242 ifTrue: [
            recoveredBlock143Block154Local3 := recoveredBlock143Block154Stack2.
            recoveredBlock143Block154PC := 245.
        ].
        recoveredBlock143Block154Step = 245 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 246.
        ].
        recoveredBlock143Block154Step = 246 ifTrue: [
            recoveredBlock143Block154Local2 := recoveredBlock143Block154Stack2.
            recoveredBlock143Block154PC := 249.
        ].
        recoveredBlock143Block154Step = 249 ifTrue: [
            recoveredBlock143Block154Local1 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 252.
        ].
        recoveredBlock143Block154Step = 252 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154PC := 255.
        ].
        recoveredBlock143Block154Step = 255 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) hasProject.
            recoveredBlock143Block154PC := 257.
        ].
        recoveredBlock143Block154Step = 257 ifTrue: [
            (recoveredBlock143Block154Stack1) ifTrue: [recoveredBlock143Block154PC := 260] ifFalse: [recoveredBlock143Block154PC := 386].
        ].
        recoveredBlock143Block154Step = 260 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154PC := 263.
        ].
        recoveredBlock143Block154Step = 263 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) project.
            recoveredBlock143Block154PC := 264.
        ].
        recoveredBlock143Block154Step = 264 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154PC := 265.
        ].
        recoveredBlock143Block154Step = 265 ifTrue: [
            recoveredBlock143Block154Local5 := recoveredBlock143Block154Stack2.
            recoveredBlock143Block154PC := 268.
        ].
        recoveredBlock143Block154Step = 268 ifTrue: [
            (recoveredBlock143Block154Stack1 ~~ nil) ifTrue: [recoveredBlock143Block154PC := 274] ifFalse: [recoveredBlock143Block154PC := 272].
        ].
        recoveredBlock143Block154Step = 272 ifTrue: [
            recoveredBlock143Block154Stack1 := nil.
            recoveredBlock143Block154PC := 273.
        ].
        recoveredBlock143Block154Step = 273 ifTrue: [
            ^recoveredBlock143Block154Stack1
        ].
        recoveredBlock143Block154Step = 274 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Local4.
            recoveredBlock143Block154PC := 277.
        ].
        recoveredBlock143Block154Step = 277 ifTrue: [
            (recoveredBlock143Block154Stack1) ifTrue: [recoveredBlock143Block154PC := 280] ifFalse: [recoveredBlock143Block154PC := 310].
        ].
        recoveredBlock143Block154Step = 280 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Block154Local5.
            recoveredBlock143Block154PC := 283.
        ].
        recoveredBlock143Block154Step = 283 ifTrue: [
            (recoveredBlock143Block154Stack1) save.
            recoveredBlock143Block154PC := 285.
        ].
        recoveredBlock143Block154Step = 285 ifTrue: [
            recoveredBlock143Block154Stack1 := self.
            recoveredBlock143Block154PC := 286.
        ].
        recoveredBlock143Block154Step = 286 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) eHooksConfig.
            recoveredBlock143Block154PC := 288.
        ].
        recoveredBlock143Block154Step = 288 ifTrue: [
            recoveredBlock143Block154Stack2 := [
    | recoveredBlock143Block154Block288Value0 recoveredBlock143Block154Block288Value1 recoveredBlock143Block154Block288Value2 recoveredBlock143Block154Block288Value3 |
    recoveredBlock143Block154Block288Value0 := (self) eHooksConfig.
    recoveredBlock143Block154Block288Value1 := recoveredBlock143Block154Local5.
    recoveredBlock143Block154Block288Value2 := (recoveredBlock143Block154Block288Value1) identifier.
    recoveredBlock143Block154Block288Value3 := (recoveredBlock143Block154Block288Value0) setIdentifier: (recoveredBlock143Block154Block288Value2).
    recoveredBlock143Block154Block288Value3
].
            recoveredBlock143Block154PC := 304.
        ].
        recoveredBlock143Block154Step = 304 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) ifNotNil: (recoveredBlock143Block154Stack2).
            recoveredBlock143Block154PC := 306.
        ].
        recoveredBlock143Block154Step = 306 ifTrue: [
            recoveredBlock143Block154PC := 382.
        ].
        recoveredBlock143Block154Step = 310 ifTrue: [
            recoveredBlock143Block154Stack1 := recoveredBlock143Arg1.
            recoveredBlock143Block154PC := 313.
        ].
        recoveredBlock143Block154Step = 313 ifTrue: [
            recoveredBlock143Block154Stack2 := recoveredBlock143Block154Local5.
            recoveredBlock143Block154PC := 316.
        ].
        recoveredBlock143Block154Step = 316 ifTrue: [
            recoveredBlock143Block154Stack3 := recoveredLocal2.
            recoveredBlock143Block154PC := 319.
        ].
        recoveredBlock143Block154Step = 319 ifTrue: [
            recoveredBlock143Block154Stack4 := [:recoveredBlock143Block154Block319Arg1 :recoveredBlock143Block154Block319Arg2 :recoveredBlock143Block154Block319Arg3 | 
    | recoveredBlock143Block154Block319Local1 recoveredBlock143Block154Block319Stack0 recoveredBlock143Block154Block319Stack1 recoveredBlock143Block154Block319Stack2 recoveredBlock143Block154Block319Stack3 recoveredBlock143Block154Block319Stack4 recoveredBlock143Block154Block319PC recoveredBlock143Block154Block319Step recoveredBlock143Block154Block319Done recoveredBlock143Block154Block319Result |
    recoveredBlock143Block154Block319Stack0 := self.
    recoveredBlock143Block154Block319PC := 326.
    recoveredBlock143Block154Block319Done := false.
    [recoveredBlock143Block154Block319Done not] whileTrue: [
        recoveredBlock143Block154Block319Step := recoveredBlock143Block154Block319PC.
        recoveredBlock143Block154Block319Step = 326 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := recoveredArg1.
            recoveredBlock143Block154Block319PC := 329.
        ].
        recoveredBlock143Block154Block319Step = 329 ifTrue: [
            (recoveredBlock143Block154Block319Stack1) ifTrue: [recoveredBlock143Block154Block319PC := 332] ifFalse: [recoveredBlock143Block154Block319PC := 377].
        ].
        recoveredBlock143Block154Block319Step = 332 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154Block319PC := 335.
        ].
        recoveredBlock143Block154Block319Step = 335 ifTrue: [
            (recoveredBlock143Block154Block319Stack1) hide.
            recoveredBlock143Block154Block319PC := 337.
        ].
        recoveredBlock143Block154Block319Step = 337 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := RBUserInfo.
            recoveredBlock143Block154Block319PC := 339.
        ].
        recoveredBlock143Block154Block319Step = 339 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := 'Specify valid '.
            recoveredBlock143Block154Block319PC := 341.
        ].
        recoveredBlock143Block154Block319Step = 341 ifTrue: [
            recoveredBlock143Block154Block319Stack3 := recoveredBlock143Block154Block319Arg1.
            recoveredBlock143Block154Block319PC := 342.
        ].
        recoveredBlock143Block154Block319Step = 342 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) , (recoveredBlock143Block154Block319Stack3).
            recoveredBlock143Block154Block319PC := 344.
        ].
        recoveredBlock143Block154Block319Step = 344 ifTrue: [
            recoveredBlock143Block154Block319Stack3 := ' for '.
            recoveredBlock143Block154Block319PC := 346.
        ].
        recoveredBlock143Block154Block319Step = 346 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) , (recoveredBlock143Block154Block319Stack3).
            recoveredBlock143Block154Block319PC := 348.
        ].
        recoveredBlock143Block154Block319Step = 348 ifTrue: [
            recoveredBlock143Block154Block319Stack3 := recoveredBlock143Block154Block319Arg2.
            recoveredBlock143Block154Block319PC := 349.
        ].
        recoveredBlock143Block154Block319Step = 349 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) , (recoveredBlock143Block154Block319Stack3).
            recoveredBlock143Block154Block319PC := 351.
        ].
        recoveredBlock143Block154Block319Step = 351 ifTrue: [
            recoveredBlock143Block154Block319Stack3 := ' ('.
            recoveredBlock143Block154Block319PC := 353.
        ].
        recoveredBlock143Block154Block319Step = 353 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) , (recoveredBlock143Block154Block319Stack3).
            recoveredBlock143Block154Block319PC := 355.
        ].
        recoveredBlock143Block154Block319Step = 355 ifTrue: [
            recoveredBlock143Block154Block319Stack3 := recoveredBlock143Block154Block319Arg3.
            recoveredBlock143Block154Block319PC := 356.
        ].
        recoveredBlock143Block154Block319Step = 356 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) , (recoveredBlock143Block154Block319Stack3).
            recoveredBlock143Block154Block319PC := 358.
        ].
        recoveredBlock143Block154Block319Step = 358 ifTrue: [
            recoveredBlock143Block154Block319Stack3 := ' not found) in current configuration.'.
            recoveredBlock143Block154Block319PC := 360.
        ].
        recoveredBlock143Block154Block319Step = 360 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) , (recoveredBlock143Block154Block319Stack3).
            recoveredBlock143Block154Block319PC := 362.
        ].
        recoveredBlock143Block154Block319Step = 362 ifTrue: [
            recoveredBlock143Block154Block319Stack2 := (recoveredBlock143Block154Block319Stack2) withCrLfs.
            recoveredBlock143Block154Block319PC := 364.
        ].
        recoveredBlock143Block154Block319Step = 364 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := (recoveredBlock143Block154Block319Stack1) message: (recoveredBlock143Block154Block319Stack2).
            recoveredBlock143Block154Block319PC := 366.
        ].
        recoveredBlock143Block154Block319Step = 366 ifTrue: [
            recoveredBlock143Block154Block319Local1 := recoveredBlock143Block154Block319Stack1.
            recoveredBlock143Block154Block319PC := 367.
        ].
        recoveredBlock143Block154Block319Step = 367 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := recoveredBlock143Block154Block319Local1.
            recoveredBlock143Block154Block319PC := 368.
        ].
        recoveredBlock143Block154Block319Step = 368 ifTrue: [
            (recoveredBlock143Block154Block319Stack1) prompt.
            recoveredBlock143Block154Block319PC := 370.
        ].
        recoveredBlock143Block154Block319Step = 370 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := recoveredBlock143Block154Arg1.
            recoveredBlock143Block154Block319PC := 373.
        ].
        recoveredBlock143Block154Block319Step = 373 ifTrue: [
            (recoveredBlock143Block154Block319Stack1) show.
            recoveredBlock143Block154Block319PC := 375.
        ].
        recoveredBlock143Block154Block319Step = 375 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := nil.
            recoveredBlock143Block154Block319PC := 376.
        ].
        recoveredBlock143Block154Block319Step = 376 ifTrue: [
            recoveredBlock143Block154Block319Local1 := recoveredBlock143Block154Block319Stack1.
            recoveredBlock143Block154Block319PC := 377.
        ].
        recoveredBlock143Block154Block319Step = 377 ifTrue: [
            recoveredBlock143Block154Block319Stack1 := nil.
            recoveredBlock143Block154Block319PC := 378.
        ].
        recoveredBlock143Block154Block319Step = 378 ifTrue: [
            ^recoveredBlock143Block154Block319Stack1
        ].
    ].
    recoveredBlock143Block154Block319Result
].
            recoveredBlock143Block154PC := 379.
        ].
        recoveredBlock143Block154Step = 379 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) checkEHooksProjectInputFiles: (recoveredBlock143Block154Stack2) monitorStream: (recoveredBlock143Block154Stack3) ifFail: (recoveredBlock143Block154Stack4).
            recoveredBlock143Block154PC := 382.
        ].
        recoveredBlock143Block154Step = 382 ifTrue: [
            recoveredBlock143Block154PC := 406.
        ].
        recoveredBlock143Block154Step = 386 ifTrue: [
            recoveredBlock143Block154Stack1 := RBUserInfo.
            recoveredBlock143Block154PC := 388.
        ].
        recoveredBlock143Block154Step = 388 ifTrue: [
            recoveredBlock143Block154Stack2 := 'Invalid EHOOKS configuration for selected EHOOKS-DEV tool. \Please check EHOOKS-DEV Application Log for more information'.
            recoveredBlock143Block154PC := 390.
        ].
        recoveredBlock143Block154Step = 390 ifTrue: [
            recoveredBlock143Block154Stack2 := (recoveredBlock143Block154Stack2) withCrs.
            recoveredBlock143Block154PC := 392.
        ].
        recoveredBlock143Block154Step = 392 ifTrue: [
            recoveredBlock143Block154Stack3 := self.
            recoveredBlock143Block154PC := 393.
        ].
        recoveredBlock143Block154Step = 393 ifTrue: [
            recoveredBlock143Block154Stack3 := (recoveredBlock143Block154Stack3) eHooksConfig.
            recoveredBlock143Block154PC := 395.
        ].
        recoveredBlock143Block154Step = 395 ifTrue: [
            recoveredBlock143Block154Stack3 := (recoveredBlock143Block154Stack3) configFileName.
            recoveredBlock143Block154PC := 397.
        ].
        recoveredBlock143Block154Step = 397 ifTrue: [
            recoveredBlock143Block154Stack3 := (recoveredBlock143Block154Stack3) asFilename.
            recoveredBlock143Block154PC := 399.
        ].
        recoveredBlock143Block154Step = 399 ifTrue: [
            recoveredBlock143Block154Stack2 := (recoveredBlock143Block154Stack2) bindWith: (recoveredBlock143Block154Stack3).
            recoveredBlock143Block154PC := 401.
        ].
        recoveredBlock143Block154Step = 401 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) message: (recoveredBlock143Block154Stack2).
            recoveredBlock143Block154PC := 403.
        ].
        recoveredBlock143Block154Step = 403 ifTrue: [
            recoveredBlock143Block154Stack1 := (recoveredBlock143Block154Stack1) prompt.
            recoveredBlock143Block154PC := 405.
        ].
        recoveredBlock143Block154Step = 405 ifTrue: [
            ^recoveredBlock143Block154Stack1
        ].
        recoveredBlock143Block154Step = 406 ifTrue: [
            recoveredBlock143Block154Result := recoveredBlock143Block154Stack1.
            recoveredBlock143Block154Done := true.
        ].
    ].
    recoveredBlock143Block154Result
].
    recoveredBlock143Value3 := (recoveredBlock143Value1) ifNotNil: (recoveredBlock143Value2).
    recoveredBlock143Value3
].
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064ec6c; bytecode file offset 0xf4b680"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal7.
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
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'fileNameLabel'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:block28122b18Arg1 | 
    | block28122b18Value0 block28122b18Value1 block28122b18Value2 block28122b18Value3 block28122b18Value4 |
    block28122b18Value0 := block28122b18Arg1.
    block28122b18Value1 := block28122b18Value0.
    block28122b18Value2 := XmALIGNMENTBEGINNING.
    (block28122b18Value1) alignment: (block28122b18Value2).
    block28122b18Value3 := block28122b18Value0.
    (block28122b18Value3) labelString: ('Configuration file').
    block28122b18Value4 := block28122b18Value0.
    (block28122b18Value4) width: (100).
    block28122b18Value0
].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 'fileNameField'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:block28122b3cArg1 | 
    | block28122b3cValue0 block28122b3cValue1 |
    block28122b3cValue0 := block28122b3cArg1.
    block28122b3cValue1 := (block28122b3cValue0) width: (400).
    block28122b3cValue1
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) manageChild.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'widgetFileNameField'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := 'edit'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := [:block28122b60Arg1 | 
    | block28122b60Value0 block28122b60Value1 block28122b60Value2 block28122b60Value3 |
    block28122b60Value0 := block28122b60Arg1.
    block28122b60Value1 := block28122b60Value0.
    (block28122b60Value1) recomputeSize: (false).
    block28122b60Value2 := block28122b60Value0.
    (block28122b60Value2) labelString: ('Change File').
    block28122b60Value3 := (block28122b60Value0) width: (110).
    block28122b60Value3
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 'widgetEditButton'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 'EHOOKS'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := [:recoveredBlock145Arg1 | 
    | recoveredBlock145Value0 recoveredBlock145Value1 recoveredBlock145Value2 recoveredBlock145Value3 recoveredBlock145Value4 recoveredBlock145Value5 recoveredBlock145Value6 recoveredBlock145Value7 recoveredBlock145Value8 |
    recoveredBlock145Value0 := recoveredBlock145Arg1.
    recoveredBlock145Value1 := recoveredBlock145Value0.
    (recoveredBlock145Value1) height: (24).
    recoveredBlock145Value2 := recoveredBlock145Value0.
    (recoveredBlock145Value2) width: (24).
    recoveredBlock145Value3 := recoveredBlock145Value0.
    recoveredBlock145Value4 := XmICON.
    (recoveredBlock145Value3) labelType: (recoveredBlock145Value4).
    recoveredBlock145Value5 := recoveredBlock145Value0.
    (recoveredBlock145Value5) recomputeSize: (false).
    recoveredBlock145Value6 := recoveredBlock145Value0.
    recoveredBlock145Value7 := (self) resourceManager.
    recoveredBlock145Value8 := (recoveredBlock145Value7) returnIconWithName: ('EHOOKS').
    (recoveredBlock145Value6) labelIcon: (recoveredBlock145Value8).
    recoveredBlock145Value0
].
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := 'widgetEHooksButton'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := 'startEHooks'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := [:recoveredBlock206Arg1 | 
    | recoveredBlock206Value0 recoveredBlock206Value1 recoveredBlock206Value2 recoveredBlock206Value3 recoveredBlock206Value4 recoveredBlock206Value5 |
    recoveredBlock206Value0 := recoveredBlock206Arg1.
    recoveredBlock206Value1 := recoveredBlock206Value0.
    recoveredBlock206Value2 := (self) isValidEHooksConfiguration.
    (recoveredBlock206Value1) sensitive: (recoveredBlock206Value2).
    recoveredBlock206Value3 := recoveredBlock206Value0.
    (recoveredBlock206Value3) recomputeSize: (false).
    recoveredBlock206Value4 := recoveredBlock206Value0.
    (recoveredBlock206Value4) labelString: ('Start EHOOKS').
    recoveredBlock206Value5 := (recoveredBlock206Value0) width: (110).
    recoveredBlock206Value5
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := 'widgetEHooksStartButton'.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := 'widgetNotebook'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := [:block28122b84Arg1 | 
    nil
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasTabStrip: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := 'notebook'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack0) createTabScheduling: (recoveredStack1) parent: (recoveredStack2).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            (recoveredStack0) createTabInput.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack0) createTabOutput.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack1 := [:block28122ba8Arg1 | 
    | block28122ba8Value0 block28122ba8Value1 block28122ba8Value2 block28122ba8Value3 block28122ba8Value4 block28122ba8Value5 block28122ba8Value6 block28122ba8Value7 block28122ba8Value8 |
    block28122ba8Value0 := block28122ba8Arg1.
    block28122ba8Value1 := block28122ba8Value0.
    block28122ba8Value2 := XmATTACHFORM.
    (block28122ba8Value1) topAttachment: (block28122ba8Value2).
    block28122ba8Value3 := block28122ba8Value0.
    (block28122ba8Value3) topOffset: (7).
    block28122ba8Value4 := block28122ba8Value0.
    block28122ba8Value5 := XmATTACHFORM.
    (block28122ba8Value4) leftAttachment: (block28122ba8Value5).
    block28122ba8Value6 := block28122ba8Value0.
    (block28122ba8Value6) leftOffset: (5).
    block28122ba8Value7 := XmATTACHNONE.
    block28122ba8Value8 := (block28122ba8Value0) rightAttachment: (block28122ba8Value7).
    block28122ba8Value8
].
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := [:recoveredBlock339Arg1 | 
    | recoveredBlock339Value0 recoveredBlock339Value1 recoveredBlock339Value2 recoveredBlock339Value3 recoveredBlock339Value4 recoveredBlock339Value5 recoveredBlock339Value6 recoveredBlock339Value7 recoveredBlock339Value8 recoveredBlock339Value9 recoveredBlock339Value10 recoveredBlock339Value11 recoveredBlock339Value12 |
    recoveredBlock339Value0 := recoveredBlock339Arg1.
    recoveredBlock339Value1 := recoveredBlock339Value0.
    recoveredBlock339Value2 := XmATTACHFORM.
    (recoveredBlock339Value1) topAttachment: (recoveredBlock339Value2).
    recoveredBlock339Value3 := recoveredBlock339Value0.
    (recoveredBlock339Value3) topOffset: (7).
    recoveredBlock339Value4 := recoveredBlock339Value0.
    recoveredBlock339Value5 := XmATTACHWIDGET.
    (recoveredBlock339Value4) leftAttachment: (recoveredBlock339Value5).
    recoveredBlock339Value6 := recoveredBlock339Value0.
    recoveredBlock339Value7 := recoveredLocal5.
    (recoveredBlock339Value6) leftWidget: (recoveredBlock339Value7).
    recoveredBlock339Value8 := recoveredBlock339Value0.
    recoveredBlock339Value9 := XmATTACHWIDGET.
    (recoveredBlock339Value8) rightAttachment: (recoveredBlock339Value9).
    recoveredBlock339Value10 := recoveredBlock339Value0.
    recoveredBlock339Value11 := recoveredLocal3.
    (recoveredBlock339Value10) rightWidget: (recoveredBlock339Value11).
    recoveredBlock339Value12 := (recoveredBlock339Value0) rightOffset: (5).
    recoveredBlock339Value12
].
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack1 := [:recoveredBlock395Arg1 | 
    | recoveredBlock395Value0 recoveredBlock395Value1 recoveredBlock395Value2 recoveredBlock395Value3 recoveredBlock395Value4 recoveredBlock395Value5 recoveredBlock395Value6 recoveredBlock395Value7 recoveredBlock395Value8 recoveredBlock395Value9 recoveredBlock395Value10 |
    recoveredBlock395Value0 := recoveredBlock395Arg1.
    recoveredBlock395Value1 := recoveredBlock395Value0.
    recoveredBlock395Value2 := XmATTACHFORM.
    (recoveredBlock395Value1) topAttachment: (recoveredBlock395Value2).
    recoveredBlock395Value3 := recoveredBlock395Value0.
    (recoveredBlock395Value3) topOffset: (5).
    recoveredBlock395Value4 := recoveredBlock395Value0.
    recoveredBlock395Value5 := XmATTACHNONE.
    (recoveredBlock395Value4) leftAttachment: (recoveredBlock395Value5).
    recoveredBlock395Value6 := recoveredBlock395Value0.
    recoveredBlock395Value7 := XmATTACHWIDGET.
    (recoveredBlock395Value6) rightAttachment: (recoveredBlock395Value7).
    recoveredBlock395Value8 := recoveredBlock395Value0.
    recoveredBlock395Value9 := recoveredLocal2.
    (recoveredBlock395Value8) rightWidget: (recoveredBlock395Value9).
    recoveredBlock395Value10 := (recoveredBlock395Value0) rightOffset: (42).
    recoveredBlock395Value10
].
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := [:recoveredBlock443Arg1 | 
    | recoveredBlock443Value0 recoveredBlock443Value1 recoveredBlock443Value2 recoveredBlock443Value3 recoveredBlock443Value4 recoveredBlock443Value5 recoveredBlock443Value6 recoveredBlock443Value7 recoveredBlock443Value8 recoveredBlock443Value9 recoveredBlock443Value10 |
    recoveredBlock443Value0 := recoveredBlock443Arg1.
    recoveredBlock443Value1 := recoveredBlock443Value0.
    recoveredBlock443Value2 := XmATTACHFORM.
    (recoveredBlock443Value1) topAttachment: (recoveredBlock443Value2).
    recoveredBlock443Value3 := recoveredBlock443Value0.
    (recoveredBlock443Value3) topOffset: (5).
    recoveredBlock443Value4 := recoveredBlock443Value0.
    recoveredBlock443Value5 := XmATTACHNONE.
    (recoveredBlock443Value4) leftAttachment: (recoveredBlock443Value5).
    recoveredBlock443Value6 := recoveredBlock443Value0.
    recoveredBlock443Value7 := XmATTACHWIDGET.
    (recoveredBlock443Value6) rightAttachment: (recoveredBlock443Value7).
    recoveredBlock443Value8 := recoveredBlock443Value0.
    recoveredBlock443Value9 := recoveredLocal1.
    (recoveredBlock443Value8) rightWidget: (recoveredBlock443Value9).
    recoveredBlock443Value10 := (recoveredBlock443Value0) rightOffset: (5).
    recoveredBlock443Value10
].
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack1 := [:block28122bccArg1 | 
    | block28122bccValue0 block28122bccValue1 block28122bccValue2 block28122bccValue3 block28122bccValue4 block28122bccValue5 block28122bccValue6 block28122bccValue7 block28122bccValue8 |
    block28122bccValue0 := block28122bccArg1.
    block28122bccValue1 := block28122bccValue0.
    block28122bccValue2 := XmATTACHFORM.
    (block28122bccValue1) topAttachment: (block28122bccValue2).
    block28122bccValue3 := block28122bccValue0.
    (block28122bccValue3) topOffset: (5).
    block28122bccValue4 := block28122bccValue0.
    block28122bccValue5 := XmATTACHNONE.
    (block28122bccValue4) leftAttachment: (block28122bccValue5).
    block28122bccValue6 := block28122bccValue0.
    block28122bccValue7 := XmATTACHFORM.
    (block28122bccValue6) rightAttachment: (block28122bccValue7).
    block28122bccValue8 := (block28122bccValue0) rightOffset: (5).
    block28122bccValue8
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            recoveredStack1 := [:recoveredBlock531Arg1 | 
    | recoveredBlock531Value0 recoveredBlock531Value1 recoveredBlock531Value2 recoveredBlock531Value3 recoveredBlock531Value4 recoveredBlock531Value5 recoveredBlock531Value6 recoveredBlock531Value7 recoveredBlock531Value8 recoveredBlock531Value9 recoveredBlock531Value10 recoveredBlock531Value11 recoveredBlock531Value12 recoveredBlock531Value13 recoveredBlock531Value14 |
    recoveredBlock531Value0 := recoveredBlock531Arg1.
    recoveredBlock531Value1 := recoveredBlock531Value0.
    recoveredBlock531Value2 := XmATTACHWIDGET.
    (recoveredBlock531Value1) topAttachment: (recoveredBlock531Value2).
    recoveredBlock531Value3 := recoveredBlock531Value0.
    recoveredBlock531Value4 := recoveredLocal1.
    (recoveredBlock531Value3) topWidget: (recoveredBlock531Value4).
    recoveredBlock531Value5 := recoveredBlock531Value0.
    (recoveredBlock531Value5) topOffset: (3).
    recoveredBlock531Value6 := recoveredBlock531Value0.
    recoveredBlock531Value7 := XmATTACHFORM.
    (recoveredBlock531Value6) leftAttachment: (recoveredBlock531Value7).
    recoveredBlock531Value8 := recoveredBlock531Value0.
    (recoveredBlock531Value8) leftOffset: (0).
    recoveredBlock531Value9 := recoveredBlock531Value0.
    recoveredBlock531Value10 := XmATTACHFORM.
    (recoveredBlock531Value9) bottomAttachment: (recoveredBlock531Value10).
    recoveredBlock531Value11 := recoveredBlock531Value0.
    (recoveredBlock531Value11) bottomOffset: (0).
    recoveredBlock531Value12 := recoveredBlock531Value0.
    recoveredBlock531Value13 := XmATTACHFORM.
    (recoveredBlock531Value12) rightAttachment: (recoveredBlock531Value13).
    recoveredBlock531Value14 := (recoveredBlock531Value0) rightOffset: (0).
    recoveredBlock531Value14
].
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack3 := 'resizeTabStrip:clientData:callData:'.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := XmNmodifyVerifyCallback.
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack3 := 'modifyVerifyTabStrip:clientData:callData:'.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 625.
        ].
        recoveredStep = 625 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack3 := 'singleSelectionTabStrip:clientData:callData:'.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 641.
        ].
        recoveredStep = 641 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            recoveredStack3 := 'widgetEditButton:clientData:callData:'.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack3 := 'openEHooksButtonMenu:clientData:callData:'.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 669.
        ].
        recoveredStep = 669 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 676.
        ].
        recoveredStep = 676 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack3 := 'widgetEHooksStartButton:clientData:callData:'.
            recoveredPC := 684.
        ].
        recoveredStep = 684 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack1 := XmNdestroyCallback.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredStack3 := 'eHooksWidgetDestroy:clientData:callData:'.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 703.
        ].
        recoveredStep = 703 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack1 := XmNfocusCallback.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack3 := 'widgetEHooksFocus:clientData:callData:'.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := PointerMotionMask.
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack3 := 'motion:clientData:event:'.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            recoveredStack0 := RBUserInterface.
            recoveredPC := 734.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack0 := (recoveredStack0) bubbleHelpManager.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack1 := 'Open EHOOKS functions'.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            (recoveredStack0) addHelpString: (recoveredStack1) forWidget: (recoveredStack2).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a39ac; bytecode file offset 0xfa0474"
!ASDEHooksSpecificationWidget methodsFor: 'recovered'!
createTabScheduling: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal18 := recoveredStack0.
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
            recoveredStack2 := recoveredLocal18.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsForm'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:block2812e8f0Arg1 | 
    | block2812e8f0Value0 |
    block2812e8f0Value0 := block2812e8f0Arg1.
    block2812e8f0Value0
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
            recoveredLocal6 := recoveredStack0.
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
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'Dispatch point'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) inForm: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 'dispatchPointLabel'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'dispatchPoint'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := [:block2812e914Arg1 | 
    | block2812e914Value0 block2812e914Value1 |
    block2812e914Value0 := block2812e914Arg1.
    block2812e914Value1 := (block2812e914Value0) height: (25).
    block2812e914Value1
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 'dispatchPoint'.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'Period'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) inForm: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := 'periodLabel'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) attachWidget: (recoveredStack1) leftToFormTopTo: (recoveredStack2) topOffset: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := [:block2812e938Arg1 | 
    | block2812e938Value0 block2812e938Value1 |
    block2812e938Value0 := block2812e938Arg1.
    block2812e938Value1 := (block2812e938Value0) height: (22).
    block2812e938Value1
].
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEnhancedText: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := 'period'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) attachWidget: (recoveredStack1) rightToFormTopTo: (recoveredStack2) rightOffset: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack0) createSecondLabelBeside: (recoveredStack1) form: (recoveredStack2) widgetDictionary: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := 'processForm'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal17 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := 'processForm'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := 'processesLabel'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:block2812e95cArg1 | 
    | block2812e95cValue0 block2812e95cValue1 block2812e95cValue2 block2812e95cValue3 block2812e95cValue4 block2812e95cValue5 |
    block2812e95cValue0 := block2812e95cArg1.
    block2812e95cValue1 := block2812e95cValue0.
    block2812e95cValue2 := XmALIGNMENTBEGINNING.
    (block2812e95cValue1) alignment: (block2812e95cValue2).
    block2812e95cValue3 := block2812e95cValue0.
    (block2812e95cValue3) labelString: ('Processes').
    block2812e95cValue4 := block2812e95cValue0.
    (block2812e95cValue4) height: (20).
    block2812e95cValue5 := block2812e95cValue0.
    (block2812e95cValue5) width: (230).
    block2812e95cValue0
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal16 := recoveredStack0.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := 'processesLabel'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := 'processes'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := [:recoveredBlock285Arg1 | 
    | recoveredBlock285Value0 recoveredBlock285Value1 recoveredBlock285Value2 recoveredBlock285Value3 recoveredBlock285Value4 recoveredBlock285Value5 recoveredBlock285Value6 |
    recoveredBlock285Value0 := recoveredBlock285Arg1.
    recoveredBlock285Value1 := recoveredBlock285Value0.
    recoveredBlock285Value2 := SGUserInterfaceSettings.
    recoveredBlock285Value3 := (self) resourceManager.
    recoveredBlock285Value4 := (recoveredBlock285Value2) iconHierarchyPolicy: (recoveredBlock285Value3).
    (recoveredBlock285Value1) hierarchyPolicy: (recoveredBlock285Value4).
    recoveredBlock285Value5 := XmEXTENDEDSELECT.
    recoveredBlock285Value6 := (recoveredBlock285Value0) selectionPolicy: (recoveredBlock285Value5).
    recoveredBlock285Value6
].
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := 'processesScrolledList'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack1 := 'processes'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := 'addProcess'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := [:block2812e980Arg1 | 
    | block2812e980Value0 block2812e980Value1 block2812e980Value2 block2812e980Value3 |
    block2812e980Value0 := block2812e980Arg1.
    block2812e980Value1 := block2812e980Value0.
    (block2812e980Value1) labelString: ('>>').
    block2812e980Value2 := block2812e980Value0.
    (block2812e980Value2) height: (30).
    block2812e980Value3 := (block2812e980Value0) width: (40).
    block2812e980Value3
].
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := 'addProcess'.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := 'removeProcess'.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := [:block2812e9a4Arg1 | 
    | block2812e9a4Value0 block2812e9a4Value1 block2812e9a4Value2 block2812e9a4Value3 |
    block2812e9a4Value0 := block2812e9a4Arg1.
    block2812e9a4Value1 := block2812e9a4Value0.
    (block2812e9a4Value1) labelString: ('<<').
    block2812e9a4Value2 := block2812e9a4Value0.
    (block2812e9a4Value2) height: (30).
    block2812e9a4Value3 := (block2812e9a4Value0) width: (40).
    block2812e9a4Value3
].
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := 'removeProcess'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := 'bypassFuncForm'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack1 := 'bypassFuncForm'.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := 'bypassFuncLabel'.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := [:block2812e9c8Arg1 | 
    | block2812e9c8Value0 block2812e9c8Value1 block2812e9c8Value2 block2812e9c8Value3 |
    block2812e9c8Value0 := block2812e9c8Arg1.
    block2812e9c8Value1 := block2812e9c8Value0.
    block2812e9c8Value2 := XmALIGNMENTBEGINNING.
    (block2812e9c8Value1) alignment: (block2812e9c8Value2).
    block2812e9c8Value3 := block2812e9c8Value0.
    (block2812e9c8Value3) labelString: ('Bypass function').
    block2812e9c8Value0
].
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack1 := 'bypassFuncLabel'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsLabel'.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := [:block2812e9ecArg1 | 
    | block2812e9ecValue0 block2812e9ecValue1 block2812e9ecValue2 block2812e9ecValue3 |
    block2812e9ecValue0 := block2812e9ecArg1.
    block2812e9ecValue1 := block2812e9ecValue0.
    (block2812e9ecValue1) labelString: ('Settings').
    block2812e9ecValue2 := block2812e9ecValue0.
    block2812e9ecValue3 := XmALIGNMENTBEGINNING.
    (block2812e9ecValue2) alignment: (block2812e9ecValue3).
    block2812e9ecValue0
].
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredPC := 532.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack1 := 'bypassFuncSettingsLabel'.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := 'Bypass function'.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := [:recoveredBlock558Arg1 | 
    | recoveredBlock558Value0 recoveredBlock558Value1 recoveredBlock558Value2 recoveredBlock558Value3 recoveredBlock558Value4 recoveredBlock558Value5 recoveredBlock558Value6 |
    recoveredBlock558Value0 := recoveredBlock558Arg1.
    recoveredBlock558Value1 := recoveredBlock558Value0.
    recoveredBlock558Value2 := SGUserInterfaceSettings.
    recoveredBlock558Value3 := (self) resourceManager.
    recoveredBlock558Value4 := (recoveredBlock558Value2) iconHierarchyPolicy: (recoveredBlock558Value3).
    (recoveredBlock558Value1) hierarchyPolicy: (recoveredBlock558Value4).
    recoveredBlock558Value5 := XmEXTENDEDSELECT.
    recoveredBlock558Value6 := (recoveredBlock558Value0) selectionPolicy: (recoveredBlock558Value5).
    recoveredBlock558Value6
].
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasScrolledIconTree: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack1 := 'bypassFuncsScrolledList'.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 607.
        ].
        recoveredStep = 607 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack1 := 'bypassFuncs'.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack0 := recoveredLocal18.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := 'unused'.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack2 := [:block2812ea10Arg1 | 
    | block2812ea10Value0 block2812ea10Value1 block2812ea10Value2 block2812ea10Value3 block2812ea10Value4 block2812ea10Value5 |
    block2812ea10Value0 := block2812ea10Arg1.
    block2812ea10Value1 := block2812ea10Value0.
    block2812ea10Value2 := XmALIGNMENTBEGINNING.
    (block2812ea10Value1) alignment: (block2812ea10Value2).
    block2812ea10Value3 := block2812ea10Value0.
    (block2812ea10Value3) labelString: ('Unused processes only').
    block2812ea10Value4 := block2812ea10Value0.
    (block2812ea10Value4) height: (20).
    block2812ea10Value5 := block2812ea10Value0.
    (block2812ea10Value5) width: (125).
    block2812ea10Value0
].
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            recoveredStack0 := (recoveredStack0) createToggleButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            recoveredStack1 := 'unused'.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := [:recoveredBlock682Arg1 | 
    | recoveredBlock682Value0 recoveredBlock682Value1 recoveredBlock682Value2 recoveredBlock682Value3 recoveredBlock682Value4 recoveredBlock682Value5 recoveredBlock682Value6 recoveredBlock682Value7 recoveredBlock682Value8 recoveredBlock682Value9 recoveredBlock682Value10 recoveredBlock682Value11 recoveredBlock682Value12 recoveredBlock682Value13 |
    recoveredBlock682Value0 := recoveredBlock682Arg1.
    recoveredBlock682Value1 := recoveredBlock682Value0.
    recoveredBlock682Value2 := XmATTACHFORM.
    (recoveredBlock682Value1) topAttachment: (recoveredBlock682Value2).
    recoveredBlock682Value3 := recoveredBlock682Value0.
    recoveredBlock682Value4 := XmATTACHWIDGET.
    (recoveredBlock682Value3) bottomAttachment: (recoveredBlock682Value4).
    recoveredBlock682Value5 := recoveredBlock682Value0.
    recoveredBlock682Value6 := recoveredLocal7.
    (recoveredBlock682Value5) bottomWidget: (recoveredBlock682Value6).
    recoveredBlock682Value7 := recoveredBlock682Value0.
    (recoveredBlock682Value7) bottomOffset: (5).
    recoveredBlock682Value8 := recoveredBlock682Value0.
    recoveredBlock682Value9 := XmATTACHFORM.
    (recoveredBlock682Value8) leftAttachment: (recoveredBlock682Value9).
    recoveredBlock682Value10 := recoveredBlock682Value0.
    (recoveredBlock682Value10) leftOffset: (5).
    recoveredBlock682Value11 := recoveredBlock682Value0.
    recoveredBlock682Value12 := XmATTACHPOSITION.
    (recoveredBlock682Value11) rightAttachment: (recoveredBlock682Value12).
    recoveredBlock682Value13 := (recoveredBlock682Value0) rightPosition: (55).
    recoveredBlock682Value13
].
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack0 := recoveredLocal16.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack1 := [:block2812ea34Arg1 | 
    | block2812ea34Value0 block2812ea34Value1 block2812ea34Value2 block2812ea34Value3 block2812ea34Value4 block2812ea34Value5 block2812ea34Value6 |
    block2812ea34Value0 := block2812ea34Arg1.
    block2812ea34Value1 := block2812ea34Value0.
    block2812ea34Value2 := XmATTACHFORM.
    (block2812ea34Value1) topAttachment: (block2812ea34Value2).
    block2812ea34Value3 := block2812ea34Value0.
    block2812ea34Value4 := XmATTACHFORM.
    (block2812ea34Value3) leftAttachment: (block2812ea34Value4).
    block2812ea34Value5 := XmATTACHFORM.
    block2812ea34Value6 := (block2812ea34Value0) rightAttachment: (block2812ea34Value5).
    block2812ea34Value6
].
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack1 := [:recoveredBlock802Arg1 | 
    | recoveredBlock802Value0 recoveredBlock802Value1 recoveredBlock802Value2 recoveredBlock802Value3 recoveredBlock802Value4 recoveredBlock802Value5 recoveredBlock802Value6 recoveredBlock802Value7 recoveredBlock802Value8 recoveredBlock802Value9 recoveredBlock802Value10 recoveredBlock802Value11 recoveredBlock802Value12 recoveredBlock802Value13 recoveredBlock802Value14 recoveredBlock802Value15 recoveredBlock802Value16 |
    recoveredBlock802Value0 := recoveredBlock802Arg1.
    recoveredBlock802Value1 := recoveredBlock802Value0.
    recoveredBlock802Value2 := XmATTACHFORM.
    (recoveredBlock802Value1) bottomAttachment: (recoveredBlock802Value2).
    recoveredBlock802Value3 := recoveredBlock802Value0.
    recoveredBlock802Value4 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock802Value3) topAttachment: (recoveredBlock802Value4).
    recoveredBlock802Value5 := recoveredBlock802Value0.
    recoveredBlock802Value6 := recoveredLocal13.
    (recoveredBlock802Value5) topWidget: (recoveredBlock802Value6).
    recoveredBlock802Value7 := recoveredBlock802Value0.
    recoveredBlock802Value8 := XmATTACHFORM.
    (recoveredBlock802Value7) leftAttachment: (recoveredBlock802Value8).
    recoveredBlock802Value9 := recoveredBlock802Value0.
    recoveredBlock802Value10 := XmATTACHWIDGET.
    (recoveredBlock802Value9) rightAttachment: (recoveredBlock802Value10).
    recoveredBlock802Value11 := recoveredBlock802Value0.
    recoveredBlock802Value12 := recoveredLocal13.
    (recoveredBlock802Value11) rightWidget: (recoveredBlock802Value12).
    recoveredBlock802Value13 := recoveredBlock802Value0.
    (recoveredBlock802Value13) rightOffset: (5).
    recoveredBlock802Value14 := recoveredBlock802Value0.
    (recoveredBlock802Value14) y: (30).
    recoveredBlock802Value15 := recoveredBlock802Value0.
    (recoveredBlock802Value15) height: (230).
    recoveredBlock802Value16 := (recoveredBlock802Value0) width: (180).
    recoveredBlock802Value16
].
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 890.
        ].
        recoveredStep = 890 ifTrue: [
            recoveredStack1 := [:recoveredBlock890Arg1 | 
    | recoveredBlock890Value0 recoveredBlock890Value1 recoveredBlock890Value2 recoveredBlock890Value3 recoveredBlock890Value4 recoveredBlock890Value5 recoveredBlock890Value6 |
    recoveredBlock890Value0 := recoveredBlock890Arg1.
    recoveredBlock890Value1 := recoveredBlock890Value0.
    recoveredBlock890Value2 := XmATTACHWIDGET.
    (recoveredBlock890Value1) topAttachment: (recoveredBlock890Value2).
    recoveredBlock890Value3 := recoveredBlock890Value0.
    recoveredBlock890Value4 := recoveredLocal16.
    (recoveredBlock890Value3) topWidget: (recoveredBlock890Value4).
    recoveredBlock890Value5 := XmATTACHFORM.
    recoveredBlock890Value6 := (recoveredBlock890Value0) rightAttachment: (recoveredBlock890Value5).
    recoveredBlock890Value6
].
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack1 := [:recoveredBlock932Arg1 | 
    | recoveredBlock932Value0 recoveredBlock932Value1 recoveredBlock932Value2 recoveredBlock932Value3 recoveredBlock932Value4 recoveredBlock932Value5 recoveredBlock932Value6 recoveredBlock932Value7 |
    recoveredBlock932Value0 := recoveredBlock932Arg1.
    recoveredBlock932Value1 := recoveredBlock932Value0.
    recoveredBlock932Value2 := XmATTACHWIDGET.
    (recoveredBlock932Value1) topAttachment: (recoveredBlock932Value2).
    recoveredBlock932Value3 := recoveredBlock932Value0.
    recoveredBlock932Value4 := recoveredLocal13.
    (recoveredBlock932Value3) topWidget: (recoveredBlock932Value4).
    recoveredBlock932Value5 := recoveredBlock932Value0.
    (recoveredBlock932Value5) topOffset: (10).
    recoveredBlock932Value6 := XmATTACHFORM.
    recoveredBlock932Value7 := (recoveredBlock932Value0) rightAttachment: (recoveredBlock932Value6).
    recoveredBlock932Value7
].
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 977.
        ].
        recoveredStep = 977 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 980.
        ].
        recoveredStep = 980 ifTrue: [
            recoveredStack1 := [:recoveredBlock980Arg1 | 
    | recoveredBlock980Value0 recoveredBlock980Value1 recoveredBlock980Value2 recoveredBlock980Value3 recoveredBlock980Value4 recoveredBlock980Value5 recoveredBlock980Value6 recoveredBlock980Value7 recoveredBlock980Value8 recoveredBlock980Value9 recoveredBlock980Value10 recoveredBlock980Value11 recoveredBlock980Value12 recoveredBlock980Value13 recoveredBlock980Value14 |
    recoveredBlock980Value0 := recoveredBlock980Arg1.
    recoveredBlock980Value1 := recoveredBlock980Value0.
    recoveredBlock980Value2 := XmATTACHWIDGET.
    (recoveredBlock980Value1) bottomAttachment: (recoveredBlock980Value2).
    recoveredBlock980Value3 := recoveredBlock980Value0.
    recoveredBlock980Value4 := recoveredLocal7.
    (recoveredBlock980Value3) bottomWidget: (recoveredBlock980Value4).
    recoveredBlock980Value5 := recoveredBlock980Value0.
    recoveredBlock980Value6 := XmATTACHFORM.
    (recoveredBlock980Value5) topAttachment: (recoveredBlock980Value6).
    recoveredBlock980Value7 := recoveredBlock980Value0.
    recoveredBlock980Value8 := XmATTACHWIDGET.
    (recoveredBlock980Value7) leftAttachment: (recoveredBlock980Value8).
    recoveredBlock980Value9 := recoveredBlock980Value0.
    recoveredBlock980Value10 := recoveredLocal15.
    (recoveredBlock980Value9) leftWidget: (recoveredBlock980Value10).
    recoveredBlock980Value11 := recoveredBlock980Value0.
    (recoveredBlock980Value11) leftOffset: (5).
    recoveredBlock980Value12 := recoveredBlock980Value0.
    recoveredBlock980Value13 := XmATTACHFORM.
    (recoveredBlock980Value12) rightAttachment: (recoveredBlock980Value13).
    recoveredBlock980Value14 := (recoveredBlock980Value0) rightOffset: (5).
    recoveredBlock980Value14
].
            recoveredPC := 1050.
        ].
        recoveredStep = 1050 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1055.
        ].
        recoveredStep = 1055 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1058.
        ].
        recoveredStep = 1058 ifTrue: [
            recoveredStack1 := [:block2812ea58Arg1 | 
    | block2812ea58Value0 block2812ea58Value1 block2812ea58Value2 block2812ea58Value3 block2812ea58Value4 block2812ea58Value5 block2812ea58Value6 |
    block2812ea58Value0 := block2812ea58Arg1.
    block2812ea58Value1 := block2812ea58Value0.
    block2812ea58Value2 := XmATTACHFORM.
    (block2812ea58Value1) topAttachment: (block2812ea58Value2).
    block2812ea58Value3 := block2812ea58Value0.
    block2812ea58Value4 := XmATTACHFORM.
    (block2812ea58Value3) leftAttachment: (block2812ea58Value4).
    block2812ea58Value5 := XmATTACHFORM.
    block2812ea58Value6 := (block2812ea58Value0) rightAttachment: (block2812ea58Value5).
    block2812ea58Value6
].
            recoveredPC := 1062.
        ].
        recoveredStep = 1062 ifTrue: [
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            recoveredStack1 := [:recoveredBlock1102Arg1 | 
    | recoveredBlock1102Value0 recoveredBlock1102Value1 recoveredBlock1102Value2 recoveredBlock1102Value3 recoveredBlock1102Value4 recoveredBlock1102Value5 recoveredBlock1102Value6 recoveredBlock1102Value7 recoveredBlock1102Value8 recoveredBlock1102Value9 recoveredBlock1102Value10 |
    recoveredBlock1102Value0 := recoveredBlock1102Arg1.
    recoveredBlock1102Value1 := recoveredBlock1102Value0.
    recoveredBlock1102Value2 := XmATTACHFORM.
    (recoveredBlock1102Value1) bottomAttachment: (recoveredBlock1102Value2).
    recoveredBlock1102Value3 := recoveredBlock1102Value0.
    recoveredBlock1102Value4 := XmATTACHWIDGET.
    (recoveredBlock1102Value3) topAttachment: (recoveredBlock1102Value4).
    recoveredBlock1102Value5 := recoveredBlock1102Value0.
    recoveredBlock1102Value6 := recoveredLocal10.
    (recoveredBlock1102Value5) topWidget: (recoveredBlock1102Value6).
    recoveredBlock1102Value7 := recoveredBlock1102Value0.
    recoveredBlock1102Value8 := XmATTACHFORM.
    (recoveredBlock1102Value7) leftAttachment: (recoveredBlock1102Value8).
    recoveredBlock1102Value9 := XmATTACHFORM.
    recoveredBlock1102Value10 := (recoveredBlock1102Value0) rightAttachment: (recoveredBlock1102Value9).
    recoveredBlock1102Value10
].
            recoveredPC := 1152.
        ].
        recoveredStep = 1152 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1157.
        ].
        recoveredStep = 1157 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1160.
        ].
        recoveredStep = 1160 ifTrue: [
            recoveredStack1 := [:block2812ea7cArg1 | 
    | block2812ea7cValue0 block2812ea7cValue1 block2812ea7cValue2 block2812ea7cValue3 block2812ea7cValue4 block2812ea7cValue5 block2812ea7cValue6 |
    block2812ea7cValue0 := block2812ea7cArg1.
    block2812ea7cValue1 := block2812ea7cValue0.
    block2812ea7cValue2 := XmATTACHOPPOSITEFORM.
    (block2812ea7cValue1) topAttachment: (block2812ea7cValue2).
    block2812ea7cValue3 := block2812ea7cValue0.
    (block2812ea7cValue3) topOffset: (-77).
    block2812ea7cValue4 := block2812ea7cValue0.
    block2812ea7cValue5 := XmATTACHFORM.
    (block2812ea7cValue4) leftAttachment: (block2812ea7cValue5).
    block2812ea7cValue6 := (block2812ea7cValue0) leftOffset: (5).
    block2812ea7cValue6
].
            recoveredPC := 1164.
        ].
        recoveredStep = 1164 ifTrue: [
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack1 := [:recoveredBlock1210Arg1 | 
    | recoveredBlock1210Value0 recoveredBlock1210Value1 recoveredBlock1210Value2 recoveredBlock1210Value3 recoveredBlock1210Value4 recoveredBlock1210Value5 recoveredBlock1210Value6 recoveredBlock1210Value7 recoveredBlock1210Value8 recoveredBlock1210Value9 |
    recoveredBlock1210Value0 := recoveredBlock1210Arg1.
    recoveredBlock1210Value1 := recoveredBlock1210Value0.
    recoveredBlock1210Value2 := XmATTACHFORM.
    (recoveredBlock1210Value1) rightAttachment: (recoveredBlock1210Value2).
    recoveredBlock1210Value3 := recoveredBlock1210Value0.
    recoveredBlock1210Value4 := XmATTACHWIDGET.
    (recoveredBlock1210Value3) leftAttachment: (recoveredBlock1210Value4).
    recoveredBlock1210Value5 := recoveredBlock1210Value0.
    recoveredBlock1210Value6 := recoveredLocal15.
    (recoveredBlock1210Value5) leftWidget: (recoveredBlock1210Value6).
    recoveredBlock1210Value7 := recoveredBlock1210Value0.
    recoveredBlock1210Value8 := XmATTACHFORM.
    (recoveredBlock1210Value7) bottomAttachment: (recoveredBlock1210Value8).
    recoveredBlock1210Value9 := (recoveredBlock1210Value0) bottomOffset: (5).
    recoveredBlock1210Value9
].
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 1266.
        ].
        recoveredStep = 1266 ifTrue: [
            recoveredStack1 := [:block2812eaa0Arg1 | 
    | block2812eaa0Value0 block2812eaa0Value1 block2812eaa0Value2 block2812eaa0Value3 block2812eaa0Value4 block2812eaa0Value5 block2812eaa0Value6 block2812eaa0Value7 block2812eaa0Value8 block2812eaa0Value9 |
    block2812eaa0Value0 := block2812eaa0Arg1.
    block2812eaa0Value1 := block2812eaa0Value0.
    block2812eaa0Value2 := XmATTACHFORM.
    (block2812eaa0Value1) topAttachment: (block2812eaa0Value2).
    block2812eaa0Value3 := block2812eaa0Value0.
    (block2812eaa0Value3) topOffset: (5).
    block2812eaa0Value4 := block2812eaa0Value0.
    block2812eaa0Value5 := XmATTACHFORM.
    (block2812eaa0Value4) leftAttachment: (block2812eaa0Value5).
    block2812eaa0Value6 := block2812eaa0Value0.
    (block2812eaa0Value6) leftOffset: (5).
    block2812eaa0Value7 := block2812eaa0Value0.
    block2812eaa0Value8 := XmATTACHFORM.
    (block2812eaa0Value7) rightAttachment: (block2812eaa0Value8).
    block2812eaa0Value9 := (block2812eaa0Value0) rightOffset: (5).
    block2812eaa0Value9
].
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredPC := 1320.
        ].
        recoveredStep = 1320 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1325.
        ].
        recoveredStep = 1325 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1328.
        ].
        recoveredStep = 1328 ifTrue: [
            recoveredStack1 := [:recoveredBlock1328Arg1 | 
    | recoveredBlock1328Value0 recoveredBlock1328Value1 recoveredBlock1328Value2 recoveredBlock1328Value3 recoveredBlock1328Value4 recoveredBlock1328Value5 recoveredBlock1328Value6 recoveredBlock1328Value7 recoveredBlock1328Value8 recoveredBlock1328Value9 recoveredBlock1328Value10 recoveredBlock1328Value11 |
    recoveredBlock1328Value0 := recoveredBlock1328Arg1.
    recoveredBlock1328Value1 := recoveredBlock1328Value0.
    recoveredBlock1328Value2 := XmATTACHWIDGET.
    (recoveredBlock1328Value1) topAttachment: (recoveredBlock1328Value2).
    recoveredBlock1328Value3 := recoveredBlock1328Value0.
    recoveredBlock1328Value4 := recoveredLocal5.
    (recoveredBlock1328Value3) topWidget: (recoveredBlock1328Value4).
    recoveredBlock1328Value5 := recoveredBlock1328Value0.
    (recoveredBlock1328Value5) topOffset: (5).
    recoveredBlock1328Value6 := recoveredBlock1328Value0.
    recoveredBlock1328Value7 := XmATTACHFORM.
    (recoveredBlock1328Value6) leftAttachment: (recoveredBlock1328Value7).
    recoveredBlock1328Value8 := recoveredBlock1328Value0.
    (recoveredBlock1328Value8) leftOffset: (5).
    recoveredBlock1328Value9 := recoveredBlock1328Value0.
    recoveredBlock1328Value10 := XmATTACHOPPOSITEFORM.
    (recoveredBlock1328Value9) rightAttachment: (recoveredBlock1328Value10).
    recoveredBlock1328Value11 := (recoveredBlock1328Value0) rightOffset: (-80).
    recoveredBlock1328Value11
].
            recoveredPC := 1390.
        ].
        recoveredStep = 1390 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1395.
        ].
        recoveredStep = 1395 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1398.
        ].
        recoveredStep = 1398 ifTrue: [
            recoveredStack1 := [:recoveredBlock1398Arg1 | 
    | recoveredBlock1398Value0 recoveredBlock1398Value1 recoveredBlock1398Value2 recoveredBlock1398Value3 recoveredBlock1398Value4 recoveredBlock1398Value5 recoveredBlock1398Value6 recoveredBlock1398Value7 recoveredBlock1398Value8 recoveredBlock1398Value9 recoveredBlock1398Value10 recoveredBlock1398Value11 recoveredBlock1398Value12 recoveredBlock1398Value13 |
    recoveredBlock1398Value0 := recoveredBlock1398Arg1.
    recoveredBlock1398Value1 := recoveredBlock1398Value0.
    recoveredBlock1398Value2 := XmATTACHWIDGET.
    (recoveredBlock1398Value1) topAttachment: (recoveredBlock1398Value2).
    recoveredBlock1398Value3 := recoveredBlock1398Value0.
    recoveredBlock1398Value4 := recoveredLocal5.
    (recoveredBlock1398Value3) topWidget: (recoveredBlock1398Value4).
    recoveredBlock1398Value5 := recoveredBlock1398Value0.
    (recoveredBlock1398Value5) topOffset: (5).
    recoveredBlock1398Value6 := recoveredBlock1398Value0.
    recoveredBlock1398Value7 := XmATTACHWIDGET.
    (recoveredBlock1398Value6) leftAttachment: (recoveredBlock1398Value7).
    recoveredBlock1398Value8 := recoveredBlock1398Value0.
    recoveredBlock1398Value9 := recoveredLocal4.
    (recoveredBlock1398Value8) leftWidget: (recoveredBlock1398Value9).
    recoveredBlock1398Value10 := recoveredBlock1398Value0.
    (recoveredBlock1398Value10) leftOffset: (0).
    recoveredBlock1398Value11 := recoveredBlock1398Value0.
    recoveredBlock1398Value12 := XmATTACHFORM.
    (recoveredBlock1398Value11) rightAttachment: (recoveredBlock1398Value12).
    recoveredBlock1398Value13 := (recoveredBlock1398Value0) rightOffset: (5).
    recoveredBlock1398Value13
].
            recoveredPC := 1466.
        ].
        recoveredStep = 1466 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1471.
        ].
        recoveredStep = 1471 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 1474.
        ].
        recoveredStep = 1474 ifTrue: [
            recoveredStack1 := [:recoveredBlock1474Arg1 | 
    | recoveredBlock1474Value0 recoveredBlock1474Value1 recoveredBlock1474Value2 recoveredBlock1474Value3 recoveredBlock1474Value4 recoveredBlock1474Value5 recoveredBlock1474Value6 recoveredBlock1474Value7 recoveredBlock1474Value8 recoveredBlock1474Value9 recoveredBlock1474Value10 recoveredBlock1474Value11 |
    recoveredBlock1474Value0 := recoveredBlock1474Arg1.
    recoveredBlock1474Value1 := recoveredBlock1474Value0.
    recoveredBlock1474Value2 := XmATTACHWIDGET.
    (recoveredBlock1474Value1) topAttachment: (recoveredBlock1474Value2).
    recoveredBlock1474Value3 := recoveredBlock1474Value0.
    recoveredBlock1474Value4 := recoveredLocal4.
    (recoveredBlock1474Value3) topWidget: (recoveredBlock1474Value4).
    recoveredBlock1474Value5 := recoveredBlock1474Value0.
    (recoveredBlock1474Value5) topOffset: (10).
    recoveredBlock1474Value6 := recoveredBlock1474Value0.
    recoveredBlock1474Value7 := XmATTACHFORM.
    (recoveredBlock1474Value6) leftAttachment: (recoveredBlock1474Value7).
    recoveredBlock1474Value8 := recoveredBlock1474Value0.
    (recoveredBlock1474Value8) leftOffset: (5).
    recoveredBlock1474Value9 := recoveredBlock1474Value0.
    recoveredBlock1474Value10 := XmATTACHOPPOSITEFORM.
    (recoveredBlock1474Value9) rightAttachment: (recoveredBlock1474Value10).
    recoveredBlock1474Value11 := (recoveredBlock1474Value0) rightOffset: (-60).
    recoveredBlock1474Value11
].
            recoveredPC := 1534.
        ].
        recoveredStep = 1534 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1539.
        ].
        recoveredStep = 1539 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            recoveredStack1 := [:recoveredBlock1542Arg1 | 
    | recoveredBlock1542Value0 recoveredBlock1542Value1 recoveredBlock1542Value2 recoveredBlock1542Value3 recoveredBlock1542Value4 recoveredBlock1542Value5 recoveredBlock1542Value6 recoveredBlock1542Value7 recoveredBlock1542Value8 recoveredBlock1542Value9 recoveredBlock1542Value10 recoveredBlock1542Value11 recoveredBlock1542Value12 recoveredBlock1542Value13 |
    recoveredBlock1542Value0 := recoveredBlock1542Arg1.
    recoveredBlock1542Value1 := recoveredBlock1542Value0.
    recoveredBlock1542Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1542Value1) topAttachment: (recoveredBlock1542Value2).
    recoveredBlock1542Value3 := recoveredBlock1542Value0.
    recoveredBlock1542Value4 := recoveredLocal2.
    (recoveredBlock1542Value3) topWidget: (recoveredBlock1542Value4).
    recoveredBlock1542Value5 := recoveredBlock1542Value0.
    (recoveredBlock1542Value5) topOffset: (-5).
    recoveredBlock1542Value6 := recoveredBlock1542Value0.
    recoveredBlock1542Value7 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1542Value6) leftAttachment: (recoveredBlock1542Value7).
    recoveredBlock1542Value8 := recoveredBlock1542Value0.
    recoveredBlock1542Value9 := recoveredLocal3.
    (recoveredBlock1542Value8) leftWidget: (recoveredBlock1542Value9).
    recoveredBlock1542Value10 := recoveredBlock1542Value0.
    (recoveredBlock1542Value10) leftOffset: (0).
    recoveredBlock1542Value11 := recoveredBlock1542Value0.
    recoveredBlock1542Value12 := XmATTACHFORM.
    (recoveredBlock1542Value11) rightAttachment: (recoveredBlock1542Value12).
    recoveredBlock1542Value13 := (recoveredBlock1542Value0) rightOffset: (20).
    recoveredBlock1542Value13
].
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1619.
        ].
        recoveredStep = 1619 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1622.
        ].
        recoveredStep = 1622 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1623.
        ].
        recoveredStep = 1623 ifTrue: [
            recoveredStack4 := 'processesvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1626.
        ].
        recoveredStep = 1626 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1627.
        ].
        recoveredStep = 1627 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1631.
        ].
        recoveredStep = 1631 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1634.
        ].
        recoveredStep = 1634 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1635.
        ].
        recoveredStep = 1635 ifTrue: [
            recoveredStack4 := 'listDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1638.
        ].
        recoveredStep = 1638 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1639.
        ].
        recoveredStep = 1639 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1643.
        ].
        recoveredStep = 1643 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1646.
        ].
        recoveredStep = 1646 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1647.
        ].
        recoveredStep = 1647 ifTrue: [
            recoveredStack4 := 'processeschildrenCallback:clientData:callData:'.
            recoveredPC := 1650.
        ].
        recoveredStep = 1650 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1651.
        ].
        recoveredStep = 1651 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1655.
        ].
        recoveredStep = 1655 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 1658.
        ].
        recoveredStep = 1658 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1659.
        ].
        recoveredStep = 1659 ifTrue: [
            recoveredStack3 := 'processesSelectionCallback:clientData:callData:'.
            recoveredPC := 1662.
        ].
        recoveredStep = 1662 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1663.
        ].
        recoveredStep = 1663 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1667.
        ].
        recoveredStep = 1667 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1670.
        ].
        recoveredStep = 1670 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1674.
        ].
        recoveredStep = 1674 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1675.
        ].
        recoveredStep = 1675 ifTrue: [
            recoveredStack3 := 'addProcessActivate:clientData:callData:'.
            recoveredPC := 1678.
        ].
        recoveredStep = 1678 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1679.
        ].
        recoveredStep = 1679 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1683.
        ].
        recoveredStep = 1683 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1686.
        ].
        recoveredStep = 1686 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1690.
        ].
        recoveredStep = 1690 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1691.
        ].
        recoveredStep = 1691 ifTrue: [
            recoveredStack3 := 'removeProcessActivate:clientData:callData:'.
            recoveredPC := 1694.
        ].
        recoveredStep = 1694 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1695.
        ].
        recoveredStep = 1695 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1699.
        ].
        recoveredStep = 1699 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1702.
        ].
        recoveredStep = 1702 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1703.
        ].
        recoveredStep = 1703 ifTrue: [
            recoveredStack2 := XmNfocusCallback.
            recoveredPC := 1706.
        ].
        recoveredStep = 1706 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1707.
        ].
        recoveredStep = 1707 ifTrue: [
            recoveredStack3 := (recoveredStack3) getUserInterface.
            recoveredPC := 1711.
        ].
        recoveredStep = 1711 ifTrue: [
            recoveredStack4 := 'subwidgetFocus:clientData:callData:'.
            recoveredPC := 1714.
        ].
        recoveredStep = 1714 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 1715.
        ].
        recoveredStep = 1715 ifTrue: [
            recoveredStack5 := (recoveredStack5) getUserInterface.
            recoveredPC := 1719.
        ].
        recoveredStep = 1719 ifTrue: [
            recoveredStack5 := (recoveredStack5) lastFocusWidget.
            recoveredPC := 1723.
        ].
        recoveredStep = 1723 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1727.
        ].
        recoveredStep = 1727 ifTrue: [
            recoveredStack2 := XmNbeginEditCallback.
            recoveredPC := 1730.
        ].
        recoveredStep = 1730 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1731.
        ].
        recoveredStep = 1731 ifTrue: [
            recoveredStack4 := 'bypassFuncsbeginEditCallback:clientData:callData:'.
            recoveredPC := 1734.
        ].
        recoveredStep = 1734 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1735.
        ].
        recoveredStep = 1735 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1739.
        ].
        recoveredStep = 1739 ifTrue: [
            recoveredStack2 := XmNdefaultActionCallback.
            recoveredPC := 1742.
        ].
        recoveredStep = 1742 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1743.
        ].
        recoveredStep = 1743 ifTrue: [
            recoveredStack4 := 'listDefaultActionCallback:clientData:callData:'.
            recoveredPC := 1746.
        ].
        recoveredStep = 1746 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1747.
        ].
        recoveredStep = 1747 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1751.
        ].
        recoveredStep = 1751 ifTrue: [
            recoveredStack2 := XmNendEditCallback.
            recoveredPC := 1754.
        ].
        recoveredStep = 1754 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1755.
        ].
        recoveredStep = 1755 ifTrue: [
            recoveredStack4 := 'bypassFuncsendEditCallback:clientData:callData:'.
            recoveredPC := 1758.
        ].
        recoveredStep = 1758 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1759.
        ].
        recoveredStep = 1759 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1763.
        ].
        recoveredStep = 1763 ifTrue: [
            recoveredStack2 := XmNvisualInfoCallback.
            recoveredPC := 1766.
        ].
        recoveredStep = 1766 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1767.
        ].
        recoveredStep = 1767 ifTrue: [
            recoveredStack4 := 'bypassFuncsvisualInfoCallback:clientData:callData:'.
            recoveredPC := 1770.
        ].
        recoveredStep = 1770 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1771.
        ].
        recoveredStep = 1771 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1775.
        ].
        recoveredStep = 1775 ifTrue: [
            recoveredStack2 := XmNchildrenCallback.
            recoveredPC := 1778.
        ].
        recoveredStep = 1778 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1779.
        ].
        recoveredStep = 1779 ifTrue: [
            recoveredStack4 := 'bypassFuncschildrenCallback:clientData:callData:'.
            recoveredPC := 1782.
        ].
        recoveredStep = 1782 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1783.
        ].
        recoveredStep = 1783 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1787.
        ].
        recoveredStep = 1787 ifTrue: [
            recoveredStack1 := XmNextendedSelectionCallback.
            recoveredPC := 1790.
        ].
        recoveredStep = 1790 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1791.
        ].
        recoveredStep = 1791 ifTrue: [
            recoveredStack3 := 'bypassFuncsextendedSelectionCallback:clientData:callData:'.
            recoveredPC := 1794.
        ].
        recoveredStep = 1794 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1795.
        ].
        recoveredStep = 1795 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1799.
        ].
        recoveredStep = 1799 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1802.
        ].
        recoveredStep = 1802 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1806.
        ].
        recoveredStep = 1806 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1807.
        ].
        recoveredStep = 1807 ifTrue: [
            recoveredStack3 := 'dispatchPointSingle:clientData:callData:'.
            recoveredPC := 1810.
        ].
        recoveredStep = 1810 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1811.
        ].
        recoveredStep = 1811 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1815.
        ].
        recoveredStep = 1815 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1818.
        ].
        recoveredStep = 1818 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1822.
        ].
        recoveredStep = 1822 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1823.
        ].
        recoveredStep = 1823 ifTrue: [
            recoveredStack3 := 'changePeriodCallback:clientData:callData:'.
            recoveredPC := 1826.
        ].
        recoveredStep = 1826 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1827.
        ].
        recoveredStep = 1827 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1831.
        ].
        recoveredStep = 1831 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1834.
        ].
        recoveredStep = 1834 ifTrue: [
            recoveredStack1 := XmNvalueChangedCallback.
            recoveredPC := 1838.
        ].
        recoveredStep = 1838 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1839.
        ].
        recoveredStep = 1839 ifTrue: [
            recoveredStack3 := 'unusedValue:clientData:callData:'.
            recoveredPC := 1842.
        ].
        recoveredStep = 1842 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1843.
        ].
        recoveredStep = 1843 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1847.
        ].
        recoveredStep = 1847 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 1850.
        ].
        recoveredStep = 1850 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1855.
        ].
        recoveredStep = 1855 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 1858.
        ].
        recoveredStep = 1858 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1863.
        ].
        recoveredStep = 1863 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 1866.
        ].
        recoveredStep = 1866 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1871.
        ].
        recoveredStep = 1871 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1874.
        ].
        recoveredStep = 1874 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1879.
        ].
        recoveredStep = 1879 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1882.
        ].
        recoveredStep = 1882 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1887.
        ].
        recoveredStep = 1887 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1895.
        ].
        recoveredStep = 1895 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 1898.
        ].
        recoveredStep = 1898 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 1903.
        ].
        recoveredStep = 1903 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 1907.
        ].
        recoveredStep = 1907 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBypassFuncMenu.
            recoveredPC := 1911.
        ].
        recoveredStep = 1911 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1912.
        ].
        recoveredStep = 1912 ifTrue: [
            (recoveredStack0) menu: (recoveredStack1) owner: (recoveredStack2).
            recoveredPC := 1917.
        ].
        recoveredStep = 1917 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 1920.
        ].
        recoveredStep = 1920 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 1925.
        ].
        recoveredStep = 1925 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 1928.
        ].
        recoveredStep = 1928 ifTrue: [
            (recoveredStack0) updateListFontAndItemHeight: (recoveredStack1).
            recoveredPC := 1933.
        ].
        recoveredStep = 1933 ifTrue: [
            recoveredStack0 := RBFontGlobal.
            recoveredPC := 1936.
        ].
        recoveredStep = 1936 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 1941.
        ].
        recoveredStep = 1941 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1944.
        ].
        recoveredStep = 1944 ifTrue: [
            (recoveredStack0) updateListFontAndItemHeight: (recoveredStack1).
            recoveredPC := 1949.
        ].
        recoveredStep = 1949 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1950.
        ].
        recoveredStep = 1950 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 1953.
        ].
        recoveredStep = 1953 ifTrue: [
            (recoveredStack0) widgetDictionary: (recoveredStack1).
            recoveredPC := 1957.
        ].
        recoveredStep = 1957 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1958.
        ].
        recoveredStep = 1958 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

