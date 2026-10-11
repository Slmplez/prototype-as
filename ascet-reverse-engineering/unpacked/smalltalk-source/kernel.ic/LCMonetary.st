"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003ba0; bytecode file offset 0x4ec04"
!LCMonetary methodsFor: 'recovered'!
intCurrSymbol
    | recoveredValue0 |
    recoveredValue0 := intCurrSymbol.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e14; bytecode file offset 0x4ed88"
!LCMonetary methodsFor: 'recovered'!
currencySymbol
    | recoveredValue0 |
    recoveredValue0 := currencySymbol.
    ^recoveredValue0
! !

"kernel.ic method 0x20003f68; bytecode file offset 0x4eebc"
!LCMonetary methodsFor: 'recovered'!
monDecimalPoint
    | recoveredValue0 |
    recoveredValue0 := monDecimalPoint.
    ^recoveredValue0
! !

"kernel.ic method 0x20003fc4; bytecode file offset 0x4ef68"
!LCMonetary methodsFor: 'recovered'!
monThousandsSep
    | recoveredValue0 |
    recoveredValue0 := monThousandsSep.
    ^recoveredValue0
! !

"kernel.ic method 0x20004090; bytecode file offset 0x4efbc"
!LCMonetary methodsFor: 'recovered'!
monGrouping
    | recoveredValue0 |
    recoveredValue0 := monGrouping.
    ^recoveredValue0
! !

"kernel.ic method 0x200040cc; bytecode file offset 0x4f000"
!LCMonetary methodsFor: 'recovered'!
positiveSign
    | recoveredValue0 |
    recoveredValue0 := positiveSign.
    ^recoveredValue0
! !

"kernel.ic method 0x20004108; bytecode file offset 0x4f02c"
!LCMonetary methodsFor: 'recovered'!
negativeSign
    | recoveredValue0 |
    recoveredValue0 := negativeSign.
    ^recoveredValue0
! !

"kernel.ic method 0x2000414c; bytecode file offset 0x4f070"
!LCMonetary methodsFor: 'recovered'!
intFracDigits
    | recoveredValue0 |
    recoveredValue0 := intFracDigits.
    ^recoveredValue0
! !

"kernel.ic method 0x20004180; bytecode file offset 0x4f094"
!LCMonetary methodsFor: 'recovered'!
fracDigits
    | recoveredValue0 |
    recoveredValue0 := fracDigits.
    ^recoveredValue0
! !

"kernel.ic method 0x2000419c; bytecode file offset 0x4f0a8"
!LCMonetary methodsFor: 'recovered'!
pCsPrecedes
    | recoveredValue0 |
    recoveredValue0 := pCsPrecedes.
    ^recoveredValue0
! !

"kernel.ic method 0x200041b0; bytecode file offset 0x4f0bc"
!LCMonetary methodsFor: 'recovered'!
pSepBySpace
    | recoveredValue0 |
    recoveredValue0 := pSepBySpace.
    ^recoveredValue0
! !

"kernel.ic method 0x200041dc; bytecode file offset 0x4f0e8"
!LCMonetary methodsFor: 'recovered'!
nCsPrecedes
    | recoveredValue0 |
    recoveredValue0 := nCsPrecedes.
    ^recoveredValue0
! !

"kernel.ic method 0x200041f0; bytecode file offset 0x4f0fc"
!LCMonetary methodsFor: 'recovered'!
nSepBySpace
    | recoveredValue0 |
    recoveredValue0 := nSepBySpace.
    ^recoveredValue0
! !

"kernel.ic method 0x2000420c; bytecode file offset 0x4f118"
!LCMonetary methodsFor: 'recovered'!
pSignPosn
    | recoveredValue0 |
    recoveredValue0 := pSignPosn.
    ^recoveredValue0
! !

"kernel.ic method 0x20004220; bytecode file offset 0x4f14c"
!LCMonetary methodsFor: 'recovered'!
nSignPosn
    | recoveredValue0 |
    recoveredValue0 := nSignPosn.
    ^recoveredValue0
! !

"kernel.ic method 0x20005d4c; bytecode file offset 0x50c80"
!LCMonetary methodsFor: 'recovered'!
formatCurrencySymbol: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) currencySymbol.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005d5c; bytecode file offset 0x50c80"
!LCMonetary methodsFor: 'recovered'!
formatPositiveSign: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) positiveSign.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005d6c; bytecode file offset 0x50c80"
!LCMonetary methodsFor: 'recovered'!
formatNegativeSign: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) negativeSign.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20006b60; bytecode file offset 0x51a78"
!LCMonetary methodsFor: 'recovered'!
initializeEncodedFormats
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LCNumeric.
    recoveredValue1 := (self) monGrouping.
    recoveredValue2 := (recoveredValue0) groupingStringToArray: (recoveredValue1).
    encodedGroupingFormat := recoveredValue2.
    ^self
