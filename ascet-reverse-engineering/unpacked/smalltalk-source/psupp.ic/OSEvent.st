"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000955c; bytecode file offset 0x15cdf0"
!OSEvent methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"psupp.ic method 0x20009578; bytecode file offset 0x15ce2c"
!OSEvent methodsFor: 'recovered'!
x
    | recoveredValue0 |
    recoveredValue0 := x.
    ^recoveredValue0
! !

"psupp.ic method 0x200095d4; bytecode file offset 0x15ce70"
!OSEvent methodsFor: 'recovered'!
y
    | recoveredValue0 |
    recoveredValue0 := y.
    ^recoveredValue0
! !

"psupp.ic method 0x200095f8; bytecode file offset 0x15ceac"
!OSEvent methodsFor: 'recovered'!
screenX
    | recoveredValue0 |
    recoveredValue0 := screenX.
    ^recoveredValue0
! !

"psupp.ic method 0x2000963c; bytecode file offset 0x15cee0"
!OSEvent methodsFor: 'recovered'!
screenY
    | recoveredValue0 |
    recoveredValue0 := screenY.
    ^recoveredValue0
! !

"psupp.ic method 0x20009670; bytecode file offset 0x15cf04"
!OSEvent methodsFor: 'recovered'!
time
    | recoveredValue0 |
    recoveredValue0 := time.
    ^recoveredValue0
! !

"psupp.ic method 0x2001e048; bytecode file offset 0x1718e4"
!OSEvent methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widget := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e07c; bytecode file offset 0x171910"
!OSEvent methodsFor: 'recovered'!
x: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    x := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e090; bytecode file offset 0x171944"
!OSEvent methodsFor: 'recovered'!
y: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    y := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e0c4; bytecode file offset 0x171978"
!OSEvent methodsFor: 'recovered'!
screenX: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    screenX := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2001e108; bytecode file offset 0x17199c"
!OSEvent methodsFor: 'recovered'!
screenY: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    screenY := recoveredValue0.
    ^self
! !

"psupp.ic method 0x2002b6b4; bytecode file offset 0x17ef60"
!OSEvent methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('PR') = ('1EW4V2K').
    recoveredValue1 := OS.
    recoveredValue2 := (recoveredValue1) getMessageTime.
    recoveredValue3 := (recoveredValue2) bitAnd: (4294967295).
    time := recoveredValue3.
    ^self
! !

"psupp.ic method 0x200317ec; bytecode file offset 0x18509c"
!OSEvent methodsFor: 'recovered'!
location: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := widget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) toScreen: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) x.
    (self) x: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) y.
    (self) y: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) x.
    (self) screenX: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) y.
    (self) screenY: (recoveredValue10).
    ^self
! !

