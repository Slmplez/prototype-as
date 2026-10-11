"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002ac24; bytecode file offset 0x934580"
!SGMdDataInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlClassType.
    recoveredValue1 := (recoveredValue0) arCategory.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20055d40; bytecode file offset 0x952a9c"
!SGMdDataInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlDataInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200753b4; bytecode file offset 0x9757c8"
!SGMdDataInterface methodsFor: 'recovered'!
isMdlSRInterface
    ^true
! !

"ASDBase.ic method 0x200af4c0; bytecode file offset 0x9abd78"
!SGMdDataInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 expr: recoveredArg2 imports: recoveredArg3 ifFail: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg4.
    recoveredValue3 := (self) deepLookup: (recoveredValue0) expr: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c9738; bytecode file offset 0x9c600c"
!SGMdDataInterface methodsFor: 'recovered'!
storeInstVar: recoveredArg1 initValue: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) currentDataSetValues.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) mdlKey.
    recoveredValue3 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2012e7c4; bytecode file offset 0xa2b0c4"
!SGMdDataInterface methodsFor: 'recovered'!
modelInstVars
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
            recoveredStack1 := [:block280cabccArg1 | 
    | block280cabccValue0 block280cabccValue1 |
    block280cabccValue0 := block280cabccArg1.
    block280cabccValue1 := (block280cabccValue0) isMdlInstVarDecl.
    block280cabccValue1
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
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201464e0; bytecode file offset 0xa42f4c"
!SGMdDataInterface methodsFor: 'recovered'!
selectedDataSet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarInitValues.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc4f8Value0 block280cc4f8Value1 |
    block280cc4f8Value0 := LookupTable.
    block280cc4f8Value1 := (block280cc4f8Value0) new.
    block280cc4f8Value1
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

"ASDBase.ic method 0x204a9e94; bytecode file offset 0xda6830"
!SGMdDataInterface methodsFor: 'recovered'!
switchToDataset: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentDataSet.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentDataSet.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIdenticalTo: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarInitValues.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) initName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Unknown data set'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := 'Unknown data set '.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) initName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := ', should be one of '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVarInitValues.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) keys.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := [:block281050a0Arg1 :block281050a0Arg2 | 
    | block281050a0Value0 block281050a0Value1 block281050a0Value2 block281050a0Value3 |
    block281050a0Value0 := block281050a0Arg1.
    block281050a0Value1 := (block281050a0Value0) , (', ').
    block281050a0Value2 := block281050a0Arg2.
    block281050a0Value3 := (block281050a0Value1) , (block281050a0Value2).
    block281050a0Value3
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := (recoveredStack2) inject: (recoveredStack3) into: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) mdlFatalExpect: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) currentDataSet: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := 'Rl'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 'Call_74017'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) modelInstVars.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := [:recoveredBlock96Arg1 | 
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 recoveredBlock96Value3 recoveredBlock96Value4 recoveredBlock96Value5 recoveredBlock96Value6 |
    recoveredBlock96Value0 := recoveredBlock96Arg1.
    recoveredBlock96Value1 := (self) currentDataSetValues.
    recoveredBlock96Value2 := recoveredBlock96Arg1.
    recoveredBlock96Value3 := (recoveredBlock96Value2) mdlKey.
    recoveredBlock96Value4 := [
    | recoveredBlock96Block113Value0 recoveredBlock96Block113Value1 recoveredBlock96Block113Value2 recoveredBlock96Block113Value3 |
    recoveredBlock96Block113Value0 := recoveredBlock96Arg1.
    recoveredBlock96Block113Value1 := (recoveredBlock96Block113Value0) errLabel.
    recoveredBlock96Block113Value2 := ('missing init value for instance variable ') , (recoveredBlock96Block113Value1).
    recoveredBlock96Block113Value3 := (self) mdlFatalExpect: (recoveredBlock96Block113Value2).
    recoveredBlock96Block113Value3
].
    recoveredBlock96Value5 := (recoveredBlock96Value1) at: (recoveredBlock96Value3) ifAbsent: (recoveredBlock96Value4).
    recoveredBlock96Value6 := (recoveredBlock96Value0) initValue: (recoveredBlock96Value5).
    recoveredBlock96Value6
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

