"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200016d0; bytecode file offset 0x8ffcfc"
!AbtNumberConverter class methodsFor: 'recovered'!
_PRAGMA_IS_AbtNumberConverter
    ^self
! !

"ASDBase.ic method 0x2001347c; bytecode file offset 0x912098"
!AbtNumberConverter class methodsFor: 'recovered'!
inputFormatter
    | recoveredValue0 |
    recoveredValue0 := NumberInputFormatter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200155c4; bytecode file offset 0x912098"
!AbtNumberConverter class methodsFor: 'recovered'!
displayName
    | recoveredValue0 |
    recoveredValue0 := AbtCvtrNameNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200157bc; bytecode file offset 0x912098"
!AbtNumberConverter class methodsFor: 'recovered'!
objectClass
    | recoveredValue0 |
    recoveredValue0 := Number.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200540f8; bytecode file offset 0x951190"
!AbtNumberConverter class methodsFor: 'recovered'!
maxInputFractionsDigits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MaxInputFractionsDigits := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2015c3dc; bytecode file offset 0xa58c94"
!AbtNumberConverter class methodsFor: 'recovered'!
maxInputFractionsDigits
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MaxInputFractionsDigits.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 12.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            MaxInputFractionsDigits := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := MaxInputFractionsDigits.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027ea30; bytecode file offset 0xb7b4bc"
!AbtNumberConverter class methodsFor: 'recovered'!
IS_decimalPlace
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_decimalPlace.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_decimalPlace.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtAttributeSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := Integer.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) attributeType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'decimalPlace:'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) setSelector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'decimalPlace'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) getSelector: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'decimalPlace'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeSymbol: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            IS_decimalPlace := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027eaf0; bytecode file offset 0xb7b4bc"
!AbtNumberConverter class methodsFor: 'recovered'!
IS_decimalSeparator
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_decimalSeparator.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_decimalSeparator.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtAttributeSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := String.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) attributeType: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'decimalSeparator:'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) setSelector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'decimalSeparator'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) getSelector: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'decimalSeparator'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeSymbol: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            IS_decimalSeparator := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027f348; bytecode file offset 0xb7bd44"
!AbtNumberConverter class methodsFor: 'recovered'!
IS_max
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_max.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_max.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtAttributeSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'max:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) setSelector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'max'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) getSelector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := Number.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) attributeType: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeSymbol: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            IS_max := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027f3a8; bytecode file offset 0xb7bd44"
!AbtNumberConverter class methodsFor: 'recovered'!
IS_min
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_min.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_min.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtAttributeSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'min:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) setSelector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 'min'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) getSelector: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := Number.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) attributeType: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeSymbol: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            IS_min := recoveredStack2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202fb60c; bytecode file offset 0xbf7ef0"
!AbtNumberConverter class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := IS_instanceInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := AbtInterfaceSpec.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'max'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_max.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'min'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_min.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'decimalPlace'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) IS_decimalPlace.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) featureNamed: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'decimalSeparator'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) IS_decimalSeparator.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) featureNamed: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            IS_instanceInterfaceSpec := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b9fb4; bytecode file offset 0xcb68b0"
!AbtNumberConverter class methodsFor: 'recovered'!
abtRelocalize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcMonetary.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            NumberInputFormatter := recoveredStack2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) currencySymbol: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) pSepBySpace: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nSepBySpace: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := AbtConverterBaseApp.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) utilizeNumericThousandsSeparatorOnInput.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := NumberInputFormatter.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) monThousandsSep: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := NumberInputFormatter.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) monDecimalPoint.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            InputDecimalSep := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := NumberInputFormatter.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) pSignPosn.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := NumberInputFormatter.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) pSignPosn: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := NumberInputFormatter.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) nSignPosn.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := NumberInputFormatter.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := NumberInputFormatter.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) pSignPosn.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) nSignPosn: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

