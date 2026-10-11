"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066174; bytecode file offset 0x963428"
!SGIlNamingAnalysis methodsFor: 'recovered'!
cTypes
    | recoveredValue0 |
    recoveredValue0 := cTypes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067afc; bytecode file offset 0x9646f8"
!SGIlNamingAnalysis methodsFor: 'recovered'!
cNamesExported
    | recoveredValue0 |
    recoveredValue0 := cNamesExported.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068c4c; bytecode file offset 0x965b90"
!SGIlNamingAnalysis methodsFor: 'recovered'!
genContext
    | recoveredValue0 |
    recoveredValue0 := genContext.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c01a4; bytecode file offset 0x9bd228"
!SGIlNamingAnalysis methodsFor: 'recovered'!
genContext: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    genContext := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20151824; bytecode file offset 0xa4e0e8"
!SGIlNamingAnalysis methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    cTypes := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    cNamesExported := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20187f48; bytecode file offset 0xa84874"
!SGIlNamingAnalysis methodsFor: 'recovered'!
addCName: recoveredArg1 at: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cNamesExported.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d089cValue0 block280d089cValue1 |
    block280d089cValue0 := OrderedCollection.
    block280d089cValue1 := (block280d089cValue0) new.
    block280d089cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
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

"ASDBase.ic method 0x20187f88; bytecode file offset 0xa84874"
!SGIlNamingAnalysis methodsFor: 'recovered'!
addCType: recoveredArg1 at: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) cTypes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d08e4Value0 block280d08e4Value1 |
    block280d08e4Value0 := OrderedCollection.
    block280d08e4Value1 := (block280d08e4Value0) new.
    block280d08e4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
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

