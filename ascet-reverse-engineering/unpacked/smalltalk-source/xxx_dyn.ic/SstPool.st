"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000ea8; bytecode file offset 0x6209c"
!SstPool methodsFor: 'recovered'!
collectionClass
    | recoveredValue0 |
    recoveredValue0 := Set.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x200028b0; bytecode file offset 0x63b1c"
!SstPool methodsFor: 'recovered'!
reset
    (self) destroyAllElements.
    ^self
! !

"xxx_dyn.ic method 0x20002a00; bytecode file offset 0x63b1c"
!SstPool methodsFor: 'recovered'!
shutDown
    (self) destroyAllElements.
    ^self
! !

"xxx_dyn.ic method 0x20005b08; bytecode file offset 0x66bd0"
!SstPool methodsFor: 'recovered'!
primitiveDestroy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := destroyBlock.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) value: (recoveredValue1).
    ^self
! !

"xxx_dyn.ic method 0x2000d0c4; bytecode file offset 0x6e190"
!SstPool methodsFor: 'recovered'!
size
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := in.
    recoveredBlock4Value1 := (recoveredBlock4Value0) size.
    recoveredBlock4Value2 := out.
    recoveredBlock4Value3 := (recoveredBlock4Value2) size.
    recoveredBlock4Value4 := (recoveredBlock4Value1) + (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    recoveredValue1 := (recoveredValue0) critical.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000d468; bytecode file offset 0x6e540"
!SstPool methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := MxSSTG6.
    recoveredValue2 := in.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue3) printString.
    recoveredValue5 := out.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue6) printString.
    recoveredValue8 := (recoveredValue1) bindWith: (recoveredValue4) with: (recoveredValue7).
    (recoveredValue0) nextPutAll: (recoveredValue8).
    ^self
! !

"xxx_dyn.ic method 0x2000dc7c; bytecode file offset 0x6ed48"
!SstPool methodsFor: 'recovered'!
firstAvailableElement
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := in.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := in.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) remove: (recoveredBlock6Value1).
    ^recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"xxx_dyn.ic method 0x20011284; bytecode file offset 0x72350"
!SstPool methodsFor: 'recovered'!
create
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := high.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) >= (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := strict.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := createBlock.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x200127e8; bytecode file offset 0x738b0"
!SstPool methodsFor: 'recovered'!
clear
    createBlock := nil.
    (self) destroyAllElements.
    out := nil.
    in := nil.
    strict := nil.
    low := nil.
    high := nil.
    destroyBlock := nil.
    ^self
! !

"xxx_dyn.ic method 0x20015c2c; bytecode file offset 0x76cf8"
!SstPool methodsFor: 'recovered'!
high: recoveredArg1 low: recoveredArg2 strict: recoveredArg3 create: recoveredArg4 destroy: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg1.
    high := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    low := recoveredValue1.
    recoveredValue2 := recoveredArg3.
    strict := recoveredValue2.
    recoveredValue3 := (self) collectionClass.
    recoveredValue4 := high.
    recoveredValue5 := (recoveredValue3) new: (recoveredValue4).
    in := recoveredValue5.
    recoveredValue6 := (self) collectionClass.
    recoveredValue7 := high.
    recoveredValue8 := (recoveredValue6) new: (recoveredValue7).
    out := recoveredValue8.
    recoveredValue9 := recoveredArg4.
    createBlock := recoveredValue9.
    recoveredValue10 := recoveredArg5.
    destroyBlock := recoveredValue10.
    ^self
! !

"xxx_dyn.ic method 0x20016e4c; bytecode file offset 0x77f1c"
!SstPool methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := out.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block15Value0 recoveredBlock4Block15Value1 recoveredBlock4Block15Value2 recoveredBlock4Block15Value3 |
    recoveredBlock4Block15Value0 := in.
    recoveredBlock4Block15Value1 := recoveredArg1.
    recoveredBlock4Block15Value2 := [].
    recoveredBlock4Block15Value3 := (recoveredBlock4Block15Value0) remove: (recoveredBlock4Block15Value1) ifAbsent: (recoveredBlock4Block15Value2).
    recoveredBlock4Block15Value3
].
    recoveredBlock4Value3 := (recoveredBlock4Value0) remove: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20017938; bytecode file offset 0x78a10"
