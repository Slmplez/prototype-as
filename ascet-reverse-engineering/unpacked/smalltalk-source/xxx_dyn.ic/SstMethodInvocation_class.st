"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20001060; bytecode file offset 0x626a4"
!SstMethodInvocation class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001150; bytecode file offset 0x626a4"
!SstMethodInvocation class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x2000291c; bytecode file offset 0x63b1c"
!SstMethodInvocation class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x200105f4; bytecode file offset 0x716d4"
!SstMethodInvocation class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SstInvocationHandler.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstances.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block2800ab24Arg1 | 
    | block2800ab24Value0 block2800ab24Value1 |
    block2800ab24Value0 := block2800ab24Arg1.
    block2800ab24Value1 := (block2800ab24Value0) suspend.
    block2800ab24Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018714; bytecode file offset 0x79c2c"
!SstMethodInvocation class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b178Arg1 | 
    | block2800b178Stack0 block2800b178Stack1 block2800b178Stack2 block2800b178Stack3 block2800b178Stack4 block2800b178PC block2800b178Step block2800b178Done block2800b178Result |
    block2800b178Stack0 := self.
    block2800b178PC := 4.
    block2800b178Done := false.
    [block2800b178Done not] whileTrue: [
        block2800b178Step := block2800b178PC.
        block2800b178Step = 4 ifTrue: [
            block2800b178Stack1 := block2800b178Arg1.
            block2800b178PC := 5.
        ].
        block2800b178Step = 5 ifTrue: [
            block2800b178Stack2 := 'setupAfterLoad'.
            block2800b178PC := 7.
        ].
        block2800b178Step = 7 ifTrue: [
            block2800b178Stack1 := (block2800b178Stack1) respondsTo: (block2800b178Stack2).
            block2800b178PC := 8.
        ].
        block2800b178Step = 8 ifTrue: [
            (block2800b178Stack1) ifTrue: [block2800b178PC := 12] ifFalse: [block2800b178PC := 15].
        ].
        block2800b178Step = 12 ifTrue: [
            block2800b178Stack1 := block2800b178Arg1.
            block2800b178PC := 13.
        ].
        block2800b178Step = 13 ifTrue: [
            (block2800b178Stack1) setupAfterLoad.
            block2800b178PC := 15.
        ].
        block2800b178Step = 15 ifTrue: [
            block2800b178Stack1 := nil.
            block2800b178PC := 16.
        ].
        block2800b178Step = 16 ifTrue: [
            block2800b178Stack2 := block2800b178Arg1.
            block2800b178PC := 17.
        ].
        block2800b178Step = 17 ifTrue: [
            block2800b178Stack2 := (block2800b178Stack2) class.
            block2800b178PC := 18.
        ].
        block2800b178Step = 18 ifTrue: [
            block2800b178Stack3 := 'setupAfterLoadNonInherited'.
            block2800b178PC := 20.
        ].
        block2800b178Step = 20 ifTrue: [
            block2800b178Stack2 := (block2800b178Stack2) includesSelector: (block2800b178Stack3).
            block2800b178PC := 22.
        ].
        block2800b178Step = 22 ifTrue: [
            (block2800b178Stack2) ifTrue: [block2800b178PC := 26] ifFalse: [block2800b178PC := 30].
        ].
        block2800b178Step = 26 ifTrue: [
            block2800b178PC := 27.
        ].
        block2800b178Step = 27 ifTrue: [
            block2800b178Stack1 := block2800b178Arg1.
            block2800b178PC := 28.
        ].
        block2800b178Step = 28 ifTrue: [
            block2800b178Stack1 := (block2800b178Stack1) setupAfterLoadNonInherited.
            block2800b178PC := 30.
        ].
        block2800b178Step = 30 ifTrue: [
            block2800b178Result := block2800b178Stack1.
            block2800b178Done := true.
        ].
    ].
    block2800b178Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001899c; bytecode file offset 0x79c2c"
