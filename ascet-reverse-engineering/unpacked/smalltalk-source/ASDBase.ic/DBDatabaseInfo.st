"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b8a30; bytecode file offset 0x9b534c"
!DBDatabaseInfo methodsFor: 'recovered'!
logicalName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('logicalName') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8a70; bytecode file offset 0x9b534c"
!DBDatabaseInfo methodsFor: 'recovered'!
applicationInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('applicationInfo') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b8a80; bytecode file offset 0x9b534c"
!DBDatabaseInfo methodsFor: 'recovered'!
databaseVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('databaseVersion') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce3c0; bytecode file offset 0x9caca8"
!DBDatabaseInfo methodsFor: 'recovered'!
databaseVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('databaseVersion') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce3d4; bytecode file offset 0x9caca8"
!DBDatabaseInfo methodsFor: 'recovered'!
applicationInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('applicationInfo') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce3e8; bytecode file offset 0x9caca8"
!DBDatabaseInfo methodsFor: 'recovered'!
logicalName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := properties.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('logicalName') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a7f4c; bytecode file offset 0xaa4818"
!DBDatabaseInfo methodsFor: 'recovered'!
dbConfigurationAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'dbCconfiguration'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280d3140Value0 block280d3140Value1 |
    block280d3140Value0 := LookupTable.
    block280d3140Value1 := (block280d3140Value0) new.
    block280d3140Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dba90; bytecode file offset 0xad8360"
!DBDatabaseInfo methodsFor: 'recovered'!
dbConfigurationAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := properties.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'dbCconfiguration'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280d5e88Value0 block280d5e88Value1 |
    block280d5e88Value0 := LookupTable.
    block280d5e88Value1 := (block280d5e88Value0) new.
    block280d5e88Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) modified.
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

"ASDBase.ic method 0x202601ec; bytecode file offset 0xb5cad4"
!DBDatabaseInfo methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    properties := recoveredValue1.
    recoveredValue2 := properties.
    recoveredValue3 := Date.
    recoveredValue4 := (recoveredValue3) today.
    recoveredValue5 := (recoveredValue4) printString.
    recoveredValue6 := (recoveredValue5) , (' ').
    recoveredValue7 := Time.
    recoveredValue8 := (recoveredValue7) now.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := (recoveredValue6) , (recoveredValue9).
    (recoveredValue2) at: ('create') put: (recoveredValue10).
    ^self
! !

