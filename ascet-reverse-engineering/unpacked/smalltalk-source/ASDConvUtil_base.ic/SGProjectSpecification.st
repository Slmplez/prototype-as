"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDConvUtil_base.ic method 0x20002414; bytecode file offset 0xbeb0"
!SGProjectSpecification methodsFor: 'recovered'!
convertToAnsiCReplaceString: recoveredArg1 monitor: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            super convertToAnsiCReplaceString: (recoveredStack1) monitor: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) osLogic.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:block28000efcArg1 | 
    | block28000efcStack0 block28000efcStack1 block28000efcStack2 block28000efcStack3 block28000efcPC block28000efcStep block28000efcDone block28000efcResult |
    block28000efcStack0 := self.
    block28000efcPC := 4.
    block28000efcDone := false.
    [block28000efcDone not] whileTrue: [
        block28000efcStep := block28000efcPC.
        block28000efcStep = 4 ifTrue: [
            block28000efcStack1 := block28000efcArg1.
            block28000efcPC := 5.
        ].
        block28000efcStep = 5 ifTrue: [
            block28000efcStack2 := [:block28000f20Arg1 | 
    nil
].
            block28000efcPC := 7.
        ].
        block28000efcStep = 7 ifTrue: [
            block28000efcPC := 12.
        ].
        block28000efcStep = 12 ifTrue: [
            block28000efcStack1 := (block28000efcStack1) getObjectIfUndefined: (block28000efcStack2).
            block28000efcPC := 14.
        ].
        block28000efcStep = 14 ifTrue: [
            block28000efcResult := block28000efcStack1.
            block28000efcDone := true.
        ].
    ].
    block28000efcResult
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:block28000f44Arg1 | 
    | block28000f44Value0 block28000f44Value1 |
    block28000f44Value0 := block28000f44Arg1.
    block28000f44Value1 := (block28000f44Value0) notNil.
    block28000f44Value1
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := (recoveredBlock65Value0) getTasks.
    recoveredBlock65Value2 := [:recoveredBlock65Block77Arg1 | 
    | recoveredBlock65Block77Local1 recoveredBlock65Block77Local2 recoveredBlock65Block77Stack0 recoveredBlock65Block77Stack1 recoveredBlock65Block77Stack2 recoveredBlock65Block77Stack3 recoveredBlock65Block77Stack4 recoveredBlock65Block77PC recoveredBlock65Block77Step recoveredBlock65Block77Done recoveredBlock65Block77Result |
    recoveredBlock65Block77Stack0 := self.
    recoveredBlock65Block77PC := 84.
    recoveredBlock65Block77Done := false.
    [recoveredBlock65Block77Done not] whileTrue: [
        recoveredBlock65Block77Step := recoveredBlock65Block77PC.
        recoveredBlock65Block77Step = 84 ifTrue: [
            recoveredBlock65Block77Stack1 := recoveredBlock65Block77Arg1.
            recoveredBlock65Block77PC := 85.
        ].
        recoveredBlock65Block77Step = 85 ifTrue: [
            recoveredBlock65Block77Stack1 := (recoveredBlock65Block77Stack1) name.
            recoveredBlock65Block77PC := 87.
        ].
        recoveredBlock65Block77Step = 87 ifTrue: [
            recoveredBlock65Block77Local2 := recoveredBlock65Block77Stack1.
            recoveredBlock65Block77PC := 88.
        ].
        recoveredBlock65Block77Step = 88 ifTrue: [
            recoveredBlock65Block77Stack1 := nil.
            recoveredBlock65Block77PC := 89.
        ].
        recoveredBlock65Block77Step = 89 ifTrue: [
            recoveredBlock65Block77Stack2 := recoveredBlock65Block77Local2.
            recoveredBlock65Block77PC := 90.
        ].
        recoveredBlock65Block77Step = 90 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) isValidANSICIdentifier.
            recoveredBlock65Block77PC := 92.
        ].
        recoveredBlock65Block77Step = 92 ifTrue: [
            (recoveredBlock65Block77Stack2) ifTrue: [recoveredBlock65Block77PC := 152] ifFalse: [recoveredBlock65Block77PC := 96].
        ].
        recoveredBlock65Block77Step = 96 ifTrue: [
            recoveredBlock65Block77PC := 97.
        ].
        recoveredBlock65Block77Step = 97 ifTrue: [
            recoveredBlock65Block77Stack1 := recoveredBlock65Block77Local2.
            recoveredBlock65Block77PC := 98.
        ].
        recoveredBlock65Block77Step = 98 ifTrue: [
            recoveredBlock65Block77Stack2 := recoveredArg1.
            recoveredBlock65Block77PC := 101.
        ].
        recoveredBlock65Block77Step = 101 ifTrue: [
            recoveredBlock65Block77Stack1 := (recoveredBlock65Block77Stack1) getValidANSICIdentifierReplace: (recoveredBlock65Block77Stack2).
            recoveredBlock65Block77PC := 103.
        ].
        recoveredBlock65Block77Step = 103 ifTrue: [
            recoveredBlock65Block77Local1 := recoveredBlock65Block77Stack1.
            recoveredBlock65Block77PC := 104.
        ].
        recoveredBlock65Block77Step = 104 ifTrue: [
            recoveredBlock65Block77Stack1 := recoveredArg2.
            recoveredBlock65Block77PC := 107.
        ].
        recoveredBlock65Block77Step = 107 ifTrue: [
            recoveredBlock65Block77Stack2 := self.
            recoveredBlock65Block77PC := 108.
        ].
        recoveredBlock65Block77Step = 108 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) ownerSGClass.
            recoveredBlock65Block77PC := 110.
        ].
        recoveredBlock65Block77Step = 110 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) pathName.
            recoveredBlock65Block77PC := 112.
        ].
        recoveredBlock65Block77Step = 112 ifTrue: [
            recoveredBlock65Block77Stack3 := ' - task '.
            recoveredBlock65Block77PC := 114.
        ].
        recoveredBlock65Block77Step = 114 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) , (recoveredBlock65Block77Stack3).
            recoveredBlock65Block77PC := 116.
        ].
        recoveredBlock65Block77Step = 116 ifTrue: [
            recoveredBlock65Block77Stack3 := recoveredBlock65Block77Local2.
            recoveredBlock65Block77PC := 117.
        ].
        recoveredBlock65Block77Step = 117 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) , (recoveredBlock65Block77Stack3).
            recoveredBlock65Block77PC := 119.
        ].
        recoveredBlock65Block77Step = 119 ifTrue: [
            recoveredBlock65Block77Stack3 := ' -> '.
            recoveredBlock65Block77PC := 121.
        ].
        recoveredBlock65Block77Step = 121 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) , (recoveredBlock65Block77Stack3).
            recoveredBlock65Block77PC := 123.
        ].
        recoveredBlock65Block77Step = 123 ifTrue: [
            recoveredBlock65Block77Stack3 := recoveredBlock65Block77Local1.
            recoveredBlock65Block77PC := 124.
        ].
        recoveredBlock65Block77Step = 124 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) , (recoveredBlock65Block77Stack3).
            recoveredBlock65Block77PC := 126.
        ].
        recoveredBlock65Block77Step = 126 ifTrue: [
            (recoveredBlock65Block77Stack1) addText: (recoveredBlock65Block77Stack2).
            recoveredBlock65Block77PC := 128.
        ].
        recoveredBlock65Block77Step = 128 ifTrue: [
            recoveredBlock65Block77Stack1 := recoveredBlock65Block77Arg1.
            recoveredBlock65Block77PC := 129.
        ].
        recoveredBlock65Block77Step = 129 ifTrue: [
            recoveredBlock65Block77Stack2 := recoveredBlock65Block77Local1.
            recoveredBlock65Block77PC := 130.
        ].
        recoveredBlock65Block77Step = 130 ifTrue: [
            (recoveredBlock65Block77Stack1) name: (recoveredBlock65Block77Stack2).
            recoveredBlock65Block77PC := 132.
        ].
        recoveredBlock65Block77Step = 132 ifTrue: [
            recoveredBlock65Block77Stack1 := recoveredBlock65Arg1.
            recoveredBlock65Block77PC := 135.
        ].
        recoveredBlock65Block77Step = 135 ifTrue: [
            (recoveredBlock65Block77Stack1) modified.
            recoveredBlock65Block77PC := 137.
        ].
        recoveredBlock65Block77Step = 137 ifTrue: [
            recoveredBlock65Block77Stack1 := nil.
            recoveredBlock65Block77PC := 138.
        ].
        recoveredBlock65Block77Step = 138 ifTrue: [
            recoveredBlock65Block77Stack2 := self.
            recoveredBlock65Block77PC := 139.
        ].
        recoveredBlock65Block77Step = 139 ifTrue: [
            recoveredBlock65Block77Stack2 := (recoveredBlock65Block77Stack2) ownerSGClass.
            recoveredBlock65Block77PC := 141.
        ].
        recoveredBlock65Block77Step = 141 ifTrue: [
            (recoveredBlock65Block77Stack2 == nil) ifTrue: [recoveredBlock65Block77PC := 150] ifFalse: [recoveredBlock65Block77PC := 144].
        ].
        recoveredBlock65Block77Step = 144 ifTrue: [
            recoveredBlock65Block77PC := 145.
        ].
        recoveredBlock65Block77Step = 145 ifTrue: [
            recoveredBlock65Block77Stack1 := self.
            recoveredBlock65Block77PC := 146.
        ].
        recoveredBlock65Block77Step = 146 ifTrue: [
            recoveredBlock65Block77Stack1 := (recoveredBlock65Block77Stack1) ownerSGClass.
            recoveredBlock65Block77PC := 148.
        ].
        recoveredBlock65Block77Step = 148 ifTrue: [
            recoveredBlock65Block77Stack1 := (recoveredBlock65Block77Stack1) userModified.
            recoveredBlock65Block77PC := 150.
        ].
        recoveredBlock65Block77Step = 150 ifTrue: [
            recoveredBlock65Block77Stack2 := nil.
            recoveredBlock65Block77PC := 151.
        ].
        recoveredBlock65Block77Step = 151 ifTrue: [
            recoveredBlock65Block77Local1 := recoveredBlock65Block77Stack2.
            recoveredBlock65Block77PC := 152.
        ].
        recoveredBlock65Block77Step = 152 ifTrue: [
            recoveredBlock65Block77Result := recoveredBlock65Block77Stack1.
            recoveredBlock65Block77Done := true.
        ].
    ].
    recoveredBlock65Block77Result
].
    recoveredBlock65Value3 := (recoveredBlock65Value1) do: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

