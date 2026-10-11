"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013f80; bytecode file offset 0x912098"
!Number class methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtNumberConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003915c; bytecode file offset 0x935c54"
!Number class methodsFor: 'recovered'!
fromString: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) wbAsFloat.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e478; bytecode file offset 0x93bf94"
!Number class methodsFor: 'recovered'!
abtInstanceFormat
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := EwNumericFormat.
    recoveredValue1 := (recoveredValue0) general.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f2a8; bytecode file offset 0x93bf94"
!Number class methodsFor: 'recovered'!
abrInputStringParser
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtMiscSmalltalkParser.
    recoveredValue1 := (recoveredValue0) forNumbers.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074008; bytecode file offset 0x970b34"
!Number class methodsFor: 'recovered'!
recursiveDeferredUpdateOperationClass
    ^nil
! !

"ASDBase.ic method 0x20076d8c; bytecode file offset 0x9757c8"
!Number class methodsFor: 'recovered'!
abrInstancesAreImmutable
    ^true
! !

"ASDBase.ic method 0x20077514; bytecode file offset 0x9757c8"
!Number class methodsFor: 'recovered'!
abtCanBeMonetaryAmount
    ^true
! !

"ASDBase.ic method 0x200779e4; bytecode file offset 0x9757c8"
!Number class methodsFor: 'recovered'!
abtCanBeNumber
    ^true
! !

"ASDBase.ic method 0x20270d7c; bytecode file offset 0xb6d654"
!Number class methodsFor: 'recovered'!
abtXmlFromString: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block280e0694Arg1 | 
    | block280e0694Value0 block280e0694Value1 |
    block280e0694Value0 := block280e0694Arg1.
    block280e0694Value1 := (block280e0694Value0) = ($,).
    block280e0694Value1
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '.'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := Locale.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) current.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) lcNumeric.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) decimalPoint.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyReplaceAll: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsNumber.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

