"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000330; bytecode file offset 0x6147c"
!SstStreamMessageLog methodsFor: 'recovered'!
open
    ^self
! !

"xxx_dyn.ic method 0x20003f78; bytecode file offset 0x650c4"
!SstStreamMessageLog methodsFor: 'recovered'!
writeStream
    | recoveredValue0 |
    recoveredValue0 := writeStream.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200084c8; bytecode file offset 0x695c4"
!SstStreamMessageLog methodsFor: 'recovered'!
writeStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    writeStream := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200092b8; bytecode file offset 0x6a384"
!SstStreamMessageLog methodsFor: 'recovered'!
write: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := writeStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) flush.
    ^self
! !

"xxx_dyn.ic method 0x2000d114; bytecode file offset 0x6e1f8"
!SstStreamMessageLog methodsFor: 'recovered'!
close
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mutex.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := writeStream.
    recoveredBlock5Value1 := (recoveredBlock5Value0) close.
    recoveredBlock5Value1
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000d128; bytecode file offset 0x6e1f8"
!SstStreamMessageLog methodsFor: 'recovered'!
flush
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mutex.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := writeStream.
    recoveredBlock5Value1 := (recoveredBlock5Value0) flush.
    recoveredBlock5Value1
].
    (recoveredValue0) critical: (recoveredValue1).
    ^self
! !

