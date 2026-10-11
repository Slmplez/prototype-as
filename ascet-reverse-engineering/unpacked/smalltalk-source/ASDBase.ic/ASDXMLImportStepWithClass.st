"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005830; bytecode file offset 0x902744"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readAdditionalSignatureMappingTargetObjectAttributes: recoveredArg1 targetObject: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200058f0; bytecode file offset 0x902744"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readAdditionalElementMappingTargetObjectAttributes: recoveredArg1 targetObject: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x200059c0; bytecode file offset 0x902744"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readAdditionalSignatureMappingSourceObjectAttributes: recoveredArg1 sourceObject: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20041fa8; bytecode file offset 0x93e8fc"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
baseName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := protoClass.
    recoveredValue1 := (recoveredValue0) baseName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c84c; bytecode file offset 0x9692b0"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
handler
    | recoveredValue0 |
    recoveredValue0 := handler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d9a4; bytecode file offset 0x96a390"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
protoItem
    | recoveredValue0 |
    recoveredValue0 := protoClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ebbdc; bytecode file offset 0x9e849c"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
getOID: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getOID: (recoveredValue0) in: (recoveredValue1) oidAttr: ('elementOID') nameAttr: ('elementName').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ed4d8; bytecode file offset 0x9e9dc4"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
metaAt: recoveredArg1 or: recoveredArg2 do: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [].
    (self) metaAt: (recoveredValue0) or: (recoveredValue1) do: (recoveredValue2) ifNot: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20141c90; bytecode file offset 0xa3e554"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
inconsistencyFound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := controller.
    recoveredValue1 := ASDXMLImportIssueInconsistency.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := protoClass.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) initOn: (recoveredValue3) text: (recoveredValue4) fatal: (true).
    (recoveredValue0) addIssue: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20197cfc; bytecode file offset 0xa945c8"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
unsuitableElement: recoveredArg1 want: recoveredArg2 is: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := controller.
    recoveredValue1 := ASDXMLImportIssueUnsuitableElement.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := protoClass.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredArg3.
    recoveredValue7 := (recoveredValue2) initOn: (recoveredValue3) name: (recoveredValue4) want: (recoveredValue5) is: (recoveredValue6).
    (recoveredValue0) addIssue: (recoveredValue7).
    recoveredValue8 := ElementNotFound.
    (recoveredValue8) signal.
    ^self
! !

"ASDBase.ic method 0x201dc3cc; bytecode file offset 0xad8c94"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readAdditionalElementMappingSourceObjectAttributes: recoveredArg1 sourceObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getString: ('internalAccess') default: (nil).
    recoveredValue2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 |
    recoveredBlock12Value0 := recoveredArg2.
    recoveredBlock12Value1 := recoveredBlock12Arg1.
    recoveredBlock12Value2 := (recoveredBlock12Value1) asSymbol.
    recoveredBlock12Value3 := (recoveredBlock12Value0) internalAccess: (recoveredBlock12Value2).
    recoveredBlock12Value3
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201dfbc8; bytecode file offset 0xadc488"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
optionalProxyForPath: recoveredArg1 oid: recoveredArg2
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemForPath: (recoveredStack1) oid: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := controller.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) makeDBProxy: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020517c; bytecode file offset 0xb01a3c"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
initOn: recoveredArg1 sgClass: recoveredArg2 item: recoveredArg3 importPath: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg4.
    recoveredValue2 := recoveredArg5.
    super initOn: (recoveredValue0) importPath: (recoveredValue1) ext: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    sgClass := recoveredValue3.
    recoveredValue4 := recoveredArg3.
    protoClass := recoveredValue4.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := (self) unexpectedElement: (recoveredBlock18Value0).
    recoveredBlock18Value1
].
    handler := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2021a944; bytecode file offset 0xb17224"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
generatorShortNameNotFound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('Unknown generator short name: ') , (recoveredValue2).
    (recoveredValue1) show: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := controller.
    recoveredValue5 := ASDXMLImportIssueShortNameNotFound.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := protoClass.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue6) initOn: (recoveredValue7) name: (recoveredValue8).
    (recoveredValue4) addIssue: (recoveredValue9).
    recoveredValue10 := ShortNameNotFound.
    (recoveredValue10) signal.
    ^self
! !

"ASDBase.ic method 0x20229d6c; bytecode file offset 0xb26634"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
initOn: recoveredArg1 importDesc: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initOn: (recoveredValue0) importDesc: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) protoItem.
    protoClass := recoveredValue3.
    recoveredValue4 := protoClass.
    recoveredValue5 := (recoveredValue4) thing.
    sgClass := recoveredValue5.
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) unexpectedElement: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
    handler := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x20238f3c; bytecode file offset 0xb35804"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
itemForPath: recoveredArg1 oid: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'item_ should not be nil'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'removeMe'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) notNil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202748c4; bytecode file offset 0xb7118c"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
getOID: recoveredArg1 in: recoveredArg2 oidAttr: recoveredArg3 nameAttr: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202764ec; bytecode file offset 0xb72dd0"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
elementNotFound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('Unresolvable name: ') , (recoveredValue2).
    (recoveredValue1) show: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := controller.
    recoveredValue5 := ASDXMLImportIssueUnresolvableName.
    recoveredValue6 := (recoveredValue5) new.
    recoveredValue7 := protoClass.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue6) initOn: (recoveredValue7) name: (recoveredValue8).
    (recoveredValue4) addIssue: (recoveredValue9).
    recoveredValue10 := ElementNotFound.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) resumable: (true).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := ('Unresolvable name: ') , (recoveredValue12).
    (recoveredValue10) signalWith: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x202f2904; bytecode file offset 0xbef1cc"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
