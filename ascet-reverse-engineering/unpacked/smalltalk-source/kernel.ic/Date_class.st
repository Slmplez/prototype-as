"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200007d8; bytecode file offset 0x4b6e8"
!Date class methodsFor: 'recovered'!
"VM primitive/special entry 0x32; native fast path not reconstructed; fallback bytecodes follow."
currentDateArray
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x20002d50; bytecode file offset 0x4dce4"
!Date class methodsFor: 'recovered'!
formatter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Formatter := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200049fc; bytecode file offset 0x4f930"
!Date class methodsFor: 'recovered'!
nameOfDay: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := DayNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20004a0c; bytecode file offset 0x4f930"
!Date class methodsFor: 'recovered'!
nameOfMonth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := MonthNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20005054; bytecode file offset 0x4ff68"
!Date class methodsFor: 'recovered'!
errorInvalidDayCount
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (30).
    ^recoveredValue1
! !

"kernel.ic method 0x20005070; bytecode file offset 0x4ff84"
!Date class methodsFor: 'recovered'!
errorInvalidMonthName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (31).
    ^recoveredValue1
! !

"kernel.ic method 0x20005dd4; bytecode file offset 0x50ce8"
!Date class methodsFor: 'recovered'!
newDay: recoveredArg1 year: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) year: (recoveredValue1) day: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20008654; bytecode file offset 0x53564"
!Date class methodsFor: 'recovered'!
daysInYear: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) leapYear: (recoveredValue0).
    recoveredValue2 := (365) + (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20009e08; bytecode file offset 0x54d24"
!Date class methodsFor: 'recovered'!
dayOfWeek: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('PR') = ('1FZ119U').
    recoveredValue1 := Days.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000c5d4; bytecode file offset 0x574f0"
!Date class methodsFor: 'recovered'!
indexInWeek: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('PR') = ('1FZ119U').
    recoveredValue1 := Days.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) at: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) \\ (7).
    recoveredValue5 := (recoveredValue4) + (1).
    ^recoveredValue5
! !

"kernel.ic method 0x2000f998; bytecode file offset 0x5a8b0"
!Date class methodsFor: 'recovered'!
daysInMonthIndex: recoveredArg1 forYear: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := DaysInMonth.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) leapYear: (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := DaysInMonth.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000fba8; bytecode file offset 0x5aac4"
!Date class methodsFor: 'recovered'!
today
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) currentDateArray.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) new.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) at: (1).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) at: (2).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) at: (3).
    recoveredValue8 := (recoveredValue1) year: (recoveredValue3) month: (recoveredValue5) day: (recoveredValue7).
    ^recoveredValue8
! !

