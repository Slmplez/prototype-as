"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006484; bytecode file offset 0x902de8"
!RBObjectInformationView methodsFor: 'recovered'!
aHelpPushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x20046f5c; bytecode file offset 0x9451f8"
!RBObjectInformationView methodsFor: 'recovered'!
widgetTable
    | recoveredValue0 |
    recoveredValue0 := (self) widgetAt: ('anEnhancedTableList1').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005b0a0; bytecode file offset 0x957a6c"
!RBObjectInformationView methodsFor: 'recovered'!
aOkPushButtonActivate: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) close.
    ^self
! !

"ASDBase.ic method 0x2008bd2c; bytecode file offset 0x9885ec"
!RBObjectInformationView methodsFor: 'recovered'!
items
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := infoDict.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := (recoveredValue1) asSortedCollection.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ad16c; bytecode file offset 0x9a9a20"
!RBObjectInformationView methodsFor: 'recovered'!
objectAssociation: recoveredArg1 infoDict: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    objectAssociation := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    infoDict := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200c6148; bytecode file offset 0x9c2bec"
!RBObjectInformationView methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    description := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6b44; bytecode file offset 0x9c3470"
!RBObjectInformationView methodsFor: 'recovered'!
iconName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iconName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dd8c0; bytecode file offset 0x9da19c"
!RBObjectInformationView methodsFor: 'recovered'!
columnAttribute: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) items.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) itemPosition.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue3).
    (recoveredValue0) value: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20102440; bytecode file offset 0x9fed00"
!RBObjectInformationView methodsFor: 'recovered'!
mainWindowResize: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealized.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) adjustWidgetTableColumnsWidth.
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

"ASDBase.ic method 0x201116c0; bytecode file offset 0xa0df84"
!RBObjectInformationView methodsFor: 'recovered'!
columnValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := infoDict.
    recoveredValue2 := (self) items.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue3) itemPosition.
    recoveredValue5 := (recoveredValue2) at: (recoveredValue4).
    recoveredValue6 := (recoveredValue1) at: (recoveredValue5).
    (recoveredValue0) value: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20157c4c; bytecode file offset 0xa54528"
!RBObjectInformationView methodsFor: 'recovered'!
aText1KeyPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20157c64; bytecode file offset 0xa54528"
!RBObjectInformationView methodsFor: 'recovered'!
anEnhancedTableList1KeyPress: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) character.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Character.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 13.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cf82c; bytecode file offset 0xacc0f4"
!RBObjectInformationView methodsFor: 'recovered'!
aDrawingArea1Expose: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := iconName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) window.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := CgGC.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) default.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := iconName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := (recoveredStack5) returnIcon16WithName: (recoveredStack6).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) drawIcon: (recoveredStack2) x: (recoveredStack3) y: (recoveredStack4) icon: (recoveredStack5).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202735f8; bytecode file offset 0xb6fed0"
!RBObjectInformationView methodsFor: 'recovered'!
adjustWidgetTableColumnsWidth
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) widgetTable.
    recoveredValue1 := (recoveredValue0) parent.
    recoveredValue2 := (recoveredValue1) width.
    recoveredValue3 := (recoveredValue2) - (16).
    recoveredValue4 := OSScrollBar.
    recoveredValue5 := (recoveredValue4) vBarExtent.
    recoveredValue6 := (recoveredValue5) x.
    recoveredValue7 := (recoveredValue3) - (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) widgetTable.
    recoveredValue9 := (recoveredValue8) columns.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) at: (2).
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) at: (1).
    recoveredValue15 := (recoveredValue14) width.
    recoveredValue16 := (recoveredValue12) - (recoveredValue15).
    (recoveredValue11) width: (recoveredValue16).
    ^self
! !

"ASDBase.ic method 0x202ed5d8; bytecode file offset 0xbe9ebc"
!RBObjectInformationView methodsFor: 'recovered'!
initializeColumns
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (2).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := SCKey.
    recoveredValue5 := (self) createColumn: (recoveredValue4) value: ('columnAttribute:clientData:callData:') width: (100).
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := SCValue.
    recoveredValue7 := (self) createColumn: (recoveredValue6) value: ('columnValue:clientData:callData:') width: (300).
    (recoveredValue2) add: (recoveredValue7).
    recoveredValue8 := (self) widgetTable.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue9) columns: (recoveredValue10).
    recoveredValue11 := (self) items.
    (recoveredValue8) items: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x202f90b8; bytecode file offset 0xbf59a0"
