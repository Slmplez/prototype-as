"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b81d4; bytecode file offset 0x9b4ba0"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('backgroundColor') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b81e4; bytecode file offset 0x9b4ba0"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
state: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('state') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b82b4; bytecode file offset 0x9b4ba0"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
colorDict: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: ('colorDict') put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd55c; bytecode file offset 0x9ca268"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('backgroundColor') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd5c0; bytecode file offset 0x9ca268"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
colorDict
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('colorDict') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cd728; bytecode file offset 0x9ca268"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
state
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contents.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('state') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20510fac; bytecode file offset 0xe0d8b8"
!RBCalOneDGraphViewConfig methodsFor: 'recovered'!
internalWriteXML: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super internalWriteXML: (recoveredValue0).
    recoveredValue1 := (self) backgroundColor.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredArg1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) complex: ('BackgroundColor') color: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    recoveredValue3 := (self) state.
    recoveredValue4 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value0) attr: ('state') int: (recoveredBlock34Value1).
    recoveredBlock34Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    recoveredValue5 := (self) colorDict.
    recoveredValue6 := [:recoveredBlock54Arg1 | 
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 recoveredBlock54Value5 recoveredBlock54Value6 recoveredBlock54Value7 recoveredBlock54Value8 recoveredBlock54Value9 recoveredBlock54Value10 recoveredBlock54Value11 recoveredBlock54Value12 recoveredBlock54Value13 recoveredBlock54Value14 recoveredBlock54Value15 recoveredBlock54Value16 recoveredBlock54Value17 recoveredBlock54Value18 recoveredBlock54Value19 recoveredBlock54Value20 |
    recoveredBlock54Value0 := recoveredBlock54Arg1.
    recoveredBlock54Value1 := [].
    recoveredBlock54Value2 := (recoveredBlock54Value0) at: ('activeCursor') ifAbsent: (recoveredBlock54Value1).
    recoveredBlock54Value3 := [:recoveredBlock54Block67Arg1 | 
    | recoveredBlock54Block67Value0 recoveredBlock54Block67Value1 recoveredBlock54Block67Value2 |
    recoveredBlock54Block67Value0 := recoveredArg1.
    recoveredBlock54Block67Value1 := recoveredBlock54Block67Arg1.
    recoveredBlock54Block67Value2 := (recoveredBlock54Block67Value0) complex: ('ActiveCursor') color: (recoveredBlock54Block67Value1).
    recoveredBlock54Block67Value2
].
    (recoveredBlock54Value2) ifNotNil: (recoveredBlock54Value3).
    recoveredBlock54Value4 := recoveredBlock54Arg1.
    recoveredBlock54Value5 := [].
    recoveredBlock54Value6 := (recoveredBlock54Value4) at: ('axisGrid') ifAbsent: (recoveredBlock54Value5).
    recoveredBlock54Value7 := [:recoveredBlock54Block92Arg1 | 
    | recoveredBlock54Block92Value0 recoveredBlock54Block92Value1 recoveredBlock54Block92Value2 |
    recoveredBlock54Block92Value0 := recoveredArg1.
    recoveredBlock54Block92Value1 := recoveredBlock54Block92Arg1.
    recoveredBlock54Block92Value2 := (recoveredBlock54Block92Value0) complex: ('AxisGrid') color: (recoveredBlock54Block92Value1).
    recoveredBlock54Block92Value2
].
    (recoveredBlock54Value6) ifNotNil: (recoveredBlock54Value7).
    recoveredBlock54Value8 := recoveredBlock54Arg1.
    recoveredBlock54Value9 := [].
    recoveredBlock54Value10 := (recoveredBlock54Value8) at: ('axisLine') ifAbsent: (recoveredBlock54Value9).
    recoveredBlock54Value11 := [:recoveredBlock54Block116Arg1 | 
    | recoveredBlock54Block116Value0 recoveredBlock54Block116Value1 recoveredBlock54Block116Value2 |
    recoveredBlock54Block116Value0 := recoveredArg1.
    recoveredBlock54Block116Value1 := recoveredBlock54Block116Arg1.
    recoveredBlock54Block116Value2 := (recoveredBlock54Block116Value0) complex: ('AxisLine') color: (recoveredBlock54Block116Value1).
    recoveredBlock54Block116Value2
].
    (recoveredBlock54Value10) ifNotNil: (recoveredBlock54Value11).
    recoveredBlock54Value12 := recoveredBlock54Arg1.
    recoveredBlock54Value13 := [].
    recoveredBlock54Value14 := (recoveredBlock54Value12) at: ('inactiveCursor') ifAbsent: (recoveredBlock54Value13).
    recoveredBlock54Value15 := [:recoveredBlock54Block140Arg1 | 
    | recoveredBlock54Block140Value0 recoveredBlock54Block140Value1 recoveredBlock54Block140Value2 |
    recoveredBlock54Block140Value0 := recoveredArg1.
    recoveredBlock54Block140Value1 := recoveredBlock54Block140Arg1.
    recoveredBlock54Block140Value2 := (recoveredBlock54Block140Value0) complex: ('InactiveCursor') color: (recoveredBlock54Block140Value1).
    recoveredBlock54Block140Value2
].
    (recoveredBlock54Value14) ifNotNil: (recoveredBlock54Value15).
    recoveredBlock54Value16 := recoveredBlock54Arg1.
    recoveredBlock54Value17 := [].
    recoveredBlock54Value18 := (recoveredBlock54Value16) at: ('triggerMarker') ifAbsent: (recoveredBlock54Value17).
    recoveredBlock54Value19 := [:recoveredBlock54Block164Arg1 | 
    | recoveredBlock54Block164Value0 recoveredBlock54Block164Value1 recoveredBlock54Block164Value2 |
    recoveredBlock54Block164Value0 := recoveredArg1.
    recoveredBlock54Block164Value1 := recoveredBlock54Block164Arg1.
    recoveredBlock54Block164Value2 := (recoveredBlock54Block164Value0) complex: ('TriggerMarker') color: (recoveredBlock54Block164Value1).
    recoveredBlock54Block164Value2
].
    recoveredBlock54Value20 := (recoveredBlock54Value18) ifNotNil: (recoveredBlock54Value19).
    recoveredBlock54Value20
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    ^self
! !

