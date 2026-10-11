"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20014814; bytecode file offset 0x912098"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
sourceANSICCollectorClass
    | recoveredValue0 |
    recoveredValue0 := SGINTECRIOTransferSourceCollector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f484; bytecode file offset 0x92209c"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
workspaceKey
    ^'workspace'
! !

"ASDBase.ic method 0x20020540; bytecode file offset 0x92209c"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
systemKey
    ^'system'
! !

"ASDBase.ic method 0x2004a18c; bytecode file offset 0x947128"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
workspace
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) workspaceKey.
    recoveredValue1 := (self) getStringAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a4ac; bytecode file offset 0x947128"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
system
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) systemKey.
    recoveredValue1 := (self) getStringAttribute: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20077b34; bytecode file offset 0x9757c8"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
requiresSCOOPIXGeneration
    ^true
! !

"ASDBase.ic method 0x2007e72c; bytecode file offset 0x97c330"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
isExportCommand
    ^false
! !

"ASDBase.ic method 0x200a536c; bytecode file offset 0x9a1dc8"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
workspace: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) workspaceKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a53dc; bytecode file offset 0x9a1dc8"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
system: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) systemKey.
    recoveredValue1 := recoveredArg1.
    (self) setAttribute: (recoveredValue0) with: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d8ae4; bytecode file offset 0x9d53a0"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
selectBasicCommand: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) selectForAPICommandExportCode: (self).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) selectForAPICommandTransferIntecrio: (self).
    ^self
! !

"ASDBase.ic method 0x20401e58; bytecode file offset 0xcfe75c"
!SGTransferIntecrioCommand methodsFor: 'recovered'!
executeAPICommand
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) monitorManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 'Transferring'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'export directory'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) destinationPath.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) beginCommandBlock: (recoveredStack1) description: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMonitorStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'Selected Workspace: '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspace.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'none selected'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := (recoveredStack3) workspace.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'Selected System: '.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) newlinePutAll: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) system.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'none selected'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := '"'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) system.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := '"'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            super executeAPICommand.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) writeExportContentsTable.
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

