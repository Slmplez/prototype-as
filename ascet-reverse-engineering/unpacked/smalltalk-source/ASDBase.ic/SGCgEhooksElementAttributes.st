"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a8a4; bytecode file offset 0x908be4"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
isValidElementAttributes
    | recoveredValue0 |
    recoveredValue0 := (self) valid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20043c2c; bytecode file offset 0x9451f8"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
arrayIndex
    | recoveredValue0 |
    recoveredValue0 := (self) getStringAttribute: ('ArrayIndex').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20044d5c; bytecode file offset 0x9451f8"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
conversion
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolAttribute: ('Conversion').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004528c; bytecode file offset 0x9451f8"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
valid
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolAttribute: ('Valid').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004653c; bytecode file offset 0x9451f8"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
measurementName
    | recoveredValue0 |
    recoveredValue0 := (self) getStringAttribute: ('MeasurementName').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200476fc; bytecode file offset 0x9451f8"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := (self) getAttribute: ('Name').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004789c; bytecode file offset 0x9451f8"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
isBackupCopy
    | recoveredValue0 |
    recoveredValue0 := (self) getBoolAttribute: ('BackupCopy').
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a3320; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
measurementName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('MeasurementName') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a33d0; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
modelBlockPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('ModelBlockPath') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3410; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
valid: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('Valid') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3690; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
conversion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('Conversion') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3740; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
isBackupCopy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('BackupCopy') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3810; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
arrayIndex: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('ArrayIndex') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a4070; bytecode file offset 0x9a0b4c"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setAttribute: ('Name') value: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20315900; bytecode file offset 0xc121dc"
!SGCgEhooksElementAttributes methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attrTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280eb200Arg1 :block280eb200Arg2 | 
    | block280eb200Value0 block280eb200Value1 block280eb200Value2 block280eb200Value3 block280eb200Value4 |
    block280eb200Value0 := block280eb200Arg1.
    block280eb200Value1 := (block280eb200Value0) asString.
    block280eb200Value2 := block280eb200Arg2.
    block280eb200Value3 := (block280eb200Value2) asString.
    block280eb200Value4 := (block280eb200Value1) < (block280eb200Value3).
    block280eb200Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 recoveredBlock20Value10 |
    recoveredBlock20Value0 := recoveredArg1.
    (recoveredBlock20Value0) cr.
    recoveredBlock20Value1 := recoveredArg1.
    recoveredBlock20Value2 := recoveredBlock20Value1.
    recoveredBlock20Value3 := recoveredBlock20Arg1.
    recoveredBlock20Value4 := (recoveredBlock20Value3) asString.
    (recoveredBlock20Value2) nextPutAll: (recoveredBlock20Value4).
    recoveredBlock20Value5 := recoveredBlock20Value1.
    (recoveredBlock20Value5) nextPutAll: (' = ').
    recoveredBlock20Value6 := (self) attrTable.
    recoveredBlock20Value7 := recoveredBlock20Arg1.
    recoveredBlock20Value8 := (recoveredBlock20Value6) at: (recoveredBlock20Value7).
    recoveredBlock20Value9 := (recoveredBlock20Value8) asString.
    recoveredBlock20Value10 := (recoveredBlock20Value1) nextPutAll: (recoveredBlock20Value9).
    recoveredBlock20Value10
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

