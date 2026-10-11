"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200049f8; bytecode file offset 0x90206c"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
addPrivateMethodCallTo: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20041b14; bytecode file offset 0x93e414"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
removeLastCode
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentList.
    recoveredValue1 := (recoveredValue0) removeLast.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048ffc; bytecode file offset 0x9458c0"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
dispose
    methods := nil.
    ^self
! !

"ASDBase.ic method 0x200529e0; bytecode file offset 0x94f294"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
outlineMethods: recoveredArg1
    generate := true.
    ^self
! !

"ASDBase.ic method 0x2006c324; bytecode file offset 0x9692b0"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
privateMethods
    | recoveredValue0 |
    recoveredValue0 := privateMethods.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ddc8; bytecode file offset 0x96a9dc"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
sizeEstimatorClass
    | recoveredValue0 |
    recoveredValue0 := sizeEstimatorClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ab0c; bytecode file offset 0x97c330"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
isGeneratingOutlinedMethod
    ^false
! !

"ASDBase.ic method 0x2007ad3c; bytecode file offset 0x97c330"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
autoInlining
    ^false
! !

"ASDBase.ic method 0x2008670c; bytecode file offset 0x9830a8"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
addPrivateMethod: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092d7c; bytecode file offset 0x98f634"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
addCodeList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := currentList.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) addAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20098304; bytecode file offset 0x995850"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) comment: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c45b0; bytecode file offset 0x9c11bc"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
sizeEstimatorClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sizeEstimatorClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20117258; bytecode file offset 0xa13b14"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
onChangeBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280c72fcArg1 :block280c72fcArg2 | 
    | block280c72fcValue0 block280c72fcValue1 block280c72fcValue2 |
    block280c72fcValue0 := block280c72fcArg1.
    block280c72fcValue1 := block280c72fcArg2.
    (block280c72fcValue0) list: (block280c72fcValue1).
    block280c72fcValue2 := block280c72fcArg1.
    block280c72fcValue2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201243fc; bytecode file offset 0xa20cb4"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
codeBefore: recoveredArg1 sequence: recoveredArg2 after: recoveredArg3 source: recoveredArg4 label: recoveredArg5 optimize: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := (self) codeBefore: (recoveredValue0) sequence: (recoveredValue1) after: (recoveredValue2) afterOptimized: (nil) source: (recoveredValue3) label: (recoveredValue4) optimize: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20157730; bytecode file offset 0xa53ff0"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
internalError: recoveredArg1 fatal: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) generalError: (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) fatalWithDisplay.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179e64; bytecode file offset 0xa76720"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
codeBefore: recoveredArg1 sequence: recoveredArg2 after: recoveredArg3 source: recoveredArg4 label: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack6 := [:block280cf384Arg1 :block280cf384Arg2 | 
    | block280cf384Value0 |
    block280cf384Value0 := block280cf384Arg1.
    block280cf384Value0
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeBefore: (recoveredStack1) sequence: (recoveredStack2) after: (recoveredStack3) source: (recoveredStack4) label: (recoveredStack5) optimize: (recoveredStack6).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20196da0; bytecode file offset 0xa93668"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
findMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) mdlBuilder.
    recoveredValue1 := (recoveredValue0) mdClassInProcess.
    recoveredValue2 := (recoveredValue1) sortedMethods.
    recoveredValue3 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) declaration.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) == (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue4 := (recoveredValue2) detect: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201986b8; bytecode file offset 0xa94f74"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
codeBefore: recoveredArg1 sequence: recoveredArg2 after: recoveredArg3 afterOptimized: recoveredArg4 source: recoveredArg5 label: recoveredArg6
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack7 := [:block280d1e8cArg1 :block280d1e8cArg2 | 
    | block280d1e8cValue0 |
    block280d1e8cValue0 := block280d1e8cArg1.
    block280d1e8cValue0
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeBefore: (recoveredStack1) sequence: (recoveredStack2) after: (recoveredStack3) afterOptimized: (recoveredStack4) source: (recoveredStack5) label: (recoveredStack6) optimize: (recoveredStack7).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019c514; bytecode file offset 0xa98de0"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
optimizeIf: recoveredArg1 condition: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) condition.
    recoveredValue2 := (recoveredValue1) list.
    recoveredValue3 := (recoveredValue2) copy.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) list.
    (recoveredValue4) addAll: (recoveredValue6).
    recoveredValue7 := SGSmInlinedOrExpression.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := currentMethod.
    recoveredValue10 := (recoveredValue7) create: (recoveredValue8) outlineStrategy: (self) method: (recoveredValue9).
    ^recoveredValue10
