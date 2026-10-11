"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070008; bytecode file offset 0x96cb7c"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
buttonList
    | recoveredValue0 |
    recoveredValue0 := buttonList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c66a8; bytecode file offset 0x9c3164"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
buttonList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttonList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ecd44; bytecode file offset 0x9e9604"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
buttonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) at: ('label').
    result := recoveredValue1.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2010ba50; bytecode file offset 0xa085f0"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) buttonList: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20157d48; bytecode file offset 0xa54610"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
buttonExpose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) at: ('icon').
    recoveredValue3 := (self) returnIconWithName: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) at: ('label').
    (self) expose: (recoveredValue0) icon: (recoveredValue3) string: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20197638; bytecode file offset 0xa93f08"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
addButton: recoveredArg1 icon: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) buttonList.
    recoveredValue1 := Dictionary.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) at: ('label') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) at: ('icon') put: (recoveredValue6).
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a253c; bytecode file offset 0xa9ee08"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) shell.
    recoveredValue1 := (self) buttonList.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) * (40).
    (recoveredValue0) height: (recoveredValue3).
    recoveredValue4 := (self) shell.
    (recoveredValue4) width: (200).
    (self) updateFonts.
    ^self
! !

"ASDBase.ic method 0x20348b2c; bytecode file offset 0xc45418"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
expose: recoveredArg1 icon: recoveredArg2 string: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) window.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := GCFont.
    recoveredValue4 := CgGCValues.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := SGUserInterfaceSettings.
    recoveredValue7 := (recoveredValue6) labelFont.
    recoveredValue8 := (recoveredValue7) font.
    recoveredValue9 := (recoveredValue5) font: (recoveredValue8).
    recoveredValue10 := (recoveredValue2) createGC: (recoveredValue3) values: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredArg2.
    (recoveredValue11) drawIcon: (recoveredValue12) x: (3) y: (3) icon: (recoveredValue13).
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue16) width.
    recoveredValue18 := (recoveredValue17) * (3).
    recoveredValue19 := (recoveredValue18) // (2).
    recoveredValue20 := recoveredArg2.
    recoveredValue21 := (recoveredValue20) height.
    recoveredValue22 := (recoveredValue21) // (2).
    recoveredValue23 := (recoveredValue22) + (5).
    recoveredValue24 := recoveredArg3.
    (recoveredValue14) drawString: (recoveredValue15) x: (recoveredValue19) y: (recoveredValue23) string: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    (recoveredValue25) freeGC.
    ^self
! !

