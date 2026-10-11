"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200018e0; bytecode file offset 0x4c844"
!Metaclass methodsFor: 'recovered'!
informationClass
    | recoveredValue0 |
    recoveredValue0 := EmSelectorInformation.
    ^recoveredValue0
! !

"kernel.ic method 0x20001b30; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
isRemoved
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) isRemoved.
    ^recoveredValue1
! !

"kernel.ic method 0x20001b50; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
methodFormatTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) methodFormatTimeStamp.
    ^recoveredValue1
! !

"kernel.ic method 0x20001cb0; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
definitionMessage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) definitionMessage.
    ^recoveredValue1
! !

"kernel.ic method 0x20001cd0; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
sharedPoolNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) sharedPoolNames.
    ^recoveredValue1
! !

"kernel.ic method 0x20001d40; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"kernel.ic method 0x20001db0; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
definitionTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) definitionTimeStamp.
    ^recoveredValue1
! !

"kernel.ic method 0x20001e50; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
symbol
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) symbol.
    ^recoveredValue1
! !

"kernel.ic method 0x20001f00; bytecode file offset 0x4ce64"
!Metaclass methodsFor: 'recovered'!
classPool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (recoveredValue0) classPool.
    ^recoveredValue1
! !

"kernel.ic method 0x200041cc; bytecode file offset 0x4f0e8"
!Metaclass methodsFor: 'recovered'!
primaryInstance
    | recoveredValue0 |
    recoveredValue0 := primaryInstance.
    ^recoveredValue0
! !

"kernel.ic method 0x200045c8; bytecode file offset 0x4f5c4"
!Metaclass methodsFor: 'recovered'!
isMetaclass
    ^true
! !

"kernel.ic method 0x20005744; bytecode file offset 0x5065c"
!Metaclass methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) tenure.
    ^recoveredValue1
! !

"kernel.ic method 0x20006148; bytecode file offset 0x51060"
!Metaclass methodsFor: 'recovered'!
newPrimaryInstance
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    (self) primaryInstance: (recoveredValue0).
    recoveredValue1 := (self) primaryInstance.
    ^recoveredValue1
! !

"kernel.ic method 0x20007a78; bytecode file offset 0x5299c"
!Metaclass methodsFor: 'recovered'!
primaryInstance: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    primaryInstance := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000d870; bytecode file offset 0x58790"
!Metaclass methodsFor: 'recovered'!
name
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'an unnamed Metaclass'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryInstance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ' class'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20016c78; bytecode file offset 0x61bb0"
!Metaclass methodsFor: 'recovered'!
initializeExtraInstanceVariables
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) extraInstanceVariables: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) applicationAssocs: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) informationClass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) info: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := methodDictionary.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) info.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectors.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) selectorsArray: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

