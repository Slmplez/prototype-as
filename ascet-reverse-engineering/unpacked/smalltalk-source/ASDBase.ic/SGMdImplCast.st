"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d6c4; bytecode file offset 0x934580"
!SGMdImplCast methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variable.
    recoveredValue1 := (recoveredValue0) mdlName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200348e4; bytecode file offset 0x934580"
!SGMdImplCast methodsFor: 'recovered'!
getPhysInterval
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClass.
    recoveredValue1 := (recoveredValue0) getPhysInterval.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055c44; bytecode file offset 0x952a9c"
!SGMdImplCast methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) implCast: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007498c; bytecode file offset 0x9757c8"
!SGMdImplCast methodsFor: 'recovered'!
isMdlImplCast
    ^true
! !

"ASDBase.ic method 0x200a1f64; bytecode file offset 0x99e870"
!SGMdImplCast methodsFor: 'recovered'!
mdlKey
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) rightChild.
    recoveredValue1 := (recoveredValue0) errLabel.
    recoveredValue2 := (self) variable.
    recoveredValue3 := (recoveredValue2) errLabel.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c3970; bytecode file offset 0x9c058c"
!SGMdImplCast methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201cbbe4; bytecode file offset 0xac84b4"
!SGMdImplCast methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) variable.
    recoveredValue3 := (recoveredValue2) errLabel.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPutAll: ('(').
    recoveredValue4 := (self) rightChild.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) printOn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x201f0a08; bytecode file offset 0xaed2c8"
!SGMdImplCast methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := mdlClass.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := super mdlClass.
    recoveredBlock6Value0
].
    recoveredValue2 := [
    | recoveredBlock17Value0 |
    recoveredBlock17Value0 := mdlClass.
    recoveredBlock17Value0
].
    recoveredValue3 := (recoveredValue0) ifNil: (recoveredValue1) ifNotNil: (recoveredValue2).
    ^recoveredValue3
! !

