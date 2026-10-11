"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2018e238; bytecode file offset 0xa8ab20"
!ASDXMLDefinedMultipleInstanceOptions class methodsFor: 'recovered'!
instances
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := theInstances.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := LookupTable.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    theInstances := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := theInstances.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2023b654; bytecode file offset 0xb37f18"
!ASDXMLDefinedMultipleInstanceOptions class methodsFor: 'recovered'!
removeInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := theInstances.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ddb68Arg1 | 
    | block280ddb68Value0 block280ddb68Value1 block280ddb68Value2 |
    block280ddb68Value0 := block280ddb68Arg1.
    block280ddb68Value1 := [:block280ddb68Block7Arg1 | 
    | block280ddb68Block7Value0 block280ddb68Block7Value1 block280ddb68Block7Value2 |
    block280ddb68Block7Value0 := block280ddb68Block7Arg1.
    block280ddb68Block7Value1 := block280ddb68Arg1.
    block280ddb68Block7Value2 := (block280ddb68Block7Value0) removeInstanceFrom: (block280ddb68Block7Value1).
    block280ddb68Block7Value2
].
    block280ddb68Value2 := (block280ddb68Value0) do: (block280ddb68Value1).
    block280ddb68Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            theInstances := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

