"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069f00; bytecode file offset 0x966bdc"
!RBBoundedLattice methodsFor: 'recovered'!
getQuantization
    | recoveredValue0 |
    recoveredValue0 := quantization.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008adb4; bytecode file offset 0x98766c"
!RBBoundedLattice methodsFor: 'recovered'!
rememberValue
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) deepCopy.
    internalValue := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009cc50; bytecode file offset 0x999628"
!RBBoundedLattice methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBFloat.
    recoveredValue1 := (recoveredValue0) new.
    (self) initializeForType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009d204; bytecode file offset 0x999abc"
!RBBoundedLattice methodsFor: 'recovered'!
adjustValueToQuantization
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := internalValue.
    recoveredValue1 := (self) adjustValueToQuantization: (recoveredValue0).
    value := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a8ab4; bytecode file offset 0x9a5378"
!RBBoundedLattice methodsFor: 'recovered'!
setQuantization: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    quantization := recoveredValue0.
    (self) adjustValueToQuantization.
    ^self
! !

"ASDBase.ic method 0x200b3684; bytecode file offset 0x9aff60"
!RBBoundedLattice methodsFor: 'recovered'!
transpose
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) getValue.
    recoveredValue3 := (recoveredValue2) transpose.
    (recoveredValue1) setValueNoCheck: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d3b48; bytecode file offset 0x9d0410"
!RBBoundedLattice methodsFor: 'recovered'!
createWithValueVector
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) getValue.
    recoveredValue3 := (recoveredValue2) asArray.
    recoveredValue4 := (recoveredValue3) asVector.
    (recoveredValue1) setValueNoCheck: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010bfbc; bytecode file offset 0xa08928"
!RBBoundedLattice methodsFor: 'recovered'!
adjustValueToInterval
    super adjustValueToInterval.
    (self) unfinished.
    (self) rememberValue.
    ^self
! !

"ASDBase.ic method 0x2010c064; bytecode file offset 0xa08928"
!RBBoundedLattice methodsFor: 'recovered'!
adjustValueToIntervalWithoutConvertion
    super adjustValueToIntervalWithoutConvertion.
    (self) unfinished.
    (self) rememberValue.
    ^self
! !

"ASDBase.ic method 0x20145a18; bytecode file offset 0xa422f4"
!RBBoundedLattice methodsFor: 'recovered'!
initializeForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super initializeForType: (recoveredValue0).
    (self) rememberValue.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) getQuantization.
    quantization := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x20145a30; bytecode file offset 0xa422f4"
!RBBoundedLattice methodsFor: 'recovered'!
initializeForValueClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    super initializeForValueClass: (recoveredValue0).
    (self) rememberValue.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) getQuantization.
    quantization := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2014f2a8; bytecode file offset 0xa4bb68"
!RBBoundedLattice methodsFor: 'recovered'!
copyImplementation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) class.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredValue3 := value.
    recoveredValue4 := interval.
    recoveredValue5 := (recoveredValue4) deepCopy.
    recoveredValue6 := quantization.
    recoveredValue7 := (recoveredValue6) deepCopy.
    recoveredValue8 := (recoveredValue0) createForType: (recoveredValue2) value: (recoveredValue3) interval: (recoveredValue5) quantization: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2015707c; bytecode file offset 0xa53940"
!RBBoundedLattice methodsFor: 'recovered'!
initializeForValueClass: recoveredArg1 type: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super initializeForValueClass: (recoveredValue0) type: (recoveredValue1).
    (self) rememberValue.
    recoveredValue2 := type.
    recoveredValue3 := (recoveredValue2) getQuantization.
    quantization := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20159fa0; bytecode file offset 0xa5685c"
!RBBoundedLattice methodsFor: 'recovered'!
emWriteObjectOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := internalValue.
    recoveredLocal1 := recoveredValue0.
    internalValue := nil.
    recoveredValue1 := recoveredArg1.
    super emWriteObjectOn: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    internalValue := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2015b8dc; bytecode file offset 0xa58198"
!RBBoundedLattice methodsFor: 'recovered'!
dumpSize
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := internalValue.
    recoveredLocal1 := recoveredValue0.
    internalValue := nil.
    recoveredValue1 := super dumpSize.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    internalValue := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015fa90; bytecode file offset 0xa5c350"
!RBBoundedLattice methodsFor: 'recovered'!
deepCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := type.
    recoveredValue2 := (recoveredValue1) deepCopy.
    recoveredValue3 := value.
    recoveredValue4 := (recoveredValue3) deepCopy.
    recoveredValue5 := interval.
    recoveredValue6 := (recoveredValue5) deepCopy.
    recoveredValue7 := quantization.
    recoveredValue8 := (recoveredValue7) deepCopy.
    recoveredValue9 := (recoveredValue0) createForType: (recoveredValue2) value: (recoveredValue4) interval: (recoveredValue6) quantization: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20305468; bytecode file offset 0xc01d3c"
!RBBoundedLattice methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) name.
    (recoveredValue1) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := value.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := (recoveredValue7) , (' in ').
    recoveredValue9 := interval.
    recoveredValue10 := (recoveredValue9) printString.
    recoveredValue11 := (recoveredValue8) , (recoveredValue10).
    (recoveredValue5) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue0.
    (recoveredValue12) cr.
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := type.
    recoveredValue15 := (recoveredValue14) printString.
    (recoveredValue13) nextPutAll: (recoveredValue15).
    recoveredValue16 := recoveredValue0.
    (recoveredValue16) cr.
    recoveredValue17 := quantization.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('quantization: ') , (recoveredValue18).
    (recoveredValue0) nextPutAll: (recoveredValue19).
    ^self
! !

"ASDBase.ic method 0x203c7b20; bytecode file offset 0xcc43f8"
!RBBoundedLattice methodsFor: 'recovered'!
initializeForType: recoveredArg1 value: recoveredArg2 interval: recoveredArg3 quantization: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            type := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            interval := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            quantization := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInterval.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := interval.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := interval.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := interval.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) left: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := interval.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := interval.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) contains: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := interval.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) right.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) right: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := type.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) getInterval.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := interval.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) intersect: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            interval := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) adjustValueToInterval.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) adjustValueToQuantization.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

