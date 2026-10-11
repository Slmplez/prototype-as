"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018b84; bytecode file offset 0x92209c"
!ASDReferenceImplDialog methodsFor: 'recovered'!
editorIcon
    ^'GeneralEditImplementation'
! !

"ASDBase.ic method 0x20042dbc; bytecode file offset 0x9451f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
widgetImplFrame
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('widgetImplFrame').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20042e7c; bytecode file offset 0x9451f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
locationInstanceWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('locationInstance').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004371c; bytecode file offset 0x9451f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
widgetPolicy
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('policyComboBox').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043c8c; bytecode file offset 0x9451f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
memorySegmentWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('memorySegment').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043f8c; bytecode file offset 0x9451f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
widgetImplList
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('impl').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20047f6c; bytecode file offset 0x9451f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
locationReferenceWidget
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('locationReference').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200e37f8; bytecode file offset 0x9e00bc"
!ASDReferenceImplDialog methodsFor: 'recovered'!
getImplNameBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) getConfigName: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x200efac8; bytecode file offset 0x9ec3e4"
!ASDReferenceImplDialog methodsFor: 'recovered'!
getResultObject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASDImplDialogContainer.
    recoveredValue1 := (self) uiController.
    recoveredValue2 := (recoveredValue1) selection.
    recoveredValue3 := (self) uiController.
    recoveredValue4 := (recoveredValue3) additionalImplInfo.
    recoveredValue5 := (recoveredValue0) createForImpl: (recoveredValue2) additionalImplInfo: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20121664; bytecode file offset 0xa1df48"
!ASDReferenceImplDialog methodsFor: 'recovered'!
setImplDialogContainer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) implementation.
    (recoveredValue0) selection: (recoveredValue2).
    recoveredValue3 := (self) uiController.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) additionalImplInfo.
    (recoveredValue3) additionalImplInfo: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20136248; bytecode file offset 0xa32b14"
!ASDReferenceImplDialog methodsFor: 'recovered'!
implActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) uiController.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (recoveredValue1) item.
    recoveredValue3 := (recoveredValue2) getObject.
    (recoveredValue0) selectedConfig: (recoveredValue3).
    (self) updateAdditionalImplInfoWidgets.
    (self) updatePolicy.
    ^self
! !

"ASDBase.ic method 0x20169ec4; bytecode file offset 0xa66788"
!ASDReferenceImplDialog methodsFor: 'recovered'!
policyChanged: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) policy: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179a14; bytecode file offset 0xa762f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
locationReferenceActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) memoryLocationReference: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179a30; bytecode file offset 0xa762f8"
!ASDReferenceImplDialog methodsFor: 'recovered'!
locationInstanceActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) memoryLocationInstance: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d8138; bytecode file offset 0xad4a0c"
!ASDReferenceImplDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeAfterCreate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAdditionalImplInfoAvailable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) updateAdditionalImplInfoWidgets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) initPolicy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) updatePolicy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) updateImplInfoWidgets.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024d728; bytecode file offset 0xb4a000"
!ASDReferenceImplDialog methodsFor: 'recovered'!
memorySegmentActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ASDDisplayStrings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefinedDisplayString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) id.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) memorySegmentID: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202538ac; bytecode file offset 0xb50180"
!ASDReferenceImplDialog methodsFor: 'recovered'!
updateImplInfoWidgets
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplList.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortedConfigurationKeys.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortedConfigurationKeys.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := uiController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplList.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b0e20; bytecode file offset 0xbad71c"
!ASDReferenceImplDialog methodsFor: 'recovered'!
initPolicy
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) widgetPolicy.
    recoveredValue1 := [
    ^self
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) widgetPolicy.
    recoveredValue3 := (recoveredValue2) getString.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := (self) uiController.
    recoveredValue5 := (recoveredValue4) element.
    recoveredValue6 := (recoveredValue5) policyValues.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) widgetPolicy.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) items: (recoveredValue8).
    recoveredValue9 := (self) widgetPolicy.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) setString: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x203144c0; bytecode file offset 0xc10da4"
