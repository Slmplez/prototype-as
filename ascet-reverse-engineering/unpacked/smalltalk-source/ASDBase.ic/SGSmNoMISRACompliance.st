"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20005298; bytecode file offset 0x90206c"
!SGSmNoMISRACompliance methodsFor: 'recovered'!
postProcessOutlinedMethod: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20064884; bytecode file offset 0x961970"
!SGSmNoMISRACompliance methodsFor: 'recovered'!
endCase
    | recoveredValue0 |
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) exit.
    ^self
! !

"ASDBase.ic method 0x204f6728; bytecode file offset 0xdf3020"
!SGSmNoMISRACompliance methodsFor: 'recovered'!
stateSwitch: recoveredArg1 states: recoveredArg2 stateBlock: recoveredArg3 defaultState: recoveredArg4 source: recoveredArg5 label: recoveredArg6
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) methodStrategy.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) mdlBuilder.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := recoveredArg1.
    (recoveredBlock5Value1) id: (recoveredBlock5Value2).
    recoveredBlock5Value3 := (recoveredBlock5Value0) block.
    recoveredBlock5Value3
].
    recoveredValue2 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredArg2.
    recoveredBlock21Value1 := [:recoveredBlock21Block31Arg1 | 
    | recoveredBlock21Block31Value0 recoveredBlock21Block31Value1 recoveredBlock21Block31Value2 recoveredBlock21Block31Value3 recoveredBlock21Block31Value4 recoveredBlock21Block31Value5 recoveredBlock21Block31Value6 recoveredBlock21Block31Value7 recoveredBlock21Block31Value8 recoveredBlock21Block31Value9 |
    recoveredBlock21Block31Value0 := (self) methodStrategy.
    recoveredBlock21Block31Value1 := [
    | recoveredBlock21Block31Block39Stack0 recoveredBlock21Block31Block39Stack1 recoveredBlock21Block31Block39Stack2 recoveredBlock21Block31Block39Stack3 recoveredBlock21Block31Block39PC recoveredBlock21Block31Block39Step recoveredBlock21Block31Block39Done recoveredBlock21Block31Block39Result |
    recoveredBlock21Block31Block39Stack0 := self.
    recoveredBlock21Block31Block39PC := 46.
    recoveredBlock21Block31Block39Done := false.
    [recoveredBlock21Block31Block39Done not] whileTrue: [
        recoveredBlock21Block31Block39Step := recoveredBlock21Block31Block39PC.
        recoveredBlock21Block31Block39Step = 46 ifTrue: [
            recoveredBlock21Block31Block39Stack1 := recoveredBlock21Block31Arg1.
            recoveredBlock21Block31Block39PC := 49.
        ].
        recoveredBlock21Block31Block39Step = 49 ifTrue: [
            recoveredBlock21Block31Block39Stack2 := recoveredArg4.
            recoveredBlock21Block31Block39PC := 52.
        ].
        recoveredBlock21Block31Block39Step = 52 ifTrue: [
            recoveredBlock21Block31Block39Stack1 := (recoveredBlock21Block31Block39Stack1) = (recoveredBlock21Block31Block39Stack2).
            recoveredBlock21Block31Block39PC := 53.
        ].
        recoveredBlock21Block31Block39Step = 53 ifTrue: [
            (recoveredBlock21Block31Block39Stack1) ifTrue: [recoveredBlock21Block31Block39PC := 56] ifFalse: [recoveredBlock21Block31Block39PC := 63].
        ].
        recoveredBlock21Block31Block39Step = 56 ifTrue: [
            recoveredBlock21Block31Block39Stack1 := self.
            recoveredBlock21Block31Block39PC := 57.
        ].
        recoveredBlock21Block31Block39Step = 57 ifTrue: [
            recoveredBlock21Block31Block39Stack1 := (recoveredBlock21Block31Block39Stack1) mdlBuilder.
            recoveredBlock21Block31Block39PC := 58.
        ].
        recoveredBlock21Block31Block39Step = 58 ifTrue: [
            recoveredBlock21Block31Block39Stack2 := recoveredBlock21Block31Block39Stack1.
            recoveredBlock21Block31Block39PC := 59.
        ].
        recoveredBlock21Block31Block39Step = 59 ifTrue: [
            (recoveredBlock21Block31Block39Stack2) emptyStmnt.
            recoveredBlock21Block31Block39PC := 61.
        ].
        recoveredBlock21Block31Block39Step = 61 ifTrue: [
            (recoveredBlock21Block31Block39Stack1) default.
            recoveredBlock21Block31Block39PC := 63.
        ].
        recoveredBlock21Block31Block39Step = 63 ifTrue: [
            recoveredBlock21Block31Block39Stack0 := (recoveredBlock21Block31Block39Stack0) mdlBuilder.
            recoveredBlock21Block31Block39PC := 64.
        ].
        recoveredBlock21Block31Block39Step = 64 ifTrue: [
            recoveredBlock21Block31Block39Stack1 := recoveredBlock21Block31Block39Stack0.
            recoveredBlock21Block31Block39PC := 65.
        ].
        recoveredBlock21Block31Block39Step = 65 ifTrue: [
            recoveredBlock21Block31Block39Stack2 := recoveredBlock21Block31Arg1.
            recoveredBlock21Block31Block39PC := 68.
        ].
        recoveredBlock21Block31Block39Step = 68 ifTrue: [
            recoveredBlock21Block31Block39Stack2 := (recoveredBlock21Block31Block39Stack2) mdlLabel.
            recoveredBlock21Block31Block39PC := 70.
        ].
        recoveredBlock21Block31Block39Step = 70 ifTrue: [
            (recoveredBlock21Block31Block39Stack1) id: (recoveredBlock21Block31Block39Stack2).
            recoveredBlock21Block31Block39PC := 72.
        ].
        recoveredBlock21Block31Block39Step = 72 ifTrue: [
            recoveredBlock21Block31Block39Stack0 := (recoveredBlock21Block31Block39Stack0) block.
            recoveredBlock21Block31Block39PC := 73.
        ].
        recoveredBlock21Block31Block39Step = 73 ifTrue: [
            recoveredBlock21Block31Block39Result := recoveredBlock21Block31Block39Stack0.
            recoveredBlock21Block31Block39Done := true.
        ].
    ].
    recoveredBlock21Block31Block39Result
].
    recoveredBlock21Block31Value2 := [
    | recoveredBlock21Block31Block74Value0 recoveredBlock21Block31Block74Value1 recoveredBlock21Block31Block74Value2 |
    recoveredBlock21Block31Block74Value0 := recoveredArg3.
    recoveredBlock21Block31Block74Value1 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Block74Value2 := (recoveredBlock21Block31Block74Value0) value: (recoveredBlock21Block31Block74Value1).
    recoveredBlock21Block31Block74Value2
].
    recoveredBlock21Block31Value3 := [
    | recoveredBlock21Block31Block89Value0 recoveredBlock21Block31Block89Value1 recoveredBlock21Block31Block89Value2 recoveredBlock21Block31Block89Value3 |
    recoveredBlock21Block31Block89Value0 := (self) mdlBuilder.
    recoveredBlock21Block31Block89Value1 := recoveredBlock21Block31Block89Value0.
    (recoveredBlock21Block31Block89Value1) exit.
    recoveredBlock21Block31Block89Value2 := recoveredBlock21Block31Block89Value0.
    (recoveredBlock21Block31Block89Value2) endBlock.
    recoveredBlock21Block31Block89Value3 := (recoveredBlock21Block31Block89Value0) case.
    recoveredBlock21Block31Block89Value3
].
    recoveredBlock21Block31Value4 := [
    | recoveredBlock21Block31Block106Value0 recoveredBlock21Block31Block106Value1 recoveredBlock21Block31Block106Value2 |
    recoveredBlock21Block31Block106Value0 := (self) mdlBuilder.
    recoveredBlock21Block31Block106Value1 := recoveredBlock21Block31Block106Value0.
    (recoveredBlock21Block31Block106Value1) endBlock.
    recoveredBlock21Block31Block106Value2 := (recoveredBlock21Block31Block106Value0) case.
    recoveredBlock21Block31Block106Value2
].
    recoveredBlock21Block31Value5 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Value6 := (recoveredBlock21Block31Value5) source.
    recoveredBlock21Block31Value7 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Value8 := (recoveredBlock21Block31Value7) mdlLabel.
    recoveredBlock21Block31Value9 := (recoveredBlock21Block31Value0) codeBefore: (recoveredBlock21Block31Value1) sequence: (recoveredBlock21Block31Value2) after: (recoveredBlock21Block31Value3) afterOptimized: (recoveredBlock21Block31Value4) source: (recoveredBlock21Block31Value6) label: (recoveredBlock21Block31Value8).
    recoveredBlock21Block31Value9
].
    recoveredBlock21Value2 := (recoveredBlock21Value0) do: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
    recoveredValue3 := [
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 |
    recoveredBlock136Value0 := (self) mdlBuilder.
    recoveredBlock136Value1 := recoveredBlock136Value0.
    (recoveredBlock136Value1) endBlock.
    recoveredBlock136Value2 := (recoveredBlock136Value0) switch.
    recoveredBlock136Value2
].
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := [:recoveredBlock155Arg1 :recoveredBlock155Arg2 | 
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 |
    recoveredBlock155Value0 := recoveredBlock155Arg1.
    recoveredBlock155Value1 := recoveredBlock155Arg2.
    recoveredBlock155Value2 := (self) optimizeSwitch: (recoveredBlock155Value0) onChange: (recoveredBlock155Value1).
    recoveredBlock155Value2
].
    (recoveredValue0) codeBefore: (recoveredValue1) sequence: (recoveredValue2) after: (recoveredValue3) source: (recoveredValue4) label: (recoveredValue5) optimize: (recoveredValue6).
    ^self
! !