!RBObjectInformationView methodsFor: 'recovered'!
createColumn: recoveredArg1 value: recoveredArg2 width: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := EwTableColumn.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) editable: (true).
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) etched: (true).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) heading: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) width: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    (recoveredValue8) resizable: (true).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) showInUse: (false).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := XmALIGNMENTBEGINNING.
    (recoveredValue10) horizontalAlignment: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := XmALIGNMENTBEGINNING.
    (recoveredValue12) horizontalHeadingAlignment: (recoveredValue13).
    recoveredLocal1 := recoveredValue1.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := XmNcellValueCallback.
    recoveredValue16 := recoveredArg2.
    (recoveredValue14) addCallback: (recoveredValue15) receiver: (self) selector: (recoveredValue16) clientData: (nil).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203099cc; bytecode file offset 0xc062b0"
!RBObjectInformationView methodsFor: 'recovered'!
installActionKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := (self) globalActionKeys.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := HKOk.
    (recoveredValue4) at: (recoveredValue5) put: ('close').
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := HKCancel.
    (recoveredValue6) at: (recoveredValue7) put: ('close').
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := XKCancel.
    (recoveredValue8) at: (recoveredValue9) put: ('close').
    recoveredValue10 := Character.
    recoveredValue11 := (recoveredValue10) value: (13).
    (recoveredValue3) at: (recoveredValue11) put: ('close').
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := (self) shell.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue12) at: (recoveredValue13) put: (recoveredValue14).
    recoveredValue15 := recoveredLocal2.
    (self) widgetKeyActions: (recoveredValue15).
    ^self
! !

"ASDBase.ic method 0x20382280; bytecode file offset 0xc7eb88"
!RBObjectInformationView methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    childWindows := recoveredValue1.
    description := 'This is a description text....
with several lines.'.
    recoveredValue2 := Association.
    recoveredValue3 := (recoveredValue2) key: ('OBJECT') value: ('It''s me!!').
    objectAssociation := recoveredValue3.
    recoveredValue4 := Dictionary.
    recoveredValue5 := (recoveredValue4) new.
    infoDict := recoveredValue5.
    recoveredValue6 := infoDict.
    recoveredValue7 := recoveredValue6.
    (recoveredValue7) at: ('atterioebdsfhsvdfhjsd') put: ('aValue').
    recoveredValue8 := recoveredValue6.
    (recoveredValue8) at: ('ATT1') put: ('value1').
    recoveredValue9 := recoveredValue6.
    (recoveredValue9) at: ('ATT2') put: ('value2').
    recoveredValue10 := recoveredValue6.
    (recoveredValue10) at: ('ATT3') put: ('value3').
    recoveredValue11 := recoveredValue6.
    (recoveredValue11) at: ('ATT4') put: ('value4').
    super initialize.
    ^self
! !

