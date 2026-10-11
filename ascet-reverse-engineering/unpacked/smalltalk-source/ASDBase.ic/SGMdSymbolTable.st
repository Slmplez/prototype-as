"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000bf18; bytecode file offset 0x908be4"
!SGMdSymbolTable methodsFor: 'recovered'!
mdlProjectInterface
    | recoveredValue0 |
    recoveredValue0 := (self) projectInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027690; bytecode file offset 0x924260"
!SGMdSymbolTable methodsFor: 'recovered'!
lookupApplicationErrorInScope
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) scope.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200593e8; bytecode file offset 0x956284"
!SGMdSymbolTable methodsFor: 'recovered'!
includesKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) symbols.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066c9c; bytecode file offset 0x9646f8"
!SGMdSymbolTable methodsFor: 'recovered'!
scope
    | recoveredValue0 |
    recoveredValue0 := scope.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200beb28; bytecode file offset 0x9bc0b4"
!SGMdSymbolTable methodsFor: 'recovered'!
scope: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scope := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfa8c; bytecode file offset 0x9bd228"
!SGMdSymbolTable methodsFor: 'recovered'!
rememberProjectInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    projectInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ca634; bytecode file offset 0x9c7020"
!SGMdSymbolTable methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2 ifPresent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) symbols.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200f846c; bytecode file offset 0x9f4e38"
!SGMdSymbolTable methodsFor: 'recovered'!
moduleInterfaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5ca0Arg1 | 
    | block280c5ca0Value0 block280c5ca0Value1 |
    block280c5ca0Value0 := block280c5ca0Arg1.
    block280c5ca0Value1 := (block280c5ca0Value0) isMdlModule.
    block280c5ca0Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011a1b8; bytecode file offset 0xa16b44"
!SGMdSymbolTable methodsFor: 'recovered'!
allComponentInterfaces
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c87a8Arg1 | 
    | block280c87a8Value0 block280c87a8Value1 block280c87a8Value2 |
    block280c87a8Value0 := block280c87a8Arg1.
    block280c87a8Value1 := (block280c87a8Value0) mdlClassType.
    block280c87a8Value2 := (block280c87a8Value1) isIleComplexClassNoEnumType.
    block280c87a8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20120e6c; bytecode file offset 0xa1d748"
!SGMdSymbolTable methodsFor: 'recovered'!
swComponentInterfaceIfFail: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c9018Arg1 | 
    | block280c9018Value0 block280c9018Value1 |
    block280c9018Value0 := block280c9018Arg1.
    block280c9018Value1 := (block280c9018Value0) isMdlSWComponent.
    block280c9018Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012c5b0; bytecode file offset 0xa28e70"
!SGMdSymbolTable methodsFor: 'recovered'!
swComponentInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    (self) mdlFatalExpect: ('SWComponent interface').
    nil
].
    recoveredValue1 := (self) swComponentInterfaceIfFail: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20150dc8; bytecode file offset 0xa4d694"
!SGMdSymbolTable methodsFor: 'recovered'!
tempDecls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280cd620Arg1 | 
    | block280cd620Value0 block280cd620Value1 |
    block280cd620Value0 := block280cd620Arg1.
    block280cd620Value1 := (block280cd620Value0) isMdlTempVar.
    block280cd620Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d6a64; bytecode file offset 0xad3334"
!SGMdSymbolTable methodsFor: 'recovered'!
autosarStandardReturnTypeInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d590cArg1 | 
    | block280d590cValue0 block280d590cValue1 block280d590cValue2 |
    block280d590cValue0 := block280d590cArg1.
    block280d590cValue1 := (block280d590cValue0) mdlClassType.
    block280d590cValue2 := (block280d590cValue1) isMdlAUTOSARStandardReturnType.
    block280d590cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock14Value0 |
    recoveredBlock14Value0 := (self) mdlFatalExpect: ('AUTOSAR Standard Return Type').
    recoveredBlock14Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db2bc; bytecode file offset 0xad7ba0"
!SGMdSymbolTable methodsFor: 'recovered'!
lookupModuleInterfaceMdlKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('component with OID (') , (recoveredBlock7Value0).
    recoveredBlock7Value2 := (recoveredBlock7Value1) , (')').
    recoveredBlock7Value3 := (self) mdlFatalExpect: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue2 := (self) lookupClassInterface: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201e0718; bytecode file offset 0xadcfe4"
