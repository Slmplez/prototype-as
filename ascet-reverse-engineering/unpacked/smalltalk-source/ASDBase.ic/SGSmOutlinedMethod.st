"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007dd8; bytecode file offset 0x908be4"
!SGSmOutlinedMethod methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008378; bytecode file offset 0x908be4"
!SGSmOutlinedMethod methodsFor: 'recovered'!
tag
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002e714; bytecode file offset 0x934580"
!SGSmOutlinedMethod methodsFor: 'recovered'!
hasReturn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) hasReturn.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036e84; bytecode file offset 0x934580"
!SGSmOutlinedMethod methodsFor: 'recovered'!
isExpressionMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) isExpression.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057084; bytecode file offset 0x95393c"
!SGSmOutlinedMethod methodsFor: 'recovered'!
<= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) code.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) <= (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200668ec; bytecode file offset 0x963428"
!SGSmOutlinedMethod methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006752c; bytecode file offset 0x9646f8"
!SGSmOutlinedMethod methodsFor: 'recovered'!
code
    | recoveredValue0 |
    recoveredValue0 := code.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068784; bytecode file offset 0x965b90"
!SGSmOutlinedMethod methodsFor: 'recovered'!
arguments
    | recoveredValue0 |
    recoveredValue0 := arguments.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006abfc; bytecode file offset 0x967a18"
!SGSmOutlinedMethod methodsFor: 'recovered'!
outlineStrategy
    | recoveredValue0 |
    recoveredValue0 := outlineStrategy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074248; bytecode file offset 0x970b34"
!SGSmOutlinedMethod methodsFor: 'recovered'!
source
    ^nil
! !

"ASDBase.ic method 0x2007d77c; bytecode file offset 0x97c330"
!SGSmOutlinedMethod methodsFor: 'recovered'!
isCodeList
    ^false
! !

"ASDBase.ic method 0x2007f6ec; bytecode file offset 0x97c330"
!SGSmOutlinedMethod methodsFor: 'recovered'!
isAbstractMethodCaller
    ^false
! !

"ASDBase.ic method 0x200886b0; bytecode file offset 0x985628"
!SGSmOutlinedMethod methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) code.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095638; bytecode file offset 0x991fb4"
!SGSmOutlinedMethod methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200983d4; bytecode file offset 0x995850"
!SGSmOutlinedMethod methodsFor: 'recovered'!
replacePrivateMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) code.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) replacePrivateMethod: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009a3f8; bytecode file offset 0x997194"
!SGSmOutlinedMethod methodsFor: 'recovered'!
replaceCode: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) code.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) replaceCode: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200be6f4; bytecode file offset 0x9bb178"
!SGSmOutlinedMethod methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c188c; bytecode file offset 0x9beac8"
!SGSmOutlinedMethod methodsFor: 'recovered'!
outlineStrategy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outlineStrategy := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2708; bytecode file offset 0x9bf474"
!SGSmOutlinedMethod methodsFor: 'recovered'!
trigger: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    triggers := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e94c0; bytecode file offset 0x9e5d7c"
!SGSmOutlinedMethod methodsFor: 'recovered'!
code: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) duplicateFor: (self).
    code := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) arguments.
    arguments := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200ee4bc; bytecode file offset 0x9ead80"