"kernel.ic method 0x20011a10; bytecode file offset 0x5c92c"
!Date class methodsFor: 'recovered'!
daysInMonth: recoveredArg1 forYear: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfMonth: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := DaysInMonth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) leapYear: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := DaysInMonth.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20013684; bytecode file offset 0x5e5a8"
!Date class methodsFor: 'recovered'!
dateAndTimeNow
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) today.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := Time.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) now.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) today.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) dateAndTimeNow.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20016684; bytecode file offset 0x615a8"
!Date class methodsFor: 'recovered'!
newDay: recoveredArg1 month: recoveredArg2 year: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOfMonth: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) daysInMonthIndex: (recoveredStack3) forYear: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) year: (recoveredStack2) month: (recoveredStack3) day: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := ExCLDTInvalidArgument.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) signalWith: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20016db0; bytecode file offset 0x61cbc"
!Date class methodsFor: 'recovered'!
leapYear: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 400.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001a0f4; bytecode file offset 0x65014"
!Date class methodsFor: 'recovered'!
newDay: recoveredArg1 monthIndex: recoveredArg2 year: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 12.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ExCLDTInvalidArgument.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) daysInMonthIndex: (recoveredStack4) forYear: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) year: (recoveredStack3) month: (recoveredStack4) day: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ExCLDTInvalidArgument.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001d294; bytecode file offset 0x681c8"
!Date class methodsFor: 'recovered'!
indexOfMonth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Months.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) asString.
    recoveredBlock9Value2 := (recoveredBlock9Value1) , ('*').
    recoveredBlock9Local1 := recoveredBlock9Value2.
    recoveredBlock9Value3 := MonthNames.
    recoveredBlock9Value4 := [:recoveredBlock9Block28Arg1 :recoveredBlock9Block28Arg2 | 
    | recoveredBlock9Block28Stack0 recoveredBlock9Block28Stack1 recoveredBlock9Block28Stack2 recoveredBlock9Block28Stack3 recoveredBlock9Block28Stack4 recoveredBlock9Block28PC recoveredBlock9Block28Step recoveredBlock9Block28Done recoveredBlock9Block28Result |
    recoveredBlock9Block28Stack0 := self.
    recoveredBlock9Block28PC := 34.
    recoveredBlock9Block28Done := false.
    [recoveredBlock9Block28Done not] whileTrue: [
        recoveredBlock9Block28Step := recoveredBlock9Block28PC.
        recoveredBlock9Block28Step = 34 ifTrue: [
            recoveredBlock9Block28Stack1 := nil.
            recoveredBlock9Block28PC := 35.
        ].
        recoveredBlock9Block28Step = 35 ifTrue: [
            recoveredBlock9Block28Stack2 := recoveredBlock9Local1.
            recoveredBlock9Block28PC := 38.
        ].
        recoveredBlock9Block28Step = 38 ifTrue: [
            recoveredBlock9Block28Stack3 := recoveredBlock9Block28Arg1.
            recoveredBlock9Block28PC := 39.
        ].
        recoveredBlock9Block28Step = 39 ifTrue: [
            recoveredBlock9Block28Stack2 := (recoveredBlock9Block28Stack2) match: (recoveredBlock9Block28Stack3).
            recoveredBlock9Block28PC := 41.
        ].
        recoveredBlock9Block28Step = 41 ifTrue: [
            (recoveredBlock9Block28Stack2) ifTrue: [recoveredBlock9Block28PC := 44] ifFalse: [recoveredBlock9Block28PC := 47].
        ].
        recoveredBlock9Block28Step = 44 ifTrue: [
            recoveredBlock9Block28PC := 45.
        ].
        recoveredBlock9Block28Step = 45 ifTrue: [
            recoveredBlock9Block28Stack1 := recoveredBlock9Block28Arg2.
            recoveredBlock9Block28PC := 46.
        ].
        recoveredBlock9Block28Step = 46 ifTrue: [
            ^recoveredBlock9Block28Stack1
        ].
        recoveredBlock9Block28Step = 47 ifTrue: [
            recoveredBlock9Block28Result := recoveredBlock9Block28Stack1.
            recoveredBlock9Block28Done := true.
        ].
    ].
    recoveredBlock9Block28Result
].
    (recoveredBlock9Value3) doWithIndex: (recoveredBlock9Value4).
    recoveredBlock9Value5 := ExCLDTInvalidArgument.
    recoveredBlock9Value6 := (recoveredBlock9Value5) signalWith: (1).
    recoveredBlock9Value6
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2002ade8; bytecode file offset 0x75d08"
!Date class methodsFor: 'recovered'!
fromDays: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1901.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 1900.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) > (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 1901.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 365.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 1901.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) quo: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack4 := 1901.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) quo: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := 1601.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := 400.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) quo: (recoveredStack4).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 112.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := 1901.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 365.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := 1900.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) quo: (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := 1900.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := 100.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) quo: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) - (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := 2000.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) - (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := 400.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) quo: (recoveredStack4).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 365.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) quo: (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 147].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := 365.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := Date.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := (recoveredStack2) leapYear: (recoveredStack3).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := Date.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) year: (recoveredStack2) day: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2002ee14; bytecode file offset 0x79de0"
!Date class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := Locale.
    recoveredValue1 := (recoveredValue0) current.
    recoveredValue2 := (recoveredValue1) lcTime.
    Formatter := recoveredValue2.
    recoveredValue3 := LookupTable.
    recoveredValue4 := (recoveredValue3) new: (23).
    Months := recoveredValue4.
    recoveredValue5 := Months.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) at: ('January') put: (1).
    recoveredValue7 := recoveredValue5.
    (recoveredValue7) at: ('Jan') put: (1).
    recoveredValue8 := recoveredValue5.
    (recoveredValue8) at: ('February') put: (2).
    recoveredValue9 := recoveredValue5.
    (recoveredValue9) at: ('Feb') put: (2).
    recoveredValue10 := recoveredValue5.
    (recoveredValue10) at: ('March') put: (3).
    recoveredValue11 := recoveredValue5.
    (recoveredValue11) at: ('Mar') put: (3).
    recoveredValue12 := recoveredValue5.
    (recoveredValue12) at: ('April') put: (4).
    recoveredValue13 := recoveredValue5.
    (recoveredValue13) at: ('Apr') put: (4).
    recoveredValue14 := recoveredValue5.
    (recoveredValue14) at: ('May') put: (5).
    recoveredValue15 := recoveredValue5.
    (recoveredValue15) at: ('June') put: (6).
    recoveredValue16 := recoveredValue5.
    (recoveredValue16) at: ('Jun') put: (6).
    recoveredValue17 := recoveredValue5.
    (recoveredValue17) at: ('July') put: (7).
    recoveredValue18 := recoveredValue5.
    (recoveredValue18) at: ('Jul') put: (7).
    recoveredValue19 := recoveredValue5.
    (recoveredValue19) at: ('August') put: (8).
    recoveredValue20 := recoveredValue5.
    (recoveredValue20) at: ('Aug') put: (8).
    recoveredValue21 := recoveredValue5.
    (recoveredValue21) at: ('September') put: (9).
    recoveredValue22 := recoveredValue5.
    (recoveredValue22) at: ('Sep') put: (9).
    recoveredValue23 := recoveredValue5.
    (recoveredValue23) at: ('October') put: (10).
    recoveredValue24 := recoveredValue5.
    (recoveredValue24) at: ('Oct') put: (10).
    recoveredValue25 := recoveredValue5.
    (recoveredValue25) at: ('November') put: (11).
    recoveredValue26 := recoveredValue5.
    (recoveredValue26) at: ('Nov') put: (11).
    recoveredValue27 := recoveredValue5.
    (recoveredValue27) at: ('December') put: (12).
    (recoveredValue5) at: ('Dec') put: (12).
    recoveredValue28 := LookupTable.
    recoveredValue29 := (recoveredValue28) new.
    Days := recoveredValue29.
    recoveredValue30 := Days.
    recoveredValue31 := recoveredValue30.
    (recoveredValue31) at: ('Monday') put: (1).
    recoveredValue32 := recoveredValue30.
    (recoveredValue32) at: ('Tuesday') put: (2).
    recoveredValue33 := recoveredValue30.
    (recoveredValue33) at: ('Wednesday') put: (3).
    recoveredValue34 := recoveredValue30.
    (recoveredValue34) at: ('Thursday') put: (4).
    recoveredValue35 := recoveredValue30.
    (recoveredValue35) at: ('Friday') put: (5).
    recoveredValue36 := recoveredValue30.
    (recoveredValue36) at: ('Saturday') put: (6).
    (recoveredValue30) at: ('Sunday') put: (7).
    MonthNames := #('January' 'February' 'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December').
    DayNames := #('Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday' 'Sunday').
    DaysInMonth := #(31 28 31 30 31 30 31 31 30 31 30 31).
    DaysInYear := #(0 31 59 90 120 151 181 212 243 273 304 334).
    ^self
! !