oidMethod: recoveredArg1 in: recoveredArg2 nameTag: recoveredArg3 oidTag: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202faeac; bytecode file offset 0xbf7778"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
getElement: recoveredArg1 nameAttr: recoveredArg2 oidAttr: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) mismatchingOID: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20313028; bytecode file offset 0xc0f8f0"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
getMethod: recoveredArg1 in: recoveredArg2 nameTag: recoveredArg3 oidTag: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByOID: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20322e38; bytecode file offset 0xc1f704"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
getProcessElement: recoveredArg1 nameAttr: recoveredArg2 oidAttr: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_71089'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20367c08; bytecode file offset 0xc644d8"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
getElementOID: recoveredArg1 nameAttr: recoveredArg2 oidAttr: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) mismatchingOID: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) unmappedOID.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) mismatchingOID: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20379c94; bytecode file offset 0xc76578"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
metaAt: recoveredArg1 or: recoveredArg2 do: recoveredArg3 ifNot: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) meta.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:block280f23a0Arg1 | 
    nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) optional: (recoveredStack2) do: (recoveredStack3) ifNot: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) meta.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) dom.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodeByPath: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := ASDXMLImportDOMIterator.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) parent: (recoveredStack4) dom: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f7198; bytecode file offset 0xcf3a7c"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
