"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bb60; bytecode file offset 0x92209c"
!SGBdlBlockUsage methodsFor: 'recovered'!
oneDKey
    ^'oneD'
! !

"ASDBase.ic method 0x2001d564; bytecode file offset 0x92209c"
!SGBdlBlockUsage methodsFor: 'recovered'!
distributionKey
    ^'distrib'
! !

"ASDBase.ic method 0x20023780; bytecode file offset 0x92209c"
!SGBdlBlockUsage methodsFor: 'recovered'!
parameterKey
    ^'parameter'
! !

"ASDBase.ic method 0x20024824; bytecode file offset 0x92209c"
!SGBdlBlockUsage methodsFor: 'recovered'!
complexVarKey
    ^'complexVar'
! !

"ASDBase.ic method 0x200267a0; bytecode file offset 0x923928"
!SGBdlBlockUsage methodsFor: 'recovered'!
twoDKey
    ^'twoD'
! !

"ASDBase.ic method 0x200392ac; bytecode file offset 0x935c54"
!SGBdlBlockUsage methodsFor: 'recovered'!
getElementName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) elementName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056648; bytecode file offset 0x9531e4"
!SGBdlBlockUsage methodsFor: 'recovered'!
getClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) label.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20056fd4; bytecode file offset 0x953900"
!SGBdlBlockUsage methodsFor: 'recovered'!
getComplexVarMethods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) atComplexVar: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200895cc; bytecode file offset 0x985ef8"
!SGBdlBlockUsage methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    usage := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2008d54c; bytecode file offset 0x989e70"
!SGBdlBlockUsage methodsFor: 'recovered'!
allComplexVars
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) complexVarKey.
    recoveredValue1 := (self) atKey: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008d564; bytecode file offset 0x989e70"
!SGBdlBlockUsage methodsFor: 'recovered'!
allTwoDCharTables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) twoDKey.
    recoveredValue1 := (self) atKey: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008d57c; bytecode file offset 0x989e70"
!SGBdlBlockUsage methodsFor: 'recovered'!
allDistributions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) distributionKey.
    recoveredValue1 := (self) atKey: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008d594; bytecode file offset 0x989e70"
!SGBdlBlockUsage methodsFor: 'recovered'!
allOneDCharTables
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) oneDKey.
    recoveredValue1 := (self) atKey: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2008d5ac; bytecode file offset 0x989e70"
!SGBdlBlockUsage methodsFor: 'recovered'!
allParameters
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) parameterKey.
    recoveredValue1 := (self) atKey: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) keys.
    recoveredValue3 := (recoveredValue2) asArray.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20093880; bytecode file offset 0x9904ac"
!SGBdlBlockUsage methodsFor: 'recovered'!
getOneDCharTableInputNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) oneDKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) atKey: (recoveredValue0) collectInputNamesFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093900; bytecode file offset 0x9904ac"
!SGBdlBlockUsage methodsFor: 'recovered'!
getDistributionInputNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) distributionKey.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) atKey: (recoveredValue0) collectInputNamesFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20141d1c; bytecode file offset 0xa3e5e0"
!SGBdlBlockUsage methodsFor: 'recovered'!
atKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := usage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block280cc054Value0 block280cc054Value1 |
    block280cc054Value0 := LookupTable.
    block280cc054Value1 := (block280cc054Value0) new.
    block280cc054Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2016ce1c; bytecode file offset 0xa696e0"
!SGBdlBlockUsage methodsFor: 'recovered'!
getMethodName: recoveredArg1 var: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'unknown'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20188964; bytecode file offset 0xa85230"
!SGBdlBlockUsage methodsFor: 'recovered'!
putComplexVar: recoveredArg1 method: recoveredArg2 inputs: recoveredArg3
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
            recoveredStack0 := (recoveredStack0) atComplexVar: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280d09e0Value0 block280d09e0Value1 |
    block280d09e0Value0 := OrderedCollection.
    block280d09e0Value1 := (block280d09e0Value0) new.
    block280d09e0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a808c; bytecode file offset 0xaa495c"
