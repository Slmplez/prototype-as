"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006e040; bytecode file offset 0x96a9dc"
!EtasProgressWizardPage methodsFor: 'recovered'!
progressText
    | recoveredValue0 |
    recoveredValue0 := progressText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e60c; bytecode file offset 0x96af48"
!EtasProgressWizardPage methodsFor: 'recovered'!
progressDescriptionText
    | recoveredValue0 |
    recoveredValue0 := progressDescriptionText.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eb10; bytecode file offset 0x96b41c"
!EtasProgressWizardPage methodsFor: 'recovered'!
widgetProgressLabel
    | recoveredValue0 |
    recoveredValue0 := progressLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006eb94; bytecode file offset 0x96b8a0"
!EtasProgressWizardPage methodsFor: 'recovered'!
widgetProgressBar
    | recoveredValue0 |
    recoveredValue0 := progressBar.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007610c; bytecode file offset 0x9757c8"
!EtasProgressWizardPage methodsFor: 'recovered'!
isProgressWizardPage
    ^true
! !

"ASDBase.ic method 0x200c4728; bytecode file offset 0x9c11bc"
!EtasProgressWizardPage methodsFor: 'recovered'!
progressText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4dbc; bytecode file offset 0x9c16b0"
!EtasProgressWizardPage methodsFor: 'recovered'!
progressDescriptionText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressDescriptionText := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x205c8350; bytecode file offset 0xec4c98"
!EtasProgressWizardPage methodsFor: 'recovered'!
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
            recoveredStack2 := 'descriptionLabel'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := recoveredBlock38Value0.
    recoveredBlock38Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock38Value1) alignment: (recoveredBlock38Value2).
    recoveredBlock38Value3 := recoveredBlock38Value0.
    recoveredBlock38Value4 := recoveredLocal2.
    recoveredBlock38Value5 := (recoveredBlock38Value4) backgroundColor.
    (recoveredBlock38Value3) backgroundColor: (recoveredBlock38Value5).
    recoveredBlock38Value6 := recoveredBlock38Value0.
    recoveredBlock38Value7 := (self) progressDescriptionText.
    (recoveredBlock38Value6) labelString: (recoveredBlock38Value7).
    recoveredBlock38Value8 := (recoveredBlock38Value0) height: (50).
    recoveredBlock38Value8
].
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'progressLabel'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Value0 recoveredBlock80Value1 recoveredBlock80Value2 recoveredBlock80Value3 recoveredBlock80Value4 recoveredBlock80Value5 recoveredBlock80Value6 recoveredBlock80Value7 |
    recoveredBlock80Value0 := recoveredBlock80Arg1.
    recoveredBlock80Value1 := recoveredBlock80Value0.
    recoveredBlock80Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock80Value1) alignment: (recoveredBlock80Value2).
    recoveredBlock80Value3 := recoveredBlock80Value0.
    recoveredBlock80Value4 := recoveredLocal2.
    recoveredBlock80Value5 := (recoveredBlock80Value4) backgroundColor.
    (recoveredBlock80Value3) backgroundColor: (recoveredBlock80Value5).
    recoveredBlock80Value6 := (self) progressText.
    recoveredBlock80Value7 := (recoveredBlock80Value0) labelString: (recoveredBlock80Value6).
    recoveredBlock80Value7
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            progressLabel := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'progressBar'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := [:block28118a38Arg1 | 
    | block28118a38Value0 block28118a38Value1 block28118a38Value2 block28118a38Value3 block28118a38Value4 block28118a38Value5 block28118a38Value6 block28118a38Value7 |
    block28118a38Value0 := block28118a38Arg1.
    block28118a38Value1 := block28118a38Value0.
    (block28118a38Value1) height: (20).
    block28118a38Value2 := block28118a38Value0.
    block28118a38Value3 := CgRGBColor.
    block28118a38Value4 := (block28118a38Value3) darkBlue.
    (block28118a38Value2) foregroundColor: (block28118a38Value4).
    block28118a38Value5 := CgRGBColor.
    block28118a38Value6 := (block28118a38Value5) white.
    block28118a38Value7 := (block28118a38Value0) backgroundColor: (block28118a38Value6).
    block28118a38Value7
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) createProgressBar: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            progressBar := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := [:block28118a5cArg1 | 
    | block28118a5cValue0 block28118a5cValue1 block28118a5cValue2 block28118a5cValue3 block28118a5cValue4 block28118a5cValue5 block28118a5cValue6 block28118a5cValue7 block28118a5cValue8 |
    block28118a5cValue0 := block28118a5cArg1.
    block28118a5cValue1 := block28118a5cValue0.
    block28118a5cValue2 := XmATTACHFORM.
    (block28118a5cValue1) topAttachment: (block28118a5cValue2).
    block28118a5cValue3 := block28118a5cValue0.
    block28118a5cValue4 := XmATTACHFORM.
    (block28118a5cValue3) bottomAttachment: (block28118a5cValue4).
    block28118a5cValue5 := block28118a5cValue0.
    block28118a5cValue6 := XmATTACHFORM.
    (block28118a5cValue5) leftAttachment: (block28118a5cValue6).
    block28118a5cValue7 := XmATTACHFORM.
    block28118a5cValue8 := (block28118a5cValue0) rightAttachment: (block28118a5cValue7).
    block28118a5cValue8
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := [:block28118a80Arg1 | 
    | block28118a80Value0 block28118a80Value1 block28118a80Value2 block28118a80Value3 block28118a80Value4 block28118a80Value5 block28118a80Value6 block28118a80Value7 block28118a80Value8 block28118a80Value9 block28118a80Value10 block28118a80Value11 |
    block28118a80Value0 := block28118a80Arg1.
    block28118a80Value1 := block28118a80Value0.
    block28118a80Value2 := XmATTACHFORM.
    (block28118a80Value1) topAttachment: (block28118a80Value2).
    block28118a80Value3 := block28118a80Value0.
    (block28118a80Value3) topOffset: (5).
    block28118a80Value4 := block28118a80Value0.
    block28118a80Value5 := XmATTACHNONE.
    (block28118a80Value4) bottomAttachment: (block28118a80Value5).
    block28118a80Value6 := block28118a80Value0.
    block28118a80Value7 := XmATTACHFORM.
    (block28118a80Value6) leftAttachment: (block28118a80Value7).
    block28118a80Value8 := block28118a80Value0.
    (block28118a80Value8) leftOffset: (5).
    block28118a80Value9 := block28118a80Value0.
    block28118a80Value10 := XmATTACHFORM.
    (block28118a80Value9) rightAttachment: (block28118a80Value10).
    block28118a80Value11 := (block28118a80Value0) rightOffset: (5).
    block28118a80Value11
].
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := progressLabel.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := [:recoveredBlock228Arg1 | 
    | recoveredBlock228Value0 recoveredBlock228Value1 recoveredBlock228Value2 recoveredBlock228Value3 recoveredBlock228Value4 recoveredBlock228Value5 recoveredBlock228Value6 recoveredBlock228Value7 recoveredBlock228Value8 recoveredBlock228Value9 recoveredBlock228Value10 recoveredBlock228Value11 recoveredBlock228Value12 recoveredBlock228Value13 |
    recoveredBlock228Value0 := recoveredBlock228Arg1.
    recoveredBlock228Value1 := recoveredBlock228Value0.
    recoveredBlock228Value2 := XmATTACHWIDGET.
    (recoveredBlock228Value1) topAttachment: (recoveredBlock228Value2).
    recoveredBlock228Value3 := recoveredBlock228Value0.
    recoveredBlock228Value4 := progressBar.
    (recoveredBlock228Value3) topWidget: (recoveredBlock228Value4).
    recoveredBlock228Value5 := recoveredBlock228Value0.
    (recoveredBlock228Value5) topOffset: (5).
    recoveredBlock228Value6 := recoveredBlock228Value0.
    recoveredBlock228Value7 := XmATTACHNONE.
    (recoveredBlock228Value6) bottomAttachment: (recoveredBlock228Value7).
    recoveredBlock228Value8 := recoveredBlock228Value0.
    recoveredBlock228Value9 := XmATTACHFORM.
    (recoveredBlock228Value8) leftAttachment: (recoveredBlock228Value9).
    recoveredBlock228Value10 := recoveredBlock228Value0.
    (recoveredBlock228Value10) leftOffset: (5).
    recoveredBlock228Value11 := recoveredBlock228Value0.
    recoveredBlock228Value12 := XmATTACHFORM.
    (recoveredBlock228Value11) rightAttachment: (recoveredBlock228Value12).
    recoveredBlock228Value13 := (recoveredBlock228Value0) rightOffset: (5).
    recoveredBlock228Value13
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := progressBar.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := [:recoveredBlock279Arg1 | 
    | recoveredBlock279Value0 recoveredBlock279Value1 recoveredBlock279Value2 recoveredBlock279Value3 recoveredBlock279Value4 recoveredBlock279Value5 recoveredBlock279Value6 recoveredBlock279Value7 recoveredBlock279Value8 recoveredBlock279Value9 recoveredBlock279Value10 recoveredBlock279Value11 recoveredBlock279Value12 recoveredBlock279Value13 |
    recoveredBlock279Value0 := recoveredBlock279Arg1.
    recoveredBlock279Value1 := recoveredBlock279Value0.
    recoveredBlock279Value2 := XmATTACHWIDGET.
    (recoveredBlock279Value1) topAttachment: (recoveredBlock279Value2).
    recoveredBlock279Value3 := recoveredBlock279Value0.
    recoveredBlock279Value4 := recoveredLocal1.
    (recoveredBlock279Value3) topWidget: (recoveredBlock279Value4).
    recoveredBlock279Value5 := recoveredBlock279Value0.
    (recoveredBlock279Value5) topOffset: (5).
    recoveredBlock279Value6 := recoveredBlock279Value0.
    recoveredBlock279Value7 := XmATTACHNONE.
    (recoveredBlock279Value6) bottomAttachment: (recoveredBlock279Value7).
    recoveredBlock279Value8 := recoveredBlock279Value0.
    recoveredBlock279Value9 := XmATTACHFORM.
    (recoveredBlock279Value8) leftAttachment: (recoveredBlock279Value9).
    recoveredBlock279Value10 := recoveredBlock279Value0.
    (recoveredBlock279Value10) leftOffset: (5).
    recoveredBlock279Value11 := recoveredBlock279Value0.
    recoveredBlock279Value12 := XmATTACHFORM.
    (recoveredBlock279Value11) rightAttachment: (recoveredBlock279Value12).
    recoveredBlock279Value13 := (recoveredBlock279Value0) rightOffset: (5).
    recoveredBlock279Value13
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack0) stepInfo: (recoveredStack1).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