!SstPool methodsFor: 'recovered'!
next
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) firstAvailableElement.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack0 ~~ nil) ifTrue: [recoveredBlock4PC := 19] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) create.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 35] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isSstError.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 35] ifFalse: [recoveredBlock4PC := 30].
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := out.
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack0) add: (recoveredBlock4Stack1).
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            ^recoveredBlock4Stack0
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x20018c84; bytecode file offset 0x79d58"
!SstPool methodsFor: 'recovered'!
destroy: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := out.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := [
    | recoveredBlock4Block15Value0 recoveredBlock4Block15Value1 recoveredBlock4Block15Value2 recoveredBlock4Block15Value3 |
    recoveredBlock4Block15Value0 := in.
    recoveredBlock4Block15Value1 := recoveredArg1.
    recoveredBlock4Block15Value2 := [].
    recoveredBlock4Block15Value3 := (recoveredBlock4Block15Value0) remove: (recoveredBlock4Block15Value1) ifAbsent: (recoveredBlock4Block15Value2).
    recoveredBlock4Block15Value3
].
    (recoveredBlock4Value0) remove: (recoveredBlock4Value1) ifAbsent: (recoveredBlock4Value2).
    recoveredBlock4Value3 := recoveredArg1.
    recoveredBlock4Value4 := (self) primitiveDestroy: (recoveredBlock4Value3).
    ^recoveredBlock4Value4
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x200198bc; bytecode file offset 0x7a990"
!SstPool methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            (recoveredBlock4Stack0) shutDown.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack1 := strict.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 40].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack0 := low.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := in.
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack2 := self.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) create.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack1) add: (recoveredBlock4Stack2).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            (recoveredBlock4Stack0 isInteger) ifTrue: [(recoveredBlock4Stack0 > 0) ifTrue: [recoveredBlock4Stack0 := recoveredBlock4Stack0 - 1. recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 40]] ifFalse: [recoveredBlock4PC := 33].
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) + (-1).
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) >= (recoveredBlock4Stack2).
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 24] ifFalse: [recoveredBlock4PC := 40].
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2001c95c; bytecode file offset 0x7da38"
!SstPool methodsFor: 'recovered'!
return: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) size.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := high.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) > (recoveredBlock4Stack1).
            recoveredBlock4PC := 14.
        ].
        recoveredBlock4Step = 14 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 18] ifFalse: [recoveredBlock4PC := 33].
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack0 := out.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack2 := [].
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            (recoveredBlock4Stack0) remove: (recoveredBlock4Stack1) ifAbsent: (recoveredBlock4Stack2).
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) primitiveDestroy: (recoveredBlock4Stack1).
            recoveredBlock4PC := 32.
        ].
        recoveredBlock4Step = 32 ifTrue: [
            ^recoveredBlock4Stack0
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack0 := out.
            recoveredBlock4PC := 35.
        ].
        recoveredBlock4Step = 35 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 38.
        ].
        recoveredBlock4Step = 38 ifTrue: [
            recoveredBlock4Stack2 := [].
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            (recoveredBlock4Stack0) remove: (recoveredBlock4Stack1) ifAbsent: (recoveredBlock4Stack2).
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Stack0 := in.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) add: (recoveredBlock4Stack1).
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    ^self
! !

"xxx_dyn.ic method 0x2001f550; bytecode file offset 0x8062c"
!SstPool methodsFor: 'recovered'!
destroyAllElements
    | recoveredValue0 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 recoveredBlock4Value9 recoveredBlock4Value10 recoveredBlock4Value11 recoveredBlock4Value12 recoveredBlock4Value13 recoveredBlock4Value14 |
    recoveredBlock4Value0 := in.
    recoveredBlock4Value1 := (recoveredBlock4Value0) copy.
    recoveredBlock4Local2 := recoveredBlock4Value1.
    recoveredBlock4Value2 := out.
    recoveredBlock4Value3 := (recoveredBlock4Value2) copy.
    recoveredBlock4Local1 := recoveredBlock4Value3.
    recoveredBlock4Value4 := recoveredBlock4Local2.
    recoveredBlock4Value5 := [:recoveredBlock4Block19Arg1 | 
    | recoveredBlock4Block19Value0 recoveredBlock4Block19Value1 |
    recoveredBlock4Block19Value0 := recoveredBlock4Block19Arg1.
    recoveredBlock4Block19Value1 := (self) primitiveDestroy: (recoveredBlock4Block19Value0).
    recoveredBlock4Block19Value1
].
    (recoveredBlock4Value4) do: (recoveredBlock4Value5).
    recoveredBlock4Value6 := recoveredBlock4Local1.
    recoveredBlock4Value7 := [:recoveredBlock4Block32Arg1 | 
    | recoveredBlock4Block32Value0 recoveredBlock4Block32Value1 |
    recoveredBlock4Block32Value0 := recoveredBlock4Block32Arg1.
    recoveredBlock4Block32Value1 := (self) primitiveDestroy: (recoveredBlock4Block32Value0).
    recoveredBlock4Block32Value1
].
    (recoveredBlock4Value6) do: (recoveredBlock4Value7).
    recoveredBlock4Value8 := (self) collectionClass.
    recoveredBlock4Value9 := high.
    recoveredBlock4Value10 := (recoveredBlock4Value8) new: (recoveredBlock4Value9).
    in := recoveredBlock4Value10.
    recoveredBlock4Value11 := (self) collectionClass.
    recoveredBlock4Value12 := high.
    recoveredBlock4Value13 := (recoveredBlock4Value11) new: (recoveredBlock4Value12).
    recoveredBlock4Value14 := recoveredBlock4Value13.
    out := recoveredBlock4Value14.
    recoveredBlock4Value13
].
    (recoveredValue0) critical.
    ^self
! !

