"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2009ac64; bytecode file offset 0x9976c0"
!RBIntegerOptionEntry methodsFor: 'recovered'!
valueChangedValue: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (recoveredValue0) value.
    (self) value: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c6d68; bytecode file offset 0x9c36ec"
!RBIntegerOptionEntry methodsFor: 'recovered'!
characterMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    characterMethod := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013bf88; bytecode file offset 0xa38840"
!RBIntegerOptionEntry methodsFor: 'recovered'!
characterMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := characterMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'checkInteger:'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            characterMethod := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := characterMethod.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201be5f8; bytecode file offset 0xabaec0"
!RBIntegerOptionEntry methodsFor: 'recovered'!
getValueFromString: recoveredArg1 oldValue: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'checkHex:'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntegerFromHex.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkValue: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cc7cc; bytecode file offset 0xac9094"
!RBIntegerOptionEntry methodsFor: 'recovered'!
getStringFromValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) characterMethod.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'checkHex:'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asHexString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024fd34; bytecode file offset 0xb4c610"
!RBIntegerOptionEntry methodsFor: 'recovered'!
createEditPolicyOn: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) editable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) getValueString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := RBEnhancedTextEditPolicy.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) characterMethod.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) characterMethod: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) selection: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20551698; bytecode file offset 0xe4dfec"
!RBIntegerOptionEntry methodsFor: 'recovered'!
createEditWidgetOn: recoveredArg1 color: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 recoveredBlock9Value10 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    recoveredBlock9Value2 := XmALIGNMENTBEGINNING.
    (recoveredBlock9Value1) alignment: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredBlock9Value0.
    recoveredBlock9Value4 := (self) name.
    (recoveredBlock9Value3) labelString: (recoveredBlock9Value4).
    recoveredBlock9Value5 := recoveredBlock9Value0.
    recoveredBlock9Value6 := (self) editable.
    (recoveredBlock9Value5) sensitive: (recoveredBlock9Value6).
    recoveredBlock9Value7 := recoveredBlock9Value0.
    recoveredBlock9Value8 := (self) labelWidth.
    (recoveredBlock9Value7) width: (recoveredBlock9Value8).
    recoveredBlock9Value9 := recoveredArg2.
    recoveredBlock9Value10 := (recoveredBlock9Value0) foregroundColor: (recoveredBlock9Value9).
    recoveredBlock9Value10
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [:block2810f570Arg1 | 
    | block2810f570Value0 block2810f570Value1 block2810f570Value2 block2810f570Value3 block2810f570Value4 block2810f570Value5 block2810f570Value6 block2810f570Value7 |
    block2810f570Value0 := block2810f570Arg1.
    block2810f570Value1 := block2810f570Value0.
    block2810f570Value2 := XmATTACHFORM.
    (block2810f570Value1) topAttachment: (block2810f570Value2).
    block2810f570Value3 := block2810f570Value0.
    block2810f570Value4 := XmATTACHPOSITION.
    (block2810f570Value3) rightAttachment: (block2810f570Value4).
    block2810f570Value5 := block2810f570Value0.
    (block2810f570Value5) rightPosition: (40).
    block2810f570Value6 := XmATTACHFORM.
    block2810f570Value7 := (block2810f570Value0) leftAttachment: (block2810f570Value6).
    block2810f570Value7
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'Call_65618'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 'browse'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := [:recoveredBlock94Arg1 | 
    | recoveredBlock94Stack0 recoveredBlock94Stack1 recoveredBlock94Stack2 recoveredBlock94Stack3 recoveredBlock94Stack4 recoveredBlock94PC recoveredBlock94Step recoveredBlock94Done recoveredBlock94Result |
    recoveredBlock94Stack0 := self.
    recoveredBlock94PC := 100.
    recoveredBlock94Done := false.
    [recoveredBlock94Done not] whileTrue: [
        recoveredBlock94Step := recoveredBlock94PC.
        recoveredBlock94Step = 100 ifTrue: [
            recoveredBlock94Stack1 := recoveredBlock94Arg1.
            recoveredBlock94PC := 101.
        ].
        recoveredBlock94Step = 101 ifTrue: [
            recoveredBlock94Stack2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 102.
        ].
        recoveredBlock94Step = 102 ifTrue: [
            recoveredBlock94Stack3 := 16.
            recoveredBlock94PC := 104.
        ].
        recoveredBlock94Step = 104 ifTrue: [
            (recoveredBlock94Stack2) height: (recoveredBlock94Stack3).
            recoveredBlock94Stack2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 107.
        ].
        recoveredBlock94Step = 107 ifTrue: [
            recoveredBlock94Stack3 := 40.
            recoveredBlock94PC := 109.
        ].
        recoveredBlock94Step = 109 ifTrue: [
            (recoveredBlock94Stack2) width: (recoveredBlock94Stack3).
            recoveredBlock94Stack2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 112.
        ].
        recoveredBlock94Step = 112 ifTrue: [
            recoveredBlock94Stack3 := self.
            recoveredBlock94PC := 113.
        ].
        recoveredBlock94Step = 113 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) editable.
            recoveredBlock94PC := 115.
        ].
        recoveredBlock94Step = 115 ifTrue: [
            (recoveredBlock94Stack2) editable: (recoveredBlock94Stack3).
            recoveredBlock94Stack2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 118.
        ].
        recoveredBlock94Step = 118 ifTrue: [
            recoveredBlock94Stack3 := self.
            recoveredBlock94PC := 119.
        ].
        recoveredBlock94Step = 119 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) editable.
            recoveredBlock94PC := 121.
        ].
        recoveredBlock94Step = 121 ifTrue: [
            (recoveredBlock94Stack2) sensitive: (recoveredBlock94Stack3).
            recoveredBlock94Stack2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 124.
        ].
        recoveredBlock94Step = 124 ifTrue: [
            recoveredBlock94Stack3 := self.
            recoveredBlock94PC := 125.
        ].
        recoveredBlock94Step = 125 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) max.
            recoveredBlock94PC := 127.
        ].
        recoveredBlock94Step = 127 ifTrue: [
            (recoveredBlock94Stack3 == nil) ifTrue: [recoveredBlock94PC := 136] ifFalse: [recoveredBlock94PC := 130].
        ].
        recoveredBlock94Step = 130 ifTrue: [
            recoveredBlock94Stack3 := self.
            recoveredBlock94PC := 131.
        ].
        recoveredBlock94Step = 131 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) max.
            recoveredBlock94PC := 133.
        ].
        recoveredBlock94Step = 133 ifTrue: [
            recoveredBlock94PC := 138.
        ].
        recoveredBlock94Step = 136 ifTrue: [
            recoveredBlock94Stack3 := 65000.
            recoveredBlock94PC := 138.
        ].
        recoveredBlock94Step = 138 ifTrue: [
            (recoveredBlock94Stack2) maximum: (recoveredBlock94Stack3).
            recoveredBlock94Stack2 := recoveredBlock94Stack1.
            recoveredBlock94PC := 141.
        ].
        recoveredBlock94Step = 141 ifTrue: [
            recoveredBlock94Stack3 := self.
            recoveredBlock94PC := 142.
        ].
        recoveredBlock94Step = 142 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) min.
            recoveredBlock94PC := 144.
        ].
        recoveredBlock94Step = 144 ifTrue: [
            (recoveredBlock94Stack3 == nil) ifTrue: [recoveredBlock94PC := 154] ifFalse: [recoveredBlock94PC := 148].
        ].
        recoveredBlock94Step = 148 ifTrue: [
            recoveredBlock94Stack3 := self.
            recoveredBlock94PC := 149.
        ].
        recoveredBlock94Step = 149 ifTrue: [
            recoveredBlock94Stack3 := (recoveredBlock94Stack3) min.
            recoveredBlock94PC := 151.
        ].
        recoveredBlock94Step = 151 ifTrue: [
            recoveredBlock94PC := 156.
        ].
        recoveredBlock94Step = 154 ifTrue: [
            recoveredBlock94Stack3 := 0.
            recoveredBlock94PC := 156.
        ].
        recoveredBlock94Step = 156 ifTrue: [
            (recoveredBlock94Stack2) minimum: (recoveredBlock94Stack3).
            recoveredBlock94PC := 158.
        ].
        recoveredBlock94Step = 158 ifTrue: [
            recoveredBlock94Stack2 := self.
            recoveredBlock94PC := 159.
        ].
        recoveredBlock94Step = 159 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) value.
            recoveredBlock94PC := 161.
        ].
        recoveredBlock94Step = 161 ifTrue: [
            recoveredBlock94Stack2 := (recoveredBlock94Stack2) asInteger.
            recoveredBlock94PC := 163.
        ].
        recoveredBlock94Step = 163 ifTrue: [
            recoveredBlock94Stack1 := (recoveredBlock94Stack1) value: (recoveredBlock94Stack2).
            recoveredBlock94PC := 165.
        ].
        recoveredBlock94Step = 165 ifTrue: [
            recoveredBlock94Result := recoveredBlock94Stack1.
            recoveredBlock94Done := true.
        ].
    ].
    recoveredBlock94Result
].
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) createRBSpinButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := [:recoveredBlock176Arg1 | 
    | recoveredBlock176Value0 recoveredBlock176Value1 recoveredBlock176Value2 recoveredBlock176Value3 recoveredBlock176Value4 recoveredBlock176Value5 recoveredBlock176Value6 recoveredBlock176Value7 recoveredBlock176Value8 |
    recoveredBlock176Value0 := recoveredBlock176Arg1.
    recoveredBlock176Value1 := recoveredBlock176Value0.
    recoveredBlock176Value2 := XmATTACHFORM.
    (recoveredBlock176Value1) topAttachment: (recoveredBlock176Value2).
    recoveredBlock176Value3 := recoveredBlock176Value0.
    recoveredBlock176Value4 := XmATTACHWIDGET.
    (recoveredBlock176Value3) leftAttachment: (recoveredBlock176Value4).
    recoveredBlock176Value5 := recoveredBlock176Value0.
    recoveredBlock176Value6 := recoveredLocal2.
    (recoveredBlock176Value5) leftWidget: (recoveredBlock176Value6).
    recoveredBlock176Value7 := XmATTACHFORM.
    recoveredBlock176Value8 := (recoveredBlock176Value0) rightAttachment: (recoveredBlock176Value7).
    recoveredBlock176Value8
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := XmNvalueChangedCallback.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := 'valueChangedValue:clientData:callData:'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

