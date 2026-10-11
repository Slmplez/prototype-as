"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20065a14; bytecode file offset 0x963428"
!ASDMemorySegment methodsFor: 'recovered'!
id
    | recoveredValue0 |
    recoveredValue0 := id.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006778c; bytecode file offset 0x9646f8"
!ASDMemorySegment methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069074; bytecode file offset 0x965b90"
!ASDMemorySegment methodsFor: 'recovered'!
priority
    | recoveredValue0 |
    recoveredValue0 := priority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac940; bytecode file offset 0x9a9210"
!ASDMemorySegment methodsFor: 'recovered'!
defaultForCategory: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := default.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b8ec8; bytecode file offset 0x9b5784"
!ASDMemorySegment methodsFor: 'recovered'!
defaultForCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := default.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be364; bytecode file offset 0x9bb178"
!ASDMemorySegment methodsFor: 'recovered'!
id: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    id := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beee8; bytecode file offset 0x9bc0b4"
!ASDMemorySegment methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    label := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c038c; bytecode file offset 0x9bd228"
!ASDMemorySegment methodsFor: 'recovered'!
priority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    priority := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa0cc; bytecode file offset 0x9f6a08"
!ASDMemorySegment methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    default := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2041d384; bytecode file offset 0xd19c78"
!ASDMemorySegment methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('MemorySegment').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('ID: ').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) id.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) nextPutAll: ('Label: ').
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := (self) label.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) cr.
    recoveredValue11 := recoveredValue0.
    (recoveredValue11) nextPutAll: ('Priority: ').
    recoveredValue12 := recoveredValue0.
    recoveredValue13 := (self) priority.
    recoveredValue14 := (recoveredValue13) asString.
    (recoveredValue12) nextPutAll: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) cr.
    recoveredValue16 := default.
    recoveredValue17 := (recoveredValue16) keys.
    recoveredValue18 := (recoveredValue17) asSortedCollection.
    recoveredValue19 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 recoveredBlock66Value4 recoveredBlock66Value5 recoveredBlock66Value6 recoveredBlock66Value7 recoveredBlock66Value8 |
    recoveredBlock66Value0 := recoveredArg1.
    recoveredBlock66Value1 := recoveredBlock66Value0.
    (recoveredBlock66Value1) nextPutAll: ('Default for ').
    recoveredBlock66Value2 := recoveredBlock66Value0.
    recoveredBlock66Value3 := recoveredBlock66Arg1.
    (recoveredBlock66Value2) nextPutAll: (recoveredBlock66Value3).
    recoveredBlock66Value4 := recoveredBlock66Value0.
    (recoveredBlock66Value4) nextPutAll: (': ').
    recoveredBlock66Value5 := recoveredBlock66Value0.
    recoveredBlock66Value6 := recoveredBlock66Arg1.
    recoveredBlock66Value7 := (self) defaultForCategory: (recoveredBlock66Value6).
    (recoveredBlock66Value5) nextPutAll: (recoveredBlock66Value7).
    recoveredBlock66Value8 := (recoveredBlock66Value0) cr.
    recoveredBlock66Value8
].
    (recoveredValue18) do: (recoveredValue19).
    ^self
! !