! !

"ASDBase.ic method 0x201e4b70; bytecode file offset 0xae143c"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    methods := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    stack := recoveredValue3.
    recoveredValue4 := SGSmEstimateSizeNone.
    sizeEstimatorClass := recoveredValue4.
    recoveredValue5 := LookupTable.
    recoveredValue6 := (recoveredValue5) new.
    privateMethods := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x20207fe4; bytecode file offset 0xb048a4"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
method: recoveredArg1 code: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            currentMethod := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := generate.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := methods.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) buildMdl.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) recordMethod: (recoveredStack2) code: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021021c; bytecode file offset 0xb0cae0"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
isOptimizableIf: recoveredArg1 body: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isIfCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReturn.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) list.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20225478; bytecode file offset 0xb21d40"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
methodExit
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) exit.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := generate.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := returnCode.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := SGSmReturnCode.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := currentMethod.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) method: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            returnCode := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := returnCode.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) addCode: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20227b18; bytecode file offset 0xb243e4"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
addCode: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNonOutlinableCode.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'Internal fatal error: Corrupt data structures for switch or case - Please disable outlining and report this error to ETAS'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2) fatal: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInlinedCode.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'Internal fatal error: Mixture of outlinable and inlined code - Please disable outlining and report this error to ETAS'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) internalError: (recoveredStack2) fatal: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := currentList.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20288774; bytecode file offset 0xb85050"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
recordMethod: recoveredArg1 code: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    currentList := recoveredValue1.
    recoveredValue2 := (self) mdlBuilder.
    (recoveredValue2) block.
    recoveredValue3 := recoveredArg2.
    (recoveredValue3) value.
    recoveredValue4 := (self) mdlBuilder.
    (recoveredValue4) endBlock.
    recoveredValue5 := SGSmInlinedCodeList.
    recoveredValue6 := (self) finishCurrentList.
    recoveredValue7 := currentMethod.
    recoveredValue8 := (recoveredValue5) create: (recoveredValue6) outlineStrategy: (self) method: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := methods.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue9) at: (recoveredValue10) put: (recoveredValue11).
    currentList := nil.
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x202ca9e0; bytecode file offset 0xbc72bc"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
codeSequence: recoveredArg1 source: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := stack.
    recoveredValue1 := currentList.
    (recoveredValue0) add: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    currentList := recoveredValue3.
    recoveredValue4 := (self) mdlBuilder.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) source: (recoveredValue6).
    (recoveredValue4) block.
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) value.
    recoveredValue8 := (self) mdlBuilder.
    recoveredValue9 := recoveredValue8.
    recoveredValue10 := recoveredArg2.
    (recoveredValue9) source: (recoveredValue10).
    (recoveredValue8) endBlock.
    recoveredValue11 := currentList.
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := stack.
    recoveredValue13 := (recoveredValue12) removeLast.
    currentList := recoveredValue13.
    recoveredValue14 := recoveredLocal1.
    (self) addCodeList: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2031c83c; bytecode file offset 0xc19120"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
addPrivateMethods: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) sortedMethods.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6Stack6 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := SGSmPrivateMethod.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack4 := true.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack5 := self.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack5 := (recoveredBlock6Stack5) autoInlining.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack5) ifTrue: [recoveredBlock6PC := 29] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) declaration.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) attributes.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Stack4 := (recoveredBlock6Stack4) isCgAttrInline.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) create: (recoveredBlock6Stack2) outlineStrategy: (recoveredBlock6Stack3) inlined: (recoveredBlock6Stack4).
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Stack1 := privateMethods.
            recoveredBlock6PC := 35.
        ].
        recoveredBlock6Step = 35 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) declaration.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Local1.
            recoveredBlock6PC := 38.
        ].
        recoveredBlock6Step = 38 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) put: (recoveredBlock6Stack3).
            recoveredBlock6PC := 40.
        ].
        recoveredBlock6Step = 40 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateMethods.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:block280eb6c8Arg1 | 
    | block280eb6c8Value0 block280eb6c8Value1 |
    block280eb6c8Value0 := block280eb6c8Arg1.
    block280eb6c8Value1 := (block280eb6c8Value0) calcCalledMethodsSize.
    block280eb6c8Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b0990; bytecode file offset 0xcad268"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
