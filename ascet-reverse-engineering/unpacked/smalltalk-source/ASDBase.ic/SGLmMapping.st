"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c02c; bytecode file offset 0x908be4"
!SGLmMapping methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) instancePathSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002757c; bytecode file offset 0x924260"
!SGLmMapping methodsFor: 'recovered'!
hasTarget
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) instancePathTarget.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065e14; bytecode file offset 0x963428"
!SGLmMapping methodsFor: 'recovered'!
source
    | recoveredValue0 |
    recoveredValue0 := source.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200674f4; bytecode file offset 0x9646f8"
!SGLmMapping methodsFor: 'recovered'!
instancePathSource
    | recoveredValue0 |
    recoveredValue0 := instancePathSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068274; bytecode file offset 0x965b90"
!SGLmMapping methodsFor: 'recovered'!
instancePathTarget
    | recoveredValue0 |
    recoveredValue0 := instancePathTarget.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be7bc; bytecode file offset 0x9bb178"
!SGLmMapping methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    source := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec10; bytecode file offset 0x9bc0b4"
!SGLmMapping methodsFor: 'recovered'!
instancePathSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instancePathSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c07bc; bytecode file offset 0x9bd228"
!SGLmMapping methodsFor: 'recovered'!
instancePathTarget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instancePathTarget := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201f569c; bytecode file offset 0xaf1f6c"
!SGLmMapping methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := (self) instancePathSource.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPutAll: (' to ').
    recoveredValue6 := (self) instancePathTarget.
    (recoveredValue1) nextPutAll: (recoveredValue6).
    ^self
! !