!SGSmOutlinedMethod methodsFor: 'recovered'!
calledMethods
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) code.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue2) calledMethods: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f98ac; bytecode file offset 0x9f6178"
!SGSmOutlinedMethod methodsFor: 'recovered'!
codeSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) code.
    recoveredValue1 := (recoveredValue0) codeSize.
    recoveredValue2 := (self) outlineStrategy.
    recoveredValue3 := (recoveredValue2) sizeEstimatorClass.
    recoveredValue4 := (recoveredValue3) cost: ('method').
    recoveredValue5 := (recoveredValue1) + (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201298a8; bytecode file offset 0xa261a4"
!SGSmOutlinedMethod methodsFor: 'recovered'!
callers
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            callers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := callers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012ec38; bytecode file offset 0xa2b514"
!SGSmOutlinedMethod methodsFor: 'recovered'!
returnType
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) code.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasReturn.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) lmBoolType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) lmVoidType.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20164420; bytecode file offset 0xa60ce0"
!SGSmOutlinedMethod methodsFor: 'recovered'!
addCaller: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := callers.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            callers := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := callers.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e5804; bytecode file offset 0xbe20d8"
!SGSmOutlinedMethod methodsFor: 'recovered'!
trigger
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := triggers.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := SGSmOutlinedMethod.
            recoveredBlock12PC := 21.
        ].
        recoveredBlock12Step = 21 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isMemberOf: (recoveredBlock12Stack2).
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 26] ifFalse: [recoveredBlock12PC := 38].
        ].
        recoveredBlock12Step = 26 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) trigger.
            recoveredBlock12PC := 32.
        ].
        recoveredBlock12Step = 32 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) addAll: (recoveredBlock12Stack2).
            recoveredBlock12PC := 34.
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal1.
            recoveredBlock12PC := 41.
        ].
        recoveredBlock12Step = 41 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) add: (recoveredBlock12Stack2).
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x203c0ab4; bytecode file offset 0xcbd3a0"
!SGSmOutlinedMethod methodsFor: 'recovered'!
buildMdl
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) method: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) block.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) buildMdl.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpression.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) return.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasReturn.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) literal: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) return.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) endBlock.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) endMethod.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpression.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := code.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasReturn.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) outlineStrategy.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) misraCompliance.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) postProcessOutlinedMethod: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e0e68; bytecode file offset 0xcdd770"
!SGSmOutlinedMethod methodsFor: 'recovered'!
buildDeclaration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) private.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) additionalFunction.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) generatedArgList.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) context.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) logicManager.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPhysicalVariant.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) memoryClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 41] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) methodMemoryClass: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) returnType.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := (recoveredStack4) returnType.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) createDataElement.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) createType: (recoveredStack3) implementation: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) methodDecl: (recoveredStack1) class: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) arguments.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := [:block280f83acArg1 | 
    | block280f83acValue0 block280f83acValue1 |
    block280f83acValue0 := block280f83acArg1.
    block280f83acValue1 := (block280f83acValue0) buildMdlParmDecl.
    block280f83acValue1
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) endMethodDecl.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInterface.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) touch.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054c074; bytecode file offset 0xe48980"
!SGSmOutlinedMethod methodsFor: 'recovered'!
memoryClass
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) trigger.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 20.
        ].
        recoveredBlock11Step = 20 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) implementation.
            recoveredBlock11PC := 21.
        ].
        recoveredBlock11Step = 21 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 55] ifFalse: [recoveredBlock11PC := 24].
        ].
        recoveredBlock11Step = 24 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 25.
        ].
        recoveredBlock11Step = 25 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) implementation.
            recoveredBlock11PC := 26.
        ].
        recoveredBlock11Step = 26 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) memoryClass.
            recoveredBlock11PC := 28.
        ].
        recoveredBlock11Step = 28 ifTrue: [
            (recoveredBlock11Stack2 == nil) ifTrue: [recoveredBlock11PC := 55] ifFalse: [recoveredBlock11PC := 32].
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11PC := 33.
        ].
        recoveredBlock11Step = 33 ifTrue: [
            recoveredBlock11Stack1 := recoveredLocal5.
            recoveredBlock11PC := 36.
        ].
        recoveredBlock11Step = 36 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 37.
        ].
        recoveredBlock11Step = 37 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) implementation.
            recoveredBlock11PC := 38.
        ].
        recoveredBlock11Step = 38 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) memoryClass.
            recoveredBlock11PC := 40.
        ].
        recoveredBlock11Step = 40 ifTrue: [
            recoveredBlock11Stack3 := [
    | block2810f0ccValue0 block2810f0ccValue1 |
    block2810f0ccValue0 := OrderedCollection.
    block2810f0ccValue1 := (block2810f0ccValue0) new.
    block2810f0ccValue1
].
            recoveredBlock11PC := 42.
        ].
        recoveredBlock11Step = 42 ifTrue: [
            recoveredBlock11PC := 50.
        ].
        recoveredBlock11Step = 50 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) at: (recoveredBlock11Stack2) ifAbsentPut: (recoveredBlock11Stack3).
            recoveredBlock11PC := 52.
        ].
        recoveredBlock11Step = 52 ifTrue: [
            recoveredBlock11Stack2 := recoveredBlock11Arg1.
            recoveredBlock11PC := 53.
        ].
        recoveredBlock11Step = 53 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) add: (recoveredBlock11Stack2).
            recoveredBlock11PC := 55.
        ].
        recoveredBlock11Step = 55 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    ^recoveredBlock83Value0
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := [:recoveredBlock103Arg1 :recoveredBlock103Arg2 | 
    | recoveredBlock103Stack0 recoveredBlock103Stack1 recoveredBlock103Stack2 recoveredBlock103Stack3 recoveredBlock103Stack4 recoveredBlock103PC recoveredBlock103Step recoveredBlock103Done recoveredBlock103Result |
    recoveredBlock103Stack0 := self.
    recoveredBlock103PC := 110.
    recoveredBlock103Done := false.
    [recoveredBlock103Done not] whileTrue: [
        recoveredBlock103Step := recoveredBlock103PC.
        recoveredBlock103Step = 110 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal4.
            recoveredBlock103PC := 113.
        ].
        recoveredBlock103Step = 113 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg2.
            recoveredBlock103PC := 114.
        ].
        recoveredBlock103Step = 114 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) size.
            recoveredBlock103PC := 116.
        ].
        recoveredBlock103Step = 116 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) includesKey: (recoveredBlock103Stack2).
            recoveredBlock103PC := 118.
        ].
        recoveredBlock103Step = 118 ifTrue: [
            (recoveredBlock103Stack1) ifTrue: [recoveredBlock103PC := 122] ifFalse: [recoveredBlock103PC := 134].
        ].
        recoveredBlock103Step = 122 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal4.
            recoveredBlock103PC := 125.
        ].
        recoveredBlock103Step = 125 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg2.
            recoveredBlock103PC := 126.
        ].
        recoveredBlock103Step = 126 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) size.
            recoveredBlock103PC := 128.
        ].
        recoveredBlock103Step = 128 ifTrue: [
            recoveredBlock103Stack3 := nil.
            recoveredBlock103PC := 129.
        ].
        recoveredBlock103Step = 129 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2) put: (recoveredBlock103Stack3).
            recoveredBlock103PC := 131.
        ].
        recoveredBlock103Step = 131 ifTrue: [
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 134 ifTrue: [
            recoveredBlock103Stack1 := recoveredLocal4.
            recoveredBlock103PC := 137.
        ].
        recoveredBlock103Step = 137 ifTrue: [
            recoveredBlock103Stack2 := recoveredBlock103Arg2.
            recoveredBlock103PC := 138.
        ].
        recoveredBlock103Step = 138 ifTrue: [
            recoveredBlock103Stack2 := (recoveredBlock103Stack2) size.
            recoveredBlock103PC := 140.
        ].
        recoveredBlock103Step = 140 ifTrue: [
            recoveredBlock103Stack3 := recoveredBlock103Arg1.
            recoveredBlock103PC := 141.
        ].
        recoveredBlock103Step = 141 ifTrue: [
            recoveredBlock103Stack1 := (recoveredBlock103Stack1) at: (recoveredBlock103Stack2) put: (recoveredBlock103Stack3).
            recoveredBlock103PC := 143.
        ].
        recoveredBlock103Step = 143 ifTrue: [
            recoveredBlock103Result := recoveredBlock103Stack1.
            recoveredBlock103Done := true.
        ].
    ].
    recoveredBlock103Result
].
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := SortedCollection.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := [:recoveredBlock185Arg1 :recoveredBlock185Arg2 | 
    | recoveredBlock185Stack0 recoveredBlock185Stack1 recoveredBlock185Stack2 recoveredBlock185Stack3 recoveredBlock185Stack4 recoveredBlock185PC recoveredBlock185Step recoveredBlock185Done recoveredBlock185Result |
    recoveredBlock185Stack0 := self.
    recoveredBlock185PC := 192.
    recoveredBlock185Done := false.
    [recoveredBlock185Done not] whileTrue: [
        recoveredBlock185Step := recoveredBlock185PC.
        recoveredBlock185Step = 192 ifTrue: [
            recoveredBlock185Stack1 := nil.
            recoveredBlock185PC := 193.
        ].
        recoveredBlock185Step = 193 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Arg2.
            recoveredBlock185PC := 194.
        ].
        recoveredBlock185Step = 194 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) size.
            recoveredBlock185PC := 196.
        ].
        recoveredBlock185Step = 196 ifTrue: [
            recoveredBlock185Stack3 := recoveredLocal2.
            recoveredBlock185PC := 199.
        ].
        recoveredBlock185Step = 199 ifTrue: [
            recoveredBlock185Stack2 := (recoveredBlock185Stack2) = (recoveredBlock185Stack3).
            recoveredBlock185PC := 200.
        ].
        recoveredBlock185Step = 200 ifTrue: [
            (recoveredBlock185Stack2) ifTrue: [recoveredBlock185PC := 204] ifFalse: [recoveredBlock185PC := 211].
        ].
        recoveredBlock185Step = 204 ifTrue: [
            recoveredBlock185PC := 205.
        ].
        recoveredBlock185Step = 205 ifTrue: [
            recoveredBlock185Stack1 := recoveredLocal1.
            recoveredBlock185PC := 208.
        ].
        recoveredBlock185Step = 208 ifTrue: [
            recoveredBlock185Stack2 := recoveredBlock185Arg1.
            recoveredBlock185PC := 209.
        ].
        recoveredBlock185Step = 209 ifTrue: [
            recoveredBlock185Stack1 := (recoveredBlock185Stack1) add: (recoveredBlock185Stack2).
            recoveredBlock185PC := 211.
        ].
        recoveredBlock185Step = 211 ifTrue: [
            recoveredBlock185Result := recoveredBlock185Stack1.
            recoveredBlock185Done := true.
        ].
    ].
    recoveredBlock185Result
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

