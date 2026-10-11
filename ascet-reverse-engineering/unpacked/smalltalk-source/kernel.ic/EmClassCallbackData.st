"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003c28; bytecode file offset 0x4ec04"
!EmClassCallbackData methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := className.
    ^recoveredValue0
! !

"kernel.ic method 0x20003d14; bytecode file offset 0x4ed88"
!EmClassCallbackData methodsFor: 'recovered'!
applicationName
    | recoveredValue0 |
    recoveredValue0 := applicationName.
    ^recoveredValue0
! !

"kernel.ic method 0x200075c4; bytecode file offset 0x52538"
!EmClassCallbackData methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    className := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007678; bytecode file offset 0x52654"
!EmClassCallbackData methodsFor: 'recovered'!
applicationName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    applicationName := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200160a0; bytecode file offset 0x60fcc"
!EmClassCallbackData methodsFor: 'recovered'!
debugPrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: ('(').
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) applicationName.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) nextPutAll: ('.').
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := (self) className.
    (recoveredValue8) nextPutAll: (recoveredValue9).
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

