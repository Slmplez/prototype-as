"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003f90; bytecode file offset 0x80160"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentListWidget
    | recoveredValue0 |
    recoveredValue0 := dependentListWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20003fc4; bytecode file offset 0x8018c"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentLabelString
    | recoveredValue0 |
    recoveredValue0 := dependentLabelString.
    ^recoveredValue0
! !

"winsys.ic method 0x20003fe0; bytecode file offset 0x801a8"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentListBlock
    | recoveredValue0 |
    recoveredValue0 := dependentListBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x20004004; bytecode file offset 0x801c4"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentPrintBlock
    | recoveredValue0 |
    recoveredValue0 := dependentPrintBlock.
    ^recoveredValue0
! !

"winsys.ic method 0x20004020; bytecode file offset 0x801e0"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentSelectionPolicy
    | recoveredValue0 |
    recoveredValue0 := dependentSelectionPolicy.
    ^recoveredValue0
! !

"winsys.ic method 0x200083c0; bytecode file offset 0x84580"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentListWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentListWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200083e4; bytecode file offset 0x845b4"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentLabelString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentLabelString := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008408; bytecode file offset 0x845d0"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentListBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentListBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008424; bytecode file offset 0x845fc"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentPrintBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentPrintBlock := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20008458; bytecode file offset 0x84620"
!CwDoubleListPrompter methodsFor: 'recovered'!
dependentSelectionPolicy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dependentSelectionPolicy := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000e860; bytecode file offset 0x8aa38"
!CwDoubleListPrompter methodsFor: 'recovered'!
addListCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) listWidget.
    recoveredValue1 := (self) selectionPolicy.
    recoveredValue2 := (self) listCallbackNameForPolicy: (recoveredValue1).
    recoveredValue3 := (self) button1.
    (recoveredValue0) addCallback: (recoveredValue2) receiver: (self) selector: ('getDependentList:clientData:callData:') clientData: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2000eaa4; bytecode file offset 0x8ac7c"
!CwDoubleListPrompter methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    (self) dependentLabelString: ('').
    recoveredValue0 := XmBROWSESELECT.
    (self) dependentSelectionPolicy: (recoveredValue0).
    ^self
! !

"winsys.ic method 0x20016ec4; bytecode file offset 0x930cc"
!CwDoubleListPrompter methodsFor: 'recovered'!
addDependentListCallbacks
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) dependentListWidget.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) dependentSelectionPolicy.
    recoveredValue3 := (self) listCallbackNameForPolicy: (recoveredValue2).
    recoveredValue4 := (self) button1.
    (recoveredValue1) addCallback: (recoveredValue3) receiver: (self) selector: ('select:clientData:callData:') clientData: (recoveredValue4).
    recoveredValue5 := XmNdefaultActionCallback.
    (recoveredValue0) addCallback: (recoveredValue5) receiver: (self) selector: ('ok:clientData:callData:') clientData: (nil).
    ^self
! !

