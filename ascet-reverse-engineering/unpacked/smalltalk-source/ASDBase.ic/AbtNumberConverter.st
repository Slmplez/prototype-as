"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20087854; bytecode file offset 0x98410c"
!AbtNumberConverter methodsFor: 'recovered'!
coerceInput: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) abtAsNumber.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20128738; bytecode file offset 0xa25044"
!AbtNumberConverter methodsFor: 'recovered'!
numericParser
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := AbtMiscSmalltalkParser.
    recoveredValue1 := (recoveredValue0) forNumbers.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := InputDecimalSep.
    (recoveredValue2) decimalSeparator: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := InputThousandsSep.
    (recoveredValue4) thousandsSeparator: (recoveredValue5).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2015f8f4; bytecode file offset 0xa5c1bc"
!AbtNumberConverter methodsFor: 'recovered'!
setMonetaryInvariants
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) lcMonetary.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) currencySymbol: ('').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) pSepBySpace: (0).
    (recoveredValue0) nSepBySpace: (0).
    ^self
! !

"ASDBase.ic method 0x201c7dc8; bytecode file offset 0xac4684"
!AbtNumberConverter methodsFor: 'recovered'!
decimalPlace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := abrDecPlace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcMonetary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) fracDigits.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            abrDecPlace := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            abrDecPlace := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := abrDecPlace.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c7e24; bytecode file offset 0xac46e4"
!AbtNumberConverter methodsFor: 'recovered'!
decimalSeparator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := abrDecSep.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcMonetary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) monDecimalPoint.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            abrDecSep := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            abrDecSep := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := abrDecSep.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cab68; bytecode file offset 0xac743c"
!AbtNumberConverter methodsFor: 'recovered'!
initializeFromCurrentLocale
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initializeFromCurrentLocale.
    recoveredValue0 := (self) lcMonetary.
    recoveredValue1 := (recoveredValue0) monDecimalPoint.
    (self) decimalSeparator: (recoveredValue1).
    recoveredValue2 := (self) lcMonetary.
    recoveredValue3 := (recoveredValue2) fracDigits.
    (self) decimalPlace: (recoveredValue3).
    (self) localeInSync: (true).
    ^self
! !

