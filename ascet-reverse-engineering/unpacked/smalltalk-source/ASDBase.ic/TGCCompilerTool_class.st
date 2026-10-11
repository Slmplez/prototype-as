"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200140f4; bytecode file offset 0x912098"
!TGCCompilerTool class methodsFor: 'recovered'!
getDefaultCompilerToolType
    | recoveredValue0 |
    recoveredValue0 := GNU_4_7_0.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200177d4; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
ehooksToolType
    ^'EHOOKS'
! !

"ASDBase.ic method 0x20017a98; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
xmlCategoryPrefix
    ^'Compiler'
! !

"ASDBase.ic method 0x2001bad0; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
publicPhrase
    ^''
! !

"ASDBase.ic method 0x2001e260; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
getRelativeLibPath
    ^'lib\'
! !

"ASDBase.ic method 0x2001e4c4; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
getRelativeToolPath
    ^'bin\'
! !

"ASDBase.ic method 0x20020bc4; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
basicGroup
    ^'Compilers'
! !

"ASDBase.ic method 0x20023690; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
privatePhrase
    ^''
! !

"ASDBase.ic method 0x20024b18; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
errLabelDeclarationCategory
    ^'compiler'
! !

"ASDBase.ic method 0x20024ff8; bytecode file offset 0x92209c"
!TGCCompilerTool class methodsFor: 'recovered'!
inlinePhrase
    ^''
! !

"ASDBase.ic method 0x20051060; bytecode file offset 0x94f0e0"
!TGCCompilerTool class methodsFor: 'recovered'!
getDefaultCompilerToolLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) availableCompilerTools.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := (recoveredValue1) compilerToolLabel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052d34; bytecode file offset 0x9505d0"
!TGCCompilerTool class methodsFor: 'recovered'!
collectAvailableCompilerTools: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20057024; bytecode file offset 0x953900"
!TGCCompilerTool class methodsFor: 'recovered'!
compilerToolLabelForType: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) compilerToolForType: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) compilerToolLabel.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200779d4; bytecode file offset 0x9757c8"
!TGCCompilerTool class methodsFor: 'recovered'!
isAbstract
    ^true
! !

"ASDBase.ic method 0x2007c78c; bytecode file offset 0x97c330"
!TGCCompilerTool class methodsFor: 'recovered'!
isGeneric
    ^false
! !

"ASDBase.ic method 0x200827c4; bytecode file offset 0x97f140"
!TGCCompilerTool class methodsFor: 'recovered'!
optionGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('External Tools\Compiler\') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e1c14; bytecode file offset 0x9de4fc"
!TGCCompilerTool class methodsFor: 'recovered'!
compilerToolType
    | recoveredValue0 |
    recoveredValue0 := ('Kli') == ('WHAT9370').
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20146534; bytecode file offset 0xa42f4c"
!TGCCompilerTool class methodsFor: 'recovered'!
descriptionForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableCompilerToolLabels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc564Value0 block280cc564Value1 |
    block280cc564Value0 := SGReservedNames.
    block280cc564Value1 := (block280cc564Value0) undefName.
    block280cc564Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201465a4; bytecode file offset 0xa42f4c"
!TGCCompilerTool class methodsFor: 'recovered'!
toolTipForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableCompilerToolLabels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc5f4Value0 block280cc5f4Value1 |
    block280cc5f4Value0 := SGReservedNames.
    block280cc5f4Value1 := (block280cc5f4Value0) undefName.
    block280cc5f4Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20146668; bytecode file offset 0xa42f4c"
!TGCCompilerTool class methodsFor: 'recovered'!
labelForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableCompilerToolLabels.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc6f0Value0 block280cc6f0Value1 |
    block280cc6f0Value0 := SGReservedNames.
    block280cc6f0Value1 := (block280cc6f0Value0) undefName.
    block280cc6f0Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015a7e0; bytecode file offset 0xa570a0"
!TGCCompilerTool class methodsFor: 'recovered'!
compilerToolForType: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCompilerTool: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) availableCompilerTools.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2016e864; bytecode file offset 0xa6b188"
!TGCCompilerTool class methodsFor: 'recovered'!
instances
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Instances.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 |
    recoveredBlock6Value0 := (self) createInstancesCollection.
    recoveredBlock6Value1 := recoveredBlock6Value0.
    Instances := recoveredBlock6Value1.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := Instances.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2017817c; bytecode file offset 0xa74a40"
!TGCCompilerTool class methodsFor: 'recovered'!
defaultForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) availableCompilerTools.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) compilerToolType.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) detect: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) defaultCompilerToolPath.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2018d0e8; bytecode file offset 0xa89a74"
!TGCCompilerTool class methodsFor: 'recovered'!
declarations
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Declarations.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d1304Value0 block280d1304Value1 block280d1304Value2 |
    block280d1304Value0 := LookupTable.
    block280d1304Value1 := (block280d1304Value0) new.
    block280d1304Value2 := block280d1304Value1.
    Declarations := block280d1304Value2.
    block280d1304Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Declarations.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018ee98; bytecode file offset 0xa8b764"
