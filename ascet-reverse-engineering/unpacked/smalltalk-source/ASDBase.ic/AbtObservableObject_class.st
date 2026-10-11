"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004911c; bytecode file offset 0x9459f8"
!AbtObservableObject class methodsFor: 'recovered'!
abtPrimFlushInterfaceSpecCache
    mergedInterfaceSpec := nil.
    ^self
! !

"ASDBase.ic method 0x20075604; bytecode file offset 0x9757c8"
!AbtObservableObject class methodsFor: 'recovered'!
abtIsObservableObjectClass
    ^true
! !

"ASDBase.ic method 0x2009c5b0; bytecode file offset 0x998e70"
!AbtObservableObject class methodsFor: 'recovered'!
newPart
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := AbtObservableObjectPartWrapper.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) new.
    recoveredValue3 := (recoveredValue1) contents: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2015da44; bytecode file offset 0xa5a2fc"
!AbtObservableObject class methodsFor: 'recovered'!
mergedInterfaceSpec
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := mergedInterfaceSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMergedInterfaceSpec.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            mergedInterfaceSpec := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := mergedInterfaceSpec.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

