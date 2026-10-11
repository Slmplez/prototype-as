"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004738; bytecode file offset 0x90206c"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
getResponseType: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20018560; bytecode file offset 0x92209c"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
transmissionModeEnums
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (3); keyArray: (#(nil nil nil nil nil 'TRANSMISSION_MODE_SLOW' nil nil 'TRANSMISSION_MODE_FAST' 'TRANSMISSION_MODE_MEDIUM' nil)); valueArray: (#(nil nil nil nil nil 1 nil nil 3 2 nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20025a14; bytecode file offset 0x923928"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
availableEnums
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (1); keyArray: (#(nil nil 'CAN' nil nil nil nil nil nil nil nil)); valueArray: (#(nil nil 2 nil nil nil nil nil nil nil nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b0d0; bytecode file offset 0x947a60"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
rdbpiResponseTypeUsdt
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b378; bytecode file offset 0x947d20"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
rdbpiResponseTypeUudt
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b4dc; bytecode file offset 0x947ec0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
transmissionModeBase
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b76c; bytecode file offset 0x948384"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
availableBase
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ba60; bytecode file offset 0x948384"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
availableOn
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bc48; bytecode file offset 0x94877c"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
availablePeriodicIdentifierRange
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082c6c; bytecode file offset 0x97f5f0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
getRdbpiResponseTypeUsdt: recoveredArg1
    (self) rdbpiResponseTypeUsdt: (true).
    ^self
! !

"ASDBase.ic method 0x200851dc; bytecode file offset 0x981ca4"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) parseStruct: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20097384; bytecode file offset 0x995850"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
addAvailablePeriodicIdentifierRange: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) availablePeriodicIdentifierRange.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5ea8; bytecode file offset 0x9a27f0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
rdbpiResponseTypeUsdt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6074; bytecode file offset 0x9a2a28"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
rdbpiResponseTypeUudt: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a61a0; bytecode file offset 0x9a2b84"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
transmissionMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a64a0; bytecode file offset 0x9a2f38"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
availableOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a656c; bytecode file offset 0x9a2f38"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
available: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6938; bytecode file offset 0x9a32e0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
availablePeriodicIdentifierRange: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200e60d0; bytecode file offset 0x9e2abc"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
initialize
    super initialize.
    (self) rdbpiResponseTypeUsdt: (false).
    ^self
! !

"ASDBase.ic method 0x200e66a8; bytecode file offset 0x9e30bc"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 |
    super minimizeCollections.
    recoveredValue0 := (self) availablePeriodicIdentifierRange.
    (recoveredValue0) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x2010b890; bytecode file offset 0xa085f0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) availablePeriodicIdentifierRange: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201260d4; bytecode file offset 0xa22bf0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
getAvailablePeriodicIdentifierRange: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2KWP2000V30IdRangePeriodic.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addAvailablePeriodicIdentifierRange: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2012623c; bytecode file offset 0xa22bf0"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
getRdbpiResponseTypeUudt: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2KWP2000V30RdbpiResponseTypeUudt.
    recoveredValue1 := (recoveredValue0) createDefault.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) rdbpiResponseTypeUudt: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20163a08; bytecode file offset 0xa605cc"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
putInBasic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20179068; bytecode file offset 0xa75928"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
putIn: recoveredArg1 availablePeriodicIdentifierRange: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) availablePeriodicIdentifierRange.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) putIn: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a891c; bytecode file offset 0xaa51e4"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
putIn: recoveredArg1 rdbpiResponseTypeUudt: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rdbpiResponseTypeUudt.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'RESPONSE_TYPE'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) rdbpiResponseTypeUudt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e9764; bytecode file offset 0xae6028"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
putIn: recoveredArg1 rdbpiResponseTypeUsdt: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rdbpiResponseTypeUsdt.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'RESPONSE_TYPE'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ff51c; bytecode file offset 0xafbe00"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
transmissionMode
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissionModeBase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissionModeEnums.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) transmissionModeBase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := (self) transmissionModeBase.
    recoveredBlock14Value1 := (recoveredBlock14Value0) asInteger.
    recoveredBlock14Value1
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissionModeBase.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20308898; bytecode file offset 0xc05178"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
getTransmissionMode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (self) transmissionMode: (recoveredValue2).
    recoveredValue3 := (self) transmissionModeEnums.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asUppercase.
    recoveredValue6 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 |
    recoveredBlock23Value0 := SCASAP2MissingEnumValue.
    recoveredBlock23Value1 := recoveredLocal1.
    recoveredBlock23Value2 := (self) transmissionModeEnums.
    recoveredBlock23Value3 := (recoveredBlock23Value2) keys.
    recoveredBlock23Value4 := (recoveredBlock23Value3) printString.
    recoveredBlock23Value5 := (recoveredBlock23Value0) bindWith: (recoveredBlock23Value1) with: (recoveredBlock23Value4).
    (self) monitorWarning: (recoveredBlock23Value5).
    recoveredBlock23Value6 := recoveredLocal1.
    recoveredBlock23Value7 := (recoveredBlock23Value6) asInteger.
    recoveredBlock23Value7
].
    (recoveredValue3) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x203c787c; bytecode file offset 0xcc4150"
!ASAP2KWP2000V30RDBPIParameter methodsFor: 'recovered'!
putIn: recoveredArg1 transmissionMode: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissionModeBase.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) putSeparatorIn: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) transmissionModeEnums.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 |
    recoveredBlock48Value0 := recoveredArg1.
    recoveredBlock48Value1 := recoveredLocal1.
    recoveredBlock48Value2 := (self) putIn: (recoveredBlock48Value0) integer: (recoveredBlock48Value1).
    recoveredBlock48Value2
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) keyAtValue: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

