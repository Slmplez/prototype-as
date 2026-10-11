"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017f9c; bytecode file offset 0x92209c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
validDeviceDescriptionPrefixes
    ^#('E-target' 'ES1112' 'ES113' 'ES910' 'Rapid Prototyping Simulation Controller' 'X86 RTPRO-PC Controller')
! !

"ASDBase.ic method 0x2001a6fc; bytecode file offset 0x92209c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
defaultIcon
    ^'GeneralCodeTransfer'
! !

"ASDBase.ic method 0x20022250; bytecode file offset 0x92209c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
defaultIcon32
    ^'GeneralCodeTransfer32'
! !

"ASDBase.ic method 0x200289b4; bytecode file offset 0x934580"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaDatabasePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetIncaDbText.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a9e4; bytecode file offset 0x934580"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaProjectPath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetProjectText.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f024; bytecode file offset 0x934580"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
projectDevicePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDeviceText.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f804; bytecode file offset 0x934580"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
workspacePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetWorkspaceText.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20042f0c; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetWorkspaceText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetWorkspaceText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004311c; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetWorkspaceButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetCreateWorkspaceButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200437cc; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetDeviceButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetBrowseDeviceButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200445cc; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetProjectButton
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetChangeProjectButton').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200457bc; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetButtonContinue
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetButtonContinue').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200459ec; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetIncaDbText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetIncaDbText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045e6c; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetProjectText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetProjectText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004776c; bytecode file offset 0x9451f8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetDeviceText
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetDeviceText').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20059068; bytecode file offset 0x956284"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaDatabasePath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetIncaDbText.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005b0e8; bytecode file offset 0x957a6c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetButtonAbortActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x20061a8c; bytecode file offset 0x95e838"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
hexFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) asap2FileName.
    recoveredValue1 := (recoveredValue0) , ('.cod').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20070048; bytecode file offset 0x96cb7c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
ascetProject
    | recoveredValue0 |
    recoveredValue0 := ascetProject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070344; bytecode file offset 0x96ce40"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
ascetProjectController
    | recoveredValue0 |
    recoveredValue0 := ascetProjectController.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070650; bytecode file offset 0x96d06c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
asap2FileName
    | recoveredValue0 |
    recoveredValue0 := asap2FileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083fdc; bytecode file offset 0x98093c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaProjectWrapperInFolder: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) incaProjectWrapperInFolder: (recoveredValue0) prompt: (true).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20097454; bytecode file offset 0x995850"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
workspacePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetWorkspaceText.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098f24; bytecode file offset 0x995850"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaProjectPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetProjectText.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098f74; bytecode file offset 0x995850"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
projectDevicePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDeviceText.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c6538; bytecode file offset 0x9c3164"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
ascetProject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascetProject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6954; bytecode file offset 0x9c3470"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
ascetProjectController: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascetProjectController := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6d10; bytecode file offset 0x9c36ec"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
asap2FileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    asap2FileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d7170; bytecode file offset 0x9d3a30"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
performTransaction: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EtasExpProjectTransferActivexCalls.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) performTransaction: (recoveredValue1).
    (self) updateButtonSensitivity.
    ^self
! !

"ASDBase.ic method 0x20104028; bytecode file offset 0xa008e4"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
expPrjTransInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProject.
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
            recoveredStack0 := (recoveredStack0) expPrjTransInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201128d4; bytecode file offset 0xa0f190"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaProjectWrapper
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaProjectFolderWrapper.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaProjectWrapperInFolder: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20139274; bytecode file offset 0xa35b50"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetChangeIncaDbButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) changeIncaDb.
    recoveredBlock4Value0
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) performTransaction: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20139284; bytecode file offset 0xa35b50"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetChangeTransferButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) browseIncaProject.
    recoveredBlock4Value0
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) performTransaction: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20139294; bytecode file offset 0xa35b50"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetCreateWorkspaceButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 |
    recoveredBlock4Value0 := (self) browseWorkspace.
    recoveredBlock4Value0
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) performTransaction: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b18ac; bytecode file offset 0xaae180"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 |
    super initializeAfterCreate.
    recoveredValue0 := (self) defaultIcon.
    recoveredValue1 := (self) defaultIcon32.
    (self) iconSmall: (recoveredValue0) large: (recoveredValue1).
    (self) updateFonts.
    (self) loadExpPrjTransInfo.
    (self) updateButtonSensitivity.
    ^self
! !

"ASDBase.ic method 0x201d7640; bytecode file offset 0xad3f00"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
startExpProjectTransfer
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateAsam2mcAndCode.
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
            recoveredStack0 := (recoveredStack0) importAsap2ToInca.
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
            recoveredStack0 := (recoveredStack0) assignProjectToWorkspaceDevice.
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e26f4; bytecode file offset 0xadefc8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
close
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | block280d668cValue0 block280d668cValue1 block280d668cValue2 |
    block280d668cValue0 := EtasExpProjectTransferActivexCalls.
    block280d668cValue1 := (block280d668cValue0) tool.
    block280d668cValue2 := (block280d668cValue1) isNil.
    block280d668cValue2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'There should be no reference to the INCA API left!!'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferActivexCalls.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) releaseTool.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := super close.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025fb18; bytecode file offset 0xb5c3f4"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
updateButtonSensitivity
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) widgetWorkspaceButton.
    recoveredValue1 := (self) incaDatabasePath.
    recoveredValue2 := (recoveredValue1) notEmpty.
    (recoveredValue0) setSensitive: (recoveredValue2).
    recoveredValue3 := (self) widgetDeviceButton.
    recoveredValue4 := (self) workspacePath.
    recoveredValue5 := (recoveredValue4) notEmpty.
    (recoveredValue3) setSensitive: (recoveredValue5).
    recoveredValue6 := (self) widgetProjectButton.
    recoveredValue7 := (self) projectDevicePath.
    recoveredValue8 := (recoveredValue7) notEmpty.
    (recoveredValue6) setSensitive: (recoveredValue8).
    recoveredValue9 := (self) widgetButtonContinue.
    recoveredValue10 := (self) incaProjectPath.
    recoveredValue11 := (recoveredValue10) notEmpty.
    (recoveredValue9) setSensitive: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2029407c; bytecode file offset 0xb90944"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetBrowseDeviceButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4Stack5 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) selectProjectDevice.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack3.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 36] ifFalse: [recoveredBlock4PC := 18].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local2.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack3 := 3.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack4 := [].
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) at: (recoveredBlock4Stack3) ifAbsent: (recoveredBlock4Stack4).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Stack2.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack3.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 36] ifFalse: [recoveredBlock4PC := 32].
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local1.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) projectDevicePath: (recoveredBlock4Stack2).
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) performTransaction: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2029ebb4; bytecode file offset 0xb9b478"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
widgetButtonContinueActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack1 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := (self) startExpProjectTransfer.
    recoveredBlock8Value1 := (recoveredBlock8Value0) notNil.
    recoveredBlock8Value2 := recoveredBlock8Value1.
    recoveredLocal1 := recoveredBlock8Value2.
    recoveredBlock8Value1
].
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) performTransaction: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) storeExpPrjTransInfo.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cd0bc; bytecode file offset 0xbc99a0"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaProjectWrapperInFolder: recoveredArg1 prompt: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaProjectPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getComponent: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Cannot retrieve INCA project "'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperAsap2Project.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) automationObject: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20302f30; bytecode file offset 0xbff80c"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
assignProjectToWorkspaceDevice
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) projectDeviceWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) incaProjectWrapper.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) automationObject.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) setProject: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'Cannot assign Project '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) getName.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := ' to device '.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) getName.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20358b3c; bytecode file offset 0xc55428"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
workspaceWrapper
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDatabaseWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) workspacePath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractName: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) workspacePath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractPath: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) getItemInFolder: (recoveredStack1) parameter1: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 'Cannot retrieve workspace "'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspacePath.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperHardwareConfiguration.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) automationObject: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203802f4; bytecode file offset 0xc7cbe8"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
storeExpPrjTransInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) expPrjTransInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) expPrjTransInfo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'incaDatabasePath'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaDatabasePath.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'workspacePath'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspacePath.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'incaDevicePath'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) projectDevicePath.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'incaProjectPath'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaProjectPath.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := ascetProject.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20394208; bytecode file offset 0xc90af0"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
browseWorkspace
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspacePath.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := (recoveredStack0) incaProjectPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDatabaseWrapper.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EtasRemoteWorkspaceSelectionDialog.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) incaDatabaseWrapper: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) defaultIncaFolder: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetProject.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ascetProjectName: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) workspacePath.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) workspacePath: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a4e94; bytecode file offset 0xca1784"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
generateAsam2mcAndCode
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProjectController.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaProjectPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractName: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) mainController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastCGenPath.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := '.a2l'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) asap2FileName: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := recoveredLocal2.
    recoveredBlock46Value1 := (self) asap2FileName.
    recoveredBlock46Value2 := (recoveredBlock46Value0) writeAsap2ToFile: (recoveredBlock46Value1) codeGeneration: (true).
    recoveredBlock46Value2
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 'Generating ASAM-2MC to file 
"'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) asap2FileName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := '".'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b95ec; bytecode file offset 0xcb5edc"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
browseIncaProject
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaProjectPath.
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
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
            recoveredStack0 := (recoveredStack0) workspacePath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDatabaseWrapper.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := EtasRemoteIncaProjectSelectionDialog.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) incaDatabaseWrapper: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) defaultIncaFolder: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetProject.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ascetProjectName: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetProjectController.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ascetProjectController: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal4 := recoveredStack1.
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
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaProjectPath.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) incaProjectPath: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d3924; bytecode file offset 0xcd01fc"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
resizeSupervision: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) minSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) maxSize.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) width: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2041678c; bytecode file offset 0xd13090"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
loadExpPrjTransInfo
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 97] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ascetProject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) specification.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) expPrjTransInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) expPrjTransInfo: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'incaDatabasePath'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) incaDatabasePath: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'workspacePath'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) workspacePath: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'incaDevicePath'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) projectDevicePath: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'incaProjectPath'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := [
    ''
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) incaProjectPath: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204251b4; bytecode file offset 0xd21ab4"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
promptForNewDatabasePathTitle: recoveredArg1 defaultPath: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBBcrtl32DLL.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitPath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) parentDirectory.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            (recoveredBlock32Stack1 ~~ nil) ifTrue: [recoveredBlock32PC := 48] ifFalse: [recoveredBlock32PC := 44].
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack1 := true.
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32Stack1 := self.
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) library.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) path.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) pathIncludesDatabase: (recoveredBlock32Stack2).
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) not.
            recoveredBlock32PC := 57.
        ].
        recoveredBlock32Step = 57 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferSelectDatabaseDialog.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) childrenEvaluateBlock: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) markSpecialDirectoryBlock: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) root: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack2) firstSelection: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) setNewDir.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptAtCurrentMousePosition.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2044bd0c; bytecode file offset 0xd48600"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
