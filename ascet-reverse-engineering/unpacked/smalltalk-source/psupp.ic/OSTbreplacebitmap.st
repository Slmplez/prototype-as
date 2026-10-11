"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x20002bdc; bytecode file offset 0x157170"
!OSTbreplacebitmap methodsFor: 'recovered'!
nIDOld
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (4).
    ^recoveredValue0
! !

"psupp.ic method 0x20004d4c; bytecode file offset 0x1589a4"
!OSTbreplacebitmap methodsFor: 'recovered'!
nIDNew
    | recoveredValue0 |
    recoveredValue0 := (self) uint32At: (12).
    ^recoveredValue0
! !

"psupp.ic method 0x2000578c; bytecode file offset 0x159294"
!OSTbreplacebitmap methodsFor: 'recovered'!
nButtons
    | recoveredValue0 |
    recoveredValue0 := (self) int32At: (16).
    ^recoveredValue0
! !

"psupp.ic method 0x2001154c; bytecode file offset 0x165330"
!OSTbreplacebitmap methodsFor: 'recovered'!
hInstOld: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20012a4c; bytecode file offset 0x166e00"
!OSTbreplacebitmap methodsFor: 'recovered'!
nIDOld: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (4) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001484c; bytecode file offset 0x1683c0"
!OSTbreplacebitmap methodsFor: 'recovered'!
hInstNew: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (8) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001535c; bytecode file offset 0x169290"
!OSTbreplacebitmap methodsFor: 'recovered'!
nIDNew: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) uint32At: (12) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x20015d34; bytecode file offset 0x169eb4"
!OSTbreplacebitmap methodsFor: 'recovered'!
nButtons: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) int32At: (16) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2001adac; bytecode file offset 0x16ea70"
!OSTbreplacebitmap methodsFor: 'recovered'!
hInstOld
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (0).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

"psupp.ic method 0x2001bc38; bytecode file offset 0x16f8e8"
!OSTbreplacebitmap methodsFor: 'recovered'!
hInstNew
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSHinstance.
    recoveredValue1 := (self) uint32At: (8).
    recoveredValue2 := (recoveredValue0) immediate: (recoveredValue1).
    ^recoveredValue2
! !

