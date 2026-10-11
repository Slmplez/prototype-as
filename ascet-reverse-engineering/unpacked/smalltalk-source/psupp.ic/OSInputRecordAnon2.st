"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"psupp.ic method 0x2000c9c0; bytecode file offset 0x160b8c"
!OSInputRecordAnon2 methodsFor: 'recovered'!
KeyEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSKeyEventRecord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cdd0; bytecode file offset 0x160b8c"
!OSInputRecordAnon2 methodsFor: 'recovered'!
FocusEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSFocusEventRecord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000ce10; bytecode file offset 0x160b8c"
!OSInputRecordAnon2 methodsFor: 'recovered'!
MouseEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMouseEventRecord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000cf00; bytecode file offset 0x160b8c"
!OSInputRecordAnon2 methodsFor: 'recovered'!
WindowBufferSizeEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSWindowBufferSizeRecord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000d2f0; bytecode file offset 0x160b8c"
!OSInputRecordAnon2 methodsFor: 'recovered'!
MenuEvent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSMenuEventRecord.
    recoveredValue1 := (self) structAt: (0) type: (recoveredValue0).
    ^recoveredValue1
! !

"psupp.ic method 0x2000f950; bytecode file offset 0x165330"
!OSInputRecordAnon2 methodsFor: 'recovered'!
MouseEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x2000f9bc; bytecode file offset 0x165330"
!OSInputRecordAnon2 methodsFor: 'recovered'!
KeyEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200106d0; bytecode file offset 0x165330"
!OSInputRecordAnon2 methodsFor: 'recovered'!
MenuEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200111bc; bytecode file offset 0x165330"
!OSInputRecordAnon2 methodsFor: 'recovered'!
FocusEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

"psupp.ic method 0x200117ec; bytecode file offset 0x165330"
!OSInputRecordAnon2 methodsFor: 'recovered'!
WindowBufferSizeEvent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) structAt: (0) put: (recoveredValue0).
    ^self
! !

