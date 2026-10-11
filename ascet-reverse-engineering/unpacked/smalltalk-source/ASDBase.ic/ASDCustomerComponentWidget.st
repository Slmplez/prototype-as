"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200004b0; bytecode file offset 0x8ffcfc"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
startObserving
    ^self
! !

"ASDBase.ic method 0x20002358; bytecode file offset 0x8ffcfc"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
checkModified
    ^self
! !

"ASDBase.ic method 0x20003e50; bytecode file offset 0x90206c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
installActionKeysStarting: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005b60; bytecode file offset 0x902744"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
hookInterfaceCallbacksFor: recoveredArg1 clientData: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006db8; bytecode file offset 0x908be4"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
clientName
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20017b40; bytecode file offset 0x92209c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
dynamicMenus
    ^#()
! !

"ASDBase.ic method 0x2001bb90; bytecode file offset 0x92209c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
dynamicMenuLabels
    ^#()
! !

"ASDBase.ic method 0x2002a4b4; bytecode file offset 0x934580"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
itemRevision
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) versionStringExtended.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002af94; bytecode file offset 0x934580"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
itemName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) label.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002cd14; bytecode file offset 0x934580"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
destroyWidget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := (recoveredValue0) release.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002f214; bytecode file offset 0x934580"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
item
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) item.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a09c; bytecode file offset 0x947128"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
setItemData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) xmlRmiInfo.
    recoveredValue1 := (self) setItemData: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20051614; bytecode file offset 0x94f0e0"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
itemOid
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) dbObject.
    recoveredValue2 := (recoveredValue1) globalIdString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057348; bytecode file offset 0x956284"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
setUserSettings: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setUserSettings: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058248; bytecode file offset 0x956284"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
setItemData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setItemData: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20058648; bytecode file offset 0x956284"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
setOID: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oleControlWrapper.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) setOID: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005ab54; bytecode file offset 0x957a6c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
focus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) destroyWidget.
    ^self
! !

"ASDBase.ic method 0x2005acbc; bytecode file offset 0x957a6c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
loosingFocus: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) destroyWidget.
    ^self
! !

"ASDBase.ic method 0x2005ae30; bytecode file offset 0x957a6c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
destroyWidget: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) destroyWidget.
    ^self
! !

"ASDBase.ic method 0x2005fd14; bytecode file offset 0x95c5c8"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
setItemDataSet
    itemDataSet := true.
    ^true
! !

"ASDBase.ic method 0x200612a8; bytecode file offset 0x95e838"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
itemRmiData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) requirementsManagementDataForKey: ('ETAS').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061668; bytecode file offset 0x95e838"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
itemCustomerData
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) customerDataForName: ('ETASCustomDataPlugIn').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200642c4; bytecode file offset 0x961970"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
registerOleEventHandlers
    | recoveredValue0 |
    recoveredValue0 := (self) oleControlWrapper.
    (recoveredValue0) registerOleEventHandlers.
    ^self
! !

"ASDBase.ic method 0x2006e59c; bytecode file offset 0x96af48"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
options
    | recoveredValue0 |
    recoveredValue0 := options.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007cac4; bytecode file offset 0x97c330"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
isEditingInProgress
    ^false
! !

"ASDBase.ic method 0x2007df5c; bytecode file offset 0x97c330"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
allowWidgetCaching
    ^false
! !

"ASDBase.ic method 0x20084438; bytecode file offset 0x981ca4"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
updateKeyboardControlNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) installActionKeysStarting: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20088660; bytecode file offset 0x985628"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
licenseKey
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OleControl.
    recoveredValue1 := (self) clientName.
    recoveredValue2 := (recoveredValue0) getLicenseKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c49ec; bytecode file offset 0x9c16b0"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
options: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    options := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013a6b4; bytecode file offset 0xa36f7c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
scmDatabase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAscetController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSCMInstalled.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentRepositoryID.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014afc0; bytecode file offset 0xa47880"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
getItemData: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) oleControlWrapper.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasUnsavedData.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) oleControlWrapper.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getItemData: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022bc08; bytecode file offset 0xb284e8"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    super initializeAfterCreate.
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := EtasXMLDefinedOptions.
    recoveredValue5 := (recoveredValue4) instance.
    recoveredValue6 := options.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue5) writeOptions: (recoveredValue6) toXMLStream: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) contents.
    (self) setUserSettings: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x204fcf30; bytecode file offset 0xdf985c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
xmlRmiInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('<Info>').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) tab.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) nextPutAll: ('<Name>').
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := (self) itemName.
    recoveredValue11 := (recoveredValue10) asString.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) nextPutAll: ('</Name>').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) tab.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('<OID>').
    recoveredValue16 := recoveredValue4.
    recoveredValue17 := (self) itemOid.
    recoveredValue18 := (recoveredValue17) asString.
    (recoveredValue16) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('</OID>').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) tab.
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) nextPutAll: ('<Rev>').
    recoveredValue23 := recoveredValue4.
    recoveredValue24 := (self) itemRevision.
    recoveredValue25 := (recoveredValue24) asString.
    (recoveredValue23) nextPutAll: (recoveredValue25).
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) nextPutAll: ('</Rev>').
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) tab.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('<Req>').
    recoveredValue30 := recoveredValue4.
    recoveredValue31 := (self) itemRmiData.
    recoveredValue32 := (recoveredValue31) asString.
    (recoveredValue30) nextPutAll: (recoveredValue32).
    recoveredValue33 := recoveredValue4.
    (recoveredValue33) nextPutAll: ('</Req>').
    recoveredValue34 := recoveredValue4.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue4.
    (recoveredValue35) tab.
    recoveredValue36 := recoveredValue4.
    (recoveredValue36) nextPutAll: ('<SCMDB>').
    recoveredValue37 := recoveredValue4.
    recoveredValue38 := (self) scmDatabase.
    recoveredValue39 := (recoveredValue38) asString.
    (recoveredValue37) nextPutAll: (recoveredValue39).
    recoveredValue40 := recoveredValue4.
    (recoveredValue40) nextPutAll: ('</SCMDB>').
    recoveredValue41 := recoveredValue4.
    (recoveredValue41) cr.
    recoveredValue42 := recoveredValue4.
    (recoveredValue42) tab.
    recoveredValue43 := recoveredValue4.
    (recoveredValue43) nextPutAll: ('<ReadOnly>').
    recoveredValue44 := recoveredValue4.
    recoveredValue45 := (self) item.
    recoveredValue46 := (recoveredValue45) modifiable.
    recoveredValue47 := (recoveredValue46) not.
    recoveredValue48 := (recoveredValue47) asString.
    (recoveredValue44) nextPutAll: (recoveredValue48).
    recoveredValue49 := recoveredValue4.
    (recoveredValue49) nextPutAll: ('</ReadOnly>').
    recoveredValue50 := recoveredValue4.
    (recoveredValue50) cr.
    (recoveredValue4) nextPutAll: ('</Info>').
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (recoveredValue51) contents.
    ^recoveredValue52
! !

"ASDBase.ic method 0x204fd060; bytecode file offset 0xdf998c"
!ASDCustomerComponentWidget methodsFor: 'recovered'!
xmlCcInfo
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('<Info>').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) tab.
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) nextPutAll: ('<Name>').
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := (self) itemName.
    recoveredValue11 := (recoveredValue10) asString.
    (recoveredValue9) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) nextPutAll: ('</Name>').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) tab.
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) nextPutAll: ('<OID>').
    recoveredValue16 := recoveredValue4.
    recoveredValue17 := (self) itemOid.
    recoveredValue18 := (recoveredValue17) asString.
    (recoveredValue16) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) nextPutAll: ('</OID>').
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) tab.
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) nextPutAll: ('<Rev>').
    recoveredValue23 := recoveredValue4.
    recoveredValue24 := (self) itemRevision.
    recoveredValue25 := (recoveredValue24) asString.
    (recoveredValue23) nextPutAll: (recoveredValue25).
    recoveredValue26 := recoveredValue4.
    (recoveredValue26) nextPutAll: ('</Rev>').
    recoveredValue27 := recoveredValue4.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue4.
    (recoveredValue28) tab.
    recoveredValue29 := recoveredValue4.
    (recoveredValue29) nextPutAll: ('<SCMDB>').
    recoveredValue30 := recoveredValue4.
    recoveredValue31 := (self) scmDatabase.
    recoveredValue32 := (recoveredValue31) asString.
    (recoveredValue30) nextPutAll: (recoveredValue32).
    recoveredValue33 := recoveredValue4.
    (recoveredValue33) nextPutAll: ('</SCMDB>').
    recoveredValue34 := recoveredValue4.
    (recoveredValue34) cr.
    recoveredValue35 := recoveredValue4.
    (recoveredValue35) tab.
    recoveredValue36 := recoveredValue4.
    (recoveredValue36) nextPutAll: ('<ReadOnly>').
    recoveredValue37 := recoveredValue4.
    recoveredValue38 := (self) item.
    recoveredValue39 := (recoveredValue38) modifiable.
    recoveredValue40 := (recoveredValue39) not.
    recoveredValue41 := (recoveredValue40) asString.
    (recoveredValue37) nextPutAll: (recoveredValue41).
    recoveredValue42 := recoveredValue4.
    (recoveredValue42) nextPutAll: ('</ReadOnly>').
    recoveredValue43 := recoveredValue4.
    (recoveredValue43) cr.
    recoveredValue44 := recoveredValue4.
    (recoveredValue44) tab.
    recoveredValue45 := recoveredValue4.
    (recoveredValue45) nextPutAll: ('<Data>').
    recoveredValue46 := recoveredValue4.
    recoveredValue47 := (self) itemCustomerData.
    recoveredValue48 := (recoveredValue47) asString.
    (recoveredValue46) nextPutAll: (recoveredValue48).
    recoveredValue49 := recoveredValue4.
    (recoveredValue49) nextPutAll: ('</Data>').
    recoveredValue50 := recoveredValue4.
    (recoveredValue50) cr.
    (recoveredValue4) nextPutAll: ('</Info>').
    recoveredValue51 := recoveredLocal1.
    recoveredValue52 := (recoveredValue51) contents.
    ^recoveredValue52
! !