!SstMethodInvocation class methodsFor: 'recovered'!
removing
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := defined.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block2800b400Arg1 | 
    | block2800b400Stack0 block2800b400Stack1 block2800b400Stack2 block2800b400Stack3 block2800b400Stack4 block2800b400PC block2800b400Step block2800b400Done block2800b400Result |
    block2800b400Stack0 := self.
    block2800b400PC := 4.
    block2800b400Done := false.
    [block2800b400Done not] whileTrue: [
        block2800b400Step := block2800b400PC.
        block2800b400Step = 4 ifTrue: [
            block2800b400Stack1 := block2800b400Arg1.
            block2800b400PC := 5.
        ].
        block2800b400Step = 5 ifTrue: [
            block2800b400Stack2 := 'cleanUpBeforeRemove'.
            block2800b400PC := 7.
        ].
        block2800b400Step = 7 ifTrue: [
            block2800b400Stack1 := (block2800b400Stack1) respondsTo: (block2800b400Stack2).
            block2800b400PC := 8.
        ].
        block2800b400Step = 8 ifTrue: [
            (block2800b400Stack1) ifTrue: [block2800b400PC := 12] ifFalse: [block2800b400PC := 15].
        ].
        block2800b400Step = 12 ifTrue: [
            block2800b400Stack1 := block2800b400Arg1.
            block2800b400PC := 13.
        ].
        block2800b400Step = 13 ifTrue: [
            (block2800b400Stack1) cleanUpBeforeRemove.
            block2800b400PC := 15.
        ].
        block2800b400Step = 15 ifTrue: [
            block2800b400Stack1 := nil.
            block2800b400PC := 16.
        ].
        block2800b400Step = 16 ifTrue: [
            block2800b400Stack2 := block2800b400Arg1.
            block2800b400PC := 17.
        ].
        block2800b400Step = 17 ifTrue: [
            block2800b400Stack2 := (block2800b400Stack2) class.
            block2800b400PC := 18.
        ].
        block2800b400Step = 18 ifTrue: [
            block2800b400Stack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b400PC := 20.
        ].
        block2800b400Step = 20 ifTrue: [
            block2800b400Stack2 := (block2800b400Stack2) includesSelector: (block2800b400Stack3).
            block2800b400PC := 22.
        ].
        block2800b400Step = 22 ifTrue: [
            (block2800b400Stack2) ifTrue: [block2800b400PC := 26] ifFalse: [block2800b400PC := 30].
        ].
        block2800b400Step = 26 ifTrue: [
            block2800b400PC := 27.
        ].
        block2800b400Step = 27 ifTrue: [
            block2800b400Stack1 := block2800b400Arg1.
            block2800b400PC := 28.
        ].
        block2800b400Step = 28 ifTrue: [
            block2800b400Stack1 := (block2800b400Stack1) cleanUpBeforeRemoveNonInherited.
            block2800b400PC := 30.
        ].
        block2800b400Step = 30 ifTrue: [
            block2800b400Result := block2800b400Stack1.
            block2800b400Done := true.
        ].
    ].
    block2800b400Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20019a74; bytecode file offset 0x7ab5c"
!SstMethodInvocation class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) includeClassNamed: ('SstRequest').
    (recoveredValue0) includeClassNamed: ('SstReply').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) ignoreNoImplementorErrorsForMessageSend: ('resolveIn:') inMethod: ('mapReplyReceiverIn:') inClassNamed: ('SstInvocationHandler').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) ignoreNoImplementorErrorsForMessageSend: ('resolveIn:') inMethod: ('mapRequestReceiverIn:') inClassNamed: ('SstInvocationHandler').
    (recoveredValue2) ignoreNoImplementorErrorsForMessageSend: ('objectExportedAs:ifAbsent:') inMethod: ('mapRequestReceiverIn:') inClassNamed: ('SstInvocationHandler').
    ^self
! !

