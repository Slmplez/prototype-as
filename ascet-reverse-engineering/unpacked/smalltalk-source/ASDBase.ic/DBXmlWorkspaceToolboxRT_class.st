"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20063b24; bytecode file offset 0x961970"
!DBXmlWorkspaceToolboxRT class methodsFor: 'recovered'!
newWorkspace
    | recoveredValue0 |
    recoveredValue0 := (self) workspaceManager.
    (recoveredValue0) newWorkspace.
    ^self
! !

"ASDBase.ic method 0x200643e4; bytecode file offset 0x961970"
!DBXmlWorkspaceToolboxRT class methodsFor: 'recovered'!
openWorkspace
    | recoveredValue0 |
    recoveredValue0 := (self) workspaceManager.
    (recoveredValue0) openWorkspace.
    ^self
! !

"ASDBase.ic method 0x20064cd4; bytecode file offset 0x961970"
!DBXmlWorkspaceToolboxRT class methodsFor: 'recovered'!
closeWorkspace
    | recoveredValue0 |
    recoveredValue0 := (self) workspaceManager.
    (recoveredValue0) restoreCTreeInterface.
    ^self
! !

"ASDBase.ic method 0x2013a044; bytecode file offset 0xa36920"
!DBXmlWorkspaceToolboxRT class methodsFor: 'recovered'!
workspaceManager
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WorkspaceManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DBXmlWorkspaceManager.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) init.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            WorkspaceManager := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := WorkspaceManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014b8e0; bytecode file offset 0xa481a8"
!DBXmlWorkspaceToolboxRT class methodsFor: 'recovered'!
toolboxDescriptor
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasToolboxDescriptor.
    recoveredValue1 := (recoveredValue0) createLabel: ('ASCET XML Workspace') packageName: ('BIP-ASDPlatform') application: ('None') fileName: (nil).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    ^recoveredValue2
! !

