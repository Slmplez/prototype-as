"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20162d70; bytecode file offset 0xa5f67c"
!AMLXcpUSBParameters methodsFor: 'recovered'!
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

"ASDBase.ic method 0x20162ed8; bytecode file offset 0xa5f7e4"
!AMLXcpUSBParameters methodsFor: 'recovered'!
uInt2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (2) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20162f50; bytecode file offset 0xa5f8ac"
!AMLXcpUSBParameters methodsFor: 'recovered'!
uInt3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (3) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20163078; bytecode file offset 0xa5f964"
!AMLXcpUSBParameters methodsFor: 'recovered'!
uChar4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (4) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20163100; bytecode file offset 0xa5f9fc"
!AMLXcpUSBParameters methodsFor: 'recovered'!
enum5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (5) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20163228; bytecode file offset 0xa5faf4"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := aml.
    recoveredValue1 := (recoveredValue0) parts.
    recoveredValue2 := [
    ^nil
].
    recoveredValue3 := (recoveredValue1) at: (8) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2019195c; bytecode file offset 0xa8e220"
!AMLXcpUSBParameters methodsFor: 'recovered'!
union6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLXcpunion66.
    recoveredValue1 := aml.
    recoveredValue2 := (recoveredValue1) parts.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue2) at: (6) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createFor: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2019198c; bytecode file offset 0xa8e250"
!AMLXcpUSBParameters methodsFor: 'recovered'!
union7
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AMLXcpunion77.
    recoveredValue1 := aml.
    recoveredValue2 := (recoveredValue1) parts.
    recoveredValue3 := [
    ^nil
].
    recoveredValue4 := (recoveredValue2) at: (7) ifAbsent: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createFor: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20219ec4; bytecode file offset 0xb16c38"
