"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025a74; bytecode file offset 0x923928"
!CANDBComment class methodsFor: 'recovered'!
keyWord
    ^'CM_'
! !

"ASDBase.ic method 0x2002ba24; bytecode file offset 0x934580"
!CANDBComment class methodsFor: 'recovered'!
createWith
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b6e78; bytecode file offset 0x9b39ac"
!CANDBComment class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('owner' 'comment')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2024def0; bytecode file offset 0xb4a7bc"
!CANDBComment class methodsFor: 'recovered'!
initializeSeparators
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ($ ).
    recoveredValue4 := recoveredValue2.
    recoveredValue5 := (Character value: 9).
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := Cr.
    (recoveredValue6) add: (recoveredValue7).
    recoveredValue8 := Lf.
    (recoveredValue2) add: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) asArray.
    separators := recoveredValue10.
    ^self
! !

"ASDBase.ic method 0x2025eae4; bytecode file offset 0xb5b3c8"
!CANDBComment class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    CommentClasses := recoveredValue1.
    recoveredValue2 := CommentClasses.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := CANDBTopComment.
    (recoveredValue3) at: ('top') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := CANDBNodeComment.
    (recoveredValue5) at: ('BU_') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := CANDBMessageComment.
    (recoveredValue7) at: ('BO_') put: (recoveredValue8).
    recoveredValue9 := CANDBSignalComment.
    (recoveredValue2) at: ('SG_') put: (recoveredValue9).
    ^self
! !

