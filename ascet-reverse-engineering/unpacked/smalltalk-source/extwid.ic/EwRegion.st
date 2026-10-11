"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x2000271c; bytecode file offset 0x534f0"
!EwRegion methodsFor: 'recovered'!
region
    | recoveredValue0 |
    recoveredValue0 := region.
    ^recoveredValue0
! !

"extwid.ic method 0x20002844; bytecode file offset 0x53678"
!EwRegion methodsFor: 'recovered'!
object
    | recoveredValue0 |
    recoveredValue0 := object.
    ^recoveredValue0
! !

"extwid.ic method 0x2000295c; bytecode file offset 0x53810"
!EwRegion methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"extwid.ic method 0x20002b9c; bytecode file offset 0x53998"
!EwRegion methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"extwid.ic method 0x20002c94; bytecode file offset 0x53ae8"
!EwRegion methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"extwid.ic method 0x20002d9c; bytecode file offset 0x53c68"
!EwRegion methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"extwid.ic method 0x20006290; bytecode file offset 0x5710c"
!EwRegion methodsFor: 'recovered'!
region: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    region := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006438; bytecode file offset 0x57284"
!EwRegion methodsFor: 'recovered'!
object: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    object := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200065b0; bytecode file offset 0x57404"
!EwRegion methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200066dc; bytecode file offset 0x57568"
!EwRegion methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006854; bytecode file offset 0x576a8"
!EwRegion methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006a0c; bytecode file offset 0x577e8"
!EwRegion methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a890; bytecode file offset 0x5b66c"
!EwRegion methodsFor: 'recovered'!
boundingBox
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) x.
    recoveredValue1 := (self) y.
    recoveredValue2 := (recoveredValue0) @ (recoveredValue1).
    recoveredValue3 := (self) width.
    recoveredValue4 := (self) height.
    recoveredValue5 := (recoveredValue3) @ (recoveredValue4).
    recoveredValue6 := (recoveredValue2) extent: (recoveredValue5).
    ^recoveredValue6
! !

"extwid.ic method 0x2001e6c4; bytecode file offset 0x6f4ac"
!EwRegion methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPut: ($().
    recoveredValue4 := (self) region.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: (', ').
    recoveredValue7 := (self) object.
    recoveredValue8 := recoveredArg1.
    (recoveredValue7) printOn: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) nextPutAll: (', ').
    recoveredValue10 := (self) boundingBox.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) printOn: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue12) nextPut: ($)).
    ^self
! !

