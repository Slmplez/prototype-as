"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006f08; bytecode file offset 0x908be4"
!SGConfigurationManager methodsFor: 'recovered'!
sgClass
    | recoveredValue0 |
    recoveredValue0 := (self) item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008ee8; bytecode file offset 0x908be4"
!SGConfigurationManager methodsFor: 'recovered'!
implementation
    | recoveredValue0 |
    recoveredValue0 := (self) item.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200294d4; bytecode file offset 0x934580"
!SGConfigurationManager methodsFor: 'recovered'!
classDataConfigKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) classDataConfigKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a964; bytecode file offset 0x934580"
!SGConfigurationManager methodsFor: 'recovered'!
classImplConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) classImplConfigConsistent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a9c4; bytecode file offset 0x934580"
!SGConfigurationManager methodsFor: 'recovered'!
elements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) elements.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c4f4; bytecode file offset 0x934580"
!SGConfigurationManager methodsFor: 'recovered'!
classDataConfig
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) classDataConfigConsistent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032374; bytecode file offset 0x934580"
!SGConfigurationManager methodsFor: 'recovered'!
classImplConfigKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) classImplConfigKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20035b14; bytecode file offset 0x934580"
!SGConfigurationManager methodsFor: 'recovered'!
itemIsModifiable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) item.
    recoveredValue1 := (recoveredValue0) modifiable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20058008; bytecode file offset 0x956284"
!SGConfigurationManager methodsFor: 'recovered'!
createImplConfigName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createImplConfig: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200583f8; bytecode file offset 0x956284"
!SGConfigurationManager methodsFor: 'recovered'!
createDataConfigName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createDataConfig: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a160; bytecode file offset 0x956a30"
!SGConfigurationManager methodsFor: 'recovered'!
copyConfig: recoveredArg1 label: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) copyConfigLabel: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200848c4; bytecode file offset 0x981ca4"
!SGConfigurationManager methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) item: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a18d0; bytecode file offset 0x99e1b8"
!SGConfigurationManager methodsFor: 'recovered'!
allDataConfigKeys
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) item.
    (recoveredValue0) checkInvalidDatas.
    recoveredValue1 := (self) item.
    recoveredValue2 := (recoveredValue1) dataConfigKeys.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20105650; bytecode file offset 0xa01f0c"
!SGConfigurationManager methodsFor: 'recovered'!
item
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := itemKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c6144Arg1 | 
    nil
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010e348; bytecode file offset 0xa0ac24"
!SGConfigurationManager methodsFor: 'recovered'!
removeDataConfig: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeDataConfig: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010e358; bytecode file offset 0xa0ac24"
!SGConfigurationManager methodsFor: 'recovered'!
removeImplConfig: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) removeImplConfig: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201448ec; bytecode file offset 0xa411a4"
!SGConfigurationManager methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            itemKey := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            itemKey := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f1d78; bytecode file offset 0xaee648"
!SGConfigurationManager methodsFor: 'recovered'!
allImplConfigKeys
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) checkInvalidImplementations.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) item.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationKeys.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d7de4Arg1 | 
    | block280d7de4Stack0 block280d7de4Stack1 block280d7de4Stack2 block280d7de4Stack3 block280d7de4PC block280d7de4Step block280d7de4Done block280d7de4Result |
    block280d7de4Stack0 := self.
    block280d7de4PC := 4.
    block280d7de4Done := false.
    [block280d7de4Done not] whileTrue: [
        block280d7de4Step := block280d7de4PC.
        block280d7de4Step = 4 ifTrue: [
            block280d7de4Stack1 := block280d7de4Arg1.
            block280d7de4PC := 5.
        ].
        block280d7de4Step = 5 ifTrue: [
            block280d7de4Stack2 := [:block280d7e08Arg1 | 
    | block280d7e08Value0 |
    block280d7e08Value0 := block280d7e08Arg1.
    block280d7e08Value0
].
            block280d7de4PC := 7.
        ].
        block280d7de4Step = 7 ifTrue: [
            block280d7de4PC := 12.
        ].
        block280d7de4Step = 12 ifTrue: [
            block280d7de4Stack1 := (block280d7de4Stack1) readKeyIfUndefined: (block280d7de4Stack2).
            block280d7de4PC := 14.
        ].
        block280d7de4Step = 14 ifTrue: [
            block280d7de4Result := block280d7de4Stack1.
            block280d7de4Done := true.
        ].
    ].
    block280d7de4Result
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

