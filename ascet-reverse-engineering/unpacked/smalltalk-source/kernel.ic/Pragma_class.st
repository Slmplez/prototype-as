"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20007ec4; bytecode file offset 0x52ddc"
!Pragma class methodsFor: 'recovered'!
allNamed: recoveredArg1 in: recoveredArg2 sortedUsing: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) allNamed: (recoveredValue0) in: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (recoveredValue2) asSortedCollection: (recoveredValue3).
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"kernel.ic method 0x200087a0; bytecode file offset 0x536b8"
!Pragma class methodsFor: 'recovered'!
fromArray: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) first.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) at: (2).
    recoveredValue4 := (self) keyword: (recoveredValue1) arguments: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20009740; bytecode file offset 0x54658"
!Pragma class methodsFor: 'recovered'!
keyword: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) keyword: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) arguments: (recoveredValue4).
    ^recoveredValue0
! !

"kernel.ic method 0x20009804; bytecode file offset 0x5471c"
!Pragma class methodsFor: 'recovered'!
allNamed: recoveredArg1 from: recoveredArg2 to: recoveredArg3 sortedUsing: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) allNamed: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2).
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue3) asSortedCollection: (recoveredValue4).
    recoveredValue6 := (recoveredValue5) asArray.
    ^recoveredValue6
! !

"kernel.ic method 0x2000fa78; bytecode file offset 0x5a990"
!Pragma class methodsFor: 'recovered'!
withPragmasIn: recoveredArg1 do: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) methodDictionary.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredBlock8Arg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) pragmas.
    recoveredBlock8Value2 := recoveredArg2.
    recoveredBlock8Value3 := (recoveredBlock8Value1) do: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20013ab8; bytecode file offset 0x5e9cc"
!Pragma class methodsFor: 'recovered'!
allNamed: recoveredArg1 in: recoveredArg2 sortedByArgument: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [:recoveredBlock10Arg1 :recoveredBlock10Arg2 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 recoveredBlock10Value6 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg3.
    recoveredBlock10Value2 := (recoveredBlock10Value0) argumentAt: (recoveredBlock10Value1).
    recoveredBlock10Value3 := recoveredBlock10Arg2.
    recoveredBlock10Value4 := recoveredArg3.
    recoveredBlock10Value5 := (recoveredBlock10Value3) argumentAt: (recoveredBlock10Value4).
    recoveredBlock10Value6 := (recoveredBlock10Value2) < (recoveredBlock10Value5).
    recoveredBlock10Value6
].
    recoveredValue3 := (self) allNamed: (recoveredValue0) in: (recoveredValue1) sortedUsing: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200155f8; bytecode file offset 0x6050c"
!Pragma class methodsFor: 'recovered'!
allNamed: recoveredArg1 from: recoveredArg2 to: recoveredArg3 sortedByArgument: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := [:recoveredBlock13Arg1 :recoveredBlock13Arg2 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg4.
    recoveredBlock13Value2 := (recoveredBlock13Value0) argumentAt: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Arg2.
    recoveredBlock13Value4 := recoveredArg4.
    recoveredBlock13Value5 := (recoveredBlock13Value3) argumentAt: (recoveredBlock13Value4).
    recoveredBlock13Value6 := (recoveredBlock13Value2) < (recoveredBlock13Value5).
    recoveredBlock13Value6
].
    recoveredValue4 := (self) allNamed: (recoveredValue0) from: (recoveredValue1) to: (recoveredValue2) sortedUsing: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200187ec; bytecode file offset 0x6370c"