"ASDBase.ic method 0x201cc82c; bytecode file offset 0xac90ec"
!AbtNumberConverter methodsFor: 'recovered'!
decimalPlace: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 64.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            abrDecPlace := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) localeInSync: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9cd0; bytecode file offset 0xad659c"
!AbtNumberConverter methodsFor: 'recovered'!
decimalSeparator: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) preferredStringClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            abrDecSep := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) localeInSync: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20364024; bytecode file offset 0xc60904"
!AbtNumberConverter methodsFor: 'recovered'!
synchronizeLocale
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) localeInSync.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            super synchronizeLocale.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) lcMonetary.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalPlace.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) fracDigits: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) lcMonetary.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalSeparator.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) decimalPlace.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) monDecimalPoint: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) localeInSync: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051eaf0; bytecode file offset 0xe1b3fc"
!AbtNumberConverter methodsFor: 'recovered'!
primObjectToDisplay: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Locale.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) current.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) preferredStringClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 16.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) coerceInput: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) zeroSuppressed.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputFormatter.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) maxInputFractionsDigits.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) fracDigits: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) printNumber: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) decimalSeparator.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := -1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113Stack3 recoveredBlock113Stack4 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := nil.
            recoveredBlock113PC := 121.
        ].
        recoveredBlock113Step = 121 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal3.
            recoveredBlock113PC := 124.
        ].
        recoveredBlock113Step = 124 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Arg1.
            recoveredBlock113PC := 125.
        ].
        recoveredBlock113Step = 125 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) at: (recoveredBlock113Stack3).
            recoveredBlock113PC := 127.
        ].
        recoveredBlock113Step = 127 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Stack2.
            recoveredBlock113PC := 128.
        ].
        recoveredBlock113Step = 128 ifTrue: [
            recoveredLocal1 := recoveredBlock113Stack3.
            recoveredBlock113PC := 131.
        ].
        recoveredBlock113Step = 131 ifTrue: [
            recoveredBlock113Stack3 := recoveredLocal2.
            recoveredBlock113PC := 134.
        ].
        recoveredBlock113Step = 134 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) = (recoveredBlock113Stack3).
            recoveredBlock113PC := 135.
        ].
        recoveredBlock113Step = 135 ifTrue: [
            (recoveredBlock113Stack2) ifTrue: [recoveredBlock113PC := 148] ifFalse: [recoveredBlock113PC := 138].
        ].
        recoveredBlock113Step = 138 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal1.
            recoveredBlock113PC := 141.
        ].
        recoveredBlock113Step = 141 ifTrue: [
            recoveredBlock113Stack3 := $0.
            recoveredBlock113PC := 144.
        ].
        recoveredBlock113Step = 144 ifTrue: [
            recoveredBlock113Stack2 := (recoveredBlock113Stack2) ~= (recoveredBlock113Stack3).
            recoveredBlock113PC := 145.
        ].
        recoveredBlock113Step = 145 ifTrue: [
            (recoveredBlock113Stack2) ifTrue: [recoveredBlock113PC := 148] ifFalse: [recoveredBlock113PC := 185].
        ].
        recoveredBlock113Step = 148 ifTrue: [
            recoveredBlock113PC := 149.
        ].
        recoveredBlock113Step = 149 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal1.
            recoveredBlock113PC := 152.
        ].
        recoveredBlock113Step = 152 ifTrue: [
            recoveredBlock113Stack2 := recoveredLocal2.
            recoveredBlock113PC := 155.
        ].
        recoveredBlock113Step = 155 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) = (recoveredBlock113Stack2).
            recoveredBlock113PC := 156.
        ].
        recoveredBlock113Step = 156 ifTrue: [
            (recoveredBlock113Stack1) ifTrue: [recoveredBlock113PC := 160] ifFalse: [recoveredBlock113PC := 176].
        ].
        recoveredBlock113Step = 160 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal3.
            recoveredBlock113PC := 163.
        ].
        recoveredBlock113Step = 163 ifTrue: [
            recoveredBlock113Stack2 := 1.
            recoveredBlock113PC := 165.
        ].
        recoveredBlock113Step = 165 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Arg1.
            recoveredBlock113PC := 166.
        ].
        recoveredBlock113Step = 166 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) copyFrom: (recoveredBlock113Stack2) to: (recoveredBlock113Stack3).
            recoveredBlock113PC := 168.
        ].
        recoveredBlock113Step = 168 ifTrue: [
            recoveredBlock113Stack2 := '0'.
            recoveredBlock113PC := 170.
        ].
        recoveredBlock113Step = 170 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) , (recoveredBlock113Stack2).
            recoveredBlock113PC := 172.
        ].
        recoveredBlock113Step = 172 ifTrue: [
            recoveredBlock113PC := 184.
        ].
        recoveredBlock113Step = 176 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal3.
            recoveredBlock113PC := 179.
        ].
        recoveredBlock113Step = 179 ifTrue: [
            recoveredBlock113Stack2 := 1.
            recoveredBlock113PC := 181.
        ].
        recoveredBlock113Step = 181 ifTrue: [
            recoveredBlock113Stack3 := recoveredBlock113Arg1.
            recoveredBlock113PC := 182.
        ].
        recoveredBlock113Step = 182 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) copyFrom: (recoveredBlock113Stack2) to: (recoveredBlock113Stack3).
            recoveredBlock113PC := 184.
        ].
        recoveredBlock113Step = 184 ifTrue: [
            ^recoveredBlock113Stack1
        ].
        recoveredBlock113Step = 185 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack1.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) to: (recoveredStack1) by: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := '0'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