"winsys.ic method 0x2001a8b4; bytecode file offset 0x96a98"
!CwDoubleListPrompter methodsFor: 'recovered'!
setInitialSelection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) button1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) scrollToShow: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20023568; bytecode file offset 0x9f754"
!CwDoubleListPrompter methodsFor: 'recovered'!
getDependentList: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentListBlock.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectionPolicy.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) listSelectionForPolicy: (recoveredStack1) returnIndex: (recoveredStack2) callData: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) dependentListWidget.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) setItems: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) result: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) done: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentListWidget.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) selectedItems: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20042d2c; bytecode file offset 0xbefb4"
!CwDoubleListPrompter methodsFor: 'recovered'!
createChildren
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) messageString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := NlsCatESTa.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) messageString: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := super createChildren.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) listWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentLabelString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) labelString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 209].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) listLabelWidget.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'listLabel'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 recoveredBlock67Value4 recoveredBlock67Value5 recoveredBlock67Value6 recoveredBlock67Value7 recoveredBlock67Value8 recoveredBlock67Value9 recoveredBlock67Value10 recoveredBlock67Value11 recoveredBlock67Value12 recoveredBlock67Value13 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := recoveredBlock67Value0.
    (recoveredBlock67Value1) labelString: (' ').
    recoveredBlock67Value2 := recoveredBlock67Value0.
    recoveredBlock67Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock67Value2) alignment: (recoveredBlock67Value3).
    recoveredBlock67Value4 := recoveredBlock67Value0.
    recoveredBlock67Value5 := XmATTACHWIDGET.
    (recoveredBlock67Value4) topAttachment: (recoveredBlock67Value5).
    recoveredBlock67Value6 := recoveredBlock67Value0.
    recoveredBlock67Value7 := (self) messageLabelWidget.
    (recoveredBlock67Value6) topWidget: (recoveredBlock67Value7).
    recoveredBlock67Value8 := recoveredBlock67Value0.
    (recoveredBlock67Value8) topOffset: (10).
    recoveredBlock67Value9 := recoveredBlock67Value0.
    recoveredBlock67Value10 := XmATTACHFORM.
    (recoveredBlock67Value9) leftAttachment: (recoveredBlock67Value10).
    recoveredBlock67Value11 := recoveredBlock67Value0.
    recoveredBlock67Value12 := XmATTACHPOSITION.
    (recoveredBlock67Value11) rightAttachment: (recoveredBlock67Value12).
    recoveredBlock67Value13 := (recoveredBlock67Value0) rightPosition: (49).
    recoveredBlock67Value13
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) bulletinBoardWidget.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := 'dependentListLabel'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := [:recoveredBlock129Arg1 | 
    | recoveredBlock129Value0 recoveredBlock129Value1 recoveredBlock129Value2 recoveredBlock129Value3 recoveredBlock129Value4 recoveredBlock129Value5 recoveredBlock129Value6 recoveredBlock129Value7 recoveredBlock129Value8 recoveredBlock129Value9 recoveredBlock129Value10 recoveredBlock129Value11 recoveredBlock129Value12 recoveredBlock129Value13 |
    recoveredBlock129Value0 := recoveredBlock129Arg1.
    recoveredBlock129Value1 := recoveredBlock129Value0.
    recoveredBlock129Value2 := recoveredLocal2.
    (recoveredBlock129Value1) labelString: (recoveredBlock129Value2).
    recoveredBlock129Value3 := recoveredBlock129Value0.
    recoveredBlock129Value4 := XmALIGNMENTBEGINNING.
    (recoveredBlock129Value3) alignment: (recoveredBlock129Value4).
    recoveredBlock129Value5 := recoveredBlock129Value0.
    recoveredBlock129Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock129Value5) topAttachment: (recoveredBlock129Value6).
    recoveredBlock129Value7 := recoveredBlock129Value0.
    recoveredBlock129Value8 := recoveredLocal3.
    (recoveredBlock129Value7) topWidget: (recoveredBlock129Value8).
    recoveredBlock129Value9 := recoveredBlock129Value0.
    recoveredBlock129Value10 := XmATTACHPOSITION.
    (recoveredBlock129Value9) leftAttachment: (recoveredBlock129Value10).
    recoveredBlock129Value11 := recoveredBlock129Value0.
    (recoveredBlock129Value11) leftPosition: (51).
    recoveredBlock129Value12 := XmATTACHFORM.
    recoveredBlock129Value13 := (recoveredBlock129Value0) rightAttachment: (recoveredBlock129Value12).
    recoveredBlock129Value13
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) manageChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := [:recoveredBlock183Arg1 | 
    | recoveredBlock183Value0 recoveredBlock183Value1 recoveredBlock183Value2 recoveredBlock183Value3 recoveredBlock183Value4 recoveredBlock183Value5 |
    recoveredBlock183Value0 := recoveredBlock183Arg1.
    recoveredBlock183Value1 := recoveredBlock183Value0.
    recoveredBlock183Value2 := XmATTACHWIDGET.
    (recoveredBlock183Value1) topAttachment: (recoveredBlock183Value2).
    recoveredBlock183Value3 := recoveredBlock183Value0.
    recoveredBlock183Value4 := recoveredLocal3.
    (recoveredBlock183Value3) topWidget: (recoveredBlock183Value4).
    recoveredBlock183Value5 := (recoveredBlock183Value0) topOffset: (2).
    recoveredBlock183Value5
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := [:block28009598Arg1 | 
    | block28009598Value0 block28009598Value1 block28009598Value2 block28009598Value3 |
    block28009598Value0 := block28009598Arg1.
    block28009598Value1 := block28009598Value0.
    block28009598Value2 := XmATTACHPOSITION.
    (block28009598Value1) rightAttachment: (block28009598Value2).
    block28009598Value3 := (block28009598Value0) rightPosition: (49).
    block28009598Value3
].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := CwObjectList.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 'dependent_list'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := (recoveredStack3) bulletinBoardWidget.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack4 := [:recoveredBlock241Arg1 | 
    | recoveredBlock241Stack0 recoveredBlock241Stack1 recoveredBlock241Stack2 recoveredBlock241Stack3 recoveredBlock241PC recoveredBlock241Step recoveredBlock241Done recoveredBlock241Result |
    recoveredBlock241Stack0 := self.
    recoveredBlock241PC := 248.
    recoveredBlock241Done := false.
    [recoveredBlock241Done not] whileTrue: [
        recoveredBlock241Step := recoveredBlock241PC.
        recoveredBlock241Step = 248 ifTrue: [
            recoveredBlock241Stack1 := recoveredBlock241Arg1.
            recoveredBlock241PC := 249.
        ].
        recoveredBlock241Step = 249 ifTrue: [
            recoveredBlock241Stack2 := self.
            recoveredBlock241PC := 250.
        ].
        recoveredBlock241Step = 250 ifTrue: [
            recoveredBlock241Stack2 := (recoveredBlock241Stack2) dependentSelectionPolicy.
            recoveredBlock241PC := 252.
        ].
        recoveredBlock241Step = 252 ifTrue: [
            (recoveredBlock241Stack1) selectionPolicy: (recoveredBlock241Stack2).
            recoveredBlock241PC := 254.
        ].
        recoveredBlock241Step = 254 ifTrue: [
            recoveredBlock241Stack1 := nil.
            recoveredBlock241PC := 255.
        ].
        recoveredBlock241Step = 255 ifTrue: [
            recoveredBlock241Stack2 := self.
            recoveredBlock241PC := 256.
        ].
        recoveredBlock241Step = 256 ifTrue: [
            recoveredBlock241Stack2 := (recoveredBlock241Stack2) dependentPrintBlock.
            recoveredBlock241PC := 258.
        ].
        recoveredBlock241Step = 258 ifTrue: [
            (recoveredBlock241Stack2 == nil) ifTrue: [recoveredBlock241PC := 269] ifFalse: [recoveredBlock241PC := 262].
        ].
        recoveredBlock241Step = 262 ifTrue: [
            recoveredBlock241PC := 263.
        ].
        recoveredBlock241Step = 263 ifTrue: [
            recoveredBlock241Stack1 := recoveredBlock241Arg1.
            recoveredBlock241PC := 264.
        ].
        recoveredBlock241Step = 264 ifTrue: [
            recoveredBlock241Stack2 := self.
            recoveredBlock241PC := 265.
        ].
        recoveredBlock241Step = 265 ifTrue: [
            recoveredBlock241Stack2 := (recoveredBlock241Stack2) dependentPrintBlock.
            recoveredBlock241PC := 267.
        ].
        recoveredBlock241Step = 267 ifTrue: [
            recoveredBlock241Stack1 := (recoveredBlock241Stack1) printBlock: (recoveredBlock241Stack2).
            recoveredBlock241PC := 269.
        ].
        recoveredBlock241Step = 269 ifTrue: [
            recoveredBlock241Result := recoveredBlock241Stack1.
            recoveredBlock241Done := true.
        ].
    ].
    recoveredBlock241Result
].
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledManagedWidget: (recoveredStack2) parent: (recoveredStack3) argBlock: (recoveredStack4).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) dependentListWidget: (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := (recoveredStack0) dependentListWidget.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := [:recoveredBlock282Arg1 | 
    | recoveredBlock282Value0 recoveredBlock282Value1 recoveredBlock282Value2 recoveredBlock282Value3 recoveredBlock282Value4 recoveredBlock282Value5 recoveredBlock282Value6 recoveredBlock282Value7 recoveredBlock282Value8 recoveredBlock282Value9 recoveredBlock282Value10 recoveredBlock282Value11 recoveredBlock282Value12 recoveredBlock282Value13 |
    recoveredBlock282Value0 := recoveredBlock282Arg1.
    recoveredBlock282Value1 := recoveredBlock282Value0.
    recoveredBlock282Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock282Value1) topAttachment: (recoveredBlock282Value2).
    recoveredBlock282Value3 := recoveredBlock282Value0.
    recoveredBlock282Value4 := recoveredLocal1.
    (recoveredBlock282Value3) topWidget: (recoveredBlock282Value4).
    recoveredBlock282Value5 := recoveredBlock282Value0.
    recoveredBlock282Value6 := XmATTACHPOSITION.
    (recoveredBlock282Value5) leftAttachment: (recoveredBlock282Value6).
    recoveredBlock282Value7 := recoveredBlock282Value0.
    (recoveredBlock282Value7) leftPosition: (51).
    recoveredBlock282Value8 := recoveredBlock282Value0.
    recoveredBlock282Value9 := XmATTACHFORM.
    (recoveredBlock282Value8) rightAttachment: (recoveredBlock282Value9).
    recoveredBlock282Value10 := recoveredBlock282Value0.
    recoveredBlock282Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock282Value10) bottomAttachment: (recoveredBlock282Value11).
    recoveredBlock282Value12 := recoveredLocal1.
    recoveredBlock282Value13 := (recoveredBlock282Value0) bottomWidget: (recoveredBlock282Value12).
    recoveredBlock282Value13
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack0) addDependentListCallbacks.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 351].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedItems.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack0) selectItem: (recoveredStack1) notify: (recoveredStack2).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