finishCurrentList
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := currentList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            currentList := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280f5b2cArg1 | 
    | block280f5b2cValue0 block280f5b2cValue1 |
    block280f5b2cValue0 := block280f5b2cArg1.
    block280f5b2cValue1 := (block280f5b2cValue0) isNonOutlinableCode.
    block280f5b2cValue1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSatisfy: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 :recoveredBlock35Arg2 | 
    | recoveredBlock35Local1 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35Stack5 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) isNonOutlinableCode.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 48] ifFalse: [recoveredBlock35PC := 72].
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            recoveredBlock35Stack1 := SGSmInlinedCodeList.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack2 := OrderedCollection.
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Arg1.
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) with: (recoveredBlock35Stack3).
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack3 := self.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack4 := currentMethod.
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) create: (recoveredBlock35Stack2) outlineStrategy: (recoveredBlock35Stack3) method: (recoveredBlock35Stack4).
            recoveredBlock35PC := 62.
        ].
        recoveredBlock35Step = 62 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal1.
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg2.
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Local1.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) at: (recoveredBlock35Stack2) put: (recoveredBlock35Stack3).
            recoveredBlock35PC := 70.
        ].
        recoveredBlock35Step = 70 ifTrue: [
            recoveredBlock35Stack2 := nil.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack2.
            recoveredBlock35PC := 72.
        ].
        recoveredBlock35Step = 72 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204812e0; bytecode file offset 0xd7dbf4"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
atomicExpr: recoveredArg1 tag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) exprSequence.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) value.
    recoveredValue2 := (self) sizeEstimatorClass.
    recoveredValue3 := [
    | recoveredBlock14Local1 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 recoveredBlock14Value16 recoveredBlock14Value17 recoveredBlock14Value18 recoveredBlock14Value19 |
    recoveredBlock14Value0 := (self) mdlBuilder.
    recoveredBlock14Value1 := (recoveredBlock14Value0) endExprSequence.
    recoveredLocal4 := recoveredBlock14Value1.
    recoveredBlock14Value2 := SGMdCalledMethodsCollector.
    recoveredBlock14Value3 := (recoveredBlock14Value2) new.
    recoveredBlock14Value4 := recoveredLocal4.
    recoveredBlock14Value5 := (recoveredBlock14Value3) calledMethods: (recoveredBlock14Value4).
    recoveredLocal2 := recoveredBlock14Value5.
    recoveredBlock14Value6 := SGSmReadWarning.
    recoveredBlock14Value7 := (recoveredBlock14Value6) create.
    recoveredBlock14Value8 := recoveredLocal4.
    recoveredBlock14Value9 := (recoveredBlock14Value7) referenceToSM: (recoveredBlock14Value8).
    recoveredLocal1 := recoveredBlock14Value9.
    recoveredBlock14Value10 := SGMdSequenceInfo.
    recoveredBlock14Value11 := (recoveredBlock14Value10) create.
    recoveredBlock14Local1 := recoveredBlock14Value11.
    recoveredBlock14Value12 := recoveredBlock14Local1.
    recoveredBlock14Value13 := recoveredLocal4.
    recoveredBlock14Value14 := (recoveredBlock14Value13) exprSize.
    (recoveredBlock14Value12) stmntSize: (recoveredBlock14Value14).
    recoveredBlock14Value15 := recoveredBlock14Local1.
    recoveredBlock14Value16 := OrderedCollection.
    recoveredBlock14Value17 := recoveredLocal4.
    recoveredBlock14Value18 := (recoveredBlock14Value16) with: (recoveredBlock14Value17).
    recoveredBlock14Value19 := (recoveredBlock14Value15) statements: (recoveredBlock14Value18).
    recoveredBlock14Value19
].
    recoveredValue4 := (recoveredValue2) create: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := SGSmAtomicExpression.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := currentMethod.
    recoveredValue10 := (recoveredValue5) createWithBlock: (recoveredValue6) tag: (recoveredValue7) size: (recoveredValue8) outlineStrategy: (self) method: (recoveredValue9).
    recoveredLocal5 := recoveredValue10.
    recoveredValue11 := recoveredLocal5.
    (self) addCode: (recoveredValue11).
    recoveredValue12 := recoveredLocal5.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue12) addCalledMethods: (recoveredValue13).
    recoveredValue14 := recoveredLocal5.
    recoveredValue15 := (recoveredValue14) referencesToSM.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue15) addAll: (recoveredValue16).
    recoveredValue17 := recoveredLocal5.
    ^recoveredValue17
! !

