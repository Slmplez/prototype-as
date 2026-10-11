"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001128; bytecode file offset 0x8ffcfc"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
appBldrPart
    ^self
! !

"ASDBase.ic method 0x200025d8; bytecode file offset 0x8ffcfc"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
subpartsSettingsApplied
    ^self
! !

"ASDBase.ic method 0x2004e6e4; bytecode file offset 0x94d048"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
abtBuildInternals
    (self) finalInitialize.
    ^self
! !

"ASDBase.ic method 0x2006b9f0; bytecode file offset 0x96873c"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
primaryPart
    | recoveredValue0 |
    recoveredValue0 := primaryPart.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cf80; bytecode file offset 0x969c04"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
instanceInterfaceSpec
    | recoveredValue0 |
    recoveredValue0 := instanceInterfaceSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077f74; bytecode file offset 0x9757c8"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
isAppBldrPart
    ^true
! !

"ASDBase.ic method 0x200c25e8; bytecode file offset 0x9bf474"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
primaryPart: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    primaryPart := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c33fc; bytecode file offset 0x9bfde0"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
attributeConnections: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributeConnections := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3880; bytecode file offset 0x9c058c"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
instanceInterfaceSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instanceInterfaceSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2017f780; bytecode file offset 0xa7c03c"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
attributeConnections
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributeConnections.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            attributeConnections := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := attributeConnections.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018a174; bytecode file offset 0xa86a38"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
privateInterfaceSpec
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super privateInterfaceSpec.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceInterfaceSpec.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceInterfaceSpec.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2018dddc; bytecode file offset 0xa8a69c"
!AbtAppBldrNonVisual methodsFor: 'recovered'!
initializeAttributeConnections
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := attributeConnections.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := attributeConnections.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280d1568Arg1 | 
    | block280d1568Value0 block280d1568Value1 |
    block280d1568Value0 := block280d1568Arg1.
    block280d1568Value1 := (block280d1568Value0) initializeConnection.
    block280d1568Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

