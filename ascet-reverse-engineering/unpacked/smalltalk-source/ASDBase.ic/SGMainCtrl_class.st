"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024428; bytecode file offset 0x92209c"
!SGMainCtrl class methodsFor: 'recovered'!
toolIconName
    ^'IC_ASCETSG'
! !

"ASDBase.ic method 0x2003cdf8; bytecode file offset 0x93bf94"
!SGMainCtrl class methodsFor: 'recovered'!
availableCompilerToolLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGCCompilerTool.
    recoveredValue1 := (recoveredValue0) availableCompilerToolLabels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e4a8; bytecode file offset 0x93bf94"
!SGMainCtrl class methodsFor: 'recovered'!
availableExternalTools
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (recoveredValue0) availableExternalTools.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f328; bytecode file offset 0x93bf94"
!SGMainCtrl class methodsFor: 'recovered'!
availableExternalToolLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGTarget.
    recoveredValue1 := (recoveredValue0) availableExternalToolLabels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048d38; bytecode file offset 0x945728"
!SGMainCtrl class methodsFor: 'recovered'!
resetUIClassMapping
    UIClassMapping := nil.
    ^self
! !

"ASDBase.ic method 0x20099c18; bytecode file offset 0x9964e4"
!SGMainCtrl class methodsFor: 'recovered'!
registerUIClassMapping: recoveredArg1 string: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) UIClassMapping.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201043d0; bytecode file offset 0xa00c98"
!SGMainCtrl class methodsFor: 'recovered'!
toolName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Transcript.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    (recoveredValue0) show: ('SGMainCtrl class>>#toolName should not be used ').
    ^'ASCET'
! !

"ASDBase.ic method 0x201285a0; bytecode file offset 0xa24eb0"
!SGMainCtrl class methodsFor: 'recovered'!
UIClassMapping
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := UIClassMapping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            UIClassMapping := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := UIClassMapping.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204c5eac; bytecode file offset 0xdc2808"
!SGMainCtrl class methodsFor: 'recovered'!
initUIClassMapping
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := SGMainView.
    (self) registerUIClassMapping: (recoveredValue0) string: ('mainwindow').
    recoveredValue1 := SGMainView.
    (self) registerUIClassMapping: (recoveredValue1) string: ('databasebrowser').
    recoveredValue2 := SGProjectEditorView.
    (self) registerUIClassMapping: (recoveredValue2) string: ('projecteditor').
    recoveredValue3 := SGBlockDiagramEditorView.
    (self) registerUIClassMapping: (recoveredValue3) string: ('blockdiagrameditor').
    recoveredValue4 := SGStateMachineEditorView.
    (self) registerUIClassMapping: (recoveredValue4) string: ('smeditor').
    recoveredValue5 := SGTextSpecificationEditorView.
    (self) registerUIClassMapping: (recoveredValue5) string: ('esdleditor').
    recoveredValue6 := SGCCodeEditorView.
    (self) registerUIClassMapping: (recoveredValue6) string: ('ccodeeditor').
    recoveredValue7 := SGContTimeBlockDiagramEditorView.
    (self) registerUIClassMapping: (recoveredValue7) string: ('conttimeblockdiagrameditor').
    recoveredValue8 := SGContTimeTextSpecEditorView.
    (self) registerUIClassMapping: (recoveredValue8) string: ('conttimeesdleditor').
    recoveredValue9 := SGContTimeCCodeEditorView.
    (self) registerUIClassMapping: (recoveredValue9) string: ('conttimeccodeditor').
    recoveredValue10 := SGDataDialog.
    (self) registerUIClassMapping: (recoveredValue10) string: ('datadialog').
    recoveredValue11 := SGImplementationDialog.
    (self) registerUIClassMapping: (recoveredValue11) string: ('impldialog').
    recoveredValue12 := SGBooleanTableSpecificationEditorView.
    (self) registerUIClassMapping: (recoveredValue12) string: ('booleantableeditor').
    recoveredValue13 := SGConditionalTableSpecificationEditorView.
    (self) registerUIClassMapping: (recoveredValue13) string: ('conditionaltableeditor').
    recoveredValue14 := SGCodegenCompileLinkView.
    (self) registerUIClassMapping: (recoveredValue14) string: ('monitorview').
    recoveredValue15 := ASDCalibrationInterfaceView.
    (self) registerUIClassMapping: (recoveredValue15) string: ('calibrationeditor').
    recoveredValue16 := ASDRecordView.
    (self) registerUIClassMapping: (recoveredValue16) string: ('recordeditor').
    recoveredValue17 := ASDSenderReceiverInterfaceView.
    (self) registerUIClassMapping: (recoveredValue17) string: ('senderreceivereditor').
    recoveredValue18 := ASDDataInterfaceView.
    (self) registerUIClassMapping: (recoveredValue18) string: ('datainterfaceeditor').
    recoveredValue19 := ASDClientServerInterfaceView.
    (self) registerUIClassMapping: (recoveredValue19) string: ('clientservereditor').
    recoveredValue20 := ARAtomicSoftwareComponentSpecificationView.
    (self) registerUIClassMapping: (recoveredValue20) string: ('atomicsoftwarecomponenteditor').
    ^self
! !

