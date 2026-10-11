"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000c68; bytecode file offset 0x8ffcfc"
!SGIlAbstractAspect methodsFor: 'recovered'!
prepareCodeGeneration
    ^self
! !

"ASDBase.ic method 0x2003be94; bytecode file offset 0x9387a0"
!SGIlAbstractAspect methodsFor: 'recovered'!
abstractNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) innerBlock.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006633c; bytecode file offset 0x963428"
!SGIlAbstractAspect methodsFor: 'recovered'!
innerBlock
    | recoveredValue0 |
    recoveredValue0 := innerBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20087348; bytecode file offset 0x983c18"
!SGIlAbstractAspect methodsFor: 'recovered'!
mux: recoveredArg1 condExpr: recoveredArg2 innerBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) visit: (recoveredValue0) innerBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087354; bytecode file offset 0x983c18"
!SGIlAbstractAspect methodsFor: 'recovered'!
multiplexExpr: recoveredArg1 condExpr: recoveredArg2 innerBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) visit: (recoveredValue0) innerBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20087360; bytecode file offset 0x983c18"
!SGIlAbstractAspect methodsFor: 'recovered'!
stmnt: recoveredArg1 expr: recoveredArg2 innerBlock: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg3.
    recoveredValue2 := (self) visit: (recoveredValue0) innerBlock: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2023530c; bytecode file offset 0xb31bc8"
!SGIlAbstractAspect methodsFor: 'recovered'!
visit: recoveredArg1 innerBlock: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    innerBlock := recoveredValue0.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (self) visitNode: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue2 := [
    innerBlock := nil.
    nil
].
    recoveredValue3 := (recoveredValue1) ensure: (recoveredValue2).
    ^recoveredValue3
! !

