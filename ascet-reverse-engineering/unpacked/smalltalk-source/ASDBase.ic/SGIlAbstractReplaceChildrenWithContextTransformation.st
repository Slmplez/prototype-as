"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002cfc4; bytecode file offset 0x934580"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
ileComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentContext.
    recoveredValue1 := (recoveredValue0) ileComponent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032544; bytecode file offset 0x934580"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
elementList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ileComponent.
    recoveredValue1 := (recoveredValue0) elementList.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036d34; bytecode file offset 0x934580"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
genContext
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentContext.
    recoveredValue1 := (recoveredValue0) genContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200680e4; bytecode file offset 0x965b90"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
componentContext
    | recoveredValue0 |
    recoveredValue0 := componentContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077e8c; bytecode file offset 0x9757c8"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
mustBeActivated
    ^true
! !

"ASDBase.ic method 0x200c064c; bytecode file offset 0x9bd228"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
componentContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015440c; bytecode file offset 0xa50d00"
!SGIlAbstractReplaceChildrenWithContextTransformation methodsFor: 'recovered'!
pmiCodeBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) code.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (self) visitNode: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue4 := (recoveredValue2) collect: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createNoOpCode: (recoveredValue4).
    ^recoveredValue5
! !

