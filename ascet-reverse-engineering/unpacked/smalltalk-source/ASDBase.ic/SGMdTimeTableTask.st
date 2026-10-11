"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055830; bytecode file offset 0x952a9c"
!SGMdTimeTableTask methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlTimeTableTask: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cd47c; bytecode file offset 0xac9d78"
!SGMdTimeTableTask methodsFor: 'recovered'!
ileActivateTimer: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) attributes.
    (recoveredValue1) taskAttributes: (recoveredValue2).
    recoveredValue3 := (self) ileName.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) id.
    recoveredValue6 := (self) delay.
    recoveredValue7 := (self) period.
    (recoveredValue0) timeTable: (recoveredValue3) number: (recoveredValue4) taskId: (recoveredValue5) delay: (recoveredValue6) period: (recoveredValue7).
    ^self
! !

