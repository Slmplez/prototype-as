"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020c84; bytecode file offset 0x92209c"
!EtasHTMLIdPairStruct class methodsFor: 'recovered'!
members
    ^#('dwControlId' 'dwTopicId')
! !

"ASDBase.ic method 0x200747e8; bytecode file offset 0x9710d4"
!EtasHTMLIdPairStruct class methodsFor: 'recovered'!
fixedSize
    ^12
! !

"ASDBase.ic method 0x2008d948; bytecode file offset 0x98a200"
!EtasHTMLIdPairStruct class methodsFor: 'recovered'!
initializeAfterLoad
    (self) fixedSize: (12).
    ^self
! !

"ASDBase.ic method 0x200aac18; bytecode file offset 0x9a753c"
!EtasHTMLIdPairStruct class methodsFor: 'recovered'!
createTopicId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) dwTopicId: (recoveredValue2).
    ^recoveredValue3
! !

