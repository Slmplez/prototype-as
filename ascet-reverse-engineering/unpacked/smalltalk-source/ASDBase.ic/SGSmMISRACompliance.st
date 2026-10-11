"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20064724; bytecode file offset 0x961970"
!SGSmMISRACompliance methodsFor: 'recovered'!
endCase
    | recoveredValue0 |
    recoveredValue0 := (self) mdlBuilder.
    (recoveredValue0) break.
    ^self
! !

"ASDBase.ic method 0x2009c484; bytecode file offset 0x998d48"
!SGSmMISRACompliance methodsFor: 'recovered'!
returnValueName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGReservedNames.
    recoveredValue1 := (recoveredValue0) tempVarName.
    recoveredValue2 := (recoveredValue1) , ('returnValue').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b7b5c; bytecode file offset 0x9b441c"
!SGSmMISRACompliance methodsFor: 'recovered'!
postProcessOutlinedMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGSmReturnFreeOutlinedMethodTransformation.
    recoveredValue1 := (recoveredValue0) create: (self).
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) transform: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20579348; bytecode file offset 0xe75c40"
!SGSmMISRACompliance methodsFor: 'recovered'!
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
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 |
    recoveredBlock21Value0 := recoveredArg2.
    recoveredBlock21Value1 := [:recoveredBlock21Block31Arg1 | 
    | recoveredBlock21Block31Stack0 recoveredBlock21Block31Stack1 recoveredBlock21Block31Stack2 recoveredBlock21Block31Stack3 recoveredBlock21Block31Stack4 recoveredBlock21Block31Stack5 recoveredBlock21Block31Stack6 recoveredBlock21Block31Stack7 recoveredBlock21Block31Stack8 recoveredBlock21Block31PC recoveredBlock21Block31Step recoveredBlock21Block31Done recoveredBlock21Block31Result |
    recoveredBlock21Block31Stack0 := self.
    recoveredBlock21Block31PC := 38.
    recoveredBlock21Block31Done := false.
    [recoveredBlock21Block31Done not] whileTrue: [
        recoveredBlock21Block31Step := recoveredBlock21Block31PC.
        recoveredBlock21Block31Step = 38 ifTrue: [
            recoveredBlock21Block31Stack1 := nil.
            recoveredBlock21Block31PC := 39.
        ].
        recoveredBlock21Block31Step = 39 ifTrue: [
            recoveredBlock21Block31Stack2 := recoveredBlock21Block31Arg1.
            recoveredBlock21Block31PC := 42.
        ].
        recoveredBlock21Block31Step = 42 ifTrue: [
            recoveredBlock21Block31Stack3 := recoveredArg4.
            recoveredBlock21Block31PC := 45.
        ].
        recoveredBlock21Block31Step = 45 ifTrue: [
            recoveredBlock21Block31Stack2 := (recoveredBlock21Block31Stack2) = (recoveredBlock21Block31Stack3).
            recoveredBlock21Block31PC := 46.
        ].
        recoveredBlock21Block31Step = 46 ifTrue: [
            (recoveredBlock21Block31Stack2) ifTrue: [recoveredBlock21Block31PC := 130] ifFalse: [recoveredBlock21Block31PC := 50].
        ].
        recoveredBlock21Block31Step = 50 ifTrue: [
            recoveredBlock21Block31PC := 51.
        ].
        recoveredBlock21Block31Step = 51 ifTrue: [
            recoveredBlock21Block31Stack1 := self.
            recoveredBlock21Block31PC := 52.
        ].
        recoveredBlock21Block31Step = 52 ifTrue: [
            recoveredBlock21Block31Stack1 := (recoveredBlock21Block31Stack1) methodStrategy.
            recoveredBlock21Block31PC := 53.
        ].
        recoveredBlock21Block31Step = 53 ifTrue: [
            recoveredBlock21Block31Stack2 := [
    | recoveredBlock21Block31Block53Value0 recoveredBlock21Block31Block53Value1 recoveredBlock21Block31Block53Value2 recoveredBlock21Block31Block53Value3 recoveredBlock21Block31Block53Value4 |
    recoveredBlock21Block31Block53Value0 := (self) mdlBuilder.
    recoveredBlock21Block31Block53Value1 := recoveredBlock21Block31Block53Value0.
    recoveredBlock21Block31Block53Value2 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Block53Value3 := (recoveredBlock21Block31Block53Value2) mdlLabel.
    (recoveredBlock21Block31Block53Value1) id: (recoveredBlock21Block31Block53Value3).
    recoveredBlock21Block31Block53Value4 := (recoveredBlock21Block31Block53Value0) block.
    recoveredBlock21Block31Block53Value4
].
            recoveredBlock21Block31PC := 71.
        ].
        recoveredBlock21Block31Step = 71 ifTrue: [
            recoveredBlock21Block31Stack3 := [
    | recoveredBlock21Block31Block71Value0 recoveredBlock21Block31Block71Value1 recoveredBlock21Block31Block71Value2 |
    recoveredBlock21Block31Block71Value0 := recoveredArg3.
    recoveredBlock21Block31Block71Value1 := recoveredBlock21Block31Arg1.
    recoveredBlock21Block31Block71Value2 := (recoveredBlock21Block31Block71Value0) value: (recoveredBlock21Block31Block71Value1).
    recoveredBlock21Block31Block71Value2
].
            recoveredBlock21Block31PC := 87.
        ].
        recoveredBlock21Block31Step = 87 ifTrue: [
            recoveredBlock21Block31Stack4 := [
    | recoveredBlock21Block31Block87Value0 recoveredBlock21Block31Block87Value1 recoveredBlock21Block31Block87Value2 recoveredBlock21Block31Block87Value3 |
    recoveredBlock21Block31Block87Value0 := (self) mdlBuilder.
    recoveredBlock21Block31Block87Value1 := recoveredBlock21Block31Block87Value0.
    (recoveredBlock21Block31Block87Value1) break.
    recoveredBlock21Block31Block87Value2 := recoveredBlock21Block31Block87Value0.
    (recoveredBlock21Block31Block87Value2) endBlock.
    recoveredBlock21Block31Block87Value3 := (recoveredBlock21Block31Block87Value0) case.
    recoveredBlock21Block31Block87Value3
].
            recoveredBlock21Block31PC := 104.
        ].
        recoveredBlock21Block31Step = 104 ifTrue: [
            recoveredBlock21Block31Stack5 := [
    | recoveredBlock21Block31Block104Value0 recoveredBlock21Block31Block104Value1 recoveredBlock21Block31Block104Value2 |
    recoveredBlock21Block31Block104Value0 := (self) mdlBuilder.
    recoveredBlock21Block31Block104Value1 := recoveredBlock21Block31Block104Value0.
    (recoveredBlock21Block31Block104Value1) endBlock.
    recoveredBlock21Block31Block104Value2 := (recoveredBlock21Block31Block104Value0) case.
    recoveredBlock21Block31Block104Value2
].
            recoveredBlock21Block31PC := 117.
        ].
        recoveredBlock21Block31Step = 117 ifTrue: [
            recoveredBlock21Block31Stack6 := recoveredBlock21Block31Arg1.
            recoveredBlock21Block31PC := 120.
        ].
        recoveredBlock21Block31Step = 120 ifTrue: [
            recoveredBlock21Block31Stack6 := (recoveredBlock21Block31Stack6) source.
            recoveredBlock21Block31PC := 122.
        ].
        recoveredBlock21Block31Step = 122 ifTrue: [
            recoveredBlock21Block31Stack7 := recoveredBlock21Block31Arg1.
            recoveredBlock21Block31PC := 125.
        ].
        recoveredBlock21Block31Step = 125 ifTrue: [
            recoveredBlock21Block31Stack7 := (recoveredBlock21Block31Stack7) mdlLabel.
            recoveredBlock21Block31PC := 127.
        ].
        recoveredBlock21Block31Step = 127 ifTrue: [
            recoveredBlock21Block31Stack1 := (recoveredBlock21Block31Stack1) codeBefore: (recoveredBlock21Block31Stack2) sequence: (recoveredBlock21Block31Stack3) after: (recoveredBlock21Block31Stack4) afterOptimized: (recoveredBlock21Block31Stack5) source: (recoveredBlock21Block31Stack6) label: (recoveredBlock21Block31Stack7).
            recoveredBlock21Block31PC := 130.
        ].
        recoveredBlock21Block31Step = 130 ifTrue: [
            recoveredBlock21Block31Result := recoveredBlock21Block31Stack1.
            recoveredBlock21Block31Done := true.
        ].
    ].
    recoveredBlock21Block31Result
].
    (recoveredBlock21Value0) do: (recoveredBlock21Value1).
    recoveredBlock21Value2 := (self) methodStrategy.
    recoveredBlock21Value3 := [
    | recoveredBlock21Block134Value0 recoveredBlock21Block134Value1 recoveredBlock21Block134Value2 recoveredBlock21Block134Value3 recoveredBlock21Block134Value4 recoveredBlock21Block134Value5 recoveredBlock21Block134Value6 |
    recoveredBlock21Block134Value0 := (self) mdlBuilder.
    recoveredBlock21Block134Value1 := recoveredBlock21Block134Value0.
    recoveredBlock21Block134Value2 := recoveredArg4.
    recoveredBlock21Block134Value3 := (recoveredBlock21Block134Value2) mdlLabel.
    (recoveredBlock21Block134Value1) id: (recoveredBlock21Block134Value3).
    recoveredBlock21Block134Value4 := recoveredBlock21Block134Value0.
    (recoveredBlock21Block134Value4) emptyStmnt.
    recoveredBlock21Block134Value5 := recoveredBlock21Block134Value0.
    (recoveredBlock21Block134Value5) case.
    recoveredBlock21Block134Value6 := (recoveredBlock21Block134Value0) block.
    recoveredBlock21Block134Value6
].
    recoveredBlock21Value4 := [
    | recoveredBlock21Block157Value0 recoveredBlock21Block157Value1 recoveredBlock21Block157Value2 |
    recoveredBlock21Block157Value0 := recoveredArg3.
    recoveredBlock21Block157Value1 := recoveredArg4.
    recoveredBlock21Block157Value2 := (recoveredBlock21Block157Value0) value: (recoveredBlock21Block157Value1).
    recoveredBlock21Block157Value2
].
    recoveredBlock21Value5 := [
    | recoveredBlock21Block173Value0 recoveredBlock21Block173Value1 recoveredBlock21Block173Value2 recoveredBlock21Block173Value3 |
    recoveredBlock21Block173Value0 := (self) mdlBuilder.
    recoveredBlock21Block173Value1 := recoveredBlock21Block173Value0.
    (recoveredBlock21Block173Value1) break.
    recoveredBlock21Block173Value2 := recoveredBlock21Block173Value0.
    (recoveredBlock21Block173Value2) endBlock.
    recoveredBlock21Block173Value3 := (recoveredBlock21Block173Value0) default.
    recoveredBlock21Block173Value3
].
    recoveredBlock21Value6 := [
    | recoveredBlock21Block190Value0 recoveredBlock21Block190Value1 recoveredBlock21Block190Value2 |
    recoveredBlock21Block190Value0 := (self) mdlBuilder.
    recoveredBlock21Block190Value1 := recoveredBlock21Block190Value0.
    (recoveredBlock21Block190Value1) endBlock.
    recoveredBlock21Block190Value2 := (recoveredBlock21Block190Value0) default.
    recoveredBlock21Block190Value2
].
    recoveredBlock21Value7 := recoveredArg4.
    recoveredBlock21Value8 := (recoveredBlock21Value7) source.
    recoveredBlock21Value9 := recoveredArg4.
    recoveredBlock21Value10 := (recoveredBlock21Value9) mdlLabel.
    recoveredBlock21Value11 := (recoveredBlock21Value2) codeBefore: (recoveredBlock21Value3) sequence: (recoveredBlock21Value4) after: (recoveredBlock21Value5) afterOptimized: (recoveredBlock21Value6) source: (recoveredBlock21Value8) label: (recoveredBlock21Value10).
    recoveredBlock21Value11
].
    recoveredValue3 := [
    | recoveredBlock217Value0 recoveredBlock217Value1 recoveredBlock217Value2 |
    recoveredBlock217Value0 := (self) mdlBuilder.
    recoveredBlock217Value1 := recoveredBlock217Value0.
    (recoveredBlock217Value1) endBlock.
    recoveredBlock217Value2 := (recoveredBlock217Value0) switch.
    recoveredBlock217Value2
].
    recoveredValue4 := recoveredArg5.
    recoveredValue5 := recoveredArg6.
    recoveredValue6 := [:recoveredBlock237Arg1 :recoveredBlock237Arg2 | 
    | recoveredBlock237Value0 recoveredBlock237Value1 recoveredBlock237Value2 |
    recoveredBlock237Value0 := recoveredBlock237Arg1.
    recoveredBlock237Value1 := recoveredBlock237Arg2.
    recoveredBlock237Value2 := (self) optimizeSwitch: (recoveredBlock237Value0) onChange: (recoveredBlock237Value1).
    recoveredBlock237Value2
].
    (recoveredValue0) codeBefore: (recoveredValue1) sequence: (recoveredValue2) after: (recoveredValue3) source: (recoveredValue4) label: (recoveredValue5) optimize: (recoveredValue6).
    ^self
! !

