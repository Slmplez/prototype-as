"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d1a4; bytecode file offset 0x92209c"
!AsamMcdOptions methodsFor: 'recovered'!
groupLabel
    ^'ASAM-2MC'
! !

"ASDBase.ic method 0x200f2198; bytecode file offset 0x9eeaa4"
!AsamMcdOptions methodsFor: 'recovered'!
initSuppressExportsOfPrototypesWithinASAP2
    | recoveredValue0 |
    recoveredValue0 := (self) createETASBooleanOptionEntry: ('Suppress exported of prototypes') defaultValue: (false) comment: ('exported elements of prototyped components are ignored within ASAM-2MC file generation') iniFileEntry: ('Suppressexportsprototypewithinasap2').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f21b0; bytecode file offset 0x9eeaa4"
!AsamMcdOptions methodsFor: 'recovered'!
initCreateUnitFormulas
    | recoveredValue0 |
    recoveredValue0 := (self) createETASBooleanOptionEntry: ('Formulas with unit') defaultValue: (false) comment: ('create formulas containing the unit of the labels') iniFileEntry: ('Formulawithunit').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f21c8; bytecode file offset 0x9eeaa4"
!AsamMcdOptions methodsFor: 'recovered'!
initHexCodeIncludesROMCode
    | recoveredValue0 |
    recoveredValue0 := (self) createETASBooleanOptionEntry: ('ROM Code') defaultValue: (false) comment: ('E-Target hex code includes ROM code') iniFileEntry: ('ETargetHexCodeIncludesROMCode').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f21e0; bytecode file offset 0x9eeaa4"
!AsamMcdOptions methodsFor: 'recovered'!
initSuppressParameterExportsWithinASAP2
    | recoveredValue0 |
    recoveredValue0 := (self) createETASBooleanOptionEntry: ('Suppress exported parameters') defaultValue: (false) comment: ('exported parameters of components (not of projects) are ignored within ASAM-2MC file generation') iniFileEntry: ('Suppressexportswithinasap2').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20148ad0; bytecode file offset 0xa45394"
!AsamMcdOptions methodsFor: 'recovered'!
createETASBooleanOptionEntry: recoveredArg1 defaultValue: recoveredArg2 comment: recoveredArg3 iniFileEntry: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasOptionEntry.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := RBBooleanOptionEntry.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) groupLabel.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue0) createOptionName: (recoveredValue1) optionComment: (recoveredValue2) optionEntryClass: (recoveredValue3) iniFileEntry: (recoveredValue4) sectionName: (recoveredValue5) value: (recoveredValue6) defaultValue: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2015e7d4; bytecode file offset 0xa5b0c0"
!AsamMcdOptions methodsFor: 'recovered'!
initSuppressGroupInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_46902').
    recoveredValue1 := (self) createETASBooleanOptionEntry: ('Suppress grouping information') defaultValue: (false) comment: ('do not generate the additional group information for the project in ASAM-2MC file.') iniFileEntry: ('SuppressGroupInformationInAsap2').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015e7f4; bytecode file offset 0xa5b0c0"
!AsamMcdOptions methodsFor: 'recovered'!
initSuppressFunctionInformation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_46902').
    recoveredValue1 := (self) createETASBooleanOptionEntry: ('Suppress function information') defaultValue: (false) comment: ('do not generate the additional function information for the project in ASAM-2MC file.') iniFileEntry: ('SuppressFunctionInformationInAsap2').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201e536c; bytecode file offset 0xae1cb8"
!AsamMcdOptions methodsFor: 'recovered'!
suppressParameterExportsWithinASAP2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6f44Arg1 | 
    | block280d6f44Value0 block280d6f44Value1 block280d6f44Value2 |
    block280d6f44Value0 := block280d6f44Arg1.
    block280d6f44Value1 := (block280d6f44Value0) iniFileEntry.
    block280d6f44Value2 := (block280d6f44Value1) = ('Suppressexportswithinasap2').
    block280d6f44Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e538c; bytecode file offset 0xae1cb8"
!AsamMcdOptions methodsFor: 'recovered'!
suppressExportsOfPrototypesWithinASAP2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6f68Arg1 | 
    | block280d6f68Value0 block280d6f68Value1 block280d6f68Value2 |
    block280d6f68Value0 := block280d6f68Arg1.
    block280d6f68Value1 := (block280d6f68Value0) iniFileEntry.
    block280d6f68Value2 := (block280d6f68Value1) = ('Suppressexportsprototypewithinasap2').
    block280d6f68Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e53ac; bytecode file offset 0xae1cb8"