!TGCCompilerTool class methodsFor: 'recovered'!
removeInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            Instances := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            Declarations := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubclasses.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d185cArg1 | 
    | block280d185cValue0 block280d185cValue1 |
    block280d185cValue0 := block280d185cArg1.
    block280d185cValue1 := (block280d185cValue0) removeInstances.
    block280d185cValue1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a8c84; bytecode file offset 0xaa55d0"
!TGCCompilerTool class methodsFor: 'recovered'!
availableTool: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) availableCompilerTools.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) compilerToolType.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2022bcec; bytecode file offset 0xb285bc"
!TGCCompilerTool class methodsFor: 'recovered'!
availableCompilerTools
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) allSubclasses.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredLocal1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) collectAvailableCompilerTools: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) values.
    recoveredValue6 := (recoveredValue5) asArray.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20237538; bytecode file offset 0xb33e08"
!TGCCompilerTool class methodsFor: 'recovered'!
availableCompilerToolLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) availableCompilerTools.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredLocal1.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value1) compilerToolType.
    recoveredBlock11Value3 := recoveredBlock11Arg1.
    recoveredBlock11Value4 := (recoveredBlock11Value3) compilerToolLabel.
    recoveredBlock11Value5 := (recoveredBlock11Value0) at: (recoveredBlock11Value2) put: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2027c0b4; bytecode file offset 0xb78994"
!TGCCompilerTool class methodsFor: 'recovered'!
createWithRootPath: recoveredArg1 target: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) new.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) setBasePath: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) getRelativeLibPath.
    recoveredValue8 := (recoveredValue6) , (recoveredValue7).
    (recoveredValue5) setLibPath: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (self) getRelativeToolPath.
    recoveredValue12 := (recoveredValue10) , (recoveredValue11).
    (recoveredValue9) setToolPath: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := (recoveredValue14) , ('include').
    (recoveredValue13) setIncludePath: (recoveredValue15).
    recoveredValue16 := recoveredArg2.
    recoveredValue17 := (recoveredValue2) setTarget: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x2039f520; bytecode file offset 0xc9bdec"
