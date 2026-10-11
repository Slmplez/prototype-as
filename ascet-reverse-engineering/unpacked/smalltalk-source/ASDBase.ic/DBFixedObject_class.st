"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2005034c; bytecode file offset 0x94d048"
!DBFixedObject class methodsFor: 'recovered'!
fixedID
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20103640; bytecode file offset 0x9fff04"
!DBFixedObject class methodsFor: 'recovered'!
createProxyIn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fixedID.
    recoveredValue2 := (self) name.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := (recoveredValue0) getNewFixedDBProxy: (recoveredValue1) className: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

