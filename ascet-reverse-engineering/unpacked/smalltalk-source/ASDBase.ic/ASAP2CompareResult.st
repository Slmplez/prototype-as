"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001d40; bytecode file offset 0x8ffcfc"
!ASAP2CompareResult methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x2006790c; bytecode file offset 0x9646f8"
!ASAP2CompareResult methodsFor: 'recovered'!
leftOnly
    | recoveredValue0 |
    recoveredValue0 := leftOnly.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068a44; bytecode file offset 0x965b90"
!ASAP2CompareResult methodsFor: 'recovered'!
rightOnly
    | recoveredValue0 |
    recoveredValue0 := rightOnly.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a2d0; bytecode file offset 0x966bdc"
!ASAP2CompareResult methodsFor: 'recovered'!
leftEqual
    | recoveredValue0 |
    recoveredValue0 := leftEqual.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a8fc; bytecode file offset 0x967a18"
!ASAP2CompareResult methodsFor: 'recovered'!
rightEqual
    | recoveredValue0 |
    recoveredValue0 := rightEqual.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b458; bytecode file offset 0x96873c"
!ASAP2CompareResult methodsFor: 'recovered'!
leftDifferent
    | recoveredValue0 |
    recoveredValue0 := leftDifferent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c40c; bytecode file offset 0x9692b0"
!ASAP2CompareResult methodsFor: 'recovered'!
rightDifferent
    | recoveredValue0 |
    recoveredValue0 := rightDifferent.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006cde0; bytecode file offset 0x969c04"
!ASAP2CompareResult methodsFor: 'recovered'!
left
    | recoveredValue0 |
    recoveredValue0 := left.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d904; bytecode file offset 0x96a390"
!ASAP2CompareResult methodsFor: 'recovered'!
right
    | recoveredValue0 |
    recoveredValue0 := right.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac1a4; bytecode file offset 0x9a8ab4"
!ASAP2CompareResult methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) printOn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bea08; bytecode file offset 0x9bc0b4"
!ASAP2CompareResult methodsFor: 'recovered'!
leftOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0614; bytecode file offset 0x9bd228"
!ASAP2CompareResult methodsFor: 'recovered'!
rightOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rightOnly := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1550; bytecode file offset 0x9bdf14"
!ASAP2CompareResult methodsFor: 'recovered'!
leftEqual: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftEqual := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c202c; bytecode file offset 0x9beac8"
!ASAP2CompareResult methodsFor: 'recovered'!
rightEqual: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rightEqual := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c26e8; bytecode file offset 0x9bf474"
!ASAP2CompareResult methodsFor: 'recovered'!
leftDifferent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    leftDifferent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c33ec; bytecode file offset 0x9bfde0"
!ASAP2CompareResult methodsFor: 'recovered'!
rightDifferent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rightDifferent := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3cb8; bytecode file offset 0x9c058c"
!ASAP2CompareResult methodsFor: 'recovered'!
left: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    left := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3e84; bytecode file offset 0x9c0bf0"
!ASAP2CompareResult methodsFor: 'recovered'!
right: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    right := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f0d14; bytecode file offset 0x9ed5cc"
!ASAP2CompareResult methodsFor: 'recovered'!
doWithCopy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := left.
    recoveredValue1 := (recoveredValue0) copyObjectGraph.
    left := recoveredValue1.
    recoveredValue2 := right.
    recoveredValue3 := (recoveredValue2) copyObjectGraph.
    right := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2017bc74; bytecode file offset 0xa78540"
!ASAP2CompareResult methodsFor: 'recovered'!
writeModule: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := ASAP2FileReader.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) openWriteStream: (false).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) putIn: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) close.
    ^self
! !

