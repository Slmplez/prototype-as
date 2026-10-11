"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013b0c; bytecode file offset 0x912098"
!SGExImportManager class methodsFor: 'recovered'!
ExportOptions
    | recoveredValue0 |
    recoveredValue0 := ExportOptions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20054050; bytecode file offset 0x951190"
!SGExImportManager class methodsFor: 'recovered'!
ExportOptions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ExportOptions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20122db0; bytecode file offset 0xa1f6a4"
!SGExImportManager class methodsFor: 'recovered'!
createForDBController: recoveredArg1 userInterface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) dbController: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) userInterface: (recoveredValue5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013ff74; bytecode file offset 0xa3c858"
!SGExImportManager class methodsFor: 'recovered'!
getExportOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) ExportOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ExportOptions: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) ExportOptions.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b01a8; bytecode file offset 0xaacb54"
!SGExImportManager class methodsFor: 'recovered'!
exportExecutionBlock
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getExportOptions.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) getExportOptions.
    recoveredBlock7Value1 := LookupTable.
    recoveredBlock7Value2 := (recoveredBlock7Value1) new.
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: ('exportExecutionBlock') put: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (recoveredValue0) at: ('exportExecutionBlock') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

