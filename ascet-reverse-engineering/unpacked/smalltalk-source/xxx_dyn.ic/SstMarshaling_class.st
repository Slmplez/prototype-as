"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000070; bytecode file offset 0x6147c"
!SstMarshaling class methodsFor: 'recovered'!
_PRAGMA_SstMarshalingEncodingConstants
    ^self
! !

"xxx_dyn.ic method 0x20001204; bytecode file offset 0x626a4"
!SstMarshaling class methodsFor: 'recovered'!
classMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x20001330; bytecode file offset 0x626a4"
!SstMarshaling class methodsFor: 'recovered'!
instanceMethodCategories
    ^#('SST-API Developer' 'SST-API User' 'SST-Internal')
! !

"xxx_dyn.ic method 0x200028ec; bytecode file offset 0x63b1c"
!SstMarshaling class methodsFor: 'recovered'!
failedRemove
    (self) loaded.
    ^self
! !

"xxx_dyn.ic method 0x20018930; bytecode file offset 0x79c2c"
!SstMarshaling class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b394Arg1 | 
    | block2800b394Stack0 block2800b394Stack1 block2800b394Stack2 block2800b394Stack3 block2800b394Stack4 block2800b394PC block2800b394Step block2800b394Done block2800b394Result |
    block2800b394Stack0 := self.
    block2800b394PC := 4.
    block2800b394Done := false.
    [block2800b394Done not] whileTrue: [
        block2800b394Step := block2800b394PC.
        block2800b394Step = 4 ifTrue: [
            block2800b394Stack1 := block2800b394Arg1.
            block2800b394PC := 5.
        ].
        block2800b394Step = 5 ifTrue: [
            block2800b394Stack2 := 'setupAfterLoad'.
            block2800b394PC := 7.
        ].
        block2800b394Step = 7 ifTrue: [
            block2800b394Stack1 := (block2800b394Stack1) respondsTo: (block2800b394Stack2).
            block2800b394PC := 8.
        ].
        block2800b394Step = 8 ifTrue: [
            (block2800b394Stack1) ifTrue: [block2800b394PC := 12] ifFalse: [block2800b394PC := 15].
        ].
        block2800b394Step = 12 ifTrue: [
            block2800b394Stack1 := block2800b394Arg1.
            block2800b394PC := 13.
        ].
        block2800b394Step = 13 ifTrue: [
            (block2800b394Stack1) setupAfterLoad.
            block2800b394PC := 15.
        ].
        block2800b394Step = 15 ifTrue: [
            block2800b394Stack1 := nil.
            block2800b394PC := 16.
        ].
        block2800b394Step = 16 ifTrue: [
            block2800b394Stack2 := block2800b394Arg1.
            block2800b394PC := 17.
        ].
        block2800b394Step = 17 ifTrue: [
            block2800b394Stack2 := (block2800b394Stack2) class.
            block2800b394PC := 18.
        ].
        block2800b394Step = 18 ifTrue: [
            block2800b394Stack3 := 'setupAfterLoadNonInherited'.
            block2800b394PC := 20.
        ].
        block2800b394Step = 20 ifTrue: [
            block2800b394Stack2 := (block2800b394Stack2) includesSelector: (block2800b394Stack3).
            block2800b394PC := 22.
        ].
        block2800b394Step = 22 ifTrue: [
            (block2800b394Stack2) ifTrue: [block2800b394PC := 26] ifFalse: [block2800b394PC := 30].
        ].
        block2800b394Step = 26 ifTrue: [
            block2800b394PC := 27.
        ].
        block2800b394Step = 27 ifTrue: [
            block2800b394Stack1 := block2800b394Arg1.
            block2800b394PC := 28.
        ].
        block2800b394Step = 28 ifTrue: [
            block2800b394Stack1 := (block2800b394Stack1) setupAfterLoadNonInherited.
            block2800b394PC := 30.
        ].
        block2800b394Step = 30 ifTrue: [
            block2800b394Result := block2800b394Stack1.
            block2800b394Done := true.
        ].
    ].
    block2800b394Result
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

