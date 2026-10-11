"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003c50; bytecode file offset 0x7fe50"
!CwExtendedTextPrompter methodsFor: 'recovered'!
textWidget
    | recoveredValue0 |
    recoveredValue0 := textWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20003cfc; bytecode file offset 0x7fec4"
!CwExtendedTextPrompter methodsFor: 'recovered'!
messageString
    | recoveredValue0 |
    recoveredValue0 := messageString.
    ^recoveredValue0
! !

"winsys.ic method 0x20008080; bytecode file offset 0x84280"
!CwExtendedTextPrompter methodsFor: 'recovered'!
textWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200080f4; bytecode file offset 0x842ec"
!CwExtendedTextPrompter methodsFor: 'recovered'!
messageString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messageString := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000ba5c; bytecode file offset 0x87c28"
!CwExtendedTextPrompter methodsFor: 'recovered'!
ok: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    super ok: (recoveredValue0) clientData: (recoveredValue1) callData: (recoveredValue2).
    (self) setResult.
    ^self
! !

"winsys.ic method 0x2000ead8; bytecode file offset 0x8acac"
!CwExtendedTextPrompter methodsFor: 'recovered'!
initialize
    super initialize.
    (self) messageString: ('').
    (self) result: ('').
    ^self
! !

"winsys.ic method 0x20018994; bytecode file offset 0x94b70"
!CwExtendedTextPrompter methodsFor: 'recovered'!
setResult
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) textWidget.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28008e00Arg1 | 
    | block28008e00Stack0 block28008e00Stack1 block28008e00Stack2 block28008e00Stack3 block28008e00Stack4 block28008e00PC block28008e00Step block28008e00Done block28008e00Result |
    block28008e00Stack0 := self.
    block28008e00PC := 4.
    block28008e00Done := false.
    [block28008e00Done not] whileTrue: [
        block28008e00Step := block28008e00PC.
        block28008e00Step = 4 ifTrue: [
            block28008e00Stack1 := true.
            block28008e00PC := 5.
        ].
        block28008e00Step = 5 ifTrue: [
            block28008e00Stack2 := block28008e00Arg1.
            block28008e00PC := 6.
        ].
        block28008e00Step = 6 ifTrue: [
            block28008e00Stack3 := Cr.
            block28008e00PC := 8.
        ].
        block28008e00Step = 8 ifTrue: [
            block28008e00Stack2 := (block28008e00Stack2) = (block28008e00Stack3).
            block28008e00PC := 9.
        ].
        block28008e00Step = 9 ifTrue: [
            (block28008e00Stack2) ifTrue: [block28008e00PC := 17] ifFalse: [block28008e00PC := 12].
        ].
        block28008e00Step = 12 ifTrue: [
            block28008e00PC := 13.
        ].
        block28008e00Step = 13 ifTrue: [
            block28008e00Stack1 := block28008e00Arg1.
            block28008e00PC := 14.
        ].
        block28008e00Step = 14 ifTrue: [
            block28008e00Stack2 := Lf.
            block28008e00PC := 16.
        ].
        block28008e00Step = 16 ifTrue: [
            block28008e00Stack1 := (block28008e00Stack1) = (block28008e00Stack2).
            block28008e00PC := 17.
        ].
        block28008e00Step = 17 ifTrue: [
            block28008e00Result := block28008e00Stack1.
            block28008e00Done := true.
        ].
    ].
    block28008e00Result
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) trim: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) result: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20031c90; bytecode file offset 0xadeb4"
!CwExtendedTextPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    super createChildren.
    recoveredValue0 := (self) bulletinBoardWidget.
    recoveredValue1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredBlock12Value0.
    recoveredBlock12Value2 := (self) messageString.
    (recoveredBlock12Value1) labelString: (recoveredBlock12Value2).
    recoveredBlock12Value3 := recoveredBlock12Value0.
    recoveredBlock12Value4 := XmATTACHFORM.
    (recoveredBlock12Value3) topAttachment: (recoveredBlock12Value4).
    recoveredBlock12Value5 := recoveredBlock12Value0.
    recoveredBlock12Value6 := XmATTACHFORM.
    (recoveredBlock12Value5) leftAttachment: (recoveredBlock12Value6).
    recoveredBlock12Value7 := XmATTACHFORM.
    recoveredBlock12Value8 := (recoveredBlock12Value0) rightAttachment: (recoveredBlock12Value7).
    recoveredBlock12Value8
].
    recoveredValue2 := (recoveredValue0) createLabel: ('label') argBlock: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    (recoveredValue2) manageChild.
    recoveredValue4 := (self) bulletinBoardWidget.
    recoveredValue5 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Value0 recoveredBlock53Value1 recoveredBlock53Value2 recoveredBlock53Value3 recoveredBlock53Value4 recoveredBlock53Value5 recoveredBlock53Value6 recoveredBlock53Value7 recoveredBlock53Value8 recoveredBlock53Value9 recoveredBlock53Value10 recoveredBlock53Value11 recoveredBlock53Value12 recoveredBlock53Value13 recoveredBlock53Value14 recoveredBlock53Value15 |
    recoveredBlock53Value0 := recoveredBlock53Arg1.
    recoveredBlock53Value1 := recoveredBlock53Value0.
    (recoveredBlock53Value1) columns: (30).
    recoveredBlock53Value2 := recoveredBlock53Value0.
    recoveredBlock53Value3 := XmATTACHWIDGET.
    (recoveredBlock53Value2) topAttachment: (recoveredBlock53Value3).
    recoveredBlock53Value4 := recoveredBlock53Value0.
    recoveredBlock53Value5 := recoveredLocal1.
    (recoveredBlock53Value4) topWidget: (recoveredBlock53Value5).
    recoveredBlock53Value6 := recoveredBlock53Value0.
    recoveredBlock53Value7 := XmATTACHFORM.
    (recoveredBlock53Value6) leftAttachment: (recoveredBlock53Value7).
    recoveredBlock53Value8 := recoveredBlock53Value0.
    recoveredBlock53Value9 := XmATTACHFORM.
    (recoveredBlock53Value8) rightAttachment: (recoveredBlock53Value9).
    recoveredBlock53Value10 := recoveredBlock53Value0.
    recoveredBlock53Value11 := XmATTACHWIDGET.
    (recoveredBlock53Value10) bottomAttachment: (recoveredBlock53Value11).
    recoveredBlock53Value12 := recoveredBlock53Value0.
    recoveredBlock53Value13 := (self) button1.
    (recoveredBlock53Value12) bottomWidget: (recoveredBlock53Value13).
    recoveredBlock53Value14 := recoveredBlock53Value0.
    (recoveredBlock53Value14) bottomOffset: (15).
    recoveredBlock53Value15 := (recoveredBlock53Value0) topOffset: (15).
    recoveredBlock53Value15
].
    recoveredValue6 := (recoveredValue4) createText: ('text') argBlock: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) manageChild.
    (self) textWidget: (recoveredValue7).
    recoveredValue8 := (self) textWidget.
    (self) focusWidget: (recoveredValue8).
    ^self
! !

