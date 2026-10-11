"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200238b8; bytecode file offset 0x92209c"
!RBDataVector class methodsFor: 'recovered'!
defaultType
    ^'KWb'
! !

"ASDBase.ic method 0x2003c090; bytecode file offset 0x9389cc"
!RBDataVector class methodsFor: 'recovered'!
parseCreateValues: recoveredArg1 dim: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asSameVector.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058878; bytecode file offset 0x956284"
!RBDataVector class methodsFor: 'recovered'!
dim: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) createDefault.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) dim: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200740c0; bytecode file offset 0x970b34"
!RBDataVector class methodsFor: 'recovered'!
dataGeneratorChannelClass
    ^nil
! !

"ASDBase.ic method 0x20139820; bytecode file offset 0xa360d8"
!RBDataVector class methodsFor: 'recovered'!
emBehaviorId
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBDataVector.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 81.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015b2b8; bytecode file offset 0xa57b80"
!RBDataVector class methodsFor: 'recovered'!
from: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) createDefault.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := Vector.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue3) from: (recoveredValue4) to: (recoveredValue5).
    (recoveredValue2) setPhysValue: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    (recoveredValue7) updateImplementationRepresentation.
    ^recoveredValue1
! !

