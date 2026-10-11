"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005d2b8; bytecode file offset 0x959d74"
!AMLEtasodxhandlingETASODXHANDLING methodsFor: 'recovered'!
uint1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := (recoveredValue1) firstOrNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e50f0; bytecode file offset 0xae1a44"
!AMLEtasodxhandlingETASODXHANDLING methodsFor: 'recovered'!
eTASODXHANDLING
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
            recoveredStack2 := [:block280d6e24Arg1 | 
    | block280d6e24Value0 block280d6e24Value1 block280d6e24Value2 |
    block280d6e24Value0 := block280d6e24Arg1.
    block280d6e24Value1 := (block280d6e24Value0) name.
    block280d6e24Value2 := (block280d6e24Value1) = ('ETAS_ODX_HANDLING').
    block280d6e24Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023b1f8; bytecode file offset 0xb37ac8"
!AMLEtasodxhandlingETASODXHANDLING methodsFor: 'recovered'!
odxFlashIdRefVersion
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack2 := 2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := [:block280dda48Arg1 | 
    | block280dda48Stack0 block280dda48Stack1 block280dda48Stack2 block280dda48Stack3 block280dda48Stack4 block280dda48PC block280dda48Step block280dda48Done block280dda48Result |
    block280dda48Stack0 := self.
    block280dda48PC := 4.
    block280dda48Done := false.
    [block280dda48Done not] whileTrue: [
        block280dda48Step := block280dda48PC.
        block280dda48Step = 4 ifTrue: [
            block280dda48Stack1 := block280dda48Arg1.
            block280dda48PC := 5.
        ].
        block280dda48Step = 5 ifTrue: [
            block280dda48Stack1 := (block280dda48Stack1) parts.
            block280dda48PC := 6.
        ].
        block280dda48Step = 6 ifTrue: [
            block280dda48Stack1 := (block280dda48Stack1) firstOrNil.
            block280dda48PC := 7.
        ].
        block280dda48Step = 7 ifTrue: [
            block280dda48Stack2 := [].
            block280dda48PC := 9.
        ].
        block280dda48Step = 9 ifTrue: [
            block280dda48Stack3 := [:block280dda6cArg1 | 
    | block280dda6cValue0 block280dda6cValue1 |
    block280dda6cValue0 := block280dda6cArg1.
    block280dda6cValue1 := (block280dda6cValue0) firstOrNil.
    block280dda6cValue1
].
            block280dda48PC := 11.
        ].
        block280dda48Step = 11 ifTrue: [
            block280dda48PC := 17.
        ].
        block280dda48Step = 17 ifTrue: [
            block280dda48Stack1 := (block280dda48Stack1) ifNil: (block280dda48Stack2) ifNotNil: (block280dda48Stack3).
            block280dda48PC := 19.
        ].
        block280dda48Step = 19 ifTrue: [
            block280dda48Result := block280dda48Stack1.
            block280dda48Done := true.
        ].
    ].
    block280dda48Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028ce50; bytecode file offset 0xb8971c"
!AMLEtasodxhandlingETASODXHANDLING methodsFor: 'recovered'!
eTASODXHANDLINGUInt1
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
            recoveredStack2 := [:block280e22fcArg1 | 
    | block280e22fcValue0 block280e22fcValue1 block280e22fcValue2 |
    block280e22fcValue0 := block280e22fcArg1.
    block280e22fcValue1 := (block280e22fcValue0) name.
    block280e22fcValue2 := (block280e22fcValue1) = ('ETAS_ODX_HANDLING').
    block280e22fcValue2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028ce9c; bytecode file offset 0xb89768"
!AMLEtasodxhandlingETASODXHANDLING methodsFor: 'recovered'!
eTASODXHANDLINGTaggedStruct2
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
            recoveredStack2 := [:block280e2320Arg1 | 
    | block280e2320Value0 block280e2320Value1 block280e2320Value2 |
    block280e2320Value0 := block280e2320Arg1.
    block280e2320Value1 := (block280e2320Value0) name.
    block280e2320Value2 := (block280e2320Value1) = ('ETAS_ODX_HANDLING').
    block280e2320Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203707a8; bytecode file offset 0xc6d084"
!AMLEtasodxhandlingETASODXHANDLING methodsFor: 'recovered'!
eTASODXHANDLINGAMLTaggedStruct2ODXFLASHIDREF
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLEtasodxhandlingeTASODXHANDLINGAMLTaggedStruct2ODXFLASHIDREF1.
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
            recoveredStack3 := [:block280f1a10Arg1 | 
    | block280f1a10Value0 block280f1a10Value1 block280f1a10Value2 |
    block280f1a10Value0 := block280f1a10Arg1.
    block280f1a10Value1 := (block280f1a10Value0) name.
    block280f1a10Value2 := (block280f1a10Value1) = ('ETAS_ODX_HANDLING').
    block280f1a10Value2
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [:block280f1a34Arg1 | 
    | block280f1a34Value0 block280f1a34Value1 block280f1a34Value2 |
    block280f1a34Value0 := block280f1a34Arg1.
    block280f1a34Value1 := (block280f1a34Value0) name.
    block280f1a34Value2 := (block280f1a34Value1) = ('ODX_FLASH_ID_REF').
    block280f1a34Value2
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) detect: (recoveredStack3) ifNone: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

