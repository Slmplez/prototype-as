"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20008ba0; bytecode file offset 0x908be4"
!Metaclass methodsFor: 'recovered'!
abrAsClass
    | recoveredValue0 |
    recoveredValue0 := (self) primaryInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001269c; bytecode file offset 0x912098"
!Metaclass methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtClassConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001f5e0; bytecode file offset 0x92209c"
!Metaclass methodsFor: 'recovered'!
abtInterfaceSpecSelector
    ^'CIS_instanceInterfaceSpec'
! !

"ASDBase.ic method 0x20029294; bytecode file offset 0x934580"
!Metaclass methodsFor: 'recovered'!
calculateInterfaceSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) calculateClassInterfaceSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dbe4; bytecode file offset 0x934580"
!Metaclass methodsFor: 'recovered'!
defaultTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) defaultTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dc84; bytecode file offset 0x934580"
!Metaclass methodsFor: 'recovered'!
abtCalculateRuntimeInterfaceSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) CIS_instanceInterfaceSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004977c; bytecode file offset 0x947128"
!Metaclass methodsFor: 'recovered'!
abtCalculatesRuntimeInterfaceSpec
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) abtInterfaceSpecSelector.
    recoveredValue1 := (self) includesSelector: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200735c8; bytecode file offset 0x970b34"
!Metaclass methodsFor: 'recovered'!
emBehaviorId
    ^nil
! !

"ASDBase.ic method 0x20074db4; bytecode file offset 0x9757c8"
!Metaclass methodsFor: 'recovered'!
abrInstancesAreImmutable
    ^true
! !

"ASDBase.ic method 0x2017606c; bytecode file offset 0xa72934"
!Metaclass methodsFor: 'recovered'!
abtInterfaceSpecSelector: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isSBString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'CIS_'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) abtInterfaceSpecSelector.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