"ASDBase.ic method 0x20277564; bytecode file offset 0xb73e94"
!ASAP2CompareResult methodsFor: 'recovered'!
addInspectorMenuEntriesIn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addInspectorMenuEntriesIn: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'compare'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'compare'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [
    true
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) add: (recoveredStack2) label: (recoveredStack3) enable: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'writeDifferent'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'writeDifferent'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := [
    true
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) add: (recoveredStack1) label: (recoveredStack2) enable: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202820f0; bytecode file offset 0xb7e9c4"
!ASAP2CompareResult methodsFor: 'recovered'!
writeDifferent
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := leftDifferent.
    (self) writeModule: (recoveredValue0).
    recoveredValue1 := rightDifferent.
    (self) writeModule: (recoveredValue1).
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := ('windiff.exe') , (' ').
    recoveredValue5 := leftDifferent.
    recoveredValue6 := (recoveredValue5) name.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    recoveredValue8 := (recoveredValue7) , (' ').
    recoveredValue9 := rightDifferent.
    recoveredValue10 := (recoveredValue9) name.
    recoveredValue11 := (recoveredValue8) , (recoveredValue10).
    (recoveredValue3) runProcess: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x202d0ac0; bytecode file offset 0xbcd3a0"
!ASAP2CompareResult methodsFor: 'recovered'!
changeNamesOf: recoveredArg1 ext: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) changeToOrderedCollection.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) clearId.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) collectObjectsFlat.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) flat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:block280e6100Arg1 | 
    | block280e6100Stack0 block280e6100Stack1 block280e6100Stack2 block280e6100Stack3 block280e6100Stack4 block280e6100PC block280e6100Step block280e6100Done block280e6100Result |
    block280e6100Stack0 := self.
    block280e6100PC := 4.
    block280e6100Done := false.
    [block280e6100Done not] whileTrue: [
        block280e6100Step := block280e6100PC.
        block280e6100Step = 4 ifTrue: [
            block280e6100Stack1 := nil.
            block280e6100PC := 5.
        ].
        block280e6100Step = 5 ifTrue: [
            block280e6100Stack2 := block280e6100Arg1.
            block280e6100PC := 6.
        ].
        block280e6100Step = 6 ifTrue: [
            block280e6100Stack2 := (block280e6100Stack2) name.
            block280e6100PC := 7.
        ].
        block280e6100Step = 7 ifTrue: [
            (block280e6100Stack2 == nil) ifTrue: [block280e6100PC := 18] ifFalse: [block280e6100PC := 10].
        ].
        block280e6100Step = 10 ifTrue: [
            block280e6100PC := 11.
        ].
        block280e6100Step = 11 ifTrue: [
            block280e6100Stack1 := block280e6100Arg1.
            block280e6100PC := 12.
        ].
        block280e6100Step = 12 ifTrue: [
            block280e6100Stack2 := block280e6100Arg1.
            block280e6100PC := 13.
        ].
        block280e6100Step = 13 ifTrue: [
            block280e6100Stack2 := (block280e6100Stack2) name.
            block280e6100PC := 14.
        ].
        block280e6100Step = 14 ifTrue: [
            block280e6100Stack3 := '.left'.
            block280e6100PC := 16.
        ].
        block280e6100Step = 16 ifTrue: [
            block280e6100Stack2 := (block280e6100Stack2) , (block280e6100Stack3).
            block280e6100PC := 17.
        ].
        block280e6100Step = 17 ifTrue: [
            block280e6100Stack1 := (block280e6100Stack1) name: (block280e6100Stack2).
            block280e6100PC := 18.
        ].
        block280e6100Step = 18 ifTrue: [
            block280e6100Result := block280e6100Stack1.
            block280e6100Done := true.
        ].
    ].
    block280e6100Result
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) selectObjectsFrom.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204494d0; bytecode file offset 0xd45db0"
!ASAP2CompareResult methodsFor: 'recovered'!
compare
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Time.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 recoveredBlock6Value5 recoveredBlock6Value6 recoveredBlock6Value7 recoveredBlock6Value8 recoveredBlock6Value9 recoveredBlock6Value10 recoveredBlock6Value11 recoveredBlock6Value12 recoveredBlock6Value13 recoveredBlock6Value14 recoveredBlock6Value15 recoveredBlock6Value16 recoveredBlock6Value17 recoveredBlock6Value18 recoveredBlock6Value19 recoveredBlock6Value20 recoveredBlock6Value21 recoveredBlock6Value22 recoveredBlock6Value23 recoveredBlock6Value24 recoveredBlock6Value25 recoveredBlock6Value26 recoveredBlock6Value27 recoveredBlock6Value28 recoveredBlock6Value29 recoveredBlock6Value30 recoveredBlock6Value31 recoveredBlock6Value32 recoveredBlock6Value33 recoveredBlock6Value34 |
    recoveredBlock6Value0 := left.
    (recoveredBlock6Value0) changeToOrderedCollection.
    recoveredBlock6Value1 := right.
    (recoveredBlock6Value1) changeToOrderedCollection.
    recoveredBlock6Value2 := left.
    recoveredBlock6Value3 := right.
    recoveredBlock6Value4 := (recoveredBlock6Value2) compareRemoveAllOf: (recoveredBlock6Value3).
    leftOnly := recoveredBlock6Value4.
    recoveredBlock6Value5 := right.
    recoveredBlock6Value6 := left.
    recoveredBlock6Value7 := (recoveredBlock6Value5) compareRemoveAllOf: (recoveredBlock6Value6).
    rightOnly := recoveredBlock6Value7.
    recoveredBlock6Value8 := left.
    recoveredBlock6Value9 := right.
    recoveredBlock6Value10 := (recoveredBlock6Value8) compareKeepAllOf: (recoveredBlock6Value9).
    leftBoth := recoveredBlock6Value10.
    recoveredBlock6Value11 := right.
    recoveredBlock6Value12 := left.
    recoveredBlock6Value13 := (recoveredBlock6Value11) compareKeepAllOf: (recoveredBlock6Value12).
    rightBoth := recoveredBlock6Value13.
    recoveredBlock6Value14 := leftBoth.
    recoveredBlock6Value15 := left.
    recoveredBlock6Value16 := (recoveredBlock6Value15) comments.
    (recoveredBlock6Value14) comments: (recoveredBlock6Value16).
    recoveredBlock6Value17 := rightBoth.
    recoveredBlock6Value18 := right.
    recoveredBlock6Value19 := (recoveredBlock6Value18) comments.
    (recoveredBlock6Value17) comments: (recoveredBlock6Value19).
    recoveredBlock6Value20 := leftBoth.
    recoveredBlock6Value21 := rightBoth.
    recoveredBlock6Value22 := (recoveredBlock6Value20) compareKeepEqualOf: (recoveredBlock6Value21).
    leftEqual := recoveredBlock6Value22.
    recoveredBlock6Value23 := leftBoth.
    recoveredBlock6Value24 := rightBoth.
    recoveredBlock6Value25 := (recoveredBlock6Value23) compareKeepDifferentOf: (recoveredBlock6Value24).
    leftDifferent := recoveredBlock6Value25.
    recoveredBlock6Value26 := rightBoth.
    recoveredBlock6Value27 := leftBoth.
    recoveredBlock6Value28 := (recoveredBlock6Value26) compareKeepEqualOf: (recoveredBlock6Value27).
    rightEqual := recoveredBlock6Value28.
    recoveredBlock6Value29 := rightBoth.
    recoveredBlock6Value30 := leftBoth.
    recoveredBlock6Value31 := (recoveredBlock6Value29) compareKeepDifferentOf: (recoveredBlock6Value30).
    rightDifferent := recoveredBlock6Value31.
    recoveredBlock6Value32 := left.
    (recoveredBlock6Value32) changeToLookupTable.
    recoveredBlock6Value33 := right.
    (recoveredBlock6Value33) changeToLookupTable.
    recoveredBlock6Value34 := (self) changeNames.
    recoveredBlock6Value34
].
    recoveredValue2 := (recoveredValue0) millisecondsToRun: (recoveredValue1).
    time := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x204e76c8; bytecode file offset 0xde3fb0"
