"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20001138; bytecode file offset 0x52154"
!EwToolResizePolicy methodsFor: 'recovered'!
hasVariableTools
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) variableWidthTools.
    recoveredValue1 := (recoveredValue0) notEmpty.
    ^recoveredValue1
! !

"extwid.ic method 0x200026cc; bytecode file offset 0x534f0"
!EwToolResizePolicy methodsFor: 'recovered'!
toolBar
    | recoveredValue0 |
    recoveredValue0 := toolBar.
    ^recoveredValue0
! !

"extwid.ic method 0x20002a24; bytecode file offset 0x53810"
!EwToolResizePolicy methodsFor: 'recovered'!
variableWidthTools
    | recoveredValue0 |
    recoveredValue0 := variableWidthTools.
    ^recoveredValue0
! !

"extwid.ic method 0x200053cc; bytecode file offset 0x56288"
!EwToolResizePolicy methodsFor: 'recovered'!
reset
    (self) initialize.
    (self) adjustTools.
    ^self
! !

"extwid.ic method 0x200062d0; bytecode file offset 0x5710c"
!EwToolResizePolicy methodsFor: 'recovered'!
toolBar: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toolBar := recoveredValue0.
    ^self
! !

"extwid.ic method 0x20006390; bytecode file offset 0x57284"
!EwToolResizePolicy methodsFor: 'recovered'!
ratios: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ratios := recoveredValue0.
    ^self
! !

"extwid.ic method 0x200065e0; bytecode file offset 0x57404"
!EwToolResizePolicy methodsFor: 'recovered'!
variableWidthTools: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    variableWidthTools := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000a624; bytecode file offset 0x5b3f4"
!EwToolResizePolicy methodsFor: 'recovered'!
initialize
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) initializeVariableWidthTools.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasVariableTools.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) computeVariableWidthToolRatios.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000b94c; bytecode file offset 0x5c71c"
!EwToolResizePolicy methodsFor: 'recovered'!
ratios
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ratios.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := Dictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ratios: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ratios.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000ce38; bytecode file offset 0x5dc08"
!EwToolResizePolicy methodsFor: 'recovered'!
adjustTools
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasVariableTools.
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
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) initializeVariableWidthTools.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) allocate.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000d93c; bytecode file offset 0x5e718"
!EwToolResizePolicy methodsFor: 'recovered'!
initializeVariableWidthTools
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) toolBar.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280055a4Arg1 | 
    | block280055a4Value0 block280055a4Value1 |
    block280055a4Value0 := block280055a4Arg1.
    block280055a4Value1 := (block280055a4Value0) isVariableWidth.
    block280055a4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) variableWidthTools: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20013714; bytecode file offset 0x644f8"
!EwToolResizePolicy methodsFor: 'recovered'!
allocate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) variableWidthTools.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) ratios.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) availableVariableWidth.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) setToolWidths: (recoveredStack1) ratios: (recoveredStack2) availableWidth: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableWidthTools.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:block280056c4Arg1 | 
    | block280056c4Value0 block280056c4Value1 |
    block280056c4Value0 := block280056c4Arg1.
    block280056c4Value1 := (block280056c4Value0) adjustWidth.
    block280056c4Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20022c00; bytecode file offset 0x739e8"
!EwToolResizePolicy methodsFor: 'recovered'!
computeVariableWidthToolRatios
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) variableWidthTools.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:recoveredBlock7Arg1 :recoveredBlock7Arg2 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := (self) ratios.
    recoveredBlock7Value1 := recoveredBlock7Arg2.
    recoveredBlock7Value2 := recoveredBlock7Arg2.
    recoveredBlock7Value3 := (recoveredBlock7Value2) width.
    (recoveredBlock7Value0) at: (recoveredBlock7Value1) put: (recoveredBlock7Value3).
    recoveredBlock7Value4 := recoveredBlock7Arg1.
    recoveredBlock7Value5 := recoveredBlock7Arg2.
    recoveredBlock7Value6 := (recoveredBlock7Value5) width.
    recoveredBlock7Value7 := (recoveredBlock7Value4) + (recoveredBlock7Value6).
    recoveredBlock7Value7
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) inject: (recoveredStack1) into: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) ratios.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) ratios.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 :recoveredBlock42Arg2 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 recoveredBlock42Value5 recoveredBlock42Value6 |
    recoveredBlock42Value0 := (self) ratios.
    recoveredBlock42Value1 := recoveredBlock42Arg1.
    recoveredBlock42Value2 := recoveredBlock42Arg2.
    recoveredBlock42Value3 := recoveredLocal1.
    recoveredBlock42Value4 := (recoveredBlock42Value2) / (recoveredBlock42Value3).
    recoveredBlock42Value5 := (recoveredBlock42Value4) asFloat.
    recoveredBlock42Value6 := (recoveredBlock42Value0) at: (recoveredBlock42Value1) put: (recoveredBlock42Value5).
    recoveredBlock42Value6
].
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x20023920; bytecode file offset 0x74700"
!EwToolResizePolicy methodsFor: 'recovered'!
computeToolRatiosFor: recoveredArg1 using: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 :recoveredBlock9Arg2 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredArg2.
    recoveredBlock9Value2 := recoveredBlock9Arg2.
    recoveredBlock9Value3 := (recoveredBlock9Value1) at: (recoveredBlock9Value2).
    recoveredBlock9Value4 := (recoveredBlock9Value0) + (recoveredBlock9Value3).
    recoveredBlock9Value4
].
    recoveredValue2 := (recoveredValue0) inject: (0) into: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := Dictionary.
    recoveredValue4 := (recoveredValue3) new.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 recoveredBlock38Value4 recoveredBlock38Value5 recoveredBlock38Value6 recoveredBlock38Value7 |
    recoveredBlock38Value0 := recoveredLocal2.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := recoveredArg2.
    recoveredBlock38Value3 := recoveredBlock38Arg1.
    recoveredBlock38Value4 := (recoveredBlock38Value2) at: (recoveredBlock38Value3).
    recoveredBlock38Value5 := recoveredLocal1.
    recoveredBlock38Value6 := (recoveredBlock38Value4) / (recoveredBlock38Value5).
    recoveredBlock38Value7 := (recoveredBlock38Value0) at: (recoveredBlock38Value1) put: (recoveredBlock38Value6).
    recoveredBlock38Value7
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := recoveredLocal2.
    ^recoveredValue7