"ASDBase.ic method 0x204bdbbc; bytecode file offset 0xdba4cc"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
atomicCode: recoveredArg1 tag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) stmntSequence.
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) value.
    recoveredValue2 := (self) sizeEstimatorClass.
    recoveredValue3 := [
    | recoveredBlock14Local1 recoveredBlock14Local2 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 |
    recoveredBlock14Value0 := (self) mdlBuilder.
    recoveredBlock14Value1 := (recoveredBlock14Value0) endStmntSequence.
    recoveredBlock14Local2 := recoveredBlock14Value1.
    recoveredBlock14Value2 := OrderedCollection.
    recoveredBlock14Value3 := (recoveredBlock14Value2) new.
    recoveredLocal2 := recoveredBlock14Value3.
    recoveredBlock14Value4 := OrderedCollection.
    recoveredBlock14Value5 := (recoveredBlock14Value4) new.
    recoveredLocal1 := recoveredBlock14Value5.
    recoveredBlock14Value6 := SGSmReportExitStmnts.
    recoveredBlock14Value7 := (recoveredBlock14Value6) create.
    recoveredBlock14Local1 := recoveredBlock14Value7.
    recoveredBlock14Value8 := recoveredBlock14Local2.
    recoveredBlock14Value9 := (recoveredBlock14Value8) statements.
    recoveredBlock14Value10 := [:recoveredBlock14Block52Arg1 | 
    | recoveredBlock14Block52Value0 recoveredBlock14Block52Value1 recoveredBlock14Block52Value2 recoveredBlock14Block52Value3 recoveredBlock14Block52Value4 recoveredBlock14Block52Value5 recoveredBlock14Block52Value6 recoveredBlock14Block52Value7 recoveredBlock14Block52Value8 recoveredBlock14Block52Value9 recoveredBlock14Block52Value10 recoveredBlock14Block52Value11 recoveredBlock14Block52Value12 |
    recoveredBlock14Block52Value0 := recoveredBlock14Local1.
    recoveredBlock14Block52Value1 := recoveredBlock14Block52Arg1.
    (recoveredBlock14Block52Value0) visitMdlNode: (recoveredBlock14Block52Value1).
    recoveredBlock14Block52Value2 := recoveredLocal2.
    recoveredBlock14Block52Value3 := SGMdCalledMethodsCollector.
    recoveredBlock14Block52Value4 := (recoveredBlock14Block52Value3) new.
    recoveredBlock14Block52Value5 := recoveredBlock14Block52Arg1.
    recoveredBlock14Block52Value6 := (recoveredBlock14Block52Value4) calledMethods: (recoveredBlock14Block52Value5).
    (recoveredBlock14Block52Value2) addAll: (recoveredBlock14Block52Value6).
    recoveredBlock14Block52Value7 := recoveredLocal1.
    recoveredBlock14Block52Value8 := SGSmReadWarning.
    recoveredBlock14Block52Value9 := (recoveredBlock14Block52Value8) create.
    recoveredBlock14Block52Value10 := recoveredBlock14Block52Arg1.
    recoveredBlock14Block52Value11 := (recoveredBlock14Block52Value9) referenceToSM: (recoveredBlock14Block52Value10).
    recoveredBlock14Block52Value12 := (recoveredBlock14Block52Value7) addAll: (recoveredBlock14Block52Value11).
    recoveredBlock14Block52Value12
].
    (recoveredBlock14Value9) do: (recoveredBlock14Value10).
    recoveredBlock14Value11 := recoveredBlock14Local2.
    recoveredBlock14Value11
].
    recoveredValue4 := (recoveredValue2) create: (recoveredValue3).
    recoveredLocal3 := recoveredValue4.
    recoveredValue5 := SGSmAtomicCode.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := recoveredLocal3.
    recoveredValue9 := currentMethod.
    recoveredValue10 := (recoveredValue5) createWithBlock: (recoveredValue6) tag: (recoveredValue7) size: (recoveredValue8) outlineStrategy: (self) method: (recoveredValue9).
    recoveredLocal4 := recoveredValue10.
    recoveredValue11 := recoveredLocal4.
    (self) addCode: (recoveredValue11).
    recoveredValue12 := recoveredLocal4.
    recoveredValue13 := recoveredLocal2.
    (recoveredValue12) addCalledMethods: (recoveredValue13).
    recoveredValue14 := recoveredLocal4.
    recoveredValue15 := (recoveredValue14) referencesToSM.
    recoveredValue16 := recoveredLocal1.
    (recoveredValue15) addAll: (recoveredValue16).
    recoveredValue17 := recoveredLocal4.
    ^recoveredValue17
