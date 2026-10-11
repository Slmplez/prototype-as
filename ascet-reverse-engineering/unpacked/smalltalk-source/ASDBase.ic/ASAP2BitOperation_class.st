"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c790; bytecode file offset 0x92209c"
!ASAP2BitOperation class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:' 'leftShift:' 'rightShift:' 'signExtend:')
! !

"ASDBase.ic method 0x20026cb0; bytecode file offset 0x923928"
!ASAP2BitOperation class methodsFor: 'recovered'!
keyWord
    ^'BIT_OPERATION'
! !

"ASDBase.ic method 0x2003c3f4; bytecode file offset 0x938cb0"
!ASAP2BitOperation class methodsFor: 'recovered'!
createWithleftShift: recoveredArg1 rightShift: recoveredArg2 signExtend: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007fecc; bytecode file offset 0x97c780"
!ASAP2BitOperation class methodsFor: 'recovered'!
emBehaviorId
    ^160
! !

"ASDBase.ic method 0x200b6bf0; bytecode file offset 0x9b39ac"
!ASAP2BitOperation class methodsFor: 'recovered'!
members
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super members.
    recoveredValue1 := (recoveredValue0) , (#('leftShift' 'rightShift' 'signExtend')).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b7368; bytecode file offset 0x9b3cb4"
!ASAP2BitOperation class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20359e0c; bytecode file offset 0xc56740"
!ASAP2BitOperation class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    super initializeKeyWords.
    recoveredValue0 := keyWords.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) at: ('LEFT_SHIFT') put: ('getLeftShift:').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) at: ('RIGHT_SHIFT') put: ('getRightShift:').
    (recoveredValue0) at: ('SIGN_EXTEND') put: ('getSignExtend:').
    recoveredValue3 := options.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := Association.
    recoveredValue6 := (recoveredValue5) key: ('LEFT_SHIFT') value: ('putIn:leftShift:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue3.
    recoveredValue8 := Association.
    recoveredValue9 := (recoveredValue8) key: ('RIGHT_SHIFT') value: ('putIn:rightShift:').
    (recoveredValue7) add: (recoveredValue9).
    recoveredValue10 := Association.
    recoveredValue11 := (recoveredValue10) key: ('SIGN_EXTEND') value: ('putIn:signExtend:').
    (recoveredValue3) add: (recoveredValue11).
    ^self
! !

