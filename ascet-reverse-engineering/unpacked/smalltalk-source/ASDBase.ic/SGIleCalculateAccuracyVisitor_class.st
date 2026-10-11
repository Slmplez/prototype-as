"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048978; bytecode file offset 0x945248"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
deactivate
    Active := false.
    ^self
! !

"ASDBase.ic method 0x20048c6c; bytecode file offset 0x945728"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
resetOutStream
    OutStream := nil.
    ^self
! !

"ASDBase.ic method 0x20048e64; bytecode file offset 0x945728"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
resetIleResults
    IleResults := nil.
    ^self
! !

"ASDBase.ic method 0x2004a8b4; bytecode file offset 0x94716c"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
activate
    Active := true.
    ^self
! !

"ASDBase.ic method 0x200a84c4; bytecode file offset 0x9a4e24"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
calculate: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) resetIleResults.
    recoveredValue0 := (self) create.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) visitNode: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ae3d8; bytecode file offset 0x9ab034"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
IleCase: recoveredArg1 result: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) IleResults.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200efd54; bytecode file offset 0x9ec648"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
active
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Active.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := Active.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128384; bytecode file offset 0xa24eb0"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
IleResults
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IleResults.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            IleResults := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := IleResults.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201283d4; bytecode file offset 0xa24eb0"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
OutStream
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OutStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            OutStream := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := OutStream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d1768; bytecode file offset 0xace038"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
saveResultsTo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) OutStream.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403ee8; bytecode file offset 0xd007e4"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
analyseMethod: recoveredArg1 mdMethod: recoveredArg2 mdResults: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) active.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            (recoveredStack0) resetIleResults.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) initState.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) visitNode: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) IleResults.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) mdlClass.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) formula.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 recoveredBlock51Value4 recoveredBlock51Value5 recoveredBlock51Value6 recoveredBlock51Value7 recoveredBlock51Value8 recoveredBlock51Value9 |
    recoveredBlock51Value0 := (self) OutStream.
    recoveredBlock51Value1 := recoveredBlock51Value0.
    (recoveredBlock51Value1) cr.
    recoveredBlock51Value2 := recoveredBlock51Value0.
    (recoveredBlock51Value2) cr.
    recoveredBlock51Value3 := recoveredBlock51Value0.
    (recoveredBlock51Value3) nextPutAll: ('IAT Implementation: ').
    recoveredBlock51Value4 := recoveredBlock51Value0.
    recoveredBlock51Value5 := recoveredArg2.
    recoveredBlock51Value6 := (recoveredBlock51Value5) declaration.
    recoveredBlock51Value7 := (recoveredBlock51Value6) scope.
    recoveredBlock51Value8 := (recoveredBlock51Value7) implName.
    (recoveredBlock51Value4) nextPutAll: (recoveredBlock51Value8).
    recoveredBlock51Value9 := (recoveredBlock51Value0) cr.
    recoveredBlock51Value9
].
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) compareTo: (recoveredStack1) withScaling: (recoveredStack2) header: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20586224; bytecode file offset 0xe82b54"
!SGIleCalculateAccuracyVisitor class methodsFor: 'recovered'!
compareTo: recoveredArg1 withScaling: recoveredArg2 header: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIdentityFormula.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBFormulaLinear.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) c0: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) c1: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := IleResults.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'default'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := IleResults.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'default'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 recoveredBlock67Value3 |
    recoveredBlock67Value0 := IleResults.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := [
    | recoveredBlock67Block77Value0 |
    recoveredBlock67Block77Value0 := recoveredLocal1.
    recoveredBlock67Block77Value0
].
    recoveredBlock67Value3 := (recoveredBlock67Value0) at: (recoveredBlock67Value1) ifAbsentPut: (recoveredBlock67Value2).
    recoveredBlock67Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := IleResults.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1) value.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) OutStream.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := 'Different number of Ile ('.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := IleResults.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := ') and Md ('.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := ') estimates.'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := IleResults.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := [:recoveredBlock162Arg1 :recoveredBlock162Arg2 | 
    | recoveredBlock162Local1 recoveredBlock162Local2 recoveredBlock162Stack0 recoveredBlock162Stack1 recoveredBlock162Stack2 recoveredBlock162Stack3 recoveredBlock162Stack4 recoveredBlock162PC recoveredBlock162Step recoveredBlock162Done recoveredBlock162Result |
    recoveredBlock162Stack0 := self.
    recoveredBlock162PC := 168.
    recoveredBlock162Done := false.
    [recoveredBlock162Done not] whileTrue: [
        recoveredBlock162Step := recoveredBlock162PC.
        recoveredBlock162Step = 168 ifTrue: [
            recoveredBlock162Stack1 := recoveredBlock162Arg2.
            recoveredBlock162PC := 169.
        ].
        recoveredBlock162Step = 169 ifTrue: [
            recoveredBlock162Stack2 := recoveredLocal2.
            recoveredBlock162PC := 172.
        ].
        recoveredBlock162Step = 172 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) c1.
            recoveredBlock162PC := 174.
        ].
        recoveredBlock162Step = 174 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) abs.
            recoveredBlock162PC := 176.
        ].
        recoveredBlock162Step = 176 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) / (recoveredBlock162Stack2).
            recoveredBlock162PC := 178.
        ].
        recoveredBlock162Step = 178 ifTrue: [
            recoveredBlock162Local2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 179.
        ].
        recoveredBlock162Step = 179 ifTrue: [
            recoveredBlock162Stack1 := recoveredArg1.
            recoveredBlock162PC := 182.
        ].
        recoveredBlock162Step = 182 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Arg1.
            recoveredBlock162PC := 183.
        ].
        recoveredBlock162Step = 183 ifTrue: [
            recoveredBlock162Stack3 := [
    0
].
            recoveredBlock162PC := 185.
        ].
        recoveredBlock162Step = 185 ifTrue: [
            recoveredBlock162PC := 191.
        ].
        recoveredBlock162Step = 191 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) at: (recoveredBlock162Stack2) ifAbsent: (recoveredBlock162Stack3).
            recoveredBlock162PC := 193.
        ].
        recoveredBlock162Step = 193 ifTrue: [
            recoveredBlock162Local1 := recoveredBlock162Stack1.
            recoveredBlock162PC := 194.
        ].
        recoveredBlock162Step = 194 ifTrue: [
            recoveredBlock162Stack1 := nil.
            recoveredBlock162PC := 195.
        ].
        recoveredBlock162Step = 195 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Local2.
            recoveredBlock162PC := 196.
        ].
        recoveredBlock162Step = 196 ifTrue: [
            recoveredBlock162Stack3 := recoveredBlock162Local1.
            recoveredBlock162PC := 197.
        ].
        recoveredBlock162Step = 197 ifTrue: [
            recoveredBlock162Stack2 := (recoveredBlock162Stack2) > (recoveredBlock162Stack3).
            recoveredBlock162PC := 198.
        ].
        recoveredBlock162Step = 198 ifTrue: [
            (recoveredBlock162Stack2) ifTrue: [recoveredBlock162PC := 202] ifFalse: [recoveredBlock162PC := 262].
        ].
        recoveredBlock162Step = 202 ifTrue: [
            recoveredBlock162PC := 203.
        ].
        recoveredBlock162Step = 203 ifTrue: [
            recoveredBlock162Stack1 := recoveredLocal3.
            recoveredBlock162PC := 206.
        ].
        recoveredBlock162Step = 206 ifTrue: [
            (recoveredBlock162Stack1) ifTrue: [recoveredBlock162PC := 219] ifFalse: [recoveredBlock162PC := 210].
        ].
        recoveredBlock162Step = 210 ifTrue: [
            recoveredBlock162Stack1 := recoveredArg3.
            recoveredBlock162PC := 213.
        ].
        recoveredBlock162Step = 213 ifTrue: [
            (recoveredBlock162Stack1) value.
            recoveredBlock162PC := 215.
        ].
        recoveredBlock162Step = 215 ifTrue: [
            recoveredBlock162Stack1 := true.
            recoveredBlock162PC := 216.
        ].
        recoveredBlock162Step = 216 ifTrue: [
            recoveredLocal3 := recoveredBlock162Stack1.
            recoveredBlock162PC := 219.
        ].
        recoveredBlock162Step = 219 ifTrue: [
            recoveredBlock162Stack1 := self.
            recoveredBlock162PC := 220.
        ].
        recoveredBlock162Step = 220 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) OutStream.
            recoveredBlock162PC := 222.
        ].
        recoveredBlock162Step = 222 ifTrue: [
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 223.
        ].
        recoveredBlock162Step = 223 ifTrue: [
            recoveredBlock162Stack3 := 'In case '.
            recoveredBlock162PC := 225.
        ].
        recoveredBlock162Step = 225 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 228.
        ].
        recoveredBlock162Step = 228 ifTrue: [
            recoveredBlock162Stack3 := recoveredBlock162Arg1.
            recoveredBlock162PC := 229.
        ].
        recoveredBlock162Step = 229 ifTrue: [
            recoveredBlock162Stack3 := (recoveredBlock162Stack3) asString.
            recoveredBlock162PC := 231.
        ].
        recoveredBlock162Step = 231 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 234.
        ].
        recoveredBlock162Step = 234 ifTrue: [
            recoveredBlock162Stack3 := ' error from Md estimate ('.
            recoveredBlock162PC := 236.
        ].
        recoveredBlock162Step = 236 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 239.
        ].
        recoveredBlock162Step = 239 ifTrue: [
            recoveredBlock162Stack3 := recoveredBlock162Local1.
            recoveredBlock162PC := 240.
        ].
        recoveredBlock162Step = 240 ifTrue: [
            recoveredBlock162Stack3 := (recoveredBlock162Stack3) asString.
            recoveredBlock162PC := 242.
        ].
        recoveredBlock162Step = 242 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 245.
        ].
        recoveredBlock162Step = 245 ifTrue: [
            recoveredBlock162Stack3 := ') is smaller than Ile estimate ('.
            recoveredBlock162PC := 247.
        ].
        recoveredBlock162Step = 247 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 250.
        ].
        recoveredBlock162Step = 250 ifTrue: [
            recoveredBlock162Stack3 := recoveredBlock162Local2.
            recoveredBlock162PC := 251.
        ].
        recoveredBlock162Step = 251 ifTrue: [
            recoveredBlock162Stack3 := (recoveredBlock162Stack3) asString.
            recoveredBlock162PC := 253.
        ].
        recoveredBlock162Step = 253 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162Stack2 := recoveredBlock162Stack1.
            recoveredBlock162PC := 256.
        ].
        recoveredBlock162Step = 256 ifTrue: [
            recoveredBlock162Stack3 := ').'.
            recoveredBlock162PC := 258.
        ].
        recoveredBlock162Step = 258 ifTrue: [
            (recoveredBlock162Stack2) nextPutAll: (recoveredBlock162Stack3).
            recoveredBlock162PC := 260.
        ].
        recoveredBlock162Step = 260 ifTrue: [
            recoveredBlock162Stack1 := (recoveredBlock162Stack1) cr.
            recoveredBlock162PC := 262.
        ].
        recoveredBlock162Step = 262 ifTrue: [
            recoveredBlock162Result := recoveredBlock162Stack1.
            recoveredBlock162Done := true.
        ].
    ].
    recoveredBlock162Result
].
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

