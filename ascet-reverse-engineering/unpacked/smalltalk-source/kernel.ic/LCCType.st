"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20003bc8; bytecode file offset 0x4ec04"
!LCCType methodsFor: 'recovered'!
cType
    | recoveredValue0 |
    recoveredValue0 := cType.
    ^recoveredValue0
! !

"kernel.ic method 0x20003da4; bytecode file offset 0x4ed88"
!LCCType methodsFor: 'recovered'!
lowerToUppercaseMap
    | recoveredValue0 |
    recoveredValue0 := lowerToUppercaseMap.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e90; bytecode file offset 0x4eebc"
!LCCType methodsFor: 'recovered'!
upperToLowercaseMap
    | recoveredValue0 |
    recoveredValue0 := upperToLowercaseMap.
    ^recoveredValue0
! !

"kernel.ic method 0x20007524; bytecode file offset 0x52538"
!LCCType methodsFor: 'recovered'!
cType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cType := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007718; bytecode file offset 0x52654"
!LCCType methodsFor: 'recovered'!
lowerToUppercaseMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lowerToUppercaseMap := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000777c; bytecode file offset 0x52760"
!LCCType methodsFor: 'recovered'!
upperToLowercaseMap: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    upperToLowercaseMap := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000bea8; bytecode file offset 0x56e38"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
isSpace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := cType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    recoveredValue5 := SpaceMask.
    recoveredValue6 := (recoveredValue4) bitAnd: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) ~~ (0).
    ^recoveredValue7
! !

"kernel.ic method 0x2000bec4; bytecode file offset 0x56e38"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
isUppercase: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := cType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    recoveredValue5 := UppercaseMask.
    recoveredValue6 := (recoveredValue4) bitAnd: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) ~~ (0).
    ^recoveredValue7
! !

"kernel.ic method 0x2000bee0; bytecode file offset 0x56e38"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
isPunctuation: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := cType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    recoveredValue5 := PunctuationMask.
    recoveredValue6 := (recoveredValue4) bitAnd: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) ~~ (0).
    ^recoveredValue7
! !

"kernel.ic method 0x2000befc; bytecode file offset 0x56e38"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
isLowercase: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := cType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    recoveredValue5 := LowercaseMask.
    recoveredValue6 := (recoveredValue4) bitAnd: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) ~~ (0).
    ^recoveredValue7
! !

"kernel.ic method 0x2000bf18; bytecode file offset 0x56e38"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
isNumber: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := cType.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue2) + (1).
    recoveredValue4 := (recoveredValue0) at: (recoveredValue3).
    recoveredValue5 := NumberMask.
    recoveredValue6 := (recoveredValue4) bitAnd: (recoveredValue5).
    recoveredValue7 := (recoveredValue6) ~~ (0).
    ^recoveredValue7
! !

"kernel.ic method 0x2000e8c4; bytecode file offset 0x597e0"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveAsLowercase: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isUppercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCharacter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000e8f4; bytecode file offset 0x59810"
!LCCType methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveAsUppercase: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isLowercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 32.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCharacter.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20011580; bytecode file offset 0x5c498"
!LCCType methodsFor: 'recovered'!
asUppercase: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := lowerToUppercaseMap.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveAsUppercase: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x200115b0; bytecode file offset 0x5c4c8"
!LCCType methodsFor: 'recovered'!
asLowercase: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 256.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := upperToLowercaseMap.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveAsLowercase: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20014af8; bytecode file offset 0x5fa1c"
!LCCType methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (256).
    (self) cType: (recoveredValue1).
    recoveredValue2 := String.
    recoveredValue3 := (recoveredValue2) new: (256).
    (self) lowerToUppercaseMap: (recoveredValue3).
    recoveredValue4 := String.
    recoveredValue5 := (recoveredValue4) new: (256).
    (self) upperToLowercaseMap: (recoveredValue5).
    ^self
! !

