"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20095848; bytecode file offset 0x992104"
!SGSelectorConnectorGO methodsFor: 'recovered'!
aliasNameIsConsistentForSGClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) connectorAliasName.
    recoveredValue2 := (recoveredValue0) methodAliasName: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) notNil.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d34d4; bytecode file offset 0x9cfd90"
!SGSelectorConnectorGO methodsFor: 'recovered'!
initInOutArgs
    (self) setInArg: (true).
    (self) setOutArg: (false).
    ^self
! !

