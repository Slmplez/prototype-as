"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000068; bytecode file offset 0x14b34"
!AaaBuildInterface methodsFor: 'recovered'!
transferToIntecrio: recoveredArg1
    ^self
! !

"xxx.ic method 0x20000070; bytecode file offset 0x14b34"
!AaaBuildInterface methodsFor: 'recovered'!
transferToInca: recoveredArg1
    ^self
! !

"xxx.ic method 0x20001010; bytecode file offset 0x15af4"
!AaaBuildInterface methodsFor: 'recovered'!
rebuild: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280008e4Arg1 :block280008e4Arg2 | 
    | block280008e4Value0 block280008e4Value1 block280008e4Value2 |
    block280008e4Value0 := block280008e4Arg1.
    block280008e4Value1 := block280008e4Arg2.
    block280008e4Value2 := (block280008e4Value0) rebuildAll: (block280008e4Value1).
    block280008e4Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001024; bytecode file offset 0x15af4"
!AaaBuildInterface methodsFor: 'recovered'!
cleanProject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000908Arg1 :block28000908Arg2 | 
    | block28000908Value0 block28000908Value1 block28000908Value2 |
    block28000908Value0 := block28000908Arg1.
    block28000908Value1 := block28000908Arg2.
    block28000908Value2 := (block28000908Value0) cleanContext: (block28000908Value1).
    block28000908Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001190; bytecode file offset 0x15c60"
!AaaBuildInterface methodsFor: 'recovered'!
build: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000950Arg1 :block28000950Arg2 | 
    | block28000950Value0 block28000950Value1 block28000950Value2 |
    block28000950Value0 := block28000950Arg1.
    block28000950Value1 := block28000950Arg2.
    block28000950Value2 := (block28000950Value0) generateLoadableCodeForContext: (block28000950Value1) useCGen: (false).
    block28000950Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001354; bytecode file offset 0x15e9c"