"ASDBase.ic method 0x205db174; bytecode file offset 0xed7b04"
!ASDButtonSelectionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28119ee4Arg1 | 
    | block28119ee4Value0 block28119ee4Value1 block28119ee4Value2 block28119ee4Value3 block28119ee4Value4 block28119ee4Value5 block28119ee4Value6 block28119ee4Value7 |
    block28119ee4Value0 := block28119ee4Arg1.
    block28119ee4Value1 := block28119ee4Value0.
    block28119ee4Value2 := MWMINPUTFULLAPPLICATIONMODAL.
    (block28119ee4Value1) mwmInputMode: (block28119ee4Value2).
    block28119ee4Value3 := block28119ee4Value0.
    (block28119ee4Value3) title: ('Selection Required').
    block28119ee4Value4 := block28119ee4Value0.
    block28119ee4Value5 := MWMDECORBORDER.
    (block28119ee4Value4) mwmDecorations: (block28119ee4Value5).
    block28119ee4Value6 := block28119ee4Value0.
    (block28119ee4Value6) height: (100).
    block28119ee4Value7 := (block28119ee4Value0) width: (200).
    block28119ee4Value7
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := [:block28119f08Arg1 | 
    | block28119f08Value0 block28119f08Value1 block28119f08Value2 |
    block28119f08Value0 := block28119f08Arg1.
    block28119f08Value1 := block28119f08Value0.
    (block28119f08Value1) height: (100).
    block28119f08Value2 := (block28119f08Value0) width: (200).
    block28119f08Value2
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonList.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Local1 recoveredBlock129Stack0 recoveredBlock129Stack1 recoveredBlock129Stack2 recoveredBlock129Stack3 recoveredBlock129Stack4 recoveredBlock129Stack5 recoveredBlock129Stack6 recoveredBlock129PC recoveredBlock129Step recoveredBlock129Done recoveredBlock129Result |
    recoveredBlock129Stack0 := self.
    recoveredBlock129PC := 136.
    recoveredBlock129Done := false.
    [recoveredBlock129Done not] whileTrue: [
        recoveredBlock129Step := recoveredBlock129PC.
        recoveredBlock129Step = 136 ifTrue: [
            recoveredBlock129Stack1 := recoveredLocal2.
            recoveredBlock129PC := 139.
        ].
        recoveredBlock129Step = 139 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 140.
        ].
        recoveredBlock129Step = 140 ifTrue: [
            recoveredBlock129Stack3 := 'label'.
            recoveredBlock129PC := 142.
        ].
        recoveredBlock129Step = 142 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) at: (recoveredBlock129Stack3).
            recoveredBlock129PC := 144.
        ].
        recoveredBlock129Step = 144 ifTrue: [
            recoveredBlock129Stack3 := [:block28119f2cArg1 | 
    | block28119f2cValue0 block28119f2cValue1 block28119f2cValue2 block28119f2cValue3 block28119f2cValue4 |
    block28119f2cValue0 := block28119f2cArg1.
    block28119f2cValue1 := block28119f2cValue0.
    (block28119f2cValue1) borderWidth: (0).
    block28119f2cValue2 := block28119f2cValue0.
    (block28119f2cValue2) pushButtonEnabled: (true).
    block28119f2cValue3 := block28119f2cValue0.
    (block28119f2cValue3) height: (40).
    block28119f2cValue4 := (block28119f2cValue0) width: (200).
    block28119f2cValue4
].
            recoveredBlock129PC := 146.
        ].
        recoveredBlock129Step = 146 ifTrue: [
            recoveredBlock129PC := 171.
        ].
        recoveredBlock129Step = 171 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) createDrawnButton: (recoveredBlock129Stack2) argBlock: (recoveredBlock129Stack3).
            recoveredBlock129PC := 173.
        ].
        recoveredBlock129Step = 173 ifTrue: [
            recoveredBlock129Stack1 := (recoveredBlock129Stack1) manageChild.
            recoveredBlock129PC := 175.
        ].
        recoveredBlock129Step = 175 ifTrue: [
            recoveredBlock129Local1 := recoveredBlock129Stack1.
            recoveredBlock129PC := 176.
        ].
        recoveredBlock129Step = 176 ifTrue: [
            recoveredBlock129Stack1 := recoveredLocal5.
            recoveredBlock129PC := 179.
        ].
        recoveredBlock129Step = 179 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Arg1.
            recoveredBlock129PC := 180.
        ].
        recoveredBlock129Step = 180 ifTrue: [
            recoveredBlock129Stack3 := 'label'.
            recoveredBlock129PC := 182.
        ].
        recoveredBlock129Step = 182 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) at: (recoveredBlock129Stack3).
            recoveredBlock129PC := 184.
        ].
        recoveredBlock129Step = 184 ifTrue: [
            recoveredBlock129Stack2 := (recoveredBlock129Stack2) asAtom.
            recoveredBlock129PC := 186.
        ].
        recoveredBlock129Step = 186 ifTrue: [
            recoveredBlock129Stack3 := recoveredBlock129Local1.
            recoveredBlock129PC := 187.
        ].
        recoveredBlock129Step = 187 ifTrue: [
            (recoveredBlock129Stack1) at: (recoveredBlock129Stack2) put: (recoveredBlock129Stack3).
            recoveredBlock129PC := 189.
        ].
        recoveredBlock129Step = 189 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local1.
            recoveredBlock129PC := 190.
        ].
        recoveredBlock129Step = 190 ifTrue: [
            recoveredBlock129Stack2 := XmNactivateCallback.
            recoveredBlock129PC := 192.
        ].
        recoveredBlock129Step = 192 ifTrue: [
            recoveredBlock129Stack3 := self.
            recoveredBlock129PC := 193.
        ].
        recoveredBlock129Step = 193 ifTrue: [
            recoveredBlock129Stack4 := 'buttonActivate:clientData:callData:'.
            recoveredBlock129PC := 195.
        ].
        recoveredBlock129Step = 195 ifTrue: [
            recoveredBlock129Stack5 := recoveredBlock129Arg1.
            recoveredBlock129PC := 196.
        ].
        recoveredBlock129Step = 196 ifTrue: [
            (recoveredBlock129Stack1) addCallback: (recoveredBlock129Stack2) receiver: (recoveredBlock129Stack3) selector: (recoveredBlock129Stack4) clientData: (recoveredBlock129Stack5).
            recoveredBlock129PC := 199.
        ].
        recoveredBlock129Step = 199 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local1.
            recoveredBlock129PC := 200.
        ].
        recoveredBlock129Step = 200 ifTrue: [
            recoveredBlock129Stack2 := XmNexposeCallback.
            recoveredBlock129PC := 202.
        ].
        recoveredBlock129Step = 202 ifTrue: [
            recoveredBlock129Stack3 := self.
            recoveredBlock129PC := 203.
        ].
        recoveredBlock129Step = 203 ifTrue: [
            recoveredBlock129Stack4 := 'buttonExpose:clientData:callData:'.
            recoveredBlock129PC := 205.
        ].
        recoveredBlock129Step = 205 ifTrue: [
            recoveredBlock129Stack5 := recoveredBlock129Arg1.
            recoveredBlock129PC := 206.
        ].
        recoveredBlock129Step = 206 ifTrue: [
            (recoveredBlock129Stack1) addCallback: (recoveredBlock129Stack2) receiver: (recoveredBlock129Stack3) selector: (recoveredBlock129Stack4) clientData: (recoveredBlock129Stack5).
            recoveredBlock129PC := 209.
        ].
        recoveredBlock129Step = 209 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local1.
            recoveredBlock129PC := 210.
        ].
        recoveredBlock129Step = 210 ifTrue: [
            (recoveredBlock129Stack1) addTabGroup.
            recoveredBlock129PC := 212.
        ].
        recoveredBlock129Step = 212 ifTrue: [
            recoveredBlock129Stack1 := recoveredLocal1.
            recoveredBlock129PC := 215.
        ].
        recoveredBlock129Step = 215 ifTrue: [
            (recoveredBlock129Stack1 ~~ nil) ifTrue: [recoveredBlock129PC := 260] ifFalse: [recoveredBlock129PC := 218].
        ].
        recoveredBlock129Step = 218 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local1.
            recoveredBlock129PC := 219.
        ].
        recoveredBlock129Step = 219 ifTrue: [
            recoveredBlock129Stack2 := [:block28119f50Arg1 | 
    | block28119f50Value0 block28119f50Value1 block28119f50Value2 block28119f50Value3 block28119f50Value4 block28119f50Value5 block28119f50Value6 block28119f50Value7 block28119f50Value8 block28119f50Value9 |
    block28119f50Value0 := block28119f50Arg1.
    block28119f50Value1 := block28119f50Value0.
    block28119f50Value2 := XmATTACHFORM.
    (block28119f50Value1) topAttachment: (block28119f50Value2).
    block28119f50Value3 := block28119f50Value0.
    (block28119f50Value3) topOffset: (0).
    block28119f50Value4 := block28119f50Value0.
    block28119f50Value5 := XmATTACHFORM.
    (block28119f50Value4) leftAttachment: (block28119f50Value5).
    block28119f50Value6 := block28119f50Value0.
    (block28119f50Value6) leftOffset: (1).
    block28119f50Value7 := block28119f50Value0.
    block28119f50Value8 := XmATTACHFORM.
    (block28119f50Value7) rightAttachment: (block28119f50Value8).
    block28119f50Value9 := (block28119f50Value0) rightOffset: (1).
    block28119f50Value9
].
            recoveredBlock129PC := 221.
        ].
        recoveredBlock129Step = 221 ifTrue: [
            recoveredBlock129PC := 255.
        ].
        recoveredBlock129Step = 255 ifTrue: [
            (recoveredBlock129Stack1) setValuesBlock: (recoveredBlock129Stack2).
            recoveredBlock129PC := 257.
        ].
        recoveredBlock129Step = 257 ifTrue: [
            recoveredBlock129PC := 307.
        ].
        recoveredBlock129Step = 260 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local1.
            recoveredBlock129PC := 261.
        ].
        recoveredBlock129Step = 261 ifTrue: [
            recoveredBlock129Stack2 := [:recoveredBlock129Block261Arg1 | 
    | recoveredBlock129Block261Value0 recoveredBlock129Block261Value1 recoveredBlock129Block261Value2 recoveredBlock129Block261Value3 recoveredBlock129Block261Value4 recoveredBlock129Block261Value5 recoveredBlock129Block261Value6 recoveredBlock129Block261Value7 recoveredBlock129Block261Value8 recoveredBlock129Block261Value9 recoveredBlock129Block261Value10 recoveredBlock129Block261Value11 |
    recoveredBlock129Block261Value0 := recoveredBlock129Block261Arg1.
    recoveredBlock129Block261Value1 := recoveredBlock129Block261Value0.
    recoveredBlock129Block261Value2 := XmATTACHWIDGET.
    (recoveredBlock129Block261Value1) topAttachment: (recoveredBlock129Block261Value2).
    recoveredBlock129Block261Value3 := recoveredBlock129Block261Value0.
    recoveredBlock129Block261Value4 := recoveredLocal1.
    (recoveredBlock129Block261Value3) topWidget: (recoveredBlock129Block261Value4).
    recoveredBlock129Block261Value5 := recoveredBlock129Block261Value0.
    (recoveredBlock129Block261Value5) topOffset: (1).
    recoveredBlock129Block261Value6 := recoveredBlock129Block261Value0.
    recoveredBlock129Block261Value7 := XmATTACHFORM.
    (recoveredBlock129Block261Value6) leftAttachment: (recoveredBlock129Block261Value7).
    recoveredBlock129Block261Value8 := recoveredBlock129Block261Value0.
    (recoveredBlock129Block261Value8) leftOffset: (1).
    recoveredBlock129Block261Value9 := recoveredBlock129Block261Value0.
    recoveredBlock129Block261Value10 := XmATTACHFORM.
    (recoveredBlock129Block261Value9) rightAttachment: (recoveredBlock129Block261Value10).
    recoveredBlock129Block261Value11 := (recoveredBlock129Block261Value0) rightOffset: (1).
    recoveredBlock129Block261Value11
].
            recoveredBlock129PC := 305.
        ].
        recoveredBlock129Step = 305 ifTrue: [
            (recoveredBlock129Stack1) setValuesBlock: (recoveredBlock129Stack2).
            recoveredBlock129PC := 307.
        ].
        recoveredBlock129Step = 307 ifTrue: [
            recoveredBlock129Stack1 := recoveredBlock129Local1.
            recoveredBlock129PC := 308.
        ].
        recoveredBlock129Step = 308 ifTrue: [
            recoveredBlock129Stack2 := recoveredBlock129Stack1.
            recoveredBlock129PC := 309.
        ].
        recoveredBlock129Step = 309 ifTrue: [
            recoveredLocal1 := recoveredBlock129Stack2.
            recoveredBlock129PC := 312.
        ].
        recoveredBlock129Step = 312 ifTrue: [
            recoveredBlock129Result := recoveredBlock129Stack1.
            recoveredBlock129Done := true.
        ].
    ].
    recoveredBlock129Result
].
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := [:block28119f74Arg1 | 
    | block28119f74Value0 block28119f74Value1 block28119f74Value2 block28119f74Value3 |
    block28119f74Value0 := block28119f74Arg1.
    block28119f74Value1 := block28119f74Value0.
    block28119f74Value2 := XmATTACHFORM.
    (block28119f74Value1) bottomAttachment: (block28119f74Value2).
    block28119f74Value3 := (block28119f74Value0) bottomOffset: (1).
    block28119f74Value3
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := [:recoveredBlock340Arg1 | 
    | recoveredBlock340Value0 recoveredBlock340Value1 recoveredBlock340Value2 |
    recoveredBlock340Value0 := recoveredBlock340Arg1.
    recoveredBlock340Value1 := recoveredLocal2.
    recoveredBlock340Value2 := (recoveredBlock340Value0) workWindow: (recoveredBlock340Value1).
    recoveredBlock340Value2
].
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

