"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2017b3e0; bytecode file offset 0xa77ca4"
!EtasVMInfo methodsFor: 'recovered'!
staticCopy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) fixedSize.
    recoveredValue4 := (recoveredValue3) + (-1).
    recoveredValue5 := recoveredLocal1.
    (self) memcpyFrom: (0) to: (recoveredValue4) into: (recoveredValue5) startingAt: (0).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x203beb60; bytecode file offset 0xcbb448"
!EtasVMInfo methodsFor: 'recovered'!
delta: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) members.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280f6648Arg1 | 
    | block280f6648Value0 block280f6648Value1 block280f6648Value2 block280f6648Value3 |
    block280f6648Value0 := block280f6648Arg1.
    block280f6648Value1 := (block280f6648Value0) asString.
    block280f6648Value2 := (block280f6648Value1) , (':').
    block280f6648Value3 := (block280f6648Value2) asSymbol.
    block280f6648Value3
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := [:recoveredBlock40Arg1 :recoveredBlock40Arg2 | 
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 recoveredBlock40Value7 recoveredBlock40Value8 recoveredBlock40Value9 recoveredBlock40Value10 recoveredBlock40Value11 |
    recoveredBlock40Value0 := recoveredLocal3.
    recoveredBlock40Value1 := recoveredBlock40Arg2.
    recoveredBlock40Value2 := (recoveredBlock40Value0) at: (recoveredBlock40Value1).
    recoveredLocal1 := recoveredBlock40Value2.
    recoveredBlock40Value3 := recoveredLocal4.
    recoveredBlock40Value4 := recoveredLocal1.
    recoveredBlock40Value5 := recoveredBlock40Arg1.
    recoveredBlock40Value6 := (self) perform: (recoveredBlock40Value5).
    recoveredBlock40Value7 := recoveredArg1.
    recoveredBlock40Value8 := recoveredBlock40Arg1.
    recoveredBlock40Value9 := (recoveredBlock40Value7) perform: (recoveredBlock40Value8).
    recoveredBlock40Value10 := (recoveredBlock40Value6) - (recoveredBlock40Value9).
    recoveredBlock40Value11 := (recoveredBlock40Value3) perform: (recoveredBlock40Value4) with: (recoveredBlock40Value10).
    recoveredBlock40Value11
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20416d5c; bytecode file offset 0xd13644"
!EtasVMInfo methodsFor: 'recovered'!
printStringWithDelta: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) delta: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) members.
    recoveredValue6 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 recoveredBlock24Value6 recoveredBlock24Value7 recoveredBlock24Value8 recoveredBlock24Value9 recoveredBlock24Value10 recoveredBlock24Value11 recoveredBlock24Value12 recoveredBlock24Value13 recoveredBlock24Value14 recoveredBlock24Value15 recoveredBlock24Value16 recoveredBlock24Value17 |
    recoveredBlock24Value0 := recoveredLocal2.
    recoveredBlock24Value1 := recoveredBlock24Value0.
    recoveredBlock24Value2 := recoveredBlock24Arg1.
    (recoveredBlock24Value1) nextPutAll: (recoveredBlock24Value2).
    recoveredBlock24Value3 := recoveredBlock24Value0.
    recoveredBlock24Value4 := (Character value: 9).
    (recoveredBlock24Value3) nextPut: (recoveredBlock24Value4).
    recoveredBlock24Value5 := (Character value: 9).
    (recoveredBlock24Value0) nextPut: (recoveredBlock24Value5).
    recoveredBlock24Value6 := recoveredBlock24Arg1.
    recoveredBlock24Value7 := (self) perform: (recoveredBlock24Value6).
    recoveredBlock24Value8 := recoveredLocal2.
    (recoveredBlock24Value7) printOn: (recoveredBlock24Value8).
    recoveredBlock24Value9 := recoveredLocal2.
    recoveredBlock24Value10 := recoveredBlock24Value9.
    (recoveredBlock24Value10) nextPut: ($ ).
    recoveredBlock24Value11 := (Character value: 9).
    (recoveredBlock24Value9) nextPut: (recoveredBlock24Value11).
    recoveredBlock24Value12 := recoveredLocal1.
    recoveredBlock24Value13 := recoveredBlock24Arg1.
    recoveredBlock24Value14 := (recoveredBlock24Value12) perform: (recoveredBlock24Value13).
    recoveredBlock24Value15 := recoveredLocal2.
    (recoveredBlock24Value14) printOn: (recoveredBlock24Value15).
    recoveredBlock24Value16 := recoveredLocal2.
    recoveredBlock24Value17 := (recoveredBlock24Value16) cr.
    recoveredBlock24Value17
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) contents.
    ^recoveredValue8
! !

