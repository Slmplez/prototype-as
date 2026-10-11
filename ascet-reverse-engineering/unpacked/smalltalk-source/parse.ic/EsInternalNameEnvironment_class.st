"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000554; bytecode file offset 0x15bac"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
flushExtraNameMap
    ExtraNameMap := nil.
    ^self
! !

"parse.ic method 0x2000067c; bytecode file offset 0x15d28"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
for: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) compiler: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20001298; bytecode file offset 0x168f8"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"parse.ic method 0x20001854; bytecode file offset 0x16eb4"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
removePrivateNameMap: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ExtraNameMap.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"parse.ic method 0x2000314c; bytecode file offset 0x187b0"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
addExtraNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [:block28002b44Arg1 :block28002b44Arg2 | 
    | block28002b44Value0 block28002b44Value1 block28002b44Value2 block28002b44Value3 |
    block28002b44Value0 := ExtraNameMap.
    block28002b44Value1 := block28002b44Arg1.
    block28002b44Value2 := block28002b44Arg2.
    block28002b44Value3 := (block28002b44Value0) at: (block28002b44Value1) put: (block28002b44Value2).
    block28002b44Value3
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20003660; bytecode file offset 0x18cc4"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
addPrivateNameMap: recoveredArg1 dictionary: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ExtraNameMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ExtraNameMap := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := ExtraNameMap.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20006360; bytecode file offset 0x1b9f8"
!EsInternalNameEnvironment class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := EsMagicNameBinding.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) variableName: ('self') type: ('MAGICSELF').
    MagicSelfBinding := recoveredValue2.
    recoveredValue3 := EsMagicNameBinding.
    recoveredValue4 := (recoveredValue3) new.
    recoveredValue5 := (nil) basicHash.
    recoveredValue6 := (recoveredValue4) variableName: ('nil') type: ('MAGICNIL') value: (recoveredValue5).
    MagicNilBinding := recoveredValue6.
    recoveredValue7 := EsMagicNameBinding.
    recoveredValue8 := (recoveredValue7) new.
    recoveredValue9 := (true) basicHash.
    recoveredValue10 := (recoveredValue8) variableName: ('true') type: ('MAGICTRUE') value: (recoveredValue9).
    MagicTrueBinding := recoveredValue10.
    recoveredValue11 := EsMagicNameBinding.
    recoveredValue12 := (recoveredValue11) new.
    recoveredValue13 := (false) basicHash.
    recoveredValue14 := (recoveredValue12) variableName: ('false') type: ('MAGICFALSE') value: (recoveredValue13).
    MagicFalseBinding := recoveredValue14.
    ^self
! !

