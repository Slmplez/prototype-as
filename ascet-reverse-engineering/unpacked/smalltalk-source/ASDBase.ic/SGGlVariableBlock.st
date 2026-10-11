"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20051088; bytecode file offset 0x94f0e0"
!SGGlVariableBlock methodsFor: 'recovered'!
representsBdlCTClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dataModelRef.
    recoveredValue1 := (recoveredValue0) sgClass.
    recoveredValue2 := (recoveredValue1) isCTClass.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200628ac; bytecode file offset 0x95f8b0"
!SGGlVariableBlock methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) dataModelRef.
    recoveredValue2 := (recoveredValue0) createMdlNameForVar: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007698c; bytecode file offset 0x9757c8"
!SGGlVariableBlock methodsFor: 'recovered'!
isBdlVariableBlock
    ^true
! !

"ASDBase.ic method 0x201b4b1c; bytecode file offset 0xab13e4"
!SGGlVariableBlock methodsFor: 'recovered'!
collectAllSeqForMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlStateMachineClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) errLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) bdlWarningNo: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            super collectAllSeqForMethod: (recoveredStack1).
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

"ASDBase.ic method 0x2021c20c; bytecode file offset 0xb18ae4"
!SGGlVariableBlock methodsFor: 'recovered'!
bdlHardPrereqForReturnValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlPrimitive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorPorts.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (recoveredBlock10Value0) aliasName.
    recoveredBlock10Value2 := (self) class.
    recoveredBlock10Value3 := (recoveredBlock10Value2) setMethodName.
    recoveredBlock10Value4 := (recoveredBlock10Value1) equals: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) reject: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20351534; bytecode file offset 0xc4de1c"
