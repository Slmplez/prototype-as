"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018fbc; bytecode file offset 0x92209c"
!CwScalePrompter methodsFor: 'recovered'!
defaultTitle
    ^'Choose a Value'
! !

"ASDBase.ic method 0x2006f170; bytecode file offset 0x96bc1c"
!CwScalePrompter methodsFor: 'recovered'!
argBlock
    | recoveredValue0 |
    recoveredValue0 := argBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f448; bytecode file offset 0x96bf7c"
!CwScalePrompter methodsFor: 'recovered'!
scale
    | recoveredValue0 |
    recoveredValue0 := scale.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c57a4; bytecode file offset 0x9c22c8"
!CwScalePrompter methodsFor: 'recovered'!
argBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    argBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5cb0; bytecode file offset 0x9c25bc"
!CwScalePrompter methodsFor: 'recovered'!
scale: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scale := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013586c; bytecode file offset 0xa32134"
!CwScalePrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) scale.
    recoveredValue1 := (recoveredValue0) value.
    (self) result: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := super ok: (recoveredValue2) clientData: (recoveredValue3) callData: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202a93dc; bytecode file offset 0xba5cbc"
!CwScalePrompter methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280e4450Arg1 | 
    | block280e4450Value0 block280e4450Value1 block280e4450Value2 block280e4450Value3 block280e4450Value4 block280e4450Value5 block280e4450Value6 block280e4450Value7 |
    block280e4450Value0 := block280e4450Arg1.
    block280e4450Value1 := block280e4450Value0.
    (block280e4450Value1) maximum: (100).
    block280e4450Value2 := block280e4450Value0.
    (block280e4450Value2) minimum: (0).
    block280e4450Value3 := block280e4450Value0.
    (block280e4450Value3) value: (10).
    block280e4450Value4 := block280e4450Value0.
    block280e4450Value5 := XmVERTICAL.
    (block280e4450Value4) orientation: (block280e4450Value5).
    block280e4450Value6 := XmMAXONTOP.
    block280e4450Value7 := (block280e4450Value0) processingDirection: (block280e4450Value6).
    block280e4450Value7
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) argBlock: (recoveredStack1).
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

"ASDBase.ic method 0x204910c0; bytecode file offset 0xd8d9e0"
!CwScalePrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := 'scale'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) argBlock.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScale: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) showValue: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) orientation.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := XmVERTICAL.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 recoveredBlock35Value9 recoveredBlock35Value10 recoveredBlock35Value11 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := recoveredBlock35Value0.
    recoveredBlock35Value2 := XmATTACHFORM.
    (recoveredBlock35Value1) topAttachment: (recoveredBlock35Value2).
    recoveredBlock35Value3 := recoveredBlock35Value0.
    recoveredBlock35Value4 := XmATTACHPOSITION.
    (recoveredBlock35Value3) leftAttachment: (recoveredBlock35Value4).
    recoveredBlock35Value5 := recoveredBlock35Value0.
    (recoveredBlock35Value5) leftPosition: (40).
    recoveredBlock35Value6 := recoveredBlock35Value0.
    recoveredBlock35Value7 := XmATTACHWIDGET.
    (recoveredBlock35Value6) bottomAttachment: (recoveredBlock35Value7).
    recoveredBlock35Value8 := recoveredBlock35Value0.
    recoveredBlock35Value9 := (self) button1.
    (recoveredBlock35Value8) bottomWidget: (recoveredBlock35Value9).
    recoveredBlock35Value10 := recoveredBlock35Value0.
    (recoveredBlock35Value10) bottomOffset: (20).
    recoveredBlock35Value11 := (recoveredBlock35Value0) height: (150).
    recoveredBlock35Value11
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := [:block281035a0Arg1 | 
    | block281035a0Value0 block281035a0Value1 block281035a0Value2 block281035a0Value3 block281035a0Value4 block281035a0Value5 block281035a0Value6 block281035a0Value7 block281035a0Value8 block281035a0Value9 block281035a0Value10 |
    block281035a0Value0 := block281035a0Arg1.
    block281035a0Value1 := block281035a0Value0.
    block281035a0Value2 := XmATTACHFORM.
    (block281035a0Value1) topAttachment: (block281035a0Value2).
    block281035a0Value3 := block281035a0Value0.
    block281035a0Value4 := XmATTACHFORM.
    (block281035a0Value3) leftAttachment: (block281035a0Value4).
    block281035a0Value5 := block281035a0Value0.
    block281035a0Value6 := XmATTACHFORM.
    (block281035a0Value5) rightAttachment: (block281035a0Value6).
    block281035a0Value7 := block281035a0Value0.
    block281035a0Value8 := XmATTACHPOSITION.
    (block281035a0Value7) bottomAttachment: (block281035a0Value8).
    block281035a0Value9 := block281035a0Value0.
    (block281035a0Value9) bottomPosition: (45).
    block281035a0Value10 := (block281035a0Value0) width: (150).
    block281035a0Value10
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) scale: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

