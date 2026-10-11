"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20162d40; bytecode file offset 0xa5f67c"
!AMLXcptaggedStruct11TIMESTAMPSUPPORTED4 methodsFor: 'recovered'!
uInt1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162df8; bytecode file offset 0xa5f7e4"
!AMLXcptaggedStruct11TIMESTAMPSUPPORTED4 methodsFor: 'recovered'!
enum2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (2) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162fb0; bytecode file offset 0xa5f8ac"
!AMLXcptaggedStruct11TIMESTAMPSUPPORTED4 methodsFor: 'recovered'!
enum3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (3) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20163068; bytecode file offset 0xa5f964"
!AMLXcptaggedStruct11TIMESTAMPSUPPORTED4 methodsFor: 'recovered'!
taggedStruct4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (4) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2028d300; bytecode file offset 0xb89bcc"
!AMLXcptaggedStruct11TIMESTAMPSUPPORTED4 methodsFor: 'recovered'!
taggedStruct4TIMESTAMPFIXED
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := aml.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := [:block280e277cArg1 | 
    | block280e277cValue0 block280e277cValue1 block280e277cValue2 |
    block280e277cValue0 := block280e277cArg1.
    block280e277cValue1 := (block280e277cValue0) name.
    block280e277cValue2 := (block280e277cValue1) = ('TIMESTAMP_FIXED').
    block280e277cValue2
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

