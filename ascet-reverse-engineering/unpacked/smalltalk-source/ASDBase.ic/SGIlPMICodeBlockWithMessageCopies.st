"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055254; bytecode file offset 0x952a9c"
!SGIlPMICodeBlockWithMessageCopies methodsFor: 'recovered'!
ileAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) pmiCodeBlockWithMessageCopies: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074ccc; bytecode file offset 0x9757c8"
!SGIlPMICodeBlockWithMessageCopies methodsFor: 'recovered'!
isIlePMICodeBlockWithMessageCopies
    ^true
! !

"ASDBase.ic method 0x20186f6c; bytecode file offset 0xa83848"
!SGIlPMICodeBlockWithMessageCopies methodsFor: 'recovered'!
createWithChildren: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) ileBuilder.
    recoveredValue1 := (self) source.
    recoveredValue2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) ileBuilder.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) pmiCodeBlockWithMessageCopies: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    recoveredValue3 := (recoveredValue0) useSource: (recoveredValue1) for: (recoveredValue2).
    ^recoveredValue3
! !

