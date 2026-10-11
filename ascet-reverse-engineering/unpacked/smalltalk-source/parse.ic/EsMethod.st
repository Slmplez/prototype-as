"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"parse.ic method 0x20000124; bytecode file offset 0x15788"
!EsMethod methodsFor: 'recovered'!
prepareForCodeGeneration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) inlineSpecials.
    ^recoveredValue0
! !

"parse.ic method 0x20000408; bytecode file offset 0x15ae4"
!EsMethod methodsFor: 'recovered'!
arguments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) arguments.
    ^recoveredValue1
! !

"parse.ic method 0x2000048c; bytecode file offset 0x15ae4"
!EsMethod methodsFor: 'recovered'!
selector
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := messagePattern.
    recoveredValue1 := (recoveredValue0) selector.
    ^recoveredValue1
! !

"parse.ic method 0x2000061c; bytecode file offset 0x15c78"
!EsMethod methodsFor: 'recovered'!
mayBeInlined
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) messagePattern.
    recoveredValue1 := (recoveredValue0) breakpoint.
    recoveredValue2 := (recoveredValue1) isNil.
    ^recoveredValue2
! !

"parse.ic method 0x200007b8; bytecode file offset 0x15e24"
!EsMethod methodsFor: 'recovered'!
instVarIndex
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := statements.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) instVarIndex.
    ^recoveredValue2
! !

"parse.ic method 0x200007c8; bytecode file offset 0x15e24"
!EsMethod methodsFor: 'recovered'!
magicValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := statements.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) magicValue.
    ^recoveredValue2
! !

"parse.ic method 0x20000818; bytecode file offset 0x15e8c"
!EsMethod methodsFor: 'recovered'!
locals
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) arguments.
    recoveredValue1 := (self) temporaries.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20000a84; bytecode file offset 0x160d8"
!EsMethod methodsFor: 'recovered'!
messagePattern
    | recoveredValue0 |
    recoveredValue0 := messagePattern.
    ^recoveredValue0
! !

"parse.ic method 0x20000ae0; bytecode file offset 0x1614c"
!EsMethod methodsFor: 'recovered'!
sourceClass
    | recoveredValue0 |
    recoveredValue0 := sourceClass.
    ^recoveredValue0
! !

"parse.ic method 0x20000b14; bytecode file offset 0x16190"
!EsMethod methodsFor: 'recovered'!
instVars
    | recoveredValue0 |
    recoveredValue0 := instVars.
    ^recoveredValue0
! !

"parse.ic method 0x20000b7c; bytecode file offset 0x161e8"
!EsMethod methodsFor: 'recovered'!
statements
    | recoveredValue0 |
    recoveredValue0 := statements.
    ^recoveredValue0
! !

"parse.ic method 0x20000b94; bytecode file offset 0x161e8"
!EsMethod methodsFor: 'recovered'!
subnodes
    | recoveredValue0 |
    recoveredValue0 := statements.
    ^recoveredValue0
! !

"parse.ic method 0x20000bc0; bytecode file offset 0x1621c"
!EsMethod methodsFor: 'recovered'!
scope
    | recoveredValue0 |
    recoveredValue0 := scope.
    ^recoveredValue0
! !

"parse.ic method 0x20000bf8; bytecode file offset 0x1624c"
!EsMethod methodsFor: 'recovered'!
isCompileTimeConstant
    | recoveredValue0 |
    recoveredValue0 := isCTC.
    ^recoveredValue0
! !

"parse.ic method 0x20000c0c; bytecode file offset 0x16260"
!EsMethod methodsFor: 'recovered'!
pragmas
    | recoveredValue0 |
    recoveredValue0 := pragmaNodes.
    ^recoveredValue0
! !

"parse.ic method 0x20000c58; bytecode file offset 0x162dc"
!EsMethod methodsFor: 'recovered'!
isMethod
    ^true
! !

"parse.ic method 0x20000ed4; bytecode file offset 0x1652c"
!EsMethod methodsFor: 'recovered'!
subnodesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := statements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) do: (recoveredValue1).
    ^recoveredValue2
! !

