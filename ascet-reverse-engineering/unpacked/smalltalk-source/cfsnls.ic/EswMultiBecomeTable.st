"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"cfsnls.ic method 0x20001b34; bytecode file offset 0x24dac"
!EswMultiBecomeTable methodsFor: 'recovered'!
size
    | recoveredValue0 |
    recoveredValue0 := size.
    ^recoveredValue0
! !

"cfsnls.ic method 0x200029ec; bytecode file offset 0x25c1c"
!EswMultiBecomeTable methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := size.
    recoveredValue1 := (recoveredValue0) == (0).
    ^recoveredValue1
! !

"cfsnls.ic method 0x200051dc; bytecode file offset 0x2842c"
!EswMultiBecomeTable methodsFor: 'recovered'!
multiBecomeClassSlotsIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EsMemorySegment.
    recoveredValue1 := oldInstances.
    recoveredValue2 := newInstances.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) size.
    recoveredValue5 := (recoveredValue0) multiBecomeClassSlots: (recoveredValue1) into: (recoveredValue2) in: (recoveredValue3) numberOfSlots: (recoveredValue4).
    ^recoveredValue5
! !

"cfsnls.ic method 0x200051f0; bytecode file offset 0x2842c"
!EswMultiBecomeTable methodsFor: 'recovered'!
multiBecomeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EsMemorySegment.
    recoveredValue1 := oldInstances.
    recoveredValue2 := newInstances.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) size.
    recoveredValue5 := (recoveredValue0) multiBecome: (recoveredValue1) into: (recoveredValue2) in: (recoveredValue3) numberOfSlots: (recoveredValue4).
    ^recoveredValue5
! !

"cfsnls.ic method 0x20005b74; bytecode file offset 0x28dac"
!EswMultiBecomeTable methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    size := 0.
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    oldInstances := recoveredValue2.
    recoveredValue3 := Array.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    newInstances := recoveredValue5.
    ^self
! !

"cfsnls.ic method 0x20006d08; bytecode file offset 0x29f48"
!EswMultiBecomeTable methodsFor: 'recovered'!
entry: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := oldInstances.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := newInstances.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x200074fc; bytecode file offset 0x2a730"
!EswMultiBecomeTable methodsFor: 'recovered'!
reset
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := oldInstances.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nilFirstSlots: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := newInstances.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nilFirstSlots: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            size := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x200080a8; bytecode file offset 0x2b2e0"
!EswMultiBecomeTable methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := newInstances.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 33]] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20008438; bytecode file offset 0x2b674"
!EswMultiBecomeTable methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := oldInstances.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) grow.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            size := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := oldInstances.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := newInstances.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := size.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"cfsnls.ic method 0x20009254; bytecode file offset 0x2c494"
!EswMultiBecomeTable methodsFor: 'recovered'!
asDictionary
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IdentityDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := oldInstances.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := newInstances.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 18] ifFalse: [recoveredLocal1 := nil. recoveredPC := 43]] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"cfsnls.ic method 0x20009ddc; bytecode file offset 0x2d01c"
!EswMultiBecomeTable methodsFor: 'recovered'!
grow
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := Array.
    recoveredValue1 := oldInstances.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue2) * (2).
    recoveredValue4 := (recoveredValue0) new: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := oldInstances.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := oldInstances.
    recoveredValue9 := (recoveredValue5) replaceFrom: (1) to: (recoveredValue7) with: (recoveredValue8) startingAt: (1).
    oldInstances := recoveredValue9.
    recoveredValue10 := Array.
    recoveredValue11 := newInstances.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue12) * (2).
    recoveredValue14 := (recoveredValue10) new: (recoveredValue13).
    recoveredLocal1 := recoveredValue14.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := newInstances.
    recoveredValue17 := (recoveredValue16) size.
    recoveredValue18 := newInstances.
    recoveredValue19 := (recoveredValue15) replaceFrom: (1) to: (recoveredValue17) with: (recoveredValue18) startingAt: (1).
    newInstances := recoveredValue19.
    ^self
! !

