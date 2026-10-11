"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200086f0; bytecode file offset 0x908be4"
!ARModeGroupDB methodsFor: 'recovered'!
typeLabel
    | recoveredValue0 |
    recoveredValue0 := (self) itemType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200168e0; bytecode file offset 0x92209c"
!ARModeGroupDB methodsFor: 'recovered'!
sourceModel
    ^'modeGroup'
! !

"ASDBase.ic method 0x200193d0; bytecode file offset 0x92209c"
!ARModeGroupDB methodsFor: 'recovered'!
getComponentType
    ^'AUTOSAR_ModeGroup'
! !

"ASDBase.ic method 0x2001b7ac; bytecode file offset 0x92209c"
!ARModeGroupDB methodsFor: 'recovered'!
iconName
    ^'ComponentsModeGroup'
! !

"ASDBase.ic method 0x2001dc60; bytecode file offset 0x92209c"
!ARModeGroupDB methodsFor: 'recovered'!
getComponentTag
    ^'ModeGroup'
! !

"ASDBase.ic method 0x2001f46c; bytecode file offset 0x92209c"
!ARModeGroupDB methodsFor: 'recovered'!
itemType
    ^'Mode Group'
! !

"ASDBase.ic method 0x20021a1c; bytecode file offset 0x92209c"
!ARModeGroupDB methodsFor: 'recovered'!
iconNameElement
    ^'ElementTypeVariableModeGroup'
! !

"ASDBase.ic method 0x20075754; bytecode file offset 0x9757c8"
!ARModeGroupDB methodsFor: 'recovered'!
isDIFFComparable
    ^true
! !

"ASDBase.ic method 0x20075e9c; bytecode file offset 0x9757c8"
!ARModeGroupDB methodsFor: 'recovered'!
isARModeGroup
    ^true
! !

"ASDBase.ic method 0x20079834; bytecode file offset 0x97c330"
!ARModeGroupDB methodsFor: 'recovered'!
isSGEnumeration
    ^false
! !

"ASDBase.ic method 0x200ed508; bytecode file offset 0x9e9dc4"
!ARModeGroupDB methodsFor: 'recovered'!
writeXMLToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) writeXMLMainToFiles: (recoveredValue0) baseName: (recoveredValue1) xmlExt: (recoveredValue2) cryptNode: ('/ComponentMain/ModeGroup').
    ^self
! !

"ASDBase.ic method 0x2014c3d0; bytecode file offset 0xa48ca0"
!ARModeGroupDB methodsFor: 'recovered'!
asMdlClassType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := SGCgTypeFactory.
    recoveredValue1 := (self) label.
    recoveredValue2 := (self) dbObject.
    recoveredValue3 := (recoveredValue2) globalIdString.
    recoveredValue4 := (self) enumeration.
    recoveredValue5 := (recoveredValue4) enumerationMap.
    recoveredValue6 := (recoveredValue0) createModeGroup: (recoveredValue1) id: (recoveredValue3) values: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026315c; bytecode file offset 0xb5fa40"
!ARModeGroupDB methodsFor: 'recovered'!
ascetLinkForMode: recoveredArg1 parameters: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    (self) ascetLink: (recoveredBlock7Value0) on: (recoveredBlock7Value1).
    recoveredBlock7Value2 := recoveredBlock7Arg1.
    recoveredBlock7Value3 := recoveredBlock7Value2.
    (recoveredBlock7Value3) nextPutAll: ('/').
    recoveredBlock7Value4 := recoveredBlock7Value2.
    (recoveredBlock7Value4) nextPutAll: ('entry=').
    recoveredBlock7Value5 := recoveredArg1.
    recoveredBlock7Value6 := (recoveredBlock7Value2) nextPutAll: (recoveredBlock7Value5).
    recoveredBlock7Value6
].
    recoveredValue2 := (recoveredValue0) ascetLinkWithStream: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2028a448; bytecode file offset 0xb86d28"
!ARModeGroupDB methodsFor: 'recovered'!
minToolVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := super minToolVersion: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) destVersion.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'V6.0.0'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'AUTOSAR Mode Groups only supported with ASCET V6.0.0 or higher. (%1)'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) ascetLink: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addImportantInfoText: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 'V6.0.0'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20327824; bytecode file offset 0xc24108"
!ARModeGroupDB methodsFor: 'recovered'!
writeXMLComponentBody: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) getEntryTag.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := enumeration.
    recoveredValue3 := (recoveredValue2) values.
    recoveredValue4 := [:recoveredBlock12Arg1 :recoveredBlock12Arg2 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 recoveredBlock12Value11 |
    recoveredBlock12Value0 := recoveredArg1.
    recoveredBlock12Value1 := recoveredLocal1.
    (recoveredBlock12Value0) openComplex: (recoveredBlock12Value1).
    recoveredBlock12Value2 := recoveredArg1.
    recoveredBlock12Value3 := (self) enumeration.
    recoveredBlock12Value4 := (recoveredBlock12Value3) values.
    recoveredBlock12Value5 := recoveredBlock12Arg1.
    recoveredBlock12Value6 := (recoveredBlock12Value4) indexOf: (recoveredBlock12Value5).
    recoveredBlock12Value7 := (recoveredBlock12Value6) + (-1).
    (recoveredBlock12Value2) attr: ('index') int: (recoveredBlock12Value7).
    recoveredBlock12Value8 := recoveredArg1.
    recoveredBlock12Value9 := recoveredBlock12Arg1.
    (recoveredBlock12Value8) attr: ('value') string: (recoveredBlock12Value9).
    recoveredBlock12Value10 := recoveredArg1.
    recoveredBlock12Value11 := (recoveredBlock12Value10) closeComplex.
    recoveredBlock12Value11
].
    (recoveredValue3) doWithIndex: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203302b0; bytecode file offset 0xc2cc1c"
!ARModeGroupDB methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRead.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := super createInfoWidget: (recoveredStack1) parent: (recoveredStack2) owner: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredBlock34Arg1.
    recoveredBlock34Value1 := recoveredBlock34Value0.
    recoveredBlock34Value2 := recoveredArg3.
    (recoveredBlock34Value1) owner: (recoveredBlock34Value2).
    recoveredBlock34Value3 := (recoveredBlock34Value0) item: (self).
    recoveredBlock34Value3
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) createEtasModeGroupWidget: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

