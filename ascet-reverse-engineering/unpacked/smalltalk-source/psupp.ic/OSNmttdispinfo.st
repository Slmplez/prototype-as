"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000b82c; bytecode file offset 0x15f124"
!OSNmttdispinfo methodsFor: 'recovered'!
uFlags
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (100).
    ^recoveredValue0
! !

"psupp.ic method 0x2000b91c; bytecode file offset 0x15f1d8"
!OSNmttdispinfo methodsFor: 'recovered'!
lParam
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (104).
    ^recoveredValue0
! !

"psupp.ic method 0x2000d0c0; bytecode file offset 0x160b8c"
!OSNmttdispinfo methodsFor: 'recovered'!
hdr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSNmhdr.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ffbc; bytecode file offset 0x165330"
!OSNmttdispinfo methodsFor: 'recovered'!
hdr: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20014f00; bytecode file offset 0x169290"
!OSNmttdispinfo methodsFor: 'recovered'!
lpszText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001c16c; bytecode file offset 0x16fe44"
!OSNmttdispinfo methodsFor: 'recovered'!
lpszText
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSStringZ.
    recoveredValue1 := (self) uint32At: (12).
    recoveredValue2 := (recoveredValue0) address: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001eb9c; bytecode file offset 0x172464"
!OSNmttdispinfo methodsFor: 'recovered'!
hinst
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (96).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001ef9c; bytecode file offset 0x172834"
!OSNmttdispinfo methodsFor: 'recovered'!
szText
    | recoveredValue0 |
    recoveredValue0 := (self) stringAt: (16) size: (80).
    ^recoveredValue0
! !

"psupp.ic method 0x20020258; bytecode file offset 0x173b74"
!OSNmttdispinfo methodsFor: 'recovered'!
hinst: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (96) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020364; bytecode file offset 0x173c20"
!OSNmttdispinfo methodsFor: 'recovered'!
uFlags: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (100) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20020408; bytecode file offset 0x173cdc"
!OSNmttdispinfo methodsFor: 'recovered'!
lParam: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (104) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20032d90; bytecode file offset 0x186630"
!OSNmttdispinfo methodsFor: 'recovered'!
szText: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := 40.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) dbStringAt: (recoveredStack2) put: (recoveredStack3) size: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := 80.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) stringAt: (recoveredStack2) put: (recoveredStack3) size: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

