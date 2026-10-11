"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200689e4; bytecode file offset 0x965b90"
!AbtActionSpec methodsFor: 'recovered'!
selector
    | recoveredValue0 |
    recoveredValue0 := selector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200695a8; bytecode file offset 0x966bdc"
!AbtActionSpec methodsFor: 'recovered'!
parameters
    | recoveredValue0 |
    recoveredValue0 := parameters.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ac4c; bytecode file offset 0x967a18"
!AbtActionSpec methodsFor: 'recovered'!
resultType
    | recoveredValue0 |
    recoveredValue0 := resultType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200889e4; bytecode file offset 0x985628"
!AbtActionSpec methodsFor: 'recovered'!
epSymbolReferences
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) selector.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad45c; bytecode file offset 0x9a9d5c"
!AbtActionSpec methodsFor: 'recovered'!
addParameter: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) addParameter: (recoveredValue0) type: (recoveredValue1) typed: (false).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ad480; bytecode file offset 0x9a9d5c"
!AbtActionSpec methodsFor: 'recovered'!
addParameter: recoveredArg1 primType: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) addParameter: (recoveredValue0) primType: (recoveredValue1) typed: (false).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bfa94; bytecode file offset 0x9bd228"
!AbtActionSpec methodsFor: 'recovered'!
selector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0b70; bytecode file offset 0x9bdf14"
!AbtActionSpec methodsFor: 'recovered'!
parameters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    parameters := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c54; bytecode file offset 0x9beac8"
!AbtActionSpec methodsFor: 'recovered'!
primResultType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resultType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f8c; bytecode file offset 0x9beac8"
!AbtActionSpec methodsFor: 'recovered'!
resultType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resultType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20141ef8; bytecode file offset 0xa3e7b0"
!AbtActionSpec methodsFor: 'recovered'!
performIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := selector.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrSendTo: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20168624; bytecode file offset 0xa64edc"
!AbtActionSpec methodsFor: 'recovered'!
performIn: recoveredArg1 arguments: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := selector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := selector.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) abrSendTo: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20172aec; bytecode file offset 0xa6f3b4"
!AbtActionSpec methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := super hash.
    recoveredValue1 := (self) selector.
    recoveredValue2 := (recoveredValue1) hash.
    recoveredValue3 := (recoveredValue0) + (recoveredValue2).
    recoveredValue4 := (self) parameters.
    recoveredValue5 := (recoveredValue4) hash.
    recoveredValue6 := (recoveredValue3) + (recoveredValue5).
    recoveredValue7 := (self) resultType.
    recoveredValue8 := (recoveredValue7) hash.
    recoveredValue9 := (recoveredValue6) + (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20241254; bytecode file offset 0xb3dba0"
!AbtActionSpec methodsFor: 'recovered'!
addParameter: recoveredArg1 type: recoveredArg2 typed: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parameters.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) parameters: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parameters.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := AbtParameterSpec.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack3) parameterName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack3) parameterClass: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3) typedBySecondaryPartType: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202412cc; bytecode file offset 0xb3dba0"
!AbtActionSpec methodsFor: 'recovered'!
addParameter: recoveredArg1 primType: recoveredArg2 typed: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parameters.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) parameters: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := parameters.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := AbtParameterSpec.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack3) parameterName: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack3) parameterType: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack3) typedBySecondaryPartType: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028dd08; bytecode file offset 0xb8a5d0"
!AbtActionSpec methodsFor: 'recovered'!
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
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := super = (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 42].
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
            recoveredStack2 := (recoveredStack2) selector.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) selector.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) parameters.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) parameters.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) resultType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) resultType.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