"xxx_dyn.ic method 0x20018978; bytecode file offset 0x79c2c"
!SstMarshaling class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block2800b3dcArg1 | 
    | block2800b3dcStack0 block2800b3dcStack1 block2800b3dcStack2 block2800b3dcStack3 block2800b3dcStack4 block2800b3dcPC block2800b3dcStep block2800b3dcDone block2800b3dcResult |
    block2800b3dcStack0 := self.
    block2800b3dcPC := 4.
    block2800b3dcDone := false.
    [block2800b3dcDone not] whileTrue: [
        block2800b3dcStep := block2800b3dcPC.
        block2800b3dcStep = 4 ifTrue: [
            block2800b3dcStack1 := block2800b3dcArg1.
            block2800b3dcPC := 5.
        ].
        block2800b3dcStep = 5 ifTrue: [
            block2800b3dcStack2 := 'cleanUpBeforeRemove'.
            block2800b3dcPC := 7.
        ].
        block2800b3dcStep = 7 ifTrue: [
            block2800b3dcStack1 := (block2800b3dcStack1) respondsTo: (block2800b3dcStack2).
            block2800b3dcPC := 8.
        ].
        block2800b3dcStep = 8 ifTrue: [
            (block2800b3dcStack1) ifTrue: [block2800b3dcPC := 12] ifFalse: [block2800b3dcPC := 15].
        ].
        block2800b3dcStep = 12 ifTrue: [
            block2800b3dcStack1 := block2800b3dcArg1.
            block2800b3dcPC := 13.
        ].
        block2800b3dcStep = 13 ifTrue: [
            (block2800b3dcStack1) cleanUpBeforeRemove.
            block2800b3dcPC := 15.
        ].
        block2800b3dcStep = 15 ifTrue: [
            block2800b3dcStack1 := nil.
            block2800b3dcPC := 16.
        ].
        block2800b3dcStep = 16 ifTrue: [
            block2800b3dcStack2 := block2800b3dcArg1.
            block2800b3dcPC := 17.
        ].
        block2800b3dcStep = 17 ifTrue: [
            block2800b3dcStack2 := (block2800b3dcStack2) class.
            block2800b3dcPC := 18.
        ].
        block2800b3dcStep = 18 ifTrue: [
            block2800b3dcStack3 := 'cleanUpBeforeRemoveNonInherited'.
            block2800b3dcPC := 20.
        ].
        block2800b3dcStep = 20 ifTrue: [
            block2800b3dcStack2 := (block2800b3dcStack2) includesSelector: (block2800b3dcStack3).
            block2800b3dcPC := 22.
        ].
        block2800b3dcStep = 22 ifTrue: [
            (block2800b3dcStack2) ifTrue: [block2800b3dcPC := 26] ifFalse: [block2800b3dcPC := 30].
        ].
        block2800b3dcStep = 26 ifTrue: [
            block2800b3dcPC := 27.
        ].
        block2800b3dcStep = 27 ifTrue: [
            block2800b3dcStack1 := block2800b3dcArg1.
            block2800b3dcPC := 28.
        ].
        block2800b3dcStep = 28 ifTrue: [
            block2800b3dcStack1 := (block2800b3dcStack1) cleanUpBeforeRemoveNonInherited.
            block2800b3dcPC := 30.
        ].
        block2800b3dcStep = 30 ifTrue: [
            block2800b3dcResult := block2800b3dcStack1.
            block2800b3dcDone := true.
        ].
    ].
    block2800b3dcResult
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

"xxx_dyn.ic method 0x20022c6c; bytecode file offset 0x83d7c"
!SstMarshaling class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) doNotReduceClassNamed: ('SstDeepValueWrapper').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) doNotReduceClassNamed: ('SstLoadingWrapper').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) doNotReduceClassNamed: ('SstReferenceWrapper').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) doNotReduceClassNamed: ('SstShallowValueWrapper').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) includeMethod: ('sstAsDoubleShallowValue') inClassNamed: ('Object').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) includeMethod: ('sstAsShallowValue') inClassNamed: ('Object').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) includeMethod: ('sstAsDeepValue') inClassNamed: ('Object').
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) includeMethod: ('sstAsReference') inClassNamed: ('Object').
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) ignoreNoImplementorErrorsForMessageSend: ('sstAsDumpingArray') inClassMethod: ('for:') inClassNamed: ('SstLoadingWrapper').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) ignoreNoImplementorErrorsForMessageSend: ('basicMessageForErrorReplyTo:using:error:') inMethod: ('messageForErrorReplyTo:using:error:') inClassNamed: ('SstNestedMarshaler').
    (recoveredValue0) includeClassNamed: ('SstLoadingWrapper').
    ^self
! !

