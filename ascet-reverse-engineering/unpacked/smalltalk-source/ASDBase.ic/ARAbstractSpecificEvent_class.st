"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20030244; bytecode file offset 0x934580"
!ARAbstractSpecificEvent class methodsFor: 'recovered'!
createDefault
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003dbe8; bytecode file offset 0x93bf94"
!ARAbstractSpecificEvent class methodsFor: 'recovered'!
eventTypeString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) noContentString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004f758; bytecode file offset 0x94d048"
!ARAbstractSpecificEvent class methodsFor: 'recovered'!
possibleEventTypes
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2037171c; bytecode file offset 0xc6dff4"
!ARAbstractSpecificEvent class methodsFor: 'recovered'!
fromXML: recoveredArg1 env: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := ARModeSwitchEvent.
    recoveredBlock9Value1 := (recoveredBlock9Value0) new.
    recoveredBlock9Value2 := recoveredBlock9Arg1.
    recoveredBlock9Value3 := recoveredArg2.
    recoveredBlock9Value4 := (recoveredBlock9Value1) initXML: (recoveredBlock9Value2) env: (recoveredBlock9Value3).
    recoveredBlock9Value4
].
    recoveredValue2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 |
    recoveredBlock28Value0 := AROperationInvokedEvent.
    recoveredBlock28Value1 := (recoveredBlock28Value0) new.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := recoveredArg2.
    recoveredBlock28Value4 := (recoveredBlock28Value1) initXML: (recoveredBlock28Value2) env: (recoveredBlock28Value3).
    recoveredBlock28Value4
].
    recoveredValue3 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 |
    recoveredBlock46Value0 := ARTimingEvent.
    recoveredBlock46Value1 := (recoveredBlock46Value0) new.
    recoveredBlock46Value2 := recoveredBlock46Arg1.
    recoveredBlock46Value3 := recoveredArg2.
    recoveredBlock46Value4 := (recoveredBlock46Value1) initXML: (recoveredBlock46Value2) env: (recoveredBlock46Value3).
    recoveredBlock46Value4
].
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue0) choice: ('ModeSwitchEvent') do: (recoveredValue1) choice: ('OperationInvokedEvent') do: (recoveredValue2) choice: ('TimingEvent') do: (recoveredValue3) ifNot: (recoveredValue4).
    ^recoveredValue5
! !

