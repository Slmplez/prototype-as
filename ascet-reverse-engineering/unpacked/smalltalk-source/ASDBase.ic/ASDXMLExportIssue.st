"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20023b28; bytecode file offset 0x92209c"
!ASDXMLExportIssue methodsFor: 'recovered'!
errorDescription
    ^'Unknown error'
! !

"ASDBase.ic method 0x20027c34; bytecode file offset 0x92454c"
!ASDXMLExportIssue methodsFor: 'recovered'!
isAutofixable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isError.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065e44; bytecode file offset 0x963428"
!ASDXMLExportIssue methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200739f0; bytecode file offset 0x970b34"
!ASDXMLExportIssue methodsFor: 'recovered'!
description
    ^nil
! !

"ASDBase.ic method 0x2008ac28; bytecode file offset 0x9874f8"
!ASDXMLExportIssue methodsFor: 'recovered'!
isError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) == ('error').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ac34; bytecode file offset 0x9874f8"
!ASDXMLExportIssue methodsFor: 'recovered'!
isInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) == ('information').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008ac40; bytecode file offset 0x9874f8"
!ASDXMLExportIssue methodsFor: 'recovered'!
isWarning
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := type.
    recoveredValue1 := (recoveredValue0) == ('warning').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bdee4; bytecode file offset 0x9bb178"
!ASDXMLExportIssue methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c16fc; bytecode file offset 0x9beac8"
!ASDXMLExportIssue methodsFor: 'recovered'!
ascetLink: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ascetLink := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013c9e0; bytecode file offset 0xa392ac"
!ASDXMLExportIssue methodsFor: 'recovered'!
errorIDFull
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorID.
    recoveredValue1 := ('(') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (') ').
    recoveredValue3 := (self) errorDescription.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201c76b4; bytecode file offset 0xac3f74"
!ASDXMLExportIssue methodsFor: 'recovered'!
ascetLink
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ascetLink.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) item.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) ascetLink: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ascetLink.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202b3058; bytecode file offset 0xbaf930"
!ASDXMLExportIssue methodsFor: 'recovered'!
errorID
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'XML'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'e'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) isWarning.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'w'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) isInformation.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'i'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'u'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20316cf8; bytecode file offset 0xc135d0"
!ASDXMLExportIssue methodsFor: 'recovered'!
displayString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorIDFull.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := ' : '.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) description.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := item.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := item.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := ' ['.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := item.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := ' ['.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := item.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathName.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := ']'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042e610; bytecode file offset 0xd2af0c"
!ASDXMLExportIssue methodsFor: 'recovered'!
asXML
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := EtasXmlSupportDOMElement.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initOn: ('Issue').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) errorID.
    (recoveredValue3) setAttr: ('id') value: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) isAutofixable.
    (recoveredValue5) setAttr: ('fixable') boolean: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := EtasXmlSupportDOMElement.
    recoveredValue9 := (recoveredValue8) new.
    recoveredValue10 := (recoveredValue9) initOn: ('Problem').
    recoveredValue11 := (self) errorDescription.
    recoveredValue12 := (recoveredValue10) addSubElement: (recoveredValue11).
    (recoveredValue7) addSubElement: (recoveredValue12).
    recoveredValue13 := (self) ascetLink.
    recoveredValue14 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 |
    recoveredBlock51Value0 := recoveredLocal1.
    recoveredBlock51Value1 := EtasXmlSupportDOMElement.
    recoveredBlock51Value2 := (recoveredBlock51Value1) new.
    recoveredBlock51Value3 := (recoveredBlock51Value2) initOn: ('Location').
    recoveredBlock51Value4 := recoveredBlock51Arg1.
    recoveredBlock51Value5 := (recoveredBlock51Value3) addSubElement: (recoveredBlock51Value4).
    recoveredBlock51Value6 := (recoveredBlock51Value0) addSubElement: (recoveredBlock51Value5).
    recoveredBlock51Value6
].
    (recoveredValue13) ifNotNil: (recoveredValue14).
    recoveredValue15 := (self) description.
    recoveredValue16 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 recoveredBlock78Value3 recoveredBlock78Value4 recoveredBlock78Value5 recoveredBlock78Value6 |
    recoveredBlock78Value0 := recoveredLocal1.
    recoveredBlock78Value1 := EtasXmlSupportDOMElement.
    recoveredBlock78Value2 := (recoveredBlock78Value1) new.
    recoveredBlock78Value3 := (recoveredBlock78Value2) initOn: ('Detail').
    recoveredBlock78Value4 := recoveredBlock78Arg1.
    recoveredBlock78Value5 := (recoveredBlock78Value3) addSubElement: (recoveredBlock78Value4).
    recoveredBlock78Value6 := (recoveredBlock78Value0) addSubElement: (recoveredBlock78Value5).
    recoveredBlock78Value6
].
    (recoveredValue15) ifNotNil: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

