"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006dc70; bytecode file offset 0x96a9dc"
!EtasInformationWizardPage methodsFor: 'recovered'!
infoText
    | recoveredValue0 |
    recoveredValue0 := infoText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c44e0; bytecode file offset 0x9c11bc"
!EtasInformationWizardPage methodsFor: 'recovered'!
infoText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    infoText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2050e380; bytecode file offset 0xe0acb0"
!EtasInformationWizardPage methodsFor: 'recovered'!
createInfoWidgetsIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CwForm.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'innerForm'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) backgroundColor.
    recoveredBlock11Value3 := (recoveredBlock11Value0) backgroundColor: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'infoLabel'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 recoveredBlock38Value11 recoveredBlock38Value12 recoveredBlock38Value13 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := recoveredBlock38Value0.
    recoveredBlock38Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock38Value1) alignment: (recoveredBlock38Value2).
    recoveredBlock38Value3 := recoveredBlock38Value0.
    recoveredBlock38Value4 := recoveredLocal2.
    recoveredBlock38Value5 := (recoveredBlock38Value4) backgroundColor.
    (recoveredBlock38Value3) backgroundColor: (recoveredBlock38Value5).
    recoveredBlock38Value6 := recoveredBlock38Value0.
    (recoveredBlock38Value6) editable: (false).
    recoveredBlock38Value7 := recoveredBlock38Value0.
    (recoveredBlock38Value7) wordWrap: (true).
    recoveredBlock38Value8 := recoveredBlock38Value0.
    recoveredBlock38Value9 := XmMULTILINEEDIT.
    (recoveredBlock38Value8) editMode: (recoveredBlock38Value9).
    recoveredBlock38Value10 := recoveredBlock38Value0.
    (recoveredBlock38Value10) scrollHorizontal: (false).
    recoveredBlock38Value11 := recoveredBlock38Value0.
    (recoveredBlock38Value11) scrollVertical: (false).
    recoveredBlock38Value12 := (self) infoText.
    recoveredBlock38Value13 := (recoveredBlock38Value0) value: (recoveredBlock38Value12).
    recoveredBlock38Value13
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) createText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [:block2810b184Arg1 | 
    | block2810b184Value0 block2810b184Value1 block2810b184Value2 block2810b184Value3 block2810b184Value4 block2810b184Value5 block2810b184Value6 block2810b184Value7 block2810b184Value8 |
    block2810b184Value0 := block2810b184Arg1.
    block2810b184Value1 := block2810b184Value0.
    block2810b184Value2 := XmATTACHFORM.
    (block2810b184Value1) topAttachment: (block2810b184Value2).
    block2810b184Value3 := block2810b184Value0.
    block2810b184Value4 := XmATTACHFORM.
    (block2810b184Value3) bottomAttachment: (block2810b184Value4).
    block2810b184Value5 := block2810b184Value0.
    block2810b184Value6 := XmATTACHFORM.
    (block2810b184Value5) leftAttachment: (block2810b184Value6).
    block2810b184Value7 := XmATTACHFORM.
    block2810b184Value8 := (block2810b184Value0) rightAttachment: (block2810b184Value7).
    block2810b184Value8
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := [:block2810b1a8Arg1 | 
    | block2810b1a8Value0 block2810b1a8Value1 block2810b1a8Value2 block2810b1a8Value3 block2810b1a8Value4 block2810b1a8Value5 block2810b1a8Value6 block2810b1a8Value7 block2810b1a8Value8 block2810b1a8Value9 block2810b1a8Value10 block2810b1a8Value11 block2810b1a8Value12 |
    block2810b1a8Value0 := block2810b1a8Arg1.
    block2810b1a8Value1 := block2810b1a8Value0.
    block2810b1a8Value2 := XmATTACHFORM.
    (block2810b1a8Value1) topAttachment: (block2810b1a8Value2).
    block2810b1a8Value3 := block2810b1a8Value0.
    (block2810b1a8Value3) topOffset: (5).
    block2810b1a8Value4 := block2810b1a8Value0.
    block2810b1a8Value5 := XmATTACHFORM.
    (block2810b1a8Value4) bottomAttachment: (block2810b1a8Value5).
    block2810b1a8Value6 := block2810b1a8Value0.
    (block2810b1a8Value6) bottomOffset: (5).
    block2810b1a8Value7 := block2810b1a8Value0.
    block2810b1a8Value8 := XmATTACHFORM.
    (block2810b1a8Value7) leftAttachment: (block2810b1a8Value8).
    block2810b1a8Value9 := block2810b1a8Value0.
    (block2810b1a8Value9) leftOffset: (5).
    block2810b1a8Value10 := block2810b1a8Value0.
    block2810b1a8Value11 := XmATTACHFORM.
    (block2810b1a8Value10) rightAttachment: (block2810b1a8Value11).
    block2810b1a8Value12 := (block2810b1a8Value0) rightOffset: (5).
    block2810b1a8Value12
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) stepInfo: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