!SGBdlBlockUsage methodsFor: 'recovered'!
atKey: recoveredArg1 collectInputNamesFor: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) atKey: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | block280d3284Value0 block280d3284Value1 |
    block280d3284Value0 := Array.
    block280d3284Value1 := (block280d3284Value0) new.
    block280d3284Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectInputNames: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b2d34; bytecode file offset 0xaaf604"
!SGBdlBlockUsage methodsFor: 'recovered'!
putParameter: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) parameterKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) atKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280d41fcValue0 block280d41fcValue1 |
    block280d41fcValue0 := Set.
    block280d41fcValue1 := (block280d41fcValue0) new.
    block280d41fcValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b5c80; bytecode file offset 0xab2574"
!SGBdlBlockUsage methodsFor: 'recovered'!
putOneDCharTable: recoveredArg1 inputs: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) oneDKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) atKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280d4340Value0 block280d4340Value1 |
    block280d4340Value0 := Set.
    block280d4340Value1 := (block280d4340Value0) new.
    block280d4340Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b5ca4; bytecode file offset 0xab2574"
!SGBdlBlockUsage methodsFor: 'recovered'!
putDistribution: recoveredArg1 inputs: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) distributionKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) atKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280d4364Value0 block280d4364Value1 |
    block280d4364Value0 := Set.
    block280d4364Value1 := (block280d4364Value0) new.
    block280d4364Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dbb88; bytecode file offset 0xad845c"
!SGBdlBlockUsage methodsFor: 'recovered'!
putTwoDCharTable: recoveredArg1 inputs: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) twoDKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) atKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280d5eacValue0 block280d5eacValue1 |
    block280d5eacValue0 := Set.
    block280d5eacValue1 := (block280d5eacValue0) new.
    block280d5eacValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024a648; bytecode file offset 0xb46f20"
!SGBdlBlockUsage methodsFor: 'recovered'!
getTwoDCharTableInputNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) twoDKey.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) atKey: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | block280dea50Value0 block280dea50Value1 |
    block280dea50Value0 := Array.
    block280dea50Value1 := (block280dea50Value0) new.
    block280dea50Value1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredBlock23Arg1.
    recoveredBlock23Value1 := (self) collectInputNames: (recoveredBlock23Value0).
    recoveredBlock23Value1
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20255ef0; bytecode file offset 0xb527b8"
!SGBdlBlockUsage methodsFor: 'recovered'!
collectInputNames: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Arg1.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            (recoveredBlock14Stack1 ~~ nil) ifTrue: [recoveredBlock14PC := 30] ifFalse: [recoveredBlock14PC := 24].
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack1 := 'expr'.
            recoveredBlock14PC := 26.
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) getElementName: (recoveredBlock14Stack2).
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2027262c; bytecode file offset 0xb6eefc"
!SGBdlBlockUsage methodsFor: 'recovered'!
getComplexVar: recoveredArg1 methodInputNames: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) atComplexVar: (recoveredValue2).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue3) at: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := recoveredLocal1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (self) collectInputNames: (recoveredBlock18Value1).
    recoveredBlock18Value3 := (recoveredBlock18Value0) add: (recoveredBlock18Value2).
    recoveredBlock18Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2037aa78; bytecode file offset 0xc77368"