! !

"ASDBase.ic method 0x204cb248; bytecode file offset 0xdc7b68"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
if: recoveredArg1 codeSequence: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stack.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := currentList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            currentList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) finishCurrentList.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'Internal error: an if can only have one condition - Please disable outlining and report this error to ETAS'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) internalError: (recoveredStack1) fatal: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) isExpression.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 'Internal error: the if condition must be an expression - Please disable outlining and report this error to ETAS'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) internalError: (recoveredStack1) fatal: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := SGSmInlinedCodeList.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := currentMethod.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) outlineStrategy: (recoveredStack2) method: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            currentList := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) block.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) endBlock.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) if.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) finishCurrentList.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := stack.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            currentList := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := currentList.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := currentList.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) isOptimizableIf: (recoveredStack1) body: (recoveredStack2).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeLastCode.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) optimizeIf: (recoveredStack1) condition: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := SGSmInlinedIfCode.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack4 := currentMethod.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) body: (recoveredStack2) outlineStrategy: (recoveredStack3) method: (recoveredStack4).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack0) addCode: (recoveredStack1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205536a8; bytecode file offset 0xe4ffc4"
!SGSmInlineMethodStrategy methodsFor: 'recovered'!
codeBefore: recoveredArg1 sequence: recoveredArg2 after: recoveredArg3 afterOptimized: recoveredArg4 source: recoveredArg5 label: recoveredArg6 optimize: recoveredArg7
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stack.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := currentList.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            currentList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) stmntSequence.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 40.
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
            recoveredStack1 := recoveredArg5.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizeEstimatorClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock50Value0 recoveredBlock50Value1 |
    recoveredBlock50Value0 := (self) mdlBuilder.
    recoveredBlock50Value1 := (recoveredBlock50Value0) endStmntSequence.
    recoveredBlock50Value1
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := currentList.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := [:recoveredBlock73Arg1 | 
    | recoveredBlock73Value0 recoveredBlock73Value1 recoveredBlock73Value2 |
    recoveredBlock73Value0 := recoveredBlock73Arg1.
    recoveredBlock73Value1 := recoveredLocal2.
    recoveredBlock73Value2 := (recoveredBlock73Value0) collectCalledMethods: (recoveredBlock73Value1).
    recoveredBlock73Value2
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 :recoveredBlock95Arg2 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 recoveredBlock95Value3 recoveredBlock95Value4 |
    recoveredBlock95Value0 := recoveredBlock95Arg1.
    recoveredBlock95Value1 := (self) sizeEstimatorClass.
    recoveredBlock95Value2 := recoveredBlock95Arg2.
    recoveredBlock95Value3 := (recoveredBlock95Value1) methodCall: (recoveredBlock95Value2).
    recoveredBlock95Value4 := (recoveredBlock95Value0) - (recoveredBlock95Value3).
    recoveredBlock95Value4
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [:recoveredBlock119Arg1 | 
    | recoveredBlock119Value0 recoveredBlock119Value1 recoveredBlock119Value2 recoveredBlock119Value3 recoveredBlock119Value4 |
    recoveredBlock119Value0 := recoveredLocal1.
    recoveredBlock119Value1 := recoveredBlock119Arg1.
    recoveredBlock119Value2 := (recoveredBlock119Value1) callSize.
    recoveredBlock119Value3 := (recoveredBlock119Value0) + (recoveredBlock119Value2).
    recoveredBlock119Value4 := recoveredBlock119Value3.
    recoveredLocal1 := recoveredBlock119Value4.
    recoveredBlock119Value3
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := SGSmInlinedNonOutlinableCode.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) finishCurrentList.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack6 := recoveredArg6.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack8 := currentMethod.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack9 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBefore: (recoveredStack1) sequence: (recoveredStack2) afterBlock: (recoveredStack3) afterOptimized: (recoveredStack4) source: (recoveredStack5) label: (recoveredStack6) outlineStrategy: (recoveredStack7) method: (recoveredStack8) size: (recoveredStack9).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := stack.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            currentList := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := currentList.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := currentList.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNonOutlinableCode.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNonOutlinableCode.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) ~= (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 208].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := 'Internal fatal error: Mixture of outlinable and non-outlinable code - Please disable outlining and report this error to ETAS'.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) internalError: (recoveredStack1) fatal: (recoveredStack2).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := currentList.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredArg7.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := (recoveredStack3) onChangeBlock.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