"ASDBase.ic method 0x204147b8; bytecode file offset 0xd110c0"
!SGIlNamingAnalysis methodsFor: 'recovered'!
analyse
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) platform.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerTarget.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) genContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) importsTable.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) allComponentInterfaces.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:block280fb748Arg1 | 
    | block280fb748Stack0 block280fb748Stack1 block280fb748Stack2 block280fb748Stack3 block280fb748PC block280fb748Step block280fb748Done block280fb748Result |
    block280fb748Stack0 := self.
    block280fb748PC := 4.
    block280fb748Done := false.
    [block280fb748Done not] whileTrue: [
        block280fb748Step := block280fb748PC.
        block280fb748Step = 4 ifTrue: [
            block280fb748Stack1 := true.
            block280fb748PC := 5.
        ].
        block280fb748Step = 5 ifTrue: [
            block280fb748Stack2 := block280fb748Arg1.
            block280fb748PC := 6.
        ].
        block280fb748Step = 6 ifTrue: [
            block280fb748Stack2 := (block280fb748Stack2) componentAttributes.
            block280fb748PC := 8.
        ].
        block280fb748Step = 8 ifTrue: [
            block280fb748Stack2 := (block280fb748Stack2) isCgServiceRoutineComponent.
            block280fb748PC := 10.
        ].
        block280fb748Step = 10 ifTrue: [
            (block280fb748Stack2) ifTrue: [block280fb748PC := 18] ifFalse: [block280fb748PC := 14].
        ].
        block280fb748Step = 14 ifTrue: [
            block280fb748PC := 15.
        ].
        block280fb748Step = 15 ifTrue: [
            block280fb748Stack1 := block280fb748Arg1.
            block280fb748PC := 16.
        ].
        block280fb748Step = 16 ifTrue: [
            block280fb748Stack1 := (block280fb748Stack1) isMdlARInterfaceType.
            block280fb748PC := 18.
        ].
        block280fb748Step = 18 ifTrue: [
            block280fb748Result := block280fb748Stack1.
            block280fb748Done := true.
        ].
    ].
    block280fb748Result
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := (recoveredBlock41Value1) mdlClassType.
    recoveredBlock41Value3 := (recoveredBlock41Value2) genName.
    (self) addCType: (recoveredBlock41Value0) at: (recoveredBlock41Value3).
    recoveredBlock41Value4 := recoveredBlock41Arg1.
    recoveredBlock41Value5 := (recoveredBlock41Value4) exportedClassVars.
    recoveredBlock41Value6 := [:recoveredBlock41Block59Arg1 | 
    | recoveredBlock41Block59Value0 recoveredBlock41Block59Value1 recoveredBlock41Block59Value2 recoveredBlock41Block59Value3 |
    recoveredBlock41Block59Value0 := recoveredBlock41Block59Arg1.
    recoveredBlock41Block59Value1 := (recoveredBlock41Block59Value0) ileVarDecl.
    recoveredBlock41Block59Value2 := [:recoveredBlock41Block59Block69Arg1 | 
    | recoveredBlock41Block59Block69Value0 recoveredBlock41Block59Block69Value1 recoveredBlock41Block59Block69Value2 recoveredBlock41Block59Block69Value3 |
    recoveredBlock41Block59Block69Value0 := recoveredBlock41Block59Block69Arg1.
    recoveredBlock41Block59Block69Value1 := recoveredBlock41Block59Block69Arg1.
    recoveredBlock41Block59Block69Value2 := (recoveredBlock41Block59Block69Value1) genName.
    recoveredBlock41Block59Block69Value3 := (self) addCName: (recoveredBlock41Block59Block69Value0) at: (recoveredBlock41Block59Block69Value2).
    recoveredBlock41Block59Block69Value3
].
    recoveredBlock41Block59Value3 := (recoveredBlock41Block59Value1) ifNotNil: (recoveredBlock41Block59Value2).
    recoveredBlock41Block59Value3
].
    recoveredBlock41Value7 := (recoveredBlock41Value5) do: (recoveredBlock41Value6).
    recoveredBlock41Value7
].
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) checkCTypes.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) checkCNamesExported.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042a0c4; bytecode file offset 0xd269b0"
!SGIlNamingAnalysis methodsFor: 'recovered'!
checkCTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cTypes.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) size.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) > (recoveredBlock5Stack3).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 99].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := OrderedCollection.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := OrderedCollection.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block40Arg1 | 
    | recoveredBlock5Block40Value0 recoveredBlock5Block40Value1 recoveredBlock5Block40Value2 recoveredBlock5Block40Value3 recoveredBlock5Block40Value4 recoveredBlock5Block40Value5 recoveredBlock5Block40Value6 |
    recoveredBlock5Block40Value0 := recoveredBlock5Local1.
    recoveredBlock5Block40Value1 := recoveredBlock5Block40Arg1.
    recoveredBlock5Block40Value2 := (recoveredBlock5Block40Value1) errLabel.
    (recoveredBlock5Block40Value0) add: (recoveredBlock5Block40Value2).
    recoveredBlock5Block40Value3 := recoveredBlock5Local2.
    recoveredBlock5Block40Value4 := recoveredBlock5Block40Arg1.
    recoveredBlock5Block40Value5 := (recoveredBlock5Block40Value4) source.
    recoveredBlock5Block40Value6 := (recoveredBlock5Block40Value3) add: (recoveredBlock5Block40Value5).
    recoveredBlock5Block40Value6
].
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            (recoveredBlock5Stack1) do: (recoveredBlock5Stack2).
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack2 := 100.
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) genContext.
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) cCodeSettings.
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) targetSpecificOptionSource.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Local2.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack6 := recoveredBlock5Local1.
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) createMultiSource: (recoveredBlock5Stack5) labels: (recoveredBlock5Stack6).
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ileSemErrNo: (recoveredBlock5Stack2) with: (recoveredBlock5Stack3) source: (recoveredBlock5Stack4).
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 91 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 92.
        ].
        recoveredBlock5Step = 92 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack3.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2042a16c; bytecode file offset 0xd26a58"