!AaaBuildInterface methodsFor: 'recovered'!
touch: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000974Arg1 :block28000974Arg2 | 
    | block28000974Value0 block28000974Value1 block28000974Value2 block28000974Value3 block28000974Value4 block28000974Value5 |
    block28000974Value0 := block28000974Arg1.
    block28000974Value1 := block28000974Arg2.
    block28000974Value2 := (block28000974Value1) project.
    block28000974Value3 := (block28000974Value2) createDefaultMakeConfig.
    block28000974Value4 := block28000974Arg2.
    block28000974Value5 := (block28000974Value0) touchComponentFlat: (block28000974Value3) context: (block28000974Value4).
    block28000974Value5
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001370; bytecode file offset 0x15e9c"
!AaaBuildInterface methodsFor: 'recovered'!
generateCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000998Arg1 :block28000998Arg2 | 
    | block28000998Value0 block28000998Value1 block28000998Value2 block28000998Value3 block28000998Value4 block28000998Value5 |
    block28000998Value0 := block28000998Arg1.
    block28000998Value1 := block28000998Arg2.
    block28000998Value2 := (block28000998Value1) project.
    block28000998Value3 := (block28000998Value2) createDefaultMakeConfig.
    block28000998Value4 := block28000998Arg2.
    block28000998Value5 := (block28000998Value0) generateCodeOnly: (block28000998Value3) context: (block28000998Value4).
    block28000998Value5
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x2000138c; bytecode file offset 0x15e9c"
!AaaBuildInterface methodsFor: 'recovered'!
touchRecursive: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280009bcArg1 :block280009bcArg2 | 
    | block280009bcValue0 block280009bcValue1 block280009bcValue2 block280009bcValue3 block280009bcValue4 block280009bcValue5 |
    block280009bcValue0 := block280009bcArg1.
    block280009bcValue1 := block280009bcArg2.
    block280009bcValue2 := (block280009bcValue1) project.
    block280009bcValue3 := (block280009bcValue2) createDefaultMakeConfig.
    block280009bcValue4 := block280009bcArg2.
    block280009bcValue5 := (block280009bcValue0) touchComponentRecursive: (block280009bcValue3) context: (block280009bcValue4).
    block280009bcValue5
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200013c4; bytecode file offset 0x15e9c"
!AaaBuildInterface methodsFor: 'recovered'!
compile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000a04Arg1 :block28000a04Arg2 | 
    | block28000a04Value0 block28000a04Value1 block28000a04Value2 block28000a04Value3 block28000a04Value4 block28000a04Value5 |
    block28000a04Value0 := block28000a04Arg1.
    block28000a04Value1 := block28000a04Arg2.
    block28000a04Value2 := (block28000a04Value1) project.
    block28000a04Value3 := (block28000a04Value2) createDefaultMakeConfig.
    block28000a04Value4 := block28000a04Arg2.
    block28000a04Value5 := (block28000a04Value0) generateAndCompileAnsiCCode: (block28000a04Value3) context: (block28000a04Value4).
    block28000a04Value5
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x2000143c; bytecode file offset 0x15f48"
!AaaBuildInterface methodsFor: 'recovered'!
compile: recoveredArg1 usingProject: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000a4cArg1 :block28000a4cArg2 :block28000a4cArg3 | 
    | block28000a4cValue0 block28000a4cValue1 block28000a4cValue2 block28000a4cValue3 |
    block28000a4cValue0 := block28000a4cArg1.
    block28000a4cValue1 := block28000a4cArg2.
    block28000a4cValue2 := block28000a4cArg3.
    block28000a4cValue3 := (block28000a4cValue0) generateAndCompileAnsiCCode: (block28000a4cValue1) context: (block28000a4cValue2).
    block28000a4cValue3
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forElement: (recoveredStack2) usingProject: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001450; bytecode file offset 0x15f48"
!AaaBuildInterface methodsFor: 'recovered'!
touch: recoveredArg1 usingProject: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000a70Arg1 :block28000a70Arg2 :block28000a70Arg3 | 
    | block28000a70Value0 block28000a70Value1 block28000a70Value2 block28000a70Value3 |
    block28000a70Value0 := block28000a70Arg1.
    block28000a70Value1 := block28000a70Arg2.
    block28000a70Value2 := block28000a70Arg3.
    block28000a70Value3 := (block28000a70Value0) touchComponentFlat: (block28000a70Value1) context: (block28000a70Value2).
    block28000a70Value3
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forElement: (recoveredStack2) usingProject: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001464; bytecode file offset 0x15f48"
!AaaBuildInterface methodsFor: 'recovered'!
touchRecursive: recoveredArg1 usingProject: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000a94Arg1 :block28000a94Arg2 :block28000a94Arg3 | 
    | block28000a94Value0 block28000a94Value1 block28000a94Value2 block28000a94Value3 |
    block28000a94Value0 := block28000a94Arg1.
    block28000a94Value1 := block28000a94Arg2.
    block28000a94Value2 := block28000a94Arg3.
    block28000a94Value3 := (block28000a94Value0) touchComponentRecursive: (block28000a94Value1) context: (block28000a94Value2).
    block28000a94Value3
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forElement: (recoveredStack2) usingProject: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001478; bytecode file offset 0x15f48"
!AaaBuildInterface methodsFor: 'recovered'!
generateCode: recoveredArg1 usingProject: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000ab8Arg1 :block28000ab8Arg2 :block28000ab8Arg3 | 
    | block28000ab8Value0 block28000ab8Value1 block28000ab8Value2 block28000ab8Value3 |
    block28000ab8Value0 := block28000ab8Arg1.
    block28000ab8Value1 := block28000ab8Arg2.
    block28000ab8Value2 := block28000ab8Arg3.
    block28000ab8Value3 := (block28000ab8Value0) generateCodeOnly: (block28000ab8Value1) context: (block28000ab8Value2).
    block28000ab8Value3
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forElement: (recoveredStack2) usingProject: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001ed4; bytecode file offset 0x169bc"
!AaaBuildInterface methodsFor: 'recovered'!
writeAsam2Mc: recoveredArg1 toPath: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidPathName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) asPathname.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) fileName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := '.a2l'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeAsam2Mc: (recoveredStack1) toFile: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20002850; bytecode file offset 0x17384"
!AaaBuildInterface methodsFor: 'recovered'!
exportGeneratedCode: recoveredArg1 toPath: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidPathName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Arg2.
    recoveredBlock18Value2 := (recoveredBlock18Value1) project.
    recoveredBlock18Value3 := (recoveredBlock18Value2) createDefaultMakeConfig.
    recoveredBlock18Value4 := recoveredBlock18Arg2.
    recoveredBlock18Value5 := recoveredArg2.
    recoveredBlock18Value6 := (recoveredBlock18Value0) fileOutGeneratedCodeFlat: (recoveredBlock18Value3) context: (recoveredBlock18Value4) path: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20002878; bytecode file offset 0x17384"
!AaaBuildInterface methodsFor: 'recovered'!
exportGeneratedGenericCode: recoveredArg1 toPath: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidPathName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Arg2.
    recoveredBlock18Value2 := (recoveredBlock18Value1) project.
    recoveredBlock18Value3 := (recoveredBlock18Value2) createDefaultMakeConfig.
    recoveredBlock18Value4 := recoveredBlock18Arg2.
    recoveredBlock18Value5 := recoveredArg2.
    recoveredBlock18Value6 := (recoveredBlock18Value0) fileOutGenericCodeRecursive: (recoveredBlock18Value3) context: (recoveredBlock18Value4) path: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200028a0; bytecode file offset 0x17384"