! !

"extwid.ic method 0x20029738; bytecode file offset 0x7a51c"
!EwToolResizePolicy methodsFor: 'recovered'!
availableVariableWidth
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := (self) toolBar.
    recoveredLocal2 := recoveredValue0.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := (recoveredValue1) marginWidth.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal2.
    recoveredValue4 := (recoveredValue3) children.
    recoveredValue5 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isVariableWidth.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 42] ifFalse: [recoveredBlock19PC := 32].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Arg1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) width.
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) + (recoveredBlock19Stack2).
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 42.
        ].
        recoveredBlock19Step = 42 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal1.
            recoveredBlock19PC := 45.
        ].
        recoveredBlock19Step = 45 ifTrue: [
            recoveredBlock19Stack2 := 2.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Arg1.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) assumedBorder.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) * (recoveredBlock19Stack3).
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) + (recoveredBlock19Stack2).
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack2 := recoveredLocal2.
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) spacing.
            recoveredBlock19PC := 57.
        ].
        recoveredBlock19Step = 57 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) + (recoveredBlock19Stack2).
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 62.
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue7) marginWidth.
    recoveredValue9 := (recoveredValue6) + (recoveredValue8).
    recoveredValue10 := recoveredLocal2.
    recoveredValue11 := (recoveredValue10) spacing.
    recoveredValue12 := (recoveredValue9) - (recoveredValue11).
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := (recoveredValue13) width.
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue14) - (recoveredValue15).
    ^recoveredValue16
! !