!ASAP2CompareResult methodsFor: 'recovered'!
changeNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 |
    recoveredValue0 := leftOnly.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := left.
    recoveredValue3 := (recoveredValue2) comments.
    (recoveredValue1) comments: (recoveredValue3).
    recoveredValue4 := left.
    recoveredValue5 := (recoveredValue4) name.
    (recoveredValue0) name: (recoveredValue5).
    recoveredValue6 := rightOnly.
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := right.
    recoveredValue9 := (recoveredValue8) comments.
    (recoveredValue7) comments: (recoveredValue9).
    recoveredValue10 := right.
    recoveredValue11 := (recoveredValue10) name.
    (recoveredValue6) name: (recoveredValue11).
    recoveredValue12 := leftBoth.
    recoveredValue13 := recoveredValue12.
    recoveredValue14 := left.
    recoveredValue15 := (recoveredValue14) comments.
    (recoveredValue13) comments: (recoveredValue15).
    recoveredValue16 := left.
    recoveredValue17 := (recoveredValue16) name.
    (recoveredValue12) name: (recoveredValue17).
    recoveredValue18 := rightBoth.
    recoveredValue19 := recoveredValue18.
    recoveredValue20 := right.
    recoveredValue21 := (recoveredValue20) comments.
    (recoveredValue19) comments: (recoveredValue21).
    recoveredValue22 := right.
    recoveredValue23 := (recoveredValue22) name.
    (recoveredValue18) name: (recoveredValue23).
    recoveredValue24 := leftEqual.
    recoveredValue25 := recoveredValue24.
    recoveredValue26 := left.
    recoveredValue27 := (recoveredValue26) comments.
    (recoveredValue25) comments: (recoveredValue27).
    recoveredValue28 := left.
    recoveredValue29 := (recoveredValue28) name.
    (recoveredValue24) name: (recoveredValue29).
    recoveredValue30 := rightEqual.
    recoveredValue31 := recoveredValue30.
    recoveredValue32 := right.
    recoveredValue33 := (recoveredValue32) comments.
    (recoveredValue31) comments: (recoveredValue33).
    recoveredValue34 := right.
    recoveredValue35 := (recoveredValue34) name.
    (recoveredValue30) name: (recoveredValue35).
    recoveredValue36 := leftDifferent.
    recoveredValue37 := recoveredValue36.
    recoveredValue38 := left.
    recoveredValue39 := (recoveredValue38) comments.
    (recoveredValue37) comments: (recoveredValue39).
    recoveredValue40 := left.
    recoveredValue41 := (recoveredValue40) name.
    (recoveredValue36) name: (recoveredValue41).
    recoveredValue42 := rightDifferent.
    recoveredValue43 := recoveredValue42.
    recoveredValue44 := right.
    recoveredValue45 := (recoveredValue44) comments.
    (recoveredValue43) comments: (recoveredValue45).
    recoveredValue46 := right.
    recoveredValue47 := (recoveredValue46) name.
    (recoveredValue42) name: (recoveredValue47).
    recoveredValue48 := leftOnly.
    (self) changeNamesOf: (recoveredValue48) ext: ('.left.Only').
    recoveredValue49 := leftBoth.
    (self) changeNamesOf: (recoveredValue49) ext: ('.left.Both').
    recoveredValue50 := leftEqual.
    (self) changeNamesOf: (recoveredValue50) ext: ('.left.Equal').
    recoveredValue51 := leftDifferent.
    (self) changeNamesOf: (recoveredValue51) ext: ('.left.Different').
    recoveredValue52 := rightOnly.
    (self) changeNamesOf: (recoveredValue52) ext: ('.right.Only').
    recoveredValue53 := rightBoth.
    (self) changeNamesOf: (recoveredValue53) ext: ('.right.Both').
    recoveredValue54 := rightEqual.
    (self) changeNamesOf: (recoveredValue54) ext: ('.right.Equal').
    recoveredValue55 := rightDifferent.
    (self) changeNamesOf: (recoveredValue55) ext: ('.right.Different').
    ^self
! !

