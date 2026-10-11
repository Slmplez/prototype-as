"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b718; bytecode file offset 0x948384"
!ASAP2NumberList methodsFor: 'recovered'!
list
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004fea8; bytecode file offset 0x94d048"
!ASAP2NumberList methodsFor: 'recovered'!
initializeDefault
    (self) initializeCollections.
    ^self
! !

"ASDBase.ic method 0x200a6350; bytecode file offset 0x9a2f38"
!ASAP2NumberList methodsFor: 'recovered'!
list: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a9e24; bytecode file offset 0x9a6780"
!ASAP2NumberList methodsFor: 'recovered'!
putListIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) list.
    (self) putIn: (recoveredValue0) numberList: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d9280; bytecode file offset 0x9d5b4c"
!ASAP2NumberList methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getList: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200e6780; bytecode file offset 0x9e30bc"
!ASAP2NumberList methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 |
    super minimizeCollections.
    recoveredValue0 := (self) list.
    (recoveredValue0) minimizeSize.
    ^self
! !

"ASDBase.ic method 0x200fc3f8; bytecode file offset 0x9f8cbc"
!ASAP2NumberList methodsFor: 'recovered'!
getList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyWords.
    recoveredValue3 := (self) getNumberList: (recoveredValue0) upToOneOff: (recoveredValue2).
    (self) list: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010b9c4; bytecode file offset 0xa085f0"
!ASAP2NumberList methodsFor: 'recovered'!
initializeCollections
    | recoveredValue0 recoveredValue1 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) list: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2021a904; bytecode file offset 0xb171cc"
!ASAP2NumberList methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) putBeginIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putListIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putEndIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue6).
    ^self
! !

