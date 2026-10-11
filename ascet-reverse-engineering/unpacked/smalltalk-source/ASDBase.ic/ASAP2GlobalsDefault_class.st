"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012594; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentByte
    | recoveredValue0 |
    recoveredValue0 := AlignmentByte.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013890; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentDWord
    | recoveredValue0 |
    recoveredValue0 := AlignmentDWord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200139c8; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentReal64
    | recoveredValue0 |
    recoveredValue0 := AlignmentReal64.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013d58; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentReal32
    | recoveredValue0 |
    recoveredValue0 := AlignmentReal32.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014214; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
monitor
    | recoveredValue0 |
    recoveredValue0 := Monitor.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014d18; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
recordLayout
    | recoveredValue0 |
    recoveredValue0 := RecordLayout.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014d30; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentWord
    | recoveredValue0 |
    recoveredValue0 := AlignmentWord.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014e44; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
a2ml
    | recoveredValue0 |
    recoveredValue0 := A2ML.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001545c; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
useAML
    | recoveredValue0 |
    recoveredValue0 := UseAML.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015618; bytecode file offset 0x912098"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
byteOrder
    | recoveredValue0 |
    recoveredValue0 := ByteOrder.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053e1c; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
a2ml: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    A2ML := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20053e70; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
recordLayout: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    RecordLayout := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20053f24; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
monitor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Monitor := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20053fb4; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentReal32: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AlignmentReal32 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200541a0; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AlignmentWord := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2005435c; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentReal64: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AlignmentReal64 := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054488; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentByte: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AlignmentByte := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200546bc; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
useAML: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    UseAML := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200546f8; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
alignmentDWord: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    AlignmentDWord := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200548c0; bytecode file offset 0x951190"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
byteOrder: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ByteOrder := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2036fad8; bytecode file offset 0xc6c3e8"
!ASAP2GlobalsDefault class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := ETASMsbLast.
    recoveredValue1 := (recoveredValue0) create.
    (self) byteOrder: (recoveredValue1).
    (self) recordLayout: (nil).
    recoveredValue2 := ETASAlignmentByte.
    recoveredValue3 := (recoveredValue2) createDefault.
    (self) alignmentByte: (recoveredValue3).
    recoveredValue4 := ETASAlignmentWord.
    recoveredValue5 := (recoveredValue4) createDefault.
    (self) alignmentWord: (recoveredValue5).
    recoveredValue6 := ETASAlignmentDWord.
    recoveredValue7 := (recoveredValue6) createDefault.
    (self) alignmentDWord: (recoveredValue7).
    recoveredValue8 := ETASAlignmentReal32.
    recoveredValue9 := (recoveredValue8) createDefault.
    (self) alignmentReal32: (recoveredValue9).
    recoveredValue10 := ETASAlignmentReal64.
    recoveredValue11 := (recoveredValue10) createDefault.
    (self) alignmentReal64: (recoveredValue11).
    recoveredValue12 := GlobalInfoController.
    recoveredValue13 := (recoveredValue12) instance.
    (self) monitor: (recoveredValue13).
    recoveredValue14 := OrderedCollection.
    recoveredValue15 := (recoveredValue14) new.
    (self) a2ml: (recoveredValue15).
    recoveredValue16 := AMLXcpOnlyState.
    (self) useAML: (recoveredValue16).
    ^self
! !