getIncaHwSubsystems: recoveredArg1 projectDevices: recoveredArg2 path: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) getAllSystems.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Local3 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := ASDIncaApiWrapperHwSystem.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 38.
        ].
        recoveredBlock28Step = 38 ifTrue: [
            recoveredBlock28Local3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack2 := OleAutomationObject.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Arg1.
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) pdispVal.
            recoveredBlock28PC := 44.
        ].
        recoveredBlock28Step = 44 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) forDispatch: (recoveredBlock28Stack3).
            recoveredBlock28PC := 46.
        ].
        recoveredBlock28Step = 46 ifTrue: [
            (recoveredBlock28Stack1) automationObject: (recoveredBlock28Stack2).
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local3.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) getSystemDescription.
            recoveredBlock28PC := 51.
        ].
        recoveredBlock28Step = 51 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack2.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            (recoveredBlock28Stack1 == nil) ifTrue: [recoveredBlock28PC := 66] ifFalse: [recoveredBlock28PC := 56].
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := ASDIncaApiWrapperHwSystemDescription.
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local2.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            (recoveredBlock28Stack1) automationObject: (recoveredBlock28Stack2).
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 65.
        ].
        recoveredBlock28Step = 65 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 66.
        ].
        recoveredBlock28Step = 66 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local3.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg2.
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg3.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack4 := '\'.
            recoveredBlock28PC := 75.
        ].
        recoveredBlock28Step = 75 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Local3.
            recoveredBlock28PC := 78.
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) getName.
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            (recoveredBlock28Stack0) getIncaHwDevices: (recoveredBlock28Stack1) projectDevices: (recoveredBlock28Stack2) path: (recoveredBlock28Stack3).
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Stack0 := self.
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local3.
            recoveredBlock28PC := 87.
        ].
        recoveredBlock28Step = 87 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg2.
            recoveredBlock28PC := 90.
        ].
        recoveredBlock28Step = 90 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg3.
            recoveredBlock28PC := 93.
        ].
        recoveredBlock28Step = 93 ifTrue: [
            recoveredBlock28Stack4 := '\'.
            recoveredBlock28PC := 95.
        ].
        recoveredBlock28Step = 95 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 97.
        ].
        recoveredBlock28Step = 97 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Local3.
            recoveredBlock28PC := 98.
        ].
        recoveredBlock28Step = 98 ifTrue: [
            recoveredBlock28Stack4 := (recoveredBlock28Stack4) getName.
            recoveredBlock28PC := 100.
        ].
        recoveredBlock28Step = 100 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) , (recoveredBlock28Stack4).
            recoveredBlock28PC := 102.
        ].
        recoveredBlock28Step = 102 ifTrue: [
            recoveredBlock28Stack0 := (recoveredBlock28Stack0) getIncaHwSubsystems: (recoveredBlock28Stack1) projectDevices: (recoveredBlock28Stack2) path: (recoveredBlock28Stack3).
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack0.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048ae5c; bytecode file offset 0xd87760"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaProjectFolderWrapper
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDatabaseWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal8 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaProjectPath.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractName: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaProjectPath.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractPath: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractName: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) extractPath: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) getIncaFolder: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) getItemInFolder: (recoveredStack1) parameter1: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Cannot retrieve folder "'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := '" of INCA project "'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := '" in current INCA database.'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperIncaFolder.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIncaFolder.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'Folder "'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := '" is not an INCA folder.'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b1308; bytecode file offset 0xdadc14"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
getProjectDevices
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspaceWrapper.
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
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) getAllSystems.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) getData.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Failed to retrieve hardware systems for INCA workspace "'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspacePath.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Local1 recoveredBlock67Local2 recoveredBlock67Local3 recoveredBlock67Local4 recoveredBlock67Local5 recoveredBlock67Stack0 recoveredBlock67Stack1 recoveredBlock67Stack2 recoveredBlock67Stack3 recoveredBlock67Stack4 recoveredBlock67PC recoveredBlock67Step recoveredBlock67Done recoveredBlock67Result |
    recoveredBlock67Stack0 := self.
    recoveredBlock67PC := 74.
    recoveredBlock67Done := false.
    [recoveredBlock67Done not] whileTrue: [
        recoveredBlock67Step := recoveredBlock67PC.
        recoveredBlock67Step = 74 ifTrue: [
            recoveredBlock67Stack1 := ASDIncaApiWrapperHwSystem.
            recoveredBlock67PC := 76.
        ].
        recoveredBlock67Step = 76 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) new.
            recoveredBlock67PC := 78.
        ].
        recoveredBlock67Step = 78 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Stack1.
            recoveredBlock67PC := 79.
        ].
        recoveredBlock67Step = 79 ifTrue: [
            recoveredBlock67Local5 := recoveredBlock67Stack2.
            recoveredBlock67PC := 81.
        ].
        recoveredBlock67Step = 81 ifTrue: [
            recoveredBlock67Stack2 := OleAutomationObject.
            recoveredBlock67PC := 83.
        ].
        recoveredBlock67Step = 83 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Arg1.
            recoveredBlock67PC := 85.
        ].
        recoveredBlock67Step = 85 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) pdispVal.
            recoveredBlock67PC := 87.
        ].
        recoveredBlock67Step = 87 ifTrue: [
            recoveredBlock67Stack2 := (recoveredBlock67Stack2) forDispatch: (recoveredBlock67Stack3).
            recoveredBlock67PC := 89.
        ].
        recoveredBlock67Step = 89 ifTrue: [
            (recoveredBlock67Stack1) automationObject: (recoveredBlock67Stack2).
            recoveredBlock67PC := 91.
        ].
        recoveredBlock67Step = 91 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Local5.
            recoveredBlock67PC := 93.
        ].
        recoveredBlock67Step = 93 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) getSystemDescription.
            recoveredBlock67PC := 95.
        ].
        recoveredBlock67Step = 95 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Stack1.
            recoveredBlock67PC := 96.
        ].
        recoveredBlock67Step = 96 ifTrue: [
            recoveredBlock67Local2 := recoveredBlock67Stack2.
            recoveredBlock67PC := 97.
        ].
        recoveredBlock67Step = 97 ifTrue: [
            (recoveredBlock67Stack1 == nil) ifTrue: [recoveredBlock67PC := 111] ifFalse: [recoveredBlock67PC := 100].
        ].
        recoveredBlock67Step = 100 ifTrue: [
            recoveredBlock67Stack1 := ASDIncaApiWrapperHwSystemDescription.
            recoveredBlock67PC := 102.
        ].
        recoveredBlock67Step = 102 ifTrue: [
            recoveredBlock67Stack1 := (recoveredBlock67Stack1) new.
            recoveredBlock67PC := 104.
        ].
        recoveredBlock67Step = 104 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Stack1.
            recoveredBlock67PC := 105.
        ].
        recoveredBlock67Step = 105 ifTrue: [
            recoveredBlock67Local1 := recoveredBlock67Stack2.
            recoveredBlock67PC := 106.
        ].
        recoveredBlock67Step = 106 ifTrue: [
            recoveredBlock67Stack2 := recoveredBlock67Local2.
            recoveredBlock67PC := 107.
        ].
        recoveredBlock67Step = 107 ifTrue: [
            (recoveredBlock67Stack1) automationObject: (recoveredBlock67Stack2).
            recoveredBlock67PC := 109.
        ].
        recoveredBlock67Step = 109 ifTrue: [
            recoveredBlock67Stack1 := nil.
            recoveredBlock67PC := 110.
        ].
        recoveredBlock67Step = 110 ifTrue: [
            recoveredBlock67Local1 := recoveredBlock67Stack1.
            recoveredBlock67PC := 111.
        ].
        recoveredBlock67Step = 111 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Local5.
            recoveredBlock67PC := 113.
        ].
        recoveredBlock67Step = 113 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal2.
            recoveredBlock67PC := 116.
        ].
        recoveredBlock67Step = 116 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Local5.
            recoveredBlock67PC := 118.
        ].
        recoveredBlock67Step = 118 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) getName.
            recoveredBlock67PC := 120.
        ].
        recoveredBlock67Step = 120 ifTrue: [
            (recoveredBlock67Stack0) getIncaHwSubsystems: (recoveredBlock67Stack1) projectDevices: (recoveredBlock67Stack2) path: (recoveredBlock67Stack3).
            recoveredBlock67PC := 123.
        ].
        recoveredBlock67Step = 123 ifTrue: [
            recoveredBlock67Stack0 := self.
            recoveredBlock67PC := 124.
        ].
        recoveredBlock67Step = 124 ifTrue: [
            recoveredBlock67Stack1 := recoveredBlock67Local5.
            recoveredBlock67PC := 126.
        ].
        recoveredBlock67Step = 126 ifTrue: [
            recoveredBlock67Stack2 := recoveredLocal2.
            recoveredBlock67PC := 129.
        ].
        recoveredBlock67Step = 129 ifTrue: [
            recoveredBlock67Stack3 := recoveredBlock67Local5.
            recoveredBlock67PC := 131.
        ].
        recoveredBlock67Step = 131 ifTrue: [
            recoveredBlock67Stack3 := (recoveredBlock67Stack3) getName.
            recoveredBlock67PC := 133.
        ].
        recoveredBlock67Step = 133 ifTrue: [
            recoveredBlock67Stack0 := (recoveredBlock67Stack0) getIncaHwDevices: (recoveredBlock67Stack1) projectDevices: (recoveredBlock67Stack2) path: (recoveredBlock67Stack3).
            recoveredBlock67PC := 136.
        ].
        recoveredBlock67Step = 136 ifTrue: [
            recoveredBlock67Result := recoveredBlock67Stack0.
            recoveredBlock67Done := true.
        ].
    ].
    recoveredBlock67Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d06dc; bytecode file offset 0xdcd000"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