!SGBdlBlockUsage methodsFor: 'recovered'!
atComplexVar: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) getElementName: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) selfName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) allComplexVars.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) getElementName: (recoveredBlock19Value0).
    recoveredBlock19Value2 := SGReservedNames.
    recoveredBlock19Value3 := (recoveredBlock19Value2) selfName.
    recoveredBlock19Value4 := (recoveredBlock19Value1) equals: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) complexVarKey.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) atKey: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [
    | block280f23e8Value0 block280f23e8Value1 |
    block280f23e8Value0 := LookupTable.
    block280f23e8Value1 := (block280f23e8Value0) new.
    block280f23e8Value1
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203ed528; bytecode file offset 0xce9e0c"
!SGBdlBlockUsage methodsFor: 'recovered'!
getMethodInputNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allComplexVars.
    recoveredValue3 := (recoveredValue2) asArray.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isRBDBUndefinedObject.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 83] ifFalse: [recoveredBlock12PC := 28].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getComplexVarMethods: (recoveredBlock12Stack2).
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) asArray.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block36Arg1 | 
    | recoveredBlock12Block36Value0 recoveredBlock12Block36Value1 recoveredBlock12Block36Value2 recoveredBlock12Block36Value3 recoveredBlock12Block36Value4 |
    recoveredBlock12Block36Value0 := recoveredBlock12Block36Arg1.
    recoveredBlock12Block36Value1 := recoveredBlock12Arg1.
    recoveredBlock12Block36Value2 := (self) getMethodName: (recoveredBlock12Block36Value0) var: (recoveredBlock12Block36Value1).
    recoveredBlock12Block36Value3 := recoveredArg1.
    recoveredBlock12Block36Value4 := (recoveredBlock12Block36Value2) equals: (recoveredBlock12Block36Value3).
    recoveredBlock12Block36Value4
].
            recoveredBlock12PC := 54.
        ].
        recoveredBlock12Step = 54 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) select: (recoveredBlock12Stack2).
            recoveredBlock12PC := 56.
        ].
        recoveredBlock12Step = 56 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 59.
        ].
        recoveredBlock12Step = 59 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal2.
            recoveredBlock12PC := 62.
        ].
        recoveredBlock12Step = 62 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block62Arg1 | 
    | recoveredBlock12Block62Value0 recoveredBlock12Block62Value1 recoveredBlock12Block62Value2 recoveredBlock12Block62Value3 recoveredBlock12Block62Value4 |
    recoveredBlock12Block62Value0 := recoveredLocal1.
    recoveredBlock12Block62Value1 := recoveredBlock12Arg1.
    recoveredBlock12Block62Value2 := recoveredBlock12Block62Arg1.
    recoveredBlock12Block62Value3 := (self) getComplexVar: (recoveredBlock12Block62Value1) methodInputNames: (recoveredBlock12Block62Value2).
    recoveredBlock12Block62Value4 := (recoveredBlock12Block62Value0) addAll: (recoveredBlock12Block62Value3).
    recoveredBlock12Block62Value4
].
            recoveredBlock12PC := 81.
        ].
        recoveredBlock12Step = 81 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 83.
        ].
        recoveredBlock12Step = 83 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2048115c; bytecode file offset 0xd7da50"
