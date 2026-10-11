"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017750; bytecode file offset 0x92209c"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
startTime
    ^#[0 0 0 0 0 0 0 0]
! !

"ASDBase.ic method 0x20021a4c; bytecode file offset 0x92209c"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
defaultDelay
    ^#[123 20 174 71 225 122 132 63]
! !

"ASDBase.ic method 0x20023294; bytecode file offset 0x92209c"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
defaultMode
    ^'timeSynchron'
! !

"ASDBase.ic method 0x20025490; bytecode file offset 0x92209c"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
validEventModes
    ^#('segment' 'timeSynchron' 'singleShot' 'signalled')
! !

"ASDBase.ic method 0x20072e80; bytecode file offset 0x96f7ac"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
defaultPrio
    ^5
! !

"ASDBase.ic method 0x2008036c; bytecode file offset 0x97cc38"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
defaultParameter
    ^180
! !

"ASDBase.ic method 0x20081408; bytecode file offset 0x97dd1c"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
invalidTime
    ^-1
! !

"ASDBase.ic method 0x200d9d64; bytecode file offset 0x9d6868"
!SGSimEventQueueEntry class methodsFor: 'recovered'!
createForSimulator: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) simulator: (recoveredValue3).
    ^recoveredValue0
! !