!AaaBuildInterface methodsFor: 'recovered'!
exportGeneratedCodeRecursive: recoveredArg1 toPath: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidPathName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 :recoveredBlock18Arg2 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredBlock18Arg2.
    recoveredBlock18Value2 := (recoveredBlock18Value1) project.
    recoveredBlock18Value3 := (recoveredBlock18Value2) createDefaultMakeConfig.
    recoveredBlock18Value4 := recoveredBlock18Arg2.
    recoveredBlock18Value5 := recoveredArg2.
    recoveredBlock18Value6 := (recoveredBlock18Value0) fileOutGeneratedCodeRecursive: (recoveredBlock18Value3) context: (recoveredBlock18Value4) path: (recoveredBlock18Value5).
    recoveredBlock18Value6
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20003f80; bytecode file offset 0x18a70"
!AaaBuildInterface methodsFor: 'recovered'!
writeProjectProperties: recoveredArg1 toFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidFilePathNameForSave: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultContextForComponent: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) project.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeProjectOptionsToXMLFile: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultOkay.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOperationFailed.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20004f08; bytecode file offset 0x199f4"
!AaaBuildInterface methodsFor: 'recovered'!
writeAsam2Mc: recoveredArg1 toFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) fullPath: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidFilePathNameForSave: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 :recoveredBlock35Arg2 | 
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 recoveredBlock35Value5 recoveredBlock35Value6 recoveredBlock35Value7 recoveredBlock35Value8 |
    recoveredBlock35Value0 := recoveredBlock35Arg2.
    recoveredBlock35Value1 := (recoveredBlock35Value0) project.
    recoveredBlock35Value2 := (recoveredBlock35Value1) target.
    recoveredBlock35Value3 := (recoveredBlock35Value2) isExperimentalTarget.
    recoveredBlock35Local1 := recoveredBlock35Value3.
    recoveredBlock35Value4 := recoveredBlock35Arg1.
    recoveredBlock35Value5 := recoveredLocal2.
    recoveredBlock35Value6 := recoveredBlock35Local1.
    recoveredBlock35Value7 := recoveredBlock35Arg2.
    recoveredBlock35Value8 := (recoveredBlock35Value4) writeAsap2ToFile: (recoveredBlock35Value5) generate: (recoveredBlock35Value6) build: (false) projectContext: (recoveredBlock35Value7).
    recoveredBlock35Value8
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x2000551c; bytecode file offset 0x1a00c"
!AaaBuildInterface methodsFor: 'recovered'!
transferFiles: recoveredArg1 toPath: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ASDPathOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionCodeGenerationPath.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) ensurePath: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := AaaResult.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) createInvalidPathName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 :recoveredBlock49Arg2 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 recoveredBlock49Value4 |
    recoveredBlock49Value0 := recoveredBlock49Arg1.
    recoveredBlock49Value1 := recoveredBlock49Arg2.
    recoveredBlock49Value2 := SGFileTransferCommand.
    recoveredBlock49Value3 := recoveredLocal1.
    recoveredBlock49Value4 := (self) performTransferFilesWithCodeManager: (recoveredBlock49Value0) context: (recoveredBlock49Value1) command: (recoveredBlock49Value2) toPath: (recoveredBlock49Value3).
    recoveredBlock49Value4
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x200057c8; bytecode file offset 0x1a2b0"
!AaaBuildInterface methodsFor: 'recovered'!
readProjectProperties: recoveredArg1 fromFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValidFilePathNameForLoad: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefaultContextForComponent: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) apiManager.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredLocal1.
    recoveredBlock46Value1 := (recoveredBlock46Value0) project.
    recoveredBlock46Value2 := recoveredArg2.
    recoveredBlock46Value3 := (recoveredBlock46Value1) readProjectOptionsFromXMLFile: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) suppressDialogsFor: (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) createResultFromOptionReaderResult: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20005ee8; bytecode file offset 0x1a9f8"
