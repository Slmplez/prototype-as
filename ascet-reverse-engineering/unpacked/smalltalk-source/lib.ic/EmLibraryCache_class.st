"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000058; bytecode file offset 0x3c0a8"
!EmLibraryCache class methodsFor: 'recovered'!
traceCacheEditions
    ^self
! !

"lib.ic method 0x20002f78; bytecode file offset 0x3ef9c"
!EmLibraryCache class methodsFor: 'recovered'!
cacheEditions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CacheEditions.
    recoveredValue1 := (recoveredValue0) ~~ (0).
    ^recoveredValue1
! !

"lib.ic method 0x20004260; bytecode file offset 0x40290"
!EmLibraryCache class methodsFor: 'recovered'!
activeProcessIsBeingDebugged
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Processor.
    recoveredValue1 := (recoveredValue0) debugMap.
    recoveredValue2 := Processor.
    recoveredValue3 := (recoveredValue2) activeProcess.
    recoveredValue4 := (recoveredValue1) includesKey: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x20004e7c; bytecode file offset 0x40ea4"
!EmLibraryCache class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) initializeCache.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20006338; bytecode file offset 0x42360"
!EmLibraryCache class methodsFor: 'recovered'!
cache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Cache.
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
            (recoveredStack1) initializeCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Cache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x20006890; bytecode file offset 0x428c4"
!EmLibraryCache class methodsFor: 'recovered'!
initializeCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    Cache := recoveredValue1.
    CacheEditions := 0.
    (self) traceCacheEditions.
    ^self
! !

"lib.ic method 0x20008ef0; bytecode file offset 0x44f14"
!EmLibraryCache class methodsFor: 'recovered'!
current: recoveredArg1
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
            recoveredStack2 := current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) initializeCache.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            current := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000fabc; bytecode file offset 0x4baf4"
