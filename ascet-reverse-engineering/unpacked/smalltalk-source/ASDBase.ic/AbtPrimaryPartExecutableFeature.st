"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001c9a0; bytecode file offset 0x92209c"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
basicEvent
    ^'abtWhenIn:perform:'
! !

"ASDBase.ic method 0x200929f8; bytecode file offset 0x98f2c4"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
getValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) primaryPart.
    recoveredValue3 := (recoveredValue0) getValueIn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20092a08; bytecode file offset 0x98f2c4"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
performIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) primaryPart.
    recoveredValue3 := (recoveredValue0) performIn: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ac7ac; bytecode file offset 0x9a9094"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
setValueIn: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) setValueIn: (recoveredValue1) to: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c7e50; bytecode file offset 0x9c471c"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
abtWhenIn: recoveredArg1 perform: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) primaryPart.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) abtWhenIn: (recoveredValue2) perform: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c7e60; bytecode file offset 0x9c471c"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
performIn: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := feature.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) primaryPart.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) performIn: (recoveredValue2) arguments: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20153040; bytecode file offset 0xa4f8fc"
!AbtPrimaryPartExecutableFeature methodsFor: 'recovered'!
isReadOnlyAttributeIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := feature.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := feature.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) primaryPart.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnlyAttributeIn: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

