"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000d624; bytecode file offset 0x90a4b8"
!DBKey class methodsFor: 'recovered'!
transformKeyValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200734f8; bytecode file offset 0x970b34"
!DBKey class methodsFor: 'recovered'!
defaultValue
    ^nil
! !

"ASDBase.ic method 0x2007a9e4; bytecode file offset 0x97c330"
!DBKey class methodsFor: 'recovered'!
isSearchValuePossible
    ^false
! !

"ASDBase.ic method 0x200af77c; bytecode file offset 0x9ac068"
!DBKey class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) initializeInstances.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20103a9c; bytecode file offset 0xa0035c"
!DBKey class methodsFor: 'recovered'!
createFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) initializeInstances.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) setKeyValue: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20113ff0; bytecode file offset 0xa108b0"
!DBKey class methodsFor: 'recovered'!
createFrom: recoveredArg1 interface: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) initializeInstances.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) setKeyValue: (recoveredValue3) interface: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