!AsamMcdOptions methodsFor: 'recovered'!
hexCodeIncludesROMCode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6f8cArg1 | 
    | block280d6f8cValue0 block280d6f8cValue1 block280d6f8cValue2 |
    block280d6f8cValue0 := block280d6f8cArg1.
    block280d6f8cValue1 := (block280d6f8cValue0) iniFileEntry.
    block280d6f8cValue2 := (block280d6f8cValue1) = ('ETargetHexCodeIncludesROMCode').
    block280d6f8cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e53cc; bytecode file offset 0xae1cb8"
!AsamMcdOptions methodsFor: 'recovered'!
createUnitFormulas
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6fb0Arg1 | 
    | block280d6fb0Value0 block280d6fb0Value1 block280d6fb0Value2 |
    block280d6fb0Value0 := block280d6fb0Arg1.
    block280d6fb0Value1 := (block280d6fb0Value0) iniFileEntry.
    block280d6fb0Value2 := (block280d6fb0Value1) = ('Formulawithunit').
    block280d6fb0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e53ec; bytecode file offset 0xae1cb8"
!AsamMcdOptions methodsFor: 'recovered'!
suppressFunctionInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d6fd4Arg1 | 
    | block280d6fd4Value0 block280d6fd4Value1 block280d6fd4Value2 |
    block280d6fd4Value0 := block280d6fd4Arg1.
    block280d6fd4Value1 := (block280d6fd4Value0) iniFileEntry.
    block280d6fd4Value2 := (block280d6fd4Value1) = ('SuppressFunctionInformationInAsap2').
    block280d6fd4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20249e54; bytecode file offset 0xb46728"
!AsamMcdOptions methodsFor: 'recovered'!
suppressGroupInformation
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_46902'.
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
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280de9c0Arg1 | 
    | block280de9c0Value0 block280de9c0Value1 block280de9c0Value2 |
    block280de9c0Value0 := block280de9c0Arg1.
    block280de9c0Value1 := (block280de9c0Value0) iniFileEntry.
    block280de9c0Value2 := (block280de9c0Value1) = ('SuppressGroupInformationInAsap2').
    block280de9c0Value2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a9268; bytecode file offset 0xba5b40"
!AsamMcdOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initialize.
    recoveredValue0 := options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initHexCodeIncludesROMCode.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initCreateUnitFormulas.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initSuppressParameterExportsWithinASAP2.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initSuppressExportsOfPrototypesWithinASAP2.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initSuppressGroupInformation.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := (self) initSuppressFunctionInformation.
    (recoveredValue0) add: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2035ca8c; bytecode file offset 0xc5936c"
!AsamMcdOptions methodsFor: 'recovered'!
duplicate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) options.
    recoveredValue4 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := (self) options.
    recoveredBlock9Value1 := [:recoveredBlock9Block17Arg1 | 
    | recoveredBlock9Block17Value0 recoveredBlock9Block17Value1 recoveredBlock9Block17Value2 recoveredBlock9Block17Value3 recoveredBlock9Block17Value4 |
    recoveredBlock9Block17Value0 := recoveredBlock9Arg1.
    recoveredBlock9Block17Value1 := (recoveredBlock9Block17Value0) name.
    recoveredBlock9Block17Value2 := recoveredBlock9Block17Arg1.
    recoveredBlock9Block17Value3 := (recoveredBlock9Block17Value2) name.
    recoveredBlock9Block17Value4 := (recoveredBlock9Block17Value1) = (recoveredBlock9Block17Value3).
    recoveredBlock9Block17Value4
].
    recoveredBlock9Value2 := [].
    recoveredBlock9Value3 := (recoveredBlock9Value0) detect: (recoveredBlock9Value1) ifNone: (recoveredBlock9Value2).
    recoveredBlock9Value4 := recoveredBlock9Value3.
    recoveredBlock9Local1 := recoveredBlock9Value4.
    recoveredBlock9Value5 := [
    | recoveredBlock9Block40Value0 recoveredBlock9Block40Value1 recoveredBlock9Block40Value2 recoveredBlock9Block40Value3 recoveredBlock9Block40Value4 |
    recoveredBlock9Block40Value0 := recoveredBlock9Arg1.
    recoveredBlock9Block40Value1 := recoveredBlock9Local1.
    recoveredBlock9Block40Value2 := (recoveredBlock9Block40Value1) value.
    recoveredBlock9Block40Value3 := (recoveredBlock9Block40Value2) copy.
    recoveredBlock9Block40Value4 := (recoveredBlock9Block40Value0) value: (recoveredBlock9Block40Value3).
    recoveredBlock9Block40Value4
].
    recoveredBlock9Value6 := (recoveredBlock9Value3) notNil: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

