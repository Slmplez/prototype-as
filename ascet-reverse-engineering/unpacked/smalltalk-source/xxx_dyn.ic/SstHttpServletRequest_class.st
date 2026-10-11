"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2002bc80; bytecode file offset 0x8cd98"
!SstHttpServletRequest class methodsFor: 'recovered'!
parseAcceptLanguageHeader: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $,.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [:block2800c138Arg1 | 
    | block2800c138Stack0 block2800c138Stack1 block2800c138Stack2 block2800c138Stack3 block2800c138PC block2800c138Step block2800c138Done block2800c138Result |
    block2800c138Stack0 := self.
    block2800c138PC := 4.
    block2800c138Done := false.
    [block2800c138Done not] whileTrue: [
        block2800c138Step := block2800c138PC.
        block2800c138Step = 4 ifTrue: [
            block2800c138Stack1 := block2800c138Arg1.
            block2800c138PC := 5.
        ].
        block2800c138Step = 5 ifTrue: [
            block2800c138Stack2 := $;.
            block2800c138PC := 8.
        ].
        block2800c138Step = 8 ifTrue: [
            block2800c138Stack1 := (block2800c138Stack1) subStrings: (block2800c138Stack2).
            block2800c138PC := 9.
        ].
        block2800c138Step = 9 ifTrue: [
            block2800c138Stack2 := [:block2800c15cArg1 | 
    | block2800c15cValue0 block2800c15cValue1 |
    block2800c15cValue0 := block2800c15cArg1.
    block2800c15cValue1 := (block2800c15cValue0) trimBlanks.
    block2800c15cValue1
].
            block2800c138PC := 11.
        ].
        block2800c138Step = 11 ifTrue: [
            block2800c138PC := 17.
        ].
        block2800c138Step = 17 ifTrue: [
            block2800c138Stack1 := (block2800c138Stack1) collect: (block2800c138Stack2).
            block2800c138PC := 19.
        ].
        block2800c138Step = 19 ifTrue: [
            block2800c138Result := block2800c138Stack1.
            block2800c138Done := true.
        ].
    ].
    block2800c138Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:block2800c180Arg1 :block2800c180Arg2 | 
    | block2800c180Local1 block2800c180Local2 block2800c180Stack0 block2800c180Stack1 block2800c180Stack2 block2800c180Stack3 block2800c180Stack4 block2800c180PC block2800c180Step block2800c180Done block2800c180Result |
    block2800c180Stack0 := self.
    block2800c180PC := 4.
    block2800c180Done := false.
    [block2800c180Done not] whileTrue: [
        block2800c180Step := block2800c180PC.
        block2800c180Step = 4 ifTrue: [
            block2800c180Stack1 := true.
            block2800c180PC := 5.
        ].
        block2800c180Step = 5 ifTrue: [
            block2800c180Stack2 := block2800c180Arg1.
            block2800c180PC := 6.
        ].
        block2800c180Step = 6 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) size.
            block2800c180PC := 8.
        ].
        block2800c180Step = 8 ifTrue: [
            block2800c180Stack3 := 2.
            block2800c180PC := 10.
        ].
        block2800c180Step = 10 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) < (block2800c180Stack3).
            block2800c180PC := 11.
        ].
        block2800c180Step = 11 ifTrue: [
            (block2800c180Stack2) ifTrue: [block2800c180PC := 14] ifFalse: [block2800c180PC := 24].
        ].
        block2800c180Step = 14 ifTrue: [
            block2800c180Stack2 := block2800c180Arg2.
            block2800c180PC := 15.
        ].
        block2800c180Step = 15 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) size.
            block2800c180PC := 17.
        ].
        block2800c180Step = 17 ifTrue: [
            block2800c180Stack3 := 1.
            block2800c180PC := 19.
        ].
        block2800c180Step = 19 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) > (block2800c180Stack3).
            block2800c180PC := 20.
        ].
        block2800c180Step = 20 ifTrue: [
            (block2800c180Stack2) ifTrue: [block2800c180PC := 87] ifFalse: [block2800c180PC := 24].
        ].
        block2800c180Step = 24 ifTrue: [
            block2800c180PC := 25.
        ].
        block2800c180Step = 25 ifTrue: [
            block2800c180Stack1 := false.
            block2800c180PC := 26.
        ].
        block2800c180Step = 26 ifTrue: [
            block2800c180Stack2 := block2800c180Arg1.
            block2800c180PC := 27.
        ].
        block2800c180Step = 27 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) size.
            block2800c180PC := 29.
        ].
        block2800c180Step = 29 ifTrue: [
            block2800c180Stack3 := 1.
            block2800c180PC := 31.
        ].
        block2800c180Step = 31 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) > (block2800c180Stack3).
            block2800c180PC := 32.
        ].
        block2800c180Step = 32 ifTrue: [
            (block2800c180Stack2) ifTrue: [block2800c180PC := 36] ifFalse: [block2800c180PC := 87].
        ].
        block2800c180Step = 36 ifTrue: [
            block2800c180Stack2 := block2800c180Arg2.
            block2800c180PC := 37.
        ].
        block2800c180Step = 37 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) size.
            block2800c180PC := 39.
        ].
        block2800c180Step = 39 ifTrue: [
            block2800c180Stack3 := 1.
            block2800c180PC := 41.
        ].
        block2800c180Step = 41 ifTrue: [
            block2800c180Stack2 := (block2800c180Stack2) > (block2800c180Stack3).
            block2800c180PC := 42.
        ].
        block2800c180Step = 42 ifTrue: [
            (block2800c180Stack2) ifTrue: [block2800c180PC := 46] ifFalse: [block2800c180PC := 87].
        ].
        block2800c180Step = 46 ifTrue: [
            block2800c180PC := 47.
        ].
        block2800c180Step = 47 ifTrue: [
            block2800c180Stack1 := block2800c180Arg1.
            block2800c180PC := 48.
        ].
        block2800c180Step = 48 ifTrue: [
            block2800c180Stack2 := 2.
            block2800c180PC := 50.
        ].
        block2800c180Step = 50 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) at: (block2800c180Stack2).
            block2800c180PC := 52.
        ].
        block2800c180Step = 52 ifTrue: [
            block2800c180Stack2 := $=.
            block2800c180PC := 56.
        ].
        block2800c180Step = 56 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) sstSplitAt: (block2800c180Stack2).
            block2800c180PC := 58.
        ].
        block2800c180Step = 58 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) last.
            block2800c180PC := 60.
        ].
        block2800c180Step = 60 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) trimBlanks.
            block2800c180PC := 61.
        ].
        block2800c180Step = 61 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) abtAsNumber.
            block2800c180PC := 63.
        ].
        block2800c180Step = 63 ifTrue: [
            block2800c180Local2 := block2800c180Stack1.
            block2800c180PC := 64.
        ].
        block2800c180Step = 64 ifTrue: [
            block2800c180Stack1 := block2800c180Arg2.
            block2800c180PC := 65.
        ].
        block2800c180Step = 65 ifTrue: [
            block2800c180Stack2 := 2.
            block2800c180PC := 67.
        ].
        block2800c180Step = 67 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) at: (block2800c180Stack2).
            block2800c180PC := 69.
        ].
        block2800c180Step = 69 ifTrue: [
            block2800c180Stack2 := $=.
            block2800c180PC := 72.
        ].
        block2800c180Step = 72 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) sstSplitAt: (block2800c180Stack2).
            block2800c180PC := 74.
        ].
        block2800c180Step = 74 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) last.
            block2800c180PC := 76.
        ].
        block2800c180Step = 76 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) trimBlanks.
            block2800c180PC := 77.
        ].
        block2800c180Step = 77 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) abtAsNumber.
            block2800c180PC := 79.
        ].
        block2800c180Step = 79 ifTrue: [
            block2800c180Local1 := block2800c180Stack1.
            block2800c180PC := 80.
        ].
        block2800c180Step = 80 ifTrue: [
            block2800c180Stack1 := block2800c180Local2.
            block2800c180PC := 81.
        ].
        block2800c180Step = 81 ifTrue: [
            block2800c180Stack2 := block2800c180Local1.
            block2800c180PC := 82.
        ].
        block2800c180Step = 82 ifTrue: [
            block2800c180Stack1 := (block2800c180Stack1) > (block2800c180Stack2).
            block2800c180PC := 83.
        ].
        block2800c180Step = 83 ifTrue: [
            block2800c180Stack2 := nil.
            block2800c180PC := 84.
        ].
        block2800c180Step = 84 ifTrue: [
            block2800c180Stack3 := block2800c180Stack2.
            block2800c180PC := 85.
        ].
        block2800c180Step = 85 ifTrue: [
            block2800c180Local2 := block2800c180Stack3.
            block2800c180PC := 86.
        ].
        block2800c180Step = 86 ifTrue: [
            block2800c180Local1 := block2800c180Stack2.
            block2800c180PC := 87.
        ].
        block2800c180Step = 87 ifTrue: [
            block2800c180Result := block2800c180Stack1.
            block2800c180Done := true.
        ].
    ].
    block2800c180Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := WriteStream.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := (recoveredStack2) on: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := [:block2800c1a4Arg1 :block2800c1a4Arg2 | 
    | block2800c1a4Value0 block2800c1a4Value1 block2800c1a4Value2 block2800c1a4Value3 |
    block2800c1a4Value0 := block2800c1a4Arg1.
    block2800c1a4Value1 := block2800c1a4Value0.
    block2800c1a4Value2 := block2800c1a4Arg2.
    block2800c1a4Value3 := (block2800c1a4Value2) first.
    (block2800c1a4Value1) nextPut: (block2800c1a4Value3).
    block2800c1a4Value0
].
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