!SGIlNamingAnalysis methodsFor: 'recovered'!
checkCNamesExported
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cNamesExported.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Local1 recoveredBlock5Local2 recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5Stack6 recoveredBlock5Stack7 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) size.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack3 := 1.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) > (recoveredBlock5Stack3).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 24] ifFalse: [recoveredBlock5PC := 99].
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack1 := OrderedCollection.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack1.
            recoveredBlock5PC := 31.
        ].
        recoveredBlock5Step = 31 ifTrue: [
            recoveredBlock5Stack1 := OrderedCollection.
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) new.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack1.
            recoveredBlock5PC := 37.
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg2.
            recoveredBlock5PC := 40.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack2 := [:recoveredBlock5Block40Arg1 | 
    | recoveredBlock5Block40Value0 recoveredBlock5Block40Value1 recoveredBlock5Block40Value2 recoveredBlock5Block40Value3 recoveredBlock5Block40Value4 recoveredBlock5Block40Value5 recoveredBlock5Block40Value6 |
    recoveredBlock5Block40Value0 := recoveredBlock5Local1.
    recoveredBlock5Block40Value1 := recoveredBlock5Block40Arg1.
    recoveredBlock5Block40Value2 := (recoveredBlock5Block40Value1) ileLabel.
    (recoveredBlock5Block40Value0) add: (recoveredBlock5Block40Value2).
    recoveredBlock5Block40Value3 := recoveredBlock5Local2.
    recoveredBlock5Block40Value4 := recoveredBlock5Block40Arg1.
    recoveredBlock5Block40Value5 := (recoveredBlock5Block40Value4) source.
    recoveredBlock5Block40Value6 := (recoveredBlock5Block40Value3) add: (recoveredBlock5Block40Value5).
    recoveredBlock5Block40Value6
].
            recoveredBlock5PC := 63.
        ].
        recoveredBlock5Step = 63 ifTrue: [
            (recoveredBlock5Stack1) do: (recoveredBlock5Stack2).
            recoveredBlock5PC := 65.
        ].
        recoveredBlock5Step = 65 ifTrue: [
            recoveredBlock5Stack1 := self.
            recoveredBlock5PC := 66.
        ].
        recoveredBlock5Step = 66 ifTrue: [
            recoveredBlock5Stack2 := 101.
            recoveredBlock5PC := 70.
        ].
        recoveredBlock5Step = 70 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Arg1.
            recoveredBlock5PC := 73.
        ].
        recoveredBlock5Step = 73 ifTrue: [
            recoveredBlock5Stack4 := self.
            recoveredBlock5PC := 74.
        ].
        recoveredBlock5Step = 74 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) genContext.
            recoveredBlock5PC := 76.
        ].
        recoveredBlock5Step = 76 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) cCodeSettings.
            recoveredBlock5PC := 78.
        ].
        recoveredBlock5Step = 78 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) targetSpecificOptionSource.
            recoveredBlock5PC := 80.
        ].
        recoveredBlock5Step = 80 ifTrue: [
            recoveredBlock5Stack5 := recoveredBlock5Local2.
            recoveredBlock5PC := 83.
        ].
        recoveredBlock5Step = 83 ifTrue: [
            recoveredBlock5Stack6 := recoveredBlock5Local1.
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack4 := (recoveredBlock5Stack4) createMultiSource: (recoveredBlock5Stack5) labels: (recoveredBlock5Stack6).
            recoveredBlock5PC := 88.
        ].
        recoveredBlock5Step = 88 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) ileSemErrNo: (recoveredBlock5Stack2) with: (recoveredBlock5Stack3) source: (recoveredBlock5Stack4).
            recoveredBlock5PC := 91.
        ].
        recoveredBlock5Step = 91 ifTrue: [
            recoveredBlock5Stack2 := nil.
            recoveredBlock5PC := 92.
        ].
        recoveredBlock5Step = 92 ifTrue: [
            recoveredBlock5Stack3 := recoveredBlock5Stack2.
            recoveredBlock5PC := 93.
        ].
        recoveredBlock5Step = 93 ifTrue: [
            recoveredBlock5Local2 := recoveredBlock5Stack3.
            recoveredBlock5PC := 96.
        ].
        recoveredBlock5Step = 96 ifTrue: [
            recoveredBlock5Local1 := recoveredBlock5Stack2.
            recoveredBlock5PC := 99.
        ].
        recoveredBlock5Step = 99 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

