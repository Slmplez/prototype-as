"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x200008d0; bytecode file offset 0x516bc"
!EwNumericFormat methodsFor: 'recovered'!
preferredEditSession
    | recoveredValue0 |
    recoveredValue0 := EwNumericSession.
    ^recoveredValue0
! !

"extwid.ic method 0x20001318; bytecode file offset 0x52154"
!EwNumericFormat methodsFor: 'recovered'!
decimalChar
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) decimalString.
    recoveredValue1 := (recoveredValue0) first.
    ^recoveredValue1
! !

"extwid.ic method 0x20001f00; bytecode file offset 0x52dac"
!EwNumericFormat methodsFor: 'recovered'!
areParenthesesNeeded
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) signPolicy.
    recoveredValue1 := XmPARENTHESES.
    recoveredValue2 := (recoveredValue0) == (recoveredValue1).
    ^recoveredValue2
! !

"extwid.ic method 0x20002028; bytecode file offset 0x52df4"
!EwNumericFormat methodsFor: 'recovered'!
noSign
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) signLocation.
    recoveredValue1 := (recoveredValue0) == ('none').
    ^recoveredValue1
! !

"extwid.ic method 0x20002044; bytecode file offset 0x52e10"
!EwNumericFormat methodsFor: 'recovered'!
areNegativeNumbersAllowed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) signLocation.
    recoveredValue1 := (recoveredValue0) ~~ ('none').
    ^recoveredValue1
! !

"extwid.ic method 0x20002c1c; bytecode file offset 0x53ae8"
!EwNumericFormat methodsFor: 'recovered'!
padCharacter
    | recoveredValue0 |
    recoveredValue0 := padCharacter.
    ^recoveredValue0
! !

"extwid.ic method 0x20002fa4; bytecode file offset 0x53da8"
!EwNumericFormat methodsFor: 'recovered'!
floatingSign
    | recoveredValue0 |
    recoveredValue0 := floatingSign.
    ^recoveredValue0
! !

"extwid.ic method 0x20003094; bytecode file offset 0x53eb0"
!EwNumericFormat methodsFor: 'recovered'!
signPolicy
    | recoveredValue0 |
    recoveredValue0 := signPolicy.
    ^recoveredValue0
! !

"extwid.ic method 0x20003134; bytecode file offset 0x53fc0"
!EwNumericFormat methodsFor: 'recovered'!
signLocation
    | recoveredValue0 |
    recoveredValue0 := signLocation.
    ^recoveredValue0
! !

"extwid.ic method 0x200032ac; bytecode file offset 0x540a8"
!EwNumericFormat methodsFor: 'recovered'!
negativeInput
    | recoveredValue0 |
    recoveredValue0 := negativeInput.
    ^recoveredValue0
! !

"extwid.ic method 0x20003400; bytecode file offset 0x5421c"
!EwNumericFormat methodsFor: 'recovered'!
negativeIndicator
    | recoveredValue0 |
    recoveredValue0 := negIndicator.
    ^recoveredValue0
! !

"extwid.ic method 0x200034d8; bytecode file offset 0x542e4"
!EwNumericFormat methodsFor: 'recovered'!
positiveIndicator
    | recoveredValue0 |
    recoveredValue0 := posIndicator.
    ^recoveredValue0
! !

"extwid.ic method 0x20003548; bytecode file offset 0x5439c"
!EwNumericFormat methodsFor: 'recovered'!
thousandsSeparator
    | recoveredValue0 |
    recoveredValue0 := thousSep.
    ^recoveredValue0
! !

"extwid.ic method 0x20003600; bytecode file offset 0x5441c"
!EwNumericFormat methodsFor: 'recovered'!
decimalPoint
    | recoveredValue0 |
    recoveredValue0 := decPt.
    ^recoveredValue0
! !

"extwid.ic method 0x200036e8; bytecode file offset 0x544e4"
!EwNumericFormat methodsFor: 'recovered'!
decSize
    | recoveredValue0 |
    recoveredValue0 := decSize.
    ^recoveredValue0
! !

"extwid.ic method 0x20003758; bytecode file offset 0x5454c"
!EwNumericFormat methodsFor: 'recovered'!
intSize
    | recoveredValue0 |
    recoveredValue0 := intSize.
    ^recoveredValue0
! !

