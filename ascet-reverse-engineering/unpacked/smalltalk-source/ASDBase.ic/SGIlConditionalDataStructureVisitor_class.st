"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200dad44; bytecode file offset 0x9d7618"
!SGIlConditionalDataStructureVisitor class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super create.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) methodDecl: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x205c7634; bytecode file offset 0xec3f7c"
!SGIlConditionalDataStructureVisitor class methodsFor: 'recovered'!
propagateCallConditions: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Stack0 recoveredBlock27Stack1 recoveredBlock27Stack2 recoveredBlock27Stack3 recoveredBlock27Stack4 recoveredBlock27PC recoveredBlock27Step recoveredBlock27Done recoveredBlock27Result |
    recoveredBlock27Stack0 := self.
    recoveredBlock27PC := 34.
    recoveredBlock27Done := false.
    [recoveredBlock27Done not] whileTrue: [
        recoveredBlock27Step := recoveredBlock27PC.
        recoveredBlock27Step = 34 ifTrue: [
            recoveredBlock27Stack1 := false.
            recoveredBlock27PC := 35.
        ].
        recoveredBlock27Step = 35 ifTrue: [
            recoveredBlock27Stack2 := recoveredLocal3.
            recoveredBlock27PC := 38.
        ].
        recoveredBlock27Step = 38 ifTrue: [
            recoveredBlock27Stack3 := recoveredBlock27Arg1.
            recoveredBlock27PC := 41.
        ].
        recoveredBlock27Step = 41 ifTrue: [
            recoveredBlock27Stack3 := (recoveredBlock27Stack3) methodDecl.
            recoveredBlock27PC := 43.
        ].
        recoveredBlock27Step = 43 ifTrue: [
            recoveredBlock27Stack2 := (recoveredBlock27Stack2) includes: (recoveredBlock27Stack3).
            recoveredBlock27PC := 45.
        ].
        recoveredBlock27Step = 45 ifTrue: [
            (recoveredBlock27Stack2) ifTrue: [recoveredBlock27PC := 88] ifFalse: [recoveredBlock27PC := 48].
        ].
        recoveredBlock27Step = 48 ifTrue: [
            recoveredBlock27PC := 49.
        ].
        recoveredBlock27Step = 49 ifTrue: [
            recoveredBlock27Stack1 := recoveredBlock27Arg1.
            recoveredBlock27PC := 52.
        ].
        recoveredBlock27Step = 52 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) methodCall.
            recoveredBlock27PC := 54.
        ].
        recoveredBlock27Step = 54 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) keys.
            recoveredBlock27PC := 56.
        ].
        recoveredBlock27Step = 56 ifTrue: [
            recoveredBlock27Stack2 := [:recoveredBlock27Block56Arg1 | 
    | recoveredBlock27Block56Stack0 recoveredBlock27Block56Stack1 recoveredBlock27Block56Stack2 recoveredBlock27Block56Stack3 recoveredBlock27Block56Stack4 recoveredBlock27Block56PC recoveredBlock27Block56Step recoveredBlock27Block56Done recoveredBlock27Block56Result |
    recoveredBlock27Block56Stack0 := nil.
    recoveredBlock27Block56PC := 62.
    recoveredBlock27Block56Done := false.
    [recoveredBlock27Block56Done not] whileTrue: [
        recoveredBlock27Block56Step := recoveredBlock27Block56PC.
        recoveredBlock27Block56Step = 62 ifTrue: [
            recoveredBlock27Block56Stack1 := true.
            recoveredBlock27Block56PC := 63.
        ].
        recoveredBlock27Block56Step = 63 ifTrue: [
            recoveredBlock27Block56Stack2 := recoveredBlock27Block56Arg1.
            recoveredBlock27Block56PC := 64.
        ].
        recoveredBlock27Block56Step = 64 ifTrue: [
            recoveredBlock27Block56Stack2 := (recoveredBlock27Block56Stack2) scope.
            recoveredBlock27Block56PC := 66.
        ].
        recoveredBlock27Block56Step = 66 ifTrue: [
            recoveredBlock27Block56Stack3 := recoveredBlock27Arg1.
            recoveredBlock27Block56PC := 69.
        ].
        recoveredBlock27Block56Step = 69 ifTrue: [
            recoveredBlock27Block56Stack3 := (recoveredBlock27Block56Stack3) methodDecl.
            recoveredBlock27Block56PC := 71.
        ].
        recoveredBlock27Block56Step = 71 ifTrue: [
            recoveredBlock27Block56Stack3 := (recoveredBlock27Block56Stack3) scope.
            recoveredBlock27Block56PC := 73.
        ].
        recoveredBlock27Block56Step = 73 ifTrue: [
            recoveredBlock27Block56Stack2 := (recoveredBlock27Block56Stack2) ~= (recoveredBlock27Block56Stack3).
            recoveredBlock27Block56PC := 74.
        ].
        recoveredBlock27Block56Step = 74 ifTrue: [
            (recoveredBlock27Block56Stack2) ifTrue: [recoveredBlock27Block56PC := 85] ifFalse: [recoveredBlock27Block56PC := 78].
        ].
        recoveredBlock27Block56Step = 78 ifTrue: [
            recoveredBlock27Block56PC := 79.
        ].
        recoveredBlock27Block56Step = 79 ifTrue: [
            recoveredBlock27Block56Stack1 := recoveredLocal3.
            recoveredBlock27Block56PC := 82.
        ].
        recoveredBlock27Block56Step = 82 ifTrue: [
            recoveredBlock27Block56Stack2 := recoveredBlock27Block56Arg1.
            recoveredBlock27Block56PC := 83.
        ].
        recoveredBlock27Block56Step = 83 ifTrue: [
            recoveredBlock27Block56Stack1 := (recoveredBlock27Block56Stack1) includes: (recoveredBlock27Block56Stack2).
            recoveredBlock27Block56PC := 85.
        ].
        recoveredBlock27Block56Step = 85 ifTrue: [
            recoveredBlock27Block56Result := recoveredBlock27Block56Stack1.
            recoveredBlock27Block56Done := true.
        ].
    ].
    recoveredBlock27Block56Result
].
            recoveredBlock27PC := 86.
        ].
        recoveredBlock27Step = 86 ifTrue: [
            recoveredBlock27Stack1 := (recoveredBlock27Stack1) allSatisfy: (recoveredBlock27Stack2).
            recoveredBlock27PC := 88.
        ].
        recoveredBlock27Step = 88 ifTrue: [
            recoveredBlock27Result := recoveredBlock27Stack1.
            recoveredBlock27Done := true.
        ].
    ].
    recoveredBlock27Result
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock95Value0 recoveredBlock95Value1 |
    recoveredBlock95Value0 := recoveredLocal1.
    recoveredBlock95Value1 := (recoveredBlock95Value0) notEmpty.
    recoveredBlock95Value1
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := [
    'There seems to be a recursive function definition'
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ileAssert: (recoveredStack2) message: (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := [:recoveredBlock133Arg1 | 
    | recoveredBlock133Value0 recoveredBlock133Value1 recoveredBlock133Value2 recoveredBlock133Value3 |
    recoveredBlock133Value0 := recoveredLocal3.
    recoveredBlock133Value1 := recoveredBlock133Arg1.
    recoveredBlock133Value2 := (recoveredBlock133Value1) methodDecl.
    recoveredBlock133Value3 := (recoveredBlock133Value0) add: (recoveredBlock133Value2).
    recoveredBlock133Value3
].
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := [:block28118960Arg1 :block28118960Arg2 | 
    | block28118960Value0 block28118960Value1 block28118960Value2 block28118960Value3 block28118960Value4 block28118960Value5 block28118960Value6 |
    block28118960Value0 := block28118960Arg1.
    block28118960Value1 := (block28118960Value0) methodDecl.
    block28118960Value2 := (block28118960Value1) errLabel.
    block28118960Value3 := block28118960Arg2.
    block28118960Value4 := (block28118960Value3) methodDecl.
    block28118960Value5 := (block28118960Value4) errLabel.
    block28118960Value6 := (block28118960Value2) >= (block28118960Value5).
    block28118960Value6
].
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSortedCollection: (recoveredStack3).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 194].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := (recoveredStack1) reverse.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := [:recoveredBlock212Arg1 | 
    | recoveredBlock212Local1 recoveredBlock212Value0 recoveredBlock212Value1 recoveredBlock212Value2 recoveredBlock212Value3 recoveredBlock212Value4 recoveredBlock212Value5 recoveredBlock212Value6 recoveredBlock212Value7 recoveredBlock212Value8 |
    recoveredBlock212Value0 := recoveredLocal2.
    recoveredBlock212Value1 := recoveredBlock212Arg1.
    recoveredBlock212Value2 := (recoveredBlock212Value1) methodDecl.
    recoveredBlock212Value3 := [
    | recoveredBlock212Block226Value0 recoveredBlock212Block226Value1 |
    recoveredBlock212Block226Value0 := (self) ileBuilder.
    recoveredBlock212Block226Value1 := (recoveredBlock212Block226Value0) literalTrue.
    recoveredBlock212Block226Value1
].
    recoveredBlock212Value4 := (recoveredBlock212Value0) at: (recoveredBlock212Value2) ifAbsent: (recoveredBlock212Value3).
    recoveredBlock212Local1 := recoveredBlock212Value4.
    recoveredBlock212Value5 := recoveredBlock212Arg1.
    recoveredBlock212Value6 := (recoveredBlock212Value5) methodCall.
    recoveredBlock212Value7 := [:recoveredBlock212Block247Arg1 :recoveredBlock212Block247Arg2 | 
    | recoveredBlock212Block247Stack0 recoveredBlock212Block247Stack1 recoveredBlock212Block247Stack2 recoveredBlock212Block247Stack3 recoveredBlock212Block247Stack4 recoveredBlock212Block247Stack5 recoveredBlock212Block247Stack6 recoveredBlock212Block247PC recoveredBlock212Block247Step recoveredBlock212Block247Done recoveredBlock212Block247Result |
    recoveredBlock212Block247Stack0 := self.
    recoveredBlock212Block247PC := 254.
    recoveredBlock212Block247Done := false.
    [recoveredBlock212Block247Done not] whileTrue: [
        recoveredBlock212Block247Step := recoveredBlock212Block247PC.
        recoveredBlock212Block247Step = 254 ifTrue: [
            recoveredBlock212Block247Stack1 := nil.
            recoveredBlock212Block247PC := 255.
        ].
        recoveredBlock212Block247Step = 255 ifTrue: [
            recoveredBlock212Block247Stack2 := recoveredBlock212Block247Arg1.
            recoveredBlock212Block247PC := 256.
        ].
        recoveredBlock212Block247Step = 256 ifTrue: [
            recoveredBlock212Block247Stack2 := (recoveredBlock212Block247Stack2) isMdlPublic.
            recoveredBlock212Block247PC := 258.
        ].
        recoveredBlock212Block247Step = 258 ifTrue: [
            (recoveredBlock212Block247Stack2) ifTrue: [recoveredBlock212Block247PC := 295] ifFalse: [recoveredBlock212Block247PC := 262].
        ].
        recoveredBlock212Block247Step = 262 ifTrue: [
            recoveredBlock212Block247PC := 263.
        ].
        recoveredBlock212Block247Step = 263 ifTrue: [
            recoveredBlock212Block247Stack1 := recoveredLocal2.
            recoveredBlock212Block247PC := 266.
        ].
        recoveredBlock212Block247Step = 266 ifTrue: [
            recoveredBlock212Block247Stack2 := recoveredBlock212Block247Arg1.
            recoveredBlock212Block247PC := 267.
        ].
        recoveredBlock212Block247Step = 267 ifTrue: [
            recoveredBlock212Block247Stack3 := recoveredLocal2.
            recoveredBlock212Block247PC := 270.
        ].
        recoveredBlock212Block247Step = 270 ifTrue: [
            recoveredBlock212Block247Stack4 := recoveredBlock212Block247Arg1.
            recoveredBlock212Block247PC := 271.
        ].
        recoveredBlock212Block247Step = 271 ifTrue: [
            recoveredBlock212Block247Stack5 := [
    | recoveredBlock212Block247Block271Value0 recoveredBlock212Block247Block271Value1 |
    recoveredBlock212Block247Block271Value0 := (self) ileBuilder.
    recoveredBlock212Block247Block271Value1 := (recoveredBlock212Block247Block271Value0) literalFalse.
    recoveredBlock212Block247Block271Value1
].
            recoveredBlock212Block247PC := 283.
        ].
        recoveredBlock212Block247Step = 283 ifTrue: [
            recoveredBlock212Block247Stack3 := (recoveredBlock212Block247Stack3) at: (recoveredBlock212Block247Stack4) ifAbsent: (recoveredBlock212Block247Stack5).
            recoveredBlock212Block247PC := 285.
        ].
        recoveredBlock212Block247Step = 285 ifTrue: [
            recoveredBlock212Block247Stack4 := recoveredBlock212Local1.
            recoveredBlock212Block247PC := 288.
        ].
        recoveredBlock212Block247Step = 288 ifTrue: [
            recoveredBlock212Block247Stack5 := recoveredBlock212Block247Arg2.
            recoveredBlock212Block247PC := 289.
        ].
        recoveredBlock212Block247Step = 289 ifTrue: [
            recoveredBlock212Block247Stack4 := (recoveredBlock212Block247Stack4) andExpr: (recoveredBlock212Block247Stack5).
            recoveredBlock212Block247PC := 291.
        ].
        recoveredBlock212Block247Step = 291 ifTrue: [
            recoveredBlock212Block247Stack3 := (recoveredBlock212Block247Stack3) orExpr: (recoveredBlock212Block247Stack4).
            recoveredBlock212Block247PC := 293.
        ].
        recoveredBlock212Block247Step = 293 ifTrue: [
            recoveredBlock212Block247Stack1 := (recoveredBlock212Block247Stack1) at: (recoveredBlock212Block247Stack2) put: (recoveredBlock212Block247Stack3).
            recoveredBlock212Block247PC := 295.
        ].
        recoveredBlock212Block247Step = 295 ifTrue: [
            recoveredBlock212Block247Result := recoveredBlock212Block247Stack1.
            recoveredBlock212Block247Done := true.
        ].
    ].
    recoveredBlock212Block247Result
].
    recoveredBlock212Value8 := (recoveredBlock212Value6) keysAndValuesDo: (recoveredBlock212Value7).
    recoveredBlock212Value8
].
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack2 := [:recoveredBlock304Arg1 | 
    | recoveredBlock304Stack0 recoveredBlock304Stack1 recoveredBlock304Stack2 recoveredBlock304Stack3 recoveredBlock304Stack4 recoveredBlock304PC recoveredBlock304Step recoveredBlock304Done recoveredBlock304Result |
    recoveredBlock304Stack0 := self.
    recoveredBlock304PC := 310.
    recoveredBlock304Done := false.
    [recoveredBlock304Done not] whileTrue: [
        recoveredBlock304Step := recoveredBlock304PC.
        recoveredBlock304Step = 310 ifTrue: [
            recoveredBlock304Stack1 := nil.
            recoveredBlock304PC := 311.
        ].
        recoveredBlock304Step = 311 ifTrue: [
            recoveredBlock304Stack2 := recoveredLocal2.
            recoveredBlock304PC := 314.
        ].
        recoveredBlock304Step = 314 ifTrue: [
            recoveredBlock304Stack3 := recoveredBlock304Arg1.
            recoveredBlock304PC := 315.
        ].
        recoveredBlock304Step = 315 ifTrue: [
            recoveredBlock304Stack3 := (recoveredBlock304Stack3) methodDecl.
            recoveredBlock304PC := 317.
        ].
        recoveredBlock304Step = 317 ifTrue: [
            recoveredBlock304Stack2 := (recoveredBlock304Stack2) includesKey: (recoveredBlock304Stack3).
            recoveredBlock304PC := 319.
        ].
        recoveredBlock304Step = 319 ifTrue: [
            (recoveredBlock304Stack2) ifTrue: [recoveredBlock304PC := 322] ifFalse: [recoveredBlock304PC := 334].
        ].
        recoveredBlock304Step = 322 ifTrue: [
            recoveredBlock304PC := 323.
        ].
        recoveredBlock304Step = 323 ifTrue: [
            recoveredBlock304Stack1 := recoveredBlock304Arg1.
            recoveredBlock304PC := 324.
        ].
        recoveredBlock304Step = 324 ifTrue: [
            recoveredBlock304Stack2 := recoveredLocal2.
            recoveredBlock304PC := 327.
        ].
        recoveredBlock304Step = 327 ifTrue: [
            recoveredBlock304Stack3 := recoveredBlock304Arg1.
            recoveredBlock304PC := 328.
        ].
        recoveredBlock304Step = 328 ifTrue: [
            recoveredBlock304Stack3 := (recoveredBlock304Stack3) methodDecl.
            recoveredBlock304PC := 330.
        ].
        recoveredBlock304Step = 330 ifTrue: [
            recoveredBlock304Stack2 := (recoveredBlock304Stack2) at: (recoveredBlock304Stack3).
            recoveredBlock304PC := 332.
        ].
        recoveredBlock304Step = 332 ifTrue: [
            recoveredBlock304Stack1 := (recoveredBlock304Stack1) callCondition: (recoveredBlock304Stack2).
            recoveredBlock304PC := 334.
        ].
        recoveredBlock304Step = 334 ifTrue: [
            recoveredBlock304Result := recoveredBlock304Stack1.
            recoveredBlock304Done := true.
        ].
    ].
    recoveredBlock304Result
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

