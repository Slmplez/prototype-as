"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000078; bytecode file offset 0x7c350"
!CwPasswordPrompter methodsFor: 'recovered'!
setResult
    ^self
! !

"winsys.ic method 0x20010378; bytecode file offset 0x8c570"
!CwPasswordPrompter methodsFor: 'recovered'!
createChildren
    | recoveredValue0 recoveredValue1 |
    super createChildren.
    recoveredValue0 := (self) textWidget.
    recoveredValue1 := XmNmodifyVerifyCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('modifyVerify:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x20018a60; bytecode file offset 0x94c40"
!CwPasswordPrompter methodsFor: 'recovered'!
shellArgs
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := super shellArgs.
    recoveredBlock4Value1 := recoveredBlock4Arg1.
    (recoveredBlock4Value0) value: (recoveredBlock4Value1).
    recoveredBlock4Value2 := recoveredBlock4Arg1.
    recoveredBlock4Value3 := MWMDECORMENU.
    recoveredBlock4Value4 := MWMDECORBORDER.
    recoveredBlock4Value5 := (recoveredBlock4Value3) | (recoveredBlock4Value4).
    recoveredBlock4Value6 := MWMDECORTITLE.
    recoveredBlock4Value7 := (recoveredBlock4Value5) | (recoveredBlock4Value6).
    recoveredBlock4Value8 := (recoveredBlock4Value2) mwmDecorations: (recoveredBlock4Value7).
    recoveredBlock4Value8
].
    ^recoveredValue0
! !

"winsys.ic method 0x2001bfb0; bytecode file offset 0x9819c"
!CwPasswordPrompter methodsFor: 'recovered'!
modifyVerify: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) result.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) startPos.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) endPos.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue6) text.
    recoveredValue8 := (recoveredValue0) copyReplaceFrom: (recoveredValue3) to: (recoveredValue5) with: (recoveredValue7).
    (self) result: (recoveredValue8).
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := String.
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (recoveredValue11) text.
    recoveredValue13 := (recoveredValue12) size.
    recoveredValue14 := (recoveredValue10) new: (recoveredValue13).
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) atAllPut: ($*).
    (recoveredValue9) text: (recoveredValue14).
    ^self
! !