"extwid.ic method 0x20004474; bytecode file offset 0x55268"
!EwNumericFormat methodsFor: 'recovered'!
isCurrencyFixed
    ^false
! !

"extwid.ic method 0x20004970; bytecode file offset 0x55734"
!EwNumericFormat methodsFor: 'recovered'!
increaseDecSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := decSize.
    recoveredValue1 := (recoveredValue0) + (1).
    decSize := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20004984; bytecode file offset 0x55748"
!EwNumericFormat methodsFor: 'recovered'!
increaseIntSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := intSize.
    recoveredValue1 := (recoveredValue0) + (1).
    intSize := recoveredValue1.
    ^self
! !

"extwid.ic method 0x20004d34; bytecode file offset 0x55b00"
!EwNumericFormat methodsFor: 'recovered'!
decimalIndex
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) formatString.
    recoveredValue1 := (recoveredValue0) indexOf: ($D).
    ^recoveredValue1
! !

"extwid.ic method 0x20006a78; bytecode file offset 0x578dc"
!EwNumericFormat methodsFor: 'recovered'!
floatingSign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    floatingSign := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006c3c; bytecode file offset 0x57a68"
!EwNumericFormat methodsFor: 'recovered'!
signLocation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    signLocation := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006d04; bytecode file offset 0x57b48"
!EwNumericFormat methodsFor: 'recovered'!
negativeInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    negativeInput := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a46c; bytecode file offset 0x5b23c"
!EwNumericFormat methodsFor: 'recovered'!
isSignFloating
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) floatingSign.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) signPolicy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := XmPARENTHESES.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~~ (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000a4d0; bytecode file offset 0x5b2a0"
!EwNumericFormat methodsFor: 'recovered'!
isSignFixed
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) floatingSign.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) signPolicy.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := XmPARENTHESES.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~~ (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000aaa4; bytecode file offset 0x5b870"
!EwNumericFormat methodsFor: 'recovered'!
negativeIndicator: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            negIndicator := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) processAndVerifyMask.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000aac8; bytecode file offset 0x5b894"
!EwNumericFormat methodsFor: 'recovered'!
positiveIndicator: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            posIndicator := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) processAndVerifyMask.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000aaec; bytecode file offset 0x5b8b8"
!EwNumericFormat methodsFor: 'recovered'!
thousandsSeparator: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            thousSep := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) processAndVerifyMask.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000ab10; bytecode file offset 0x5b8dc"
!EwNumericFormat methodsFor: 'recovered'!
decimalPoint: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            decPt := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) processAndVerifyMask.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000b020; bytecode file offset 0x5bdf0"
!EwNumericFormat methodsFor: 'recovered'!
resetVars
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    inDecimal := false.
    placedSign := false.
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (self) newLocaleString.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    outputStream := recoveredValue2.
    ^self
! !

"extwid.ic method 0x2000c320; bytecode file offset 0x5d0f0"
!EwNumericFormat methodsFor: 'recovered'!
padCharacter: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCharacter.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := XmINVALIDCLASS.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            padCharacter := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000da18; bytecode file offset 0x5e7ec"
!EwNumericFormat methodsFor: 'recovered'!
processAndVerifyMask
    | recoveredValue0 recoveredValue1 |
    (self) resetSize.
    recoveredValue0 := (self) formatString.
    recoveredValue1 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (self) processAndVerifyChar: (recoveredBlock8Value0).
    recoveredBlock8Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"extwid.ic method 0x200109c0; bytecode file offset 0x6178c"
