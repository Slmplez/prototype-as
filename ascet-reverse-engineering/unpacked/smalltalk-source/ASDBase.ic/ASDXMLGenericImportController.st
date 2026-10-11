"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066e64; bytecode file offset 0x9646f8"
!ASDXMLGenericImportController methodsFor: 'recovered'!
handler
    | recoveredValue0 |
    recoveredValue0 := handler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073f80; bytecode file offset 0x970b34"
!ASDXMLGenericImportController methodsFor: 'recovered'!
protoItem
    ^nil
! !

"ASDBase.ic method 0x20092610; bytecode file offset 0x98ef64"
!ASDXMLGenericImportController methodsFor: 'recovered'!
addIssue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := issues.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bb7d4; bytecode file offset 0x9b8094"
!ASDXMLGenericImportController methodsFor: 'recovered'!
error: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) logError: (recoveredValue0).
    recoveredValue1 := ExError.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) signalWith: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016ec98; bytecode file offset 0xa6b558"
!ASDXMLGenericImportController methodsFor: 'recovered'!
init
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    issues := recoveredValue1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (self) unexpectedElement: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    handler := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20196084; bytecode file offset 0xa92984"
!ASDXMLGenericImportController methodsFor: 'recovered'!
logFatal: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('Error while importing a file. Exception message: ') , (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue1) addErrorTextBlock: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201960a0; bytecode file offset 0xa92984"
!ASDXMLGenericImportController methodsFor: 'recovered'!
logWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('Error while importing a file. Exception message: ') , (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue1) addWarningTextBlock: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201960bc; bytecode file offset 0xa92984"
!ASDXMLGenericImportController methodsFor: 'recovered'!
logInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('Error while importing a file. Exception message: ') , (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue1) addInfoTextBlock: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201a3c58; bytecode file offset 0xaa0570"
!ASDXMLGenericImportController methodsFor: 'recovered'!
unexpectedElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) name.
    recoveredValue4 := ('Unexpected element encountered: ') , (recoveredValue3).
    (recoveredValue1) show: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := ('Unexpected element encountered: ') , (recoveredValue6).
    (self) logInfo: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20203168; bytecode file offset 0xaffa38"
!ASDXMLGenericImportController methodsFor: 'recovered'!
logError: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('Error while importing a file. Exception message: ') , (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    (recoveredValue1) addErrorTextBlock: (recoveredValue2).
    recoveredValue3 := System.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) logError: (recoveredValue4).
    ^self
! !