! !

"kernel.ic method 0x20007584; bytecode file offset 0x52538"
!LCMonetary methodsFor: 'recovered'!
intCurrSymbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    intCurrSymbol := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200076e8; bytecode file offset 0x52654"
!LCMonetary methodsFor: 'recovered'!
currencySymbol: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    currencySymbol := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000780c; bytecode file offset 0x52760"
!LCMonetary methodsFor: 'recovered'!
monDecimalPoint: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monDecimalPoint := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200078e0; bytecode file offset 0x5280c"
!LCMonetary methodsFor: 'recovered'!
monThousandsSep: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monThousandsSep := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007978; bytecode file offset 0x528a4"
!LCMonetary methodsFor: 'recovered'!
positiveSign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    positiveSign := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200079c4; bytecode file offset 0x528d8"
!LCMonetary methodsFor: 'recovered'!
negativeSign: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    negativeSign := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200079e0; bytecode file offset 0x52914"
!LCMonetary methodsFor: 'recovered'!
intFracDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    intFracDigits := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007a1c; bytecode file offset 0x52938"
!LCMonetary methodsFor: 'recovered'!
fracDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fracDigits := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007a40; bytecode file offset 0x5294c"
!LCMonetary methodsFor: 'recovered'!
pCsPrecedes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pCsPrecedes := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007a5c; bytecode file offset 0x52970"
!LCMonetary methodsFor: 'recovered'!
pSepBySpace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pSepBySpace := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007a88; bytecode file offset 0x5299c"
!LCMonetary methodsFor: 'recovered'!
nCsPrecedes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nCsPrecedes := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007aa4; bytecode file offset 0x529b8"
!LCMonetary methodsFor: 'recovered'!
nSepBySpace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nSepBySpace := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007ac0; bytecode file offset 0x529cc"
!LCMonetary methodsFor: 'recovered'!
pSignPosn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pSignPosn := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007adc; bytecode file offset 0x52a10"
!LCMonetary methodsFor: 'recovered'!
nSignPosn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nSignPosn := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20009f04; bytecode file offset 0x54e18"
!LCMonetary methodsFor: 'recovered'!
monGrouping: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    monGrouping := recoveredValue0.
    recoveredValue1 := LCNumeric.
    recoveredValue2 := monGrouping.
    recoveredValue3 := (recoveredValue1) groupingStringToArray: (recoveredValue2).
    encodedGroupingFormat := recoveredValue3.
    ^self
! !

"kernel.ic method 0x2001830c; bytecode file offset 0x6322c"
!LCMonetary methodsFor: 'recovered'!
printNumber: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) monetaryFormatFor: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8Stack5 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isSymbol.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 20] ifFalse: [recoveredBlock8PC := 34].
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 22.
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg1.
            recoveredBlock8PC := 25.
        ].
        recoveredBlock8Step = 25 ifTrue: [
            recoveredBlock8Stack4 := recoveredArg2.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) perform: (recoveredBlock8Stack2) with: (recoveredBlock8Stack3) with: (recoveredBlock8Stack4).
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg2.
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) nextPutAll: (recoveredBlock8Stack2).
            recoveredBlock8PC := 39.
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Result := recoveredBlock8Stack1.
            recoveredBlock8Done := true.
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20021104; bytecode file offset 0x6c030"
!LCMonetary methodsFor: 'recovered'!
monetaryFormatFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) pCsPrecedes.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSepBySpace.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) nCsPrecedes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) nSignPosn.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) nSepBySpace.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := MonetaryFormatStringTable.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20029af8; bytecode file offset 0x74a40"
!LCMonetary methodsFor: 'recovered'!
formatNumber: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) fracDigits.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 isInteger) ifTrue: [(recoveredStack0 > 0) ifTrue: [recoveredStack0 := recoveredStack0 - 1. recoveredPC := 12] ifFalse: [recoveredPC := 29]] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) numerator.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) abs.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) denominator.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) quo: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) monGrouping.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := LCNumeric.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := encodedGroupingFormat.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack4 := (recoveredStack4) monThousandsSep.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGroupedString: (recoveredStack2) basedOn: (recoveredStack3) separateGroupsWith: (recoveredStack4).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) monDecimalPoint.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) fracDigits.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) quo: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := (recoveredStack4) fracDigits.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack5 := $0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1) base: (recoveredStack2) showRadix: (recoveredStack3) padTo: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