!TGCCompilerTool class methodsFor: 'recovered'!
compilerToolTypeForLabel: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := TGCompilerTool.
    recoveredValue1 := (recoveredValue0) availableCompilerTools.
    recoveredValue2 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) label.
    recoveredBlock7Value2 := recoveredArg1.
    recoveredBlock7Value3 := (recoveredBlock7Value1) = (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    recoveredValue3 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 |
    recoveredBlock21Value0 := (self) availableCompilerTools.
    recoveredLocal1 := recoveredBlock21Value0.
    recoveredBlock21Value1 := recoveredLocal1.
    recoveredBlock21Value2 := [:recoveredBlock21Block35Arg1 | 
    | recoveredBlock21Block35Value0 recoveredBlock21Block35Value1 recoveredBlock21Block35Value2 recoveredBlock21Block35Value3 |
    recoveredBlock21Block35Value0 := recoveredBlock21Block35Arg1.
    recoveredBlock21Block35Value1 := (recoveredBlock21Block35Value0) compilerToolLabel.
    recoveredBlock21Block35Value2 := recoveredArg1.
    recoveredBlock21Block35Value3 := (recoveredBlock21Block35Value1) = (recoveredBlock21Block35Value2).
    recoveredBlock21Block35Value3
].
    recoveredBlock21Value3 := [
    ^nil
].
    recoveredBlock21Value4 := (recoveredBlock21Value1) detect: (recoveredBlock21Value2) ifNone: (recoveredBlock21Value3).
    recoveredBlock21Value5 := recoveredBlock21Value4.
    recoveredLocal2 := recoveredBlock21Value5.
    recoveredBlock21Value4
].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (recoveredValue5) compilerToolType.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20510360; bytecode file offset 0xe0cc4c"
!TGCCompilerTool class methodsFor: 'recovered'!
selectedCompilerTool: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) availableCompilerTools.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) compilerToolType.
    recoveredBlock11Value2 := recoveredArg1.
    recoveredBlock11Value3 := (recoveredBlock11Value1) = (recoveredBlock11Value2).
    recoveredBlock11Value3
].
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue1) detect: (recoveredValue2) ifNone: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := [
    | recoveredBlock35Local1 recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredArg1.
    recoveredBlock35Value1 := (self) compilerToolTypeForLabel: (recoveredBlock35Value0).
    recoveredBlock35Value2 := recoveredBlock35Value1.
    recoveredBlock35Local1 := recoveredBlock35Value2.
    recoveredBlock35Value3 := [
    | recoveredBlock35Block49Value0 recoveredBlock35Block49Value1 recoveredBlock35Block49Value2 recoveredBlock35Block49Value3 recoveredBlock35Block49Value4 |
    recoveredBlock35Block49Value0 := recoveredLocal1.
    recoveredBlock35Block49Value1 := [:recoveredBlock35Block49Block59Arg1 | 
    | recoveredBlock35Block49Block59Value0 recoveredBlock35Block49Block59Value1 recoveredBlock35Block49Block59Value2 recoveredBlock35Block49Block59Value3 |
    recoveredBlock35Block49Block59Value0 := recoveredBlock35Block49Block59Arg1.
    recoveredBlock35Block49Block59Value1 := (recoveredBlock35Block49Block59Value0) compilerToolType.
    recoveredBlock35Block49Block59Value2 := recoveredArg1.
    recoveredBlock35Block49Block59Value3 := (recoveredBlock35Block49Block59Value1) = (recoveredBlock35Block49Block59Value2).
    recoveredBlock35Block49Block59Value3
].
    recoveredBlock35Block49Value2 := [].
    recoveredBlock35Block49Value3 := (recoveredBlock35Block49Value0) detect: (recoveredBlock35Block49Value1) ifNone: (recoveredBlock35Block49Value2).
    recoveredBlock35Block49Value4 := recoveredBlock35Block49Value3.
    recoveredLocal2 := recoveredBlock35Block49Value4.
    recoveredBlock35Block49Value3
].
    recoveredBlock35Value4 := (recoveredBlock35Value1) notNil: (recoveredBlock35Value3).
    recoveredBlock35Value4
].
    (recoveredValue5) ifNil: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := [
    | recoveredBlock90Local1 recoveredBlock90Local2 recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 recoveredBlock90Value6 recoveredBlock90Value7 recoveredBlock90Value8 recoveredBlock90Value9 recoveredBlock90Value10 recoveredBlock90Value11 recoveredBlock90Value12 |
    recoveredBlock90Value0 := recoveredArg1.
    recoveredBlock90Value1 := (recoveredBlock90Value0) size.
    recoveredBlock90Value2 := (recoveredBlock90Value1) - (3).
    recoveredBlock90Value3 := (recoveredBlock90Value2) max: (6).
    recoveredBlock90Local2 := recoveredBlock90Value3.
    recoveredBlock90Value4 := recoveredArg1.
    recoveredBlock90Value5 := recoveredBlock90Local2.
    recoveredBlock90Value6 := (recoveredBlock90Value5) + (-1).
    recoveredBlock90Value7 := (recoveredBlock90Value4) memcpyStringFrom: (0) to: (recoveredBlock90Value6).
    recoveredBlock90Local1 := recoveredBlock90Value7.
    recoveredBlock90Value8 := recoveredLocal1.
    recoveredBlock90Value9 := [:recoveredBlock90Block128Arg1 | 
    | recoveredBlock90Block128Value0 recoveredBlock90Block128Value1 recoveredBlock90Block128Value2 recoveredBlock90Block128Value3 recoveredBlock90Block128Value4 recoveredBlock90Block128Value5 recoveredBlock90Block128Value6 recoveredBlock90Block128Value7 recoveredBlock90Block128Value8 recoveredBlock90Block128Value9 recoveredBlock90Block128Value10 recoveredBlock90Block128Value11 |
    recoveredBlock90Block128Value0 := recoveredBlock90Block128Arg1.
    recoveredBlock90Block128Value1 := (recoveredBlock90Block128Value0) compilerToolType.
    recoveredBlock90Block128Value2 := recoveredBlock90Local2.
    recoveredBlock90Block128Value3 := (recoveredBlock90Block128Value2) + (-1).
    recoveredBlock90Block128Value4 := recoveredBlock90Block128Arg1.
    recoveredBlock90Block128Value5 := (recoveredBlock90Block128Value4) compilerToolType.
    recoveredBlock90Block128Value6 := (recoveredBlock90Block128Value5) size.
    recoveredBlock90Block128Value7 := (recoveredBlock90Block128Value6) + (-1).
    recoveredBlock90Block128Value8 := (recoveredBlock90Block128Value3) min: (recoveredBlock90Block128Value7).
    recoveredBlock90Block128Value9 := (recoveredBlock90Block128Value1) memcpyStringFrom: (0) to: (recoveredBlock90Block128Value8).
    recoveredBlock90Block128Value10 := recoveredBlock90Local1.
    recoveredBlock90Block128Value11 := (recoveredBlock90Block128Value9) equals: (recoveredBlock90Block128Value10).
    recoveredBlock90Block128Value11
].
    recoveredBlock90Value10 := [
    | recoveredBlock90Block157Value0 recoveredBlock90Block157Value1 recoveredBlock90Block157Value2 |
    recoveredBlock90Block157Value0 := TGUnknownCompilerTool.
    recoveredBlock90Block157Value1 := recoveredArg1.
    recoveredBlock90Block157Value2 := (recoveredBlock90Block157Value0) create: (recoveredBlock90Block157Value1).
    recoveredBlock90Block157Value2
].
    recoveredBlock90Value11 := (recoveredBlock90Value8) detect: (recoveredBlock90Value9) ifNone: (recoveredBlock90Value10).
    recoveredBlock90Value12 := recoveredBlock90Value11.
    recoveredLocal2 := recoveredBlock90Value12.
    recoveredBlock90Value11
].
    (recoveredValue7) ifNil: (recoveredValue8).
    recoveredValue9 := recoveredLocal2.
    ^recoveredValue9
! !