!AMLXcpUSBParameters methodsFor: 'recovered'!
dAQ
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpDaq.
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
            recoveredStack3 := [:block280db258Arg1 | 
    | block280db258Value0 block280db258Value1 block280db258Value2 |
    block280db258Value0 := block280db258Arg1.
    block280db258Value1 := (block280db258Value0) name.
    block280db258Value2 := (block280db258Value1) = ('DAQ').
    block280db258Value2
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
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20219f30; bytecode file offset 0xb16c38"
!AMLXcpUSBParameters methodsFor: 'recovered'!
pGM
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpPgm.
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
            recoveredStack3 := [:block280db2c4Arg1 | 
    | block280db2c4Value0 block280db2c4Value1 block280db2c4Value2 |
    block280db2c4Value0 := block280db2c4Arg1.
    block280db2c4Value1 := (block280db2c4Value0) name.
    block280db2c4Value2 := (block280db2c4Value1) = ('PGM').
    block280db2c4Value2
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
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021a074; bytecode file offset 0xb16c38"
!AMLXcpUSBParameters methodsFor: 'recovered'!
pAG
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpPag.
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
            recoveredStack3 := [:block280db408Arg1 | 
    | block280db408Value0 block280db408Value1 block280db408Value2 |
    block280db408Value0 := block280db408Arg1.
    block280db408Value1 := (block280db408Value0) name.
    block280db408Value2 := (block280db408Value1) = ('PAG').
    block280db408Value2
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
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021a104; bytecode file offset 0xb16c38"
!AMLXcpUSBParameters methodsFor: 'recovered'!
pROTOCOLLAYER
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpProtocolLayer.
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
            recoveredStack3 := [:block280db498Arg1 | 
    | block280db498Value0 block280db498Value1 block280db498Value2 |
    block280db498Value0 := block280db498Arg1.
    block280db498Value1 := (block280db498Value0) name.
    block280db498Value2 := (block280db498Value1) = ('PROTOCOL_LAYER').
    block280db498Value2
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
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021a1dc; bytecode file offset 0xb16c38"
!AMLXcpUSBParameters methodsFor: 'recovered'!
dAQEVENT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpdAQEVENT14.
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
            recoveredStack3 := [:block280db570Arg1 | 
    | block280db570Value0 block280db570Value1 block280db570Value2 |
    block280db570Value0 := block280db570Arg1.
    block280db570Value1 := (block280db570Value0) name.
    block280db570Value2 := (block280db570Value1) = ('DAQ_EVENT').
    block280db570Value2
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
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021a2d8; bytecode file offset 0xb16c38"
!AMLXcpUSBParameters methodsFor: 'recovered'!
sEGMENT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpSegment.
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
            recoveredStack3 := [:block280db66cArg1 | 
    | block280db66cValue0 block280db66cValue1 block280db66cValue2 |
    block280db66cValue0 := block280db66cArg1.
    block280db66cValue1 := (block280db66cValue0) name.
    block280db66cValue2 := (block280db66cValue1) = ('SEGMENT').
    block280db66cValue2
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
            recoveredStack1 := (recoveredStack1) createFor: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2028d430; bytecode file offset 0xb89d1c"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8ALTERNATESETTINGNO
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
            recoveredStack2 := 8.
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
            recoveredStack2 := [:block280e280cArg1 | 
    | block280e280cValue0 block280e280cValue1 block280e280cValue2 |
    block280e280cValue0 := block280e280cArg1.
    block280e280cValue1 := (block280e280cValue0) name.
    block280e280cValue2 := (block280e280cValue1) = ('ALTERNATE_SETTING_NO').
    block280e280cValue2
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

"ASDBase.ic method 0x2028d450; bytecode file offset 0xb89d1c"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8INTERFACESTRINGDESCRIPTOR
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
            recoveredStack2 := 8.
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
            recoveredStack2 := [:block280e2830Arg1 | 
    | block280e2830Value0 block280e2830Value1 block280e2830Value2 |
    block280e2830Value0 := block280e2830Arg1.
    block280e2830Value1 := (block280e2830Value0) name.
    block280e2830Value2 := (block280e2830Value1) = ('INTERFACE_STRING_DESCRIPTOR').
    block280e2830Value2
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

"ASDBase.ic method 0x202cef04; bytecode file offset 0xbcb7d8"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8INEPONLYEVSERV
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AMLXcpepparameters.
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
            recoveredStack3 := 8.
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
            recoveredStack3 := [:block280e5f74Arg1 | 
    | block280e5f74Value0 block280e5f74Value1 block280e5f74Value2 |
    block280e5f74Value0 := block280e5f74Arg1.
    block280e5f74Value1 := (block280e5f74Value0) name.
    block280e5f74Value2 := (block280e5f74Value1) = ('IN_EP_ONLY_EVSERV').
    block280e5f74Value2
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

"ASDBase.ic method 0x202f4b1c; bytecode file offset 0xbf13f4"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8DAQLISTUSBENDPOINT
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
            recoveredStack2 := 8.
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
            recoveredStack2 := 6.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultReturn: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block280e8914Arg1 | 
    | block280e8914Value0 block280e8914Value1 block280e8914Value2 |
    block280e8914Value0 := AMLXcptaggedStruct8DAQLISTUSBENDPOINT1.
    block280e8914Value1 := block280e8914Arg1.
    block280e8914Value2 := (block280e8914Value0) createFor: (block280e8914Value1).
    block280e8914Value2
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033ac68; bytecode file offset 0xc37548"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8Col3
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
            recoveredStack2 := 8.
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
            recoveredStack2 := 3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block280ed7d4Arg1 | 
    | block280ed7d4Stack0 block280ed7d4Stack1 block280ed7d4Stack2 block280ed7d4Stack3 block280ed7d4PC block280ed7d4Step block280ed7d4Done block280ed7d4Result |
    block280ed7d4Stack0 := self.
    block280ed7d4PC := 4.
    block280ed7d4Done := false.
    [block280ed7d4Done not] whileTrue: [
        block280ed7d4Step := block280ed7d4PC.
        block280ed7d4Step = 4 ifTrue: [
            block280ed7d4Stack1 := block280ed7d4Arg1.
            block280ed7d4PC := 5.
        ].
        block280ed7d4Step = 5 ifTrue: [
            block280ed7d4Stack2 := [:block280ed7f8Arg1 | 
    | block280ed7f8Value0 block280ed7f8Value1 block280ed7f8Value2 |
    block280ed7f8Value0 := AMLXcpepparameters.
    block280ed7f8Value1 := block280ed7f8Arg1.
    block280ed7f8Value2 := (block280ed7f8Value0) createFor: (block280ed7f8Value1).
    block280ed7f8Value2
].
            block280ed7d4PC := 7.
        ].
        block280ed7d4Step = 7 ifTrue: [
            block280ed7d4PC := 16.
        ].
        block280ed7d4Step = 16 ifTrue: [
            block280ed7d4Stack1 := (block280ed7d4Stack1) collect: (block280ed7d4Stack2).
            block280ed7d4PC := 18.
        ].
        block280ed7d4Step = 18 ifTrue: [
            block280ed7d4Result := block280ed7d4Stack1.
            block280ed7d4Done := true.
        ].
    ].
    block280ed7d4Result
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultReturn: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033acdc; bytecode file offset 0xc375bc"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8Col4
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
            recoveredStack2 := 8.
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
            recoveredStack2 := 4.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block280ed81cArg1 | 
    | block280ed81cStack0 block280ed81cStack1 block280ed81cStack2 block280ed81cStack3 block280ed81cPC block280ed81cStep block280ed81cDone block280ed81cResult |
    block280ed81cStack0 := self.
    block280ed81cPC := 4.
    block280ed81cDone := false.
    [block280ed81cDone not] whileTrue: [
        block280ed81cStep := block280ed81cPC.
        block280ed81cStep = 4 ifTrue: [
            block280ed81cStack1 := block280ed81cArg1.
            block280ed81cPC := 5.
        ].
        block280ed81cStep = 5 ifTrue: [
            block280ed81cStack2 := [:block280ed840Arg1 | 
    | block280ed840Value0 block280ed840Value1 block280ed840Value2 |
    block280ed840Value0 := AMLXcpepparameters.
    block280ed840Value1 := block280ed840Arg1.
    block280ed840Value2 := (block280ed840Value0) createFor: (block280ed840Value1).
    block280ed840Value2
].
            block280ed81cPC := 7.
        ].
        block280ed81cStep = 7 ifTrue: [
            block280ed81cPC := 16.
        ].
        block280ed81cStep = 16 ifTrue: [
            block280ed81cStack1 := (block280ed81cStack1) collect: (block280ed81cStack2).
            block280ed81cPC := 18.
        ].
        block280ed81cStep = 18 ifTrue: [
            block280ed81cResult := block280ed81cStack1.
            block280ed81cDone := true.
        ].
    ].
    block280ed81cResult
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultReturn: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2033ad50; bytecode file offset 0xc37630"
!AMLXcpUSBParameters methodsFor: 'recovered'!
taggedStruct8Col6
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
            recoveredStack2 := 8.
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
            recoveredStack2 := 6.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:block280ed864Arg1 | 
    | block280ed864Stack0 block280ed864Stack1 block280ed864Stack2 block280ed864Stack3 block280ed864PC block280ed864Step block280ed864Done block280ed864Result |
    block280ed864Stack0 := self.
    block280ed864PC := 4.
    block280ed864Done := false.
    [block280ed864Done not] whileTrue: [
        block280ed864Step := block280ed864PC.
        block280ed864Step = 4 ifTrue: [
            block280ed864Stack1 := block280ed864Arg1.
            block280ed864PC := 5.
        ].
        block280ed864Step = 5 ifTrue: [
            block280ed864Stack2 := [:block280ed888Arg1 | 
    | block280ed888Value0 block280ed888Value1 block280ed888Value2 |
    block280ed888Value0 := AMLXcptaggedStruct8DAQLISTUSBENDPOINT1.
    block280ed888Value1 := block280ed888Arg1.
    block280ed888Value2 := (block280ed888Value0) createFor: (block280ed888Value1).
    block280ed888Value2
].
            block280ed864PC := 7.
        ].
        block280ed864Step = 7 ifTrue: [
            block280ed864PC := 16.
        ].
        block280ed864Step = 16 ifTrue: [
            block280ed864Stack1 := (block280ed864Stack1) collect: (block280ed864Stack2).
            block280ed864PC := 18.
        ].
        block280ed864Step = 18 ifTrue: [
            block280ed864Result := block280ed864Stack1.
            block280ed864Done := true.
        ].
    ].
    block280ed864Result
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultReturn: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

