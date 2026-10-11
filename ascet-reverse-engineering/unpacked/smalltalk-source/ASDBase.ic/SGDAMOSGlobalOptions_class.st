"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012870; bytecode file offset 0x912098"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
CaseSensitive
    | recoveredValue0 |
    recoveredValue0 := CaseSensitive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200131ac; bytecode file offset 0x912098"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
ReduceFunctionOutput
    | recoveredValue0 |
    recoveredValue0 := ReduceFunctionOutput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200137ac; bytecode file offset 0x912098"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
FormatValuesUseDecimals
    | recoveredValue0 |
    recoveredValue0 := FormatValuesUseDecimals.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001446c; bytecode file offset 0x912098"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
LongNames
    | recoveredValue0 |
    recoveredValue0 := LongNames.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014f58; bytecode file offset 0x912098"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
FormatVersion
    | recoveredValue0 |
    recoveredValue0 := FormatVersion.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200154bc; bytecode file offset 0x912098"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
ExpandedFormat
    | recoveredValue0 |
    recoveredValue0 := ExpandedFormat.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053d50; bytecode file offset 0x951190"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
FormatVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    FormatVersion := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005426c; bytecode file offset 0x951190"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
ReduceFunctionOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ReduceFunctionOutput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200543ec; bytecode file offset 0x951190"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
FormatValuesUseDecimals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    FormatValuesUseDecimals := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005453c; bytecode file offset 0x951190"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
ExpandedFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ExpandedFormat := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054584; bytecode file offset 0x951190"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
LongNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LongNames := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200548d8; bytecode file offset 0x951190"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
CaseSensitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    CaseSensitive := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200721e8; bytecode file offset 0x96ee04"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
defaultFormatVersion
    ^1
! !

"ASDBase.ic method 0x20084924; bytecode file offset 0x981ca4"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
caseSensitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) CaseSensitive: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084990; bytecode file offset 0x981ca4"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
expandedFormat: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) ExpandedFormat: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084ce4; bytecode file offset 0x981ca4"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
longNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) LongNames: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084d68; bytecode file offset 0x981ca4"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
formatValuesUseDecimals: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) FormatValuesUseDecimals: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084e64; bytecode file offset 0x981ca4"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
reduceFunctionOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) ReduceFunctionOutput: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084f0c; bytecode file offset 0x981ca4"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
formatVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) FormatVersion: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200cb514; bytecode file offset 0x9c7dd0"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
setK3Options
    (self) longNames: (false).
    (self) caseSensitive: (false).
    ^self
! !

"ASDBase.ic method 0x20160f2c; bytecode file offset 0xa5d83c"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
reduceFunctionOutput
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ReduceFunctionOutput.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ReduceFunctionOutput.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ReduceFunctionOutput: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ReduceFunctionOutput.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160f40; bytecode file offset 0xa5d83c"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
longNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) LongNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) LongNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) LongNames: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) LongNames.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160f54; bytecode file offset 0xa5d83c"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
caseSensitive
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) CaseSensitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) CaseSensitive.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) CaseSensitive: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) CaseSensitive.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160f68; bytecode file offset 0xa5d83c"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
expandedFormat
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ExpandedFormat.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) ExpandedFormat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ExpandedFormat: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) ExpandedFormat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20160f7c; bytecode file offset 0xa5d83c"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
formatValuesUseDecimals
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) FormatValuesUseDecimals.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) FormatValuesUseDecimals.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBoolean.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) FormatValuesUseDecimals: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) FormatValuesUseDecimals.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20171c8c; bytecode file offset 0xa6e550"
!SGDAMOSGlobalOptions class methodsFor: 'recovered'!
formatVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) FormatVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) FormatVersion.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultFormatVersion.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) FormatVersion: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) FormatVersion.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

