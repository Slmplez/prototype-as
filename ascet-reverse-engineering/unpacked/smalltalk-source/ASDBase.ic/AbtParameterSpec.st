"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a1cc; bytecode file offset 0x908be4"
!AbtParameterSpec methodsFor: 'recovered'!
parameterType
    | recoveredValue0 |
    recoveredValue0 := (self) parameterClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200690ac; bytecode file offset 0x965b90"
!AbtParameterSpec methodsFor: 'recovered'!
parameterName
    | recoveredValue0 |
    recoveredValue0 := parameterName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a604; bytecode file offset 0x967a18"
!AbtParameterSpec methodsFor: 'recovered'!
defaultValue
    | recoveredValue0 |
    recoveredValue0 := defaultValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200847bc; bytecode file offset 0x981ca4"
!AbtParameterSpec methodsFor: 'recovered'!
parameterType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) parameterClass: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a1d8c; bytecode file offset 0x99e6ec"
!AbtParameterSpec methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) parameterClass.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := (self) parameterName.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c0c68; bytecode file offset 0x9bdf14"
!AbtParameterSpec methodsFor: 'recovered'!
typedBySecondaryPartType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    typedBySecondaryPartType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1dac; bytecode file offset 0x9beac8"
!AbtParameterSpec methodsFor: 'recovered'!
defaultValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defaultValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8584; bytecode file offset 0x9d4e50"
!AbtParameterSpec methodsFor: 'recovered'!
parameterName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameterName := recoveredValue0.
    (self) signalEvent: ('parameterName').
    ^self
! !

"ASDBase.ic method 0x20105c88; bytecode file offset 0xa0253c"
!AbtParameterSpec methodsFor: 'recovered'!
typedBySecondaryPartType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := typedBySecondaryPartType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            typedBySecondaryPartType := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := typedBySecondaryPartType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2014cf3c; bytecode file offset 0xa497f8"
!AbtParameterSpec methodsFor: 'recovered'!
parameterClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parameterClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Object.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parameterClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsPartType.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201541f4; bytecode file offset 0xa50ab4"
!AbtParameterSpec methodsFor: 'recovered'!
parameterClass: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsPartTypeRef.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            parameterClass := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'parameterClass'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) signalEvent: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e6b64; bytecode file offset 0xae343c"
!AbtParameterSpec methodsFor: 'recovered'!
abtPrimitiveCloneWithRecursionSet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) parameterType.
    (recoveredValue3) parameterType: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) parameterName.
    (recoveredValue5) parameterName: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := (self) defaultValue.
    (recoveredValue7) defaultValue: (recoveredValue8).
    recoveredValue9 := (recoveredValue0) at: (self) put: (recoveredValue2).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202012b4; bytecode file offset 0xafdb74"
!AbtParameterSpec methodsFor: 'recovered'!
= recoveredArg1
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
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) parameterType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameterName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

