"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009efc; bytecode file offset 0x908be4"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
factoryKey
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c40; bytecode file offset 0x912098"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
ExternalEditorProcesses
    | recoveredValue0 |
    recoveredValue0 := ExternalEditorProcesses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002cf14; bytecode file offset 0x934580"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20054434; bytecode file offset 0x951190"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
ExternalEditorProcesses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ExternalEditorProcesses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2006f3c8; bytecode file offset 0x96bf7c"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
registeredGenericComponentList
    | recoveredValue0 |
    recoveredValue0 := registeredGenericComponentList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bd270; bytecode file offset 0x9b9b80"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
removeRegisteredGenericComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) registeredGenericComponentList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd5a0; bytecode file offset 0x9b9e88"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
addRegisteredGenericComponent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) registeredGenericComponentList.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) factoryKey.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200c5ad8; bytecode file offset 0x9c25bc"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
registeredGenericComponentList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    registeredGenericComponentList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20119ac4; bytecode file offset 0xa16880"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
aboutToClose
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) registeredGenericComponentList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c7e18Arg1 | 
    | block280c7e18Value0 block280c7e18Value1 |
    block280c7e18Value0 := block280c7e18Arg1.
    block280c7e18Value1 := (block280c7e18Value0) aboutToClose.
    block280c7e18Value1
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

"ASDBase.ic method 0x201465f8; bytecode file offset 0xa42f4c"
!ASDGenericComponentFactory class methodsFor: 'recovered'!
getRegisteredFactory: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) registeredGenericComponentList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc660Value0 block280cc660Value1 |
    block280cc660Value0 := ASDGenericComponentFactory.
    block280cc660Value1 := (block280cc660Value0) create.
    block280cc660Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

