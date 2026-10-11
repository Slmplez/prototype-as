"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013290; bytecode file offset 0x912098"
!EtasAPIPrimitiveModelElement class methodsFor: 'recovered'!
modelTypes
    | recoveredValue0 |
    recoveredValue0 := ModelTypes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001470c; bytecode file offset 0x912098"
!EtasAPIPrimitiveModelElement class methodsFor: 'recovered'!
methodModelTypes
    | recoveredValue0 |
    recoveredValue0 := MethodModelTypes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20053f6c; bytecode file offset 0x951190"
!EtasAPIPrimitiveModelElement class methodsFor: 'recovered'!
modelTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ModelTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200544e8; bytecode file offset 0x951190"
!EtasAPIPrimitiveModelElement class methodsFor: 'recovered'!
methodModelTypes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MethodModelTypes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x203d4cf0; bytecode file offset 0xcd15f8"
!EtasAPIPrimitiveModelElement class methodsFor: 'recovered'!
initClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) modelTypes: (recoveredValue1).
    recoveredValue2 := (self) modelTypes.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('cont').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('sdisc').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('udisc').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('log').
    (recoveredValue2) add: ('enum').
    recoveredValue7 := (self) modelTypes.
    recoveredValue8 := (recoveredValue7) copy.
    (self) methodModelTypes: (recoveredValue8).
    recoveredValue9 := (self) methodModelTypes.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) add: ('array[cont]').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) add: ('array[log]').
    recoveredValue12 := recoveredValue9.
    (recoveredValue12) add: ('array[sdisc]').
    recoveredValue13 := recoveredValue9.
    (recoveredValue13) add: ('array[udisc]').
    recoveredValue14 := recoveredValue9.
    (recoveredValue14) add: ('mat[cont]').
    recoveredValue15 := recoveredValue9.
    (recoveredValue15) add: ('mat[log]').
    recoveredValue16 := recoveredValue9.
    (recoveredValue16) add: ('mat[sdisc]').
    (recoveredValue9) add: ('mat[udisc]').
    ^self
! !