!SGGlVariableBlock methodsFor: 'recovered'!
bdlSoftPrereqForReturnValue: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlPrimitive.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAtPortName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) setAtPortName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorPortNamed: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) setMethodName.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) portNamed: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20600924; bytecode file offset 0xefd260"
!SGGlVariableBlock methodsFor: 'recovered'!
collectCharacteristicValuesIn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) dataModelRef.
    recoveredBlock4Value1 := recoveredBlock4Value0.
    recoveredLocal2 := recoveredBlock4Value1.
    recoveredBlock4Value0
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := ExSGCgFatal.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [:block2811c7f4Arg1 | 
    | block2811c7f4Value0 block2811c7f4Value1 |
    block2811c7f4Value0 := block2811c7f4Arg1.
    block2811c7f4Value1 := (block2811c7f4Value0) exitWith: (nil).
    block2811c7f4Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) interface.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Local1 recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47Stack5 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 55.
        ].
        recoveredBlock47Step = 55 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) isAllArgumentsConnected.
            recoveredBlock47PC := 57.
        ].
        recoveredBlock47Step = 57 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 60] ifFalse: [recoveredBlock47PC := 90].
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack1 := recoveredBlock47Arg1.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) interfaceArguments.
            recoveredBlock47PC := 63.
        ].
        recoveredBlock47Step = 63 ifTrue: [
            recoveredBlock47Stack2 := [:block2811c818Arg1 | 
    | block2811c818Stack0 block2811c818Stack1 block2811c818Stack2 block2811c818Stack3 block2811c818PC block2811c818Step block2811c818Done block2811c818Result |
    block2811c818Stack0 := self.
    block2811c818PC := 4.
    block2811c818Done := false.
    [block2811c818Done not] whileTrue: [
        block2811c818Step := block2811c818PC.
        block2811c818Step = 4 ifTrue: [
            block2811c818Stack1 := nil.
            block2811c818PC := 5.
        ].
        block2811c818Step = 5 ifTrue: [
            block2811c818Stack2 := block2811c818Arg1.
            block2811c818PC := 6.
        ].
        block2811c818Step = 6 ifTrue: [
            block2811c818Stack2 := (block2811c818Stack2) senderPort.
            block2811c818PC := 8.
        ].
        block2811c818Step = 8 ifTrue: [
            (block2811c818Stack2 == nil) ifTrue: [block2811c818PC := 18] ifFalse: [block2811c818PC := 12].
        ].
        block2811c818Step = 12 ifTrue: [
            block2811c818PC := 13.
        ].
        block2811c818Step = 13 ifTrue: [
            block2811c818Stack1 := block2811c818Arg1.
            block2811c818PC := 14.
        ].
        block2811c818Step = 14 ifTrue: [
            block2811c818Stack1 := (block2811c818Stack1) senderPort.
            block2811c818PC := 16.
        ].
        block2811c818Step = 16 ifTrue: [
            block2811c818Stack1 := (block2811c818Stack1) connectedDataModelRef.
            block2811c818PC := 18.
        ].
        block2811c818Step = 18 ifTrue: [
            block2811c818Result := block2811c818Stack1.
            block2811c818Done := true.
        ].
    ].
    block2811c818Result
].
            recoveredBlock47PC := 65.
        ].
        recoveredBlock47Step = 65 ifTrue: [
            recoveredBlock47PC := 83.
        ].
        recoveredBlock47Step = 83 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) collect: (recoveredBlock47Stack2).
            recoveredBlock47PC := 85.
        ].
        recoveredBlock47Step = 85 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack1.
            recoveredBlock47PC := 86.
        ].
        recoveredBlock47Step = 86 ifTrue: [
            recoveredBlock47PC := 95.
        ].
        recoveredBlock47Step = 90 ifTrue: [
            recoveredBlock47Stack1 := Array.
            recoveredBlock47PC := 92.
        ].
        recoveredBlock47Step = 92 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) new.
            recoveredBlock47PC := 94.
        ].
        recoveredBlock47Step = 94 ifTrue: [
            recoveredBlock47Local1 := recoveredBlock47Stack1.
            recoveredBlock47PC := 95.
        ].
        recoveredBlock47Step = 95 ifTrue: [
            recoveredBlock47Stack1 := recoveredArg1.
            recoveredBlock47PC := 98.
        ].
        recoveredBlock47Step = 98 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal2.
            recoveredBlock47PC := 101.
        ].
        recoveredBlock47Step = 101 ifTrue: [
            recoveredBlock47Stack3 := recoveredBlock47Arg1.
            recoveredBlock47PC := 102.
        ].
        recoveredBlock47Step = 102 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) aliasName.
            recoveredBlock47PC := 104.
        ].
        recoveredBlock47Step = 104 ifTrue: [
            recoveredBlock47Stack4 := recoveredBlock47Local1.
            recoveredBlock47PC := 105.
        ].
        recoveredBlock47Step = 105 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) putComplexVar: (recoveredBlock47Stack2) method: (recoveredBlock47Stack3) inputs: (recoveredBlock47Stack4).
            recoveredBlock47PC := 108.
        ].
        recoveredBlock47Step = 108 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGOneDCharTable.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) dataModelRef.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 151].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) putOneDCharTable: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPortName.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := (recoveredStack1) portNamed: (recoveredStack2).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAllArgumentsConnected.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAtPortName.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := (recoveredStack1) portNamed: (recoveredStack2).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAllArgumentsConnected.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 199] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := (recoveredStack1) putOneDCharTable: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) interfaceArguments.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := [:block2811c83cArg1 | 
    | block2811c83cStack0 block2811c83cStack1 block2811c83cStack2 block2811c83cStack3 block2811c83cPC block2811c83cStep block2811c83cDone block2811c83cResult |
    block2811c83cStack0 := self.
    block2811c83cPC := 4.
    block2811c83cDone := false.
    [block2811c83cDone not] whileTrue: [
        block2811c83cStep := block2811c83cPC.
        block2811c83cStep = 4 ifTrue: [
            block2811c83cStack1 := nil.
            block2811c83cPC := 5.
        ].
        block2811c83cStep = 5 ifTrue: [
            block2811c83cStack2 := block2811c83cArg1.
            block2811c83cPC := 6.
        ].
        block2811c83cStep = 6 ifTrue: [
            block2811c83cStack2 := (block2811c83cStack2) senderPort.
            block2811c83cPC := 8.
        ].
        block2811c83cStep = 8 ifTrue: [
            (block2811c83cStack2 == nil) ifTrue: [block2811c83cPC := 18] ifFalse: [block2811c83cPC := 12].
        ].
        block2811c83cStep = 12 ifTrue: [
            block2811c83cPC := 13.
        ].
        block2811c83cStep = 13 ifTrue: [
            block2811c83cStack1 := block2811c83cArg1.
            block2811c83cPC := 14.
        ].
        block2811c83cStep = 14 ifTrue: [
            block2811c83cStack1 := (block2811c83cStack1) senderPort.
            block2811c83cPC := 16.
        ].
        block2811c83cStep = 16 ifTrue: [
            block2811c83cStack1 := (block2811c83cStack1) connectedDataModelRef.
            block2811c83cPC := 18.
        ].
        block2811c83cStep = 18 ifTrue: [
            block2811c83cResult := block2811c83cStack1.
            block2811c83cDone := true.
        ].
    ].
    block2811c83cResult
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := (recoveredStack1) putOneDCharTable: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGTwoDCharTable.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 350].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack1 := (recoveredStack1) isGroupCharTable.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 265].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := (recoveredStack1) putTwoDCharTable: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPortName.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := (recoveredStack1) portNamed: (recoveredStack2).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAllArgumentsConnected.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAtPortName.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := (recoveredStack1) portNamed: (recoveredStack2).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAllArgumentsConnected.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 300].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack1 := (recoveredStack1) putTwoDCharTable: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := (recoveredStack3) interfaceArguments.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := [:block2811c860Arg1 | 
    | block2811c860Stack0 block2811c860Stack1 block2811c860Stack2 block2811c860Stack3 block2811c860PC block2811c860Step block2811c860Done block2811c860Result |
    block2811c860Stack0 := self.
    block2811c860PC := 4.
    block2811c860Done := false.
    [block2811c860Done not] whileTrue: [
        block2811c860Step := block2811c860PC.
        block2811c860Step = 4 ifTrue: [
            block2811c860Stack1 := nil.
            block2811c860PC := 5.
        ].
        block2811c860Step = 5 ifTrue: [
            block2811c860Stack2 := block2811c860Arg1.
            block2811c860PC := 6.
        ].
        block2811c860Step = 6 ifTrue: [
            block2811c860Stack2 := (block2811c860Stack2) senderPort.
            block2811c860PC := 8.
        ].
        block2811c860Step = 8 ifTrue: [
            (block2811c860Stack2 == nil) ifTrue: [block2811c860PC := 18] ifFalse: [block2811c860PC := 12].
        ].
        block2811c860Step = 12 ifTrue: [
            block2811c860PC := 13.
        ].
        block2811c860Step = 13 ifTrue: [
            block2811c860Stack1 := block2811c860Arg1.
            block2811c860PC := 14.
        ].
        block2811c860Step = 14 ifTrue: [
            block2811c860Stack1 := (block2811c860Stack1) senderPort.
            block2811c860PC := 16.
        ].
        block2811c860Step = 16 ifTrue: [
            block2811c860Stack1 := (block2811c860Stack1) connectedDataModelRef.
            block2811c860PC := 18.
        ].
        block2811c860Step = 18 ifTrue: [
            block2811c860Result := block2811c860Stack1.
            block2811c860Done := true.
        ].
    ].
    block2811c860Result
].
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) putTwoDCharTable: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGDistribution.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 358] ifFalse: [recoveredPC := 426].
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := (recoveredStack2) searchPortName.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := (recoveredStack1) portNamed: (recoveredStack2).
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAllArgumentsConnected.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 389] ifFalse: [recoveredPC := 376].
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := (recoveredStack1) putDistribution: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := (recoveredStack3) interfaceArguments.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := [:block2811c884Arg1 | 
    | block2811c884Stack0 block2811c884Stack1 block2811c884Stack2 block2811c884Stack3 block2811c884PC block2811c884Step block2811c884Done block2811c884Result |
    block2811c884Stack0 := self.
    block2811c884PC := 4.
    block2811c884Done := false.
    [block2811c884Done not] whileTrue: [
        block2811c884Step := block2811c884PC.
        block2811c884Step = 4 ifTrue: [
            block2811c884Stack1 := nil.
            block2811c884PC := 5.
        ].
        block2811c884Step = 5 ifTrue: [
            block2811c884Stack2 := block2811c884Arg1.
            block2811c884PC := 6.
        ].
        block2811c884Step = 6 ifTrue: [
            block2811c884Stack2 := (block2811c884Stack2) senderPort.
            block2811c884PC := 8.
        ].
        block2811c884Step = 8 ifTrue: [
            (block2811c884Stack2 == nil) ifTrue: [block2811c884PC := 18] ifFalse: [block2811c884PC := 12].
        ].
        block2811c884Step = 12 ifTrue: [
            block2811c884PC := 13.
        ].
        block2811c884Step = 13 ifTrue: [
            block2811c884Stack1 := block2811c884Arg1.
            block2811c884PC := 14.
        ].
        block2811c884Step = 14 ifTrue: [
            block2811c884Stack1 := (block2811c884Stack1) senderPort.
            block2811c884PC := 16.
        ].
        block2811c884Step = 16 ifTrue: [
            block2811c884Stack1 := (block2811c884Stack1) connectedDataModelRef.
            block2811c884PC := 18.
        ].
        block2811c884Step = 18 ifTrue: [
            block2811c884Result := block2811c884Stack1.
            block2811c884Done := true.
        ].
    ].
    block2811c884Result
].
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack1 := (recoveredStack1) putDistribution: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack1 := (recoveredStack1) isParameter.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 434] ifFalse: [recoveredPC := 443].
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := (recoveredStack1) putParameter: (recoveredStack2).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 443 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

