"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006f138; bytecode file offset 0x96bc1c"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
textWidget
    | recoveredValue0 |
    recoveredValue0 := textWidget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f628; bytecode file offset 0x96bf7c"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
messageString
    | recoveredValue0 |
    recoveredValue0 := messageString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f7e8; bytecode file offset 0x96c1f4"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
answerString
    | recoveredValue0 |
    recoveredValue0 := answerString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c589c; bytecode file offset 0x9c22c8"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
textWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textWidget := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5c40; bytecode file offset 0x9c25bc"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5eb8; bytecode file offset 0x9c2804"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
answerString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    answerString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d01cc; bytecode file offset 0x9cca88"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
textBackgroundColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Shikhar') == ('EHI49581').
    recoveredValue1 := textBackgroundColor.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d6090; bytecode file offset 0x9d3134"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
openPrompter
    super openPrompter.
    (self) setIcon.
    ^self
! !

"ASDBase.ic method 0x200e7a04; bytecode file offset 0x9e42c0"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
textBackgroundColor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Shikhar') == ('EHI49581').
    recoveredValue1 := recoveredArg1.
    textBackgroundColor := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20101948; bytecode file offset 0x9fe20c"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := (recoveredValue0) getString.
    (self) result: (recoveredValue1).
    (self) done: (true).
    ^self
! !

"ASDBase.ic method 0x20151e4c; bytecode file offset 0xa4e714"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
initialize
    super initialize.
    (self) messageString: ('').
    (self) answerString: ('').
    ^self
! !

"ASDBase.ic method 0x205032c0; bytecode file offset 0xdffc10"
!CwMultiLineTextPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super createChildren.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'label'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    recoveredBlock12Value2 := (self) messageString.
    (recoveredBlock12Value1) labelString: (recoveredBlock12Value2).
    recoveredBlock12Value3 := recoveredBlock12Value0.
    recoveredBlock12Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock12Value3) alignment: (recoveredBlock12Value4).
    recoveredBlock12Value5 := recoveredBlock12Value0.
    recoveredBlock12Value6 := XmATTACHFORM.
    (recoveredBlock12Value5) topAttachment: (recoveredBlock12Value6).
    recoveredBlock12Value7 := recoveredBlock12Value0.
    recoveredBlock12Value8 := XmATTACHFORM.
    (recoveredBlock12Value7) leftAttachment: (recoveredBlock12Value8).
    recoveredBlock12Value9 := XmATTACHFORM.
    recoveredBlock12Value10 := (recoveredBlock12Value0) rightAttachment: (recoveredBlock12Value9).
    recoveredBlock12Value10
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) bulletinBoardWidget.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'answer'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 recoveredBlock58Value5 recoveredBlock58Value6 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := recoveredBlock58Value0.
    recoveredBlock58Value2 := XmMULTILINEEDIT.
    (recoveredBlock58Value1) editMode: (recoveredBlock58Value2).
    recoveredBlock58Value3 := recoveredBlock58Value0.
    (recoveredBlock58Value3) rows: (10).
    recoveredBlock58Value4 := recoveredBlock58Value0.
    (recoveredBlock58Value4) columns: (40).
    recoveredBlock58Value5 := (self) answerString.
    recoveredBlock58Value6 := (recoveredBlock58Value0) value: (recoveredBlock58Value5).
    recoveredBlock58Value6
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) textWidget: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 recoveredBlock97Value3 recoveredBlock97Value4 recoveredBlock97Value5 recoveredBlock97Value6 recoveredBlock97Value7 recoveredBlock97Value8 recoveredBlock97Value9 recoveredBlock97Value10 recoveredBlock97Value11 recoveredBlock97Value12 recoveredBlock97Value13 recoveredBlock97Value14 |
    recoveredBlock97Value0 := recoveredBlock97Arg1.
    recoveredBlock97Value1 := recoveredBlock97Value0.
    recoveredBlock97Value2 := XmATTACHWIDGET.
    (recoveredBlock97Value1) topAttachment: (recoveredBlock97Value2).
    recoveredBlock97Value3 := recoveredBlock97Value0.
    recoveredBlock97Value4 := recoveredLocal1.
    (recoveredBlock97Value3) topWidget: (recoveredBlock97Value4).
    recoveredBlock97Value5 := recoveredBlock97Value0.
    recoveredBlock97Value6 := XmATTACHFORM.
    (recoveredBlock97Value5) leftAttachment: (recoveredBlock97Value6).
    recoveredBlock97Value7 := recoveredBlock97Value0.
    recoveredBlock97Value8 := XmATTACHFORM.
    (recoveredBlock97Value7) rightAttachment: (recoveredBlock97Value8).
    recoveredBlock97Value9 := recoveredBlock97Value0.
    recoveredBlock97Value10 := XmATTACHWIDGET.
    (recoveredBlock97Value9) bottomAttachment: (recoveredBlock97Value10).
    recoveredBlock97Value11 := recoveredBlock97Value0.
    recoveredBlock97Value12 := (self) button1.
    (recoveredBlock97Value11) bottomWidget: (recoveredBlock97Value12).
    recoveredBlock97Value13 := recoveredBlock97Value0.
    (recoveredBlock97Value13) bottomOffset: (15).
    recoveredBlock97Value14 := (recoveredBlock97Value0) topOffset: (15).
    recoveredBlock97Value14
].
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := 'Shikhar'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'EHI49581'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) textBackgroundColor.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) textWidget.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) textBackgroundColor.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := 'Call_69191'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