!SGBdlBlockUsage methodsFor: 'recovered'!
getMethodInputNamesForRepSfp: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := (self) allComplexVars.
    recoveredValue3 := (recoveredValue2) asArray.
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) isRBDBUndefinedObject.
            recoveredBlock12PC := 24.
        ].
        recoveredBlock12Step = 24 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 120] ifFalse: [recoveredBlock12PC := 28].
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 30.
        ].
        recoveredBlock12Step = 30 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 33.
        ].
        recoveredBlock12Step = 33 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getElementName: (recoveredBlock12Stack2).
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredLocal1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 42.
        ].
        recoveredBlock12Step = 42 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) getComplexVarMethods: (recoveredBlock12Stack2).
            recoveredBlock12PC := 44.
        ].
        recoveredBlock12Step = 44 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) asArray.
            recoveredBlock12PC := 45.
        ].
        recoveredBlock12Step = 45 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block45Arg1 | 
    | recoveredBlock12Block45Value0 recoveredBlock12Block45Value1 recoveredBlock12Block45Value2 recoveredBlock12Block45Value3 recoveredBlock12Block45Value4 |
    recoveredBlock12Block45Value0 := recoveredBlock12Block45Arg1.
    recoveredBlock12Block45Value1 := recoveredBlock12Arg1.
    recoveredBlock12Block45Value2 := (self) getMethodName: (recoveredBlock12Block45Value0) var: (recoveredBlock12Block45Value1).
    recoveredBlock12Block45Value3 := recoveredArg1.
    recoveredBlock12Block45Value4 := (recoveredBlock12Block45Value2) equals: (recoveredBlock12Block45Value3).
    recoveredBlock12Block45Value4
].
            recoveredBlock12PC := 64.
        ].
        recoveredBlock12Step = 64 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) select: (recoveredBlock12Stack2).
            recoveredBlock12PC := 66.
        ].
        recoveredBlock12Step = 66 ifTrue: [
            recoveredLocal4 := recoveredBlock12Stack1.
            recoveredBlock12PC := 69.
        ].
        recoveredBlock12Step = 69 ifTrue: [
            recoveredBlock12Stack1 := OrderedCollection.
            recoveredBlock12PC := 71.
        ].
        recoveredBlock12Step = 71 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) new.
            recoveredBlock12PC := 72.
        ].
        recoveredBlock12Step = 72 ifTrue: [
            recoveredLocal2 := recoveredBlock12Stack1.
            recoveredBlock12PC := 75.
        ].
        recoveredBlock12Step = 75 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal4.
            recoveredBlock12PC := 78.
        ].
        recoveredBlock12Step = 78 ifTrue: [
            recoveredBlock12Stack2 := [:recoveredBlock12Block78Arg1 | 
    | recoveredBlock12Block78Value0 recoveredBlock12Block78Value1 recoveredBlock12Block78Value2 recoveredBlock12Block78Value3 recoveredBlock12Block78Value4 |
    recoveredBlock12Block78Value0 := recoveredLocal2.
    recoveredBlock12Block78Value1 := recoveredBlock12Arg1.
    recoveredBlock12Block78Value2 := recoveredBlock12Block78Arg1.
    recoveredBlock12Block78Value3 := (self) getComplexVar: (recoveredBlock12Block78Value1) methodInputNames: (recoveredBlock12Block78Value2).
    recoveredBlock12Block78Value4 := (recoveredBlock12Block78Value0) addAll: (recoveredBlock12Block78Value3).
    recoveredBlock12Block78Value4
].
            recoveredBlock12PC := 97.
        ].
        recoveredBlock12Step = 97 ifTrue: [
            (recoveredBlock12Stack1) do: (recoveredBlock12Stack2).
            recoveredBlock12PC := 99.
        ].
        recoveredBlock12Step = 99 ifTrue: [
            recoveredBlock12Stack1 := nil.
            recoveredBlock12PC := 100.
        ].
        recoveredBlock12Step = 100 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal2.
            recoveredBlock12PC := 103.
        ].
        recoveredBlock12Step = 103 ifTrue: [
            recoveredBlock12Stack2 := (recoveredBlock12Stack2) notEmpty.
            recoveredBlock12PC := 105.
        ].
        recoveredBlock12Step = 105 ifTrue: [
            (recoveredBlock12Stack2) ifTrue: [recoveredBlock12PC := 108] ifFalse: [recoveredBlock12PC := 120].
        ].
        recoveredBlock12Step = 108 ifTrue: [
            recoveredBlock12PC := 109.
        ].
        recoveredBlock12Step = 109 ifTrue: [
            recoveredBlock12Stack1 := recoveredLocal3.
            recoveredBlock12PC := 112.
        ].
        recoveredBlock12Step = 112 ifTrue: [
            recoveredBlock12Stack2 := recoveredLocal1.
            recoveredBlock12PC := 115.
        ].
        recoveredBlock12Step = 115 ifTrue: [
            recoveredBlock12Stack3 := recoveredLocal2.
            recoveredBlock12PC := 118.
        ].
        recoveredBlock12Step = 118 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) at: (recoveredBlock12Stack2) put: (recoveredBlock12Stack3).
            recoveredBlock12PC := 120.
        ].
        recoveredBlock12Step = 120 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal3.
    ^recoveredValue5
! !