oidElement: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'elementName'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'elementOID'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'methodName'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'return'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementReturn: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := protoClass.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203fb1dc; bytecode file offset 0xcf7adc"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readEcuVariables: recoveredArg1 tag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 recoveredBlock16Value10 recoveredBlock16Value11 recoveredBlock16Value12 recoveredBlock16Value13 recoveredBlock16Value14 recoveredBlock16Value15 recoveredBlock16Value16 recoveredBlock16Value17 recoveredBlock16Value18 recoveredBlock16Value19 |
    recoveredBlock16Value0 := ASDEHooksVariable.
    recoveredBlock16Value1 := (recoveredBlock16Value0) create.
    recoveredLocal1 := recoveredBlock16Value1.
    recoveredBlock16Value2 := recoveredLocal1.
    recoveredBlock16Value3 := recoveredBlock16Arg1.
    recoveredBlock16Value4 := (recoveredBlock16Value3) getString: ('name').
    (recoveredBlock16Value2) name: (recoveredBlock16Value4).
    recoveredBlock16Value5 := recoveredLocal1.
    recoveredBlock16Value6 := recoveredBlock16Arg1.
    recoveredBlock16Value7 := (recoveredBlock16Value6) getString: ('measurementName').
    (recoveredBlock16Value5) measurementName: (recoveredBlock16Value7).
    recoveredBlock16Value8 := recoveredLocal1.
    recoveredBlock16Value9 := recoveredBlock16Arg1.
    recoveredBlock16Value10 := (recoveredBlock16Value9) getInt: ('arrayIndex').
    (recoveredBlock16Value8) arrayIndex: (recoveredBlock16Value10).
    recoveredBlock16Value11 := recoveredLocal1.
    recoveredBlock16Value12 := recoveredBlock16Arg1.
    recoveredBlock16Value13 := (recoveredBlock16Value12) getBoolean: ('conversion').
    (recoveredBlock16Value11) conversion: (recoveredBlock16Value13).
    recoveredBlock16Value14 := recoveredLocal1.
    recoveredBlock16Value15 := recoveredBlock16Arg1.
    recoveredBlock16Value16 := (recoveredBlock16Value15) getBoolean: ('backupCopy').
    (recoveredBlock16Value14) ecuBackupCopy: (recoveredBlock16Value16).
    recoveredBlock16Value17 := recoveredLocal2.
    recoveredBlock16Value18 := recoveredLocal1.
    recoveredBlock16Value19 := (recoveredBlock16Value17) add: (recoveredBlock16Value18).
    recoveredBlock16Value19
].
    (recoveredValue2) multiple: (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2041a7c8; bytecode file offset 0xd170c8"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readNotes: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Local3 recoveredBlock15Local4 recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := 'name'.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack3 := nil.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) getNMToken: (recoveredBlock15Stack2) default: (recoveredBlock15Stack3).
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Local4 := recoveredBlock15Stack1.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := 'Text'.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15Stack3 := [:block280fbd0cArg1 | 
    | block280fbd0cValue0 block280fbd0cValue1 |
    block280fbd0cValue0 := block280fbd0cArg1.
    block280fbd0cValue1 := (block280fbd0cValue0) cData.
    block280fbd0cValue1
].
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) optional: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3).
            recoveredBlock15PC := 46.
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Local1 := recoveredBlock15Stack1.
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack2 := 'View'.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack3 := [:block280fbd30Arg1 | 
    | block280fbd30Value0 block280fbd30Value1 |
    block280fbd30Value0 := block280fbd30Arg1.
    block280fbd30Value1 := (block280fbd30Value0) getNMToken: ('name').
    block280fbd30Value1
].
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) multiple: (recoveredBlock15Stack2) do: (recoveredBlock15Stack3).
            recoveredBlock15PC := 64.
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Local3 := recoveredBlock15Stack1.
            recoveredBlock15PC := 65.
        ].
        recoveredBlock15Step = 65 ifTrue: [
            recoveredBlock15Stack1 := SGTextDocuObject.
            recoveredBlock15PC := 67.
        ].
        recoveredBlock15Step = 67 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local4.
            recoveredBlock15PC := 68.
        ].
        recoveredBlock15Step = 68 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Local3.
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) createFor: (recoveredBlock15Stack2) assignedViewNames: (recoveredBlock15Stack3).
            recoveredBlock15PC := 71.
        ].
        recoveredBlock15Step = 71 ifTrue: [
            recoveredBlock15Local2 := recoveredBlock15Stack1.
            recoveredBlock15PC := 72.
        ].
        recoveredBlock15Step = 72 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Local2.
            recoveredBlock15PC := 73.
        ].
        recoveredBlock15Step = 73 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local1.
            recoveredBlock15PC := 74.
        ].
        recoveredBlock15Step = 74 ifTrue: [
            (recoveredBlock15Stack1) contents: (recoveredBlock15Stack2).
            recoveredBlock15PC := 76.
        ].
        recoveredBlock15Step = 76 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 79.
        ].
        recoveredBlock15Step = 79 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Local2.
            recoveredBlock15PC := 80.
        ].
        recoveredBlock15Step = 80 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 82.
        ].
        recoveredBlock15Step = 82 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) multiple: ('Note') do: (recoveredValue3).
    recoveredValue4 := SGTextDocumentation.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue5) xmlInit: (recoveredValue6).
    recoveredLocal2 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20461cb0; bytecode file offset 0xd5e5b4"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readElementIDChain: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'elementOID'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalIDChain: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) adjustOIDChain: (recoveredStack2) refItem: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'elementName'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := false.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2) oid: (recoveredStack3) createDummy: (recoveredStack4).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := 'Class of '.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlOID.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2048fc04; bytecode file offset 0xd8c500"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readLocalIDChain: recoveredArg1 refItem: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'elementOID'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalIDChain: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) adjustOIDChain: (recoveredStack2) refItem: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'elementName'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Local1 recoveredBlock72Stack0 recoveredBlock72Stack1 recoveredBlock72Stack2 recoveredBlock72Stack3 recoveredBlock72Stack4 recoveredBlock72PC recoveredBlock72Step recoveredBlock72Done recoveredBlock72Result |
    recoveredBlock72Stack0 := self.
    recoveredBlock72PC := 78.
    recoveredBlock72Done := false.
    [recoveredBlock72Done not] whileTrue: [
        recoveredBlock72Step := recoveredBlock72PC.
        recoveredBlock72Step = 78 ifTrue: [
            recoveredBlock72Stack1 := recoveredLocal1.
            recoveredBlock72PC := 81.
        ].
        recoveredBlock72Step = 81 ifTrue: [
            (recoveredBlock72Stack1 ~~ nil) ifTrue: [recoveredBlock72PC := 94] ifFalse: [recoveredBlock72PC := 84].
        ].
        recoveredBlock72Step = 84 ifTrue: [
            recoveredBlock72Stack1 := self.
            recoveredBlock72PC := 85.
        ].
        recoveredBlock72Step = 85 ifTrue: [
            recoveredBlock72Stack2 := 'Class of '.
            recoveredBlock72PC := 87.
        ].
        recoveredBlock72Step = 87 ifTrue: [
            recoveredBlock72Stack3 := recoveredBlock72Local1.
            recoveredBlock72PC := 88.
        ].
        recoveredBlock72Step = 88 ifTrue: [
            recoveredBlock72Stack3 := (recoveredBlock72Stack3) xmlName.
            recoveredBlock72PC := 90.
        ].
        recoveredBlock72Step = 90 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) , (recoveredBlock72Stack3).
            recoveredBlock72PC := 92.
        ].
        recoveredBlock72Step = 92 ifTrue: [
            (recoveredBlock72Stack1) elementNotFound: (recoveredBlock72Stack2).
            recoveredBlock72PC := 94.
        ].
        recoveredBlock72Step = 94 ifTrue: [
            recoveredBlock72Stack1 := recoveredLocal1.
            recoveredBlock72PC := 97.
        ].
        recoveredBlock72Step = 97 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Arg1.
            recoveredBlock72PC := 98.
        ].
        recoveredBlock72Step = 98 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) xmlElementByName: (recoveredBlock72Stack2).
            recoveredBlock72PC := 100.
        ].
        recoveredBlock72Step = 100 ifTrue: [
            recoveredBlock72Local1 := recoveredBlock72Stack1.
            recoveredBlock72PC := 101.
        ].
        recoveredBlock72Step = 101 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Local1.
            recoveredBlock72PC := 102.
        ].
        recoveredBlock72Step = 102 ifTrue: [
            (recoveredBlock72Stack1 ~~ nil) ifTrue: [recoveredBlock72PC := 110] ifFalse: [recoveredBlock72PC := 106].
        ].
        recoveredBlock72Step = 106 ifTrue: [
            recoveredBlock72Stack1 := self.
            recoveredBlock72PC := 107.
        ].
        recoveredBlock72Step = 107 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Arg1.
            recoveredBlock72PC := 108.
        ].
        recoveredBlock72Step = 108 ifTrue: [
            (recoveredBlock72Stack1) elementNotFound: (recoveredBlock72Stack2).
            recoveredBlock72PC := 110.
        ].
        recoveredBlock72Step = 110 ifTrue: [
            recoveredBlock72Stack1 := recoveredLocal3.
            recoveredBlock72PC := 113.
        ].
        recoveredBlock72Step = 113 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Local1.
            recoveredBlock72PC := 114.
        ].
        recoveredBlock72Step = 114 ifTrue: [
            recoveredBlock72Stack2 := (recoveredBlock72Stack2) xmlOID.
            recoveredBlock72PC := 116.
        ].
        recoveredBlock72Step = 116 ifTrue: [
            (recoveredBlock72Stack1) add: (recoveredBlock72Stack2).
            recoveredBlock72PC := 118.
        ].
        recoveredBlock72Step = 118 ifTrue: [
            recoveredBlock72Stack1 := recoveredBlock72Local1.
            recoveredBlock72PC := 119.
        ].
        recoveredBlock72Step = 119 ifTrue: [
            recoveredBlock72Stack1 := (recoveredBlock72Stack1) xmlSGClass.
            recoveredBlock72PC := 121.
        ].
        recoveredBlock72Step = 121 ifTrue: [
            recoveredBlock72Stack2 := recoveredBlock72Stack1.
            recoveredBlock72PC := 122.
        ].
        recoveredBlock72Step = 122 ifTrue: [
            recoveredLocal1 := recoveredBlock72Stack2.
            recoveredBlock72PC := 125.
        ].
        recoveredBlock72Step = 125 ifTrue: [
            recoveredBlock72Result := recoveredBlock72Stack1.
            recoveredBlock72Done := true.
        ].
    ].
    recoveredBlock72Result
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204d7b4c; bytecode file offset 0xdd4454"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readModelIDChain: recoveredArg1 refItem: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'modelOID'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalIDChain: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := controller.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) adjustOIDChain: (recoveredStack2) refItem: (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'modelName'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) allSubStrings: ($.).
    recoveredBlock44Value2 := recoveredBlock44Value1.
    recoveredLocal2 := recoveredBlock44Value2.
    recoveredBlock44Value1
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := [
    ^#()
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Local1 recoveredBlock98Stack0 recoveredBlock98Stack1 recoveredBlock98Stack2 recoveredBlock98Stack3 recoveredBlock98Stack4 recoveredBlock98PC recoveredBlock98Step recoveredBlock98Done recoveredBlock98Result |
    recoveredBlock98Stack0 := self.
    recoveredBlock98PC := 104.
    recoveredBlock98Done := false.
    [recoveredBlock98Done not] whileTrue: [
        recoveredBlock98Step := recoveredBlock98PC.
        recoveredBlock98Step = 104 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 107.
        ].
        recoveredBlock98Step = 107 ifTrue: [
            (recoveredBlock98Stack1 ~~ nil) ifTrue: [recoveredBlock98PC := 120] ifFalse: [recoveredBlock98PC := 110].
        ].
        recoveredBlock98Step = 110 ifTrue: [
            recoveredBlock98Stack1 := self.
            recoveredBlock98PC := 111.
        ].
        recoveredBlock98Step = 111 ifTrue: [
            recoveredBlock98Stack2 := 'Class of '.
            recoveredBlock98PC := 113.
        ].
        recoveredBlock98Step = 113 ifTrue: [
            recoveredBlock98Stack3 := recoveredBlock98Local1.
            recoveredBlock98PC := 114.
        ].
        recoveredBlock98Step = 114 ifTrue: [
            recoveredBlock98Stack3 := (recoveredBlock98Stack3) xmlName.
            recoveredBlock98PC := 116.
        ].
        recoveredBlock98Step = 116 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) , (recoveredBlock98Stack3).
            recoveredBlock98PC := 118.
        ].
        recoveredBlock98Step = 118 ifTrue: [
            (recoveredBlock98Stack1) elementNotFound: (recoveredBlock98Stack2).
            recoveredBlock98PC := 120.
        ].
        recoveredBlock98Step = 120 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal1.
            recoveredBlock98PC := 123.
        ].
        recoveredBlock98Step = 123 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 124.
        ].
        recoveredBlock98Step = 124 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) xmlElementByName: (recoveredBlock98Stack2).
            recoveredBlock98PC := 126.
        ].
        recoveredBlock98Step = 126 ifTrue: [
            recoveredBlock98Local1 := recoveredBlock98Stack1.
            recoveredBlock98PC := 127.
        ].
        recoveredBlock98Step = 127 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local1.
            recoveredBlock98PC := 128.
        ].
        recoveredBlock98Step = 128 ifTrue: [
            (recoveredBlock98Stack1 ~~ nil) ifTrue: [recoveredBlock98PC := 136] ifFalse: [recoveredBlock98PC := 132].
        ].
        recoveredBlock98Step = 132 ifTrue: [
            recoveredBlock98Stack1 := self.
            recoveredBlock98PC := 133.
        ].
        recoveredBlock98Step = 133 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Arg1.
            recoveredBlock98PC := 134.
        ].
        recoveredBlock98Step = 134 ifTrue: [
            (recoveredBlock98Stack1) elementNotFound: (recoveredBlock98Stack2).
            recoveredBlock98PC := 136.
        ].
        recoveredBlock98Step = 136 ifTrue: [
            recoveredBlock98Stack1 := recoveredLocal3.
            recoveredBlock98PC := 139.
        ].
        recoveredBlock98Step = 139 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Local1.
            recoveredBlock98PC := 140.
        ].
        recoveredBlock98Step = 140 ifTrue: [
            recoveredBlock98Stack2 := (recoveredBlock98Stack2) xmlOID.
            recoveredBlock98PC := 142.
        ].
        recoveredBlock98Step = 142 ifTrue: [
            (recoveredBlock98Stack1) add: (recoveredBlock98Stack2).
            recoveredBlock98PC := 144.
        ].
        recoveredBlock98Step = 144 ifTrue: [
            recoveredBlock98Stack1 := recoveredBlock98Local1.
            recoveredBlock98PC := 145.
        ].
        recoveredBlock98Step = 145 ifTrue: [
            recoveredBlock98Stack1 := (recoveredBlock98Stack1) xmlSGClass.
            recoveredBlock98PC := 147.
        ].
        recoveredBlock98Step = 147 ifTrue: [
            recoveredBlock98Stack2 := recoveredBlock98Stack1.
            recoveredBlock98PC := 148.
        ].
        recoveredBlock98Step = 148 ifTrue: [
            recoveredLocal1 := recoveredBlock98Stack2.
            recoveredBlock98PC := 151.
        ].
        recoveredBlock98Step = 151 ifTrue: [
            recoveredBlock98Result := recoveredBlock98Stack1.
            recoveredBlock98Done := true.
        ].
    ].
    recoveredBlock98Result
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204dfe84; bytecode file offset 0xddc77c"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readComplexPort: recoveredArg1 protoRef: recoveredArg2 defAttr: recoveredArg3 block: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'methodName'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getNMToken: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getBoolean: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 151.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'methodOID'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalID: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := SGItemWithSpec.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByOID: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := ASDXMLImportProtoMethod.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) initOn: (recoveredStack2) oid: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 107] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlElementByName: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 133] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 149.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20599938; bytecode file offset 0xe962ec"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readElementMappingT: recoveredArg1 sourceObject: recoveredArg2 targetObject: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Local3 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 recoveredBlock15Value16 |
    recoveredBlock15Value0 := ASDMappingObject.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Local2 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) getString: ('elementName').
    recoveredBlock15Local3 := recoveredBlock15Value3.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := [:recoveredBlock15Block43Arg1 | 
    | recoveredBlock15Block43Value0 recoveredBlock15Block43Value1 recoveredBlock15Block43Value2 recoveredBlock15Block43Value3 recoveredBlock15Block43Value4 recoveredBlock15Block43Value5 recoveredBlock15Block43Value6 recoveredBlock15Block43Value7 recoveredBlock15Block43Value8 recoveredBlock15Block43Value9 recoveredBlock15Block43Value10 recoveredBlock15Block43Value11 recoveredBlock15Block43Value12 recoveredBlock15Block43Value13 recoveredBlock15Block43Value14 recoveredBlock15Block43Value15 recoveredBlock15Block43Value16 recoveredBlock15Block43Value17 recoveredBlock15Block43Value18 |
    recoveredBlock15Block43Value0 := recoveredBlock15Local2.
    recoveredBlock15Block43Value1 := recoveredArg2.
    recoveredBlock15Block43Value2 := (recoveredBlock15Block43Value1) new.
    (recoveredBlock15Block43Value0) sourceObject: (recoveredBlock15Block43Value2).
    recoveredBlock15Block43Value3 := recoveredBlock15Local2.
    recoveredBlock15Block43Value4 := (recoveredBlock15Block43Value3) sourceObject.
    recoveredBlock15Block43Value5 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value6 := (recoveredBlock15Block43Value5) getString: ('displayName').
    (recoveredBlock15Block43Value4) displayName: (recoveredBlock15Block43Value6).
    recoveredBlock15Block43Value7 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value8 := (self) readElementIDChain: (recoveredBlock15Block43Value7).
    recoveredBlock15Block43Value9 := [:recoveredBlock15Block43Block74Arg1 | 
    | recoveredBlock15Block43Block74Value0 recoveredBlock15Block43Block74Value1 recoveredBlock15Block43Block74Value2 recoveredBlock15Block43Block74Value3 recoveredBlock15Block43Block74Value4 recoveredBlock15Block43Block74Value5 |
    recoveredBlock15Block43Block74Value0 := recoveredBlock15Local2.
    recoveredBlock15Block43Block74Value1 := (recoveredBlock15Block43Block74Value0) sourceObject.
    recoveredBlock15Block43Block74Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block43Block74Value3 := recoveredBlock15Block43Block74Arg1.
    recoveredBlock15Block43Block74Value4 := (recoveredBlock15Block43Block74Value2) createFor: (recoveredBlock15Block43Block74Value3).
    recoveredBlock15Block43Block74Value5 := (recoveredBlock15Block43Block74Value1) elementOIDChain: (recoveredBlock15Block43Block74Value4).
    recoveredBlock15Block43Block74Value5
].
    (recoveredBlock15Block43Value8) ifNotNil: (recoveredBlock15Block43Value9).
    recoveredBlock15Block43Value10 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value11 := protoClass.
    recoveredBlock15Block43Value12 := (recoveredBlock15Block43Value11) thing.
    recoveredBlock15Block43Value13 := (self) readModelIDChain: (recoveredBlock15Block43Value10) refItem: (recoveredBlock15Block43Value12).
    recoveredBlock15Block43Value14 := [:recoveredBlock15Block43Block103Arg1 | 
    | recoveredBlock15Block43Block103Value0 recoveredBlock15Block43Block103Value1 recoveredBlock15Block43Block103Value2 recoveredBlock15Block43Block103Value3 recoveredBlock15Block43Block103Value4 recoveredBlock15Block43Block103Value5 |
    recoveredBlock15Block43Block103Value0 := recoveredBlock15Local2.
    recoveredBlock15Block43Block103Value1 := (recoveredBlock15Block43Block103Value0) sourceObject.
    recoveredBlock15Block43Block103Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block43Block103Value3 := recoveredBlock15Block43Block103Arg1.
    recoveredBlock15Block43Block103Value4 := (recoveredBlock15Block43Block103Value2) createFor: (recoveredBlock15Block43Block103Value3).
    recoveredBlock15Block43Block103Value5 := (recoveredBlock15Block43Block103Value1) modelOIDChain: (recoveredBlock15Block43Block103Value4).
    recoveredBlock15Block43Block103Value5
].
    (recoveredBlock15Block43Value13) ifNotNil: (recoveredBlock15Block43Value14).
    recoveredBlock15Block43Value15 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value16 := recoveredBlock15Local2.
    recoveredBlock15Block43Value17 := (recoveredBlock15Block43Value16) sourceObject.
    recoveredBlock15Block43Value18 := (self) readAdditionalElementMappingSourceObjectAttributes: (recoveredBlock15Block43Value15) sourceObject: (recoveredBlock15Block43Value17).
    recoveredBlock15Block43Value18
].
    recoveredBlock15Value6 := handler.
    (recoveredBlock15Value4) required: ('SourceObject') do: (recoveredBlock15Value5) ifNot: (recoveredBlock15Value6).
    recoveredBlock15Value7 := recoveredBlock15Arg1.
    recoveredBlock15Value8 := [:recoveredBlock15Block145Arg1 | 
    | recoveredBlock15Block145Value0 recoveredBlock15Block145Value1 recoveredBlock15Block145Value2 recoveredBlock15Block145Value3 recoveredBlock15Block145Value4 recoveredBlock15Block145Value5 recoveredBlock15Block145Value6 recoveredBlock15Block145Value7 recoveredBlock15Block145Value8 recoveredBlock15Block145Value9 recoveredBlock15Block145Value10 recoveredBlock15Block145Value11 recoveredBlock15Block145Value12 recoveredBlock15Block145Value13 recoveredBlock15Block145Value14 recoveredBlock15Block145Value15 recoveredBlock15Block145Value16 recoveredBlock15Block145Value17 recoveredBlock15Block145Value18 |
    recoveredBlock15Block145Value0 := recoveredBlock15Local2.
    recoveredBlock15Block145Value1 := recoveredArg3.
    recoveredBlock15Block145Value2 := (recoveredBlock15Block145Value1) new.
    (recoveredBlock15Block145Value0) targetObject: (recoveredBlock15Block145Value2).
    recoveredBlock15Block145Value3 := recoveredBlock15Local2.
    recoveredBlock15Block145Value4 := (recoveredBlock15Block145Value3) targetObject.
    recoveredBlock15Block145Value5 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value6 := (recoveredBlock15Block145Value5) getString: ('displayName').
    (recoveredBlock15Block145Value4) displayName: (recoveredBlock15Block145Value6).
    recoveredBlock15Block145Value7 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value8 := (self) readElementIDChain: (recoveredBlock15Block145Value7).
    recoveredBlock15Block145Value9 := [:recoveredBlock15Block145Block176Arg1 | 
    | recoveredBlock15Block145Block176Value0 recoveredBlock15Block145Block176Value1 recoveredBlock15Block145Block176Value2 recoveredBlock15Block145Block176Value3 recoveredBlock15Block145Block176Value4 recoveredBlock15Block145Block176Value5 |
    recoveredBlock15Block145Block176Value0 := recoveredBlock15Local2.
    recoveredBlock15Block145Block176Value1 := (recoveredBlock15Block145Block176Value0) targetObject.
    recoveredBlock15Block145Block176Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block145Block176Value3 := recoveredBlock15Block145Block176Arg1.
    recoveredBlock15Block145Block176Value4 := (recoveredBlock15Block145Block176Value2) createFor: (recoveredBlock15Block145Block176Value3).
    recoveredBlock15Block145Block176Value5 := (recoveredBlock15Block145Block176Value1) elementOIDChain: (recoveredBlock15Block145Block176Value4).
    recoveredBlock15Block145Block176Value5
].
    (recoveredBlock15Block145Value8) ifNotNil: (recoveredBlock15Block145Value9).
    recoveredBlock15Block145Value10 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value11 := protoClass.
    recoveredBlock15Block145Value12 := (recoveredBlock15Block145Value11) thing.
    recoveredBlock15Block145Value13 := (self) readModelIDChain: (recoveredBlock15Block145Value10) refItem: (recoveredBlock15Block145Value12).
    recoveredBlock15Block145Value14 := [:recoveredBlock15Block145Block205Arg1 | 
    | recoveredBlock15Block145Block205Value0 recoveredBlock15Block145Block205Value1 recoveredBlock15Block145Block205Value2 recoveredBlock15Block145Block205Value3 recoveredBlock15Block145Block205Value4 recoveredBlock15Block145Block205Value5 |
    recoveredBlock15Block145Block205Value0 := recoveredBlock15Local2.
    recoveredBlock15Block145Block205Value1 := (recoveredBlock15Block145Block205Value0) targetObject.
    recoveredBlock15Block145Block205Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block145Block205Value3 := recoveredBlock15Block145Block205Arg1.
    recoveredBlock15Block145Block205Value4 := (recoveredBlock15Block145Block205Value2) createFor: (recoveredBlock15Block145Block205Value3).
    recoveredBlock15Block145Block205Value5 := (recoveredBlock15Block145Block205Value1) modelOIDChain: (recoveredBlock15Block145Block205Value4).
    recoveredBlock15Block145Block205Value5
].
    (recoveredBlock15Block145Value13) ifNotNil: (recoveredBlock15Block145Value14).
    recoveredBlock15Block145Value15 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value16 := recoveredBlock15Local2.
    recoveredBlock15Block145Value17 := (recoveredBlock15Block145Value16) targetObject.
    recoveredBlock15Block145Value18 := (self) readAdditionalElementMappingTargetObjectAttributes: (recoveredBlock15Block145Value15) targetObject: (recoveredBlock15Block145Value17).
    recoveredBlock15Block145Value18
].
    recoveredBlock15Value9 := handler.
    (recoveredBlock15Value7) optional: ('TargetObject') do: (recoveredBlock15Value8) ifNot: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredLocal1.
    recoveredBlock15Value11 := recoveredBlock15Local3.
    recoveredBlock15Value12 := [
    | recoveredBlock15Block248Value0 recoveredBlock15Block248Value1 recoveredBlock15Block248Value2 recoveredBlock15Block248Value3 recoveredBlock15Block248Value4 |
    recoveredBlock15Block248Value0 := recoveredLocal1.
    recoveredBlock15Block248Value1 := recoveredBlock15Local3.
    recoveredBlock15Block248Value2 := OrderedCollection.
    recoveredBlock15Block248Value3 := (recoveredBlock15Block248Value2) new.
    recoveredBlock15Block248Value4 := (recoveredBlock15Block248Value0) at: (recoveredBlock15Block248Value1) put: (recoveredBlock15Block248Value3).
    recoveredBlock15Block248Value4
].
    recoveredBlock15Value13 := (recoveredBlock15Value10) at: (recoveredBlock15Value11) ifAbsent: (recoveredBlock15Value12).
    recoveredBlock15Local1 := recoveredBlock15Value13.
    recoveredBlock15Value14 := recoveredBlock15Local1.
    recoveredBlock15Value15 := recoveredBlock15Local2.
    recoveredBlock15Value16 := (recoveredBlock15Value14) add: (recoveredBlock15Value15).
    recoveredBlock15Value16
].
    (recoveredValue2) multiple: ('ElementMapping') do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x205999bc; bytecode file offset 0xe962ec"
