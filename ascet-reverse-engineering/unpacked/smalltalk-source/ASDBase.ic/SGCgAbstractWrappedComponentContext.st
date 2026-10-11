"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a2ec; bytecode file offset 0x908be4"
!SGCgAbstractWrappedComponentContext methodsFor: 'recovered'!
componentContext
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002cf84; bytecode file offset 0x934580"
!SGCgAbstractWrappedComponentContext methodsFor: 'recovered'!
genContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentContext.
    recoveredValue1 := (recoveredValue0) genContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034b34; bytecode file offset 0x934580"
!SGCgAbstractWrappedComponentContext methodsFor: 'recovered'!
ileComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentContext.
    recoveredValue1 := (recoveredValue0) ileComponent.
    ^recoveredValue1
! !

