"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200033a0; bytecode file offset 0x8ffcfc"
!CANDBBaseObject class methodsFor: 'recovered'!
initializeSeparators
    ^self
! !

"ASDBase.ic method 0x2001fc70; bytecode file offset 0x92209c"
!CANDBBaseObject class methodsFor: 'recovered'!
members
    ^#('comments' 'name')
! !

"ASDBase.ic method 0x20033a74; bytecode file offset 0x934580"
!CANDBBaseObject class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003c3e4; bytecode file offset 0x938cb0"
!CANDBBaseObject class methodsFor: 'recovered'!
createWithcomments: recoveredArg1 name: recoveredArg2 parent: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f3b8; bytecode file offset 0x96bf7c"
!CANDBBaseObject class methodsFor: 'recovered'!
keyWords
    | recoveredValue0 |
    recoveredValue0 := keyWords.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f870; bytecode file offset 0x96c1f4"
!CANDBBaseObject class methodsFor: 'recovered'!
separators
    | recoveredValue0 |
    recoveredValue0 := separators.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d3c88; bytecode file offset 0x9d054c"
!CANDBBaseObject class methodsFor: 'recovered'!
initializeNewKeyWords
    | recoveredValue0 |
    recoveredValue0 := (self) keyWords.
    (recoveredValue0) at: ('SIG_VALTYPE_') put: ('getSignalValueType:').
    ^self
! !

"ASDBase.ic method 0x201274ec; bytecode file offset 0xa23de0"
!CANDBBaseObject class methodsFor: 'recovered'!
create: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) name: (recoveredValue4).
    recoveredValue5 := recoveredArg2.
    (recoveredValue2) parent: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20225d78; bytecode file offset 0xb22650"
!CANDBBaseObject class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super initializeClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280dc2f0Arg1 | 
    | block280dc2f0Value0 block280dc2f0Value1 block280dc2f0Value2 block280dc2f0Value3 |
    block280dc2f0Value0 := block280dc2f0Arg1.
    block280dc2f0Value1 := block280dc2f0Value0.
    (block280dc2f0Value1) initializeKeyWords.
    block280dc2f0Value2 := block280dc2f0Value0.
    (block280dc2f0Value2) initializeNewKeyWords.
    block280dc2f0Value3 := (block280dc2f0Value0) initializeSeparators.
    block280dc2f0Value3
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := CANDBComment.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) initializeClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2043e404; bytecode file offset 0xd3ad34"
!CANDBBaseObject class methodsFor: 'recovered'!
initializeKeyWords
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    keyWords := recoveredValue1.
    recoveredValue2 := keyWords.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: ('NS_') put: ('getNS:').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: ('BS_') put: ('getBS:').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: ('BU_') put: ('getNode:').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: ('BO_') put: ('getMessage:').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: ('CM_') put: ('getComment:').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: ('SG_') put: ('getSignal:').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: ('VAL_') put: ('getValue:').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: ('CAT_') put: ('getCategory:').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: ('CAT_DEF_') put: ('getCategoryDefinition:').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: ('FILTER') put: ('getFilter:').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: ('BA_') put: ('getBA:').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: ('BA_DEF_') put: ('getBADefinition:').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: ('BA_DEF_DEF_') put: ('getBADefDefinition:').
    (recoveredValue2) at: ('VAL_TABLE_') put: ('getValTable:').
    ^self
! !

