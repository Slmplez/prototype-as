"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026770; bytecode file offset 0x923928"
!ARModeSwitchEvent methodsFor: 'recovered'!
iconName
    ^'GeneralEventModeSwitch'
! !

"ASDBase.ic method 0x2005f414; bytecode file offset 0x95c4f4"
!ARModeSwitchEvent methodsFor: 'recovered'!
setModeSwitchExit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) typeExitString.
    recoveredValue2 := (self) modeSwitchType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f838; bytecode file offset 0x95c4f4"
!ARModeSwitchEvent methodsFor: 'recovered'!
setModeSwitchEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) typeEntryString.
    recoveredValue2 := (self) modeSwitchType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005f978; bytecode file offset 0x95c4f4"
!ARModeSwitchEvent methodsFor: 'recovered'!
setModeSwitchEntryExit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) typeEntryExitString.
    recoveredValue2 := (self) modeSwitchType: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200663dc; bytecode file offset 0x963428"
!ARModeSwitchEvent methodsFor: 'recovered'!
assignedMode
    | recoveredValue0 |
    recoveredValue0 := assignedMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007541c; bytecode file offset 0x9757c8"
!ARModeSwitchEvent methodsFor: 'recovered'!
isModeSwitch
    ^true
! !

"ASDBase.ic method 0x2008f3c4; bytecode file offset 0x98bd60"
!ARModeSwitchEvent methodsFor: 'recovered'!
isModeSwitchEntryExit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) modeSwitchType.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) typeEntryExitString.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f428; bytecode file offset 0x98bd60"
!ARModeSwitchEvent methodsFor: 'recovered'!
isModeSwitchExit
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) modeSwitchType.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) typeExitString.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008f43c; bytecode file offset 0x98bd60"
!ARModeSwitchEvent methodsFor: 'recovered'!
isModeSwitchEntry
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) modeSwitchType.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) typeEntryString.
    recoveredValue3 := (recoveredValue0) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bd9dc; bytecode file offset 0x9bb178"
!ARModeSwitchEvent methodsFor: 'recovered'!
assignedMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    assignedMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6798; bytecode file offset 0x9d3134"
!ARModeSwitchEvent methodsFor: 'recovered'!
initialize
    super initialize.
    (self) setModeSwitchEntry.
    ^self
! !

"ASDBase.ic method 0x200ff3d8; bytecode file offset 0x9fbd94"
!ARModeSwitchEvent methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) assignedMode.
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
            recoveredStack0 := (recoveredStack0) assignedMode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) replaceAliasNames: (recoveredStack1).
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

"ASDBase.ic method 0x2013fb04; bytecode file offset 0xa3c3c8"
!ARModeSwitchEvent methodsFor: 'recovered'!
modeSwitchType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) modeSwitchTypeEnums.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := modeSwitchType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) typeEntryString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := modeSwitchType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20146b38; bytecode file offset 0xa433f8"
!ARModeSwitchEvent methodsFor: 'recovered'!
modeSwitchType: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) modeSwitchTypeEnums.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            modeSwitchType := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20234824; bytecode file offset 0xb310f4"
!ARModeSwitchEvent methodsFor: 'recovered'!
writeXML: recoveredArg1 item: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'ModeSwitchEvent'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'modeSwitchType'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := modeSwitchType.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := assignedMode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := assignedMode.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'AssignedMode'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) writeXML: (recoveredStack2) tag: (recoveredStack3) item: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20263c34; bytecode file offset 0xb60500"
!ARModeSwitchEvent methodsFor: 'recovered'!
createWidgetInForm: recoveredArg1 availableModeList: recoveredArg2 eventSpecHandler: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    (recoveredBlock9Value1) eventSpec: (self).
    recoveredBlock9Value2 := recoveredBlock9Value0.
    recoveredBlock9Value3 := recoveredArg2.
    (recoveredBlock9Value2) availableModeList: (recoveredBlock9Value3).
    recoveredBlock9Value4 := recoveredBlock9Value0.
    recoveredBlock9Value5 := recoveredArg3.
    (recoveredBlock9Value4) eventSpecificationHandler: (recoveredBlock9Value5).
    recoveredBlock9Value0
].
    recoveredValue2 := (recoveredValue0) createARModeSwitchEventSpecificationWidget: ('widget') argBlock: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) manageChild.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2026e7b0; bytecode file offset 0xb6b080"
!ARModeSwitchEvent methodsFor: 'recovered'!
initXML: recoveredArg1 env: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getEnum: ('modeSwitchType').
    modeSwitchType := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 |
    recoveredBlock17Value0 := ARModeReference.
    recoveredBlock17Value1 := (recoveredBlock17Value0) new.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := recoveredArg2.
    recoveredBlock17Value4 := (recoveredBlock17Value1) initXML: (recoveredBlock17Value2) env: (recoveredBlock17Value3).
    recoveredBlock17Value4
].
    recoveredValue4 := (recoveredValue2) optional: ('AssignedMode') do: (recoveredValue3).
    assignedMode := recoveredValue4.
    ^self
! !

"ASDBase.ic method 0x2037a974; bytecode file offset 0xc77268"
!ARModeSwitchEvent methodsFor: 'recovered'!
listStringForNode: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getViewChildrenRunnableReduceToEnabled: (false).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) modeReference.
    recoveredBlock9Value2 := (self) assignedMode.
    recoveredBlock9Value3 := (recoveredBlock9Value1) equals: (recoveredBlock9Value2).
    recoveredBlock9Value3
].
    recoveredValue4 := [
    | recoveredBlock22Value0 |
    recoveredBlock22Value0 := (self) assignedMode: (nil).
    recoveredBlock22Value0
].
    (recoveredValue2) detect: (recoveredValue3) ifNone: (recoveredValue4).
    recoveredValue5 := ARModeVarNode.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) eventSpecificationHandler.
    recoveredValue8 := (recoveredValue5) createWithHandler: (recoveredValue7).
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := (self) assignedMode.
    (recoveredValue9) modeReference: (recoveredValue10).
    recoveredLocal2 := recoveredValue8.
    recoveredValue11 := (self) class.
    recoveredValue12 := (recoveredValue11) eventTypeString.
    recoveredValue13 := (recoveredValue12) , (' - ').
    recoveredValue14 := (self) modeSwitchType.
    recoveredValue15 := (recoveredValue13) , (recoveredValue14).
    recoveredValue16 := (recoveredValue15) , (' - ').
    recoveredValue17 := recoveredLocal2.
    recoveredValue18 := (recoveredValue17) label.
    recoveredValue19 := (recoveredValue16) , (recoveredValue18).
    ^recoveredValue19
! !