selectProjectDevice
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) getProjectDevices.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredLocal3 := recoveredBlock4Value1.
    recoveredBlock4Value0
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Retrieving INCA devices of workspace 
"'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) workspacePath.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := '".'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := 'No INCA devices available in workspace "'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) workspacePath.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 recoveredBlock68Value3 |
    recoveredBlock68Value0 := recoveredBlock68Arg1.
    recoveredBlock68Value1 := (recoveredBlock68Value0) at: (3).
    recoveredBlock68Value2 := (self) projectDevicePath.
    recoveredBlock68Value3 := (recoveredBlock68Value1) = (recoveredBlock68Value2).
    recoveredBlock68Value3
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := CwListPrompter.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'INCA Device Selection Dialog'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) title: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := 'Select an INCA device:'.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) messageString: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := [:block281073c8Arg1 | 
    | block281073c8Value0 block281073c8Value1 block281073c8Value2 |
    block281073c8Value0 := block281073c8Arg1.
    block281073c8Value1 := [].
    block281073c8Value2 := (block281073c8Value0) at: (3) ifAbsent: (block281073c8Value1).
    block281073c8Value2
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) printBlock: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) selectedItems: (recoveredStack2).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptWithEtasFonts.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f7800; bytecode file offset 0xdf4104"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
changeIncaDb
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferActivexCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCurrentIncaDatabasePrompt: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) getName.
    recoveredLocal2 := recoveredBlock8Value1.
    recoveredBlock8Value2 := recoveredBlock8Arg1.
    recoveredBlock8Value3 := (recoveredBlock8Value2) releaseObject.
    recoveredBlock8Value3
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetIncaDbText.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := 'c:\'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'Select INCA database path:'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) promptForNewDatabasePathTitle: (recoveredStack1) defaultPath: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaDatabasePath.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock101Stack0 recoveredBlock101Stack1 recoveredBlock101Stack2 recoveredBlock101Stack3 recoveredBlock101PC recoveredBlock101Step recoveredBlock101Done recoveredBlock101Result |
    recoveredBlock101Stack0 := self.
    recoveredBlock101PC := 108.
    recoveredBlock101Done := false.
    [recoveredBlock101Done not] whileTrue: [
        recoveredBlock101Step := recoveredBlock101PC.
        recoveredBlock101Step = 108 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 109.
        ].
        recoveredBlock101Step = 109 ifTrue: [
            recoveredBlock101Stack2 := EtasExpProjectTransferActivexCalls.
            recoveredBlock101PC := 111.
        ].
        recoveredBlock101Step = 111 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) accessTool.
            recoveredBlock101PC := 113.
        ].
        recoveredBlock101Step = 113 ifTrue: [
            (recoveredBlock101Stack2 == nil) ifTrue: [recoveredBlock101PC := 152] ifFalse: [recoveredBlock101PC := 116].
        ].
        recoveredBlock101Step = 116 ifTrue: [
            recoveredBlock101PC := 117.
        ].
        recoveredBlock101Step = 117 ifTrue: [
            recoveredBlock101Stack1 := self.
            recoveredBlock101PC := 118.
        ].
        recoveredBlock101Step = 118 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal3.
            recoveredBlock101PC := 121.
        ].
        recoveredBlock101Step = 121 ifTrue: [
            (recoveredBlock101Stack1) incaDatabasePath: (recoveredBlock101Stack2).
            recoveredBlock101PC := 123.
        ].
        recoveredBlock101Step = 123 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 124.
        ].
        recoveredBlock101Step = 124 ifTrue: [
            recoveredBlock101Stack2 := self.
            recoveredBlock101PC := 125.
        ].
        recoveredBlock101Step = 125 ifTrue: [
            recoveredBlock101Stack2 := (recoveredBlock101Stack2) incaDatabaseWrapper.
            recoveredBlock101PC := 127.
        ].
        recoveredBlock101Step = 127 ifTrue: [
            (recoveredBlock101Stack2 ~~ nil) ifTrue: [recoveredBlock101PC := 152] ifFalse: [recoveredBlock101PC := 130].
        ].
        recoveredBlock101Step = 130 ifTrue: [
            recoveredBlock101PC := 131.
        ].
        recoveredBlock101Step = 131 ifTrue: [
            recoveredBlock101Stack1 := self.
            recoveredBlock101PC := 132.
        ].
        recoveredBlock101Step = 132 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal1.
            recoveredBlock101PC := 135.
        ].
        recoveredBlock101Step = 135 ifTrue: [
            (recoveredBlock101Stack1) incaDatabasePath: (recoveredBlock101Stack2).
            recoveredBlock101PC := 137.
        ].
        recoveredBlock101Step = 137 ifTrue: [
            recoveredBlock101Stack1 := nil.
            recoveredBlock101PC := 138.
        ].
        recoveredBlock101Step = 138 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal2.
            recoveredBlock101PC := 141.
        ].
        recoveredBlock101Step = 141 ifTrue: [
            (recoveredBlock101Stack2 == nil) ifTrue: [recoveredBlock101PC := 152] ifFalse: [recoveredBlock101PC := 144].
        ].
        recoveredBlock101Step = 144 ifTrue: [
            recoveredBlock101PC := 145.
        ].
        recoveredBlock101Step = 145 ifTrue: [
            recoveredBlock101Stack1 := EtasExpProjectTransferActivexCalls.
            recoveredBlock101PC := 147.
        ].
        recoveredBlock101Step = 147 ifTrue: [
            recoveredBlock101Stack2 := recoveredLocal2.
            recoveredBlock101PC := 150.
        ].
        recoveredBlock101Step = 150 ifTrue: [
            recoveredBlock101Stack1 := (recoveredBlock101Stack1) openIncaDatabase: (recoveredBlock101Stack2).
            recoveredBlock101PC := 152.
        ].
        recoveredBlock101Step = 152 ifTrue: [
            recoveredBlock101Result := recoveredBlock101Stack1.
            recoveredBlock101Done := true.
        ].
    ].
    recoveredBlock101Result
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 'Opening INCA database "'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20526144; bytecode file offset 0xe22a58"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
incaDatabaseWrapper
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferActivexCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCurrentIncaDatabasePrompt: (recoveredStack2).
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Kra'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'Call_71114'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'Cannot get current INCA Database name. Make sure INCA is installed properly.'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaDatabasePath.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaDatabasePath.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) incaDatabasePath.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'Cannot open INCA database with empty path.'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaDatabasePath.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'Cannot open INCA database. Path does not exist: 
'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) incaDatabasePath.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferActivexCalls.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaDatabasePath.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) openIncaDatabase: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIncaDataBase.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'Database "'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) getName.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := '" is not an INCA database.'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAscetDataBase.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'Database "'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) getName.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := '" is an ASCET database and cannot be used as INCA database.'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) getName.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaDatabasePath.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 195].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := EtasExpProjectTransferError.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := 'Cannot open INCA database: "'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) incaDatabasePath.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := '".'.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) errorMessagePrompt: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2052eadc; bytecode file offset 0xe2b3ec"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
projectDeviceWrapper
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workspaceWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
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
            recoveredStack0 := (recoveredStack0) projectDevicePath.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := [:recoveredBlock27Arg1 :recoveredBlock27Arg2 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg2.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal2.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) size.
            recoveredBlock27PC := 39.
        ].
        recoveredBlock27Step = 39 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) < (recoveredBlock27Stack2).
            recoveredBlock27PC := 40.
        ].
        recoveredBlock27Step = 40 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 44] ifFalse: [recoveredBlock27PC := 116].
        ].
        recoveredBlock27Step = 44 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal4.
            recoveredBlock27PC := 47.
        ].
        recoveredBlock27Step = 47 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 48.
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) getSystem: (recoveredBlock27Stack2).
            recoveredBlock27PC := 50.
        ].
        recoveredBlock27Step = 50 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 51.
        ].
        recoveredBlock27Step = 51 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 54.
        ].
        recoveredBlock27Step = 54 ifTrue: [
            (recoveredBlock27Stack1 ~~ nil) ifTrue: [recoveredBlock27PC := 73] ifFalse: [recoveredBlock27PC := 58].
        ].
        recoveredBlock27Step = 58 ifTrue: [
            recoveredBlock27Stack1 := EtasExpProjectTransferError.
            recoveredBlock27PC := 60.
        ].
        recoveredBlock27Step = 60 ifTrue: [
            recoveredBlock27Stack2 := 'Cannot retrieve hardware system "'.
            recoveredBlock27PC := 62.
        ].
        recoveredBlock27Step = 62 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 63.
        ].
        recoveredBlock27Step = 63 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 65.
        ].
        recoveredBlock27Step = 65 ifTrue: [
            recoveredBlock27Stack3 := '".'.
            recoveredBlock27PC := 67.
        ].
        recoveredBlock27Step = 67 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 69.
        ].
        recoveredBlock27Step = 69 ifTrue: [
            (recoveredBlock27Stack1) errorMessagePrompt: (recoveredBlock27Stack2).
            recoveredBlock27PC := 71.
        ].
        recoveredBlock27Step = 71 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 72.
        ].
        recoveredBlock27Step = 72 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 73 ifTrue: [
            recoveredBlock27Stack1 := ASDIncaApiWrapperHwSystem.
            recoveredBlock27PC := 75.
        ].
        recoveredBlock27Step = 75 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) new.
            recoveredBlock27PC := 77.
        ].
        recoveredBlock27Step = 77 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 78.
        ].
        recoveredBlock27Step = 78 ifTrue: [
            recoveredLocal4 := recoveredBlock27Stack2.
            recoveredBlock27PC := 81.
        ].
        recoveredBlock27Step = 81 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal1.
            recoveredBlock27PC := 84.
        ].
        recoveredBlock27Step = 84 ifTrue: [
            (recoveredBlock27Stack1) automationObject: (recoveredBlock27Stack2).
            recoveredBlock27PC := 86.
        ].
        recoveredBlock27Step = 86 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 87.
        ].
        recoveredBlock27Step = 87 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal4.
            recoveredBlock27PC := 90.
        ].
        recoveredBlock27Step = 90 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isHWSystem.
            recoveredBlock27PC := 92.
        ].
        recoveredBlock27Step = 92 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 112] ifFalse: [recoveredBlock27PC := 96].
        ].
        recoveredBlock27Step = 96 ifTrue: [
            recoveredBlock27PC := 97.
        ].
        recoveredBlock27Step = 97 ifTrue: [
            recoveredBlock27Stack1 := EtasExpProjectTransferError.
            recoveredBlock27PC := 99.
        ].
        recoveredBlock27Step = 99 ifTrue: [
            recoveredBlock27Stack2 := 'Database item "'.
            recoveredBlock27PC := 101.
        ].
        recoveredBlock27Step = 101 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 102.
        ].
        recoveredBlock27Step = 102 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 104.
        ].
        recoveredBlock27Step = 104 ifTrue: [
            recoveredBlock27Stack3 := '" is not an hardware system.'.
            recoveredBlock27PC := 106.
        ].
        recoveredBlock27Step = 106 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 108.
        ].
        recoveredBlock27Step = 108 ifTrue: [
            (recoveredBlock27Stack1) errorMessagePrompt: (recoveredBlock27Stack2).
            recoveredBlock27PC := 110.
        ].
        recoveredBlock27Step = 110 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 111.
        ].
        recoveredBlock27Step = 111 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 112 ifTrue: [
            recoveredBlock27PC := 194.
        ].
        recoveredBlock27Step = 116 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal4.
            recoveredBlock27PC := 119.
        ].
        recoveredBlock27Step = 119 ifTrue: [
            recoveredBlock27Stack2 := 'getDevice:'.
            recoveredBlock27PC := 121.
        ].
        recoveredBlock27Step = 121 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) respondsTo: (recoveredBlock27Stack2).
            recoveredBlock27PC := 123.
        ].
        recoveredBlock27Step = 123 ifTrue: [
            (recoveredBlock27Stack1) ifTrue: [recoveredBlock27PC := 126] ifFalse: [recoveredBlock27PC := 140].
        ].
        recoveredBlock27Step = 126 ifTrue: [
            recoveredBlock27Stack1 := recoveredLocal4.
            recoveredBlock27PC := 129.
        ].
        recoveredBlock27Step = 129 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Arg1.
            recoveredBlock27PC := 130.
        ].
        recoveredBlock27Step = 130 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) getDevice: (recoveredBlock27Stack2).
            recoveredBlock27PC := 132.
        ].
        recoveredBlock27Step = 132 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 133.
        ].
        recoveredBlock27Step = 133 ifTrue: [
            recoveredLocal1 := recoveredBlock27Stack2.
            recoveredBlock27PC := 136.
        ].
        recoveredBlock27Step = 136 ifTrue: [
            (recoveredBlock27Stack1 ~~ nil) ifTrue: [recoveredBlock27PC := 155] ifFalse: [recoveredBlock27PC := 140].
        ].
        recoveredBlock27Step = 140 ifTrue: [
            recoveredBlock27Stack1 := EtasExpProjectTransferError.
            recoveredBlock27PC := 142.
        ].
        recoveredBlock27Step = 142 ifTrue: [
            recoveredBlock27Stack2 := 'Cannot retrieve hardware device "'.
            recoveredBlock27PC := 144.
        ].
        recoveredBlock27Step = 144 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 145.
        ].
        recoveredBlock27Step = 145 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 147.
        ].
        recoveredBlock27Step = 147 ifTrue: [
            recoveredBlock27Stack3 := '".'.
            recoveredBlock27PC := 149.
        ].
        recoveredBlock27Step = 149 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 151.
        ].
        recoveredBlock27Step = 151 ifTrue: [
            (recoveredBlock27Stack1) errorMessagePrompt: (recoveredBlock27Stack2).
            recoveredBlock27PC := 153.
        ].
        recoveredBlock27Step = 153 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 154.
        ].
        recoveredBlock27Step = 154 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 155 ifTrue: [
            recoveredBlock27Stack1 := ASDIncaApiWrapperHwProjectDevice.
            recoveredBlock27PC := 157.
        ].
        recoveredBlock27Step = 157 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) new.
            recoveredBlock27PC := 159.
        ].
        recoveredBlock27Step = 159 ifTrue: [
            recoveredBlock27Stack2 := recoveredBlock27Stack1.
            recoveredBlock27PC := 160.
        ].
        recoveredBlock27Step = 160 ifTrue: [
            recoveredLocal4 := recoveredBlock27Stack2.
            recoveredBlock27PC := 163.
        ].
        recoveredBlock27Step = 163 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal1.
            recoveredBlock27PC := 166.
        ].
        recoveredBlock27Step = 166 ifTrue: [
            (recoveredBlock27Stack1) automationObject: (recoveredBlock27Stack2).
            recoveredBlock27PC := 168.
        ].
        recoveredBlock27Step = 168 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 169.
        ].
        recoveredBlock27Step = 169 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal4.
            recoveredBlock27PC := 172.
        ].
        recoveredBlock27Step = 172 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) isProjectDevice.
            recoveredBlock27PC := 174.
        ].
        recoveredBlock27Step = 174 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 194] ifFalse: [recoveredBlock27PC := 178].
        ].
        recoveredBlock27Step = 178 ifTrue: [
            recoveredBlock27PC := 179.
        ].
        recoveredBlock27Step = 179 ifTrue: [
            recoveredBlock27Stack1 := EtasExpProjectTransferError.
            recoveredBlock27PC := 181.
        ].
        recoveredBlock27Step = 181 ifTrue: [
            recoveredBlock27Stack2 := 'Database item "'.
            recoveredBlock27PC := 183.
        ].
        recoveredBlock27Step = 183 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 184.
        ].
        recoveredBlock27Step = 184 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 186.
        ].
        recoveredBlock27Step = 186 ifTrue: [
            recoveredBlock27Stack3 := '" is not an hardware project device.'.
            recoveredBlock27PC := 188.
        ].
        recoveredBlock27Step = 188 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) , (recoveredBlock27Stack3).
            recoveredBlock27PC := 190.
        ].
        recoveredBlock27Step = 190 ifTrue: [
            (recoveredBlock27Stack1) errorMessagePrompt: (recoveredBlock27Stack2).
            recoveredBlock27PC := 192.
        ].
        recoveredBlock27Step = 192 ifTrue: [
            recoveredBlock27Stack1 := nil.
            recoveredBlock27PC := 193.
        ].
        recoveredBlock27Step = 193 ifTrue: [
            ^recoveredBlock27Stack1
        ].
        recoveredBlock27Step = 194 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20557a3c; bytecode file offset 0xe54360"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