!Pragma class methodsFor: 'recovered'!
allNamed: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredArg2.
    recoveredBlock6Value1 := [:recoveredBlock6Block15Arg1 | 
    | recoveredBlock6Block15Stack0 recoveredBlock6Block15Stack1 recoveredBlock6Block15Stack2 recoveredBlock6Block15Stack3 recoveredBlock6Block15Stack4 recoveredBlock6Block15PC recoveredBlock6Block15Step recoveredBlock6Block15Done recoveredBlock6Block15Result |
    recoveredBlock6Block15Stack0 := nil.
    recoveredBlock6Block15PC := 22.
    recoveredBlock6Block15Done := false.
    [recoveredBlock6Block15Done not] whileTrue: [
        recoveredBlock6Block15Step := recoveredBlock6Block15PC.
        recoveredBlock6Block15Step = 22 ifTrue: [
            recoveredBlock6Block15Stack1 := nil.
            recoveredBlock6Block15PC := 23.
        ].
        recoveredBlock6Block15Step = 23 ifTrue: [
            recoveredBlock6Block15Stack2 := recoveredBlock6Block15Arg1.
            recoveredBlock6Block15PC := 24.
        ].
        recoveredBlock6Block15Step = 24 ifTrue: [
            recoveredBlock6Block15Stack2 := (recoveredBlock6Block15Stack2) keyword.
            recoveredBlock6Block15PC := 25.
        ].
        recoveredBlock6Block15Step = 25 ifTrue: [
            recoveredBlock6Block15Stack3 := recoveredArg1.
            recoveredBlock6Block15PC := 28.
        ].
        recoveredBlock6Block15Step = 28 ifTrue: [
            recoveredBlock6Block15Stack2 := (recoveredBlock6Block15Stack2) = (recoveredBlock6Block15Stack3).
            recoveredBlock6Block15PC := 29.
        ].
        recoveredBlock6Block15Step = 29 ifTrue: [
            (recoveredBlock6Block15Stack2) ifTrue: [recoveredBlock6Block15PC := 32] ifFalse: [recoveredBlock6Block15PC := 38].
        ].
        recoveredBlock6Block15Step = 32 ifTrue: [
            recoveredBlock6Block15PC := 33.
        ].
        recoveredBlock6Block15Step = 33 ifTrue: [
            recoveredBlock6Block15Stack1 := recoveredBlock6Arg1.
            recoveredBlock6Block15PC := 36.
        ].
        recoveredBlock6Block15Step = 36 ifTrue: [
            recoveredBlock6Block15Stack2 := recoveredBlock6Block15Arg1.
            recoveredBlock6Block15PC := 37.
        ].
        recoveredBlock6Block15Step = 37 ifTrue: [
            recoveredBlock6Block15Stack1 := (recoveredBlock6Block15Stack1) nextPut: (recoveredBlock6Block15Stack2).
            recoveredBlock6Block15PC := 38.
        ].
        recoveredBlock6Block15Step = 38 ifTrue: [
            recoveredBlock6Block15Result := recoveredBlock6Block15Stack1.
            recoveredBlock6Block15Done := true.
        ].
    ].
    recoveredBlock6Block15Result
].
    recoveredBlock6Value2 := (self) withPragmasIn: (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    recoveredValue2 := (recoveredValue0) streamContents: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200216b8; bytecode file offset 0x6c5e8"
!Pragma class methodsFor: 'recovered'!
allNamed: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := Array.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block23Arg1 | 
    | recoveredBlock16Block23Stack0 recoveredBlock16Block23Stack1 recoveredBlock16Block23Stack2 recoveredBlock16Block23Stack3 recoveredBlock16Block23Stack4 recoveredBlock16Block23PC recoveredBlock16Block23Step recoveredBlock16Block23Done recoveredBlock16Block23Result |
    recoveredBlock16Block23Stack0 := nil.
    recoveredBlock16Block23PC := 30.
    recoveredBlock16Block23Done := false.
    [recoveredBlock16Block23Done not] whileTrue: [
        recoveredBlock16Block23Step := recoveredBlock16Block23PC.
        recoveredBlock16Block23Step = 30 ifTrue: [
            recoveredBlock16Block23Stack1 := nil.
            recoveredBlock16Block23PC := 31.
        ].
        recoveredBlock16Block23Step = 31 ifTrue: [
            recoveredBlock16Block23Stack2 := recoveredBlock16Block23Arg1.
            recoveredBlock16Block23PC := 32.
        ].
        recoveredBlock16Block23Step = 32 ifTrue: [
            recoveredBlock16Block23Stack2 := (recoveredBlock16Block23Stack2) keyword.
            recoveredBlock16Block23PC := 34.
        ].
        recoveredBlock16Block23Step = 34 ifTrue: [
            recoveredBlock16Block23Stack3 := recoveredArg1.
            recoveredBlock16Block23PC := 37.
        ].
        recoveredBlock16Block23Step = 37 ifTrue: [
            recoveredBlock16Block23Stack2 := (recoveredBlock16Block23Stack2) = (recoveredBlock16Block23Stack3).
            recoveredBlock16Block23PC := 38.
        ].
        recoveredBlock16Block23Step = 38 ifTrue: [
            (recoveredBlock16Block23Stack2) ifTrue: [recoveredBlock16Block23PC := 42] ifFalse: [recoveredBlock16Block23PC := 49].
        ].
        recoveredBlock16Block23Step = 42 ifTrue: [
            recoveredBlock16Block23PC := 43.
        ].
        recoveredBlock16Block23Step = 43 ifTrue: [
            recoveredBlock16Block23Stack1 := recoveredLocal1.
            recoveredBlock16Block23PC := 46.
        ].
        recoveredBlock16Block23Step = 46 ifTrue: [
            recoveredBlock16Block23Stack2 := recoveredBlock16Block23Arg1.
            recoveredBlock16Block23PC := 47.
        ].
        recoveredBlock16Block23Step = 47 ifTrue: [
            recoveredBlock16Block23Stack1 := (recoveredBlock16Block23Stack1) nextPut: (recoveredBlock16Block23Stack2).
            recoveredBlock16Block23PC := 49.
        ].
        recoveredBlock16Block23Step = 49 ifTrue: [
            recoveredBlock16Block23Result := recoveredBlock16Block23Stack1.
            recoveredBlock16Block23Done := true.
        ].
    ].
    recoveredBlock16Block23Result
].
            recoveredBlock16PC := 50.
        ].
        recoveredBlock16Step = 50 ifTrue: [
            (recoveredBlock16Stack0) withPragmasIn: (recoveredBlock16Stack1) do: (recoveredBlock16Stack2).
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack0 := nil.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack1 := recoveredArg3.
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) = (recoveredBlock16Stack2).
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 62] ifFalse: [recoveredBlock16PC := 69].
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack0 := recoveredLocal1.
            recoveredBlock16PC := 66.
        ].
        recoveredBlock16Step = 66 ifTrue: [
            recoveredBlock16Stack0 := (recoveredBlock16Stack0) contents.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            ^recoveredBlock16Stack0
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack0.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue4) withAllSuperclassesDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

