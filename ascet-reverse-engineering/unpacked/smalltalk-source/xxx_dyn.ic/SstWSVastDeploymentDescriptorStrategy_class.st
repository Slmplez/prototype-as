"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x200014ec; bytecode file offset 0x626a4"
!SstWSVastDeploymentDescriptorStrategy class methodsFor: 'recovered'!
strategyIDs
    ^#('xml')
! !

"xxx_dyn.ic method 0x20001534; bytecode file offset 0x626a4"
!SstWSVastDeploymentDescriptorStrategy class methodsFor: 'recovered'!
strategyURIs
    ^#('urn:VASTWebServiceDeployment600')
! !

"xxx_dyn.ic method 0x2000db60; bytecode file offset 0x6ec38"
!SstWSVastDeploymentDescriptorStrategy class methodsFor: 'recovered'!
setupAfterLoadNonInherited
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2800a89cArg1 | 
    | block2800a89cLocal1 block2800a89cValue0 block2800a89cValue1 block2800a89cValue2 block2800a89cValue3 block2800a89cValue4 |
    block2800a89cValue0 := block2800a89cArg1.
    block2800a89cValue1 := (block2800a89cValue0) new.
    block2800a89cLocal1 := block2800a89cValue1.
    block2800a89cValue2 := block2800a89cArg1.
    block2800a89cValue3 := block2800a89cLocal1.
    block2800a89cValue4 := (block2800a89cValue2) register: (block2800a89cValue3).
    block2800a89cValue4
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

