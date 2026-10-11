"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d648; bytecode file offset 0x92209c"
!SGBdlWhileBlock methodsFor: 'recovered'!
errLabel
    ^'While'
! !

"ASDBase.ic method 0x200492ec; bytecode file offset 0x947128"
!SGBdlWhileBlock methodsFor: 'recovered'!
thenPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) bdlWhileName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200656e8; bytecode file offset 0x962104"
!SGBdlWhileBlock methodsFor: 'recovered'!
stmntList
    | recoveredValue0 |
    recoveredValue0 := super thenStmntList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20233b94; bytecode file offset 0xb3046c"
!SGBdlWhileBlock methodsFor: 'recovered'!
buildMdl: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) conditionPortArgument.
    (recoveredValue0) buildMdl.
    recoveredValue1 := (self) mdlBuilder.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) source.
    (recoveredValue2) source: (recoveredValue3).
    (recoveredValue1) block.
    recoveredValue4 := (self) stmntList.
    (recoveredValue4) buildMdl.
    recoveredValue5 := (self) mdlBuilder.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) endBlock.
    recoveredValue7 := recoveredValue5.
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) source.
    (recoveredValue7) source: (recoveredValue9).
    (recoveredValue5) while.
    ^self
! !

