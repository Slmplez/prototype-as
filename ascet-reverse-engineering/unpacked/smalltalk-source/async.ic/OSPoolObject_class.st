"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"async.ic method 0x20000108; bytecode file offset 0x72e0"
!OSPoolObject class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveNewElement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x20000128; bytecode file offset 0x72e0"
!OSPoolObject class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveKill: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x200001b4; bytecode file offset 0x734c"
!OSPoolObject class methodsFor: 'recovered'!
"VM primitive/special entry 0x14; native fast path not reconstructed; fallback bytecodes follow."
primitiveAllocatePool: recoveredArg1 minimumSize: recoveredArg2 alignment: recoveredArg3 keepPuddles: recoveredArg4
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"async.ic method 0x20000404; bytecode file offset 0x759c"
!OSPoolObject class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := (self) basicAllInstances.
    InstancesLastSaved := recoveredValue0.
    ^self
! !

"async.ic method 0x200005cc; bytecode file offset 0x775c"
!OSPoolObject class methodsFor: 'recovered'!
memoryPool
    | recoveredValue0 |
    recoveredValue0 := MemoryPool.
    ^recoveredValue0
! !

"async.ic method 0x200005f4; bytecode file offset 0x778c"
!OSPoolObject class methodsFor: 'recovered'!
errorNoPoolAllocated
    ^nil
! !

"async.ic method 0x20000a6c; bytecode file offset 0x7c04"
!OSPoolObject class methodsFor: 'recovered'!
newMinimumSize: recoveredArg1 alignment: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) fixedSize.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) new: (recoveredValue0) minimumSize: (recoveredValue1) alignment: (recoveredValue2).
    ^recoveredValue3
! !

"async.ic method 0x20000ae4; bytecode file offset 0x7c78"
!OSPoolObject class methodsFor: 'recovered'!
new: recoveredArg1 minimumSize: recoveredArg2 alignment: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) new: (recoveredValue0) minimumSize: (recoveredValue1) alignment: (recoveredValue2) keepPuddles: (false).
    ^recoveredValue3
! !

"async.ic method 0x20000d48; bytecode file offset 0x7edc"
!OSPoolObject class methodsFor: 'recovered'!
new: recoveredArg1 minimumSize: recoveredArg2 alignment: recoveredArg3 keepPuddles: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) allocatePool: (recoveredValue0) minimumSize: (recoveredValue1) alignment: (recoveredValue2) keepPuddles: (recoveredValue3).
    recoveredValue5 := recoveredValue4.
    MemoryPool := recoveredValue5.
    ^recoveredValue4
! !

"async.ic method 0x20000eec; bytecode file offset 0x8088"
!OSPoolObject class methodsFor: 'recovered'!
allocatePool: recoveredArg1 minimumSize: recoveredArg2 alignment: recoveredArg3 keepPuddles: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := OSImmediate.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (self) primitiveAllocatePool: (recoveredValue1) minimumSize: (recoveredValue2) alignment: (recoveredValue3) keepPuddles: (recoveredValue4).
    recoveredValue6 := (recoveredValue0) immediate: (recoveredValue5).
    ^recoveredValue6
! !

"async.ic method 0x200015e8; bytecode file offset 0x8788"
!OSPoolObject class methodsFor: 'recovered'!
killPool
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MemoryPool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := MemoryPool.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isUndefined.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := MemoryPool.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) reference.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) primitiveKill: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := MemoryPool.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) reference: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x200018cc; bytecode file offset 0x8a6c"
!OSPoolObject class methodsFor: 'recovered'!
newElement
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MemoryPool.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNoPoolAllocated.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := MemoryPool.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) reference.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveNewElement: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) address: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"async.ic method 0x20001b0c; bytecode file offset 0x8cac"
!OSPoolObject class methodsFor: 'recovered'!
preStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            MemoryPool := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := InstancesLastSaved.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := InstancesLastSaved.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:block28000b70Arg1 | 
    | block28000b70Stack0 block28000b70Stack1 block28000b70Stack2 block28000b70Stack3 block28000b70PC block28000b70Step block28000b70Done block28000b70Result |
    block28000b70Stack0 := self.
    block28000b70PC := 4.
    block28000b70Done := false.
    [block28000b70Done not] whileTrue: [
        block28000b70Step := block28000b70PC.
        block28000b70Step = 4 ifTrue: [
            block28000b70Stack1 := nil.
            block28000b70PC := 5.
        ].
        block28000b70Step = 5 ifTrue: [
            block28000b70Stack2 := block28000b70Arg1.
            block28000b70PC := 6.
        ].
        block28000b70Step = 6 ifTrue: [
            (block28000b70Stack2 == nil) ifTrue: [block28000b70PC := 13] ifFalse: [block28000b70PC := 10].
        ].
        block28000b70Step = 10 ifTrue: [
            block28000b70PC := 11.
        ].
        block28000b70Step = 11 ifTrue: [
            block28000b70Stack1 := block28000b70Arg1.
            block28000b70PC := 12.
        ].
        block28000b70Step = 12 ifTrue: [
            block28000b70Stack1 := (block28000b70Stack1) invalidate.
            block28000b70PC := 13.
        ].
        block28000b70Step = 13 ifTrue: [
            block28000b70Result := block28000b70Stack1.
            block28000b70Done := true.
        ].
    ].
    block28000b70Result
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            InstancesLastSaved := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