"extwid.ic method 0x200364d0; bytecode file offset 0x872d0"
!EwToolResizePolicy methodsFor: 'recovered'!
setToolWidths: recoveredArg1 ratios: recoveredArg2 availableWidth: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 recoveredBlock41Value5 recoveredBlock41Value6 recoveredBlock41Value7 recoveredBlock41Value8 |
    recoveredBlock41Value0 := recoveredLocal4.
    recoveredBlock41Value1 := recoveredBlock41Arg1.
    recoveredBlock41Value2 := recoveredLocal3.
    recoveredBlock41Value3 := recoveredArg2.
    recoveredBlock41Value4 := recoveredBlock41Arg1.
    recoveredBlock41Value5 := (recoveredBlock41Value3) at: (recoveredBlock41Value4).
    recoveredBlock41Value6 := (recoveredBlock41Value2) * (recoveredBlock41Value5).
    recoveredBlock41Value7 := (recoveredBlock41Value6) rounded.
    recoveredBlock41Value8 := (recoveredBlock41Value0) at: (recoveredBlock41Value1) put: (recoveredBlock41Value7).
    recoveredBlock41Value8
].
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:recoveredBlock77Arg1 | 
    | recoveredBlock77Stack0 recoveredBlock77Stack1 recoveredBlock77Stack2 recoveredBlock77Stack3 recoveredBlock77Stack4 recoveredBlock77PC recoveredBlock77Step recoveredBlock77Done recoveredBlock77Result |
    recoveredBlock77Stack0 := self.
    recoveredBlock77PC := 84.
    recoveredBlock77Done := false.
    [recoveredBlock77Done not] whileTrue: [
        recoveredBlock77Step := recoveredBlock77PC.
        recoveredBlock77Step = 84 ifTrue: [
            recoveredBlock77Stack1 := nil.
            recoveredBlock77PC := 85.
        ].
        recoveredBlock77Step = 85 ifTrue: [
            recoveredBlock77Stack2 := recoveredLocal4.
            recoveredBlock77PC := 88.
        ].
        recoveredBlock77Step = 88 ifTrue: [
            recoveredBlock77Stack3 := recoveredBlock77Arg1.
            recoveredBlock77PC := 89.
        ].
        recoveredBlock77Step = 89 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) at: (recoveredBlock77Stack3).
            recoveredBlock77PC := 91.
        ].
        recoveredBlock77Step = 91 ifTrue: [
            recoveredBlock77Stack3 := recoveredBlock77Arg1.
            recoveredBlock77PC := 92.
        ].
        recoveredBlock77Step = 92 ifTrue: [
            recoveredBlock77Stack3 := (recoveredBlock77Stack3) minimumWidth.
            recoveredBlock77PC := 94.
        ].
        recoveredBlock77Step = 94 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) < (recoveredBlock77Stack3).
            recoveredBlock77PC := 95.
        ].
        recoveredBlock77Step = 95 ifTrue: [
            (recoveredBlock77Stack2) ifTrue: [recoveredBlock77PC := 98] ifFalse: [recoveredBlock77PC := 130].
        ].
        recoveredBlock77Step = 98 ifTrue: [
            recoveredBlock77PC := 99.
        ].
        recoveredBlock77Step = 99 ifTrue: [
            recoveredBlock77Stack1 := recoveredBlock77Arg1.
            recoveredBlock77PC := 100.
        ].
        recoveredBlock77Step = 100 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Arg1.
            recoveredBlock77PC := 101.
        ].
        recoveredBlock77Step = 101 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) minimumWidth.
            recoveredBlock77PC := 103.
        ].
        recoveredBlock77Step = 103 ifTrue: [
            (recoveredBlock77Stack1) width: (recoveredBlock77Stack2).
            recoveredBlock77PC := 105.
        ].
        recoveredBlock77Step = 105 ifTrue: [
            recoveredBlock77Stack1 := recoveredLocal5.
            recoveredBlock77PC := 108.
        ].
        recoveredBlock77Step = 108 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Arg1.
            recoveredBlock77PC := 109.
        ].
        recoveredBlock77Step = 109 ifTrue: [
            (recoveredBlock77Stack1) remove: (recoveredBlock77Stack2).
            recoveredBlock77PC := 111.
        ].
        recoveredBlock77Step = 111 ifTrue: [
            recoveredBlock77Stack1 := recoveredLocal3.
            recoveredBlock77PC := 114.
        ].
        recoveredBlock77Step = 114 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Arg1.
            recoveredBlock77PC := 115.
        ].
        recoveredBlock77Step = 115 ifTrue: [
            recoveredBlock77Stack2 := (recoveredBlock77Stack2) minimumWidth.
            recoveredBlock77PC := 117.
        ].
        recoveredBlock77Step = 117 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) - (recoveredBlock77Stack2).
            recoveredBlock77PC := 118.
        ].
        recoveredBlock77Step = 118 ifTrue: [
            recoveredBlock77Stack2 := 0.
            recoveredBlock77PC := 120.
        ].
        recoveredBlock77Step = 120 ifTrue: [
            recoveredBlock77Stack1 := (recoveredBlock77Stack1) max: (recoveredBlock77Stack2).
            recoveredBlock77PC := 122.
        ].
        recoveredBlock77Step = 122 ifTrue: [
            recoveredLocal3 := recoveredBlock77Stack1.
            recoveredBlock77PC := 125.
        ].
        recoveredBlock77Step = 125 ifTrue: [
            recoveredBlock77Stack1 := true.
            recoveredBlock77PC := 126.
        ].
        recoveredBlock77Step = 126 ifTrue: [
            recoveredBlock77Stack2 := recoveredBlock77Stack1.
            recoveredBlock77PC := 127.
        ].
        recoveredBlock77Step = 127 ifTrue: [
            recoveredLocal1 := recoveredBlock77Stack2.
            recoveredBlock77PC := 130.
        ].
        recoveredBlock77Step = 130 ifTrue: [
            recoveredBlock77Result := recoveredBlock77Stack1.
            recoveredBlock77Done := true.
        ].
    ].
    recoveredBlock77Result
].
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) computeToolRatiosFor: (recoveredStack2) using: (recoveredStack3).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := (recoveredStack1) setToolWidths: (recoveredStack2) ratios: (recoveredStack3) availableWidth: (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := [:recoveredBlock169Arg1 | 
    | recoveredBlock169Value0 recoveredBlock169Value1 recoveredBlock169Value2 recoveredBlock169Value3 recoveredBlock169Value4 recoveredBlock169Value5 |
    recoveredBlock169Value0 := recoveredBlock169Arg1.
    recoveredBlock169Value1 := recoveredLocal4.
    recoveredBlock169Value2 := recoveredBlock169Arg1.
    recoveredBlock169Value3 := (recoveredBlock169Value1) at: (recoveredBlock169Value2).
    recoveredBlock169Value4 := (recoveredBlock169Value3) max: (0).
    recoveredBlock169Value5 := (recoveredBlock169Value0) width: (recoveredBlock169Value4).
    recoveredBlock169Value5
].
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

