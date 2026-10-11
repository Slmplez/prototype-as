"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200222ec; bytecode file offset 0x92209c"
!ARTimingEvent methodsFor: 'recovered'!
iconName
    ^'GeneralEventTiming'
! !

"ASDBase.ic method 0x2006598c; bytecode file offset 0x963428"
!ARTimingEvent methodsFor: 'recovered'!
period
    | recoveredValue0 |
    recoveredValue0 := period.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073ed0; bytecode file offset 0x970b34"
!ARTimingEvent methodsFor: 'recovered'!
offset
    ^nil
! !

"ASDBase.ic method 0x20076c2c; bytecode file offset 0x9757c8"
!ARTimingEvent methodsFor: 'recovered'!
isTiming
    ^true
! !

"ASDBase.ic method 0x200ad288; bytecode file offset 0x9a9b44"
!ARTimingEvent methodsFor: 'recovered'!
initXML: recoveredArg1 env: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getDouble: ('period').
    period := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200be7ec; bytecode file offset 0x9bb178"
!ARTimingEvent methodsFor: 'recovered'!
period: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    period := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fa898; bytecode file offset 0x9f71d0"
!ARTimingEvent methodsFor: 'recovered'!
initialize
    super initialize.
    (self) period: (0).
    ^self
! !

"ASDBase.ic method 0x20156d64; bytecode file offset 0xa5362c"
!ARTimingEvent methodsFor: 'recovered'!
writeXML: recoveredArg1 item: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('TimingEvent').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := period.
    (recoveredValue1) attr: ('period') double: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x20176628; bytecode file offset 0xa72ef8"
!ARTimingEvent methodsFor: 'recovered'!
listStringForNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super listStringForNode: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' - ').
    recoveredValue3 := (self) period.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('[s]').
    ^recoveredValue6
! !

"ASDBase.ic method 0x20263bf4; bytecode file offset 0xb60500"
!ARTimingEvent methodsFor: 'recovered'!
createWidgetInForm: recoveredArg1 availableModeList: recoveredArg2 eventSpecHandler: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    (recoveredBlock9Value1) eventSpec: (self).
    recoveredBlock9Value2 := recoveredBlock9Value0.
    recoveredBlock9Value3 := recoveredArg2.
    (recoveredBlock9Value2) availableModeList: (recoveredBlock9Value3).
    recoveredBlock9Value4 := recoveredBlock9Value0.
    recoveredBlock9Value5 := recoveredArg3.
    (recoveredBlock9Value4) eventSpecificationHandler: (recoveredBlock9Value5).
    recoveredBlock9Value0
].
    recoveredValue2 := (recoveredValue0) createARTimingEventSpecificationWidget: ('widget') argBlock: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) manageChild.
    ^recoveredValue3
! !