"parse.ic method 0x20001a4c; bytecode file offset 0x170f0"
!EsMethod methodsFor: 'recovered'!
messagePattern: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    messagePattern := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001ad8; bytecode file offset 0x1716c"
!EsMethod methodsFor: 'recovered'!
sourceClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceClass := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001b34; bytecode file offset 0x17198"
!EsMethod methodsFor: 'recovered'!
instVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instVars := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001b78; bytecode file offset 0x171cc"
!EsMethod methodsFor: 'recovered'!
temporaries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    temporaries := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001b94; bytecode file offset 0x171f0"
!EsMethod methodsFor: 'recovered'!
statements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    statements := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001bb8; bytecode file offset 0x17214"
!EsMethod methodsFor: 'recovered'!
scope: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scope := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001be8; bytecode file offset 0x1723c"
!EsMethod methodsFor: 'recovered'!
firstComment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    firstComment := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001c04; bytecode file offset 0x17258"
!EsMethod methodsFor: 'recovered'!
attributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    attributes := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001c18; bytecode file offset 0x1726c"
!EsMethod methodsFor: 'recovered'!
pragmas: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    pragmaNodes := recoveredValue0.
    ^self
! !

"parse.ic method 0x20001e20; bytecode file offset 0x17478"
!EsMethod methodsFor: 'recovered'!
containsCompileTimeConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := attributes.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~~ (0).
    ^recoveredValue2
! !

"parse.ic method 0x20002554; bytecode file offset 0x17bb4"
!EsMethod methodsFor: 'recovered'!
asDoit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) asReturnStatement.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20002868; bytecode file offset 0x17ec4"
!EsMethod methodsFor: 'recovered'!
hasBreakpoints
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := messagePattern.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasBreakpoints.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super hasBreakpoints.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20002910; bytecode file offset 0x17f6c"
!EsMethod methodsFor: 'recovered'!
temporaries
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := temporaries.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := temporaries.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20002934; bytecode file offset 0x17f8c"
!EsMethod methodsFor: 'recovered'!
needsContext
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := needsContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) requiresMethodContext.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            needsContext := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := needsContext.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200029dc; bytecode file offset 0x18040"
!EsMethod methodsFor: 'recovered'!
lastStatementReturns
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) statements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) statements.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReturn.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x200032e0; bytecode file offset 0x1894c"
!EsMethod methodsFor: 'recovered'!
asCompileTimeConstant
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    isCTC := true.
    recoveredValue0 := EsMessagePattern.
    recoveredValue1 := EsSelector.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue2) value: ('CompileTimeConstant').
    recoveredValue4 := (recoveredValue0) unarySelector: (recoveredValue3).
    messagePattern := recoveredValue4.
    ^self
! !

"parse.ic method 0x20003908; bytecode file offset 0x18f70"
!EsMethod methodsFor: 'recovered'!
generateCodeFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CodeStream.
    recoveredValue1 := (recoveredValue0) on: (self).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) compiler: (recoveredValue3).
    recoveredLocal2 := recoveredValue1.
    recoveredValue4 := recoveredLocal2.
    (self) generateCodeOn: (recoveredValue4) valueRequired: (false).
    recoveredValue5 := recoveredLocal2.
    (self) generatePragmasOn: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    ^recoveredValue6
! !

"parse.ic method 0x20003fd4; bytecode file offset 0x19634"
!EsMethod methodsFor: 'recovered'!
initialize
    temporaries := nil.
    statements := #().
    isCTC := false.
    attributes := 0.
    pragmaNodes := #().
    super initialize.
    ^self
! !

"parse.ic method 0x20004094; bytecode file offset 0x1970c"
!EsMethod methodsFor: 'recovered'!
compiledMethodFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) generateCodeFor: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asCompiledMethod.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := (self) containsCompileTimeConstant.
    (recoveredValue3) hasCTC: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := (self) hasBreakpoints.
    recoveredValue7 := (recoveredValue6) not.
    (recoveredValue5) allowTranslation: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := (self) pragmas.
    recoveredValue10 := (recoveredValue9) notEmpty.
    (recoveredValue8) hasPragmas: (recoveredValue10).
    ^recoveredValue2
! !

"parse.ic method 0x200043bc; bytecode file offset 0x19a24"
!EsMethod methodsFor: 'recovered'!
messagesSent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block28002c40Arg1 :block28002c40Arg2 | 
    | block28002c40Value0 block28002c40Value1 block28002c40Value2 block28002c40Value3 |
    block28002c40Value0 := block28002c40Arg1.
    block28002c40Value1 := block28002c40Arg2.
    block28002c40Value2 := (block28002c40Value1) messagesSent.
    block28002c40Value3 := (block28002c40Value0) , (block28002c40Value2).
    block28002c40Value3
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200043f8; bytecode file offset 0x19a5c"
!EsMethod methodsFor: 'recovered'!
isInlinedMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isGetter.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSetter.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) isReturnMagic.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturnSelf.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x200044f4; bytecode file offset 0x19b6c"
!EsMethod methodsFor: 'recovered'!
compiledMethodErrorHandler: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) generateCodeErrorHandler: (recoveredValue0) ifFail: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asCompiledMethod.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) containsCompileTimeConstant.
    (recoveredValue4) hasCTC: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) hasBreakpoints.
    recoveredValue8 := (recoveredValue7) not.
    (recoveredValue6) allowTranslation: (recoveredValue8).
    recoveredValue9 := recoveredValue3.
    recoveredValue10 := (self) pragmas.
    recoveredValue11 := (recoveredValue10) notEmpty.
    (recoveredValue9) hasPragmas: (recoveredValue11).
    ^recoveredValue3
