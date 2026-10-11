"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002fb0; bytecode file offset 0x8ffcfc"
!ASDGenericComponentFactory methodsFor: 'recovered'!
aboutToClose
    ^self
! !

"ASDBase.ic method 0x20005a48; bytecode file offset 0x902744"
!ASDGenericComponentFactory methodsFor: 'recovered'!
selectAvailableOSToolTypes: recoveredArg1 project: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005af0; bytecode file offset 0x902744"
!ASDGenericComponentFactory methodsFor: 'recovered'!
prepareDirectory: recoveredArg1 component: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005ba8; bytecode file offset 0x902744"
!ASDGenericComponentFactory methodsFor: 'recovered'!
updateMakefileForGenericComponent: recoveredArg1 codeManager: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005c88; bytecode file offset 0x902744"
!ASDGenericComponentFactory methodsFor: 'recovered'!
checkExperimentalRestrictions: recoveredArg1 codeManager: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005db8; bytecode file offset 0x902744"
!ASDGenericComponentFactory methodsFor: 'recovered'!
selectDefaultOSToolTypes: recoveredArg1 project: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005ef4; bytecode file offset 0x902de8"
!ASDGenericComponentFactory methodsFor: 'recovered'!
editGenericComponentParentView: recoveredArg1 context: recoveredArg2 component: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2000b8ac; bytecode file offset 0x908be4"
!ASDGenericComponentFactory methodsFor: 'recovered'!
insertMenuName
    | recoveredValue0 |
    recoveredValue0 := (self) defaultName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000be4c; bytecode file offset 0x908be4"
!ASDGenericComponentFactory methodsFor: 'recovered'!
insertMenuIcon
    | recoveredValue0 |
    recoveredValue0 := (self) iconName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000c9dc; bytecode file offset 0x909658"
!ASDGenericComponentFactory methodsFor: 'recovered'!
isGenericComponentContainer: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cc24; bytecode file offset 0x909658"
!ASDGenericComponentFactory methodsFor: 'recovered'!
isGenericComponentProcessClass: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000ccd4; bytecode file offset 0x909658"
!ASDGenericComponentFactory methodsFor: 'recovered'!
isEditableComponent: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd24; bytecode file offset 0x909658"
!ASDGenericComponentFactory methodsFor: 'recovered'!
analyzeGenericComponentModuleCodeGeneration: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000cd74; bytecode file offset 0x909658"
!ASDGenericComponentFactory methodsFor: 'recovered'!
requiresPreGeneration: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000d474; bytecode file offset 0x909e08"
!ASDGenericComponentFactory methodsFor: 'recovered'!
isGenericComponentIgnoredForIntecrioTransfer: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x2000f204; bytecode file offset 0x90bb38"
!ASDGenericComponentFactory methodsFor: 'recovered'!
addVarAllowed: recoveredArg1 forComponent: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2000f20c; bytecode file offset 0x90bb38"
!ASDGenericComponentFactory methodsFor: 'recovered'!
isAllowedToAddIn: recoveredArg1 component: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x2001062c; bytecode file offset 0x90cf40"
!ASDGenericComponentFactory methodsFor: 'recovered'!
preGenerate: recoveredArg1 component: recoveredArg2 context: recoveredArg3
    ^nil
! !

"ASDBase.ic method 0x20011538; bytecode file offset 0x90ddf4"
!ASDGenericComponentFactory methodsFor: 'recovered'!
componentManagerWidgetName: recoveredArg1 widgetParent: recoveredArg2 widgetOwner: recoveredArg3 for: recoveredArg4
    ^nil
! !

"ASDBase.ic method 0x2002e0b4; bytecode file offset 0x934580"
!ASDGenericComponentFactory methodsFor: 'recovered'!
factoryKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) factoryKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20038058; bytecode file offset 0x934b68"
!ASDGenericComponentFactory methodsFor: 'recovered'!
filterListForInsertComponent: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x20038220; bytecode file offset 0x934b68"
!ASDGenericComponentFactory methodsFor: 'recovered'!
allUIElementsForComponent: recoveredArg1
    ^#()
! !

"ASDBase.ic method 0x2003a4d8; bytecode file offset 0x938608"
!ASDGenericComponentFactory methodsFor: 'recovered'!
createNewItemParent: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createNewItemParentBasic: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073720; bytecode file offset 0x970b34"
!ASDGenericComponentFactory methodsFor: 'recovered'!
defaultName
    ^nil
! !

"ASDBase.ic method 0x20073bf0; bytecode file offset 0x970b34"
!ASDGenericComponentFactory methodsFor: 'recovered'!
iconName
    ^nil
! !

"ASDBase.ic method 0x200d024c; bytecode file offset 0x9ccda0"
!ASDGenericComponentFactory methodsFor: 'recovered'!
genericHardwareEditorHandlers
    | recoveredValue0 |
    recoveredValue0 := ('hw') == ('todo').
    ^#()
! !

"ASDBase.ic method 0x201681bc; bytecode file offset 0xa64a7c"
!ASDGenericComponentFactory methodsFor: 'recovered'!
getIconNameForComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getIconName.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    ^recoveredBlock8Value0
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^'GeneralFolderClosed'
! !

"ASDBase.ic method 0x202dc624; bytecode file offset 0xbd8f08"
!ASDGenericComponentFactory methodsFor: 'recovered'!
createNewItemParentBasic: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) doDBMaximumSizeCheckWithConfirmation.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGLibrary.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) defaultName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := ASDGenericComponent.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack6 := MainController.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack6 := (recoveredStack6) databaseAccess.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) addItemNamed: (recoveredStack2) itemClass: (recoveredStack3) parent: (recoveredStack4) buildArray: (recoveredStack5) databaseAccess: (recoveredStack6).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) iconName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) iconName: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) factoryKey.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) factoryKey: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

