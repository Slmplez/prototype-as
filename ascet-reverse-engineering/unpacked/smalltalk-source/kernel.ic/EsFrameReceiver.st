"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000b18; bytecode file offset 0x4ba40"
!EsFrameReceiver methodsFor: 'recovered'!
value: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) shouldNotImplement.
    ^recoveredValue0
! !

"kernel.ic method 0x20001f50; bytecode file offset 0x4ce64"
!EsFrameReceiver methodsFor: 'recovered'!
value
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) frame.
    recoveredValue1 := (recoveredValue0) receiver.
    ^recoveredValue1
! !

"kernel.ic method 0x20004680; bytecode file offset 0x4f5c4"
!EsFrameReceiver methodsFor: 'recovered'!
isReceiver
    ^true
! !

"kernel.ic method 0x20004748; bytecode file offset 0x4f794"
!EsFrameReceiver methodsFor: 'recovered'!
allowChanges
    ^false
! !

"kernel.ic method 0x2000aa6c; bytecode file offset 0x5598c"
!EsFrameReceiver methodsFor: 'recovered'!
storeOn: recoveredArg1 frameReference: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := ('(%1 in: %2)') bindWith: (recoveredValue2) with: (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

