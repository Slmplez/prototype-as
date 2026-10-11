"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006d298; bytecode file offset 0x969c04"
!AbtCPointerField methodsFor: 'recovered'!
pointerType
    | recoveredValue0 |
    recoveredValue0 := pointerType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006da1c; bytecode file offset 0x96a390"
!AbtCPointerField methodsFor: 'recovered'!
lastAddress
    | recoveredValue0 |
    recoveredValue0 := lastAddress.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072c68; bytecode file offset 0x96f6d4"
!AbtCPointerField methodsFor: 'recovered'!
length
    ^4
! !

"ASDBase.ic method 0x2007663c; bytecode file offset 0x9757c8"
!AbtCPointerField methodsFor: 'recovered'!
isPointer
    ^true
! !

"ASDBase.ic method 0x20087030; bytecode file offset 0x98396c"
!AbtCPointerField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 atOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) abtPointerAt: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200aef00; bytecode file offset 0x9ab7bc"
!AbtCPointerField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 atOffset: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) data.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) abtPointerAt: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200afbe8; bytecode file offset 0x9ac4a4"
!AbtCPointerField methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    type := self.
    recoveredValue0 := super initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b03b4; bytecode file offset 0x9acc74"
!AbtCPointerField methodsFor: 'recovered'!
valueClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := AbtPointer.
    recoveredValue1 := (recoveredValue0) new: (0).
    recoveredValue2 := (recoveredValue1) pointerDescriptor: (self).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c3830; bytecode file offset 0x9c058c"
!AbtCPointerField methodsFor: 'recovered'!
pointerType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pointerType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3fec; bytecode file offset 0x9c0bf0"
!AbtCPointerField methodsFor: 'recovered'!
lastAddress: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastAddress := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ebbbc; bytecode file offset 0x9e8478"
!AbtCPointerField methodsFor: 'recovered'!
valueInRecord: recoveredArg1 parentOffset: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := offset.
    recoveredValue3 := (recoveredValue1) + (recoveredValue2).
    recoveredValue4 := (self) valueInRecord: (recoveredValue0) atOffset: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) pointerDescriptor: (self).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20338c58; bytecode file offset 0xc35520"
!AbtCPointerField methodsFor: 'recovered'!
put: recoveredArg1 intoRecord: recoveredArg2 parentOffset: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueInRecord: (recoveredStack2) parentOffset: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueAtAddress: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack5 := offset.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) put: (recoveredStack2) intoRecord: (recoveredStack3) atOffset: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := offset.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) put: (recoveredStack2) intoRecord: (recoveredStack3) atOffset: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) abtAsAddress.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := lastAddress.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            lastAddress := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