!EwNumericFormat methodsFor: 'recovered'!
signPolicy: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := signPolicy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            signPolicy := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) processAndVerifyMask.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20011958; bytecode file offset 0x6274c"
!EwNumericFormat methodsFor: 'recovered'!
isSignFrontFloating
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) floatingSign.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) signLocation.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'leading'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) signPolicy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := XmPARENTHESES.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~~ (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20011974; bytecode file offset 0x6274c"
!EwNumericFormat methodsFor: 'recovered'!
isSignRearFloating
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) floatingSign.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) signLocation.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'trailing'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) signPolicy.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := XmPARENTHESES.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~~ (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x20012514; bytecode file offset 0x632dc"
!EwNumericFormat methodsFor: 'recovered'!
resetSize
    intSize := 0.
    decSize := 0.
    maxSize := 0.
    replaceSize := 0.
    inDecimal := false.
    signLocation := 'none'.
    ^self
! !

"extwid.ic method 0x20014d1c; bytecode file offset 0x65af4"
!EwNumericFormat methodsFor: 'recovered'!
decimalString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) decimalPoint.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) lcNumeric.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) decimalPoint.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := '.'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) decimalPoint.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20015f14; bytecode file offset 0x66d70"
!EwNumericFormat methodsFor: 'recovered'!
positiveString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) positiveIndicator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) lcMonetary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) positiveSign.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := '+'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) positiveIndicator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20015f34; bytecode file offset 0x66d70"
!EwNumericFormat methodsFor: 'recovered'!
negativeString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeIndicator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) lcMonetary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeSign.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := '-'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeIndicator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20015f74; bytecode file offset 0x66d70"
!EwNumericFormat methodsFor: 'recovered'!
thousandsString
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) thousandsSeparator.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) locale.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) lcNumeric.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) thousandsSep.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := ','.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) thousandsSeparator.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20018ddc; bytecode file offset 0x69bb4"
!EwNumericFormat methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    intSize := 0.
    decSize := 0.
    inDecimal := false.
    recoveredValue0 := XmMINUS.
    signPolicy := recoveredValue0.
    floatingSign := false.
    recoveredValue1 := Space.
    padCharacter := recoveredValue1.
    signLocation := 'none'.
    negativeInput := false.
    ^self
! !

"extwid.ic method 0x2001c504; bytecode file offset 0x6d2e8"
!EwNumericFormat methodsFor: 'recovered'!
signString
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) signPolicy.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := XmMINUS.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeInput.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeString.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) padCharacter.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
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
            recoveredStack0 := (recoveredStack0) signPolicy.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := XmPLUSMINUS.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeInput.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) positiveString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2001e724; bytecode file offset 0x6f50c"
!EwNumericFormat methodsFor: 'recovered'!
formattedStringFrom: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := XmINVALIDCLASS.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) negative.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) areNegativeNumbersAllowed.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) negativeInput: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := XmNONEGATIVE.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) negativeInput: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) abs.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatNumber: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002053c; bytecode file offset 0x7131c"
!EwNumericFormat methodsFor: 'recovered'!
placeFrontSymbols
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := placedSign.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) areParenthesesNeeded.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            placedSign := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeInput.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := $(.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) padCharacter.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSignFrontFloating.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            placedSign := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) signString.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x200219b4; bytecode file offset 0x727a4"
!EwNumericFormat methodsFor: 'recovered'!
processSignIndicator
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) replaceSize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'leading'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) signLocation: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'trailing'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) signLocation: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) signPolicy.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := XmPARENTHESES.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) increaseMaxSize: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) positiveString.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) negativeString.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) increaseMaxSize: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20024d2c; bytecode file offset 0x75b14"
!EwNumericFormat methodsFor: 'recovered'!
placeRearSymbols: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := outputStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := outputStream.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := outputStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) position: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) areParenthesesNeeded.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeInput.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := $).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSignRearFloating.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) signString.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20028c30; bytecode file offset 0x79a14"
!EwNumericFormat methodsFor: 'recovered'!
processAndVerifyChar: recoveredArg1
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
            recoveredStack2 := $0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := $9.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) increaseReplaceSize.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := inDecimal.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) increaseDecSize.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) increaseIntSize.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := $D.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            inDecimal := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) increaseMaxSize.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := $T.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := $B.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) increaseMaxSize.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := $S.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) processSignIndicator.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := XmINVALIDMASKCHARACTER.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) formatStringError: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002a7d0; bytecode file offset 0x7b5d8"
