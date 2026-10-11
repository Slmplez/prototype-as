"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20162d50; bytecode file offset 0xa5f67c"
!AMLEtasodxhandlingeTASODXHANDLINGAMLTaggedStruct2ODXFLASHIDREF1 methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20162e08; bytecode file offset 0xa5f7e4"
!AMLEtasodxhandlingeTASODXHANDLINGAMLTaggedStruct2ODXFLASHIDREF1 methodsFor: 'recovered'!
taggedStruct2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (2) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x202cecf4; bytecode file offset 0xbcb5c8"
!AMLEtasodxhandlingeTASODXHANDLINGAMLTaggedStruct2ODXFLASHIDREF1 methodsFor: 'recovered'!
taggedStruct2ODXFLASHCONFIG
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLEtasodxhandlingtaggedStruct2ODXFLASHCONFIG1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := aml.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [:block280e5e54Arg1 | 
    | block280e5e54Value0 block280e5e54Value1 block280e5e54Value2 |
    block280e5e54Value0 := block280e5e54Arg1.
    block280e5e54Value1 := (block280e5e54Value0) name.
    block280e5e54Value2 := (block280e5e54Value1) = ('ODX_FLASH_CONFIG').
    block280e5e54Value2
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