!EmLibraryCache class methodsFor: 'recovered'!
current
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := current.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) current: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcessIsBeingDebugged.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := current.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) flushEditionsFromCache.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := CacheEditions.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            CacheEditions := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) traceCacheEditions.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := current.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021e10; bytecode file offset 0x5de58"
!EmLibraryCache class methodsFor: 'recovered'!
cacheEditionsWhileExecuting: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) activeProcessIsBeingDebugged.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) flushEditionsFromCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := CacheEditions.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            CacheEditions := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) traceCacheEditions.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := CacheEditions.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) + (-1).
            recoveredBlock29PC := 39.
        ].
        recoveredBlock29Step = 39 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            CacheEditions := recoveredBlock29Stack2.
            recoveredBlock29PC := 42.
        ].
        recoveredBlock29Step = 42 ifTrue: [
            recoveredBlock29Stack2 := 0.
            recoveredBlock29PC := 44.
        ].
        recoveredBlock29Step = 44 ifTrue: [
            (recoveredBlock29Stack1 ~~ recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 52] ifFalse: [recoveredBlock29PC := 48].
        ].
        recoveredBlock29Step = 48 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) current.
            recoveredBlock29PC := 50.
        ].
        recoveredBlock29Step = 50 ifTrue: [
            (recoveredBlock29Stack1) flushEditionsFromCache.
            recoveredBlock29PC := 52.
        ].
        recoveredBlock29Step = 52 ifTrue: [
            (recoveredBlock29Stack0) traceCacheEditions.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack0 := CacheEditions.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack1 := 0.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack0 := (recoveredBlock29Stack0) < (recoveredBlock29Stack1).
            recoveredBlock29PC := 59.
        ].
        recoveredBlock29Step = 59 ifTrue: [
            (recoveredBlock29Stack0) ifTrue: [recoveredBlock29PC := 62] ifFalse: [recoveredBlock29PC := 69].
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29Stack0 := 0.
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            CacheEditions := recoveredBlock29Stack0.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Stack0 := self.
            recoveredBlock29PC := 67.
        ].
        recoveredBlock29Step = 67 ifTrue: [
            (recoveredBlock29Stack0) traceCacheEditions.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            recoveredBlock29Stack0 := true.
            recoveredBlock29PC := 70.
        ].
        recoveredBlock29Step = 70 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Stack0.
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            recoveredLocal1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 74.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack0.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 |
    recoveredBlock78Value0 := recoveredArg1.
    recoveredBlock78Value1 := [
    | recoveredBlock78Block87Stack0 recoveredBlock78Block87Stack1 recoveredBlock78Block87Stack2 recoveredBlock78Block87Stack3 recoveredBlock78Block87PC recoveredBlock78Block87Step recoveredBlock78Block87Done recoveredBlock78Block87Result |
    recoveredBlock78Block87Stack0 := nil.
    recoveredBlock78Block87PC := 94.
    recoveredBlock78Block87Done := false.
    [recoveredBlock78Block87Done not] whileTrue: [
        recoveredBlock78Block87Step := recoveredBlock78Block87PC.
        recoveredBlock78Block87Step = 94 ifTrue: [
            recoveredBlock78Block87Stack1 := nil.
            recoveredBlock78Block87PC := 95.
        ].
        recoveredBlock78Block87Step = 95 ifTrue: [
            recoveredBlock78Block87Stack2 := recoveredLocal1.
            recoveredBlock78Block87PC := 98.
        ].
        recoveredBlock78Block87Step = 98 ifTrue: [
            (recoveredBlock78Block87Stack2) ifTrue: [recoveredBlock78Block87PC := 107] ifFalse: [recoveredBlock78Block87PC := 102].
        ].
        recoveredBlock78Block87Step = 102 ifTrue: [
            recoveredBlock78Block87PC := 103.
        ].
        recoveredBlock78Block87Step = 103 ifTrue: [
            recoveredBlock78Block87Stack1 := recoveredLocal2.
            recoveredBlock78Block87PC := 106.
        ].
        recoveredBlock78Block87Step = 106 ifTrue: [
            recoveredBlock78Block87Stack1 := (recoveredBlock78Block87Stack1) value.
            recoveredBlock78Block87PC := 107.
        ].
        recoveredBlock78Block87Step = 107 ifTrue: [
            recoveredBlock78Block87Result := recoveredBlock78Block87Stack1.
            recoveredBlock78Block87Done := true.
        ].
    ].
    recoveredBlock78Block87Result
].
    recoveredBlock78Value2 := (recoveredBlock78Value0) valueOnReturnDo: (recoveredBlock78Value1).
    recoveredBlock78Value2
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Stack0 recoveredBlock113Stack1 recoveredBlock113Stack2 recoveredBlock113PC recoveredBlock113Step recoveredBlock113Done recoveredBlock113Result |
    recoveredBlock113Stack0 := self.
    recoveredBlock113PC := 120.
    recoveredBlock113Done := false.
    [recoveredBlock113Done not] whileTrue: [
        recoveredBlock113Step := recoveredBlock113PC.
        recoveredBlock113Step = 120 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal1.
            recoveredBlock113PC := 123.
        ].
        recoveredBlock113Step = 123 ifTrue: [
            (recoveredBlock113Stack1) ifTrue: [recoveredBlock113PC := 131] ifFalse: [recoveredBlock113PC := 126].
        ].
        recoveredBlock113Step = 126 ifTrue: [
            recoveredBlock113Stack1 := recoveredLocal2.
            recoveredBlock113PC := 129.
        ].
        recoveredBlock113Step = 129 ifTrue: [
            (recoveredBlock113Stack1) value.
            recoveredBlock113PC := 131.
        ].
        recoveredBlock113Step = 131 ifTrue: [
            recoveredBlock113Stack1 := recoveredBlock113Arg1.
            recoveredBlock113PC := 132.
        ].
        recoveredBlock113Step = 132 ifTrue: [
            recoveredBlock113Stack1 := (recoveredBlock113Stack1) signal.
            recoveredBlock113PC := 134.
        ].
        recoveredBlock113Step = 134 ifTrue: [
            recoveredBlock113Result := recoveredBlock113Stack1.
            recoveredBlock113Done := true.
        ].
    ].
    recoveredBlock113Result
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