! !

"parse.ic method 0x20004a60; bytecode file offset 0x1a0c4"
!EsMethod methodsFor: 'recovered'!
isReturnSelf
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturnSelf.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004cd8; bytecode file offset 0x1a354"
!EsMethod methodsFor: 'recovered'!
isReturnMagic
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := messagePattern.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturnMagic.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004cf0; bytecode file offset 0x1a354"
!EsMethod methodsFor: 'recovered'!
isGetter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := messagePattern.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGetter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20004e90; bytecode file offset 0x1a4f4"
!EsMethod methodsFor: 'recovered'!
nodeWhichContainsPC: recoveredArg1 hasDropped: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) startPC.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) messagePattern.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := super nodeWhichContainsPC: (recoveredStack1) hasDropped: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) messagePattern.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20005168; bytecode file offset 0x1a7d4"
!EsMethod methodsFor: 'recovered'!
generateCodeErrorHandler: recoveredArg1 ifFail: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := CodeStream.
    recoveredValue1 := (recoveredValue0) on: (self).
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue1) failBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (self) generateCodeOn: (recoveredValue4) valueRequired: (false).
    recoveredValue5 := recoveredLocal1.
    (self) generatePragmasOn: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"parse.ic method 0x200056cc; bytecode file offset 0x1ad3c"
!EsMethod methodsFor: 'recovered'!
generateCode: recoveredArg1 errorHandler: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CodeStream.
    recoveredValue1 := (recoveredValue0) on: (self).
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) optimizationLimit: (recoveredValue3).
    recoveredValue4 := [
    | recoveredBlock14Value0 recoveredBlock14Value1 |
    recoveredBlock14Value0 := recoveredArg3.
    recoveredBlock14Value1 := (recoveredBlock14Value0) value.
    ^recoveredBlock14Value1
].
    recoveredValue5 := (recoveredValue1) failBlock: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    (self) generateCodeOn: (recoveredValue6) valueRequired: (false).
    recoveredValue7 := recoveredLocal1.
    (self) generatePragmasOn: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"parse.ic method 0x20005ce8; bytecode file offset 0x1b36c"
!EsMethod methodsFor: 'recovered'!
generatePragmasOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) pragmas.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block28002d3cArg1 | 
    | block28002d3cLocal1 block28002d3cStack0 block28002d3cStack1 block28002d3cStack2 block28002d3cStack3 block28002d3cStack4 block28002d3cPC block28002d3cStep block28002d3cDone block28002d3cResult |
    block28002d3cStack0 := self.
    block28002d3cPC := 4.
    block28002d3cDone := false.
    [block28002d3cDone not] whileTrue: [
        block28002d3cStep := block28002d3cPC.
        block28002d3cStep = 4 ifTrue: [
            block28002d3cStack1 := block28002d3cArg1.
            block28002d3cPC := 5.
        ].
        block28002d3cStep = 5 ifTrue: [
            block28002d3cStack1 := (block28002d3cStack1) arguments.
            block28002d3cPC := 6.
        ].
        block28002d3cStep = 6 ifTrue: [
            block28002d3cStack2 := [:block28002d60Arg1 | 
    | block28002d60Value0 block28002d60Value1 |
    block28002d60Value0 := block28002d60Arg1.
    block28002d60Value1 := (block28002d60Value0) asObject: (nil).
    block28002d60Value1
].
            block28002d3cPC := 8.
        ].
        block28002d3cStep = 8 ifTrue: [
            block28002d3cPC := 17.
        ].
        block28002d3cStep = 17 ifTrue: [
            block28002d3cStack1 := (block28002d3cStack1) collect: (block28002d3cStack2).
            block28002d3cPC := 19.
        ].
        block28002d3cStep = 19 ifTrue: [
            block28002d3cStack1 := (block28002d3cStack1) asArray.
            block28002d3cPC := 21.
        ].
        block28002d3cStep = 21 ifTrue: [
            block28002d3cLocal1 := block28002d3cStack1.
            block28002d3cPC := 22.
        ].
        block28002d3cStep = 22 ifTrue: [
            block28002d3cStack1 := Pragma.
            block28002d3cPC := 24.
        ].
        block28002d3cStep = 24 ifTrue: [
            block28002d3cStack2 := block28002d3cArg1.
            block28002d3cPC := 25.
        ].
        block28002d3cStep = 25 ifTrue: [
            block28002d3cStack2 := (block28002d3cStack2) selector.
            block28002d3cPC := 27.
        ].
        block28002d3cStep = 27 ifTrue: [
            block28002d3cStack3 := block28002d3cLocal1.
            block28002d3cPC := 28.
        ].
        block28002d3cStep = 28 ifTrue: [
            block28002d3cStack1 := (block28002d3cStack1) keyword: (block28002d3cStack2) arguments: (block28002d3cStack3).
            block28002d3cPC := 30.
        ].
        block28002d3cStep = 30 ifTrue: [
            block28002d3cResult := block28002d3cStack1.
            block28002d3cDone := true.
        ].
    ].
    block28002d3cResult
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) setPragmas: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20006794; bytecode file offset 0x1be00"
!EsMethod methodsFor: 'recovered'!
isSetter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := messagePattern.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) between: (recoveredStack2) and: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturnSelf.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := messagePattern.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSetter: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"parse.ic method 0x20006b54; bytecode file offset 0x1c1d4"
!EsMethod methodsFor: 'recovered'!
codeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorInvalidUsage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) startStackRegion: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) generateSpecialCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := messagePattern.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) breakpoint.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) breakpoint: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 |
    recoveredBlock36Value0 := recoveredBlock36Arg1.
    recoveredBlock36Value1 := recoveredArg1.
    recoveredBlock36Value2 := (recoveredBlock36Value0) generateCodeOn: (recoveredBlock36Value1) valueRequired: (false).
    recoveredBlock36Value2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) lastStatementReturns.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) returnSelf.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) endStackRegion.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1) methodIsComplete.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20007048; bytecode file offset 0x1c6b4"
