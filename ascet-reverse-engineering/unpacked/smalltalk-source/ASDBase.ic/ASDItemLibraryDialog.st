"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20010728; bytecode file offset 0x90d208"
!ASDItemLibraryDialog methodsFor: 'recovered'!
categoryValueChangedCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) update.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200107a0; bytecode file offset 0x90d208"
!ASDItemLibraryDialog methodsFor: 'recovered'!
cancelActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) cancel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200108fc; bytecode file offset 0x90d208"
!ASDItemLibraryDialog methodsFor: 'recovered'!
okActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) ok.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004326c; bytecode file offset 0x9451f8"
!ASDItemLibraryDialog methodsFor: 'recovered'!
widgetCategoryComboBox
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('categoryComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004fc5c; bytecode file offset 0x94d048"
!ASDItemLibraryDialog methodsFor: 'recovered'!
initializeAfterOpen
    (self) update.
    ^self
! !

"ASDBase.ic method 0x200521a4; bytecode file offset 0x94f0e0"
!ASDItemLibraryDialog methodsFor: 'recovered'!
isOKPossible
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) widgetCategoryComboBox.
    recoveredValue1 := (recoveredValue0) getString.
    recoveredValue2 := (recoveredValue1) notEmpty.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c898; bytecode file offset 0x959680"
!ASDItemLibraryDialog methodsFor: 'recovered'!
categories
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASDItemLibrary.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredValue2 := (recoveredValue1) getCategories.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e1f4; bytecode file offset 0x99aab8"
!ASDItemLibraryDialog methodsFor: 'recovered'!
cancel
    result := nil.
    (self) close.
    ^self
! !

"ASDBase.ic method 0x200d2514; bytecode file offset 0x9cedf0"
!ASDItemLibraryDialog methodsFor: 'recovered'!
update
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetAt: ('ok').
    recoveredValue1 := (self) isOKPossible.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201e3db8; bytecode file offset 0xae068c"