!AaaBuildInterface methodsFor: 'recovered'!
exportBuildResults: recoveredArg1 toPath: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) build: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) ensurePath: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := AaaResult.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createInvalidPathName.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 :recoveredBlock38Arg2 | 
    | recoveredBlock38Local1 recoveredBlock38Local2 recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 recoveredBlock38Value8 recoveredBlock38Value9 recoveredBlock38Value10 recoveredBlock38Value11 recoveredBlock38Value12 recoveredBlock38Value13 recoveredBlock38Value14 recoveredBlock38Value15 recoveredBlock38Value16 recoveredBlock38Value17 recoveredBlock38Value18 recoveredBlock38Value19 |
    recoveredBlock38Value0 := recoveredBlock38Arg1.
    recoveredBlock38Value1 := (recoveredBlock38Value0) codeManager.
    recoveredBlock38Value2 := recoveredBlock38Value1.
    recoveredBlock38Value3 := recoveredBlock38Arg2.
    (recoveredBlock38Value2) context: (recoveredBlock38Value3).
    recoveredBlock38Value4 := recoveredBlock38Arg2.
    recoveredBlock38Value5 := (recoveredBlock38Value1) createLoadObjectForContext: (recoveredBlock38Value4).
    recoveredBlock38Value6 := (recoveredBlock38Value5) loadable.
    recoveredBlock38Local2 := recoveredBlock38Value6.
    recoveredBlock38Value7 := recoveredBlock38Arg2.
    recoveredBlock38Value8 := (recoveredBlock38Value7) project.
    recoveredBlock38Value9 := (recoveredBlock38Value8) target.
    recoveredBlock38Local1 := recoveredBlock38Value9.
    recoveredBlock38Value10 := recoveredBlock38Local1.
    recoveredBlock38Value11 := recoveredArg2.
    recoveredBlock38Value12 := (recoveredBlock38Value11) asPathname.
    recoveredBlock38Value13 := recoveredBlock38Local1.
    recoveredBlock38Value14 := TGLinkObject.
    recoveredBlock38Value15 := (recoveredBlock38Value14) create.
    recoveredBlock38Value16 := (recoveredBlock38Value13) linkFileName: (recoveredBlock38Value15).
    recoveredBlock38Value17 := (recoveredBlock38Value12) , (recoveredBlock38Value16).
    recoveredBlock38Value18 := recoveredBlock38Local2.
    recoveredBlock38Value19 := (recoveredBlock38Value10) putCodeIntoFile: (recoveredBlock38Value17) code: (recoveredBlock38Value18).
    recoveredBlock38Value19
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) performCodeManagerAction: (recoveredStack1) forComponent: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20005f98; bytecode file offset 0x1aa80"
!AaaBuildInterface methodsFor: 'recovered'!
performTransferFilesWithCodeManager: recoveredArg1 context: recoveredArg2 command: recoveredArg3 toPath: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) project.
    recoveredValue2 := (recoveredValue1) getIntecrioExportPath.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) project.
    recoveredValue5 := (recoveredValue4) specification.
    recoveredValue6 := (recoveredValue5) generatorSettings.
    recoveredValue7 := (recoveredValue6) ignoreInternalMessages.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 recoveredBlock23Value4 recoveredBlock23Value5 recoveredBlock23Value6 recoveredBlock23Value7 recoveredBlock23Value8 recoveredBlock23Value9 recoveredBlock23Value10 |
    recoveredBlock23Value0 := recoveredArg2.
    recoveredBlock23Value1 := (recoveredBlock23Value0) project.
    recoveredBlock23Value2 := (recoveredBlock23Value1) specification.
    recoveredBlock23Value3 := (recoveredBlock23Value2) generatorSettings.
    (recoveredBlock23Value3) ignoreInternalMessages: (true).
    recoveredBlock23Value4 := recoveredArg2.
    recoveredBlock23Value5 := (recoveredBlock23Value4) project.
    recoveredBlock23Value6 := recoveredArg4.
    (recoveredBlock23Value5) setIntecrioExportPath: (recoveredBlock23Value6).
    recoveredBlock23Value7 := recoveredArg1.
    recoveredBlock23Value8 := recoveredArg2.
    recoveredBlock23Value9 := recoveredArg3.
    recoveredBlock23Value10 := (recoveredBlock23Value7) generateTransferCode: (recoveredBlock23Value8) command: (recoveredBlock23Value9).
    recoveredBlock23Value10
].
    recoveredValue9 := [
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 recoveredBlock60Value4 recoveredBlock60Value5 recoveredBlock60Value6 recoveredBlock60Value7 recoveredBlock60Value8 |
    recoveredBlock60Value0 := recoveredArg2.
    recoveredBlock60Value1 := (recoveredBlock60Value0) project.
    recoveredBlock60Value2 := recoveredLocal2.
    (recoveredBlock60Value1) setIntecrioExportPath: (recoveredBlock60Value2).
    recoveredBlock60Value3 := recoveredArg2.
    recoveredBlock60Value4 := (recoveredBlock60Value3) project.
    recoveredBlock60Value5 := (recoveredBlock60Value4) specification.
    recoveredBlock60Value6 := (recoveredBlock60Value5) generatorSettings.
    recoveredBlock60Value7 := recoveredLocal1.
    recoveredBlock60Value8 := (recoveredBlock60Value6) ignoreInternalMessages: (recoveredBlock60Value7).
    recoveredBlock60Value8
].
    (recoveredValue8) ensure: (recoveredValue9).
    ^self
! !

