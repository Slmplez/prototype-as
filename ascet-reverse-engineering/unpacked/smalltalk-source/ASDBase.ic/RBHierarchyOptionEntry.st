"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200700e8; bytecode file offset 0x96cb7c"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
string
    | recoveredValue0 |
    recoveredValue0 := string.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20070504; bytecode file offset 0x96ce40"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
evaluationBlock
    | recoveredValue0 |
    recoveredValue0 := evaluationBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007875c; bytecode file offset 0x9757c8"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
isHierarchyOption
    ^true
! !

"ASDBase.ic method 0x200c6638; bytecode file offset 0x9c3164"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
string: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    string := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c68f4; bytecode file offset 0x9c3470"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
evaluationBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    evaluationBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20111d54; bytecode file offset 0xa0e614"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
valueChangedValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluationBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluationBlock.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018ab90; bytecode file offset 0xa8745c"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
xmlValue: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block280d0b48Arg1 | 
    | block280d0b48Value0 block280d0b48Value1 |
    block280d0b48Value0 := block280d0b48Arg1.
    block280d0b48Value1 := (block280d0b48Value0) isEmpty.
    block280d0b48Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cc79c; bytecode file offset 0xac905c"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
getStringFromValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := string.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super getStringFromValue: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20237610; bytecode file offset 0xb33ed8"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
xmlValue
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredLocal1 := ''.
    recoveredValue0 := (self) value.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) , ('\').
    recoveredBlock10Value2 := recoveredBlock10Arg1.
    recoveredBlock10Value3 := (recoveredBlock10Value1) , (recoveredBlock10Value2).
    recoveredBlock10Value4 := recoveredBlock10Value3.
    recoveredLocal1 := recoveredBlock10Value4.
    recoveredBlock10Value3
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204f3468; bytecode file offset 0xdefd90"
!RBHierarchyOptionEntry methodsFor: 'recovered'!
createEditWidgetOn: recoveredArg1 color: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock9Value1) alignment: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredBlock9Value0.
    recoveredBlock9Value4 := (self) name.
    (recoveredBlock9Value3) labelString: (recoveredBlock9Value4).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    recoveredBlock9Value6 := (self) editable.
    (recoveredBlock9Value5) sensitive: (recoveredBlock9Value6).
    recoveredBlock9Value7 := recoveredArg2.
    recoveredBlock9Value8 := (recoveredBlock9Value0) foregroundColor: (recoveredBlock9Value7).
    recoveredBlock9Value8
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 recoveredBlock49Value5 recoveredBlock49Value6 recoveredBlock49Value7 recoveredBlock49Value8 recoveredBlock49Value9 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := recoveredBlock49Value0.
    recoveredBlock49Value2 := XmATTACHFORM.
    (recoveredBlock49Value1) topAttachment: (recoveredBlock49Value2).
    recoveredBlock49Value3 := recoveredBlock49Value0.
    recoveredBlock49Value4 := XmATTACHWIDGET.
    (recoveredBlock49Value3) rightAttachment: (recoveredBlock49Value4).
    recoveredBlock49Value5 := recoveredBlock49Value0.
    recoveredBlock49Value6 := recoveredLocal1.
    (recoveredBlock49Value5) rightWidget: (recoveredBlock49Value6).
    recoveredBlock49Value7 := recoveredBlock49Value0.
    (recoveredBlock49Value7) rightOffset: (50).
    recoveredBlock49Value8 := XmATTACHFORM.
    recoveredBlock49Value9 := (recoveredBlock49Value0) leftAttachment: (recoveredBlock49Value8).
    recoveredBlock49Value9
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'browse'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := recoveredBlock90Value0.
    (recoveredBlock90Value1) height: (16).
    recoveredBlock90Value2 := recoveredBlock90Value0.
    (recoveredBlock90Value2) width: (40).
    recoveredBlock90Value3 := recoveredBlock90Value0.
    recoveredBlock90Value4 := (self) editable.
    (recoveredBlock90Value3) sensitive: (recoveredBlock90Value4).
    recoveredBlock90Value5 := (self) hierachicalOptionEditButtonLabel.
    recoveredBlock90Value6 := (recoveredBlock90Value0) labelString: (recoveredBlock90Value5).
    recoveredBlock90Value6
].
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := [:block281099e4Arg1 | 
    | block281099e4Value0 block281099e4Value1 block281099e4Value2 block281099e4Value3 block281099e4Value4 block281099e4Value5 block281099e4Value6 |
    block281099e4Value0 := block281099e4Arg1.
    block281099e4Value1 := block281099e4Value0.
    block281099e4Value2 := XmATTACHFORM.
    (block281099e4Value1) topAttachment: (block281099e4Value2).
    block281099e4Value3 := block281099e4Value0.
    block281099e4Value4 := XmATTACHNONE.
    (block281099e4Value3) leftAttachment: (block281099e4Value4).
    block281099e4Value5 := XmATTACHFORM.
    block281099e4Value6 := (block281099e4Value0) rightAttachment: (block281099e4Value5).
    block281099e4Value6
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := 'valueChangedValue:clientData:callData:'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