!ASDItemLibraryDialog methodsFor: 'recovered'!
ok
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOKPossible.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Empty category names are not allowed!!'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetCategoryComboBox.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            result := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2064f534; bytecode file offset 0xf4bf38"
!ASDItemLibraryDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal9 := recoveredStack1.
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
            recoveredStack3 := [:block28122cc8Arg1 | 
    | block28122cc8Value0 block28122cc8Value1 block28122cc8Value2 block28122cc8Value3 block28122cc8Value4 block28122cc8Value5 block28122cc8Value6 block28122cc8Value7 block28122cc8Value8 block28122cc8Value9 block28122cc8Value10 block28122cc8Value11 |
    block28122cc8Value0 := block28122cc8Arg1.
    block28122cc8Value1 := block28122cc8Value0.
    block28122cc8Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28122cc8Value1) mwmInputMode: (block28122cc8Value2).
    block28122cc8Value3 := block28122cc8Value0.
    (block28122cc8Value3) title: ('Select Category').
    block28122cc8Value4 := block28122cc8Value0.
    block28122cc8Value5 := MWMDECORALL.
    block28122cc8Value6 := MWMDECORMINIMIZE.
    block28122cc8Value7 := (block28122cc8Value5) | (block28122cc8Value6).
    block28122cc8Value8 := MWMDECORMAXIMIZE.
    block28122cc8Value9 := (block28122cc8Value7) | (block28122cc8Value8).
    (block28122cc8Value4) mwmDecorations: (block28122cc8Value9).
    block28122cc8Value10 := block28122cc8Value0.
    (block28122cc8Value10) height: (90).
    block28122cc8Value11 := (block28122cc8Value0) width: (340).
    block28122cc8Value11
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := 'aForm'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := 'categoryLabel'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := [:block28122cecArg1 | 
    | block28122cecValue0 block28122cecValue1 block28122cecValue2 block28122cecValue3 block28122cecValue4 |
    block28122cecValue0 := block28122cecArg1.
    block28122cecValue1 := block28122cecValue0.
    block28122cecValue2 := XmALIGNMENTBEGINNING.
    (block28122cecValue1) alignment: (block28122cecValue2).
    block28122cecValue3 := block28122cecValue0.
    (block28122cecValue3) width: (80).
    block28122cecValue4 := (block28122cecValue0) labelString: ('Category:').
    block28122cecValue4
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 'CategoryLabel'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'categoryComboBox'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := [:recoveredBlock165Arg1 | 
    | recoveredBlock165Value0 recoveredBlock165Value1 recoveredBlock165Value2 recoveredBlock165Value3 recoveredBlock165Value4 |
    recoveredBlock165Value0 := recoveredBlock165Arg1.
    recoveredBlock165Value1 := recoveredBlock165Value0.
    recoveredBlock165Value2 := (self) categories.
    (recoveredBlock165Value1) items: (recoveredBlock165Value2).
    recoveredBlock165Value3 := recoveredBlock165Value0.
    (recoveredBlock165Value3) editable: (true).
    recoveredBlock165Value4 := (recoveredBlock165Value0) height: (25).
    recoveredBlock165Value4
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := 'categoryComboBox'.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) categories.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) categories.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack2 := 'commentLabel'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := [:block28122d10Arg1 | 
    | block28122d10Value0 block28122d10Value1 block28122d10Value2 block28122d10Value3 block28122d10Value4 |
    block28122d10Value0 := block28122d10Arg1.
    block28122d10Value1 := block28122d10Value0.
    block28122d10Value2 := XmALIGNMENTBEGINNING.
    (block28122d10Value1) alignment: (block28122d10Value2).
    block28122d10Value3 := block28122d10Value0.
    (block28122d10Value3) width: (80).
    block28122d10Value4 := (block28122d10Value0) labelString: ('Please select an existing category or type in a new category name!!').
    block28122d10Value4
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'commentLabel'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := [:block28122d34Arg1 | 
    | block28122d34Value0 block28122d34Value1 block28122d34Value2 block28122d34Value3 |
    block28122d34Value0 := block28122d34Arg1.
    block28122d34Value1 := block28122d34Value0.
    (block28122d34Value1) labelString: ('&Cancel').
    block28122d34Value2 := block28122d34Value0.
    (block28122d34Value2) height: (25).
    block28122d34Value3 := (block28122d34Value0) width: (80).
    block28122d34Value3
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'cancel'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := [:block28122d58Arg1 | 
    | block28122d58Value0 block28122d58Value1 block28122d58Value2 block28122d58Value3 |
    block28122d58Value0 := block28122d58Arg1.
    block28122d58Value1 := block28122d58Value0.
    (block28122d58Value1) labelString: ('&OK').
    block28122d58Value2 := block28122d58Value0.
    (block28122d58Value2) height: (25).
    block28122d58Value3 := (block28122d58Value0) width: (80).
    block28122d58Value3
].
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := 'ok'.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := [:block28122d7cArg1 | 
    | block28122d7cValue0 block28122d7cValue1 block28122d7cValue2 block28122d7cValue3 block28122d7cValue4 block28122d7cValue5 block28122d7cValue6 block28122d7cValue7 block28122d7cValue8 block28122d7cValue9 block28122d7cValue10 |
    block28122d7cValue0 := block28122d7cArg1.
    block28122d7cValue1 := block28122d7cValue0.
    block28122d7cValue2 := XmATTACHFORM.
    (block28122d7cValue1) topAttachment: (block28122d7cValue2).
    block28122d7cValue3 := block28122d7cValue0.
    (block28122d7cValue3) topOffset: (5).
    block28122d7cValue4 := block28122d7cValue0.
    block28122d7cValue5 := XmATTACHNONE.
    (block28122d7cValue4) bottomAttachment: (block28122d7cValue5).
    block28122d7cValue6 := block28122d7cValue0.
    block28122d7cValue7 := XmATTACHNONE.
    (block28122d7cValue6) rightAttachment: (block28122d7cValue7).
    block28122d7cValue8 := block28122d7cValue0.
    block28122d7cValue9 := XmATTACHFORM.
    (block28122d7cValue8) leftAttachment: (block28122d7cValue9).
    block28122d7cValue10 := (block28122d7cValue0) leftOffset: (5).
    block28122d7cValue10
].
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := [:recoveredBlock426Arg1 | 
    | recoveredBlock426Value0 recoveredBlock426Value1 recoveredBlock426Value2 recoveredBlock426Value3 recoveredBlock426Value4 recoveredBlock426Value5 recoveredBlock426Value6 recoveredBlock426Value7 recoveredBlock426Value8 recoveredBlock426Value9 recoveredBlock426Value10 recoveredBlock426Value11 recoveredBlock426Value12 recoveredBlock426Value13 |
    recoveredBlock426Value0 := recoveredBlock426Arg1.
    recoveredBlock426Value1 := recoveredBlock426Value0.
    recoveredBlock426Value2 := XmATTACHFORM.
    (recoveredBlock426Value1) topAttachment: (recoveredBlock426Value2).
    recoveredBlock426Value3 := recoveredBlock426Value0.
    (recoveredBlock426Value3) topOffset: (5).
    recoveredBlock426Value4 := recoveredBlock426Value0.
    recoveredBlock426Value5 := XmATTACHNONE.
    (recoveredBlock426Value4) bottomAttachment: (recoveredBlock426Value5).
    recoveredBlock426Value6 := recoveredBlock426Value0.
    recoveredBlock426Value7 := XmATTACHFORM.
    (recoveredBlock426Value6) rightAttachment: (recoveredBlock426Value7).
    recoveredBlock426Value8 := recoveredBlock426Value0.
    (recoveredBlock426Value8) rightOffset: (5).
    recoveredBlock426Value9 := recoveredBlock426Value0.
    recoveredBlock426Value10 := XmATTACHWIDGET.
    (recoveredBlock426Value9) leftAttachment: (recoveredBlock426Value10).
    recoveredBlock426Value11 := recoveredBlock426Value0.
    recoveredBlock426Value12 := recoveredLocal3.
    (recoveredBlock426Value11) leftWidget: (recoveredBlock426Value12).
    recoveredBlock426Value13 := (recoveredBlock426Value0) leftOffset: (5).
    recoveredBlock426Value13
].
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack2 := [:recoveredBlock502Arg1 | 
    | recoveredBlock502Value0 recoveredBlock502Value1 recoveredBlock502Value2 recoveredBlock502Value3 recoveredBlock502Value4 recoveredBlock502Value5 recoveredBlock502Value6 recoveredBlock502Value7 recoveredBlock502Value8 recoveredBlock502Value9 recoveredBlock502Value10 recoveredBlock502Value11 recoveredBlock502Value12 recoveredBlock502Value13 |
    recoveredBlock502Value0 := recoveredBlock502Arg1.
    recoveredBlock502Value1 := recoveredBlock502Value0.
    recoveredBlock502Value2 := XmATTACHWIDGET.
    (recoveredBlock502Value1) topAttachment: (recoveredBlock502Value2).
    recoveredBlock502Value3 := recoveredBlock502Value0.
    recoveredBlock502Value4 := recoveredLocal2.
    (recoveredBlock502Value3) topWidget: (recoveredBlock502Value4).
    recoveredBlock502Value5 := recoveredBlock502Value0.
    (recoveredBlock502Value5) topOffset: (5).
    recoveredBlock502Value6 := recoveredBlock502Value0.
    recoveredBlock502Value7 := XmATTACHNONE.
    (recoveredBlock502Value6) bottomAttachment: (recoveredBlock502Value7).
    recoveredBlock502Value8 := recoveredBlock502Value0.
    recoveredBlock502Value9 := XmATTACHFORM.
    (recoveredBlock502Value8) rightAttachment: (recoveredBlock502Value9).
    recoveredBlock502Value10 := recoveredBlock502Value0.
    (recoveredBlock502Value10) rightOffset: (5).
    recoveredBlock502Value11 := recoveredBlock502Value0.
    recoveredBlock502Value12 := XmATTACHFORM.
    (recoveredBlock502Value11) leftAttachment: (recoveredBlock502Value12).
    recoveredBlock502Value13 := (recoveredBlock502Value0) leftOffset: (5).
    recoveredBlock502Value13
].
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            recoveredStack2 := [:block28122da0Arg1 | 
    | block28122da0Value0 block28122da0Value1 block28122da0Value2 block28122da0Value3 block28122da0Value4 block28122da0Value5 block28122da0Value6 block28122da0Value7 block28122da0Value8 |
    block28122da0Value0 := block28122da0Arg1.
    block28122da0Value1 := block28122da0Value0.
    block28122da0Value2 := XmATTACHNONE.
    (block28122da0Value1) topAttachment: (block28122da0Value2).
    block28122da0Value3 := block28122da0Value0.
    block28122da0Value4 := XmATTACHFORM.
    (block28122da0Value3) bottomAttachment: (block28122da0Value4).
    block28122da0Value5 := block28122da0Value0.
    (block28122da0Value5) bottomOffset: (5).
    block28122da0Value6 := block28122da0Value0.
    block28122da0Value7 := XmATTACHFORM.
    (block28122da0Value6) rightAttachment: (block28122da0Value7).
    block28122da0Value8 := (block28122da0Value0) rightOffset: (5).
    block28122da0Value8
].
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack2 := [:recoveredBlock634Arg1 | 
    | recoveredBlock634Value0 recoveredBlock634Value1 recoveredBlock634Value2 recoveredBlock634Value3 recoveredBlock634Value4 recoveredBlock634Value5 recoveredBlock634Value6 recoveredBlock634Value7 recoveredBlock634Value8 recoveredBlock634Value9 recoveredBlock634Value10 |
    recoveredBlock634Value0 := recoveredBlock634Arg1.
    recoveredBlock634Value1 := recoveredBlock634Value0.
    recoveredBlock634Value2 := XmATTACHNONE.
    (recoveredBlock634Value1) topAttachment: (recoveredBlock634Value2).
    recoveredBlock634Value3 := recoveredBlock634Value0.
    recoveredBlock634Value4 := XmATTACHFORM.
    (recoveredBlock634Value3) bottomAttachment: (recoveredBlock634Value4).
    recoveredBlock634Value5 := recoveredBlock634Value0.
    (recoveredBlock634Value5) bottomOffset: (5).
    recoveredBlock634Value6 := recoveredBlock634Value0.
    recoveredBlock634Value7 := XmATTACHWIDGET.
    (recoveredBlock634Value6) rightAttachment: (recoveredBlock634Value7).
    recoveredBlock634Value8 := recoveredBlock634Value0.
    recoveredBlock634Value9 := recoveredLocal5.
    (recoveredBlock634Value8) rightWidget: (recoveredBlock634Value9).
    recoveredBlock634Value10 := (recoveredBlock634Value0) rightOffset: (5).
    recoveredBlock634Value10
].
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack4 := 'shellResizeCallback:clientData:callData:'.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack4 := 'categoryValueChangedCallback:clientData:callData:'.
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 732.
        ].
        recoveredStep = 732 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

