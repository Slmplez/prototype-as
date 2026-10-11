"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20003238; bytecode file offset 0x7f418"
!CwExposeEvent methodsFor: 'recovered'!
count
    | recoveredValue0 |
    recoveredValue0 := count.
    ^recoveredValue0
! !

"winsys.ic method 0x20003320; bytecode file offset 0x7f5b8"
!CwExposeEvent methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"winsys.ic method 0x200034c8; bytecode file offset 0x7f720"
!CwExposeEvent methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"winsys.ic method 0x200035b0; bytecode file offset 0x7f878"
!CwExposeEvent methodsFor: 'recovered'!
width
    | recoveredValue0 |
    recoveredValue0 := width.
    ^recoveredValue0
! !

"winsys.ic method 0x200037d8; bytecode file offset 0x7f9b8"
!CwExposeEvent methodsFor: 'recovered'!
height
    | recoveredValue0 |
    recoveredValue0 := height.
    ^recoveredValue0
! !

"winsys.ic method 0x200077d4; bytecode file offset 0x83a6c"
!CwExposeEvent methodsFor: 'recovered'!
count: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    count := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200078d0; bytecode file offset 0x83bb0"
!CwExposeEvent methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007ad0; bytecode file offset 0x83ce8"
!CwExposeEvent methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007be8; bytecode file offset 0x83df0"
!CwExposeEvent methodsFor: 'recovered'!
width: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    width := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007c88; bytecode file offset 0x83ed0"
!CwExposeEvent methodsFor: 'recovered'!
height: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    height := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000c410; bytecode file offset 0x885e8"
!CwExposeEvent methodsFor: 'recovered'!
rectangle
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

