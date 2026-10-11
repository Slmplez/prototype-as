"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200128f4; bytecode file offset 0x912098"
!Boolean class methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtBooleanConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073af8; bytecode file offset 0x970b34"
!Boolean class methodsFor: 'recovered'!
recursiveDeferredUpdateOperationClass
    ^nil
! !

"ASDBase.ic method 0x20074dcc; bytecode file offset 0x9757c8"
!Boolean class methodsFor: 'recovered'!
abrInstancesAreImmutable
    ^true
! !

"ASDBase.ic method 0x2007570c; bytecode file offset 0x9757c8"
!Boolean class methodsFor: 'recovered'!
abtCanBeBoolean
    ^true
! !

"ASDBase.ic method 0x201537d0; bytecode file offset 0xa50090"
!Boolean class methodsFor: 'recovered'!
abtXmlFromString: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) asLowercase.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'true'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := '1'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