!ASDXMLImportStepWithClass methodsFor: 'recovered'!
readSignatureMappingT: recoveredArg1 sourceObject: recoveredArg2 targetObject: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Local1 recoveredBlock15Local2 recoveredBlock15Local3 recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 recoveredBlock15Value16 |
    recoveredBlock15Value0 := ASDMappingObject.
    recoveredBlock15Value1 := (recoveredBlock15Value0) new.
    recoveredBlock15Local2 := recoveredBlock15Value1.
    recoveredBlock15Value2 := recoveredBlock15Arg1.
    recoveredBlock15Value3 := (recoveredBlock15Value2) getString: ('signatureName').
    recoveredBlock15Local3 := recoveredBlock15Value3.
    recoveredBlock15Value4 := recoveredBlock15Arg1.
    recoveredBlock15Value5 := [:recoveredBlock15Block43Arg1 | 
    | recoveredBlock15Block43Value0 recoveredBlock15Block43Value1 recoveredBlock15Block43Value2 recoveredBlock15Block43Value3 recoveredBlock15Block43Value4 recoveredBlock15Block43Value5 recoveredBlock15Block43Value6 recoveredBlock15Block43Value7 recoveredBlock15Block43Value8 recoveredBlock15Block43Value9 recoveredBlock15Block43Value10 recoveredBlock15Block43Value11 recoveredBlock15Block43Value12 recoveredBlock15Block43Value13 recoveredBlock15Block43Value14 recoveredBlock15Block43Value15 recoveredBlock15Block43Value16 recoveredBlock15Block43Value17 recoveredBlock15Block43Value18 |
    recoveredBlock15Block43Value0 := recoveredBlock15Local2.
    recoveredBlock15Block43Value1 := recoveredArg2.
    recoveredBlock15Block43Value2 := (recoveredBlock15Block43Value1) new.
    (recoveredBlock15Block43Value0) sourceObject: (recoveredBlock15Block43Value2).
    recoveredBlock15Block43Value3 := recoveredBlock15Local2.
    recoveredBlock15Block43Value4 := (recoveredBlock15Block43Value3) sourceObject.
    recoveredBlock15Block43Value5 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value6 := (recoveredBlock15Block43Value5) getString: ('displayName').
    (recoveredBlock15Block43Value4) displayName: (recoveredBlock15Block43Value6).
    recoveredBlock15Block43Value7 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value8 := (self) readElementIDChain: (recoveredBlock15Block43Value7).
    recoveredBlock15Block43Value9 := [:recoveredBlock15Block43Block74Arg1 | 
    | recoveredBlock15Block43Block74Value0 recoveredBlock15Block43Block74Value1 recoveredBlock15Block43Block74Value2 recoveredBlock15Block43Block74Value3 recoveredBlock15Block43Block74Value4 recoveredBlock15Block43Block74Value5 |
    recoveredBlock15Block43Block74Value0 := recoveredBlock15Local2.
    recoveredBlock15Block43Block74Value1 := (recoveredBlock15Block43Block74Value0) sourceObject.
    recoveredBlock15Block43Block74Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block43Block74Value3 := recoveredBlock15Block43Block74Arg1.
    recoveredBlock15Block43Block74Value4 := (recoveredBlock15Block43Block74Value2) createFor: (recoveredBlock15Block43Block74Value3).
    recoveredBlock15Block43Block74Value5 := (recoveredBlock15Block43Block74Value1) elementOIDChain: (recoveredBlock15Block43Block74Value4).
    recoveredBlock15Block43Block74Value5
].
    (recoveredBlock15Block43Value8) ifNotNil: (recoveredBlock15Block43Value9).
    recoveredBlock15Block43Value10 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value11 := protoClass.
    recoveredBlock15Block43Value12 := (recoveredBlock15Block43Value11) thing.
    recoveredBlock15Block43Value13 := (self) readModelIDChain: (recoveredBlock15Block43Value10) refItem: (recoveredBlock15Block43Value12).
    recoveredBlock15Block43Value14 := [:recoveredBlock15Block43Block103Arg1 | 
    | recoveredBlock15Block43Block103Value0 recoveredBlock15Block43Block103Value1 recoveredBlock15Block43Block103Value2 recoveredBlock15Block43Block103Value3 recoveredBlock15Block43Block103Value4 recoveredBlock15Block43Block103Value5 |
    recoveredBlock15Block43Block103Value0 := recoveredBlock15Local2.
    recoveredBlock15Block43Block103Value1 := (recoveredBlock15Block43Block103Value0) sourceObject.
    recoveredBlock15Block43Block103Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block43Block103Value3 := recoveredBlock15Block43Block103Arg1.
    recoveredBlock15Block43Block103Value4 := (recoveredBlock15Block43Block103Value2) createFor: (recoveredBlock15Block43Block103Value3).
    recoveredBlock15Block43Block103Value5 := (recoveredBlock15Block43Block103Value1) modelOIDChain: (recoveredBlock15Block43Block103Value4).
    recoveredBlock15Block43Block103Value5
].
    (recoveredBlock15Block43Value13) ifNotNil: (recoveredBlock15Block43Value14).
    recoveredBlock15Block43Value15 := recoveredBlock15Block43Arg1.
    recoveredBlock15Block43Value16 := recoveredBlock15Local2.
    recoveredBlock15Block43Value17 := (recoveredBlock15Block43Value16) sourceObject.
    recoveredBlock15Block43Value18 := (self) readAdditionalSignatureMappingSourceObjectAttributes: (recoveredBlock15Block43Value15) sourceObject: (recoveredBlock15Block43Value17).
    recoveredBlock15Block43Value18
].
    recoveredBlock15Value6 := handler.
    (recoveredBlock15Value4) required: ('SourceObject') do: (recoveredBlock15Value5) ifNot: (recoveredBlock15Value6).
    recoveredBlock15Value7 := recoveredBlock15Arg1.
    recoveredBlock15Value8 := [:recoveredBlock15Block145Arg1 | 
    | recoveredBlock15Block145Value0 recoveredBlock15Block145Value1 recoveredBlock15Block145Value2 recoveredBlock15Block145Value3 recoveredBlock15Block145Value4 recoveredBlock15Block145Value5 recoveredBlock15Block145Value6 recoveredBlock15Block145Value7 recoveredBlock15Block145Value8 recoveredBlock15Block145Value9 recoveredBlock15Block145Value10 recoveredBlock15Block145Value11 recoveredBlock15Block145Value12 recoveredBlock15Block145Value13 recoveredBlock15Block145Value14 recoveredBlock15Block145Value15 recoveredBlock15Block145Value16 recoveredBlock15Block145Value17 recoveredBlock15Block145Value18 |
    recoveredBlock15Block145Value0 := recoveredBlock15Local2.
    recoveredBlock15Block145Value1 := recoveredArg3.
    recoveredBlock15Block145Value2 := (recoveredBlock15Block145Value1) new.
    (recoveredBlock15Block145Value0) targetObject: (recoveredBlock15Block145Value2).
    recoveredBlock15Block145Value3 := recoveredBlock15Local2.
    recoveredBlock15Block145Value4 := (recoveredBlock15Block145Value3) targetObject.
    recoveredBlock15Block145Value5 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value6 := (recoveredBlock15Block145Value5) getString: ('displayName').
    (recoveredBlock15Block145Value4) displayName: (recoveredBlock15Block145Value6).
    recoveredBlock15Block145Value7 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value8 := (self) readElementIDChain: (recoveredBlock15Block145Value7).
    recoveredBlock15Block145Value9 := [:recoveredBlock15Block145Block176Arg1 | 
    | recoveredBlock15Block145Block176Value0 recoveredBlock15Block145Block176Value1 recoveredBlock15Block145Block176Value2 recoveredBlock15Block145Block176Value3 recoveredBlock15Block145Block176Value4 recoveredBlock15Block145Block176Value5 |
    recoveredBlock15Block145Block176Value0 := recoveredBlock15Local2.
    recoveredBlock15Block145Block176Value1 := (recoveredBlock15Block145Block176Value0) targetObject.
    recoveredBlock15Block145Block176Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block145Block176Value3 := recoveredBlock15Block145Block176Arg1.
    recoveredBlock15Block145Block176Value4 := (recoveredBlock15Block145Block176Value2) createFor: (recoveredBlock15Block145Block176Value3).
    recoveredBlock15Block145Block176Value5 := (recoveredBlock15Block145Block176Value1) elementOIDChain: (recoveredBlock15Block145Block176Value4).
    recoveredBlock15Block145Block176Value5
].
    (recoveredBlock15Block145Value8) ifNotNil: (recoveredBlock15Block145Value9).
    recoveredBlock15Block145Value10 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value11 := protoClass.
    recoveredBlock15Block145Value12 := (recoveredBlock15Block145Value11) thing.
    recoveredBlock15Block145Value13 := (self) readModelIDChain: (recoveredBlock15Block145Value10) refItem: (recoveredBlock15Block145Value12).
    recoveredBlock15Block145Value14 := [:recoveredBlock15Block145Block205Arg1 | 
    | recoveredBlock15Block145Block205Value0 recoveredBlock15Block145Block205Value1 recoveredBlock15Block145Block205Value2 recoveredBlock15Block145Block205Value3 recoveredBlock15Block145Block205Value4 recoveredBlock15Block145Block205Value5 |
    recoveredBlock15Block145Block205Value0 := recoveredBlock15Local2.
    recoveredBlock15Block145Block205Value1 := (recoveredBlock15Block145Block205Value0) targetObject.
    recoveredBlock15Block145Block205Value2 := ASDHierarchicalByteArray.
    recoveredBlock15Block145Block205Value3 := recoveredBlock15Block145Block205Arg1.
    recoveredBlock15Block145Block205Value4 := (recoveredBlock15Block145Block205Value2) createFor: (recoveredBlock15Block145Block205Value3).
    recoveredBlock15Block145Block205Value5 := (recoveredBlock15Block145Block205Value1) modelOIDChain: (recoveredBlock15Block145Block205Value4).
    recoveredBlock15Block145Block205Value5
].
    (recoveredBlock15Block145Value13) ifNotNil: (recoveredBlock15Block145Value14).
    recoveredBlock15Block145Value15 := recoveredBlock15Block145Arg1.
    recoveredBlock15Block145Value16 := recoveredBlock15Local2.
    recoveredBlock15Block145Value17 := (recoveredBlock15Block145Value16) targetObject.
    recoveredBlock15Block145Value18 := (self) readAdditionalSignatureMappingTargetObjectAttributes: (recoveredBlock15Block145Value15) targetObject: (recoveredBlock15Block145Value17).
    recoveredBlock15Block145Value18
].
    recoveredBlock15Value9 := handler.
    (recoveredBlock15Value7) optional: ('TargetObject') do: (recoveredBlock15Value8) ifNot: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredLocal1.
    recoveredBlock15Value11 := recoveredBlock15Local3.
    recoveredBlock15Value12 := [
    | recoveredBlock15Block248Value0 recoveredBlock15Block248Value1 recoveredBlock15Block248Value2 recoveredBlock15Block248Value3 recoveredBlock15Block248Value4 |
    recoveredBlock15Block248Value0 := recoveredLocal1.
    recoveredBlock15Block248Value1 := recoveredBlock15Local3.
    recoveredBlock15Block248Value2 := OrderedCollection.
    recoveredBlock15Block248Value3 := (recoveredBlock15Block248Value2) new.
    recoveredBlock15Block248Value4 := (recoveredBlock15Block248Value0) at: (recoveredBlock15Block248Value1) put: (recoveredBlock15Block248Value3).
    recoveredBlock15Block248Value4
].
    recoveredBlock15Value13 := (recoveredBlock15Value10) at: (recoveredBlock15Value11) ifAbsent: (recoveredBlock15Value12).
    recoveredBlock15Local1 := recoveredBlock15Value13.
    recoveredBlock15Value14 := recoveredBlock15Local1.
    recoveredBlock15Value15 := recoveredBlock15Local2.
    recoveredBlock15Value16 := (recoveredBlock15Value14) add: (recoveredBlock15Value15).
    recoveredBlock15Value16
].
    (recoveredValue2) multiple: ('SignatureMapping') do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

