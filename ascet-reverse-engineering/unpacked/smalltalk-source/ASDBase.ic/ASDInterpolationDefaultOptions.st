"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000abec; bytecode file offset 0x908be4"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
defaultValueFor2DTableInterpolation
    | recoveredValue0 |
    recoveredValue0 := (self) defaultValueFor1DTableInterpolation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200175f4; bytecode file offset 0x92209c"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
group
    ^'Modeling'
! !

"ASDBase.ic method 0x20019460; bytecode file offset 0x92209c"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
attributeNameFor1DTableInterpolation
    ^'Interpolation1D'
! !

"ASDBase.ic method 0x20023be8; bytecode file offset 0x92209c"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
attributeNameFor2DTableInterpolation
    ^'Interpolation2D'
! !

"ASDBase.ic method 0x2002b0f4; bytecode file offset 0x934580"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
defaultValueFor1DTableInterpolation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) systemDefaultInterpolation.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d6b8; bytecode file offset 0x93bf94"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
availableInterpolationRoutineLabels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGInterpolationRoutineSet.
    recoveredValue1 := (recoveredValue0) availableDeclarationLabels.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f578; bytecode file offset 0x93bf94"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
availableInterpolationRoutineIdentifiers
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := TGInterpolationRoutineSet.
    recoveredValue1 := (recoveredValue0) availableInterpolationSetIdentifiers.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2010c224; bytecode file offset 0xa08aec"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := (self) initializeDefaultsInterpolation.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2011d48c; bytecode file offset 0xa19e3c"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
optionDefaultsInterpolation1DValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributeNameFor1DTableInterpolation.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultValueFor1DTableInterpolation.
    ^recoveredBlock6Value0
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2011d554; bytecode file offset 0xa19e3c"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
optionDefaultsInterpolation2DValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributeNameFor2DTableInterpolation.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultValueFor2DTableInterpolation.
    ^recoveredBlock6Value0
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201824dc; bytecode file offset 0xa7edc0"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
optionDefaultsInterpolation1D
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) attributeNameFor1DTableInterpolation.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201824f8; bytecode file offset 0xa7edc0"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
optionDefaultsInterpolation2D
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) attributeName.
    recoveredBlock5Value2 := (self) attributeNameFor2DTableInterpolation.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20303f98; bytecode file offset 0xc008e4"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
initializeDefaultsInterpolation1D
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) attributeNameFor1DTableInterpolation.
    recoveredValue2 := EtasNonValidatingEnumerationOption.
    recoveredValue3 := (self) defaultValueFor1DTableInterpolation.
    recoveredValue4 := (self) defaultValueFor1DTableInterpolation.
    recoveredValue5 := (self) group.
    recoveredValue6 := (recoveredValue2) label: ('Default 1D Interpolation') description: ('Defines the default interpolation routine used for new created 1D table elements') toolTip: ('Default 1D table interpolation') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) availableInterpolationRoutineIdentifiers.
    (recoveredValue7) valueCollection: (recoveredValue8).
    recoveredValue9 := (self) availableInterpolationRoutineLabels.
    recoveredValue10 := (recoveredValue6) stringCollection: (recoveredValue9).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('ToolSettings\Defaults\Data') attributeName: (recoveredValue1) oldName: ('') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20303fe8; bytecode file offset 0xc008e4"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
initializeDefaultsInterpolation2D
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := (self) attributeNameFor2DTableInterpolation.
    recoveredValue2 := EtasNonValidatingEnumerationOption.
    recoveredValue3 := (self) defaultValueFor2DTableInterpolation.
    recoveredValue4 := (self) defaultValueFor2DTableInterpolation.
    recoveredValue5 := (self) group.
    recoveredValue6 := (recoveredValue2) label: ('Default 2D Interpolation') description: ('Defines the default interpolation routine used for new created 2D table elements') toolTip: ('Default 2D table interpolation') value: (recoveredValue3) default: (recoveredValue4) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) availableInterpolationRoutineIdentifiers.
    (recoveredValue7) valueCollection: (recoveredValue8).
    recoveredValue9 := (self) availableInterpolationRoutineLabels.
    recoveredValue10 := (recoveredValue6) stringCollection: (recoveredValue9).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('ToolSettings\Defaults\Data') attributeName: (recoveredValue1) oldName: ('') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20377914; bytecode file offset 0xc74214"
!ASDInterpolationDefaultOptions methodsFor: 'recovered'!
initializeDefaultsInterpolation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Data'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'DefaultInterpolations'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Default Interpolations'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Defines the default interpolations for newly created table element'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Default interpolation for tables'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) group.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeDefaultsInterpolation1D.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) initializeDefaultsInterpolation2D.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

