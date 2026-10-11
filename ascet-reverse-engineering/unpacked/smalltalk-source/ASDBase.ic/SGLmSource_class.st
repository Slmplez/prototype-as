"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ded4; bytecode file offset 0x934580"
!SGLmSource class methodsFor: 'recovered'!
create
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048c84; bytecode file offset 0x945728"
!SGLmSource class methodsFor: 'recovered'!
prepareCodeGeneration
    AliasCache := nil.
    ^self
! !

"ASDBase.ic method 0x203766d0; bytecode file offset 0xc72fa4"
!SGLmSource class methodsFor: 'recovered'!
fromDOM: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGLmGraphicSource.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGLmGraphicSource.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := SGLmTextSource.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := SGLmTextSource.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := SGCgStapledSource.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := SGCgStapledSource.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := SGLmASCETLinkSource.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := SGLmASCETLinkSource.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bb2f0; bytecode file offset 0xcb7bc8"
!SGLmSource class methodsFor: 'recovered'!
fromDOM: recoveredArg1 method: recoveredArg2 sourceMap: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := SGLmGraphicSource.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SGLmGraphicSource.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := SGLmTextSource.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := SGLmTextSource.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := SGCgStapledSource.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := SGCgStapledSource.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) method: (recoveredStack3) sourceMap: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := SGLmASCETLinkSource.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) xmlName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := SGLmASCETLinkSource.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromDOM: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2040af8c; bytecode file offset 0xd07888"
!SGLmSource class methodsFor: 'recovered'!
aliasCache
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AliasCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            AliasCache := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := SGCodeManager.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) makeGraph.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) nodes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block280fac2cArg1 | 
    | block280fac2cLocal1 block280fac2cLocal2 block280fac2cStack0 block280fac2cStack1 block280fac2cStack2 block280fac2cStack3 block280fac2cStack4 block280fac2cPC block280fac2cStep block280fac2cDone block280fac2cResult |
    block280fac2cStack0 := self.
    block280fac2cPC := 4.
    block280fac2cDone := false.
    [block280fac2cDone not] whileTrue: [
        block280fac2cStep := block280fac2cPC.
        block280fac2cStep = 4 ifTrue: [
            block280fac2cStack1 := block280fac2cArg1.
            block280fac2cPC := 5.
        ].
        block280fac2cStep = 5 ifTrue: [
            block280fac2cStack1 := (block280fac2cStack1) makeConfig.
            block280fac2cPC := 7.
        ].
        block280fac2cStep = 7 ifTrue: [
            block280fac2cStack1 := (block280fac2cStack1) implementationKey.
            block280fac2cPC := 9.
        ].
        block280fac2cStep = 9 ifTrue: [
            block280fac2cLocal2 := block280fac2cStack1.
            block280fac2cPC := 10.
        ].
        block280fac2cStep = 10 ifTrue: [
            block280fac2cStack1 := block280fac2cLocal2.
            block280fac2cPC := 11.
        ].
        block280fac2cStep = 11 ifTrue: [
            (block280fac2cStack1 == nil) ifTrue: [block280fac2cPC := 34] ifFalse: [block280fac2cPC := 14].
        ].
        block280fac2cStep = 14 ifTrue: [
            block280fac2cStack1 := block280fac2cLocal2.
            block280fac2cPC := 15.
        ].
        block280fac2cStep = 15 ifTrue: [
            block280fac2cStack1 := (block280fac2cStack1) isDBProxy.
            block280fac2cPC := 17.
        ].
        block280fac2cStep = 17 ifTrue: [
            (block280fac2cStack1) ifTrue: [block280fac2cPC := 20] ifFalse: [block280fac2cPC := 34].
        ].
        block280fac2cStep = 20 ifTrue: [
            block280fac2cStack1 := AliasCache.
            block280fac2cPC := 22.
        ].
        block280fac2cStep = 22 ifTrue: [
            block280fac2cStack2 := block280fac2cLocal2.
            block280fac2cPC := 23.
        ].
        block280fac2cStep = 23 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) dbObject.
            block280fac2cPC := 25.
        ].
        block280fac2cStep = 25 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) globalId.
            block280fac2cPC := 27.
        ].
        block280fac2cStep = 27 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) aliasAsIdString.
            block280fac2cPC := 29.
        ].
        block280fac2cStep = 29 ifTrue: [
            block280fac2cStack3 := block280fac2cLocal2.
            block280fac2cPC := 30.
        ].
        block280fac2cStep = 30 ifTrue: [
            block280fac2cStack3 := (block280fac2cStack3) getDBObject.
            block280fac2cPC := 32.
        ].
        block280fac2cStep = 32 ifTrue: [
            (block280fac2cStack1) at: (block280fac2cStack2) put: (block280fac2cStack3).
            block280fac2cPC := 34.
        ].
        block280fac2cStep = 34 ifTrue: [
            block280fac2cStack1 := block280fac2cArg1.
            block280fac2cPC := 35.
        ].
        block280fac2cStep = 35 ifTrue: [
            block280fac2cStack1 := (block280fac2cStack1) makeConfig.
            block280fac2cPC := 37.
        ].
        block280fac2cStep = 37 ifTrue: [
            block280fac2cStack1 := (block280fac2cStack1) dataKey.
            block280fac2cPC := 39.
        ].
        block280fac2cStep = 39 ifTrue: [
            block280fac2cLocal1 := block280fac2cStack1.
            block280fac2cPC := 40.
        ].
        block280fac2cStep = 40 ifTrue: [
            block280fac2cStack1 := nil.
            block280fac2cPC := 41.
        ].
        block280fac2cStep = 41 ifTrue: [
            block280fac2cStack2 := block280fac2cLocal1.
            block280fac2cPC := 42.
        ].
        block280fac2cStep = 42 ifTrue: [
            (block280fac2cStack2 == nil) ifTrue: [block280fac2cPC := 67] ifFalse: [block280fac2cPC := 46].
        ].
        block280fac2cStep = 46 ifTrue: [
            block280fac2cStack2 := block280fac2cLocal1.
            block280fac2cPC := 47.
        ].
        block280fac2cStep = 47 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) isDBProxy.
            block280fac2cPC := 49.
        ].
        block280fac2cStep = 49 ifTrue: [
            (block280fac2cStack2) ifTrue: [block280fac2cPC := 52] ifFalse: [block280fac2cPC := 67].
        ].
        block280fac2cStep = 52 ifTrue: [
            block280fac2cPC := 53.
        ].
        block280fac2cStep = 53 ifTrue: [
            block280fac2cStack1 := AliasCache.
            block280fac2cPC := 55.
        ].
        block280fac2cStep = 55 ifTrue: [
            block280fac2cStack2 := block280fac2cLocal1.
            block280fac2cPC := 56.
        ].
        block280fac2cStep = 56 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) dbObject.
            block280fac2cPC := 58.
        ].
        block280fac2cStep = 58 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) globalId.
            block280fac2cPC := 60.
        ].
        block280fac2cStep = 60 ifTrue: [
            block280fac2cStack2 := (block280fac2cStack2) aliasAsIdString.
            block280fac2cPC := 62.
        ].
        block280fac2cStep = 62 ifTrue: [
            block280fac2cStack3 := block280fac2cLocal1.
            block280fac2cPC := 63.
        ].
        block280fac2cStep = 63 ifTrue: [
            block280fac2cStack3 := (block280fac2cStack3) getDBObject.
            block280fac2cPC := 65.
        ].
        block280fac2cStep = 65 ifTrue: [
            block280fac2cStack1 := (block280fac2cStack1) at: (block280fac2cStack2) put: (block280fac2cStack3).
            block280fac2cPC := 67.
        ].
        block280fac2cStep = 67 ifTrue: [
            block280fac2cResult := block280fac2cStack1.
            block280fac2cDone := true.
        ].
    ].
    block280fac2cResult
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := AliasCache.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