!EwNumericFormat methodsFor: 'recovered'!
decimalString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PTR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '9142'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) raisedTo: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) decSize.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := $0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) asCharacter.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 44] ifFalse: [recoveredPC := 88]] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2002ce4c; bytecode file offset 0x7dc3c"
!EwNumericFormat methodsFor: 'recovered'!
substituteLocaleCharacters
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (self) newLocaleString.
    recoveredValue2 := (recoveredValue0) on: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) formatString.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := $B.
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            (recoveredBlock13Stack1 ~~ recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 35] ifFalse: [recoveredBlock13PC := 28].
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack2 := Space.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            (recoveredBlock13Stack1) nextPut: (recoveredBlock13Stack2).
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 36.
        ].
        recoveredBlock13Step = 36 ifTrue: [
            recoveredBlock13Stack2 := $D.
            recoveredBlock13PC := 40.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            (recoveredBlock13Stack1 ~~ recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 52] ifFalse: [recoveredBlock13PC := 44].
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) decimalString.
            recoveredBlock13PC := 50.
        ].
        recoveredBlock13Step = 50 ifTrue: [
            (recoveredBlock13Stack1) nextPutAll: (recoveredBlock13Stack2).
            recoveredBlock13PC := 52.
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack2 := $T.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            (recoveredBlock13Stack1 ~~ recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 68] ifFalse: [recoveredBlock13PC := 60].
        ].
        recoveredBlock13Step = 60 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 63.
        ].
        recoveredBlock13Step = 63 ifTrue: [
            recoveredBlock13Stack2 := self.
            recoveredBlock13PC := 64.
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) thousandsString.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            (recoveredBlock13Stack1) nextPutAll: (recoveredBlock13Stack2).
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            recoveredBlock13Stack3 := $9.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            (recoveredBlock13Stack2 == recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 94] ifFalse: [recoveredBlock13PC := 78].
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack3 := $S.
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            (recoveredBlock13Stack2 == recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 94] ifFalse: [recoveredBlock13PC := 86].
        ].
        recoveredBlock13Step = 86 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 87.
        ].
        recoveredBlock13Step = 87 ifTrue: [
            recoveredBlock13Stack3 := $0.
            recoveredBlock13PC := 90.
        ].
        recoveredBlock13Step = 90 ifTrue: [
            (recoveredBlock13Stack2 ~~ recoveredBlock13Stack3) ifTrue: [recoveredBlock13PC := 101] ifFalse: [recoveredBlock13PC := 94].
        ].
        recoveredBlock13Step = 94 ifTrue: [
            recoveredBlock13PC := 95.
        ].
        recoveredBlock13Step = 95 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 98.
        ].
        recoveredBlock13Step = 98 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 99.
        ].
        recoveredBlock13Step = 99 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) nextPut: (recoveredBlock13Stack2).
            recoveredBlock13PC := 101.
        ].
        recoveredBlock13Step = 101 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"extwid.ic method 0x2003bb2c; bytecode file offset 0x8c980"