!ASDReferenceImplDialog methodsFor: 'recovered'!
createSpecialWidgets
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super createSpecialWidgets.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAdditionalImplInfoAvailable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) createAdditionalImplInfoWidgets.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRecord.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAtomicSoftwareComponent.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInterface.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) createAutosarWidgets.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039a8bc; bytecode file offset 0xc971a4"
!ASDReferenceImplDialog methodsFor: 'recovered'!
updateWindowTitle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65715'.
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
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'Impl Ref. Editor for: '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := uiController.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Impl Ref. Editor for: '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'Impl Ref. Editor for: '.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) elementName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := '::'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) element.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClassLabel.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e6aec; bytecode file offset 0xce33f0"
!ASDReferenceImplDialog methodsFor: 'recovered'!
editImplActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGImplementationDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) context.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) uiController.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := (recoveredStack4) mainController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack5 := (recoveredStack5) element.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2) context: (recoveredStack3) mainController: (recoveredStack4) element: (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := ASDImplDialogContainer.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) uiController.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) selection.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) createForImpl: (recoveredStack3) additionalImplInfo: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) setImplDialogContainer: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) promptAtCurrentMousePosition.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            result := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := result.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) implementation.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) selectedConfig: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := uiController.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) selection.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 79] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplList.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := uiController.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) selection.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) setObject: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) updateImplInfoWidgets.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) updateAdditionalImplInfoWidgets.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) updatePolicy.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20408e88; bytecode file offset 0xd05778"
!ASDReferenceImplDialog methodsFor: 'recovered'!
updatePolicy
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPolicy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [
    ^self
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) policy.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := SGExtraImplInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) policyDefault.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPolicy.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) element.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) policyValuesPlusNotSupported: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPolicy.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPolicy.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPolicy.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059f48c; bytecode file offset 0xe9bdf4"
!ASDReferenceImplDialog methodsFor: 'recovered'!
createAutosarWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainFormWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'widgetAutosarFrame'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block28115678Arg1 | 
    | block28115678Value0 block28115678Value1 block28115678Value2 |
    block28115678Value0 := block28115678Arg1.
    block28115678Value1 := block28115678Value0.
    (block28115678Value1) labelString: ('AUTOSAR').
    block28115678Value2 := (block28115678Value0) height: (60).
    block28115678Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'widgetAutosarFrame'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'widgetAutosarForm'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 'widgetAutosarForm'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'policyLabel'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:block2811569cArg1 | 
    | block2811569cValue0 block2811569cValue1 block2811569cValue2 block2811569cValue3 block2811569cValue4 |
    block2811569cValue0 := block2811569cArg1.
    block2811569cValue1 := block2811569cValue0.
    block2811569cValue2 := XmALIGNMENTBEGINNING.
    (block2811569cValue1) alignment: (block2811569cValue2).
    block2811569cValue3 := block2811569cValue0.
    (block2811569cValue3) width: (170).
    block2811569cValue4 := (block2811569cValue0) labelString: ('Policy').
    block2811569cValue4
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'policyLabel'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 'policyComboBox'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:block281156c0Arg1 | 
    | block281156c0Value0 block281156c0Value1 block281156c0Value2 |
    block281156c0Value0 := block281156c0Arg1.
    block281156c0Value1 := block281156c0Value0.
    (block281156c0Value1) height: (22).
    block281156c0Value2 := (block281156c0Value0) editable: (false).
    block281156c0Value2
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := 'policyComboBox'.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := [:recoveredBlock148Arg1 | 
    | recoveredBlock148Value0 recoveredBlock148Value1 recoveredBlock148Value2 recoveredBlock148Value3 recoveredBlock148Value4 recoveredBlock148Value5 recoveredBlock148Value6 recoveredBlock148Value7 recoveredBlock148Value8 recoveredBlock148Value9 recoveredBlock148Value10 recoveredBlock148Value11 recoveredBlock148Value12 recoveredBlock148Value13 |
    recoveredBlock148Value0 := recoveredBlock148Arg1.
    recoveredBlock148Value1 := recoveredBlock148Value0.
    recoveredBlock148Value2 := XmATTACHNONE.
    (recoveredBlock148Value1) bottomAttachment: (recoveredBlock148Value2).
    recoveredBlock148Value3 := recoveredBlock148Value0.
    recoveredBlock148Value4 := XmATTACHWIDGET.
    (recoveredBlock148Value3) topAttachment: (recoveredBlock148Value4).
    recoveredBlock148Value5 := recoveredBlock148Value0.
    recoveredBlock148Value6 := (self) widgetImplFrame.
    (recoveredBlock148Value5) topWidget: (recoveredBlock148Value6).
    recoveredBlock148Value7 := recoveredBlock148Value0.
    (recoveredBlock148Value7) topOffset: (10).
    recoveredBlock148Value8 := recoveredBlock148Value0.
    recoveredBlock148Value9 := XmATTACHFORM.
    (recoveredBlock148Value8) leftAttachment: (recoveredBlock148Value9).
    recoveredBlock148Value10 := recoveredBlock148Value0.
    (recoveredBlock148Value10) leftOffset: (5).
    recoveredBlock148Value11 := recoveredBlock148Value0.
    recoveredBlock148Value12 := XmATTACHFORM.
    (recoveredBlock148Value11) rightAttachment: (recoveredBlock148Value12).
    recoveredBlock148Value13 := (recoveredBlock148Value0) rightOffset: (5).
    recoveredBlock148Value13
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := [:block281156e4Arg1 | 
    | block281156e4Value0 block281156e4Value1 block281156e4Value2 block281156e4Value3 block281156e4Value4 block281156e4Value5 block281156e4Value6 |
    block281156e4Value0 := block281156e4Arg1.
    block281156e4Value1 := block281156e4Value0.
    block281156e4Value2 := XmATTACHFORM.
    (block281156e4Value1) topAttachment: (block281156e4Value2).
    block281156e4Value3 := block281156e4Value0.
    (block281156e4Value3) topOffset: (5).
    block281156e4Value4 := block281156e4Value0.
    block281156e4Value5 := XmATTACHFORM.
    (block281156e4Value4) leftAttachment: (block281156e4Value5).
    block281156e4Value6 := (block281156e4Value0) leftOffset: (5).
    block281156e4Value6
].
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := [:recoveredBlock232Arg1 | 
    | recoveredBlock232Value0 recoveredBlock232Value1 recoveredBlock232Value2 recoveredBlock232Value3 recoveredBlock232Value4 recoveredBlock232Value5 recoveredBlock232Value6 recoveredBlock232Value7 recoveredBlock232Value8 recoveredBlock232Value9 recoveredBlock232Value10 recoveredBlock232Value11 |
    recoveredBlock232Value0 := recoveredBlock232Arg1.
    recoveredBlock232Value1 := recoveredBlock232Value0.
    recoveredBlock232Value2 := XmATTACHFORM.
    (recoveredBlock232Value1) topAttachment: (recoveredBlock232Value2).
    recoveredBlock232Value3 := recoveredBlock232Value0.
    (recoveredBlock232Value3) topOffset: (5).
    recoveredBlock232Value4 := recoveredBlock232Value0.
    recoveredBlock232Value5 := XmATTACHFORM.
    (recoveredBlock232Value4) rightAttachment: (recoveredBlock232Value5).
    recoveredBlock232Value6 := recoveredBlock232Value0.
    (recoveredBlock232Value6) rightOffset: (5).
    recoveredBlock232Value7 := recoveredBlock232Value0.
    recoveredBlock232Value8 := XmATTACHWIDGET.
    (recoveredBlock232Value7) leftAttachment: (recoveredBlock232Value8).
    recoveredBlock232Value9 := recoveredBlock232Value0.
    recoveredBlock232Value10 := recoveredLocal2.
    (recoveredBlock232Value9) leftWidget: (recoveredBlock232Value10).
    recoveredBlock232Value11 := (recoveredBlock232Value0) leftOffset: (5).
    recoveredBlock232Value11
].
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := 'policyChanged:clientData:callData:'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205eee60; bytecode file offset 0xeeb814"
!ASDReferenceImplDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 recoveredBlock15Value6 recoveredBlock15Value7 recoveredBlock15Value8 recoveredBlock15Value9 recoveredBlock15Value10 recoveredBlock15Value11 recoveredBlock15Value12 recoveredBlock15Value13 recoveredBlock15Value14 recoveredBlock15Value15 recoveredBlock15Value16 recoveredBlock15Value17 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    recoveredBlock15Value2 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (recoveredBlock15Value1) mwmInputMode: (recoveredBlock15Value2).
    recoveredBlock15Value3 := recoveredBlock15Value0.
    (recoveredBlock15Value3) title: ('Dialog').
    recoveredBlock15Value4 := recoveredBlock15Value0.
    recoveredBlock15Value5 := MWMDECORALL.
    recoveredBlock15Value6 := MWMDECORMINIMIZE.
    recoveredBlock15Value7 := (recoveredBlock15Value5) | (recoveredBlock15Value6).
    recoveredBlock15Value8 := MWMDECORMAXIMIZE.
    recoveredBlock15Value9 := (recoveredBlock15Value7) | (recoveredBlock15Value8).
    (recoveredBlock15Value4) mwmDecorations: (recoveredBlock15Value9).
    recoveredBlock15Value10 := recoveredBlock15Value0.
    recoveredBlock15Value11 := (self) class.
    recoveredBlock15Value12 := (recoveredBlock15Value11) minSize.
    recoveredBlock15Value13 := (recoveredBlock15Value12) y.
    (recoveredBlock15Value10) height: (recoveredBlock15Value13).
    recoveredBlock15Value14 := (self) class.
    recoveredBlock15Value15 := (recoveredBlock15Value14) minSize.
    recoveredBlock15Value16 := (recoveredBlock15Value15) x.
    recoveredBlock15Value17 := (recoveredBlock15Value0) width: (recoveredBlock15Value16).
    recoveredBlock15Value17
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'aDialogShell1'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := [:block2811b6f0Arg1 | 
    | block2811b6f0Value0 block2811b6f0Value1 block2811b6f0Value2 block2811b6f0Value3 |
    block2811b6f0Value0 := block2811b6f0Arg1.
    block2811b6f0Value1 := block2811b6f0Value0.
    (block2811b6f0Value1) labelString: ('&Cancel').
    block2811b6f0Value2 := block2811b6f0Value0.
    (block2811b6f0Value2) height: (24).
    block2811b6f0Value3 := (block2811b6f0Value0) width: (80).
    block2811b6f0Value3
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'cancelButton'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := [:block2811b714Arg1 | 
    | block2811b714Value0 block2811b714Value1 block2811b714Value2 block2811b714Value3 block2811b714Value4 |
    block2811b714Value0 := ('Kk') == ('Call_55906').
    block2811b714Value1 := block2811b714Arg1.
    block2811b714Value2 := block2811b714Value1.
    (block2811b714Value2) labelString: ('&OK').
    block2811b714Value3 := block2811b714Value1.
    (block2811b714Value3) height: (24).
    block2811b714Value4 := (block2811b714Value1) width: (80).
    block2811b714Value4
].
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'okButton'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := [:recoveredBlock223Arg1 | 
    | recoveredBlock223Value0 recoveredBlock223Value1 recoveredBlock223Value2 |
    recoveredBlock223Value0 := recoveredBlock223Arg1.
    recoveredBlock223Value1 := recoveredLocal3.
    recoveredBlock223Value2 := (recoveredBlock223Value0) workWindow: (recoveredBlock223Value1).
    recoveredBlock223Value2
].
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := [:block2811b738Arg1 | 
    | block2811b738Value0 block2811b738Value1 block2811b738Value2 block2811b738Value3 block2811b738Value4 block2811b738Value5 block2811b738Value6 block2811b738Value7 block2811b738Value8 block2811b738Value9 block2811b738Value10 |
    block2811b738Value0 := block2811b738Arg1.
    block2811b738Value1 := block2811b738Value0.
    block2811b738Value2 := XmATTACHNONE.
    (block2811b738Value1) leftAttachment: (block2811b738Value2).
    block2811b738Value3 := block2811b738Value0.
    block2811b738Value4 := XmATTACHNONE.
    (block2811b738Value3) topAttachment: (block2811b738Value4).
    block2811b738Value5 := block2811b738Value0.
    block2811b738Value6 := XmATTACHFORM.
    (block2811b738Value5) rightAttachment: (block2811b738Value6).
    block2811b738Value7 := block2811b738Value0.
    (block2811b738Value7) rightOffset: (5).
    block2811b738Value8 := block2811b738Value0.
    block2811b738Value9 := XmATTACHFORM.
    (block2811b738Value8) bottomAttachment: (block2811b738Value9).
    block2811b738Value10 := (block2811b738Value0) bottomOffset: (5).
    block2811b738Value10
].
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [:recoveredBlock284Arg1 | 
    | recoveredBlock284Value0 recoveredBlock284Value1 recoveredBlock284Value2 recoveredBlock284Value3 recoveredBlock284Value4 recoveredBlock284Value5 recoveredBlock284Value6 recoveredBlock284Value7 recoveredBlock284Value8 recoveredBlock284Value9 recoveredBlock284Value10 recoveredBlock284Value11 recoveredBlock284Value12 recoveredBlock284Value13 |
    recoveredBlock284Value0 := recoveredBlock284Arg1.
    recoveredBlock284Value1 := recoveredBlock284Value0.
    recoveredBlock284Value2 := XmATTACHNONE.
    (recoveredBlock284Value1) leftAttachment: (recoveredBlock284Value2).
    recoveredBlock284Value3 := recoveredBlock284Value0.
    recoveredBlock284Value4 := XmATTACHNONE.
    (recoveredBlock284Value3) topAttachment: (recoveredBlock284Value4).
    recoveredBlock284Value5 := recoveredBlock284Value0.
    recoveredBlock284Value6 := XmATTACHWIDGET.
    (recoveredBlock284Value5) rightAttachment: (recoveredBlock284Value6).
    recoveredBlock284Value7 := recoveredBlock284Value0.
    recoveredBlock284Value8 := recoveredLocal2.
    (recoveredBlock284Value7) rightWidget: (recoveredBlock284Value8).
    recoveredBlock284Value9 := recoveredBlock284Value0.
    (recoveredBlock284Value9) rightOffset: (5).
    recoveredBlock284Value10 := recoveredBlock284Value0.
    recoveredBlock284Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock284Value10) bottomAttachment: (recoveredBlock284Value11).
    recoveredBlock284Value12 := recoveredLocal2.
    recoveredBlock284Value13 := (recoveredBlock284Value0) bottomWidget: (recoveredBlock284Value12).
    recoveredBlock284Value13
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack2 := XmNresizeCallback.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := 'topShellResize:clientData:callData:'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := 'cancelActivate:clientData:callData:'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack4 := 'okActivate:clientData:callData:'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20603a6c; bytecode file offset 0xf003d0"
!ASDReferenceImplDialog methodsFor: 'recovered'!
updateAdditionalImplInfoWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClassesForInstance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClassesForReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalImplInfo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationInstanceWidget.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationReferenceWidget.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentWidget.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetPolicy.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) setString: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 450.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationInstance.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'call_84090'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLocationReferenceAvailable.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLocationInstanceAvailable.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClass.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryLocationReference.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 175] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := 'call_84090'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 209] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUndefString.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 253] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUndefString.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 240] ifFalse: [recoveredPC := 253].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWith: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationInstanceWidget.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerOfElementIsModifiable.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := (recoveredStack2) isLocationInstanceAvailable.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationReferenceWidget.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) ownerOfElementIsModifiable.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack2 := (recoveredStack2) uiController.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := (recoveredStack2) isLocationReferenceAvailable.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) & (recoveredStack2).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationInstanceWidget.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 292] ifFalse: [recoveredPC := 318].
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationInstanceWidget.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) visibleItemCount: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationInstanceWidget.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationReferenceWidget.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack0 := (recoveredStack0) sensitive.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 326] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationReferenceWidget.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) visibleItemCount: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack0 := (recoveredStack0) locationReferenceWidget.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) getUniqueCaseSensitiveString.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            (recoveredStack0) setString: (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegments.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentID.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock363Value0 recoveredBlock363Value1 recoveredBlock363Value2 recoveredBlock363Value3 recoveredBlock363Value4 recoveredBlock363Value5 recoveredBlock363Value6 |
    recoveredBlock363Value0 := recoveredLocal8.
    recoveredBlock363Value1 := (recoveredBlock363Value0) memorySegmentID.
    recoveredBlock363Value2 := (recoveredBlock363Value1) asString.
    recoveredBlock363Value3 := (recoveredBlock363Value2) , (' ').
    recoveredBlock363Value4 := ASDDisplayStrings.
    recoveredBlock363Value5 := (recoveredBlock363Value4) undefinedDisplayString.
    recoveredBlock363Value6 := (recoveredBlock363Value3) , (recoveredBlock363Value5).
    recoveredBlock363Value6
].
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack0 := (recoveredStack0) uiController.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentPlatform.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentsGUIIncludingUndefined: (recoveredStack1).
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack0 := (recoveredStack0) memorySegmentWidget.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack1) visibleItemCount: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack1) items: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack1) setObject: (recoveredStack2).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) uiController.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := (recoveredStack1) memorySegmentSensitive.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0) sensitive: (recoveredStack1).
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack0 := 'hw'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack1 := 'call_79001'.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2067c0c8; bytecode file offset 0xf78af0"
!ASDReferenceImplDialog methodsFor: 'recovered'!
createAdditionalImplInfoWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainFormWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'widgetImplFrame'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block281288c0Arg1 | 
    | block281288c0Value0 block281288c0Value1 |
    block281288c0Value0 := block281288c0Arg1.
    block281288c0Value1 := (block281288c0Value0) labelString: ('Implementation of Reference').
    block281288c0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFrame: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'widgetImplFrame'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'widgetImplForm'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForm: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 'widgetImplForm'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'labelImpl'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := [:block281288e4Arg1 | 
    | block281288e4Value0 block281288e4Value1 block281288e4Value2 block281288e4Value3 block281288e4Value4 block281288e4Value5 |
    block281288e4Value0 := block281288e4Arg1.
    block281288e4Value1 := block281288e4Value0.
    (block281288e4Value1) height: (22).
    block281288e4Value2 := block281288e4Value0.
    (block281288e4Value2) width: (170).
    block281288e4Value3 := block281288e4Value0.
    block281288e4Value4 := XmALIGNMENTBEGINNING.
    (block281288e4Value3) alignment: (block281288e4Value4).
    block281288e4Value5 := (block281288e4Value0) labelString: ('Implementation of Instance').
    block281288e4Value5
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 'labelImpl'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := 'impl'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := [:recoveredBlock112Arg1 | 
    | recoveredBlock112Value0 recoveredBlock112Value1 recoveredBlock112Value2 |
    recoveredBlock112Value0 := recoveredBlock112Arg1.
    recoveredBlock112Value1 := (self) getImplNameBlock.
    recoveredBlock112Value2 := (recoveredBlock112Value0) printBlock: (recoveredBlock112Value1).
    recoveredBlock112Value2
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) createObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'impl'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'labelLocationInstance'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := [:block28128908Arg1 | 
    | block28128908Value0 block28128908Value1 block28128908Value2 block28128908Value3 block28128908Value4 block28128908Value5 |
    block28128908Value0 := block28128908Arg1.
    block28128908Value1 := block28128908Value0.
    (block28128908Value1) height: (22).
    block28128908Value2 := block28128908Value0.
    (block28128908Value2) width: (170).
    block28128908Value3 := block28128908Value0.
    block28128908Value4 := XmALIGNMENTBEGINNING.
    (block28128908Value3) alignment: (block28128908Value4).
    block28128908Value5 := (block28128908Value0) labelString: ('Memory Location of Instance').
    block28128908Value5
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := 'labelLocationInstance'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := 'locationInstance'.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := [:block2812892cArg1 | 
    | block2812892cValue0 block2812892cValue1 block2812892cValue2 |
    block2812892cValue0 := block2812892cArg1.
    block2812892cValue1 := block2812892cValue0.
    (block2812892cValue1) editable: (false).
    block2812892cValue2 := (block2812892cValue0) visibleItemCount: (7).
    block2812892cValue2
].
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := 'locationInstance'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := 'labelLocationReference'.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:block28128950Arg1 | 
    | block28128950Value0 block28128950Value1 block28128950Value2 block28128950Value3 block28128950Value4 block28128950Value5 |
    block28128950Value0 := block28128950Arg1.
    block28128950Value1 := block28128950Value0.
    (block28128950Value1) height: (22).
    block28128950Value2 := block28128950Value0.
    (block28128950Value2) width: (170).
    block28128950Value3 := block28128950Value0.
    block28128950Value4 := XmALIGNMENTBEGINNING.
    (block28128950Value3) alignment: (block28128950Value4).
    block28128950Value5 := (block28128950Value0) labelString: ('Memory Location of Reference').
    block28128950Value5
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := 'labelLocationReference'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := 'locationReference'.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := [:block28128974Arg1 | 
    | block28128974Value0 block28128974Value1 block28128974Value2 |
    block28128974Value0 := block28128974Arg1.
    block28128974Value1 := block28128974Value0.
    (block28128974Value1) editable: (false).
    block28128974Value2 := (block28128974Value0) visibleItemCount: (7).
    block28128974Value2
].
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := 'locationReference'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := 'memorySegmentLabel'.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := [:block28128998Arg1 | 
    | block28128998Value0 block28128998Value1 block28128998Value2 block28128998Value3 block28128998Value4 block28128998Value5 block28128998Value6 |
    block28128998Value0 := ('Kra') == ('Call_69763').
    block28128998Value1 := block28128998Arg1.
    block28128998Value2 := block28128998Value1.
    (block28128998Value2) height: (22).
    block28128998Value3 := block28128998Value1.
    (block28128998Value3) width: (170).
    block28128998Value4 := block28128998Value1.
    block28128998Value5 := XmALIGNMENTBEGINNING.
    (block28128998Value4) alignment: (block28128998Value5).
    block28128998Value6 := block28128998Value1.
    (block28128998Value6) labelString: ('Memory Segment').
    block28128998Value1
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := (recoveredStack0) createLabel: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredLocal11 := recoveredStack0.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := 'memorySegmentLabel'.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := 'memorySegment'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := [:block281289bcArg1 | 
    | block281289bcStack0 block281289bcStack1 block281289bcStack2 block281289bcStack3 block281289bcStack4 block281289bcPC block281289bcStep block281289bcDone block281289bcResult |
    block281289bcStack0 := self.
    block281289bcPC := 4.
    block281289bcDone := false.
    [block281289bcDone not] whileTrue: [
        block281289bcStep := block281289bcPC.
        block281289bcStep = 4 ifTrue: [
            block281289bcStack1 := block281289bcArg1.
            block281289bcPC := 5.
        ].
        block281289bcStep = 5 ifTrue: [
            block281289bcStack2 := block281289bcStack1.
            block281289bcPC := 6.
        ].
        block281289bcStep = 6 ifTrue: [
            block281289bcStack3 := [:block281289e0Arg1 | 
    | block281289e0Value0 block281289e0Value1 |
    block281289e0Value0 := block281289e0Arg1.
    block281289e0Value1 := (block281289e0Value0) label.
    block281289e0Value1
].
            block281289bcPC := 8.
        ].
        block281289bcStep = 8 ifTrue: [
            block281289bcPC := 16.
        ].
        block281289bcStep = 16 ifTrue: [
            (block281289bcStack2) printBlock: (block281289bcStack3).
            block281289bcStack2 := block281289bcStack1.
            block281289bcPC := 19.
        ].
        block281289bcStep = 19 ifTrue: [
            block281289bcStack3 := 22.
            block281289bcPC := 21.
        ].
        block281289bcStep = 21 ifTrue: [
            (block281289bcStack2) height: (block281289bcStack3).
            block281289bcPC := 23.
        ].
        block281289bcStep = 23 ifTrue: [
            block281289bcResult := block281289bcStack1.
            block281289bcDone := true.
        ].
    ].
    block281289bcResult
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasObjectComboBox: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack1 := 'memorySegment'.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := 'editImpl'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack2 := [:recoveredBlock426Arg1 | 
    | recoveredBlock426Value0 recoveredBlock426Value1 recoveredBlock426Value2 recoveredBlock426Value3 recoveredBlock426Value4 recoveredBlock426Value5 recoveredBlock426Value6 recoveredBlock426Value7 recoveredBlock426Value8 |
    recoveredBlock426Value0 := recoveredBlock426Arg1.
    recoveredBlock426Value1 := recoveredBlock426Value0.
    recoveredBlock426Value2 := XmICON.
    (recoveredBlock426Value1) labelType: (recoveredBlock426Value2).
    recoveredBlock426Value3 := recoveredBlock426Value0.
    recoveredBlock426Value4 := (self) resourceManager.
    recoveredBlock426Value5 := (recoveredBlock426Value4) returnIconWithName: ('GeneralEditImplementation').
    (recoveredBlock426Value3) labelIcon: (recoveredBlock426Value5).
    recoveredBlock426Value6 := recoveredBlock426Value0.
    (recoveredBlock426Value6) height: (22).
    recoveredBlock426Value7 := recoveredBlock426Value0.
    (recoveredBlock426Value7) width: (22).
    recoveredBlock426Value8 := (recoveredBlock426Value0) recomputeSize: (false).
    recoveredBlock426Value8
].
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack0 := (recoveredStack0) createPushButton: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetDictionary.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := 'editImpl'.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack1 := [:block28128a04Arg1 | 
    | block28128a04Value0 block28128a04Value1 block28128a04Value2 block28128a04Value3 block28128a04Value4 block28128a04Value5 block28128a04Value6 block28128a04Value7 block28128a04Value8 block28128a04Value9 block28128a04Value10 block28128a04Value11 |
    block28128a04Value0 := block28128a04Arg1.
    block28128a04Value1 := block28128a04Value0.
    block28128a04Value2 := XmATTACHNONE.
    (block28128a04Value1) bottomAttachment: (block28128a04Value2).
    block28128a04Value3 := block28128a04Value0.
    block28128a04Value4 := XmATTACHFORM.
    (block28128a04Value3) topAttachment: (block28128a04Value4).
    block28128a04Value5 := block28128a04Value0.
    (block28128a04Value5) topOffset: (5).
    block28128a04Value6 := block28128a04Value0.
    block28128a04Value7 := XmATTACHFORM.
    (block28128a04Value6) leftAttachment: (block28128a04Value7).
    block28128a04Value8 := block28128a04Value0.
    (block28128a04Value8) leftOffset: (5).
    block28128a04Value9 := block28128a04Value0.
    block28128a04Value10 := XmATTACHFORM.
    (block28128a04Value9) rightAttachment: (block28128a04Value10).
    block28128a04Value11 := (block28128a04Value0) rightOffset: (5).
    block28128a04Value11
].
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack1 := [:block28128a28Arg1 | 
    | block28128a28Value0 block28128a28Value1 block28128a28Value2 block28128a28Value3 block28128a28Value4 block28128a28Value5 block28128a28Value6 block28128a28Value7 block28128a28Value8 |
    block28128a28Value0 := block28128a28Arg1.
    block28128a28Value1 := block28128a28Value0.
    block28128a28Value2 := XmATTACHFORM.
    (block28128a28Value1) topAttachment: (block28128a28Value2).
    block28128a28Value3 := block28128a28Value0.
    (block28128a28Value3) topOffset: (0).
    block28128a28Value4 := block28128a28Value0.
    block28128a28Value5 := XmATTACHFORM.
    (block28128a28Value4) rightAttachment: (block28128a28Value5).
    block28128a28Value6 := block28128a28Value0.
    (block28128a28Value6) rightOffset: (5).
    block28128a28Value7 := block28128a28Value0.
    block28128a28Value8 := XmATTACHNONE.
    (block28128a28Value7) leftAttachment: (block28128a28Value8).
    block28128a28Value0
].
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack1 := [:block28128a4cArg1 | 
    | block28128a4cValue0 block28128a4cValue1 block28128a4cValue2 block28128a4cValue3 block28128a4cValue4 block28128a4cValue5 block28128a4cValue6 block28128a4cValue7 block28128a4cValue8 block28128a4cValue9 |
    block28128a4cValue0 := block28128a4cArg1.
    block28128a4cValue1 := block28128a4cValue0.
    block28128a4cValue2 := XmATTACHFORM.
    (block28128a4cValue1) topAttachment: (block28128a4cValue2).
    block28128a4cValue3 := block28128a4cValue0.
    (block28128a4cValue3) topOffset: (0).
    block28128a4cValue4 := block28128a4cValue0.
    block28128a4cValue5 := XmATTACHFORM.
    (block28128a4cValue4) leftAttachment: (block28128a4cValue5).
    block28128a4cValue6 := block28128a4cValue0.
    (block28128a4cValue6) leftOffset: (5).
    block28128a4cValue7 := block28128a4cValue0.
    block28128a4cValue8 := XmATTACHNONE.
    (block28128a4cValue7) rightAttachment: (block28128a4cValue8).
    block28128a4cValue9 := block28128a4cValue0.
    (block28128a4cValue9) rightOffset: (0).
    block28128a4cValue0
].
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := [:recoveredBlock688Arg1 | 
    | recoveredBlock688Value0 recoveredBlock688Value1 recoveredBlock688Value2 recoveredBlock688Value3 recoveredBlock688Value4 recoveredBlock688Value5 recoveredBlock688Value6 recoveredBlock688Value7 recoveredBlock688Value8 recoveredBlock688Value9 recoveredBlock688Value10 recoveredBlock688Value11 recoveredBlock688Value12 recoveredBlock688Value13 |
    recoveredBlock688Value0 := recoveredBlock688Arg1.
    recoveredBlock688Value1 := recoveredBlock688Value0.
    recoveredBlock688Value2 := XmATTACHFORM.
    (recoveredBlock688Value1) topAttachment: (recoveredBlock688Value2).
    recoveredBlock688Value3 := recoveredBlock688Value0.
    (recoveredBlock688Value3) topOffset: (0).
    recoveredBlock688Value4 := recoveredBlock688Value0.
    recoveredBlock688Value5 := XmATTACHWIDGET.
    (recoveredBlock688Value4) rightAttachment: (recoveredBlock688Value5).
    recoveredBlock688Value6 := recoveredBlock688Value0.
    recoveredBlock688Value7 := recoveredLocal3.
    (recoveredBlock688Value6) rightWidget: (recoveredBlock688Value7).
    recoveredBlock688Value8 := recoveredBlock688Value0.
    (recoveredBlock688Value8) rightOffset: (5).
    recoveredBlock688Value9 := recoveredBlock688Value0.
    recoveredBlock688Value10 := XmATTACHWIDGET.
    (recoveredBlock688Value9) leftAttachment: (recoveredBlock688Value10).
    recoveredBlock688Value11 := recoveredBlock688Value0.
    recoveredBlock688Value12 := recoveredLocal7.
    (recoveredBlock688Value11) leftWidget: (recoveredBlock688Value12).
    recoveredBlock688Value13 := recoveredBlock688Value0.
    (recoveredBlock688Value13) leftOffset: (5).
    recoveredBlock688Value0
].
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack1 := [:recoveredBlock764Arg1 | 
    | recoveredBlock764Value0 recoveredBlock764Value1 recoveredBlock764Value2 recoveredBlock764Value3 recoveredBlock764Value4 recoveredBlock764Value5 recoveredBlock764Value6 recoveredBlock764Value7 recoveredBlock764Value8 recoveredBlock764Value9 recoveredBlock764Value10 recoveredBlock764Value11 |
    recoveredBlock764Value0 := recoveredBlock764Arg1.
    recoveredBlock764Value1 := recoveredBlock764Value0.
    recoveredBlock764Value2 := XmATTACHWIDGET.
    (recoveredBlock764Value1) topAttachment: (recoveredBlock764Value2).
    recoveredBlock764Value3 := recoveredBlock764Value0.
    recoveredBlock764Value4 := recoveredLocal6.
    (recoveredBlock764Value3) topWidget: (recoveredBlock764Value4).
    recoveredBlock764Value5 := recoveredBlock764Value0.
    (recoveredBlock764Value5) topOffset: (5).
    recoveredBlock764Value6 := recoveredBlock764Value0.
    recoveredBlock764Value7 := XmATTACHFORM.
    (recoveredBlock764Value6) leftAttachment: (recoveredBlock764Value7).
    recoveredBlock764Value8 := recoveredBlock764Value0.
    (recoveredBlock764Value8) leftOffset: (5).
    recoveredBlock764Value9 := recoveredBlock764Value0.
    recoveredBlock764Value10 := XmATTACHNONE.
    (recoveredBlock764Value9) rightAttachment: (recoveredBlock764Value10).
    recoveredBlock764Value11 := recoveredBlock764Value0.
    (recoveredBlock764Value11) rightOffset: (0).
    recoveredBlock764Value0
].
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 829.
        ].
        recoveredStep = 829 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack1 := [:recoveredBlock832Arg1 | 
    | recoveredBlock832Value0 recoveredBlock832Value1 recoveredBlock832Value2 recoveredBlock832Value3 recoveredBlock832Value4 recoveredBlock832Value5 recoveredBlock832Value6 recoveredBlock832Value7 recoveredBlock832Value8 recoveredBlock832Value9 recoveredBlock832Value10 recoveredBlock832Value11 recoveredBlock832Value12 recoveredBlock832Value13 |
    recoveredBlock832Value0 := recoveredBlock832Arg1.
    recoveredBlock832Value1 := recoveredBlock832Value0.
    recoveredBlock832Value2 := XmATTACHWIDGET.
    (recoveredBlock832Value1) topAttachment: (recoveredBlock832Value2).
    recoveredBlock832Value3 := recoveredBlock832Value0.
    recoveredBlock832Value4 := recoveredLocal6.
    (recoveredBlock832Value3) topWidget: (recoveredBlock832Value4).
    recoveredBlock832Value5 := recoveredBlock832Value0.
    (recoveredBlock832Value5) topOffset: (5).
    recoveredBlock832Value6 := recoveredBlock832Value0.
    recoveredBlock832Value7 := XmATTACHFORM.
    (recoveredBlock832Value6) rightAttachment: (recoveredBlock832Value7).
    recoveredBlock832Value8 := recoveredBlock832Value0.
    (recoveredBlock832Value8) rightOffset: (5).
    recoveredBlock832Value9 := recoveredBlock832Value0.
    recoveredBlock832Value10 := XmATTACHWIDGET.
    (recoveredBlock832Value9) leftAttachment: (recoveredBlock832Value10).
    recoveredBlock832Value11 := recoveredBlock832Value0.
    recoveredBlock832Value12 := recoveredLocal9.
    (recoveredBlock832Value11) leftWidget: (recoveredBlock832Value12).
    recoveredBlock832Value13 := recoveredBlock832Value0.
    (recoveredBlock832Value13) leftOffset: (5).
    recoveredBlock832Value0
].
            recoveredPC := 900.
        ].
        recoveredStep = 900 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 905.
        ].
        recoveredStep = 905 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 908.
        ].
        recoveredStep = 908 ifTrue: [
            recoveredStack1 := [:recoveredBlock908Arg1 | 
    | recoveredBlock908Value0 recoveredBlock908Value1 recoveredBlock908Value2 recoveredBlock908Value3 recoveredBlock908Value4 recoveredBlock908Value5 recoveredBlock908Value6 recoveredBlock908Value7 recoveredBlock908Value8 recoveredBlock908Value9 recoveredBlock908Value10 recoveredBlock908Value11 |
    recoveredBlock908Value0 := recoveredBlock908Arg1.
    recoveredBlock908Value1 := recoveredBlock908Value0.
    recoveredBlock908Value2 := XmATTACHWIDGET.
    (recoveredBlock908Value1) topAttachment: (recoveredBlock908Value2).
    recoveredBlock908Value3 := recoveredBlock908Value0.
    recoveredBlock908Value4 := recoveredLocal8.
    (recoveredBlock908Value3) topWidget: (recoveredBlock908Value4).
    recoveredBlock908Value5 := recoveredBlock908Value0.
    (recoveredBlock908Value5) topOffset: (5).
    recoveredBlock908Value6 := recoveredBlock908Value0.
    recoveredBlock908Value7 := XmATTACHFORM.
    (recoveredBlock908Value6) leftAttachment: (recoveredBlock908Value7).
    recoveredBlock908Value8 := recoveredBlock908Value0.
    (recoveredBlock908Value8) leftOffset: (5).
    recoveredBlock908Value9 := recoveredBlock908Value0.
    recoveredBlock908Value10 := XmATTACHNONE.
    (recoveredBlock908Value9) rightAttachment: (recoveredBlock908Value10).
    recoveredBlock908Value11 := recoveredBlock908Value0.
    (recoveredBlock908Value11) rightOffset: (0).
    recoveredBlock908Value0
].
            recoveredPC := 968.
        ].
        recoveredStep = 968 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 973.
        ].
        recoveredStep = 973 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 976.
        ].
        recoveredStep = 976 ifTrue: [
            recoveredStack1 := [:recoveredBlock976Arg1 | 
    | recoveredBlock976Value0 recoveredBlock976Value1 recoveredBlock976Value2 recoveredBlock976Value3 recoveredBlock976Value4 recoveredBlock976Value5 recoveredBlock976Value6 recoveredBlock976Value7 recoveredBlock976Value8 recoveredBlock976Value9 recoveredBlock976Value10 recoveredBlock976Value11 recoveredBlock976Value12 recoveredBlock976Value13 |
    recoveredBlock976Value0 := recoveredBlock976Arg1.
    recoveredBlock976Value1 := recoveredBlock976Value0.
    recoveredBlock976Value2 := XmATTACHWIDGET.
    (recoveredBlock976Value1) topAttachment: (recoveredBlock976Value2).
    recoveredBlock976Value3 := recoveredBlock976Value0.
    recoveredBlock976Value4 := recoveredLocal8.
    (recoveredBlock976Value3) topWidget: (recoveredBlock976Value4).
    recoveredBlock976Value5 := recoveredBlock976Value0.
    (recoveredBlock976Value5) topOffset: (5).
    recoveredBlock976Value6 := recoveredBlock976Value0.
    recoveredBlock976Value7 := XmATTACHFORM.
    (recoveredBlock976Value6) rightAttachment: (recoveredBlock976Value7).
    recoveredBlock976Value8 := recoveredBlock976Value0.
    (recoveredBlock976Value8) rightOffset: (5).
    recoveredBlock976Value9 := recoveredBlock976Value0.
    recoveredBlock976Value10 := XmATTACHWIDGET.
    (recoveredBlock976Value9) leftAttachment: (recoveredBlock976Value10).
    recoveredBlock976Value11 := recoveredBlock976Value0.
    recoveredBlock976Value12 := recoveredLocal5.
    (recoveredBlock976Value11) leftWidget: (recoveredBlock976Value12).
    recoveredBlock976Value13 := recoveredBlock976Value0.
    (recoveredBlock976Value13) leftOffset: (5).
    recoveredBlock976Value0
].
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack0 := recoveredLocal11.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            recoveredStack1 := [:recoveredBlock1052Arg1 | 
    | recoveredBlock1052Value0 recoveredBlock1052Value1 recoveredBlock1052Value2 recoveredBlock1052Value3 recoveredBlock1052Value4 recoveredBlock1052Value5 recoveredBlock1052Value6 recoveredBlock1052Value7 recoveredBlock1052Value8 recoveredBlock1052Value9 recoveredBlock1052Value10 recoveredBlock1052Value11 |
    recoveredBlock1052Value0 := recoveredBlock1052Arg1.
    recoveredBlock1052Value1 := recoveredBlock1052Value0.
    recoveredBlock1052Value2 := XmATTACHWIDGET.
    (recoveredBlock1052Value1) topAttachment: (recoveredBlock1052Value2).
    recoveredBlock1052Value3 := recoveredBlock1052Value0.
    recoveredBlock1052Value4 := recoveredLocal4.
    (recoveredBlock1052Value3) topWidget: (recoveredBlock1052Value4).
    recoveredBlock1052Value5 := recoveredBlock1052Value0.
    (recoveredBlock1052Value5) topOffset: (5).
    recoveredBlock1052Value6 := recoveredBlock1052Value0.
    recoveredBlock1052Value7 := XmATTACHFORM.
    (recoveredBlock1052Value6) leftAttachment: (recoveredBlock1052Value7).
    recoveredBlock1052Value8 := recoveredBlock1052Value0.
    (recoveredBlock1052Value8) leftOffset: (5).
    recoveredBlock1052Value9 := recoveredBlock1052Value0.
    recoveredBlock1052Value10 := XmATTACHNONE.
    (recoveredBlock1052Value9) rightAttachment: (recoveredBlock1052Value10).
    recoveredBlock1052Value11 := recoveredBlock1052Value0.
    (recoveredBlock1052Value11) rightOffset: (0).
    recoveredBlock1052Value0
].
            recoveredPC := 1112.
        ].
        recoveredStep = 1112 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1117.
        ].
        recoveredStep = 1117 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1120.
        ].
        recoveredStep = 1120 ifTrue: [
            recoveredStack1 := [:recoveredBlock1120Arg1 | 
    | recoveredBlock1120Value0 recoveredBlock1120Value1 recoveredBlock1120Value2 recoveredBlock1120Value3 recoveredBlock1120Value4 recoveredBlock1120Value5 recoveredBlock1120Value6 recoveredBlock1120Value7 recoveredBlock1120Value8 recoveredBlock1120Value9 recoveredBlock1120Value10 recoveredBlock1120Value11 recoveredBlock1120Value12 recoveredBlock1120Value13 recoveredBlock1120Value14 recoveredBlock1120Value15 recoveredBlock1120Value16 |
    recoveredBlock1120Value0 := recoveredBlock1120Arg1.
    recoveredBlock1120Value1 := recoveredBlock1120Value0.
    recoveredBlock1120Value2 := XmATTACHWIDGET.
    (recoveredBlock1120Value1) topAttachment: (recoveredBlock1120Value2).
    recoveredBlock1120Value3 := recoveredBlock1120Value0.
    recoveredBlock1120Value4 := recoveredLocal4.
    (recoveredBlock1120Value3) topWidget: (recoveredBlock1120Value4).
    recoveredBlock1120Value5 := recoveredBlock1120Value0.
    (recoveredBlock1120Value5) topOffset: (5).
    recoveredBlock1120Value6 := recoveredBlock1120Value0.
    recoveredBlock1120Value7 := XmATTACHNONE.
    (recoveredBlock1120Value6) bottomAttachment: (recoveredBlock1120Value7).
    recoveredBlock1120Value8 := recoveredBlock1120Value0.
    (recoveredBlock1120Value8) bottomOffset: (5).
    recoveredBlock1120Value9 := recoveredBlock1120Value0.
    recoveredBlock1120Value10 := XmATTACHFORM.
    (recoveredBlock1120Value9) rightAttachment: (recoveredBlock1120Value10).
    recoveredBlock1120Value11 := recoveredBlock1120Value0.
    (recoveredBlock1120Value11) rightOffset: (5).
    recoveredBlock1120Value12 := recoveredBlock1120Value0.
    recoveredBlock1120Value13 := XmATTACHWIDGET.
    (recoveredBlock1120Value12) leftAttachment: (recoveredBlock1120Value13).
    recoveredBlock1120Value14 := recoveredBlock1120Value0.
    recoveredBlock1120Value15 := recoveredLocal11.
    (recoveredBlock1120Value14) leftWidget: (recoveredBlock1120Value15).
    recoveredBlock1120Value16 := recoveredBlock1120Value0.
    (recoveredBlock1120Value16) leftOffset: (5).
    recoveredBlock1120Value0
].
            recoveredPC := 1202.
        ].
        recoveredStep = 1202 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 1207.
        ].
        recoveredStep = 1207 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 1210.
        ].
        recoveredStep = 1210 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1211.
        ].
        recoveredStep = 1211 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1214.
        ].
        recoveredStep = 1214 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1215.
        ].
        recoveredStep = 1215 ifTrue: [
            recoveredStack4 := 'locationInstanceActivate:clientData:callData:'.
            recoveredPC := 1218.
        ].
        recoveredStep = 1218 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1219.
        ].
        recoveredStep = 1219 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1223.
        ].
        recoveredStep = 1223 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1226.
        ].
        recoveredStep = 1226 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1227.
        ].
        recoveredStep = 1227 ifTrue: [
            recoveredStack3 := 'locationInstanceActivate:clientData:callData:'.
            recoveredPC := 1230.
        ].
        recoveredStep = 1230 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1231.
        ].
        recoveredStep = 1231 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1235.
        ].
        recoveredStep = 1235 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 1238.
        ].
        recoveredStep = 1238 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1242.
        ].
        recoveredStep = 1242 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1243.
        ].
        recoveredStep = 1243 ifTrue: [
            recoveredStack3 := 'implActivate:clientData:callData:'.
            recoveredPC := 1246.
        ].
        recoveredStep = 1246 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1247.
        ].
        recoveredStep = 1247 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1251.
        ].
        recoveredStep = 1251 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 1254.
        ].
        recoveredStep = 1254 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 1255.
        ].
        recoveredStep = 1255 ifTrue: [
            recoveredStack2 := XmNlosingFocusCallback.
            recoveredPC := 1258.
        ].
        recoveredStep = 1258 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1259.
        ].
        recoveredStep = 1259 ifTrue: [
            recoveredStack4 := 'locationReferenceActivate:clientData:callData:'.
            recoveredPC := 1262.
        ].
        recoveredStep = 1262 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1263.
        ].
        recoveredStep = 1263 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1267.
        ].
        recoveredStep = 1267 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1270.
        ].
        recoveredStep = 1270 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1271.
        ].
        recoveredStep = 1271 ifTrue: [
            recoveredStack3 := 'locationReferenceActivate:clientData:callData:'.
            recoveredPC := 1274.
        ].
        recoveredStep = 1274 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1275.
        ].
        recoveredStep = 1275 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1279.
        ].
        recoveredStep = 1279 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 1282.
        ].
        recoveredStep = 1282 ifTrue: [
            recoveredStack1 := XmNsingleSelectionCallback.
            recoveredPC := 1286.
        ].
        recoveredStep = 1286 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1287.
        ].
        recoveredStep = 1287 ifTrue: [
            recoveredStack3 := 'memorySegmentActivate:clientData:callData:'.
            recoveredPC := 1290.
        ].
        recoveredStep = 1290 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1291.
        ].
        recoveredStep = 1291 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1295.
        ].
        recoveredStep = 1295 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 1298.
        ].
        recoveredStep = 1298 ifTrue: [
            recoveredStack1 := XmNactivateCallback.
            recoveredPC := 1302.
        ].
        recoveredStep = 1302 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 1303.
        ].
        recoveredStep = 1303 ifTrue: [
            recoveredStack3 := 'editImplActivate:clientData:callData:'.
            recoveredPC := 1306.
        ].
        recoveredStep = 1306 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 1307.
        ].
        recoveredStep = 1307 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 1311.
        ].
        recoveredStep = 1311 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 1312.
        ].
        recoveredStep = 1312 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

