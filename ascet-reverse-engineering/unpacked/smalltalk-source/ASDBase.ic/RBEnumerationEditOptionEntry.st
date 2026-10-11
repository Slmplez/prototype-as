"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070be4; bytecode file offset 0x96d580"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
editAction
    | recoveredValue0 |
    recoveredValue0 := editAction.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20079328; bytecode file offset 0x975c04"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
labelWidth
    ^150
! !

"ASDBase.ic method 0x200c72cc; bytecode file offset 0x9c3c10"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
editAction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    editAction := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c7468; bytecode file offset 0x9c3d64"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
hierarchicalOption: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    hierarchicalOption := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20102328; bytecode file offset 0x9febf4"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
editValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) editAction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) editAction.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20108fe4; bytecode file offset 0xa058a4"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
buttonLabel
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchicalOption.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierachicalOptionEditButtonLabel.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'Edit'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20109160; bytecode file offset 0xa05a18"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
buttonHeight
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hierarchicalOption.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 16.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 20.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016fd00; bytecode file offset 0xa6c5b8"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
hierarchicalOption
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := hierarchicalOption.
    recoveredValue1 := [
    hierarchicalOption := false.
    false
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := hierarchicalOption.
    ^recoveredValue2
! !

"ASDBase.ic method 0x205cc9dc; bytecode file offset 0xec935c"
!RBEnumerationEditOptionEntry methodsFor: 'recovered'!
createEditWidgetOn: recoveredArg1 color: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 recoveredBlock9Value10 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock9Value1) alignment: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredBlock9Value0.
    recoveredBlock9Value4 := (self) name.
    (recoveredBlock9Value3) labelString: (recoveredBlock9Value4).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    recoveredBlock9Value6 := (self) labelWidth.
    (recoveredBlock9Value5) width: (recoveredBlock9Value6).
    recoveredBlock9Value7 := recoveredBlock9Value0.
    recoveredBlock9Value8 := (self) visible.
    (recoveredBlock9Value7) sensitive: (recoveredBlock9Value8).
    recoveredBlock9Value9 := recoveredArg2.
    recoveredBlock9Value10 := (recoveredBlock9Value0) foregroundColor: (recoveredBlock9Value9).
    recoveredBlock9Value10
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 'browse'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 recoveredBlock57Value4 recoveredBlock57Value5 recoveredBlock57Value6 recoveredBlock57Value7 recoveredBlock57Value8 recoveredBlock57Value9 recoveredBlock57Value10 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredBlock57Value0.
    recoveredBlock57Value2 := (self) stringCollection.
    recoveredBlock57Value3 := (recoveredBlock57Value2) size.
    recoveredBlock57Value4 := (recoveredBlock57Value3) min: (16).
    (recoveredBlock57Value1) visibleItemCount: (recoveredBlock57Value4).
    recoveredBlock57Value5 := recoveredBlock57Value0.
    (recoveredBlock57Value5) height: (16).
    recoveredBlock57Value6 := recoveredBlock57Value0.
    (recoveredBlock57Value6) width: (40).
    recoveredBlock57Value7 := recoveredBlock57Value0.
    recoveredBlock57Value8 := (self) visible.
    (recoveredBlock57Value7) sensitive: (recoveredBlock57Value8).
    recoveredBlock57Value9 := (self) stringCollection.
    recoveredBlock57Value10 := (recoveredBlock57Value0) items: (recoveredBlock57Value9).
    recoveredBlock57Value10
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueCollection.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) stringCollection.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 161].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) stringCollection.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := [
    '<undef>'
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := 'browse'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [:recoveredBlock166Arg1 | 
    | recoveredBlock166Value0 recoveredBlock166Value1 recoveredBlock166Value2 recoveredBlock166Value3 recoveredBlock166Value4 recoveredBlock166Value5 recoveredBlock166Value6 |
    recoveredBlock166Value0 := recoveredBlock166Arg1.
    recoveredBlock166Value1 := recoveredBlock166Value0.
    recoveredBlock166Value2 := (self) buttonLabel.
    (recoveredBlock166Value1) labelString: (recoveredBlock166Value2).
    recoveredBlock166Value3 := recoveredBlock166Value0.
    (recoveredBlock166Value3) height: (20).
    recoveredBlock166Value4 := recoveredBlock166Value0.
    (recoveredBlock166Value4) width: (40).
    recoveredBlock166Value5 := recoveredBlock166Value0.
    recoveredBlock166Value6 := (self) editable.
    (recoveredBlock166Value5) sensitive: (recoveredBlock166Value6).
    recoveredBlock166Value0
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := [:block281190b0Arg1 | 
    | block281190b0Value0 block281190b0Value1 block281190b0Value2 block281190b0Value3 block281190b0Value4 block281190b0Value5 block281190b0Value6 block281190b0Value7 |
    block281190b0Value0 := block281190b0Arg1.
    block281190b0Value1 := block281190b0Value0.
    block281190b0Value2 := XmATTACHFORM.
    (block281190b0Value1) topAttachment: (block281190b0Value2).
    block281190b0Value3 := block281190b0Value0.
    block281190b0Value4 := XmATTACHPOSITION.
    (block281190b0Value3) rightAttachment: (block281190b0Value4).
    block281190b0Value5 := block281190b0Value0.
    (block281190b0Value5) rightPosition: (40).
    block281190b0Value6 := XmATTACHFORM.
    block281190b0Value7 := (block281190b0Value0) leftAttachment: (block281190b0Value6).
    block281190b0Value7
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack1 := [:recoveredBlock238Arg1 | 
    | recoveredBlock238Value0 recoveredBlock238Value1 recoveredBlock238Value2 recoveredBlock238Value3 recoveredBlock238Value4 recoveredBlock238Value5 recoveredBlock238Value6 recoveredBlock238Value7 recoveredBlock238Value8 recoveredBlock238Value9 recoveredBlock238Value10 recoveredBlock238Value11 |
    recoveredBlock238Value0 := recoveredBlock238Arg1.
    recoveredBlock238Value1 := recoveredBlock238Value0.
    recoveredBlock238Value2 := XmATTACHFORM.
    (recoveredBlock238Value1) topAttachment: (recoveredBlock238Value2).
    recoveredBlock238Value3 := recoveredBlock238Value0.
    recoveredBlock238Value4 := XmATTACHWIDGET.
    (recoveredBlock238Value3) leftAttachment: (recoveredBlock238Value4).
    recoveredBlock238Value5 := recoveredBlock238Value0.
    recoveredBlock238Value6 := recoveredLocal5.
    (recoveredBlock238Value5) leftWidget: (recoveredBlock238Value6).
    recoveredBlock238Value7 := recoveredBlock238Value0.
    recoveredBlock238Value8 := XmATTACHWIDGET.
    (recoveredBlock238Value7) rightAttachment: (recoveredBlock238Value8).
    recoveredBlock238Value9 := recoveredBlock238Value0.
    recoveredBlock238Value10 := recoveredLocal1.
    (recoveredBlock238Value9) rightWidget: (recoveredBlock238Value10).
    recoveredBlock238Value11 := (recoveredBlock238Value0) rightOffset: (10).
    recoveredBlock238Value11
].
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := [:block281190d4Arg1 | 
    | block281190d4Value0 block281190d4Value1 block281190d4Value2 block281190d4Value3 block281190d4Value4 block281190d4Value5 block281190d4Value6 |
    block281190d4Value0 := block281190d4Arg1.
    block281190d4Value1 := block281190d4Value0.
    block281190d4Value2 := XmATTACHFORM.
    (block281190d4Value1) topAttachment: (block281190d4Value2).
    block281190d4Value3 := block281190d4Value0.
    block281190d4Value4 := XmATTACHNONE.
    (block281190d4Value3) leftAttachment: (block281190d4Value4).
    block281190d4Value5 := XmATTACHFORM.
    block281190d4Value6 := (block281190d4Value0) rightAttachment: (block281190d4Value5).
    block281190d4Value6
].
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := 'valueChangedValue:clientData:callData:'.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := 'editValue:clientData:callData:'.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := (recoveredStack4) getString.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) addTabGroup.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

