"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004910c; bytecode file offset 0x9459f8"
!SGHostAccess class methodsFor: 'recovered'!
removeInstance
    theInstance := nil.
    ^self
! !

"ASDBase.ic method 0x2017fae8; bytecode file offset 0xa7c3bc"
!SGHostAccess class methodsFor: 'recovered'!
instance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := theInstance.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := (self) new.
    recoveredBlock6Value1 := (recoveredBlock6Value0) initialize.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    theInstance := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := theInstance.
    ^recoveredValue2
! !