!EsMethod methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := '##('.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := messagePattern.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := temporaries.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := temporaries.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) printOn: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Value0 recoveredBlock47Value1 recoveredBlock47Value2 |
    recoveredBlock47Value0 := recoveredBlock47Arg1.
    recoveredBlock47Value1 := recoveredArg1.
    recoveredBlock47Value2 := (recoveredBlock47Value0) printOn: (recoveredBlock47Value1).
    recoveredBlock47Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := $).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) nextPut: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20007318; bytecode file offset 0x1c994"
!EsMethod methodsFor: 'recovered'!
resolveNamesIn: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EsScope.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) topLevelScope.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            scope := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := isCTC.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) compileTimeConstantNameEnvironment.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceClass.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            sourceClass := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := messagePattern.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) arguments.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := scope.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) declareArgs: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := temporaries.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := temporaries.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) list.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := scope.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) declareTemps: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := statements.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := scope.
    recoveredBlock65Value2 := recoveredLocal1.
    recoveredBlock65Value3 := (recoveredBlock65Value0) resolveNamesIn: (recoveredBlock65Value1) with: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x20008e38; bytecode file offset 0x1e4e8"
!EsMethod methodsFor: 'recovered'!
generateCodeOn: recoveredArg1 valueRequired: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCompileTimeConstant.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super generateCodeOn: (recoveredStack1) valueRequired: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceStart.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) sourcePosition: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeHasNoEffect: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) asDoit.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            isCTC := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiler.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 |
    recoveredBlock56Value0 := recoveredArg1.
    recoveredBlock56Value1 := (recoveredBlock56Value0) failBlock.
    recoveredBlock56Value2 := (recoveredBlock56Value1) value.
    ^recoveredBlock56Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodErrorHandler: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiler.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodFor: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock93Value0 recoveredBlock93Value1 recoveredBlock93Value2 recoveredBlock93Value3 recoveredBlock93Value4 |
    recoveredBlock93Value0 := recoveredLocal2.
    recoveredBlock93Value1 := recoveredBlock93Value0.
    (recoveredBlock93Value1) allowTranslation: (false).
    recoveredBlock93Value2 := sourceClass.
    recoveredBlock93Value3 := (recoveredBlock93Value2) primaryInstance.
    recoveredBlock93Value4 := (recoveredBlock93Value0) executeWithReceiver: (recoveredBlock93Value3) andArguments: (#()).
    recoveredBlock93Value4
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := ExAll.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Value0 recoveredBlock118Value1 |
    recoveredLocal1 := true.
    recoveredBlock118Value0 := recoveredBlock118Arg1.
    recoveredBlock118Value1 := (recoveredBlock118Value0) exitWith: (nil).
    recoveredBlock118Value1
].
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := NlsCatESa.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) fatalError: (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) pushArbitraryLiteral: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            isCTC := recoveredStack0.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"parse.ic method 0x200096e8; bytecode file offset 0x1ed80"
!EsMethod methodsFor: 'recovered'!
localVariablesToOptimize
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) blocksByScope.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) scope.
    recoveredValue4 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 recoveredBlock16Value4 recoveredBlock16Value5 recoveredBlock16Value6 recoveredBlock16Value7 recoveredBlock16Value8 recoveredBlock16Value9 |
    recoveredBlock16Value0 := recoveredLocal2.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value0) at: (recoveredBlock16Value1).
    recoveredBlock16Local1 := recoveredBlock16Value2.
    recoveredBlock16Value3 := recoveredBlock16Arg1.
    recoveredBlock16Value4 := (recoveredBlock16Value3) locals.
    recoveredBlock16Value5 := [:recoveredBlock16Block38Arg1 | 
    | recoveredBlock16Block38Stack0 recoveredBlock16Block38Stack1 recoveredBlock16Block38Stack2 recoveredBlock16Block38Stack3 recoveredBlock16Block38Stack4 recoveredBlock16Block38PC recoveredBlock16Block38Step recoveredBlock16Block38Done recoveredBlock16Block38Result |
    recoveredBlock16Block38Stack0 := nil.
    recoveredBlock16Block38PC := 44.
    recoveredBlock16Block38Done := false.
    [recoveredBlock16Block38Done not] whileTrue: [
        recoveredBlock16Block38Step := recoveredBlock16Block38PC.
        recoveredBlock16Block38Step = 44 ifTrue: [
            recoveredBlock16Block38Stack1 := true.
            recoveredBlock16Block38PC := 45.
        ].
        recoveredBlock16Block38Step = 45 ifTrue: [
            recoveredBlock16Block38Stack2 := recoveredBlock16Local1.
            recoveredBlock16Block38PC := 48.
        ].
        recoveredBlock16Block38Step = 48 ifTrue: [
            recoveredBlock16Block38Stack3 := recoveredBlock16Block38Arg1.
            recoveredBlock16Block38PC := 49.
        ].
        recoveredBlock16Block38Step = 49 ifTrue: [
            recoveredBlock16Block38Stack2 := (recoveredBlock16Block38Stack2) directlyReferences: (recoveredBlock16Block38Stack3).
            recoveredBlock16Block38PC := 51.
        ].
        recoveredBlock16Block38Step = 51 ifTrue: [
            (recoveredBlock16Block38Stack2) ifTrue: [recoveredBlock16Block38PC := 63] ifFalse: [recoveredBlock16Block38PC := 54].
        ].
        recoveredBlock16Block38Step = 54 ifTrue: [
            recoveredBlock16Block38PC := 55.
        ].
        recoveredBlock16Block38Step = 55 ifTrue: [
            recoveredBlock16Block38Stack1 := recoveredBlock16Local1.
            recoveredBlock16Block38PC := 58.
        ].
        recoveredBlock16Block38Step = 58 ifTrue: [
            recoveredBlock16Block38Stack1 := (recoveredBlock16Block38Stack1) arguments.
            recoveredBlock16Block38PC := 60.
        ].
        recoveredBlock16Block38Step = 60 ifTrue: [
            recoveredBlock16Block38Stack2 := recoveredBlock16Block38Arg1.
            recoveredBlock16Block38PC := 61.
        ].
        recoveredBlock16Block38Step = 61 ifTrue: [
            recoveredBlock16Block38Stack1 := (recoveredBlock16Block38Stack1) includes: (recoveredBlock16Block38Stack2).
            recoveredBlock16Block38PC := 63.
        ].
        recoveredBlock16Block38Step = 63 ifTrue: [
            recoveredBlock16Block38Result := recoveredBlock16Block38Stack1.
            recoveredBlock16Block38Done := true.
        ].
    ].
    recoveredBlock16Block38Result
].
    recoveredBlock16Value6 := (recoveredBlock16Value4) reject: (recoveredBlock16Value5).
    recoveredBlock16Local2 := recoveredBlock16Value6.
    recoveredBlock16Value7 := recoveredBlock16Local2.
    recoveredBlock16Value8 := [:recoveredBlock16Block72Arg1 | 
    | recoveredBlock16Block72Local1 recoveredBlock16Block72Stack0 recoveredBlock16Block72Stack1 recoveredBlock16Block72Stack2 recoveredBlock16Block72Stack3 recoveredBlock16Block72Stack4 recoveredBlock16Block72PC recoveredBlock16Block72Step recoveredBlock16Block72Done recoveredBlock16Block72Result |
    recoveredBlock16Block72Stack0 := nil.
    recoveredBlock16Block72PC := 78.
    recoveredBlock16Block72Done := false.
    [recoveredBlock16Block72Done not] whileTrue: [
        recoveredBlock16Block72Step := recoveredBlock16Block72PC.
        recoveredBlock16Block72Step = 78 ifTrue: [
            recoveredBlock16Block72Stack1 := OrderedCollection.
            recoveredBlock16Block72PC := 80.
        ].
        recoveredBlock16Block72Step = 80 ifTrue: [
            recoveredBlock16Block72Stack1 := (recoveredBlock16Block72Stack1) new.
            recoveredBlock16Block72PC := 81.
        ].
        recoveredBlock16Block72Step = 81 ifTrue: [
            recoveredBlock16Block72Local1 := recoveredBlock16Block72Stack1.
            recoveredBlock16Block72PC := 84.
        ].
        recoveredBlock16Block72Step = 84 ifTrue: [
            recoveredBlock16Block72Stack1 := recoveredBlock16Arg1.
            recoveredBlock16Block72PC := 87.
        ].
        recoveredBlock16Block72Step = 87 ifTrue: [
            recoveredBlock16Block72Stack2 := [:recoveredBlock16Block72Block87Arg1 | 
    | recoveredBlock16Block72Block87Local1 recoveredBlock16Block72Block87Local2 recoveredBlock16Block72Block87Stack0 recoveredBlock16Block72Block87Stack1 recoveredBlock16Block72Block87Stack2 recoveredBlock16Block72Block87Stack3 recoveredBlock16Block72Block87Stack4 recoveredBlock16Block72Block87PC recoveredBlock16Block72Block87Step recoveredBlock16Block72Block87Done recoveredBlock16Block72Block87Result |
    recoveredBlock16Block72Block87Stack0 := nil.
    recoveredBlock16Block72Block87PC := 94.
    recoveredBlock16Block72Block87Done := false.
    [recoveredBlock16Block72Block87Done not] whileTrue: [
        recoveredBlock16Block72Block87Step := recoveredBlock16Block72Block87PC.
        recoveredBlock16Block72Block87Step = 94 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := nil.
            recoveredBlock16Block72Block87PC := 95.
        ].
        recoveredBlock16Block72Block87Step = 95 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := recoveredLocal2.
            recoveredBlock16Block72Block87PC := 98.
        ].
        recoveredBlock16Block72Block87Step = 98 ifTrue: [
            recoveredBlock16Block72Block87Stack3 := recoveredBlock16Block72Block87Arg1.
            recoveredBlock16Block72Block87PC := 99.
        ].
        recoveredBlock16Block72Block87Step = 99 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := (recoveredBlock16Block72Block87Stack2) at: (recoveredBlock16Block72Block87Stack3).
            recoveredBlock16Block72Block87PC := 101.
        ].
        recoveredBlock16Block72Block87Step = 101 ifTrue: [
            recoveredBlock16Block72Block87Stack3 := recoveredBlock16Block72Arg1.
            recoveredBlock16Block72Block87PC := 104.
        ].
        recoveredBlock16Block72Block87Step = 104 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := (recoveredBlock16Block72Block87Stack2) directlyReferences: (recoveredBlock16Block72Block87Stack3).
            recoveredBlock16Block72Block87PC := 106.
        ].
        recoveredBlock16Block72Block87Step = 106 ifTrue: [
            (recoveredBlock16Block72Block87Stack2) ifTrue: [recoveredBlock16Block72Block87PC := 110] ifFalse: [recoveredBlock16Block72Block87PC := 159].
        ].
        recoveredBlock16Block72Block87Step = 110 ifTrue: [
            recoveredBlock16Block72Block87PC := 111.
        ].
        recoveredBlock16Block72Block87Step = 111 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := recoveredBlock16Block72Block87Arg1.
            recoveredBlock16Block72Block87PC := 112.
        ].
        recoveredBlock16Block72Block87Step = 112 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := recoveredBlock16Block72Block87Stack1.
            recoveredBlock16Block72Block87PC := 113.
        ].
        recoveredBlock16Block72Block87Step = 113 ifTrue: [
            recoveredBlock16Block72Block87Local2 := recoveredBlock16Block72Block87Stack2.
            recoveredBlock16Block72Block87PC := 114.
        ].
        recoveredBlock16Block72Block87Step = 114 ifTrue: [
            recoveredBlock16Block72Block87Local1 := recoveredBlock16Block72Block87Stack1.
            recoveredBlock16Block72Block87PC := 115.
        ].
        recoveredBlock16Block72Block87Step = 115 ifTrue: [
            recoveredBlock16Block72Block87PC := 130.
        ].
        recoveredBlock16Block72Block87Step = 118 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := recoveredBlock16Block72Block87Local2.
            recoveredBlock16Block72Block87PC := 119.
        ].
        recoveredBlock16Block72Block87Step = 119 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := (recoveredBlock16Block72Block87Stack1) parent.
            recoveredBlock16Block72Block87PC := 121.
        ].
        recoveredBlock16Block72Block87Step = 121 ifTrue: [
            recoveredBlock16Block72Block87Local2 := recoveredBlock16Block72Block87Stack1.
            recoveredBlock16Block72Block87PC := 122.
        ].
        recoveredBlock16Block72Block87Step = 122 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := recoveredBlock16Block72Block87Local2.
            recoveredBlock16Block72Block87PC := 123.
        ].
        recoveredBlock16Block72Block87Step = 123 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := (recoveredBlock16Block72Block87Stack1) inlined.
            recoveredBlock16Block72Block87PC := 125.
        ].
        recoveredBlock16Block72Block87Step = 125 ifTrue: [
            (recoveredBlock16Block72Block87Stack1) ifTrue: [recoveredBlock16Block72Block87PC := 130] ifFalse: [recoveredBlock16Block72Block87PC := 128].
        ].
        recoveredBlock16Block72Block87Step = 128 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := recoveredBlock16Block72Block87Local2.
            recoveredBlock16Block72Block87PC := 129.
        ].
        recoveredBlock16Block72Block87Step = 129 ifTrue: [
            recoveredBlock16Block72Block87Local1 := recoveredBlock16Block72Block87Stack1.
            recoveredBlock16Block72Block87PC := 130.
        ].
        recoveredBlock16Block72Block87Step = 130 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := recoveredBlock16Block72Block87Local2.
            recoveredBlock16Block72Block87PC := 131.
        ].
        recoveredBlock16Block72Block87Step = 131 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := (recoveredBlock16Block72Block87Stack1) parent.
            recoveredBlock16Block72Block87PC := 133.
        ].
        recoveredBlock16Block72Block87Step = 133 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := recoveredBlock16Arg1.
            recoveredBlock16Block72Block87PC := 136.
        ].
        recoveredBlock16Block72Block87Step = 136 ifTrue: [
            (recoveredBlock16Block72Block87Stack1 ~~ recoveredBlock16Block72Block87Stack2) ifTrue: [recoveredBlock16Block72Block87PC := 118] ifFalse: [recoveredBlock16Block72Block87PC := 138].
        ].
        recoveredBlock16Block72Block87Step = 138 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := nil.
            recoveredBlock16Block72Block87PC := 139.
        ].
        recoveredBlock16Block72Block87Step = 139 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := recoveredBlock16Block72Local1.
            recoveredBlock16Block72Block87PC := 142.
        ].
        recoveredBlock16Block72Block87Step = 142 ifTrue: [
            recoveredBlock16Block72Block87Stack3 := recoveredBlock16Block72Block87Local1.
            recoveredBlock16Block72Block87PC := 143.
        ].
        recoveredBlock16Block72Block87Step = 143 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := (recoveredBlock16Block72Block87Stack2) includes: (recoveredBlock16Block72Block87Stack3).
            recoveredBlock16Block72Block87PC := 145.
        ].
        recoveredBlock16Block72Block87Step = 145 ifTrue: [
            (recoveredBlock16Block72Block87Stack2) ifTrue: [recoveredBlock16Block72Block87PC := 155] ifFalse: [recoveredBlock16Block72Block87PC := 148].
        ].
        recoveredBlock16Block72Block87Step = 148 ifTrue: [
            recoveredBlock16Block72Block87PC := 149.
        ].
        recoveredBlock16Block72Block87Step = 149 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := recoveredBlock16Block72Local1.
            recoveredBlock16Block72Block87PC := 152.
        ].
        recoveredBlock16Block72Block87Step = 152 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := recoveredBlock16Block72Block87Local1.
            recoveredBlock16Block72Block87PC := 153.
        ].
        recoveredBlock16Block72Block87Step = 153 ifTrue: [
            recoveredBlock16Block72Block87Stack1 := (recoveredBlock16Block72Block87Stack1) add: (recoveredBlock16Block72Block87Stack2).
            recoveredBlock16Block72Block87PC := 155.
        ].
        recoveredBlock16Block72Block87Step = 155 ifTrue: [
            recoveredBlock16Block72Block87Stack2 := nil.
            recoveredBlock16Block72Block87PC := 156.
        ].
        recoveredBlock16Block72Block87Step = 156 ifTrue: [
            recoveredBlock16Block72Block87Stack3 := recoveredBlock16Block72Block87Stack2.
            recoveredBlock16Block72Block87PC := 157.
        ].
        recoveredBlock16Block72Block87Step = 157 ifTrue: [
            recoveredBlock16Block72Block87Local2 := recoveredBlock16Block72Block87Stack3.
            recoveredBlock16Block72Block87PC := 158.
        ].
        recoveredBlock16Block72Block87Step = 158 ifTrue: [
            recoveredBlock16Block72Block87Local1 := recoveredBlock16Block72Block87Stack2.
            recoveredBlock16Block72Block87PC := 159.
        ].
        recoveredBlock16Block72Block87Step = 159 ifTrue: [
            recoveredBlock16Block72Block87Result := recoveredBlock16Block72Block87Stack1.
            recoveredBlock16Block72Block87Done := true.
        ].
    ].
    recoveredBlock16Block72Block87Result
].
            recoveredBlock16Block72PC := 160.
        ].
        recoveredBlock16Block72Step = 160 ifTrue: [
            (recoveredBlock16Block72Stack1) allSubscopesBreadthFirstDo: (recoveredBlock16Block72Stack2).
            recoveredBlock16Block72PC := 162.
        ].
        recoveredBlock16Block72Step = 162 ifTrue: [
            recoveredBlock16Block72Stack1 := nil.
            recoveredBlock16Block72PC := 163.
        ].
        recoveredBlock16Block72Step = 163 ifTrue: [
            recoveredBlock16Block72Stack2 := recoveredBlock16Block72Local1.
            recoveredBlock16Block72PC := 166.
        ].
        recoveredBlock16Block72Step = 166 ifTrue: [
            recoveredBlock16Block72Stack2 := (recoveredBlock16Block72Stack2) size.
            recoveredBlock16Block72PC := 168.
        ].
        recoveredBlock16Block72Step = 168 ifTrue: [
            recoveredBlock16Block72Stack3 := 1.
            recoveredBlock16Block72PC := 170.
        ].
        recoveredBlock16Block72Step = 170 ifTrue: [
            (recoveredBlock16Block72Stack2 ~~ recoveredBlock16Block72Stack3) ifTrue: [recoveredBlock16Block72PC := 195] ifFalse: [recoveredBlock16Block72PC := 174].
        ].
        recoveredBlock16Block72Step = 174 ifTrue: [
            recoveredBlock16Block72Stack2 := recoveredBlock16Block72Local1.
            recoveredBlock16Block72PC := 177.
        ].
        recoveredBlock16Block72Step = 177 ifTrue: [
            recoveredBlock16Block72Stack3 := 1.
            recoveredBlock16Block72PC := 179.
        ].
        recoveredBlock16Block72Step = 179 ifTrue: [
            recoveredBlock16Block72Stack2 := (recoveredBlock16Block72Stack2) at: (recoveredBlock16Block72Stack3).
            recoveredBlock16Block72PC := 181.
        ].
        recoveredBlock16Block72Step = 181 ifTrue: [
            recoveredBlock16Block72Stack2 := (recoveredBlock16Block72Stack2) inlined.
            recoveredBlock16Block72PC := 183.
        ].
        recoveredBlock16Block72Step = 183 ifTrue: [
            (recoveredBlock16Block72Stack2) ifTrue: [recoveredBlock16Block72PC := 195] ifFalse: [recoveredBlock16Block72PC := 186].
        ].
        recoveredBlock16Block72Step = 186 ifTrue: [
            recoveredBlock16Block72PC := 187.
        ].
        recoveredBlock16Block72Step = 187 ifTrue: [
            recoveredBlock16Block72Stack1 := recoveredLocal1.
            recoveredBlock16Block72PC := 190.
        ].
        recoveredBlock16Block72Step = 190 ifTrue: [
            recoveredBlock16Block72Stack2 := recoveredBlock16Block72Arg1.
            recoveredBlock16Block72PC := 193.
        ].
        recoveredBlock16Block72Step = 193 ifTrue: [
            recoveredBlock16Block72Stack1 := (recoveredBlock16Block72Stack1) add: (recoveredBlock16Block72Stack2).
            recoveredBlock16Block72PC := 195.
        ].
        recoveredBlock16Block72Step = 195 ifTrue: [
            recoveredBlock16Block72Result := recoveredBlock16Block72Stack1.
            recoveredBlock16Block72Done := true.
        ].
    ].
    recoveredBlock16Block72Result
].
    recoveredBlock16Value9 := (recoveredBlock16Value7) do: (recoveredBlock16Value8).
    recoveredBlock16Value9
].
    (recoveredValue3) withAllSubscopesBreadthFirstDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