importAsap2ToInca
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaProjectFolderWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) incaProjectWrapperInFolder: (recoveredStack1) prompt: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAsap2Project.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'INCA database item "'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaProjectPath.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := '" is not an ASAM-2MC project.'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) getParentFolder.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := 'Failed to retrieve parent folder for INCA item "'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaProjectPath.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperIncaFolder.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) automationObject.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeComponent: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 127] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 'Failed to remove INCA item "'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaProjectPath.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) asap2FileName.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock137Value0 recoveredBlock137Value1 recoveredBlock137Value2 recoveredBlock137Value3 |
    recoveredBlock137Value0 := recoveredLocal3.
    recoveredBlock137Value1 := (self) asap2FileName.
    recoveredBlock137Value2 := (recoveredBlock137Value0) readASAP2File: (recoveredBlock137Value1).
    recoveredBlock137Value3 := recoveredBlock137Value2.
    recoveredLocal2 := recoveredBlock137Value3.
    recoveredBlock137Value2
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := 'INCA import of ASAM-2MC description 
'''.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := (recoveredStack3) asap2FileName.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := '''.'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) execLongOperation: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 211] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := EtasExpProjectTransferError.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := 'Failed to import ASAM-2MC file "'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := (recoveredStack2) asap2FileName.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := '" and HEX file "'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) hexFileName.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := '" to INCA item "'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) incaProjectPath.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := '".'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) errorMessagePrompt: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := ASDIncaApiWrapperAsap2Project.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack0) automationObject: (recoveredStack1).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20580e8c; bytecode file offset 0xe7d7a0"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
getIncaHwDevices: recoveredArg1 projectDevices: recoveredArg2 path: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) getAllDevices.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getData.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Local1 recoveredBlock28Local2 recoveredBlock28Local3 recoveredBlock28Local4 recoveredBlock28Local5 recoveredBlock28Local6 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := OleAutomationObject.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) pdispVal.
            recoveredBlock28PC := 40.
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) forDispatch: (recoveredBlock28Stack2).
            recoveredBlock28PC := 42.
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredLocal3 := recoveredBlock28Stack1.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack1 := ASDIncaApiWrapperHwDevice.
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 50.
        ].
        recoveredBlock28Step = 50 ifTrue: [
            recoveredBlock28Local6 := recoveredBlock28Stack2.
            recoveredBlock28PC := 53.
        ].
        recoveredBlock28Step = 53 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal3.
            recoveredBlock28PC := 56.
        ].
        recoveredBlock28Step = 56 ifTrue: [
            (recoveredBlock28Stack1) automationObject: (recoveredBlock28Stack2).
            recoveredBlock28PC := 58.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local6.
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) isProjectDevice.
            recoveredBlock28PC := 64.
        ].
        recoveredBlock28Step = 64 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 68] ifFalse: [recoveredBlock28PC := 257].
        ].
        recoveredBlock28Step = 68 ifTrue: [
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Stack1 := ASDIncaApiWrapperHwProjectDevice.
            recoveredBlock28PC := 71.
        ].
        recoveredBlock28Step = 71 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 74.
        ].
        recoveredBlock28Step = 74 ifTrue: [
            recoveredBlock28Local6 := recoveredBlock28Stack2.
            recoveredBlock28PC := 77.
        ].
        recoveredBlock28Step = 77 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal3.
            recoveredBlock28PC := 80.
        ].
        recoveredBlock28Step = 80 ifTrue: [
            (recoveredBlock28Stack1) automationObject: (recoveredBlock28Stack2).
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 83.
        ].
        recoveredBlock28Step = 83 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local6.
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) getDeviceDescription.
            recoveredBlock28PC := 88.
        ].
        recoveredBlock28Step = 88 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 89.
        ].
        recoveredBlock28Step = 89 ifTrue: [
            recoveredLocal3 := recoveredBlock28Stack3.
            recoveredBlock28PC := 92.
        ].
        recoveredBlock28Step = 92 ifTrue: [
            (recoveredBlock28Stack2 == nil) ifTrue: [recoveredBlock28PC := 257] ifFalse: [recoveredBlock28PC := 96].
        ].
        recoveredBlock28Step = 96 ifTrue: [
            recoveredBlock28PC := 97.
        ].
        recoveredBlock28Step = 97 ifTrue: [
            recoveredBlock28Stack1 := ASDIncaApiWrapperHwDeviceDescription.
            recoveredBlock28PC := 99.
        ].
        recoveredBlock28Step = 99 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 101.
        ].
        recoveredBlock28Step = 101 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 102.
        ].
        recoveredBlock28Step = 102 ifTrue: [
            recoveredBlock28Local5 := recoveredBlock28Stack2.
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal3.
            recoveredBlock28PC := 108.
        ].
        recoveredBlock28Step = 108 ifTrue: [
            (recoveredBlock28Stack1) automationObject: (recoveredBlock28Stack2).
            recoveredBlock28PC := 110.
        ].
        recoveredBlock28Step = 110 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 111.
        ].
        recoveredBlock28Step = 111 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local5.
            recoveredBlock28PC := 114.
        ].
        recoveredBlock28Step = 114 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) getName.
            recoveredBlock28PC := 116.
        ].
        recoveredBlock28Step = 116 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 117.
        ].
        recoveredBlock28Step = 117 ifTrue: [
            recoveredBlock28Local4 := recoveredBlock28Stack3.
            recoveredBlock28PC := 120.
        ].
        recoveredBlock28Step = 120 ifTrue: [
            (recoveredBlock28Stack2 == nil) ifTrue: [recoveredBlock28PC := 249] ifFalse: [recoveredBlock28PC := 124].
        ].
        recoveredBlock28Step = 124 ifTrue: [
            recoveredBlock28PC := 125.
        ].
        recoveredBlock28Step = 125 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local4.
            recoveredBlock28PC := 128.
        ].
        recoveredBlock28Step = 128 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) asLowercase.
            recoveredBlock28PC := 130.
        ].
        recoveredBlock28Step = 130 ifTrue: [
            recoveredBlock28Local3 := recoveredBlock28Stack1.
            recoveredBlock28PC := 133.
        ].
        recoveredBlock28Step = 133 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 134.
        ].
        recoveredBlock28Step = 134 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) validDeviceDescriptionPrefixes.
            recoveredBlock28PC := 136.
        ].
        recoveredBlock28Step = 136 ifTrue: [
            recoveredBlock28Stack2 := [:recoveredBlock28Block136Arg1 | 
    | recoveredBlock28Block136Stack0 recoveredBlock28Block136Stack1 recoveredBlock28Block136Stack2 recoveredBlock28Block136Stack3 recoveredBlock28Block136Stack4 recoveredBlock28Block136PC recoveredBlock28Block136Step recoveredBlock28Block136Done recoveredBlock28Block136Result |
    recoveredBlock28Block136Stack0 := nil.
    recoveredBlock28Block136PC := 142.
    recoveredBlock28Block136Done := false.
    [recoveredBlock28Block136Done not] whileTrue: [
        recoveredBlock28Block136Step := recoveredBlock28Block136PC.
        recoveredBlock28Block136Step = 142 ifTrue: [
            recoveredBlock28Block136Stack1 := false.
            recoveredBlock28Block136PC := 143.
        ].
        recoveredBlock28Block136Step = 143 ifTrue: [
            recoveredBlock28Block136Stack2 := recoveredBlock28Local3.
            recoveredBlock28Block136PC := 146.
        ].
        recoveredBlock28Block136Step = 146 ifTrue: [
            recoveredBlock28Block136Stack2 := (recoveredBlock28Block136Stack2) size.
            recoveredBlock28Block136PC := 148.
        ].
        recoveredBlock28Block136Step = 148 ifTrue: [
            recoveredBlock28Block136Stack3 := recoveredBlock28Block136Arg1.
            recoveredBlock28Block136PC := 149.
        ].
        recoveredBlock28Block136Step = 149 ifTrue: [
            recoveredBlock28Block136Stack3 := (recoveredBlock28Block136Stack3) size.
            recoveredBlock28Block136PC := 151.
        ].
        recoveredBlock28Block136Step = 151 ifTrue: [
            recoveredBlock28Block136Stack2 := (recoveredBlock28Block136Stack2) >= (recoveredBlock28Block136Stack3).
            recoveredBlock28Block136PC := 152.
        ].
        recoveredBlock28Block136Step = 152 ifTrue: [
            (recoveredBlock28Block136Stack2) ifTrue: [recoveredBlock28Block136PC := 156] ifFalse: [recoveredBlock28Block136PC := 171].
        ].
        recoveredBlock28Block136Step = 156 ifTrue: [
            recoveredBlock28Block136PC := 157.
        ].
        recoveredBlock28Block136Step = 157 ifTrue: [
            recoveredBlock28Block136Stack1 := recoveredBlock28Local3.
            recoveredBlock28Block136PC := 160.
        ].
        recoveredBlock28Block136Step = 160 ifTrue: [
            recoveredBlock28Block136Stack2 := 1.
            recoveredBlock28Block136PC := 162.
        ].
        recoveredBlock28Block136Step = 162 ifTrue: [
            recoveredBlock28Block136Stack3 := recoveredBlock28Block136Arg1.
            recoveredBlock28Block136PC := 163.
        ].
        recoveredBlock28Block136Step = 163 ifTrue: [
            recoveredBlock28Block136Stack3 := (recoveredBlock28Block136Stack3) size.
            recoveredBlock28Block136PC := 165.
        ].
        recoveredBlock28Block136Step = 165 ifTrue: [
            recoveredBlock28Block136Stack1 := (recoveredBlock28Block136Stack1) copyFrom: (recoveredBlock28Block136Stack2) to: (recoveredBlock28Block136Stack3).
            recoveredBlock28Block136PC := 167.
        ].
        recoveredBlock28Block136Step = 167 ifTrue: [
            recoveredBlock28Block136Stack2 := recoveredBlock28Block136Arg1.
            recoveredBlock28Block136PC := 168.
        ].
        recoveredBlock28Block136Step = 168 ifTrue: [
            recoveredBlock28Block136Stack2 := (recoveredBlock28Block136Stack2) asLowercase.
            recoveredBlock28Block136PC := 170.
        ].
        recoveredBlock28Block136Step = 170 ifTrue: [
            recoveredBlock28Block136Stack1 := (recoveredBlock28Block136Stack1) = (recoveredBlock28Block136Stack2).
            recoveredBlock28Block136PC := 171.
        ].
        recoveredBlock28Block136Step = 171 ifTrue: [
            recoveredBlock28Block136Result := recoveredBlock28Block136Stack1.
            recoveredBlock28Block136Done := true.
        ].
    ].
    recoveredBlock28Block136Result
].
            recoveredBlock28PC := 172.
        ].
        recoveredBlock28Step = 172 ifTrue: [
            recoveredBlock28Stack3 := [].
            recoveredBlock28PC := 174.
        ].
        recoveredBlock28Step = 174 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) detect: (recoveredBlock28Stack2) ifNone: (recoveredBlock28Stack3).
            recoveredBlock28PC := 176.
        ].
        recoveredBlock28Step = 176 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 179.
        ].
        recoveredBlock28Step = 179 ifTrue: [
            recoveredBlock28Stack1 := nil.
            recoveredBlock28PC := 180.
        ].
        recoveredBlock28Step = 180 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local2.
            recoveredBlock28PC := 183.
        ].
        recoveredBlock28Step = 183 ifTrue: [
            (recoveredBlock28Stack2 == nil) ifTrue: [recoveredBlock28PC := 241] ifFalse: [recoveredBlock28PC := 186].
        ].
        recoveredBlock28Step = 186 ifTrue: [
            recoveredBlock28PC := 187.
        ].
        recoveredBlock28Step = 187 ifTrue: [
            recoveredBlock28Stack1 := OrderedCollection.
            recoveredBlock28PC := 189.
        ].
        recoveredBlock28Step = 189 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) new.
            recoveredBlock28PC := 191.
        ].
        recoveredBlock28Step = 191 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 194.
        ].
        recoveredBlock28Step = 194 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 197.
        ].
        recoveredBlock28Step = 197 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local6.
            recoveredBlock28PC := 200.
        ].
        recoveredBlock28Step = 200 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 202.
        ].
        recoveredBlock28Step = 202 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 205.
        ].
        recoveredBlock28Step = 205 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local5.
            recoveredBlock28PC := 208.
        ].
        recoveredBlock28Step = 208 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 210.
        ].
        recoveredBlock28Step = 210 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Local1.
            recoveredBlock28PC := 213.
        ].
        recoveredBlock28Step = 213 ifTrue: [
            recoveredBlock28Stack2 := recoveredArg3.
            recoveredBlock28PC := 216.
        ].
        recoveredBlock28Step = 216 ifTrue: [
            recoveredBlock28Stack3 := '\'.
            recoveredBlock28PC := 218.
        ].
        recoveredBlock28Step = 218 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) , (recoveredBlock28Stack3).
            recoveredBlock28PC := 220.
        ].
        recoveredBlock28Step = 220 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local6.
            recoveredBlock28PC := 223.
        ].
        recoveredBlock28Step = 223 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) getName.
            recoveredBlock28PC := 225.
        ].
        recoveredBlock28Step = 225 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) , (recoveredBlock28Stack3).
            recoveredBlock28PC := 227.
        ].
        recoveredBlock28Step = 227 ifTrue: [
            (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 229.
        ].
        recoveredBlock28Step = 229 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg2.
            recoveredBlock28PC := 232.
        ].
        recoveredBlock28Step = 232 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Local1.
            recoveredBlock28PC := 235.
        ].
        recoveredBlock28Step = 235 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) add: (recoveredBlock28Stack2).
            recoveredBlock28PC := 237.
        ].
        recoveredBlock28Step = 237 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 238.
        ].
        recoveredBlock28Step = 238 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 241.
        ].
        recoveredBlock28Step = 241 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 242.
        ].
        recoveredBlock28Step = 242 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 243.
        ].
        recoveredBlock28Step = 243 ifTrue: [
            recoveredBlock28Local3 := recoveredBlock28Stack3.
            recoveredBlock28PC := 246.
        ].
        recoveredBlock28Step = 246 ifTrue: [
            recoveredBlock28Local2 := recoveredBlock28Stack2.
            recoveredBlock28PC := 249.
        ].
        recoveredBlock28Step = 249 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 250.
        ].
        recoveredBlock28Step = 250 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Stack2.
            recoveredBlock28PC := 251.
        ].
        recoveredBlock28Step = 251 ifTrue: [
            recoveredBlock28Local5 := recoveredBlock28Stack3.
            recoveredBlock28PC := 254.
        ].
        recoveredBlock28Step = 254 ifTrue: [
            recoveredBlock28Local4 := recoveredBlock28Stack2.
            recoveredBlock28PC := 257.
        ].
        recoveredBlock28Step = 257 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206a7e2c; bytecode file offset 0xfa48d4"
!EtasExpProjectTransferDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal21 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal20 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 recoveredBlock21Value16 recoveredBlock21Value17 recoveredBlock21Value18 |
    recoveredBlock21Value0 := recoveredBlock21Arg1.
    recoveredBlock21Value1 := recoveredBlock21Value0.
    (recoveredBlock21Value1) allowShellResize: (true).
    recoveredBlock21Value2 := recoveredBlock21Value0.
    recoveredBlock21Value3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock21Value2) mwmInputMode: (recoveredBlock21Value3).
    recoveredBlock21Value4 := recoveredBlock21Value0.
    (recoveredBlock21Value4) title: ('INCA Project Transfer').
    recoveredBlock21Value5 := recoveredBlock21Value0.
    recoveredBlock21Value6 := (self) minSize.
    recoveredBlock21Value7 := (recoveredBlock21Value6) x.
    (recoveredBlock21Value5) width: (recoveredBlock21Value7).
    recoveredBlock21Value8 := recoveredBlock21Value0.
    recoveredBlock21Value9 := (self) minSize.
    recoveredBlock21Value10 := (recoveredBlock21Value9) y.
    (recoveredBlock21Value8) height: (recoveredBlock21Value10).
    recoveredBlock21Value11 := MWMDECORBORDER.
    recoveredBlock21Value12 := MWMDECORRESIZEH.
    recoveredBlock21Value13 := (recoveredBlock21Value11) | (recoveredBlock21Value12).
    recoveredBlock21Value14 := MWMDECORTITLE.
    recoveredBlock21Value15 := (recoveredBlock21Value13) | (recoveredBlock21Value14).
    recoveredBlock21Value16 := MWMDECORMENU.
    recoveredBlock21Value17 := (recoveredBlock21Value15) | (recoveredBlock21Value16).
    recoveredBlock21Value18 := (recoveredBlock21Value0) mwmDecorations: (recoveredBlock21Value17).
    recoveredBlock21Value18
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal19.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := 'widgetIncaConnectorFrame'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := [:block2812f700Arg1 | 
    | block2812f700Value0 block2812f700Value1 |
    block2812f700Value0 := block2812f700Arg1.
    block2812f700Value1 := block2812f700Value0.
    (block2812f700Value1) labelString: ('INCA Connector:').
    block2812f700Value0
].
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFrame: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'widgetIncaConnectorFrame'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 'widgetIncaConnectorForm'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := [:block2812f724Arg1 | 
    | block2812f724Value0 |
    block2812f724Value0 := block2812f724Arg1.
    block2812f724Value0
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := 'widgetIncaConnectorForm'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := 'widgetIncaDbLabel'.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := [:block2812f748Arg1 | 
    | block2812f748Value0 block2812f748Value1 block2812f748Value2 block2812f748Value3 block2812f748Value4 block2812f748Value5 |
    block2812f748Value0 := block2812f748Arg1.
    block2812f748Value1 := block2812f748Value0.
    (block2812f748Value1) height: (24).
    block2812f748Value2 := block2812f748Value0.
    (block2812f748Value2) width: (100).
    block2812f748Value3 := block2812f748Value0.
    block2812f748Value4 := XmALIGNMENTBEGINNING.
    (block2812f748Value3) alignment: (block2812f748Value4).
    block2812f748Value5 := (block2812f748Value0) labelString: ('Database:').
    block2812f748Value5
].
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 'widgetIncaDbLabel'.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := 'widgetIncaDbText'.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := [:block2812f76cArg1 | 
    | block2812f76cValue0 block2812f76cValue1 |
    block2812f76cValue0 := block2812f76cArg1.
    block2812f76cValue1 := (block2812f76cValue0) height: (24).
    block2812f76cValue1
].
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := 'widgetIncaDbText'.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := 'widgetChangeIncaDbButton'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack3 := [:block2812f790Arg1 | 
    | block2812f790Value0 block2812f790Value1 block2812f790Value2 block2812f790Value3 block2812f790Value4 |
    block2812f790Value0 := block2812f790Arg1.
    block2812f790Value1 := block2812f790Value0.
    (block2812f790Value1) labelString: ('Browse ...').
    block2812f790Value2 := block2812f790Value0.
    (block2812f790Value2) mnemonic: ($A).
    block2812f790Value3 := block2812f790Value0.
    (block2812f790Value3) height: (24).
    block2812f790Value4 := (block2812f790Value0) width: (90).
    block2812f790Value4
].
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := 'widgetChangeIncaDbButton'.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := 'widgetWorkspaceLabel'.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := [:block2812f7b4Arg1 | 
    | block2812f7b4Value0 block2812f7b4Value1 block2812f7b4Value2 block2812f7b4Value3 block2812f7b4Value4 block2812f7b4Value5 |
    block2812f7b4Value0 := block2812f7b4Arg1.
    block2812f7b4Value1 := block2812f7b4Value0.
    (block2812f7b4Value1) height: (24).
    block2812f7b4Value2 := block2812f7b4Value0.
    (block2812f7b4Value2) width: (100).
    block2812f7b4Value3 := block2812f7b4Value0.
    block2812f7b4Value4 := XmALIGNMENTBEGINNING.
    (block2812f7b4Value3) alignment: (block2812f7b4Value4).
    block2812f7b4Value5 := (block2812f7b4Value0) labelString: ('Workspace:').
    block2812f7b4Value5
].
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := 'widgetWorkspaceLabel'.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := 'widgetWorkspaceText'.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack3 := [:block2812f7d8Arg1 | 
    | block2812f7d8Value0 block2812f7d8Value1 |
    block2812f7d8Value0 := block2812f7d8Arg1.
    block2812f7d8Value1 := (block2812f7d8Value0) height: (24).
    block2812f7d8Value1
].
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack2 := 'widgetWorkspaceText'.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := 'widgetCreateWorkspaceButton'.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := [:block2812f7fcArg1 | 
    | block2812f7fcValue0 block2812f7fcValue1 block2812f7fcValue2 block2812f7fcValue3 block2812f7fcValue4 |
    block2812f7fcValue0 := block2812f7fcArg1.
    block2812f7fcValue1 := block2812f7fcValue0.
    (block2812f7fcValue1) labelString: ('Browse ...').
    block2812f7fcValue2 := block2812f7fcValue0.
    (block2812f7fcValue2) mnemonic: ($A).
    block2812f7fcValue3 := block2812f7fcValue0.
    (block2812f7fcValue3) height: (24).
    block2812f7fcValue4 := (block2812f7fcValue0) width: (90).
    block2812f7fcValue4
].
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := 'widgetCreateWorkspaceButton'.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack2 := 'widgetDeviceLabel'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack3 := [:block2812f820Arg1 | 
    | block2812f820Value0 block2812f820Value1 block2812f820Value2 block2812f820Value3 block2812f820Value4 block2812f820Value5 |
    block2812f820Value0 := block2812f820Arg1.
    block2812f820Value1 := block2812f820Value0.
    (block2812f820Value1) height: (24).
    block2812f820Value2 := block2812f820Value0.
    (block2812f820Value2) width: (100).
    block2812f820Value3 := block2812f820Value0.
    block2812f820Value4 := XmALIGNMENTBEGINNING.
    (block2812f820Value3) alignment: (block2812f820Value4).
    block2812f820Value5 := (block2812f820Value0) labelString: ('Device:').
    block2812f820Value5
].
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            recoveredStack2 := 'widgetDeviceLabel'.
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := 'widgetDeviceText'.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredStack3 := [:block2812f844Arg1 | 
    | block2812f844Value0 block2812f844Value1 |
    block2812f844Value0 := block2812f844Arg1.
    block2812f844Value1 := (block2812f844Value0) height: (24).
    block2812f844Value1
].
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := 'widgetDeviceText'.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack2 := 'widgetBrowseDeviceButton'.
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack3 := [:block2812f868Arg1 | 
    | block2812f868Value0 block2812f868Value1 block2812f868Value2 block2812f868Value3 block2812f868Value4 |
    block2812f868Value0 := block2812f868Arg1.
    block2812f868Value1 := block2812f868Value0.
    (block2812f868Value1) labelString: ('Browse ...').
    block2812f868Value2 := block2812f868Value0.
    (block2812f868Value2) mnemonic: ($A).
    block2812f868Value3 := block2812f868Value0.
    (block2812f868Value3) height: (24).
    block2812f868Value4 := (block2812f868Value0) width: (90).
    block2812f868Value4
].
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack2 := 'widgetBrowseDeviceButton'.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack2 := 'widgetProjectLabel'.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack3 := [:block2812f88cArg1 | 
    | block2812f88cValue0 block2812f88cValue1 block2812f88cValue2 block2812f88cValue3 block2812f88cValue4 block2812f88cValue5 |
    block2812f88cValue0 := block2812f88cArg1.
    block2812f88cValue1 := block2812f88cValue0.
    (block2812f88cValue1) height: (24).
    block2812f88cValue2 := block2812f88cValue0.
    (block2812f88cValue2) width: (100).
    block2812f88cValue3 := block2812f88cValue0.
    block2812f88cValue4 := XmALIGNMENTBEGINNING.
    (block2812f88cValue3) alignment: (block2812f88cValue4).
    block2812f88cValue5 := (block2812f88cValue0) labelString: ('Project:').
    block2812f88cValue5
].
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := 'widgetProjectLabel'.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack2 := 'widgetProjectText'.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack3 := [:block2812f8b0Arg1 | 
    | block2812f8b0Value0 block2812f8b0Value1 |
    block2812f8b0Value0 := block2812f8b0Arg1.
    block2812f8b0Value1 := (block2812f8b0Value0) height: (24).
    block2812f8b0Value1
].
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredPC := 714.
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack2 := 'widgetProjectText'.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack2 := 'widgetChangeProjectButton'.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack3 := [:block2812f8d4Arg1 | 
    | block2812f8d4Value0 block2812f8d4Value1 block2812f8d4Value2 block2812f8d4Value3 block2812f8d4Value4 |
    block2812f8d4Value0 := block2812f8d4Arg1.
    block2812f8d4Value1 := block2812f8d4Value0.
    (block2812f8d4Value1) labelString: ('Browse ...').
    block2812f8d4Value2 := block2812f8d4Value0.
    (block2812f8d4Value2) mnemonic: ($A).
    block2812f8d4Value3 := block2812f8d4Value0.
    (block2812f8d4Value3) height: (24).
    block2812f8d4Value4 := (block2812f8d4Value0) width: (90).
    block2812f8d4Value4
].
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := 'widgetChangeProjectButton'.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := 'widgetButtonContinue'.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack3 := [:block2812f8f8Arg1 | 
    | block2812f8f8Value0 block2812f8f8Value1 block2812f8f8Value2 block2812f8f8Value3 block2812f8f8Value4 |
    block2812f8f8Value0 := block2812f8f8Arg1.
    block2812f8f8Value1 := block2812f8f8Value0.
    (block2812f8f8Value1) labelString: ('OK').
    block2812f8f8Value2 := block2812f8f8Value0.
    (block2812f8f8Value2) mnemonic: ($O).
    block2812f8f8Value3 := block2812f8f8Value0.
    (block2812f8f8Value3) height: (24).
    block2812f8f8Value4 := (block2812f8f8Value0) width: (90).
    block2812f8f8Value4
].
            recoveredPC := 800.
        ].
        recoveredStep = 800 ifTrue: [
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack2 := 'widgetButtonContinue'.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 845.
        ].
        recoveredStep = 845 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack2 := 'widgetButtonAbort'.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack3 := [:block2812f91cArg1 | 
    | block2812f91cValue0 block2812f91cValue1 block2812f91cValue2 block2812f91cValue3 block2812f91cValue4 |
    block2812f91cValue0 := block2812f91cArg1.
    block2812f91cValue1 := block2812f91cValue0.
    (block2812f91cValue1) labelString: ('Cancel').
    block2812f91cValue2 := block2812f91cValue0.
    (block2812f91cValue2) mnemonic: ($C).
    block2812f91cValue3 := block2812f91cValue0.
    (block2812f91cValue3) height: (24).
    block2812f91cValue4 := (block2812f91cValue0) width: (90).
    block2812f91cValue4
].
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            recoveredStack1 := recoveredLocal20.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            recoveredStack2 := 'widgetButtonAbort'.
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack2 := [:recoveredBlock908Arg1 | 
    | recoveredBlock908Value0 recoveredBlock908Value1 recoveredBlock908Value2 |
    recoveredBlock908Value0 := recoveredBlock908Arg1.
    recoveredBlock908Value1 := recoveredLocal17.
    recoveredBlock908Value2 := (recoveredBlock908Value0) workWindow: (recoveredBlock908Value1).
    recoveredBlock908Value2
].
            recoveredPC := 924.
        ].
        recoveredStep = 924 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 929.
        ].
        recoveredStep = 929 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 932.
        ].
        recoveredStep = 932 ifTrue: [
            recoveredStack2 := [:block2812f940Arg1 | 
    | block2812f940Value0 block2812f940Value1 block2812f940Value2 block2812f940Value3 block2812f940Value4 block2812f940Value5 block2812f940Value6 block2812f940Value7 block2812f940Value8 block2812f940Value9 |
    block2812f940Value0 := block2812f940Arg1.
    block2812f940Value1 := block2812f940Value0.
    block2812f940Value2 := XmATTACHFORM.
    (block2812f940Value1) topAttachment: (block2812f940Value2).
    block2812f940Value3 := block2812f940Value0.
    (block2812f940Value3) topOffset: (5).
    block2812f940Value4 := block2812f940Value0.
    block2812f940Value5 := XmATTACHFORM.
    (block2812f940Value4) rightAttachment: (block2812f940Value5).
    block2812f940Value6 := block2812f940Value0.
    (block2812f940Value6) rightOffset: (5).
    block2812f940Value7 := block2812f940Value0.
    block2812f940Value8 := XmATTACHFORM.
    (block2812f940Value7) leftAttachment: (block2812f940Value8).
    block2812f940Value9 := (block2812f940Value0) leftOffset: (5).
    block2812f940Value9
].
            recoveredPC := 936.
        ].
        recoveredStep = 936 ifTrue: [
            recoveredPC := 986.
        ].
        recoveredStep = 986 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 991.
        ].
        recoveredStep = 991 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 994.
        ].
        recoveredStep = 994 ifTrue: [
            recoveredStack2 := [:block2812f964Arg1 | 
    | block2812f964Value0 block2812f964Value1 block2812f964Value2 block2812f964Value3 block2812f964Value4 block2812f964Value5 block2812f964Value6 |
    block2812f964Value0 := block2812f964Arg1.
    block2812f964Value1 := block2812f964Value0.
    block2812f964Value2 := XmATTACHFORM.
    (block2812f964Value1) topAttachment: (block2812f964Value2).
    block2812f964Value3 := block2812f964Value0.
    (block2812f964Value3) topOffset: (5).
    block2812f964Value4 := block2812f964Value0.
    block2812f964Value5 := XmATTACHFORM.
    (block2812f964Value4) leftAttachment: (block2812f964Value5).
    block2812f964Value6 := (block2812f964Value0) leftOffset: (5).
    block2812f964Value6
].
            recoveredPC := 998.
        ].
        recoveredStep = 998 ifTrue: [
            recoveredPC := 1034.
        ].
        recoveredStep = 1034 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1039.
        ].
        recoveredStep = 1039 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1042.
        ].
        recoveredStep = 1042 ifTrue: [
            recoveredStack2 := [:recoveredBlock1042Arg1 | 
    | recoveredBlock1042Value0 recoveredBlock1042Value1 recoveredBlock1042Value2 recoveredBlock1042Value3 recoveredBlock1042Value4 recoveredBlock1042Value5 recoveredBlock1042Value6 recoveredBlock1042Value7 recoveredBlock1042Value8 recoveredBlock1042Value9 recoveredBlock1042Value10 recoveredBlock1042Value11 recoveredBlock1042Value12 recoveredBlock1042Value13 |
    recoveredBlock1042Value0 := recoveredBlock1042Arg1.
    recoveredBlock1042Value1 := recoveredBlock1042Value0.
    recoveredBlock1042Value2 := XmATTACHFORM.
    (recoveredBlock1042Value1) topAttachment: (recoveredBlock1042Value2).
    recoveredBlock1042Value3 := recoveredBlock1042Value0.
    (recoveredBlock1042Value3) topOffset: (5).
    recoveredBlock1042Value4 := recoveredBlock1042Value0.
    recoveredBlock1042Value5 := XmATTACHWIDGET.
    (recoveredBlock1042Value4) rightAttachment: (recoveredBlock1042Value5).
    recoveredBlock1042Value6 := recoveredBlock1042Value0.
    recoveredBlock1042Value7 := recoveredLocal12.
    (recoveredBlock1042Value6) rightWidget: (recoveredBlock1042Value7).
    recoveredBlock1042Value8 := recoveredBlock1042Value0.
    (recoveredBlock1042Value8) rightOffset: (10).
    recoveredBlock1042Value9 := recoveredBlock1042Value0.
    recoveredBlock1042Value10 := XmATTACHWIDGET.
    (recoveredBlock1042Value9) leftAttachment: (recoveredBlock1042Value10).
    recoveredBlock1042Value11 := recoveredBlock1042Value0.
    recoveredBlock1042Value12 := recoveredLocal14.
    (recoveredBlock1042Value11) leftWidget: (recoveredBlock1042Value12).
    recoveredBlock1042Value13 := (recoveredBlock1042Value0) leftOffset: (5).
    recoveredBlock1042Value13
].
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            recoveredStack2 := [:block2812f988Arg1 | 
    | block2812f988Value0 block2812f988Value1 block2812f988Value2 block2812f988Value3 block2812f988Value4 block2812f988Value5 block2812f988Value6 |
    block2812f988Value0 := block2812f988Arg1.
    block2812f988Value1 := block2812f988Value0.
    block2812f988Value2 := XmATTACHFORM.
    (block2812f988Value1) topAttachment: (block2812f988Value2).
    block2812f988Value3 := block2812f988Value0.
    (block2812f988Value3) topOffset: (5).
    block2812f988Value4 := block2812f988Value0.
    block2812f988Value5 := XmATTACHFORM.
    (block2812f988Value4) rightAttachment: (block2812f988Value5).
    block2812f988Value6 := (block2812f988Value0) rightOffset: (5).
    block2812f988Value6
].
            recoveredPC := 1122.
        ].
        recoveredStep = 1122 ifTrue: [
            recoveredPC := 1158.
        ].
        recoveredStep = 1158 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1163.
        ].
        recoveredStep = 1163 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 1166.
        ].
        recoveredStep = 1166 ifTrue: [
            recoveredStack2 := [:recoveredBlock1166Arg1 | 
    | recoveredBlock1166Value0 recoveredBlock1166Value1 recoveredBlock1166Value2 recoveredBlock1166Value3 recoveredBlock1166Value4 recoveredBlock1166Value5 recoveredBlock1166Value6 recoveredBlock1166Value7 recoveredBlock1166Value8 |
    recoveredBlock1166Value0 := recoveredBlock1166Arg1.
    recoveredBlock1166Value1 := recoveredBlock1166Value0.
    recoveredBlock1166Value2 := XmATTACHWIDGET.
    (recoveredBlock1166Value1) topAttachment: (recoveredBlock1166Value2).
    recoveredBlock1166Value3 := recoveredBlock1166Value0.
    recoveredBlock1166Value4 := recoveredLocal14.
    (recoveredBlock1166Value3) topWidget: (recoveredBlock1166Value4).
    recoveredBlock1166Value5 := recoveredBlock1166Value0.
    (recoveredBlock1166Value5) topOffset: (5).
    recoveredBlock1166Value6 := recoveredBlock1166Value0.
    recoveredBlock1166Value7 := XmATTACHFORM.
    (recoveredBlock1166Value6) leftAttachment: (recoveredBlock1166Value7).
    recoveredBlock1166Value8 := (recoveredBlock1166Value0) leftOffset: (5).
    recoveredBlock1166Value8
].
            recoveredPC := 1212.
        ].
        recoveredStep = 1212 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1217.
        ].
        recoveredStep = 1217 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 1220.
        ].
        recoveredStep = 1220 ifTrue: [
            recoveredStack2 := [:recoveredBlock1220Arg1 | 
    | recoveredBlock1220Value0 recoveredBlock1220Value1 recoveredBlock1220Value2 recoveredBlock1220Value3 recoveredBlock1220Value4 recoveredBlock1220Value5 recoveredBlock1220Value6 recoveredBlock1220Value7 recoveredBlock1220Value8 recoveredBlock1220Value9 recoveredBlock1220Value10 recoveredBlock1220Value11 recoveredBlock1220Value12 recoveredBlock1220Value13 recoveredBlock1220Value14 recoveredBlock1220Value15 |
    recoveredBlock1220Value0 := recoveredBlock1220Arg1.
    recoveredBlock1220Value1 := recoveredBlock1220Value0.
    recoveredBlock1220Value2 := XmATTACHWIDGET.
    (recoveredBlock1220Value1) topAttachment: (recoveredBlock1220Value2).
    recoveredBlock1220Value3 := recoveredBlock1220Value0.
    recoveredBlock1220Value4 := recoveredLocal13.
    (recoveredBlock1220Value3) topWidget: (recoveredBlock1220Value4).
    recoveredBlock1220Value5 := recoveredBlock1220Value0.
    (recoveredBlock1220Value5) topOffset: (5).
    recoveredBlock1220Value6 := recoveredBlock1220Value0.
    recoveredBlock1220Value7 := XmATTACHWIDGET.
    (recoveredBlock1220Value6) rightAttachment: (recoveredBlock1220Value7).
    recoveredBlock1220Value8 := recoveredBlock1220Value0.
    recoveredBlock1220Value9 := recoveredLocal9.
    (recoveredBlock1220Value8) rightWidget: (recoveredBlock1220Value9).
    recoveredBlock1220Value10 := recoveredBlock1220Value0.
    (recoveredBlock1220Value10) rightOffset: (10).
    recoveredBlock1220Value11 := recoveredBlock1220Value0.
    recoveredBlock1220Value12 := XmATTACHWIDGET.
    (recoveredBlock1220Value11) leftAttachment: (recoveredBlock1220Value12).
    recoveredBlock1220Value13 := recoveredBlock1220Value0.
    recoveredBlock1220Value14 := recoveredLocal11.
    (recoveredBlock1220Value13) leftWidget: (recoveredBlock1220Value14).
    recoveredBlock1220Value15 := (recoveredBlock1220Value0) leftOffset: (5).
    recoveredBlock1220Value15
].
            recoveredPC := 1296.
        ].
        recoveredStep = 1296 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1301.
        ].
        recoveredStep = 1301 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1304.
        ].
        recoveredStep = 1304 ifTrue: [
            recoveredStack2 := [:recoveredBlock1304Arg1 | 
    | recoveredBlock1304Value0 recoveredBlock1304Value1 recoveredBlock1304Value2 recoveredBlock1304Value3 recoveredBlock1304Value4 recoveredBlock1304Value5 recoveredBlock1304Value6 recoveredBlock1304Value7 recoveredBlock1304Value8 |
    recoveredBlock1304Value0 := recoveredBlock1304Arg1.
    recoveredBlock1304Value1 := recoveredBlock1304Value0.
    recoveredBlock1304Value2 := XmATTACHWIDGET.
    (recoveredBlock1304Value1) topAttachment: (recoveredBlock1304Value2).
    recoveredBlock1304Value3 := recoveredBlock1304Value0.
    recoveredBlock1304Value4 := recoveredLocal13.
    (recoveredBlock1304Value3) topWidget: (recoveredBlock1304Value4).
    recoveredBlock1304Value5 := recoveredBlock1304Value0.
    (recoveredBlock1304Value5) topOffset: (5).
    recoveredBlock1304Value6 := recoveredBlock1304Value0.
    recoveredBlock1304Value7 := XmATTACHFORM.
    (recoveredBlock1304Value6) rightAttachment: (recoveredBlock1304Value7).
    recoveredBlock1304Value8 := (recoveredBlock1304Value0) rightOffset: (5).
    recoveredBlock1304Value8
].
            recoveredPC := 1350.
        ].
        recoveredStep = 1350 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1355.
        ].
        recoveredStep = 1355 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 1358.
        ].
        recoveredStep = 1358 ifTrue: [
            recoveredStack2 := [:recoveredBlock1358Arg1 | 
    | recoveredBlock1358Value0 recoveredBlock1358Value1 recoveredBlock1358Value2 recoveredBlock1358Value3 recoveredBlock1358Value4 recoveredBlock1358Value5 recoveredBlock1358Value6 recoveredBlock1358Value7 recoveredBlock1358Value8 |
    recoveredBlock1358Value0 := recoveredBlock1358Arg1.
    recoveredBlock1358Value1 := recoveredBlock1358Value0.
    recoveredBlock1358Value2 := XmATTACHWIDGET.
    (recoveredBlock1358Value1) topAttachment: (recoveredBlock1358Value2).
    recoveredBlock1358Value3 := recoveredBlock1358Value0.
    recoveredBlock1358Value4 := recoveredLocal11.
    (recoveredBlock1358Value3) topWidget: (recoveredBlock1358Value4).
    recoveredBlock1358Value5 := recoveredBlock1358Value0.
    (recoveredBlock1358Value5) topOffset: (5).
    recoveredBlock1358Value6 := recoveredBlock1358Value0.
    recoveredBlock1358Value7 := XmATTACHFORM.
    (recoveredBlock1358Value6) leftAttachment: (recoveredBlock1358Value7).
    recoveredBlock1358Value8 := (recoveredBlock1358Value0) leftOffset: (5).
    recoveredBlock1358Value8
].
            recoveredPC := 1404.
        ].
        recoveredStep = 1404 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1409.
        ].
        recoveredStep = 1409 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1412.
        ].
        recoveredStep = 1412 ifTrue: [
            recoveredStack2 := [:recoveredBlock1412Arg1 | 
    | recoveredBlock1412Value0 recoveredBlock1412Value1 recoveredBlock1412Value2 recoveredBlock1412Value3 recoveredBlock1412Value4 recoveredBlock1412Value5 recoveredBlock1412Value6 recoveredBlock1412Value7 recoveredBlock1412Value8 recoveredBlock1412Value9 recoveredBlock1412Value10 recoveredBlock1412Value11 recoveredBlock1412Value12 recoveredBlock1412Value13 recoveredBlock1412Value14 recoveredBlock1412Value15 |
    recoveredBlock1412Value0 := recoveredBlock1412Arg1.
    recoveredBlock1412Value1 := recoveredBlock1412Value0.
    recoveredBlock1412Value2 := XmATTACHWIDGET.
    (recoveredBlock1412Value1) topAttachment: (recoveredBlock1412Value2).
    recoveredBlock1412Value3 := recoveredBlock1412Value0.
    recoveredBlock1412Value4 := recoveredLocal10.
    (recoveredBlock1412Value3) topWidget: (recoveredBlock1412Value4).
    recoveredBlock1412Value5 := recoveredBlock1412Value0.
    (recoveredBlock1412Value5) topOffset: (5).
    recoveredBlock1412Value6 := recoveredBlock1412Value0.
    recoveredBlock1412Value7 := XmATTACHWIDGET.
    (recoveredBlock1412Value6) rightAttachment: (recoveredBlock1412Value7).
    recoveredBlock1412Value8 := recoveredBlock1412Value0.
    recoveredBlock1412Value9 := recoveredLocal6.
    (recoveredBlock1412Value8) rightWidget: (recoveredBlock1412Value9).
    recoveredBlock1412Value10 := recoveredBlock1412Value0.
    (recoveredBlock1412Value10) rightOffset: (10).
    recoveredBlock1412Value11 := recoveredBlock1412Value0.
    recoveredBlock1412Value12 := XmATTACHWIDGET.
    (recoveredBlock1412Value11) leftAttachment: (recoveredBlock1412Value12).
    recoveredBlock1412Value13 := recoveredBlock1412Value0.
    recoveredBlock1412Value14 := recoveredLocal8.
    (recoveredBlock1412Value13) leftWidget: (recoveredBlock1412Value14).
    recoveredBlock1412Value15 := (recoveredBlock1412Value0) leftOffset: (5).
    recoveredBlock1412Value15
].
            recoveredPC := 1488.
        ].
        recoveredStep = 1488 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1493.
        ].
        recoveredStep = 1493 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1496.
        ].
        recoveredStep = 1496 ifTrue: [
            recoveredStack2 := [:recoveredBlock1496Arg1 | 
    | recoveredBlock1496Value0 recoveredBlock1496Value1 recoveredBlock1496Value2 recoveredBlock1496Value3 recoveredBlock1496Value4 recoveredBlock1496Value5 recoveredBlock1496Value6 recoveredBlock1496Value7 recoveredBlock1496Value8 |
    recoveredBlock1496Value0 := recoveredBlock1496Arg1.
    recoveredBlock1496Value1 := recoveredBlock1496Value0.
    recoveredBlock1496Value2 := XmATTACHWIDGET.
    (recoveredBlock1496Value1) topAttachment: (recoveredBlock1496Value2).
    recoveredBlock1496Value3 := recoveredBlock1496Value0.
    recoveredBlock1496Value4 := recoveredLocal10.
    (recoveredBlock1496Value3) topWidget: (recoveredBlock1496Value4).
    recoveredBlock1496Value5 := recoveredBlock1496Value0.
    (recoveredBlock1496Value5) topOffset: (5).
    recoveredBlock1496Value6 := recoveredBlock1496Value0.
    recoveredBlock1496Value7 := XmATTACHFORM.
    (recoveredBlock1496Value6) rightAttachment: (recoveredBlock1496Value7).
    recoveredBlock1496Value8 := (recoveredBlock1496Value0) rightOffset: (5).
    recoveredBlock1496Value8
].
            recoveredPC := 1542.
        ].
        recoveredStep = 1542 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1547.
        ].
        recoveredStep = 1547 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1550.
        ].
        recoveredStep = 1550 ifTrue: [
            recoveredStack2 := [:recoveredBlock1550Arg1 | 
    | recoveredBlock1550Value0 recoveredBlock1550Value1 recoveredBlock1550Value2 recoveredBlock1550Value3 recoveredBlock1550Value4 recoveredBlock1550Value5 recoveredBlock1550Value6 recoveredBlock1550Value7 recoveredBlock1550Value8 recoveredBlock1550Value9 recoveredBlock1550Value10 recoveredBlock1550Value11 |
    recoveredBlock1550Value0 := recoveredBlock1550Arg1.
    recoveredBlock1550Value1 := recoveredBlock1550Value0.
    recoveredBlock1550Value2 := XmATTACHWIDGET.
    (recoveredBlock1550Value1) topAttachment: (recoveredBlock1550Value2).
    recoveredBlock1550Value3 := recoveredBlock1550Value0.
    recoveredBlock1550Value4 := recoveredLocal8.
    (recoveredBlock1550Value3) topWidget: (recoveredBlock1550Value4).
    recoveredBlock1550Value5 := recoveredBlock1550Value0.
    (recoveredBlock1550Value5) topOffset: (5).
    recoveredBlock1550Value6 := recoveredBlock1550Value0.
    recoveredBlock1550Value7 := XmATTACHFORM.
    (recoveredBlock1550Value6) leftAttachment: (recoveredBlock1550Value7).
    recoveredBlock1550Value8 := recoveredBlock1550Value0.
    (recoveredBlock1550Value8) leftOffset: (5).
    recoveredBlock1550Value9 := recoveredBlock1550Value0.
    recoveredBlock1550Value10 := XmATTACHFORM.
    (recoveredBlock1550Value9) bottomAttachment: (recoveredBlock1550Value10).
    recoveredBlock1550Value11 := (recoveredBlock1550Value0) bottomOffset: (6).
    recoveredBlock1550Value11
].
            recoveredPC := 1610.
        ].
        recoveredStep = 1610 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1615.
        ].
        recoveredStep = 1615 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 1618.
        ].
        recoveredStep = 1618 ifTrue: [
            recoveredStack2 := [:recoveredBlock1618Arg1 | 
    | recoveredBlock1618Value0 recoveredBlock1618Value1 recoveredBlock1618Value2 recoveredBlock1618Value3 recoveredBlock1618Value4 recoveredBlock1618Value5 recoveredBlock1618Value6 recoveredBlock1618Value7 recoveredBlock1618Value8 recoveredBlock1618Value9 recoveredBlock1618Value10 recoveredBlock1618Value11 recoveredBlock1618Value12 recoveredBlock1618Value13 recoveredBlock1618Value14 recoveredBlock1618Value15 recoveredBlock1618Value16 recoveredBlock1618Value17 recoveredBlock1618Value18 |
    recoveredBlock1618Value0 := recoveredBlock1618Arg1.
    recoveredBlock1618Value1 := recoveredBlock1618Value0.
    recoveredBlock1618Value2 := XmATTACHWIDGET.
    (recoveredBlock1618Value1) topAttachment: (recoveredBlock1618Value2).
    recoveredBlock1618Value3 := recoveredBlock1618Value0.
    recoveredBlock1618Value4 := recoveredLocal7.
    (recoveredBlock1618Value3) topWidget: (recoveredBlock1618Value4).
    recoveredBlock1618Value5 := recoveredBlock1618Value0.
    (recoveredBlock1618Value5) topOffset: (5).
    recoveredBlock1618Value6 := recoveredBlock1618Value0.
    recoveredBlock1618Value7 := XmATTACHWIDGET.
    (recoveredBlock1618Value6) rightAttachment: (recoveredBlock1618Value7).
    recoveredBlock1618Value8 := recoveredBlock1618Value0.
    recoveredBlock1618Value9 := recoveredLocal3.
    (recoveredBlock1618Value8) rightWidget: (recoveredBlock1618Value9).
    recoveredBlock1618Value10 := recoveredBlock1618Value0.
    (recoveredBlock1618Value10) rightOffset: (10).
    recoveredBlock1618Value11 := recoveredBlock1618Value0.
    recoveredBlock1618Value12 := XmATTACHWIDGET.
    (recoveredBlock1618Value11) leftAttachment: (recoveredBlock1618Value12).
    recoveredBlock1618Value13 := recoveredBlock1618Value0.
    recoveredBlock1618Value14 := recoveredLocal5.
    (recoveredBlock1618Value13) leftWidget: (recoveredBlock1618Value14).
    recoveredBlock1618Value15 := recoveredBlock1618Value0.
    (recoveredBlock1618Value15) leftOffset: (5).
    recoveredBlock1618Value16 := recoveredBlock1618Value0.
    recoveredBlock1618Value17 := XmATTACHFORM.
    (recoveredBlock1618Value16) bottomAttachment: (recoveredBlock1618Value17).
    recoveredBlock1618Value18 := (recoveredBlock1618Value0) bottomOffset: (6).
    recoveredBlock1618Value18
].
            recoveredPC := 1708.
        ].
        recoveredStep = 1708 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1713.
        ].
        recoveredStep = 1713 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1716.
        ].
        recoveredStep = 1716 ifTrue: [
            recoveredStack2 := [:recoveredBlock1716Arg1 | 
    | recoveredBlock1716Value0 recoveredBlock1716Value1 recoveredBlock1716Value2 recoveredBlock1716Value3 recoveredBlock1716Value4 recoveredBlock1716Value5 recoveredBlock1716Value6 recoveredBlock1716Value7 recoveredBlock1716Value8 recoveredBlock1716Value9 recoveredBlock1716Value10 recoveredBlock1716Value11 |
    recoveredBlock1716Value0 := recoveredBlock1716Arg1.
    recoveredBlock1716Value1 := recoveredBlock1716Value0.
    recoveredBlock1716Value2 := XmATTACHWIDGET.
    (recoveredBlock1716Value1) topAttachment: (recoveredBlock1716Value2).
    recoveredBlock1716Value3 := recoveredBlock1716Value0.
    recoveredBlock1716Value4 := recoveredLocal7.
    (recoveredBlock1716Value3) topWidget: (recoveredBlock1716Value4).
    recoveredBlock1716Value5 := recoveredBlock1716Value0.
    (recoveredBlock1716Value5) topOffset: (5).
    recoveredBlock1716Value6 := recoveredBlock1716Value0.
    recoveredBlock1716Value7 := XmATTACHFORM.
    (recoveredBlock1716Value6) rightAttachment: (recoveredBlock1716Value7).
    recoveredBlock1716Value8 := recoveredBlock1716Value0.
    (recoveredBlock1716Value8) rightOffset: (5).
    recoveredBlock1716Value9 := recoveredBlock1716Value0.
    recoveredBlock1716Value10 := XmATTACHFORM.
    (recoveredBlock1716Value9) bottomAttachment: (recoveredBlock1716Value10).
    recoveredBlock1716Value11 := (recoveredBlock1716Value0) bottomOffset: (6).
    recoveredBlock1716Value11
].
            recoveredPC := 1776.
        ].
        recoveredStep = 1776 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1781.
        ].
        recoveredStep = 1781 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1784.
        ].
        recoveredStep = 1784 ifTrue: [
            recoveredStack2 := [:block2812f9acArg1 | 
    | block2812f9acValue0 block2812f9acValue1 block2812f9acValue2 block2812f9acValue3 block2812f9acValue4 block2812f9acValue5 block2812f9acValue6 |
    block2812f9acValue0 := block2812f9acArg1.
    block2812f9acValue1 := block2812f9acValue0.
    block2812f9acValue2 := XmATTACHFORM.
    (block2812f9acValue1) rightAttachment: (block2812f9acValue2).
    block2812f9acValue3 := block2812f9acValue0.
    (block2812f9acValue3) rightOffset: (5).
    block2812f9acValue4 := block2812f9acValue0.
    block2812f9acValue5 := XmATTACHFORM.
    (block2812f9acValue4) bottomAttachment: (block2812f9acValue5).
    block2812f9acValue6 := (block2812f9acValue0) bottomOffset: (5).
    block2812f9acValue6
].
            recoveredPC := 1788.
        ].
        recoveredStep = 1788 ifTrue: [
            recoveredPC := 1824.
        ].
        recoveredStep = 1824 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1829.
        ].
        recoveredStep = 1829 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1832.
        ].
        recoveredStep = 1832 ifTrue: [
            recoveredStack2 := [:recoveredBlock1832Arg1 | 
    | recoveredBlock1832Value0 recoveredBlock1832Value1 recoveredBlock1832Value2 recoveredBlock1832Value3 recoveredBlock1832Value4 recoveredBlock1832Value5 recoveredBlock1832Value6 recoveredBlock1832Value7 recoveredBlock1832Value8 |
    recoveredBlock1832Value0 := recoveredBlock1832Arg1.
    recoveredBlock1832Value1 := recoveredBlock1832Value0.
    recoveredBlock1832Value2 := XmATTACHWIDGET.
    (recoveredBlock1832Value1) rightAttachment: (recoveredBlock1832Value2).
    recoveredBlock1832Value3 := recoveredBlock1832Value0.
    recoveredBlock1832Value4 := recoveredLocal1.
    (recoveredBlock1832Value3) rightWidget: (recoveredBlock1832Value4).
    recoveredBlock1832Value5 := recoveredBlock1832Value0.
    (recoveredBlock1832Value5) rightOffset: (10).
    recoveredBlock1832Value6 := recoveredBlock1832Value0.
    recoveredBlock1832Value7 := XmATTACHFORM.
    (recoveredBlock1832Value6) bottomAttachment: (recoveredBlock1832Value7).
    recoveredBlock1832Value8 := (recoveredBlock1832Value0) bottomOffset: (5).
    recoveredBlock1832Value8
].
            recoveredPC := 1878.
        ].
        recoveredStep = 1878 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1883.
        ].
        recoveredStep = 1883 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 1886.
        ].
        recoveredStep = 1886 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1890.
        ].
        recoveredStep = 1890 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1891.
        ].
        recoveredStep = 1891 ifTrue: [
            recoveredStack4 := 'widgetChangeIncaDbButtonActivate:clientData:callData:'.
            recoveredPC := 1894.
        ].
        recoveredStep = 1894 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1895.
        ].
        recoveredStep = 1895 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1899.
        ].
        recoveredStep = 1899 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 1902.
        ].
        recoveredStep = 1902 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1906.
        ].
        recoveredStep = 1906 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1907.
        ].
        recoveredStep = 1907 ifTrue: [
            recoveredStack4 := 'widgetCreateWorkspaceButtonActivate:clientData:callData:'.
            recoveredPC := 1910.
        ].
        recoveredStep = 1910 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1911.
        ].
        recoveredStep = 1911 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1915.
        ].
        recoveredStep = 1915 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1918.
        ].
        recoveredStep = 1918 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1922.
        ].
        recoveredStep = 1922 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1923.
        ].
        recoveredStep = 1923 ifTrue: [
            recoveredStack4 := 'widgetBrowseDeviceButtonActivate:clientData:callData:'.
            recoveredPC := 1926.
        ].
        recoveredStep = 1926 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1927.
        ].
        recoveredStep = 1927 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1931.
        ].
        recoveredStep = 1931 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1934.
        ].
        recoveredStep = 1934 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1938.
        ].
        recoveredStep = 1938 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1939.
        ].
        recoveredStep = 1939 ifTrue: [
            recoveredStack4 := 'widgetChangeTransferButtonActivate:clientData:callData:'.
            recoveredPC := 1942.
        ].
        recoveredStep = 1942 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1943.
        ].
        recoveredStep = 1943 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1947.
        ].
        recoveredStep = 1947 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1950.
        ].
        recoveredStep = 1950 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1954.
        ].
        recoveredStep = 1954 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1955.
        ].
        recoveredStep = 1955 ifTrue: [
            recoveredStack4 := 'widgetButtonContinueActivate:clientData:callData:'.
            recoveredPC := 1958.
        ].
        recoveredStep = 1958 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1959.
        ].
        recoveredStep = 1959 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1963.
        ].
        recoveredStep = 1963 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1966.
        ].
        recoveredStep = 1966 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 1970.
        ].
        recoveredStep = 1970 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1971.
        ].
        recoveredStep = 1971 ifTrue: [
            recoveredStack4 := 'widgetButtonAbortActivate:clientData:callData:'.
            recoveredPC := 1974.
        ].
        recoveredStep = 1974 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1975.
        ].
        recoveredStep = 1975 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1979.
        ].
        recoveredStep = 1979 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1982.
        ].
        recoveredStep = 1982 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1987.
        ].
        recoveredStep = 1987 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1990.
        ].
        recoveredStep = 1990 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1995.
        ].
        recoveredStep = 1995 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 1998.
        ].
        recoveredStep = 1998 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2003.
        ].
        recoveredStep = 2003 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 2006.
        ].
        recoveredStep = 2006 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2011.
        ].
        recoveredStep = 2011 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 2014.
        ].
        recoveredStep = 2014 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2019.
        ].
        recoveredStep = 2019 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 2022.
        ].
        recoveredStep = 2022 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2027.
        ].
        recoveredStep = 2027 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 2030.
        ].
        recoveredStep = 2030 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2035.
        ].
        recoveredStep = 2035 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 2038.
        ].
        recoveredStep = 2038 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2043.
        ].
        recoveredStep = 2043 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 2046.
        ].
        recoveredStep = 2046 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2051.
        ].
        recoveredStep = 2051 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 2054.
        ].
        recoveredStep = 2054 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 2059.
        ].
        recoveredStep = 2059 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 2062.
        ].
        recoveredStep = 2062 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 2065.
        ].
        recoveredStep = 2065 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 2068.
        ].
        recoveredStep = 2068 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 2073.
        ].
        recoveredStep = 2073 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