!SGMdSymbolTable methodsFor: 'recovered'!
lookup: recoveredArg1 expr: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessChain.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e4624; bytecode file offset 0xae0ef4"
!SGMdSymbolTable methodsFor: 'recovered'!
varDecls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbols.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSet.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := [:block280d6ce0Arg1 | 
    | block280d6ce0Stack0 block280d6ce0Stack1 block280d6ce0Stack2 block280d6ce0Stack3 block280d6ce0PC block280d6ce0Step block280d6ce0Done block280d6ce0Result |
    block280d6ce0Stack0 := self.
    block280d6ce0PC := 4.
    block280d6ce0Done := false.
    [block280d6ce0Done not] whileTrue: [
        block280d6ce0Step := block280d6ce0PC.
        block280d6ce0Step = 4 ifTrue: [
            block280d6ce0Stack1 := false.
            block280d6ce0PC := 5.
        ].
        block280d6ce0Step = 5 ifTrue: [
            block280d6ce0Stack2 := block280d6ce0Arg1.
            block280d6ce0PC := 6.
        ].
        block280d6ce0Step = 6 ifTrue: [
            block280d6ce0Stack2 := (block280d6ce0Stack2) isMdlBlockVarDecl.
            block280d6ce0PC := 7.
        ].
        block280d6ce0Step = 7 ifTrue: [
            (block280d6ce0Stack2) ifTrue: [block280d6ce0PC := 10] ifFalse: [block280d6ce0PC := 15].
        ].
        block280d6ce0Step = 10 ifTrue: [
            block280d6ce0PC := 11.
        ].
        block280d6ce0Step = 11 ifTrue: [
            block280d6ce0Stack1 := block280d6ce0Arg1.
            block280d6ce0PC := 12.
        ].
        block280d6ce0Step = 12 ifTrue: [
            block280d6ce0Stack1 := (block280d6ce0Stack1) isMdlAscetTempVar.
            block280d6ce0PC := 14.
        ].
        block280d6ce0Step = 14 ifTrue: [
            block280d6ce0Stack1 := (block280d6ce0Stack1) not.
            block280d6ce0PC := 15.
        ].
        block280d6ce0Step = 15 ifTrue: [
            block280d6ce0Result := block280d6ce0Stack1.
            block280d6ce0Done := true.
        ].
    ].
    block280d6ce0Result
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201f6238; bytecode file offset 0xaf2b24"
!SGMdSymbolTable methodsFor: 'recovered'!
lookupClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) errLabel.
    recoveredBlock7Value2 := ('component (') , (recoveredBlock7Value1).
    recoveredBlock7Value3 := (recoveredBlock7Value2) , (')').
    recoveredBlock7Value4 := (self) mdlFatalExpect: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    recoveredValue2 := (self) lookupClassInterface: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2024f844; bytecode file offset 0xb4c110"
!SGMdSymbolTable methodsFor: 'recovered'!
lookupApplicationError: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumValue.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
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
            recoveredStack0 := (recoveredStack0) lookupApplicationErrorInScope.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupApplicationError: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026e8b4; bytecode file offset 0xb6b178"
