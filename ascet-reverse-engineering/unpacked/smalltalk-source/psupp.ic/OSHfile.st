"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20000210; bytecode file offset 0x153b50"
!OSHfile methodsFor: 'recovered'!
ulclose
    | recoveredValue0 |
    recoveredValue0 := (self) lclose.
    ^recoveredValue0
! !

"psupp.ic method 0x2000a94c; bytecode file offset 0x15e244"
!OSHfile methodsFor: 'recovered'!
ulread: recoveredArg1 cbBuffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) lread: (recoveredValue0) uBytes: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000a964; bytecode file offset 0x15e244"
!OSHfile methodsFor: 'recovered'!
uhwrite: recoveredArg1 cbBuffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) hwrite: (recoveredValue0) lBytes: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000a988; bytecode file offset 0x15e244"
!OSHfile methodsFor: 'recovered'!
ulwrite: recoveredArg1 cbBuffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) lwrite: (recoveredValue0) uBytes: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000a994; bytecode file offset 0x15e244"
!OSHfile methodsFor: 'recovered'!
uhread: recoveredArg1 cbBuffer: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) hread: (recoveredValue0) lBytes: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2000a9a0; bytecode file offset 0x15e244"
!OSHfile methodsFor: 'recovered'!
ullseek: recoveredArg1 nOrigin: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) llseek: (recoveredValue0) iOrigin: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001a618; bytecode file offset 0x16e2c4"
!OSHfile methodsFor: 'recovered'!
lclose
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OSHfile.
    recoveredValue1 := Lclose.
    recoveredValue2 := (recoveredValue1) callWith: (self).
    recoveredValue3 := (recoveredValue0) immediate: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x200208fc; bytecode file offset 0x174df8"
!OSHfile methodsFor: 'recovered'!
hread: recoveredArg1 lBytes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Hread.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002093c; bytecode file offset 0x174df8"
!OSHfile methodsFor: 'recovered'!
lread: recoveredArg1 uBytes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Lread.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x2002125c; bytecode file offset 0x174df8"
!OSHfile methodsFor: 'recovered'!
llseek: recoveredArg1 iOrigin: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Llseek.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) callWith: (self) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"psupp.ic method 0x20023fe4; bytecode file offset 0x1778d4"
!OSHfile methodsFor: 'recovered'!
lwrite: recoveredArg1 uBytes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Lwrite.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"psupp.ic method 0x2002400c; bytecode file offset 0x1778d4"
!OSHfile methodsFor: 'recovered'!
hwrite: recoveredArg1 lBytes: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Hwrite.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asPSZ.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) callWith: (self) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