!EwNumericFormat methodsFor: 'recovered'!
formatNumber: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := #[0 0 0 0 0 0 20 64].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) decSize.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) raisedTo: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalString: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) truncated.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) intSize.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := XmINTEGEROVERFLOW.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorCode: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) intSize.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) resetVars.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := [:recoveredBlock120Arg1 :recoveredBlock120Arg2 | 
    | recoveredBlock120Local1 recoveredBlock120Local2 recoveredBlock120Stack0 recoveredBlock120Stack1 recoveredBlock120Stack2 recoveredBlock120Stack3 recoveredBlock120PC recoveredBlock120Step recoveredBlock120Done recoveredBlock120Result |
    recoveredBlock120Stack0 := self.
    recoveredBlock120PC := 126.
    recoveredBlock120Done := false.
    [recoveredBlock120Done not] whileTrue: [
        recoveredBlock120Step := recoveredBlock120PC.
        recoveredBlock120Step = 126 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 127.
        ].
        recoveredBlock120Step = 127 ifTrue: [
            recoveredBlock120Stack2 := $B.
            recoveredBlock120PC := 130.
        ].
        recoveredBlock120Step = 130 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 140] ifFalse: [recoveredBlock120PC := 134].
        ].
        recoveredBlock120Step = 134 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 136.
        ].
        recoveredBlock120Step = 136 ifTrue: [
            recoveredBlock120Stack2 := Space.
            recoveredBlock120PC := 138.
        ].
        recoveredBlock120Step = 138 ifTrue: [
            (recoveredBlock120Stack1) nextPut: (recoveredBlock120Stack2).
            recoveredBlock120PC := 140.
        ].
        recoveredBlock120Step = 140 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 141.
        ].
        recoveredBlock120Step = 141 ifTrue: [
            recoveredBlock120Stack2 := $D.
            recoveredBlock120PC := 144.
        ].
        recoveredBlock120Step = 144 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 162] ifFalse: [recoveredBlock120PC := 148].
        ].
        recoveredBlock120Step = 148 ifTrue: [
            recoveredBlock120Stack1 := true.
            recoveredBlock120PC := 149.
        ].
        recoveredBlock120Step = 149 ifTrue: [
            inDecimal := recoveredBlock120Stack1.
            recoveredBlock120PC := 151.
        ].
        recoveredBlock120Step = 151 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg2.
            recoveredBlock120PC := 152.
        ].
        recoveredBlock120Step = 152 ifTrue: [
            recoveredLocal1 := recoveredBlock120Stack1.
            recoveredBlock120PC := 155.
        ].
        recoveredBlock120Step = 155 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 157.
        ].
        recoveredBlock120Step = 157 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 158.
        ].
        recoveredBlock120Step = 158 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) decimalString.
            recoveredBlock120PC := 160.
        ].
        recoveredBlock120Step = 160 ifTrue: [
            (recoveredBlock120Stack1) nextPutAll: (recoveredBlock120Stack2).
            recoveredBlock120PC := 162.
        ].
        recoveredBlock120Step = 162 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 163.
        ].
        recoveredBlock120Step = 163 ifTrue: [
            recoveredBlock120Stack2 := $S.
            recoveredBlock120PC := 166.
        ].
        recoveredBlock120Step = 166 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 197] ifFalse: [recoveredBlock120PC := 170].
        ].
        recoveredBlock120Step = 170 ifTrue: [
            recoveredBlock120Stack1 := self.
            recoveredBlock120PC := 171.
        ].
        recoveredBlock120Step = 171 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) isSignFixed.
            recoveredBlock120PC := 173.
        ].
        recoveredBlock120Step = 173 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 176] ifFalse: [recoveredBlock120PC := 183].
        ].
        recoveredBlock120Step = 176 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 178.
        ].
        recoveredBlock120Step = 178 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 179.
        ].
        recoveredBlock120Step = 179 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) signString.
            recoveredBlock120PC := 181.
        ].
        recoveredBlock120Step = 181 ifTrue: [
            (recoveredBlock120Stack1) nextPutAll: (recoveredBlock120Stack2).
            recoveredBlock120PC := 183.
        ].
        recoveredBlock120Step = 183 ifTrue: [
            recoveredBlock120Stack1 := self.
            recoveredBlock120PC := 184.
        ].
        recoveredBlock120Step = 184 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) isSignFloating.
            recoveredBlock120PC := 186.
        ].
        recoveredBlock120Step = 186 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 190] ifFalse: [recoveredBlock120PC := 197].
        ].
        recoveredBlock120Step = 190 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 192.
        ].
        recoveredBlock120Step = 192 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 193.
        ].
        recoveredBlock120Step = 193 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) padCharacter.
            recoveredBlock120PC := 195.
        ].
        recoveredBlock120Step = 195 ifTrue: [
            (recoveredBlock120Stack1) nextPutAll: (recoveredBlock120Stack2).
            recoveredBlock120PC := 197.
        ].
        recoveredBlock120Step = 197 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 198.
        ].
        recoveredBlock120Step = 198 ifTrue: [
            recoveredBlock120Stack2 := $C.
            recoveredBlock120PC := 202.
        ].
        recoveredBlock120Step = 202 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 219] ifFalse: [recoveredBlock120PC := 206].
        ].
        recoveredBlock120Step = 206 ifTrue: [
            recoveredBlock120Stack1 := self.
            recoveredBlock120PC := 207.
        ].
        recoveredBlock120Step = 207 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) isCurrencyFixed.
            recoveredBlock120PC := 209.
        ].
        recoveredBlock120Step = 209 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 212] ifFalse: [recoveredBlock120PC := 219].
        ].
        recoveredBlock120Step = 212 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 214.
        ].
        recoveredBlock120Step = 214 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 215.
        ].
        recoveredBlock120Step = 215 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) currencyString.
            recoveredBlock120PC := 217.
        ].
        recoveredBlock120Step = 217 ifTrue: [
            (recoveredBlock120Stack1) nextPutAll: (recoveredBlock120Stack2).
            recoveredBlock120PC := 219.
        ].
        recoveredBlock120Step = 219 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 220.
        ].
        recoveredBlock120Step = 220 ifTrue: [
            recoveredBlock120Stack2 := $T.
            recoveredBlock120PC := 224.
        ].
        recoveredBlock120Step = 224 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 259] ifFalse: [recoveredBlock120PC := 228].
        ].
        recoveredBlock120Step = 228 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal2.
            recoveredBlock120PC := 231.
        ].
        recoveredBlock120Step = 231 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 242] ifFalse: [recoveredBlock120PC := 234].
        ].
        recoveredBlock120Step = 234 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Local1.
            recoveredBlock120PC := 235.
        ].
        recoveredBlock120Step = 235 ifTrue: [
            recoveredBlock120Stack2 := $0.
            recoveredBlock120PC := 238.
        ].
        recoveredBlock120Step = 238 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 252] ifFalse: [recoveredBlock120PC := 242].
        ].
        recoveredBlock120Step = 242 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 244.
        ].
        recoveredBlock120Step = 244 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 245.
        ].
        recoveredBlock120Step = 245 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) thousandsString.
            recoveredBlock120PC := 247.
        ].
        recoveredBlock120Step = 247 ifTrue: [
            (recoveredBlock120Stack1) nextPutAll: (recoveredBlock120Stack2).
            recoveredBlock120PC := 249.
        ].
        recoveredBlock120Step = 249 ifTrue: [
            recoveredBlock120PC := 259.
        ].
        recoveredBlock120Step = 252 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 254.
        ].
        recoveredBlock120Step = 254 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 255.
        ].
        recoveredBlock120Step = 255 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) padCharacter.
            recoveredBlock120PC := 257.
        ].
        recoveredBlock120Step = 257 ifTrue: [
            (recoveredBlock120Stack1) nextPut: (recoveredBlock120Stack2).
            recoveredBlock120PC := 259.
        ].
        recoveredBlock120Step = 259 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 260.
        ].
        recoveredBlock120Step = 260 ifTrue: [
            recoveredBlock120Stack2 := $9.
            recoveredBlock120PC := 264.
        ].
        recoveredBlock120Step = 264 ifTrue: [
            (recoveredBlock120Stack1 == recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 276] ifFalse: [recoveredBlock120PC := 268].
        ].
        recoveredBlock120Step = 268 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 269.
        ].
        recoveredBlock120Step = 269 ifTrue: [
            recoveredBlock120Stack2 := $0.
            recoveredBlock120PC := 272.
        ].
        recoveredBlock120Step = 272 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 432] ifFalse: [recoveredBlock120PC := 276].
        ].
        recoveredBlock120Step = 276 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal3.
            recoveredBlock120PC := 279.
        ].
        recoveredBlock120Step = 279 ifTrue: [
            recoveredBlock120Stack2 := recoveredLocal9.
            recoveredBlock120PC := 282.
        ].
        recoveredBlock120Step = 282 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) size.
            recoveredBlock120PC := 284.
        ].
        recoveredBlock120Step = 284 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 295] ifFalse: [recoveredBlock120PC := 288].
        ].
        recoveredBlock120Step = 288 ifTrue: [
            recoveredBlock120Stack1 := true.
            recoveredBlock120PC := 289.
        ].
        recoveredBlock120Step = 289 ifTrue: [
            recoveredLocal2 := recoveredBlock120Stack1.
            recoveredBlock120PC := 292.
        ].
        recoveredBlock120Step = 292 ifTrue: [
            recoveredBlock120Stack1 := self.
            recoveredBlock120PC := 293.
        ].
        recoveredBlock120Step = 293 ifTrue: [
            (recoveredBlock120Stack1) placeFrontSymbols.
            recoveredBlock120PC := 295.
        ].
        recoveredBlock120Step = 295 ifTrue: [
            recoveredBlock120Stack1 := inDecimal.
            recoveredBlock120PC := 297.
        ].
        recoveredBlock120Step = 297 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 300] ifFalse: [recoveredBlock120PC := 316].
        ].
        recoveredBlock120Step = 300 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal4.
            recoveredBlock120PC := 303.
        ].
        recoveredBlock120Step = 303 ifTrue: [
            recoveredBlock120Stack2 := recoveredLocal8.
            recoveredBlock120PC := 306.
        ].
        recoveredBlock120Step = 306 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) size.
            recoveredBlock120PC := 308.
        ].
        recoveredBlock120Step = 308 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) > (recoveredBlock120Stack2).
            recoveredBlock120PC := 309.
        ].
        recoveredBlock120Step = 309 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 312] ifFalse: [recoveredBlock120PC := 316].
        ].
        recoveredBlock120Step = 312 ifTrue: [
            recoveredBlock120Stack1 := false.
            recoveredBlock120PC := 313.
        ].
        recoveredBlock120Step = 313 ifTrue: [
            recoveredLocal2 := recoveredBlock120Stack1.
            recoveredBlock120PC := 316.
        ].
        recoveredBlock120Step = 316 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal2.
            recoveredBlock120PC := 319.
        ].
        recoveredBlock120Step = 319 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 322] ifFalse: [recoveredBlock120PC := 392].
        ].
        recoveredBlock120Step = 322 ifTrue: [
            recoveredBlock120Stack1 := inDecimal.
            recoveredBlock120PC := 324.
        ].
        recoveredBlock120Step = 324 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 328] ifFalse: [recoveredBlock120PC := 348].
        ].
        recoveredBlock120Step = 328 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal8.
            recoveredBlock120PC := 331.
        ].
        recoveredBlock120Step = 331 ifTrue: [
            recoveredBlock120Stack2 := recoveredLocal4.
            recoveredBlock120PC := 334.
        ].
        recoveredBlock120Step = 334 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) at: (recoveredBlock120Stack2).
            recoveredBlock120PC := 336.
        ].
        recoveredBlock120Step = 336 ifTrue: [
            recoveredBlock120Local2 := recoveredBlock120Stack1.
            recoveredBlock120PC := 337.
        ].
        recoveredBlock120Step = 337 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal4.
            recoveredBlock120PC := 340.
        ].
        recoveredBlock120Step = 340 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) + (1).
            recoveredBlock120PC := 341.
        ].
        recoveredBlock120Step = 341 ifTrue: [
            recoveredLocal4 := recoveredBlock120Stack1.
            recoveredBlock120PC := 344.
        ].
        recoveredBlock120Step = 344 ifTrue: [
            recoveredBlock120PC := 364.
        ].
        recoveredBlock120Step = 348 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal9.
            recoveredBlock120PC := 351.
        ].
        recoveredBlock120Step = 351 ifTrue: [
            recoveredBlock120Stack2 := recoveredLocal5.
            recoveredBlock120PC := 354.
        ].
        recoveredBlock120Step = 354 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) at: (recoveredBlock120Stack2).
            recoveredBlock120PC := 356.
        ].
        recoveredBlock120Step = 356 ifTrue: [
            recoveredBlock120Local2 := recoveredBlock120Stack1.
            recoveredBlock120PC := 357.
        ].
        recoveredBlock120Step = 357 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal5.
            recoveredBlock120PC := 360.
        ].
        recoveredBlock120Step = 360 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) + (1).
            recoveredBlock120PC := 361.
        ].
        recoveredBlock120Step = 361 ifTrue: [
            recoveredLocal5 := recoveredBlock120Stack1.
            recoveredBlock120PC := 364.
        ].
        recoveredBlock120Step = 364 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg2.
            recoveredBlock120PC := 365.
        ].
        recoveredBlock120Step = 365 ifTrue: [
            recoveredLocal1 := recoveredBlock120Stack1.
            recoveredBlock120PC := 368.
        ].
        recoveredBlock120Step = 368 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Local2.
            recoveredBlock120PC := 369.
        ].
        recoveredBlock120Step = 369 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) isDigit.
            recoveredBlock120PC := 371.
        ].
        recoveredBlock120Step = 371 ifTrue: [
            (recoveredBlock120Stack1) ifTrue: [recoveredBlock120PC := 374] ifFalse: [recoveredBlock120PC := 382].
        ].
        recoveredBlock120Step = 374 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 376.
        ].
        recoveredBlock120Step = 376 ifTrue: [
            recoveredBlock120Stack2 := recoveredBlock120Local2.
            recoveredBlock120PC := 377.
        ].
        recoveredBlock120Step = 377 ifTrue: [
            (recoveredBlock120Stack1) nextPut: (recoveredBlock120Stack2).
            recoveredBlock120PC := 379.
        ].
        recoveredBlock120Step = 379 ifTrue: [
            recoveredBlock120PC := 388.
        ].
        recoveredBlock120Step = 382 ifTrue: [
            recoveredBlock120Stack1 := self.
            recoveredBlock120PC := 383.
        ].
        recoveredBlock120Step = 383 ifTrue: [
            recoveredBlock120Stack2 := XmINVALIDDIGITINPUT.
            recoveredBlock120PC := 385.
        ].
        recoveredBlock120Step = 385 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) errorCode: (recoveredBlock120Stack2).
            recoveredBlock120PC := 387.
        ].
        recoveredBlock120Step = 387 ifTrue: [
            ^recoveredBlock120Stack1
        ].
        recoveredBlock120Step = 388 ifTrue: [
            recoveredBlock120PC := 425.
        ].
        recoveredBlock120Step = 392 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 393.
        ].
        recoveredBlock120Step = 393 ifTrue: [
            recoveredBlock120Stack2 := $0.
            recoveredBlock120PC := 396.
        ].
        recoveredBlock120Step = 396 ifTrue: [
            (recoveredBlock120Stack1 ~~ recoveredBlock120Stack2) ifTrue: [recoveredBlock120PC := 418] ifFalse: [recoveredBlock120PC := 400].
        ].
        recoveredBlock120Step = 400 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg2.
            recoveredBlock120PC := 401.
        ].
        recoveredBlock120Step = 401 ifTrue: [
            recoveredLocal1 := recoveredBlock120Stack1.
            recoveredBlock120PC := 404.
        ].
        recoveredBlock120Step = 404 ifTrue: [
            recoveredBlock120Stack1 := self.
            recoveredBlock120PC := 405.
        ].
        recoveredBlock120Step = 405 ifTrue: [
            (recoveredBlock120Stack1) placeFrontSymbols.
            recoveredBlock120PC := 407.
        ].
        recoveredBlock120Step = 407 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 409.
        ].
        recoveredBlock120Step = 409 ifTrue: [
            recoveredBlock120Stack2 := $0.
            recoveredBlock120PC := 412.
        ].
        recoveredBlock120Step = 412 ifTrue: [
            (recoveredBlock120Stack1) nextPut: (recoveredBlock120Stack2).
            recoveredBlock120PC := 414.
        ].
        recoveredBlock120Step = 414 ifTrue: [
            recoveredBlock120PC := 425.
        ].
        recoveredBlock120Step = 418 ifTrue: [
            recoveredBlock120Stack1 := outputStream.
            recoveredBlock120PC := 420.
        ].
        recoveredBlock120Step = 420 ifTrue: [
            recoveredBlock120Stack2 := self.
            recoveredBlock120PC := 421.
        ].
        recoveredBlock120Step = 421 ifTrue: [
            recoveredBlock120Stack2 := (recoveredBlock120Stack2) padCharacter.
            recoveredBlock120PC := 423.
        ].
        recoveredBlock120Step = 423 ifTrue: [
            (recoveredBlock120Stack1) nextPut: (recoveredBlock120Stack2).
            recoveredBlock120PC := 425.
        ].
        recoveredBlock120Step = 425 ifTrue: [
            recoveredBlock120Stack1 := recoveredLocal3.
            recoveredBlock120PC := 428.
        ].
        recoveredBlock120Step = 428 ifTrue: [
            recoveredBlock120Stack1 := (recoveredBlock120Stack1) + (-1).
            recoveredBlock120PC := 429.
        ].
        recoveredBlock120Step = 429 ifTrue: [
            recoveredLocal3 := recoveredBlock120Stack1.
            recoveredBlock120PC := 432.
        ].
        recoveredBlock120Step = 432 ifTrue: [
            recoveredBlock120Stack1 := recoveredBlock120Arg1.
            recoveredBlock120PC := 433.
        ].
        recoveredBlock120Step = 433 ifTrue: [
            recoveredBlock120Stack2 := recoveredBlock120Stack1.
            recoveredBlock120PC := 434.
        ].
        recoveredBlock120Step = 434 ifTrue: [
            recoveredBlock120Local1 := recoveredBlock120Stack2.
            recoveredBlock120PC := 435.
        ].
        recoveredBlock120Step = 435 ifTrue: [
            recoveredBlock120Result := recoveredBlock120Stack1.
            recoveredBlock120Done := true.
        ].
    ].
    recoveredBlock120Result
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack0 := (recoveredStack0) signLocation.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := 'trailing'.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 459] ifFalse: [recoveredPC := 446].
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack0 := (recoveredStack0) areParenthesesNeeded.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 452] ifFalse: [recoveredPC := 459].
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            (recoveredStack0) placeRearSymbols: (recoveredStack1).
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack0 := outputStream.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