!SGMdSymbolTable methodsFor: 'recovered'!
deepLookup: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) scope.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 18].
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) value.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) scope.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) deepLookup: (recoveredBlock7Stack1) ifFail: (recoveredBlock7Stack2).
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (self) lookup: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20275240; bytecode file offset 0xb71b0c"
!SGMdSymbolTable methodsFor: 'recovered'!
projectInterface
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := projectInterface.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbols.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280e091cArg1 | 
    | block280e091cValue0 block280e091cValue1 |
    block280e091cValue0 := block280e091cArg1.
    block280e091cValue1 := (block280e091cValue0) isMdlProject.
    block280e091cValue1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := [
    (self) mdlFatalExpect: ('Project interface').
    nil
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            projectInterface := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := projectInterface.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202dfe24; bytecode file offset 0xbdc6f0"
!SGMdSymbolTable methodsFor: 'recovered'!
propagateMdlClass: recoveredArg1 varName: recoveredArg2 attributes: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepLookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) mdlClass: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) cgAttrNoNeedImpl.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlInteger.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) cgAttrNoLimitAssignment.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ecca4; bytecode file offset 0xbe9578"
!SGMdSymbolTable methodsFor: 'recovered'!
lookupClassInterface: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlKey.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) symbols.
    recoveredBlock8Value1 := [:recoveredBlock8Block15Arg1 | 
    | recoveredBlock8Block15Stack0 recoveredBlock8Block15Stack1 recoveredBlock8Block15Stack2 recoveredBlock8Block15Stack3 recoveredBlock8Block15PC recoveredBlock8Block15Step recoveredBlock8Block15Done recoveredBlock8Block15Result |
    recoveredBlock8Block15Stack0 := nil.
    recoveredBlock8Block15PC := 22.
    recoveredBlock8Block15Done := false.
    [recoveredBlock8Block15Done not] whileTrue: [
        recoveredBlock8Block15Step := recoveredBlock8Block15PC.
        recoveredBlock8Block15Step = 22 ifTrue: [
            recoveredBlock8Block15Stack1 := false.
            recoveredBlock8Block15PC := 23.
        ].
        recoveredBlock8Block15Step = 23 ifTrue: [
            recoveredBlock8Block15Stack2 := recoveredBlock8Block15Arg1.
            recoveredBlock8Block15PC := 24.
        ].
        recoveredBlock8Block15Step = 24 ifTrue: [
            recoveredBlock8Block15Stack2 := (recoveredBlock8Block15Stack2) mdlClassType.
            recoveredBlock8Block15PC := 25.
        ].
        recoveredBlock8Block15Step = 25 ifTrue: [
            recoveredBlock8Block15Stack2 := (recoveredBlock8Block15Stack2) isIleComplexClassNoEnumType.
            recoveredBlock8Block15PC := 26.
        ].
        recoveredBlock8Block15Step = 26 ifTrue: [
            (recoveredBlock8Block15Stack2) ifTrue: [recoveredBlock8Block15PC := 30] ifFalse: [recoveredBlock8Block15PC := 42].
        ].
        recoveredBlock8Block15Step = 30 ifTrue: [
            recoveredBlock8Block15PC := 31.
        ].
        recoveredBlock8Block15Step = 31 ifTrue: [
            recoveredBlock8Block15Stack1 := recoveredBlock8Block15Arg1.
            recoveredBlock8Block15PC := 32.
        ].
        recoveredBlock8Block15Step = 32 ifTrue: [
            recoveredBlock8Block15Stack1 := (recoveredBlock8Block15Stack1) mdlClassType.
            recoveredBlock8Block15PC := 33.
        ].
        recoveredBlock8Block15Step = 33 ifTrue: [
            recoveredBlock8Block15Stack1 := (recoveredBlock8Block15Stack1) mdlLabel.
            recoveredBlock8Block15PC := 35.
        ].
        recoveredBlock8Block15Step = 35 ifTrue: [
            recoveredBlock8Block15Stack2 := recoveredArg1.
            recoveredBlock8Block15PC := 38.
        ].
        recoveredBlock8Block15Step = 38 ifTrue: [
            recoveredBlock8Block15Stack2 := (recoveredBlock8Block15Stack2) mdlLabel.
            recoveredBlock8Block15PC := 40.
        ].
        recoveredBlock8Block15Step = 40 ifTrue: [
            recoveredBlock8Block15Stack1 := (recoveredBlock8Block15Stack1) equals: (recoveredBlock8Block15Stack2).
            recoveredBlock8Block15PC := 42.
        ].
        recoveredBlock8Block15Step = 42 ifTrue: [
            recoveredBlock8Block15Result := recoveredBlock8Block15Stack1.
            recoveredBlock8Block15Done := true.
        ].
    ].
    recoveredBlock8Block15Result
].
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := (recoveredBlock8Value0) detect: (recoveredBlock8Value1) ifNone: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (self) lookup: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203a9d3c; bytecode file offset 0xca6614"
!SGMdSymbolTable methodsFor: 'recovered'!
deepLookup: recoveredArg1 imports: recoveredArg2 ifFail: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) scope.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 60] ifFalse: [recoveredBlock7PC := 18].
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlSelfKey.
            recoveredBlock7PC := 21.
        ].
        recoveredBlock7Step = 21 ifTrue: [
            recoveredBlock7Stack2 := [].
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) lookup: (recoveredBlock7Stack1) ifFail: (recoveredBlock7Stack2).
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack0.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local2.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            (recoveredBlock7Stack0 ~~ nil) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 30].
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg3.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) value.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            ^recoveredBlock7Stack0
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack0 := recoveredArg2.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local2.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) mdlClass.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) lookupClassInterface: (recoveredBlock7Stack1).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack0 := recoveredBlock7Local1.
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) deepLookup: (recoveredBlock7Stack1) ifFail: (recoveredBlock7Stack2).
            recoveredBlock7PC := 54.
        ].
        recoveredBlock7Step = 54 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) scope.
            recoveredBlock7PC := 62.
        ].
        recoveredBlock7Step = 62 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 68.
        ].
        recoveredBlock7Step = 68 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg3.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) deepLookup: (recoveredBlock7Stack1) imports: (recoveredBlock7Stack2) ifFail: (recoveredBlock7Stack3).
            recoveredBlock7PC := 74.
        ].
        recoveredBlock7Step = 74 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue2 := (self) lookup: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2043dd88; bytecode file offset 0xd3a668"
!SGMdSymbolTable methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 imports: recoveredArg3 ifFail: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlSelfKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupClassInterface: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupInstVar: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessChain.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) scope.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) deepLookup: (recoveredStack1) expr: (recoveredStack2) imports: (recoveredStack3) ifFail: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessChain.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

