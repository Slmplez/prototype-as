"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20056154; bytecode file offset 0x952a9c"
!SGIlFraction methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fraction: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062578; bytecode file offset 0x95f8b0"
!SGIlFraction methodsFor: 'recovered'!
isIleRepresentable
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) interval.
    recoveredValue2 := (recoveredValue0) isIleRepresentableInterval: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007cf5c; bytecode file offset 0x97c330"
!SGIlFraction methodsFor: 'recovered'!
isIleRepresentableFraction
    ^false
! !

