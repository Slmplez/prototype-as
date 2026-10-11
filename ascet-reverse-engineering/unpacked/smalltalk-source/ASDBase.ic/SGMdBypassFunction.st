"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006b18; bytecode file offset 0x908be4"
!SGMdBypassFunction methodsFor: 'recovered'!
inputMappings
    | recoveredValue0 |
    recoveredValue0 := (self) inputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007de4; bytecode file offset 0x908be4"
!SGMdBypassFunction methodsFor: 'recovered'!
outputMappings
    | recoveredValue0 |
    recoveredValue0 := (self) outputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000d7f4; bytecode file offset 0x90a4b8"
!SGMdBypassFunction methodsFor: 'recovered'!
collectMappings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20050dd0; bytecode file offset 0x94d68c"
!SGMdBypassFunction methodsFor: 'recovered'!
toBeSynchronized
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) attributes.
    recoveredValue1 := (recoveredValue0) dispatchPoint.
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054cd8; bytecode file offset 0x952a9c"
!SGMdBypassFunction methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) bypassFunction: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057738; bytecode file offset 0x956284"
!SGMdBypassFunction methodsFor: 'recovered'!
addInput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) inputs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057ac8; bytecode file offset 0x956284"
!SGMdBypassFunction methodsFor: 'recovered'!
addOutput: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) outputs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) add: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006ce70; bytecode file offset 0x969c04"
!SGMdBypassFunction methodsFor: 'recovered'!
attributes
    | recoveredValue0 |
    recoveredValue0 := attributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d54c; bytecode file offset 0x96a390"
!SGMdBypassFunction methodsFor: 'recovered'!
inputs
    | recoveredValue0 |
    recoveredValue0 := inputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dd28; bytecode file offset 0x96a9dc"
!SGMdBypassFunction methodsFor: 'recovered'!
outputs
    | recoveredValue0 |
    recoveredValue0 := outputs.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007877c; bytecode file offset 0x9757c8"
!SGMdBypassFunction methodsFor: 'recovered'!
isMdlBypassFunction
    ^true
! !

"ASDBase.ic method 0x200c3940; bytecode file offset 0x9c058c"
!SGMdBypassFunction methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d675c; bytecode file offset 0x9d3134"
!SGMdBypassFunction methodsFor: 'recovered'!
initialize
    super initialize.
    (self) resetInputsOutputs.
    ^self
! !

"ASDBase.ic method 0x200f019c; bytecode file offset 0x9eca58"
!SGMdBypassFunction methodsFor: 'recovered'!
resetInputsOutputs
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    inputs := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    outputs := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200f7374; bytecode file offset 0x9f4e38"
!SGMdBypassFunction methodsFor: 'recovered'!
outputPaths
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputsToSynchronize.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c432cArg1 | 
    | block280c432cValue0 block280c432cValue1 |
    block280c432cValue0 := block280c432cArg1.
    block280c432cValue1 := (block280c432cValue0) fromVarDeclPath.
    block280c432cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f7eb4; bytecode file offset 0x9f4e38"
!SGMdBypassFunction methodsFor: 'recovered'!
usesdT
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) processSeq.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c540cArg1 | 
    | block280c540cValue0 block280c540cValue1 |
    block280c540cValue0 := block280c540cArg1.
    block280c540cValue1 := (block280c540cValue0) usesdT.
    block280c540cValue1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) anySatisfy: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f819c; bytecode file offset 0x9f4e38"
!SGMdBypassFunction methodsFor: 'recovered'!
inputPaths
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputs.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5868Arg1 | 
    | block280c5868Value0 block280c5868Value1 |
    block280c5868Value0 := block280c5868Arg1.
    block280c5868Value1 := (block280c5868Value0) fromVarDeclPath.
    block280c5868Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c8fc0; bytecode file offset 0xac588c"
!SGMdBypassFunction methodsFor: 'recovered'!
outputsToSynchronize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputMappings.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4d60Arg1 | 
    | block280d4d60Stack0 block280d4d60Stack1 block280d4d60Stack2 block280d4d60Stack3 block280d4d60PC block280d4d60Step block280d4d60Done block280d4d60Result |
    block280d4d60Stack0 := self.
    block280d4d60PC := 4.
    block280d4d60Done := false.
    [block280d4d60Done not] whileTrue: [
        block280d4d60Step := block280d4d60PC.
        block280d4d60Step = 4 ifTrue: [
            block280d4d60Stack1 := true.
            block280d4d60PC := 5.
        ].
        block280d4d60Step = 5 ifTrue: [
            block280d4d60Stack2 := block280d4d60Arg1.
            block280d4d60PC := 6.
        ].
        block280d4d60Step = 6 ifTrue: [
            block280d4d60Stack2 := (block280d4d60Stack2) ehooksElementAttributes.
            block280d4d60PC := 7.
        ].
        block280d4d60Step = 7 ifTrue: [
            block280d4d60Stack2 := (block280d4d60Stack2) name.
            block280d4d60PC := 8.
        ].
        block280d4d60Step = 8 ifTrue: [
            (block280d4d60Stack2 == nil) ifTrue: [block280d4d60PC := 17] ifFalse: [block280d4d60PC := 12].
        ].
        block280d4d60Step = 12 ifTrue: [
            block280d4d60PC := 13.
        ].
        block280d4d60Step = 13 ifTrue: [
            block280d4d60Stack1 := block280d4d60Arg1.
            block280d4d60PC := 14.
        ].
        block280d4d60Step = 14 ifTrue: [
            block280d4d60Stack1 := (block280d4d60Stack1) ehooksElementAttributes.
            block280d4d60PC := 15.
        ].
        block280d4d60Step = 15 ifTrue: [
            block280d4d60Stack1 := (block280d4d60Stack1) isBackupCopy.
            block280d4d60PC := 17.
        ].
        block280d4d60Step = 17 ifTrue: [
            block280d4d60Result := block280d4d60Stack1.
            block280d4d60Done := true.
        ].
    ].
    block280d4d60Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d1998; bytecode file offset 0xcce274"
!SGMdBypassFunction methodsFor: 'recovered'!
inputsToSynchronize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) inputMappings.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) name.
    recoveredBlock11Value2 := [
    | recoveredBlock11Block22Value0 recoveredBlock11Block22Value1 recoveredBlock11Block22Value2 recoveredBlock11Block22Value3 recoveredBlock11Block22Value4 |
    recoveredBlock11Block22Value0 := recoveredLocal1.
    recoveredBlock11Block22Value1 := recoveredBlock11Arg1.
    recoveredBlock11Block22Value2 := (recoveredBlock11Block22Value1) name.
    recoveredBlock11Block22Value3 := recoveredBlock11Arg1.
    recoveredBlock11Block22Value4 := (recoveredBlock11Block22Value0) at: (recoveredBlock11Block22Value2) put: (recoveredBlock11Block22Value3).
    recoveredBlock11Block22Value4
].
    recoveredBlock11Value3 := (recoveredBlock11Value1) ifNotNil: (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) outputsToSynchronize.
    recoveredValue5 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 |
    recoveredBlock49Value0 := recoveredLocal1.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := (recoveredBlock49Value1) name.
    recoveredBlock49Value3 := [
    | recoveredBlock49Block63Value0 |
    recoveredBlock49Block63Value0 := recoveredBlock49Arg1.
    recoveredBlock49Block63Value0
].
    recoveredBlock49Value4 := (recoveredBlock49Value0) at: (recoveredBlock49Value2) ifAbsentPut: (recoveredBlock49Value3).
    recoveredBlock49Value4
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) values.
    ^recoveredValue7
! !