"ASDBase.ic method 0x2050c1a8; bytecode file offset 0xe08aec"
!RBObjectInformationView methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCET16'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ASCET32'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'aOkPushButton'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := SCOk.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := ObjectInformation.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := iconName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'aDrawingArea1'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'aLabel1'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := objectAssociation.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) key.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 'aLabel2'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := objectAssociation.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) labelString: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := description.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := description.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := Cr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'aText1'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := description.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := 'aText1'.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := 4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := 12.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 380.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := 380.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := 60.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := infoDict.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 21.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 450.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) height: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) initializeColumns.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTable.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetTable.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) colorMap.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) buttonFace.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) backgroundColor: (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'aTopLevelShell1'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetAt: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := XmNresizeCallback.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := 'mainWindowResize:clientData:callData:'.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetTable.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) itemHeight: (recoveredStack1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20668e94; bytecode file offset 0xf658e4"
!RBObjectInformationView methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := CwTopLevelShell.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28125938Arg1 | 
    | block28125938Value0 block28125938Value1 block28125938Value2 block28125938Value3 |
    block28125938Value0 := block28125938Arg1.
    block28125938Value1 := block28125938Value0.
    (block28125938Value1) title: ('Object Information').
    block28125938Value2 := block28125938Value0.
    (block28125938Value2) height: (220).
    block28125938Value3 := (block28125938Value0) width: (486).
    block28125938Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) createApplicationShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'aTopLevelShell1'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'aMainWindow1'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'aForm1'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 recoveredBlock105Value6 recoveredBlock105Value7 recoveredBlock105Value8 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredBlock105Value0.
    (recoveredBlock105Value1) x: (33).
    recoveredBlock105Value2 := recoveredBlock105Value0.
    recoveredBlock105Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock105Value2) alignment: (recoveredBlock105Value3).
    recoveredBlock105Value4 := recoveredBlock105Value0.
    (recoveredBlock105Value4) y: (10).
    recoveredBlock105Value5 := recoveredBlock105Value0.
    (recoveredBlock105Value5) height: (20).
    recoveredBlock105Value6 := recoveredBlock105Value0.
    (recoveredBlock105Value6) width: (182).
    recoveredBlock105Value7 := (self) defaultLabelBlue.
    recoveredBlock105Value8 := (recoveredBlock105Value0) foregroundColor: (recoveredBlock105Value7).
    recoveredBlock105Value8
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'aLabel1'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := 'aLabel2'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Value0 recoveredBlock168Value1 recoveredBlock168Value2 recoveredBlock168Value3 recoveredBlock168Value4 recoveredBlock168Value5 recoveredBlock168Value6 recoveredBlock168Value7 recoveredBlock168Value8 |
    recoveredBlock168Value0 := recoveredBlock168Arg1.
    recoveredBlock168Value1 := recoveredBlock168Value0.
    (recoveredBlock168Value1) x: (229).
    recoveredBlock168Value2 := recoveredBlock168Value0.
    recoveredBlock168Value3 := XmALIGNMENTBEGINNING.
    (recoveredBlock168Value2) alignment: (recoveredBlock168Value3).
    recoveredBlock168Value4 := recoveredBlock168Value0.
    (recoveredBlock168Value4) y: (10).
    recoveredBlock168Value5 := recoveredBlock168Value0.
    (recoveredBlock168Value5) height: (20).
    recoveredBlock168Value6 := recoveredBlock168Value0.
    (recoveredBlock168Value6) width: (104).
    recoveredBlock168Value7 := (self) defaultLabelBlue.
    recoveredBlock168Value8 := (recoveredBlock168Value0) foregroundColor: (recoveredBlock168Value7).
    recoveredBlock168Value8
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := 'aLabel2'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack2 := 'aOkPushButton'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := [:block2812595cArg1 | 
    | block2812595cValue0 block2812595cValue1 block2812595cValue2 block2812595cValue3 |
    block2812595cValue0 := block2812595cArg1.
    block2812595cValue1 := block2812595cValue0.
    (block2812595cValue1) x: (182).
    block2812595cValue2 := block2812595cValue0.
    (block2812595cValue2) labelString: ('&Ok').
    block2812595cValue3 := (block2812595cValue0) y: (255).
    block2812595cValue3
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := 'aOkPushButton'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := 'aDrawingArea1'.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := [:block28125980Arg1 | 
    | block28125980Value0 block28125980Value1 block28125980Value2 block28125980Value3 block28125980Value4 |
    block28125980Value0 := block28125980Arg1.
    block28125980Value1 := block28125980Value0.
    (block28125980Value1) x: (10).
    block28125980Value2 := block28125980Value0.
    (block28125980Value2) y: (10).
    block28125980Value3 := block28125980Value0.
    (block28125980Value3) height: (18).
    block28125980Value4 := (block28125980Value0) width: (18).
    block28125980Value4
].
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDrawingArea: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := 'aDrawingArea1'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := 'anEnhancedTableList1'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := [:recoveredBlock327Arg1 | 
    | recoveredBlock327Value0 recoveredBlock327Value1 recoveredBlock327Value2 recoveredBlock327Value3 recoveredBlock327Value4 recoveredBlock327Value5 recoveredBlock327Value6 recoveredBlock327Value7 recoveredBlock327Value8 recoveredBlock327Value9 recoveredBlock327Value10 |
    recoveredBlock327Value0 := recoveredBlock327Arg1.
    recoveredBlock327Value1 := recoveredBlock327Value0.
    recoveredBlock327Value2 := XmETCHROWS.
    (recoveredBlock327Value1) visualStyle: (recoveredBlock327Value2).
    recoveredBlock327Value3 := recoveredBlock327Value0.
    recoveredBlock327Value4 := (self) items.
    (recoveredBlock327Value3) items: (recoveredBlock327Value4).
    recoveredBlock327Value5 := recoveredBlock327Value0.
    recoveredBlock327Value6 := XmREADONLYSELECT.
    (recoveredBlock327Value5) selectionPolicy: (recoveredBlock327Value6).
    recoveredBlock327Value7 := recoveredBlock327Value0.
    (recoveredBlock327Value7) itemHeight: (18).
    recoveredBlock327Value8 := recoveredBlock327Value0.
    (recoveredBlock327Value8) applicationDrawnBackground: (true).
    recoveredBlock327Value9 := XmETCHCELLS.
    recoveredBlock327Value10 := (recoveredBlock327Value0) headingVisualStyle: (recoveredBlock327Value9).
    recoveredBlock327Value10
].
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledEnhancedTableList: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := 'aScrolledEnhancedTableList1'.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := 'anEnhancedTableList1'.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := 'aText1'.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := [:block281259a4Arg1 | 
    | block281259a4Value0 block281259a4Value1 block281259a4Value2 block281259a4Value3 block281259a4Value4 block281259a4Value5 block281259a4Value6 block281259a4Value7 block281259a4Value8 block281259a4Value9 block281259a4Value10 |
    block281259a4Value0 := block281259a4Arg1.
    block281259a4Value1 := block281259a4Value0.
    (block281259a4Value1) editable: (false).
    block281259a4Value2 := block281259a4Value0.
    block281259a4Value3 := CgRGBColor.
    block281259a4Value4 := (block281259a4Value3) basicNew.
    block281259a4Value5 := block281259a4Value4.
    (block281259a4Value5) instVarAt: (1) put: (49344).
    block281259a4Value6 := block281259a4Value4.
    (block281259a4Value6) instVarAt: (2) put: (49344).
    block281259a4Value7 := block281259a4Value4.
    (block281259a4Value7) instVarAt: (3) put: (49344).
    (block281259a4Value2) backgroundColor: (block281259a4Value4).
    block281259a4Value8 := block281259a4Value0.
    (block281259a4Value8) wordWrap: (true).
    block281259a4Value9 := XmMULTILINEEDIT.
    block281259a4Value10 := (block281259a4Value0) editMode: (block281259a4Value9).
    block281259a4Value10
].
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := (recoveredStack1) createScrolledText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := 'aScrolledText1'.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack2 := 'aText1'.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack2 := [:recoveredBlock520Arg1 | 
    | recoveredBlock520Value0 recoveredBlock520Value1 recoveredBlock520Value2 |
    recoveredBlock520Value0 := recoveredBlock520Arg1.
    recoveredBlock520Value1 := recoveredLocal9.
    recoveredBlock520Value2 := (recoveredBlock520Value0) workWindow: (recoveredBlock520Value1).
    recoveredBlock520Value2
].
            recoveredPC := 536.
        ].
        recoveredStep = 536 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack2 := [:recoveredBlock544Arg1 | 
    | recoveredBlock544Value0 recoveredBlock544Value1 recoveredBlock544Value2 recoveredBlock544Value3 recoveredBlock544Value4 recoveredBlock544Value5 recoveredBlock544Value6 recoveredBlock544Value7 recoveredBlock544Value8 |
    recoveredBlock544Value0 := recoveredBlock544Arg1.
    recoveredBlock544Value1 := recoveredBlock544Value0.
    recoveredBlock544Value2 := XmATTACHFORM.
    (recoveredBlock544Value1) topAttachment: (recoveredBlock544Value2).
    recoveredBlock544Value3 := recoveredBlock544Value0.
    (recoveredBlock544Value3) topOffset: (10).
    recoveredBlock544Value4 := recoveredBlock544Value0.
    recoveredBlock544Value5 := XmATTACHWIDGET.
    (recoveredBlock544Value4) leftAttachment: (recoveredBlock544Value5).
    recoveredBlock544Value6 := recoveredBlock544Value0.
    recoveredBlock544Value7 := recoveredLocal5.
    (recoveredBlock544Value6) leftWidget: (recoveredBlock544Value7).
    recoveredBlock544Value8 := (recoveredBlock544Value0) leftOffset: (5).
    recoveredBlock544Value8
].
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := [:recoveredBlock598Arg1 | 
    | recoveredBlock598Value0 recoveredBlock598Value1 recoveredBlock598Value2 recoveredBlock598Value3 recoveredBlock598Value4 recoveredBlock598Value5 recoveredBlock598Value6 recoveredBlock598Value7 recoveredBlock598Value8 recoveredBlock598Value9 recoveredBlock598Value10 |
    recoveredBlock598Value0 := recoveredBlock598Arg1.
    recoveredBlock598Value1 := recoveredBlock598Value0.
    recoveredBlock598Value2 := XmATTACHFORM.
    (recoveredBlock598Value1) topAttachment: (recoveredBlock598Value2).
    recoveredBlock598Value3 := recoveredBlock598Value0.
    (recoveredBlock598Value3) topOffset: (10).
    recoveredBlock598Value4 := recoveredBlock598Value0.
    recoveredBlock598Value5 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock598Value4) leftAttachment: (recoveredBlock598Value5).
    recoveredBlock598Value6 := recoveredBlock598Value0.
    recoveredBlock598Value7 := recoveredLocal4.
    (recoveredBlock598Value6) leftWidget: (recoveredBlock598Value7).
    recoveredBlock598Value8 := recoveredBlock598Value0.
    recoveredBlock598Value9 := XmATTACHFORM.
    (recoveredBlock598Value8) rightAttachment: (recoveredBlock598Value9).
    recoveredBlock598Value10 := (recoveredBlock598Value0) rightOffset: (10).
    recoveredBlock598Value10
].
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 660.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := [:block281259c8Arg1 | 
    | block281259c8Value0 block281259c8Value1 block281259c8Value2 block281259c8Value3 block281259c8Value4 block281259c8Value5 block281259c8Value6 block281259c8Value7 block281259c8Value8 block281259c8Value9 block281259c8Value10 block281259c8Value11 block281259c8Value12 |
    block281259c8Value0 := block281259c8Arg1.
    block281259c8Value1 := block281259c8Value0.
    block281259c8Value2 := XmATTACHFORM.
    (block281259c8Value1) bottomAttachment: (block281259c8Value2).
    block281259c8Value3 := block281259c8Value0.
    (block281259c8Value3) bottomOffset: (10).
    block281259c8Value4 := block281259c8Value0.
    block281259c8Value5 := XmATTACHOPPOSITEFORM.
    (block281259c8Value4) topAttachment: (block281259c8Value5).
    block281259c8Value6 := block281259c8Value0.
    (block281259c8Value6) topOffset: (-40).
    block281259c8Value7 := block281259c8Value0.
    block281259c8Value8 := XmATTACHFORM.
    (block281259c8Value7) leftAttachment: (block281259c8Value8).
    block281259c8Value9 := block281259c8Value0.
    (block281259c8Value9) leftOffset: (10).
    block281259c8Value10 := block281259c8Value0.
    block281259c8Value11 := XmATTACHOPPOSITEFORM.
    (block281259c8Value10) rightAttachment: (block281259c8Value11).
    block281259c8Value12 := (block281259c8Value0) rightOffset: (-120).
    block281259c8Value12
].
            recoveredPC := 664.
        ].
        recoveredStep = 664 ifTrue: [
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 735.
        ].
        recoveredStep = 735 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := [:block281259ecArg1 | 
    | block281259ecValue0 block281259ecValue1 block281259ecValue2 block281259ecValue3 block281259ecValue4 block281259ecValue5 block281259ecValue6 |
    block281259ecValue0 := block281259ecArg1.
    block281259ecValue1 := block281259ecValue0.
    block281259ecValue2 := XmATTACHFORM.
    (block281259ecValue1) topAttachment: (block281259ecValue2).
    block281259ecValue3 := block281259ecValue0.
    (block281259ecValue3) topOffset: (10).
    block281259ecValue4 := block281259ecValue0.
    block281259ecValue5 := XmATTACHFORM.
    (block281259ecValue4) leftAttachment: (block281259ecValue5).
    block281259ecValue6 := (block281259ecValue0) leftOffset: (10).
    block281259ecValue6
].
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack2 := [:block28125a10Arg1 | 
    | block28125a10Value0 block28125a10Value1 block28125a10Value2 block28125a10Value3 block28125a10Value4 block28125a10Value5 block28125a10Value6 block28125a10Value7 block28125a10Value8 block28125a10Value9 block28125a10Value10 block28125a10Value11 block28125a10Value12 block28125a10Value13 block28125a10Value14 block28125a10Value15 block28125a10Value16 |
    block28125a10Value0 := block28125a10Arg1.
    block28125a10Value1 := block28125a10Value0.
    block28125a10Value2 := XmATTACHFORM.
    (block28125a10Value1) bottomAttachment: (block28125a10Value2).
    block28125a10Value3 := block28125a10Value0.
    (block28125a10Value3) bottomOffset: (10).
    block28125a10Value4 := block28125a10Value0.
    block28125a10Value5 := XmATTACHFORM.
    (block28125a10Value4) topAttachment: (block28125a10Value5).
    block28125a10Value6 := block28125a10Value0.
    (block28125a10Value6) topOffset: (30).
    block28125a10Value7 := block28125a10Value0.
    block28125a10Value8 := XmATTACHPOSITION.
    (block28125a10Value7) leftAttachment: (block28125a10Value8).
    block28125a10Value9 := block28125a10Value0.
    (block28125a10Value9) leftPosition: (47).
    block28125a10Value10 := block28125a10Value0.
    block28125a10Value11 := XmATTACHFORM.
    (block28125a10Value10) rightAttachment: (block28125a10Value11).
    block28125a10Value12 := block28125a10Value0.
    (block28125a10Value12) rightOffset: (10).
    block28125a10Value13 := block28125a10Value0.
    (block28125a10Value13) x: (211).
    block28125a10Value14 := block28125a10Value0.
    (block28125a10Value14) y: (23).
    block28125a10Value15 := block28125a10Value0.
    (block28125a10Value15) height: (149).
    block28125a10Value16 := (block28125a10Value0) width: (184).
    block28125a10Value16
].
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 884.
        ].
        recoveredStep = 884 ifTrue: [
            recoveredStack2 := [:recoveredBlock884Arg1 | 
    | recoveredBlock884Value0 recoveredBlock884Value1 recoveredBlock884Value2 recoveredBlock884Value3 recoveredBlock884Value4 recoveredBlock884Value5 recoveredBlock884Value6 recoveredBlock884Value7 recoveredBlock884Value8 recoveredBlock884Value9 recoveredBlock884Value10 recoveredBlock884Value11 recoveredBlock884Value12 recoveredBlock884Value13 recoveredBlock884Value14 recoveredBlock884Value15 recoveredBlock884Value16 recoveredBlock884Value17 recoveredBlock884Value18 recoveredBlock884Value19 |
    recoveredBlock884Value0 := recoveredBlock884Arg1.
    recoveredBlock884Value1 := recoveredBlock884Value0.
    recoveredBlock884Value2 := XmATTACHFORM.
    (recoveredBlock884Value1) bottomAttachment: (recoveredBlock884Value2).
    recoveredBlock884Value3 := recoveredBlock884Value0.
    (recoveredBlock884Value3) bottomOffset: (50).
    recoveredBlock884Value4 := recoveredBlock884Value0.
    recoveredBlock884Value5 := XmATTACHWIDGET.
    (recoveredBlock884Value4) topAttachment: (recoveredBlock884Value5).
    recoveredBlock884Value6 := recoveredBlock884Value0.
    recoveredBlock884Value7 := recoveredLocal8.
    (recoveredBlock884Value6) topWidget: (recoveredBlock884Value7).
    recoveredBlock884Value8 := recoveredBlock884Value0.
    recoveredBlock884Value9 := XmATTACHFORM.
    (recoveredBlock884Value8) leftAttachment: (recoveredBlock884Value9).
    recoveredBlock884Value10 := recoveredBlock884Value0.
    (recoveredBlock884Value10) leftOffset: (10).
    recoveredBlock884Value11 := recoveredBlock884Value0.
    recoveredBlock884Value12 := XmATTACHWIDGET.
    (recoveredBlock884Value11) rightAttachment: (recoveredBlock884Value12).
    recoveredBlock884Value13 := recoveredBlock884Value0.
    recoveredBlock884Value14 := recoveredLocal4.
    (recoveredBlock884Value13) rightWidget: (recoveredBlock884Value14).
    recoveredBlock884Value15 := recoveredBlock884Value0.
    (recoveredBlock884Value15) rightOffset: (10).
    recoveredBlock884Value16 := recoveredBlock884Value0.
    (recoveredBlock884Value16) x: (10).
    recoveredBlock884Value17 := recoveredBlock884Value0.
    (recoveredBlock884Value17) y: (30).
    recoveredBlock884Value18 := recoveredBlock884Value0.
    (recoveredBlock884Value18) height: (92).
    recoveredBlock884Value19 := (recoveredBlock884Value0) width: (144).
    recoveredBlock884Value19
].
            recoveredPC := 981.
        ].
        recoveredStep = 981 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 985.
        ].
        recoveredStep = 985 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 988.
        ].
        recoveredStep = 988 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 992.
        ].
        recoveredStep = 992 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 993.
        ].
        recoveredStep = 993 ifTrue: [
            recoveredStack4 := 'aOkPushButtonActivate:clientData:callData:'.
            recoveredPC := 996.
        ].
        recoveredStep = 996 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 997.
        ].
        recoveredStep = 997 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1001.
        ].
        recoveredStep = 1001 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1004.
        ].
        recoveredStep = 1004 ifTrue: [
            recoveredStack2 := XmNexposeCallback.
            recoveredPC := 1008.
        ].
        recoveredStep = 1008 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1009.
        ].
        recoveredStep = 1009 ifTrue: [
            recoveredStack4 := 'aDrawingArea1Expose:clientData:callData:'.
            recoveredPC := 1012.
        ].
        recoveredStep = 1012 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1013.
        ].
        recoveredStep = 1013 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1017.
        ].
        recoveredStep = 1017 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1020.
        ].
        recoveredStep = 1020 ifTrue: [
            recoveredStack2 := KeyPressMask.
            recoveredPC := 1024.
        ].
        recoveredStep = 1024 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1025.
        ].
        recoveredStep = 1025 ifTrue: [
            recoveredStack4 := 'anEnhancedTableList1KeyPress:clientData:callData:'.
            recoveredPC := 1028.
        ].
        recoveredStep = 1028 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1029.
        ].
        recoveredStep = 1029 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1033.
        ].
        recoveredStep = 1033 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1036.
        ].
        recoveredStep = 1036 ifTrue: [
            recoveredStack2 := KeyPressMask.
            recoveredPC := 1040.
        ].
        recoveredStep = 1040 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 1041.
        ].
        recoveredStep = 1041 ifTrue: [
            recoveredStack4 := 'aText1KeyPress:clientData:callData:'.
            recoveredPC := 1044.
        ].
        recoveredStep = 1044 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 1045.
        ].
        recoveredStep = 1045 ifTrue: [
            (recoveredStack1) addEventHandler: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 1049.
        ].
        recoveredStep = 1049 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 1052.
        ].
        recoveredStep = 1052 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1057.
        ].
        recoveredStep = 1057 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1060.
        ].
        recoveredStep = 1060 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1065.
        ].
        recoveredStep = 1065 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1068.
        ].
        recoveredStep = 1068 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1073.
        ].
        recoveredStep = 1073 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1076.
        ].
        recoveredStep = 1076 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 1079.
        ].
        recoveredStep = 1079 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1082.
        ].
        recoveredStep = 1082 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1087.
        ].
        recoveredStep = 1087 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

