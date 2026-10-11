"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002d044; bytecode file offset 0x934580"
!SGCProcedureSource methodsFor: 'recovered'!
sgClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) valueConfig.
    recoveredValue1 := (recoveredValue0) sgClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048b04; bytecode file offset 0x9453c8"
!SGCProcedureSource methodsFor: 'recovered'!
setCCode
    inHCode := false.
    ^self
! !

"ASDBase.ic method 0x2004aa68; bytecode file offset 0x94732c"
!SGCProcedureSource methodsFor: 'recovered'!
setHCode
    inHCode := true.
    ^self
! !

"ASDBase.ic method 0x2006c2ec; bytecode file offset 0x9692b0"
!SGCProcedureSource methodsFor: 'recovered'!
codeContainer
    | recoveredValue0 |
    recoveredValue0 := codeContainer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cc48; bytecode file offset 0x969c04"
!SGCProcedureSource methodsFor: 'recovered'!
methodName
    | recoveredValue0 |
    recoveredValue0 := methodName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d5fc; bytecode file offset 0x96a390"
!SGCProcedureSource methodsFor: 'recovered'!
lineNumber
    | recoveredValue0 |
    recoveredValue0 := lineNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d7c4; bytecode file offset 0x96a390"
!SGCProcedureSource methodsFor: 'recovered'!
line
    | recoveredValue0 |
    recoveredValue0 := lineNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df98; bytecode file offset 0x96a9dc"
!SGCProcedureSource methodsFor: 'recovered'!
ignore
    | recoveredValue0 |
    recoveredValue0 := ignore.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e5ec; bytecode file offset 0x96af48"
!SGCProcedureSource methodsFor: 'recovered'!
inHCode
    | recoveredValue0 |
    recoveredValue0 := inHCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e6b0; bytecode file offset 0x96b41c"
!SGCProcedureSource methodsFor: 'recovered'!
targetType
    | recoveredValue0 |
    recoveredValue0 := targetType.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ed0c; bytecode file offset 0x96b8a0"
!SGCProcedureSource methodsFor: 'recovered'!
codeGenPath
    | recoveredValue0 |
    recoveredValue0 := codeGenPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200766d4; bytecode file offset 0x9757c8"
!SGCProcedureSource methodsFor: 'recovered'!
isCProcedureSource
    ^true
! !

"ASDBase.ic method 0x200c2cc4; bytecode file offset 0x9bfde0"
!SGCProcedureSource methodsFor: 'recovered'!
codeContainer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeContainer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ad0; bytecode file offset 0x9c058c"
!SGCProcedureSource methodsFor: 'recovered'!
methodName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c42f4; bytecode file offset 0x9c0bf0"
!SGCProcedureSource methodsFor: 'recovered'!
lineNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lineNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4780; bytecode file offset 0x9c11bc"
!SGCProcedureSource methodsFor: 'recovered'!
ignore: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ignore := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4e48; bytecode file offset 0x9c1afc"
!SGCProcedureSource methodsFor: 'recovered'!
targetType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetType := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5688; bytecode file offset 0x9c1f64"
!SGCProcedureSource methodsFor: 'recovered'!
codeGenPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeGenPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d6608; bytecode file offset 0x9d3134"
!SGCProcedureSource methodsFor: 'recovered'!
initialize
    super initialize.
    (self) setCCode.
    ^self
! !

"ASDBase.ic method 0x200e32a4; bytecode file offset 0x9dfb80"
!SGCProcedureSource methodsFor: 'recovered'!
setHeaderCode
    | recoveredValue0 recoveredValue1 |
    (self) setHCode.
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) headerMethodName.
    (self) methodName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20114b14; bytecode file offset 0xa113dc"
!SGCProcedureSource methodsFor: 'recovered'!
makeConfig
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGMakeConfig.
    recoveredValue1 := (self) implConfig.
    recoveredValue2 := (self) valueConfig.
    recoveredValue3 := (self) valueConfig.
    recoveredValue4 := (recoveredValue3) sgClass.
    recoveredValue5 := (recoveredValue0) createForImpl: (recoveredValue1) data: (recoveredValue2) sgClass: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20152a9c; bytecode file offset 0xa4f35c"
!SGCProcedureSource methodsFor: 'recovered'!
representsError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeContainer.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isDbObject.
    recoveredBlock5Value2 := (recoveredBlock5Value1) not.
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x201f7f60; bytecode file offset 0xaf4834"
!SGCProcedureSource methodsFor: 'recovered'!
absoluteLineNumber: recoveredArg1 sourceObject: recoveredArg2 allSources: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'h'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) setHeaderCode.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) lineString.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) setPositionInfoFrom: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024b790; bytecode file offset 0xb4806c"
!SGCProcedureSource methodsFor: 'recovered'!
context: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super context: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) project.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) target.
    recoveredBlock11Value2 := (recoveredBlock11Value1) targetType.
    (self) targetType: (recoveredBlock11Value2).
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) generatorSettings.
    recoveredBlock11Value5 := (recoveredBlock11Value4) codeGenPath.
    recoveredBlock11Value6 := (self) codeGenPath: (recoveredBlock11Value5).
    recoveredBlock11Value6
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20283dcc; bytecode file offset 0xb806ac"
!SGCProcedureSource methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('CProcSource(').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) sgClass.
    recoveredValue4 := (recoveredValue3) label.
    recoveredValue5 := (recoveredValue4) , ('-').
    (recoveredValue2) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) methodName.
    recoveredValue8 := (recoveredValue7) , (':').
    (recoveredValue6) nextPutAll: (recoveredValue8).
    recoveredValue9 := (self) lineNumber.
    recoveredValue10 := (recoveredValue9) asString.
    recoveredValue11 := (recoveredValue10) , (')').
    (recoveredValue0) nextPutAll: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x202ff330; bytecode file offset 0xbfbc08"
!SGCProcedureSource methodsFor: 'recovered'!
setSpecification
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) headerMethodName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) specification.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) specification: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodNamed: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) methodName: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) specification: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c8e18; bytecode file offset 0xcc56f8"
!SGCProcedureSource methodsFor: 'recovered'!
setPositionInfoFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := '/*'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := '*/'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) fromIdentifier.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) methodName: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) asNumber.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) lineNumber: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

