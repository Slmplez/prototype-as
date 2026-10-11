"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001688c; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_positiveIndicator
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('positiveIndicator'); setSelector: ('positiveIndicator:'); changeSymbol: ('positiveIndicatorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200184f4; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_padCharacter
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Character); getSelector: ('padCharacter'); setSelector: ('padCharacter:'); changeSymbol: ('padCharacterChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a1f8; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_floatingSign
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Boolean); getSelector: ('floatingSign'); setSelector: ('floatingSign:'); changeSymbol: ('floatingSignChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a624; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_decimalPoint
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('decimalPoint'); setSelector: ('decimalPoint:'); changeSymbol: ('decimalPointChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001ce14; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_signLocation
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (EsAtom); getSelector: ('signLocation'); setSelector: ('signLocation:'); changeSymbol: ('signLocationChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022388; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_negativeIndicator
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('negativeIndicator'); setSelector: ('negativeIndicator:'); changeSymbol: ('negativeIndicatorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20022ba4; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_signPolicy
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (Integer); getSelector: ('signPolicy'); setSelector: ('signPolicy:'); changeSymbol: ('signPolicyChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024c08; bytecode file offset 0x92209c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_thousandsSeparator
    | recoveredValue0 |
    recoveredValue0 := (AbtAttributeSpec new) attributeClass: (String); getSelector: ('thousandsSeparator'); setSelector: ('thousandsSeparator:'); changeSymbol: ('thousandsSeparatorChanged'); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x203756d8; bytecode file offset 0xc7217c"
!EwNumericFormat class methodsFor: 'recovered'!
IS_instanceInterfaceSpec
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := AbtInterfaceSpec.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) IS_signPolicy.
    (recoveredValue2) featureNamed: ('signPolicy') put: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) IS_decimalPoint.
    (recoveredValue4) featureNamed: ('decimalPoint') put: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) IS_floatingSign.
    (recoveredValue6) featureNamed: ('floatingSign') put: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) IS_negativeIndicator.
    (recoveredValue8) featureNamed: ('negativeIndicator') put: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) IS_padCharacter.
    (recoveredValue10) featureNamed: ('padCharacter') put: (recoveredValue11).
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := (self) IS_positiveIndicator.
    (recoveredValue12) featureNamed: ('positiveIndicator') put: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := (self) IS_thousandsSeparator.
    (recoveredValue14) featureNamed: ('thousandsSeparator') put: (recoveredValue15).
    recoveredValue16 := (self) IS_signLocation.
    recoveredValue17 := (recoveredValue1) featureNamed: ('signLocation') put: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x203c9534; bytecode file offset 0xcc5e34"
!EwNumericFormat class methodsFor: 'recovered'!
general
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) lcNumeric.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := Locale.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) lcMonetary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) negativeSign.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) negativeSign.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) positiveSign.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := '+'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) positiveSign.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'S9T999T999D00'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatString: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) signPolicy: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) floatingSign: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) decimalPoint.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) decimalPoint: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := (recoveredStack2) thousandsSep.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) thousandsSeparator: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) positiveIndicator: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) negativeIndicator: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

