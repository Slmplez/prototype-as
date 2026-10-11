"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x200000c8; bytecode file offset 0xe340"
!SGMainView methodsFor: 'recovered'!
css4Delimiter
    ^'_'
! !

"ASDGenUtil_base.ic method 0x2000071c; bytecode file offset 0xe8c0"
!SGMainView methodsFor: 'recovered'!
executerFileOutSelectedSpecificationDiagrams
    (self) executerFileOutSelectedSpecificationDiagramsAs: ('gif').
    ^self
! !

"ASDGenUtil_base.ic method 0x2000191c; bytecode file offset 0xfad4"
!SGMainView methodsFor: 'recovered'!
css4HierarchyPathOf: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) parent.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) css4HierarchyPathOf: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) css4Delimiter.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) graphObject.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) getActualName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20002df0; bytecode file offset 0x10fb0"
!SGMainView methodsFor: 'recovered'!
executerFileOutSelectedSpecificationDiagramsAs: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isRootItem.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 71] ifFalse: [recoveredBlock22PC := 36].
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22PC := 37.
        ].
        recoveredBlock22Step = 37 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            recoveredBlock22Stack3 := recoveredArg1.
            recoveredBlock22PC := 42.
        ].
        recoveredBlock22Step = 42 ifTrue: [
            (recoveredBlock22Stack1) css4FileOutSelectedSpecificationDiagramsFor: (recoveredBlock22Stack2) format: (recoveredBlock22Stack3).
            recoveredBlock22PC := 44.
        ].
        recoveredBlock22Step = 44 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal3.
            recoveredBlock22PC := 47.
        ].
        recoveredBlock22Step = 47 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) referencedComplexElementsForItem: (recoveredBlock22Stack2).
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal1.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Stack2 := [:recoveredBlock22Block56Arg1 | 
    | recoveredBlock22Block56Value0 recoveredBlock22Block56Value1 recoveredBlock22Block56Value2 |
    recoveredBlock22Block56Value0 := recoveredBlock22Block56Arg1.
    recoveredBlock22Block56Value1 := recoveredArg1.
    recoveredBlock22Block56Value2 := (self) css4FileOutSelectedSpecificationDiagramsFor: (recoveredBlock22Block56Value0) format: (recoveredBlock22Block56Value1).
    recoveredBlock22Block56Value2
].
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) do: (recoveredBlock22Stack2).
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200038ac; bytecode file offset 0x11a90"
!SGMainView methodsFor: 'recovered'!
executerFileOutTopFoldersTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) css4CreateFileStreamFor: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRootItem.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) children.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 recoveredBlock59Value6 recoveredBlock59Value7 recoveredBlock59Value8 recoveredBlock59Value9 |
    recoveredBlock59Value0 := recoveredLocal3.
    recoveredBlock59Value1 := recoveredBlock59Arg1.
    recoveredBlock59Value2 := (recoveredBlock59Value1) pathName.
    recoveredBlock59Value3 := (recoveredBlock59Value2) , ('\').
    recoveredBlock59Value4 := recoveredBlock59Arg1.
    recoveredBlock59Value5 := (recoveredBlock59Value4) dbObject.
    recoveredBlock59Value6 := (recoveredBlock59Value5) globalIdString.
    recoveredBlock59Value7 := (recoveredBlock59Value3) , (recoveredBlock59Value6).
    (recoveredBlock59Value0) nextPutAll: (recoveredBlock59Value7).
    recoveredBlock59Value8 := recoveredLocal3.
    recoveredBlock59Value9 := (recoveredBlock59Value8) cr.
    recoveredBlock59Value9
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x200043e0; bytecode file offset 0x125bc"
!SGMainView methodsFor: 'recovered'!
css4FileNameFor: recoveredArg1 spec: recoveredArg2 source: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := (self) css4Delimiter.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) specificationName.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (self) css4HierarchyPathOf: (recoveredValue8).
    recoveredValue10 := (recoveredValue7) , (recoveredValue9).
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := WriteStream.
    recoveredValue12 := (recoveredValue11) on: ('').
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := recoveredLocal2.
    recoveredValue14 := [:recoveredBlock40Arg1 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isLetter.
            recoveredBlock40PC := 49.
        ].
        recoveredBlock40Step = 49 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 52] ifFalse: [recoveredBlock40PC := 80].
        ].
        recoveredBlock40Step = 52 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) value.
            recoveredBlock40PC := 55.
        ].
        recoveredBlock40Step = 55 ifTrue: [
            recoveredBlock40Stack2 := 122.
            recoveredBlock40PC := 58.
        ].
        recoveredBlock40Step = 58 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) > (recoveredBlock40Stack2).
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 62] ifFalse: [recoveredBlock40PC := 74].
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 65.
        ].
        recoveredBlock40Step = 65 ifTrue: [
            recoveredBlock40Stack2 := $_.
            recoveredBlock40PC := 68.
        ].
        recoveredBlock40Step = 68 ifTrue: [
            (recoveredBlock40Stack1) nextPut: (recoveredBlock40Stack2).
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 74 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 78.
        ].
        recoveredBlock40Step = 78 ifTrue: [
            (recoveredBlock40Stack1) nextPut: (recoveredBlock40Stack2).
            recoveredBlock40PC := 80.
        ].
        recoveredBlock40Step = 80 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 81.
        ].
        recoveredBlock40Step = 81 ifTrue: [
            recoveredBlock40Stack2 := $_.
            recoveredBlock40PC := 84.
        ].
        recoveredBlock40Step = 84 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 85.
        ].
        recoveredBlock40Step = 85 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 88] ifFalse: [recoveredBlock40PC := 94].
        ].
        recoveredBlock40Step = 88 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 91.
        ].
        recoveredBlock40Step = 91 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 92.
        ].
        recoveredBlock40Step = 92 ifTrue: [
            (recoveredBlock40Stack1) nextPut: (recoveredBlock40Stack2).
            recoveredBlock40PC := 94.
        ].
        recoveredBlock40Step = 94 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 95.
        ].
        recoveredBlock40Step = 95 ifTrue: [
            recoveredBlock40Stack2 := $-.
            recoveredBlock40PC := 98.
        ].
        recoveredBlock40Step = 98 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) = (recoveredBlock40Stack2).
            recoveredBlock40PC := 99.
        ].
        recoveredBlock40Step = 99 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 102] ifFalse: [recoveredBlock40PC := 110].
        ].
        recoveredBlock40Step = 102 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 105.
        ].
        recoveredBlock40Step = 105 ifTrue: [
            recoveredBlock40Stack2 := $_.
            recoveredBlock40PC := 108.
        ].
        recoveredBlock40Step = 108 ifTrue: [
            (recoveredBlock40Stack1) nextPut: (recoveredBlock40Stack2).
            recoveredBlock40PC := 110.
        ].
        recoveredBlock40Step = 110 ifTrue: [
            recoveredBlock40Stack1 := recoveredBlock40Arg1.
            recoveredBlock40PC := 111.
        ].
        recoveredBlock40Step = 111 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) isWhiteSpace.
            recoveredBlock40PC := 113.
        ].
        recoveredBlock40Step = 113 ifTrue: [
            (recoveredBlock40Stack1) ifTrue: [recoveredBlock40PC := 116] ifFalse: [recoveredBlock40PC := 124].
        ].
        recoveredBlock40Step = 116 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 119.
        ].
        recoveredBlock40Step = 119 ifTrue: [
            recoveredBlock40Stack2 := $_.
            recoveredBlock40PC := 122.
        ].
        recoveredBlock40Step = 122 ifTrue: [
            (recoveredBlock40Stack1) nextPut: (recoveredBlock40Stack2).
            recoveredBlock40PC := 124.
        ].
        recoveredBlock40Step = 124 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 125.
        ].
        recoveredBlock40Step = 125 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 126.
        ].
        recoveredBlock40Step = 126 ifTrue: [
            recoveredBlock40Stack2 := (recoveredBlock40Stack2) isDigit.
            recoveredBlock40PC := 128.
        ].
        recoveredBlock40Step = 128 ifTrue: [
            (recoveredBlock40Stack2) ifTrue: [recoveredBlock40PC := 132] ifFalse: [recoveredBlock40PC := 139].
        ].
        recoveredBlock40Step = 132 ifTrue: [
            recoveredBlock40PC := 133.
        ].
        recoveredBlock40Step = 133 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 136.
        ].
        recoveredBlock40Step = 136 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 137.
        ].
        recoveredBlock40Step = 137 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) nextPut: (recoveredBlock40Stack2).
            recoveredBlock40PC := 139.
        ].
        recoveredBlock40Step = 139 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    recoveredValue16 := (recoveredValue15) contents.
    ^recoveredValue16
! !

"ASDGenUtil_base.ic method 0x200048b0; bytecode file offset 0x12a94"
!SGMainView methodsFor: 'recovered'!
css4FileNameFor: recoveredArg1 spec: recoveredArg2 source: recoveredArg3 number: recoveredArg4 path: recoveredArg5
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) label.
    recoveredValue3 := (self) css4Delimiter.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) specificationName.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (self) css4HierarchyPathOf: (recoveredValue8).
    recoveredValue10 := (recoveredValue7) , (recoveredValue9).
    recoveredValue11 := (self) css4Delimiter.
    recoveredValue12 := (recoveredValue10) , (recoveredValue11).
    recoveredValue13 := recoveredArg4.
    recoveredValue14 := (recoveredValue13) printString.
    recoveredValue15 := (recoveredValue12) , (recoveredValue14).
    recoveredLocal2 := recoveredValue15.
    recoveredValue16 := WriteStream.
    recoveredValue17 := (recoveredValue16) on: ('').
    recoveredLocal1 := recoveredValue17.
    recoveredValue18 := recoveredLocal2.
    recoveredValue19 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isLetter.
            recoveredBlock49PC := 59.
        ].
        recoveredBlock49Step = 59 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 62] ifFalse: [recoveredBlock49PC := 90].
        ].
        recoveredBlock49Step = 62 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) value.
            recoveredBlock49PC := 65.
        ].
        recoveredBlock49Step = 65 ifTrue: [
            recoveredBlock49Stack2 := 122.
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) > (recoveredBlock49Stack2).
            recoveredBlock49PC := 69.
        ].
        recoveredBlock49Step = 69 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 72] ifFalse: [recoveredBlock49PC := 84].
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Stack2 := $_.
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 80.
        ].
        recoveredBlock49Step = 80 ifTrue: [
            recoveredBlock49PC := 90.
        ].
        recoveredBlock49Step = 84 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 87.
        ].
        recoveredBlock49Step = 87 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 88.
        ].
        recoveredBlock49Step = 88 ifTrue: [
            (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 90.
        ].
        recoveredBlock49Step = 90 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 91.
        ].
        recoveredBlock49Step = 91 ifTrue: [
            recoveredBlock49Stack2 := $_.
            recoveredBlock49PC := 94.
        ].
        recoveredBlock49Step = 94 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 95.
        ].
        recoveredBlock49Step = 95 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 98] ifFalse: [recoveredBlock49PC := 104].
        ].
        recoveredBlock49Step = 98 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 101.
        ].
        recoveredBlock49Step = 101 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 102.
        ].
        recoveredBlock49Step = 102 ifTrue: [
            (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 104.
        ].
        recoveredBlock49Step = 104 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 105.
        ].
        recoveredBlock49Step = 105 ifTrue: [
            recoveredBlock49Stack2 := $-.
            recoveredBlock49PC := 108.
        ].
        recoveredBlock49Step = 108 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 109.
        ].
        recoveredBlock49Step = 109 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 112] ifFalse: [recoveredBlock49PC := 120].
        ].
        recoveredBlock49Step = 112 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 115.
        ].
        recoveredBlock49Step = 115 ifTrue: [
            recoveredBlock49Stack2 := $_.
            recoveredBlock49PC := 118.
        ].
        recoveredBlock49Step = 118 ifTrue: [
            (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 120.
        ].
        recoveredBlock49Step = 120 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 121.
        ].
        recoveredBlock49Step = 121 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) isWhiteSpace.
            recoveredBlock49PC := 123.
        ].
        recoveredBlock49Step = 123 ifTrue: [
            (recoveredBlock49Stack1) ifTrue: [recoveredBlock49PC := 126] ifFalse: [recoveredBlock49PC := 134].
        ].
        recoveredBlock49Step = 126 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 129.
        ].
        recoveredBlock49Step = 129 ifTrue: [
            recoveredBlock49Stack2 := $_.
            recoveredBlock49PC := 132.
        ].
        recoveredBlock49Step = 132 ifTrue: [
            (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 134.
        ].
        recoveredBlock49Step = 134 ifTrue: [
            recoveredBlock49Stack1 := nil.
            recoveredBlock49PC := 135.
        ].
        recoveredBlock49Step = 135 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 136.
        ].
        recoveredBlock49Step = 136 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) isDigit.
            recoveredBlock49PC := 138.
        ].
        recoveredBlock49Step = 138 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 142] ifFalse: [recoveredBlock49PC := 149].
        ].
        recoveredBlock49Step = 142 ifTrue: [
            recoveredBlock49PC := 143.
        ].
        recoveredBlock49Step = 143 ifTrue: [
            recoveredBlock49Stack1 := recoveredLocal1.
            recoveredBlock49PC := 146.
        ].
        recoveredBlock49Step = 146 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 147.
        ].
        recoveredBlock49Step = 147 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) nextPut: (recoveredBlock49Stack2).
            recoveredBlock49PC := 149.
        ].
        recoveredBlock49Step = 149 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
    (recoveredValue18) do: (recoveredValue19).
    recoveredValue20 := recoveredArg5.
    recoveredValue21 := (recoveredValue20) , ('\').
    recoveredValue22 := recoveredLocal1.
    recoveredValue23 := (recoveredValue22) contents.
    recoveredValue24 := (recoveredValue21) , (recoveredValue23).
    ^recoveredValue24
! !

"ASDGenUtil_base.ic method 0x20004bc8; bytecode file offset 0x12db4"
!SGMainView methodsFor: 'recovered'!
css4PrintGrafic: recoveredArg1 format: recoveredArg2 file: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'ps'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 'eps'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'rtf'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'gif'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'gif'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 75].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := '.gif'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) printGraphicsForSource: (recoveredStack2) onGIFFile: (recoveredStack3) selectedCategoryName: (recoveredStack4) scaleFactor: (recoveredStack5).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'ps'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := '.ps'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack5 := 100.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) printGraphicsForSource: (recoveredStack2) onPostScriptFile: (recoveredStack3) selectedCategoryName: (recoveredStack4) scaleFactor: (recoveredStack5).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'eps'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 123].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := '.eps'.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack5 := 100.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) printGraphicsForSource: (recoveredStack2) onPostScriptFile: (recoveredStack3) selectedCategoryName: (recoveredStack4) scaleFactor: (recoveredStack5).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'rtf'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 145].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := '.rtf'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) printGraphicsForSource: (recoveredStack2) onRTFFile: (recoveredStack3) selectedCategoryName: (recoveredStack4) scaleFactor: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 167].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := '.bmp'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack4 := ''.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack1) printGraphicsForSource: (recoveredStack2) onBitmapFile: (recoveredStack3) selectedCategoryName: (recoveredStack4) scaleFactor: (recoveredStack5).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20005368; bytecode file offset 0x1355c"
!SGMainView methodsFor: 'recovered'!
css4FileOutDictionary: recoveredArg1 forSpecification: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'publicSpecifications'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRead.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicSpecifications.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := nil.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 56.
        ].
        recoveredBlock45Step = 56 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) specSourceOrNil.
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            (recoveredBlock45Stack2 == nil) ifTrue: [recoveredBlock45PC := 173] ifFalse: [recoveredBlock45PC := 62].
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45PC := 63.
        ].
        recoveredBlock45Step = 63 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal3.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack2 := recoveredArg2.
            recoveredBlock45PC := 69.
        ].
        recoveredBlock45Step = 69 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) getObject.
            recoveredBlock45PC := 70.
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg1.
            recoveredBlock45PC := 73.
        ].
        recoveredBlock45Step = 73 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) hierarchySources: (recoveredBlock45Stack2) specification: (recoveredBlock45Stack3).
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local1.
            recoveredBlock45PC := 81.
        ].
        recoveredBlock45Step = 81 ifTrue: [
            recoveredBlock45Stack2 := [:recoveredBlock45Block81Arg1 | 
    | recoveredBlock45Block81Stack0 recoveredBlock45Block81Stack1 recoveredBlock45Block81Stack2 recoveredBlock45Block81Stack3 recoveredBlock45Block81Stack4 recoveredBlock45Block81PC recoveredBlock45Block81Step recoveredBlock45Block81Done recoveredBlock45Block81Result |
    recoveredBlock45Block81Stack0 := self.
    recoveredBlock45Block81PC := 88.
    recoveredBlock45Block81Done := false.
    [recoveredBlock45Block81Done not] whileTrue: [
        recoveredBlock45Block81Step := recoveredBlock45Block81PC.
        recoveredBlock45Block81Step = 88 ifTrue: [
            recoveredBlock45Block81Stack1 := recoveredArg2.
            recoveredBlock45Block81PC := 91.
        ].
        recoveredBlock45Block81Step = 91 ifTrue: [
            recoveredBlock45Block81Stack2 := recoveredBlock45Arg1.
            recoveredBlock45Block81PC := 94.
        ].
        recoveredBlock45Block81Step = 94 ifTrue: [
            recoveredBlock45Block81Stack3 := recoveredBlock45Block81Arg1.
            recoveredBlock45Block81PC := 95.
        ].
        recoveredBlock45Block81Step = 95 ifTrue: [
            recoveredBlock45Block81Stack0 := (recoveredBlock45Block81Stack0) css4FileNameFor: (recoveredBlock45Block81Stack1) spec: (recoveredBlock45Block81Stack2) source: (recoveredBlock45Block81Stack3).
            recoveredBlock45Block81PC := 98.
        ].
        recoveredBlock45Block81Step = 98 ifTrue: [
            recoveredLocal2 := recoveredBlock45Block81Stack0.
            recoveredBlock45Block81PC := 101.
        ].
        recoveredBlock45Block81Step = 101 ifTrue: [
            recoveredBlock45Block81Stack0 := recoveredArg1.
            recoveredBlock45Block81PC := 104.
        ].
        recoveredBlock45Block81Step = 104 ifTrue: [
            recoveredBlock45Block81Stack1 := recoveredLocal2.
            recoveredBlock45Block81PC := 107.
        ].
        recoveredBlock45Block81Step = 107 ifTrue: [
            recoveredBlock45Block81Stack2 := [].
            recoveredBlock45Block81PC := 109.
        ].
        recoveredBlock45Block81Step = 109 ifTrue: [
            recoveredBlock45Block81Stack0 := (recoveredBlock45Block81Stack0) at: (recoveredBlock45Block81Stack1) ifAbsent: (recoveredBlock45Block81Stack2).
            recoveredBlock45Block81PC := 111.
        ].
        recoveredBlock45Block81Step = 111 ifTrue: [
            (recoveredBlock45Block81Stack0 ~~ nil) ifTrue: [recoveredBlock45Block81PC := 130] ifFalse: [recoveredBlock45Block81PC := 114].
        ].
        recoveredBlock45Block81Step = 114 ifTrue: [
            recoveredBlock45Block81Stack0 := recoveredArg1.
            recoveredBlock45Block81PC := 117.
        ].
        recoveredBlock45Block81Step = 117 ifTrue: [
            recoveredBlock45Block81Stack1 := recoveredLocal2.
            recoveredBlock45Block81PC := 120.
        ].
        recoveredBlock45Block81Step = 120 ifTrue: [
            recoveredBlock45Block81Stack2 := OrderedCollection.
            recoveredBlock45Block81PC := 122.
        ].
        recoveredBlock45Block81Step = 122 ifTrue: [
            recoveredBlock45Block81Stack3 := recoveredBlock45Block81Arg1.
            recoveredBlock45Block81PC := 123.
        ].
        recoveredBlock45Block81Step = 123 ifTrue: [
            recoveredBlock45Block81Stack2 := (recoveredBlock45Block81Stack2) with: (recoveredBlock45Block81Stack3).
            recoveredBlock45Block81PC := 125.
        ].
        recoveredBlock45Block81Step = 125 ifTrue: [
            recoveredBlock45Block81Stack0 := (recoveredBlock45Block81Stack0) at: (recoveredBlock45Block81Stack1) put: (recoveredBlock45Block81Stack2).
            recoveredBlock45Block81PC := 127.
        ].
        recoveredBlock45Block81Step = 127 ifTrue: [
            recoveredBlock45Block81PC := 141.
        ].
        recoveredBlock45Block81Step = 130 ifTrue: [
            recoveredBlock45Block81Stack0 := recoveredArg1.
            recoveredBlock45Block81PC := 133.
        ].
        recoveredBlock45Block81Step = 133 ifTrue: [
            recoveredBlock45Block81Stack1 := recoveredLocal2.
            recoveredBlock45Block81PC := 136.
        ].
        recoveredBlock45Block81Step = 136 ifTrue: [
            recoveredBlock45Block81Stack0 := (recoveredBlock45Block81Stack0) at: (recoveredBlock45Block81Stack1).
            recoveredBlock45Block81PC := 138.
        ].
        recoveredBlock45Block81Step = 138 ifTrue: [
            recoveredBlock45Block81Stack1 := recoveredBlock45Block81Arg1.
            recoveredBlock45Block81PC := 139.
        ].
        recoveredBlock45Block81Step = 139 ifTrue: [
            recoveredBlock45Block81Stack0 := (recoveredBlock45Block81Stack0) add: (recoveredBlock45Block81Stack1).
            recoveredBlock45Block81PC := 141.
        ].
        recoveredBlock45Block81Step = 141 ifTrue: [
            recoveredBlock45Block81Result := recoveredBlock45Block81Stack0.
            recoveredBlock45Block81Done := true.
        ].
    ].
    recoveredBlock45Block81Result
].
            recoveredBlock45PC := 142.
        ].
        recoveredBlock45Step = 142 ifTrue: [
            (recoveredBlock45Stack1) do: (recoveredBlock45Stack2).
            recoveredBlock45PC := 144.
        ].
        recoveredBlock45Step = 144 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Local1.
            recoveredBlock45PC := 147.
        ].
        recoveredBlock45Step = 147 ifTrue: [
            recoveredBlock45Stack2 := [:recoveredBlock45Block147Arg1 | 
    | recoveredBlock45Block147Value0 recoveredBlock45Block147Value1 recoveredBlock45Block147Value2 recoveredBlock45Block147Value3 |
    recoveredBlock45Block147Value0 := recoveredBlock45Block147Arg1.
    recoveredBlock45Block147Value1 := recoveredArg2.
    recoveredBlock45Block147Value2 := (recoveredBlock45Block147Value1) getObject.
    (recoveredBlock45Block147Value0) parent: (recoveredBlock45Block147Value2).
    recoveredBlock45Block147Value3 := ('Kk') == ('WHAT3136').
    recoveredBlock45Block147Value3
].
            recoveredBlock45PC := 167.
        ].
        recoveredBlock45Step = 167 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) do: (recoveredBlock45Stack2).
            recoveredBlock45PC := 169.
        ].
        recoveredBlock45Step = 169 ifTrue: [
            recoveredBlock45Stack2 := nil.
            recoveredBlock45PC := 170.
        ].
        recoveredBlock45Step = 170 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack2.
            recoveredBlock45PC := 173.
        ].
        recoveredBlock45Step = 173 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredPC := 204.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'sgClass'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := (recoveredStack3) getObject.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack1) css4FileOutDictionary: (recoveredStack2) forSpecification: (recoveredStack3).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20005a70; bytecode file offset 0x13c80"
!SGMainView methodsFor: 'recovered'!
executerFileOutSelectedSpecificationDiagramsAs: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'ps'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'eps'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 'rtf'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'gif'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbWidget.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) classList.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedItems.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := [:recoveredBlock84Arg1 | 
    | recoveredBlock84Stack0 recoveredBlock84Stack1 recoveredBlock84Stack2 recoveredBlock84Stack3 recoveredBlock84PC recoveredBlock84Step recoveredBlock84Done recoveredBlock84Result |
    recoveredBlock84Stack0 := self.
    recoveredBlock84PC := 90.
    recoveredBlock84Done := false.
    [recoveredBlock84Done not] whileTrue: [
        recoveredBlock84Step := recoveredBlock84PC.
        recoveredBlock84Step = 90 ifTrue: [
            recoveredBlock84Stack1 := recoveredLocal5.
            recoveredBlock84PC := 93.
        ].
        recoveredBlock84Step = 93 ifTrue: [
            recoveredBlock84Stack2 := recoveredBlock84Arg1.
            recoveredBlock84PC := 94.
        ].
        recoveredBlock84Step = 94 ifTrue: [
            (recoveredBlock84Stack0) css4FileOutDictionary: (recoveredBlock84Stack1) forSpecification: (recoveredBlock84Stack2).
            recoveredBlock84PC := 96.
        ].
        recoveredBlock84Step = 96 ifTrue: [
            recoveredBlock84Stack0 := nil.
            recoveredBlock84PC := 97.
        ].
        recoveredBlock84Step = 97 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 98.
        ].
        recoveredBlock84Step = 98 ifTrue: [
            recoveredBlock84Stack1 := (recoveredBlock84Stack1) isRootItem.
            recoveredBlock84PC := 100.
        ].
        recoveredBlock84Step = 100 ifTrue: [
            (recoveredBlock84Stack1) ifTrue: [recoveredBlock84PC := 133] ifFalse: [recoveredBlock84PC := 104].
        ].
        recoveredBlock84Step = 104 ifTrue: [
            recoveredBlock84PC := 105.
        ].
        recoveredBlock84Step = 105 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal7.
            recoveredBlock84PC := 108.
        ].
        recoveredBlock84Step = 108 ifTrue: [
            recoveredBlock84Stack1 := recoveredBlock84Arg1.
            recoveredBlock84PC := 109.
        ].
        recoveredBlock84Step = 109 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) referencedComplexElementsForItem: (recoveredBlock84Stack1).
            recoveredBlock84PC := 111.
        ].
        recoveredBlock84Step = 111 ifTrue: [
            recoveredLocal6 := recoveredBlock84Stack0.
            recoveredBlock84PC := 114.
        ].
        recoveredBlock84Step = 114 ifTrue: [
            recoveredBlock84Stack0 := recoveredLocal6.
            recoveredBlock84PC := 117.
        ].
        recoveredBlock84Step = 117 ifTrue: [
            recoveredBlock84Stack1 := [:recoveredBlock84Block117Arg1 | 
    | recoveredBlock84Block117Value0 recoveredBlock84Block117Value1 recoveredBlock84Block117Value2 |
    recoveredBlock84Block117Value0 := recoveredLocal5.
    recoveredBlock84Block117Value1 := recoveredBlock84Block117Arg1.
    recoveredBlock84Block117Value2 := (self) css4FileOutDictionary: (recoveredBlock84Block117Value0) forSpecification: (recoveredBlock84Block117Value1).
    recoveredBlock84Block117Value2
].
            recoveredBlock84PC := 131.
        ].
        recoveredBlock84Step = 131 ifTrue: [
            recoveredBlock84Stack0 := (recoveredBlock84Stack0) do: (recoveredBlock84Stack1).
            recoveredBlock84PC := 133.
        ].
        recoveredBlock84Step = 133 ifTrue: [
            recoveredBlock84Result := recoveredBlock84Stack0.
            recoveredBlock84Done := true.
        ].
    ].
    recoveredBlock84Result
].
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := [:recoveredBlock139Arg1 | 
    | recoveredBlock139Local1 recoveredBlock139Stack0 recoveredBlock139Stack1 recoveredBlock139Stack2 recoveredBlock139Stack3 recoveredBlock139Stack4 recoveredBlock139Stack5 recoveredBlock139Stack6 recoveredBlock139Stack7 recoveredBlock139PC recoveredBlock139Step recoveredBlock139Done recoveredBlock139Result |
    recoveredBlock139Stack0 := self.
    recoveredBlock139PC := 146.
    recoveredBlock139Done := false.
    [recoveredBlock139Done not] whileTrue: [
        recoveredBlock139Step := recoveredBlock139PC.
        recoveredBlock139Step = 146 ifTrue: [
            recoveredBlock139Stack1 := recoveredBlock139Arg1.
            recoveredBlock139PC := 147.
        ].
        recoveredBlock139Step = 147 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) value.
            recoveredBlock139PC := 149.
        ].
        recoveredBlock139Step = 149 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) size.
            recoveredBlock139PC := 151.
        ].
        recoveredBlock139Step = 151 ifTrue: [
            recoveredBlock139Stack2 := 1.
            recoveredBlock139PC := 153.
        ].
        recoveredBlock139Step = 153 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) = (recoveredBlock139Stack2).
            recoveredBlock139PC := 154.
        ].
        recoveredBlock139Step = 154 ifTrue: [
            (recoveredBlock139Stack1) ifTrue: [recoveredBlock139PC := 158] ifFalse: [recoveredBlock139PC := 186].
        ].
        recoveredBlock139Step = 158 ifTrue: [
            recoveredBlock139Stack1 := self.
            recoveredBlock139PC := 159.
        ].
        recoveredBlock139Step = 159 ifTrue: [
            recoveredBlock139Stack2 := recoveredBlock139Arg1.
            recoveredBlock139PC := 160.
        ].
        recoveredBlock139Step = 160 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) value.
            recoveredBlock139PC := 162.
        ].
        recoveredBlock139Step = 162 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) first.
            recoveredBlock139PC := 164.
        ].
        recoveredBlock139Step = 164 ifTrue: [
            recoveredBlock139Stack3 := recoveredLocal4.
            recoveredBlock139PC := 167.
        ].
        recoveredBlock139Step = 167 ifTrue: [
            recoveredBlock139Stack4 := recoveredArg2.
            recoveredBlock139PC := 170.
        ].
        recoveredBlock139Step = 170 ifTrue: [
            recoveredBlock139Stack5 := '\'.
            recoveredBlock139PC := 172.
        ].
        recoveredBlock139Step = 172 ifTrue: [
            recoveredBlock139Stack4 := (recoveredBlock139Stack4) , (recoveredBlock139Stack5).
            recoveredBlock139PC := 174.
        ].
        recoveredBlock139Step = 174 ifTrue: [
            recoveredBlock139Stack5 := recoveredBlock139Arg1.
            recoveredBlock139PC := 175.
        ].
        recoveredBlock139Step = 175 ifTrue: [
            recoveredBlock139Stack5 := (recoveredBlock139Stack5) key.
            recoveredBlock139PC := 177.
        ].
        recoveredBlock139Step = 177 ifTrue: [
            recoveredBlock139Stack4 := (recoveredBlock139Stack4) , (recoveredBlock139Stack5).
            recoveredBlock139PC := 179.
        ].
        recoveredBlock139Step = 179 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) css4PrintGrafic: (recoveredBlock139Stack2) format: (recoveredBlock139Stack3) file: (recoveredBlock139Stack4).
            recoveredBlock139PC := 182.
        ].
        recoveredBlock139Step = 182 ifTrue: [
            recoveredBlock139PC := 247.
        ].
        recoveredBlock139Step = 186 ifTrue: [
            recoveredBlock139Stack1 := 0.
            recoveredBlock139PC := 188.
        ].
        recoveredBlock139Step = 188 ifTrue: [
            recoveredBlock139Local1 := recoveredBlock139Stack1.
            recoveredBlock139PC := 189.
        ].
        recoveredBlock139Step = 189 ifTrue: [
            recoveredBlock139Stack1 := recoveredBlock139Arg1.
            recoveredBlock139PC := 190.
        ].
        recoveredBlock139Step = 190 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) value.
            recoveredBlock139PC := 192.
        ].
        recoveredBlock139Step = 192 ifTrue: [
            recoveredBlock139Stack1 := (recoveredBlock139Stack1) size.
            recoveredBlock139PC := 194.
        ].
        recoveredBlock139Step = 194 ifTrue: [
            recoveredBlock139PC := 233.
        ].
        recoveredBlock139Step = 198 ifTrue: [
            recoveredBlock139Stack2 := self.
            recoveredBlock139PC := 199.
        ].
        recoveredBlock139Step = 199 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Arg1.
            recoveredBlock139PC := 200.
        ].
        recoveredBlock139Step = 200 ifTrue: [
            recoveredBlock139Stack3 := (recoveredBlock139Stack3) value.
            recoveredBlock139PC := 202.
        ].
        recoveredBlock139Step = 202 ifTrue: [
            recoveredBlock139Stack4 := recoveredBlock139Local1.
            recoveredBlock139PC := 203.
        ].
        recoveredBlock139Step = 203 ifTrue: [
            recoveredBlock139Stack3 := (recoveredBlock139Stack3) at: (recoveredBlock139Stack4).
            recoveredBlock139PC := 205.
        ].
        recoveredBlock139Step = 205 ifTrue: [
            recoveredBlock139Stack4 := recoveredLocal4.
            recoveredBlock139PC := 208.
        ].
        recoveredBlock139Step = 208 ifTrue: [
            recoveredBlock139Stack5 := recoveredArg2.
            recoveredBlock139PC := 211.
        ].
        recoveredBlock139Step = 211 ifTrue: [
            recoveredBlock139Stack6 := '\'.
            recoveredBlock139PC := 213.
        ].
        recoveredBlock139Step = 213 ifTrue: [
            recoveredBlock139Stack5 := (recoveredBlock139Stack5) , (recoveredBlock139Stack6).
            recoveredBlock139PC := 215.
        ].
        recoveredBlock139Step = 215 ifTrue: [
            recoveredBlock139Stack6 := recoveredBlock139Arg1.
            recoveredBlock139PC := 216.
        ].
        recoveredBlock139Step = 216 ifTrue: [
            recoveredBlock139Stack6 := (recoveredBlock139Stack6) key.
            recoveredBlock139PC := 218.
        ].
        recoveredBlock139Step = 218 ifTrue: [
            recoveredBlock139Stack5 := (recoveredBlock139Stack5) , (recoveredBlock139Stack6).
            recoveredBlock139PC := 220.
        ].
        recoveredBlock139Step = 220 ifTrue: [
            recoveredBlock139Stack6 := self.
            recoveredBlock139PC := 221.
        ].
        recoveredBlock139Step = 221 ifTrue: [
            recoveredBlock139Stack6 := (recoveredBlock139Stack6) css4Delimiter.
            recoveredBlock139PC := 223.
        ].
        recoveredBlock139Step = 223 ifTrue: [
            recoveredBlock139Stack5 := (recoveredBlock139Stack5) , (recoveredBlock139Stack6).
            recoveredBlock139PC := 225.
        ].
        recoveredBlock139Step = 225 ifTrue: [
            recoveredBlock139Stack6 := recoveredBlock139Local1.
            recoveredBlock139PC := 226.
        ].
        recoveredBlock139Step = 226 ifTrue: [
            recoveredBlock139Stack6 := (recoveredBlock139Stack6) printString.
            recoveredBlock139PC := 228.
        ].
        recoveredBlock139Step = 228 ifTrue: [
            recoveredBlock139Stack5 := (recoveredBlock139Stack5) , (recoveredBlock139Stack6).
            recoveredBlock139PC := 230.
        ].
        recoveredBlock139Step = 230 ifTrue: [
            (recoveredBlock139Stack2) css4PrintGrafic: (recoveredBlock139Stack3) format: (recoveredBlock139Stack4) file: (recoveredBlock139Stack5).
            recoveredBlock139PC := 233.
        ].
        recoveredBlock139Step = 233 ifTrue: [
            (recoveredBlock139Stack1 isInteger and: [recoveredBlock139Local1 isInteger]) ifTrue: [(recoveredBlock139Local1 + 1 <= recoveredBlock139Stack1) ifTrue: [recoveredBlock139Local1 := recoveredBlock139Local1 + 1. recoveredBlock139PC := 198] ifFalse: [recoveredBlock139Local1 := nil. recoveredBlock139PC := 247]] ifFalse: [recoveredBlock139PC := 237].
        ].
        recoveredBlock139Step = 237 ifTrue: [
            recoveredBlock139Stack2 := recoveredBlock139Stack1.
            recoveredBlock139PC := 238.
        ].
        recoveredBlock139Step = 238 ifTrue: [
            recoveredBlock139Stack3 := recoveredBlock139Local1.
            recoveredBlock139PC := 239.
        ].
        recoveredBlock139Step = 239 ifTrue: [
            recoveredBlock139Stack3 := (recoveredBlock139Stack3) + (1).
            recoveredBlock139PC := 240.
        ].
        recoveredBlock139Step = 240 ifTrue: [
            recoveredBlock139Stack4 := recoveredBlock139Stack3.
            recoveredBlock139PC := 241.
        ].
        recoveredBlock139Step = 241 ifTrue: [
            recoveredBlock139Local1 := recoveredBlock139Stack4.
            recoveredBlock139PC := 242.
        ].
        recoveredBlock139Step = 242 ifTrue: [
            recoveredBlock139Stack2 := (recoveredBlock139Stack2) < (recoveredBlock139Stack3).
            recoveredBlock139PC := 243.
        ].
        recoveredBlock139Step = 243 ifTrue: [
            (recoveredBlock139Stack2) ifTrue: [recoveredBlock139PC := 245] ifFalse: [recoveredBlock139PC := 198].
        ].
        recoveredBlock139Step = 245 ifTrue: [
            recoveredBlock139Stack2 := nil.
            recoveredBlock139PC := 246.
        ].
        recoveredBlock139Step = 246 ifTrue: [
            recoveredBlock139Local1 := recoveredBlock139Stack2.
            recoveredBlock139PC := 247.
        ].
        recoveredBlock139Step = 247 ifTrue: [
            recoveredBlock139Result := recoveredBlock139Stack1.
            recoveredBlock139Done := true.
        ].
    ].
    recoveredBlock139Result
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20006680; bytecode file offset 0x148a4"
!SGMainView methodsFor: 'recovered'!
css4FileOutSelectedSpecificationDiagramsFor: recoveredArg1 format: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'ps'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'rtf'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'gif'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'publicSpecifications'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRead.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 344].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicSpecifications.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Stack0 recoveredBlock95Stack1 recoveredBlock95Stack2 recoveredBlock95Stack3 recoveredBlock95Stack4 recoveredBlock95PC recoveredBlock95Step recoveredBlock95Done recoveredBlock95Result |
    recoveredBlock95Stack0 := self.
    recoveredBlock95PC := 102.
    recoveredBlock95Done := false.
    [recoveredBlock95Done not] whileTrue: [
        recoveredBlock95Step := recoveredBlock95PC.
        recoveredBlock95Step = 102 ifTrue: [
            recoveredBlock95Stack1 := nil.
            recoveredBlock95PC := 103.
        ].
        recoveredBlock95Step = 103 ifTrue: [
            recoveredBlock95Stack2 := recoveredBlock95Arg1.
            recoveredBlock95PC := 106.
        ].
        recoveredBlock95Step = 106 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) specSourceOrNil.
            recoveredBlock95PC := 108.
        ].
        recoveredBlock95Step = 108 ifTrue: [
            (recoveredBlock95Stack2 == nil) ifTrue: [recoveredBlock95PC := 337] ifFalse: [recoveredBlock95PC := 112].
        ].
        recoveredBlock95Step = 112 ifTrue: [
            recoveredBlock95PC := 113.
        ].
        recoveredBlock95Step = 113 ifTrue: [
            recoveredBlock95Stack1 := recoveredLocal3.
            recoveredBlock95PC := 116.
        ].
        recoveredBlock95Step = 116 ifTrue: [
            recoveredBlock95Stack2 := recoveredArg1.
            recoveredBlock95PC := 119.
        ].
        recoveredBlock95Step = 119 ifTrue: [
            recoveredBlock95Stack2 := (recoveredBlock95Stack2) getObject.
            recoveredBlock95PC := 121.
        ].
        recoveredBlock95Step = 121 ifTrue: [
            recoveredBlock95Stack3 := recoveredBlock95Arg1.
            recoveredBlock95PC := 124.
        ].
        recoveredBlock95Step = 124 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) hierarchySources: (recoveredBlock95Stack2) specification: (recoveredBlock95Stack3).
            recoveredBlock95PC := 126.
        ].
        recoveredBlock95Step = 126 ifTrue: [
            recoveredBlock95Stack2 := [:recoveredBlock95Block126Arg1 | 
    | recoveredBlock95Block126Local1 recoveredBlock95Block126Stack0 recoveredBlock95Block126Stack1 recoveredBlock95Block126Stack2 recoveredBlock95Block126Stack3 recoveredBlock95Block126Stack4 recoveredBlock95Block126Stack5 recoveredBlock95Block126PC recoveredBlock95Block126Step recoveredBlock95Block126Done recoveredBlock95Block126Result |
    recoveredBlock95Block126Stack0 := self.
    recoveredBlock95Block126PC := 132.
    recoveredBlock95Block126Done := false.
    [recoveredBlock95Block126Done not] whileTrue: [
        recoveredBlock95Block126Step := recoveredBlock95Block126PC.
        recoveredBlock95Block126Step = 132 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredBlock95Block126Arg1.
            recoveredBlock95Block126PC := 133.
        ].
        recoveredBlock95Block126Step = 133 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) css4HierarchyPathOf: (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 135.
        ].
        recoveredBlock95Block126Step = 135 ifTrue: [
            recoveredBlock95Block126Local1 := recoveredBlock95Block126Stack0.
            recoveredBlock95Block126PC := 136.
        ].
        recoveredBlock95Block126Step = 136 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredBlock95Block126Arg1.
            recoveredBlock95Block126PC := 137.
        ].
        recoveredBlock95Block126Step = 137 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredArg1.
            recoveredBlock95Block126PC := 140.
        ].
        recoveredBlock95Block126Step = 140 ifTrue: [
            recoveredBlock95Block126Stack1 := (recoveredBlock95Block126Stack1) getObject.
            recoveredBlock95Block126PC := 142.
        ].
        recoveredBlock95Block126Step = 142 ifTrue: [
            (recoveredBlock95Block126Stack0) parent: (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 144.
        ].
        recoveredBlock95Block126Step = 144 ifTrue: [
            recoveredBlock95Block126Stack0 := 'Kk'.
            recoveredBlock95Block126PC := 146.
        ].
        recoveredBlock95Block126Step = 146 ifTrue: [
            recoveredBlock95Block126Stack1 := 'WHAT3136'.
            recoveredBlock95Block126PC := 148.
        ].
        recoveredBlock95Block126Step = 148 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) == (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 149.
        ].
        recoveredBlock95Block126Step = 149 ifTrue: [
            recoveredBlock95Block126PC := 150.
        ].
        recoveredBlock95Block126Step = 150 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal1.
            recoveredBlock95Block126PC := 153.
        ].
        recoveredBlock95Block126Step = 153 ifTrue: [
            recoveredBlock95Block126Stack1 := 'gif'.
            recoveredBlock95Block126PC := 155.
        ].
        recoveredBlock95Block126Step = 155 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) = (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 156.
        ].
        recoveredBlock95Block126Step = 156 ifTrue: [
            (recoveredBlock95Block126Stack0) ifTrue: [recoveredBlock95Block126PC := 160] ifFalse: [recoveredBlock95Block126PC := 194].
        ].
        recoveredBlock95Block126Step = 160 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal3.
            recoveredBlock95Block126PC := 163.
        ].
        recoveredBlock95Block126Step = 163 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredBlock95Block126Arg1.
            recoveredBlock95Block126PC := 164.
        ].
        recoveredBlock95Block126Step = 164 ifTrue: [
            recoveredBlock95Block126Stack2 := recoveredBlock95Arg1.
            recoveredBlock95Block126PC := 167.
        ].
        recoveredBlock95Block126Step = 167 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) specificationName.
            recoveredBlock95Block126PC := 169.
        ].
        recoveredBlock95Block126Step = 169 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredBlock95Block126Local1.
            recoveredBlock95Block126PC := 170.
        ].
        recoveredBlock95Block126Step = 170 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 172.
        ].
        recoveredBlock95Block126Step = 172 ifTrue: [
            recoveredBlock95Block126Stack3 := '_'.
            recoveredBlock95Block126PC := 174.
        ].
        recoveredBlock95Block126Step = 174 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 176.
        ].
        recoveredBlock95Block126Step = 176 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredLocal2.
            recoveredBlock95Block126PC := 179.
        ].
        recoveredBlock95Block126Step = 179 ifTrue: [
            recoveredBlock95Block126Stack3 := (recoveredBlock95Block126Stack3) printString.
            recoveredBlock95Block126PC := 181.
        ].
        recoveredBlock95Block126Step = 181 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 183.
        ].
        recoveredBlock95Block126Step = 183 ifTrue: [
            recoveredBlock95Block126Stack3 := '.gif'.
            recoveredBlock95Block126PC := 185.
        ].
        recoveredBlock95Block126Step = 185 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 187.
        ].
        recoveredBlock95Block126Step = 187 ifTrue: [
            recoveredBlock95Block126Stack3 := ''.
            recoveredBlock95Block126PC := 189.
        ].
        recoveredBlock95Block126Step = 189 ifTrue: [
            recoveredBlock95Block126Stack4 := 1.
            recoveredBlock95Block126PC := 191.
        ].
        recoveredBlock95Block126Step = 191 ifTrue: [
            (recoveredBlock95Block126Stack0) printGraphicsForSource: (recoveredBlock95Block126Stack1) onGIFFile: (recoveredBlock95Block126Stack2) selectedCategoryName: (recoveredBlock95Block126Stack3) scaleFactor: (recoveredBlock95Block126Stack4).
            recoveredBlock95Block126PC := 194.
        ].
        recoveredBlock95Block126Step = 194 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal1.
            recoveredBlock95Block126PC := 197.
        ].
        recoveredBlock95Block126Step = 197 ifTrue: [
            recoveredBlock95Block126Stack1 := 'ps'.
            recoveredBlock95Block126PC := 199.
        ].
        recoveredBlock95Block126Step = 199 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) = (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 200.
        ].
        recoveredBlock95Block126Step = 200 ifTrue: [
            (recoveredBlock95Block126Stack0) ifTrue: [recoveredBlock95Block126PC := 204] ifFalse: [recoveredBlock95Block126PC := 238].
        ].
        recoveredBlock95Block126Step = 204 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal3.
            recoveredBlock95Block126PC := 207.
        ].
        recoveredBlock95Block126Step = 207 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredBlock95Block126Arg1.
            recoveredBlock95Block126PC := 208.
        ].
        recoveredBlock95Block126Step = 208 ifTrue: [
            recoveredBlock95Block126Stack2 := recoveredBlock95Arg1.
            recoveredBlock95Block126PC := 211.
        ].
        recoveredBlock95Block126Step = 211 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) specificationName.
            recoveredBlock95Block126PC := 213.
        ].
        recoveredBlock95Block126Step = 213 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredBlock95Block126Local1.
            recoveredBlock95Block126PC := 214.
        ].
        recoveredBlock95Block126Step = 214 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 216.
        ].
        recoveredBlock95Block126Step = 216 ifTrue: [
            recoveredBlock95Block126Stack3 := '_'.
            recoveredBlock95Block126PC := 218.
        ].
        recoveredBlock95Block126Step = 218 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 220.
        ].
        recoveredBlock95Block126Step = 220 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredLocal2.
            recoveredBlock95Block126PC := 223.
        ].
        recoveredBlock95Block126Step = 223 ifTrue: [
            recoveredBlock95Block126Stack3 := (recoveredBlock95Block126Stack3) printString.
            recoveredBlock95Block126PC := 225.
        ].
        recoveredBlock95Block126Step = 225 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 227.
        ].
        recoveredBlock95Block126Step = 227 ifTrue: [
            recoveredBlock95Block126Stack3 := '.ps'.
            recoveredBlock95Block126PC := 229.
        ].
        recoveredBlock95Block126Step = 229 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 231.
        ].
        recoveredBlock95Block126Step = 231 ifTrue: [
            recoveredBlock95Block126Stack3 := ''.
            recoveredBlock95Block126PC := 233.
        ].
        recoveredBlock95Block126Step = 233 ifTrue: [
            recoveredBlock95Block126Stack4 := 1.
            recoveredBlock95Block126PC := 235.
        ].
        recoveredBlock95Block126Step = 235 ifTrue: [
            (recoveredBlock95Block126Stack0) printGraphicsForSource: (recoveredBlock95Block126Stack1) onPostScriptFile: (recoveredBlock95Block126Stack2) selectedCategoryName: (recoveredBlock95Block126Stack3) scaleFactor: (recoveredBlock95Block126Stack4).
            recoveredBlock95Block126PC := 238.
        ].
        recoveredBlock95Block126Step = 238 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal1.
            recoveredBlock95Block126PC := 241.
        ].
        recoveredBlock95Block126Step = 241 ifTrue: [
            recoveredBlock95Block126Stack1 := 'rtf'.
            recoveredBlock95Block126PC := 243.
        ].
        recoveredBlock95Block126Step = 243 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) = (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 244.
        ].
        recoveredBlock95Block126Step = 244 ifTrue: [
            (recoveredBlock95Block126Stack0) ifTrue: [recoveredBlock95Block126PC := 248] ifFalse: [recoveredBlock95Block126PC := 282].
        ].
        recoveredBlock95Block126Step = 248 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal3.
            recoveredBlock95Block126PC := 251.
        ].
        recoveredBlock95Block126Step = 251 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredBlock95Block126Arg1.
            recoveredBlock95Block126PC := 252.
        ].
        recoveredBlock95Block126Step = 252 ifTrue: [
            recoveredBlock95Block126Stack2 := recoveredBlock95Arg1.
            recoveredBlock95Block126PC := 255.
        ].
        recoveredBlock95Block126Step = 255 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) specificationName.
            recoveredBlock95Block126PC := 257.
        ].
        recoveredBlock95Block126Step = 257 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredBlock95Block126Local1.
            recoveredBlock95Block126PC := 258.
        ].
        recoveredBlock95Block126Step = 258 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 260.
        ].
        recoveredBlock95Block126Step = 260 ifTrue: [
            recoveredBlock95Block126Stack3 := '_'.
            recoveredBlock95Block126PC := 262.
        ].
        recoveredBlock95Block126Step = 262 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 264.
        ].
        recoveredBlock95Block126Step = 264 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredLocal2.
            recoveredBlock95Block126PC := 267.
        ].
        recoveredBlock95Block126Step = 267 ifTrue: [
            recoveredBlock95Block126Stack3 := (recoveredBlock95Block126Stack3) printString.
            recoveredBlock95Block126PC := 269.
        ].
        recoveredBlock95Block126Step = 269 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 271.
        ].
        recoveredBlock95Block126Step = 271 ifTrue: [
            recoveredBlock95Block126Stack3 := '.rtf'.
            recoveredBlock95Block126PC := 273.
        ].
        recoveredBlock95Block126Step = 273 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 275.
        ].
        recoveredBlock95Block126Step = 275 ifTrue: [
            recoveredBlock95Block126Stack3 := ''.
            recoveredBlock95Block126PC := 277.
        ].
        recoveredBlock95Block126Step = 277 ifTrue: [
            recoveredBlock95Block126Stack4 := 1.
            recoveredBlock95Block126PC := 279.
        ].
        recoveredBlock95Block126Step = 279 ifTrue: [
            (recoveredBlock95Block126Stack0) printGraphicsForSource: (recoveredBlock95Block126Stack1) onRTFFile: (recoveredBlock95Block126Stack2) selectedCategoryName: (recoveredBlock95Block126Stack3) scaleFactor: (recoveredBlock95Block126Stack4).
            recoveredBlock95Block126PC := 282.
        ].
        recoveredBlock95Block126Step = 282 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal1.
            recoveredBlock95Block126PC := 285.
        ].
        recoveredBlock95Block126Step = 285 ifTrue: [
            recoveredBlock95Block126Stack1 := 'bmp'.
            recoveredBlock95Block126PC := 287.
        ].
        recoveredBlock95Block126Step = 287 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) = (recoveredBlock95Block126Stack1).
            recoveredBlock95Block126PC := 288.
        ].
        recoveredBlock95Block126Step = 288 ifTrue: [
            (recoveredBlock95Block126Stack0) ifTrue: [recoveredBlock95Block126PC := 292] ifFalse: [recoveredBlock95Block126PC := 326].
        ].
        recoveredBlock95Block126Step = 292 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal3.
            recoveredBlock95Block126PC := 295.
        ].
        recoveredBlock95Block126Step = 295 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredBlock95Block126Arg1.
            recoveredBlock95Block126PC := 296.
        ].
        recoveredBlock95Block126Step = 296 ifTrue: [
            recoveredBlock95Block126Stack2 := recoveredBlock95Arg1.
            recoveredBlock95Block126PC := 299.
        ].
        recoveredBlock95Block126Step = 299 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) specificationName.
            recoveredBlock95Block126PC := 301.
        ].
        recoveredBlock95Block126Step = 301 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredBlock95Block126Local1.
            recoveredBlock95Block126PC := 302.
        ].
        recoveredBlock95Block126Step = 302 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 304.
        ].
        recoveredBlock95Block126Step = 304 ifTrue: [
            recoveredBlock95Block126Stack3 := '_'.
            recoveredBlock95Block126PC := 306.
        ].
        recoveredBlock95Block126Step = 306 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 308.
        ].
        recoveredBlock95Block126Step = 308 ifTrue: [
            recoveredBlock95Block126Stack3 := recoveredLocal2.
            recoveredBlock95Block126PC := 311.
        ].
        recoveredBlock95Block126Step = 311 ifTrue: [
            recoveredBlock95Block126Stack3 := (recoveredBlock95Block126Stack3) printString.
            recoveredBlock95Block126PC := 313.
        ].
        recoveredBlock95Block126Step = 313 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 315.
        ].
        recoveredBlock95Block126Step = 315 ifTrue: [
            recoveredBlock95Block126Stack3 := '.bmp'.
            recoveredBlock95Block126PC := 317.
        ].
        recoveredBlock95Block126Step = 317 ifTrue: [
            recoveredBlock95Block126Stack2 := (recoveredBlock95Block126Stack2) , (recoveredBlock95Block126Stack3).
            recoveredBlock95Block126PC := 319.
        ].
        recoveredBlock95Block126Step = 319 ifTrue: [
            recoveredBlock95Block126Stack3 := ''.
            recoveredBlock95Block126PC := 321.
        ].
        recoveredBlock95Block126Step = 321 ifTrue: [
            recoveredBlock95Block126Stack4 := 1.
            recoveredBlock95Block126PC := 323.
        ].
        recoveredBlock95Block126Step = 323 ifTrue: [
            (recoveredBlock95Block126Stack0) printGraphicsForSource: (recoveredBlock95Block126Stack1) onBitmapFile: (recoveredBlock95Block126Stack2) selectedCategoryName: (recoveredBlock95Block126Stack3) scaleFactor: (recoveredBlock95Block126Stack4).
            recoveredBlock95Block126PC := 326.
        ].
        recoveredBlock95Block126Step = 326 ifTrue: [
            recoveredBlock95Block126Stack0 := recoveredLocal2.
            recoveredBlock95Block126PC := 329.
        ].
        recoveredBlock95Block126Step = 329 ifTrue: [
            recoveredBlock95Block126Stack0 := (recoveredBlock95Block126Stack0) + (1).
            recoveredBlock95Block126PC := 330.
        ].
        recoveredBlock95Block126Step = 330 ifTrue: [
            recoveredBlock95Block126Stack1 := recoveredBlock95Block126Stack0.
            recoveredBlock95Block126PC := 331.
        ].
        recoveredBlock95Block126Step = 331 ifTrue: [
            recoveredLocal2 := recoveredBlock95Block126Stack1.
            recoveredBlock95Block126PC := 334.
        ].
        recoveredBlock95Block126Step = 334 ifTrue: [
            recoveredBlock95Block126Result := recoveredBlock95Block126Stack0.
            recoveredBlock95Block126Done := true.
        ].
    ].
    recoveredBlock95Block126Result
].
            recoveredBlock95PC := 335.
        ].
        recoveredBlock95Step = 335 ifTrue: [
            recoveredBlock95Stack1 := (recoveredBlock95Stack1) do: (recoveredBlock95Stack2).
            recoveredBlock95PC := 337.
        ].
        recoveredBlock95Step = 337 ifTrue: [
            recoveredBlock95Result := recoveredBlock95Stack1.
            recoveredBlock95Done := true.
        ].
    ].
    recoveredBlock95Result
].
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredPC := 369.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 'sgClass'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 369].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := (recoveredStack2) getObject.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack1) css4FileOutSelectedSpecificationDiagramsFor: (recoveredStack2) format: (recoveredStack3).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20006ad4; bytecode file offset 0x14ce8"
!SGMainView methodsFor: 'recovered'!
css4FileOutSelectedSpecificationDiagramsFor: recoveredArg1 format: recoveredArg2 path: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'ps'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'eps'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'bmp'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'rtf'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'gif'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'publicSpecifications'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRead.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 370].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) publicSpecifications.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Stack0 recoveredBlock105Stack1 recoveredBlock105Stack2 recoveredBlock105Stack3 recoveredBlock105Stack4 recoveredBlock105PC recoveredBlock105Step recoveredBlock105Done recoveredBlock105Result |
    recoveredBlock105Stack0 := self.
    recoveredBlock105PC := 112.
    recoveredBlock105Done := false.
    [recoveredBlock105Done not] whileTrue: [
        recoveredBlock105Step := recoveredBlock105PC.
        recoveredBlock105Step = 112 ifTrue: [
            recoveredBlock105Stack1 := nil.
            recoveredBlock105PC := 113.
        ].
        recoveredBlock105Step = 113 ifTrue: [
            recoveredBlock105Stack2 := recoveredBlock105Arg1.
            recoveredBlock105PC := 116.
        ].
        recoveredBlock105Step = 116 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) specSourceOrNil.
            recoveredBlock105PC := 118.
        ].
        recoveredBlock105Step = 118 ifTrue: [
            (recoveredBlock105Stack2 == nil) ifTrue: [recoveredBlock105PC := 363] ifFalse: [recoveredBlock105PC := 122].
        ].
        recoveredBlock105Step = 122 ifTrue: [
            recoveredBlock105PC := 123.
        ].
        recoveredBlock105Step = 123 ifTrue: [
            recoveredBlock105Stack1 := recoveredLocal3.
            recoveredBlock105PC := 126.
        ].
        recoveredBlock105Step = 126 ifTrue: [
            recoveredBlock105Stack2 := recoveredArg1.
            recoveredBlock105PC := 129.
        ].
        recoveredBlock105Step = 129 ifTrue: [
            recoveredBlock105Stack2 := (recoveredBlock105Stack2) getObject.
            recoveredBlock105PC := 131.
        ].
        recoveredBlock105Step = 131 ifTrue: [
            recoveredBlock105Stack3 := recoveredBlock105Arg1.
            recoveredBlock105PC := 134.
        ].
        recoveredBlock105Step = 134 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) hierarchySources: (recoveredBlock105Stack2) specification: (recoveredBlock105Stack3).
            recoveredBlock105PC := 136.
        ].
        recoveredBlock105Step = 136 ifTrue: [
            recoveredBlock105Stack2 := [:recoveredBlock105Block136Arg1 | 
    | recoveredBlock105Block136Stack0 recoveredBlock105Block136Stack1 recoveredBlock105Block136Stack2 recoveredBlock105Block136Stack3 recoveredBlock105Block136Stack4 recoveredBlock105Block136Stack5 recoveredBlock105Block136Stack6 recoveredBlock105Block136Stack7 recoveredBlock105Block136Stack8 recoveredBlock105Block136Stack9 recoveredBlock105Block136PC recoveredBlock105Block136Step recoveredBlock105Block136Done recoveredBlock105Block136Result |
    recoveredBlock105Block136Stack0 := self.
    recoveredBlock105Block136PC := 142.
    recoveredBlock105Block136Done := false.
    [recoveredBlock105Block136Done not] whileTrue: [
        recoveredBlock105Block136Step := recoveredBlock105Block136PC.
        recoveredBlock105Block136Step = 142 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal1.
            recoveredBlock105Block136PC := 145.
        ].
        recoveredBlock105Block136Step = 145 ifTrue: [
            recoveredBlock105Block136Stack2 := 'gif'.
            recoveredBlock105Block136PC := 147.
        ].
        recoveredBlock105Block136Step = 147 ifTrue: [
            recoveredBlock105Block136Stack1 := (recoveredBlock105Block136Stack1) = (recoveredBlock105Block136Stack2).
            recoveredBlock105Block136PC := 148.
        ].
        recoveredBlock105Block136Step = 148 ifTrue: [
            (recoveredBlock105Block136Stack1) ifTrue: [recoveredBlock105Block136PC := 152] ifFalse: [recoveredBlock105Block136PC := 184].
        ].
        recoveredBlock105Block136Step = 152 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal3.
            recoveredBlock105Block136PC := 155.
        ].
        recoveredBlock105Block136Step = 155 ifTrue: [
            recoveredBlock105Block136Stack2 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 156.
        ].
        recoveredBlock105Block136Step = 156 ifTrue: [
            recoveredBlock105Block136Stack3 := self.
            recoveredBlock105Block136PC := 157.
        ].
        recoveredBlock105Block136Step = 157 ifTrue: [
            recoveredBlock105Block136Stack4 := recoveredArg1.
            recoveredBlock105Block136PC := 160.
        ].
        recoveredBlock105Block136Step = 160 ifTrue: [
            recoveredBlock105Block136Stack5 := recoveredBlock105Arg1.
            recoveredBlock105Block136PC := 163.
        ].
        recoveredBlock105Block136Step = 163 ifTrue: [
            recoveredBlock105Block136Stack6 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 164.
        ].
        recoveredBlock105Block136Step = 164 ifTrue: [
            recoveredBlock105Block136Stack7 := recoveredLocal2.
            recoveredBlock105Block136PC := 167.
        ].
        recoveredBlock105Block136Step = 167 ifTrue: [
            recoveredBlock105Block136Stack8 := recoveredArg3.
            recoveredBlock105Block136PC := 170.
        ].
        recoveredBlock105Block136Step = 170 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) css4FileNameFor: (recoveredBlock105Block136Stack4) spec: (recoveredBlock105Block136Stack5) source: (recoveredBlock105Block136Stack6) number: (recoveredBlock105Block136Stack7) path: (recoveredBlock105Block136Stack8).
            recoveredBlock105Block136PC := 173.
        ].
        recoveredBlock105Block136Step = 173 ifTrue: [
            recoveredBlock105Block136Stack4 := '.gif'.
            recoveredBlock105Block136PC := 175.
        ].
        recoveredBlock105Block136Step = 175 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) , (recoveredBlock105Block136Stack4).
            recoveredBlock105Block136PC := 177.
        ].
        recoveredBlock105Block136Step = 177 ifTrue: [
            recoveredBlock105Block136Stack4 := ''.
            recoveredBlock105Block136PC := 179.
        ].
        recoveredBlock105Block136Step = 179 ifTrue: [
            recoveredBlock105Block136Stack5 := 1.
            recoveredBlock105Block136PC := 181.
        ].
        recoveredBlock105Block136Step = 181 ifTrue: [
            (recoveredBlock105Block136Stack1) printGraphicsForSource: (recoveredBlock105Block136Stack2) onGIFFile: (recoveredBlock105Block136Stack3) selectedCategoryName: (recoveredBlock105Block136Stack4) scaleFactor: (recoveredBlock105Block136Stack5).
            recoveredBlock105Block136PC := 184.
        ].
        recoveredBlock105Block136Step = 184 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal1.
            recoveredBlock105Block136PC := 187.
        ].
        recoveredBlock105Block136Step = 187 ifTrue: [
            recoveredBlock105Block136Stack2 := 'ps'.
            recoveredBlock105Block136PC := 189.
        ].
        recoveredBlock105Block136Step = 189 ifTrue: [
            recoveredBlock105Block136Stack1 := (recoveredBlock105Block136Stack1) = (recoveredBlock105Block136Stack2).
            recoveredBlock105Block136PC := 190.
        ].
        recoveredBlock105Block136Step = 190 ifTrue: [
            (recoveredBlock105Block136Stack1) ifTrue: [recoveredBlock105Block136PC := 194] ifFalse: [recoveredBlock105Block136PC := 227].
        ].
        recoveredBlock105Block136Step = 194 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal3.
            recoveredBlock105Block136PC := 197.
        ].
        recoveredBlock105Block136Step = 197 ifTrue: [
            recoveredBlock105Block136Stack2 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 198.
        ].
        recoveredBlock105Block136Step = 198 ifTrue: [
            recoveredBlock105Block136Stack3 := self.
            recoveredBlock105Block136PC := 199.
        ].
        recoveredBlock105Block136Step = 199 ifTrue: [
            recoveredBlock105Block136Stack4 := recoveredArg1.
            recoveredBlock105Block136PC := 202.
        ].
        recoveredBlock105Block136Step = 202 ifTrue: [
            recoveredBlock105Block136Stack5 := recoveredBlock105Arg1.
            recoveredBlock105Block136PC := 205.
        ].
        recoveredBlock105Block136Step = 205 ifTrue: [
            recoveredBlock105Block136Stack6 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 206.
        ].
        recoveredBlock105Block136Step = 206 ifTrue: [
            recoveredBlock105Block136Stack7 := recoveredLocal2.
            recoveredBlock105Block136PC := 209.
        ].
        recoveredBlock105Block136Step = 209 ifTrue: [
            recoveredBlock105Block136Stack8 := recoveredArg3.
            recoveredBlock105Block136PC := 212.
        ].
        recoveredBlock105Block136Step = 212 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) css4FileNameFor: (recoveredBlock105Block136Stack4) spec: (recoveredBlock105Block136Stack5) source: (recoveredBlock105Block136Stack6) number: (recoveredBlock105Block136Stack7) path: (recoveredBlock105Block136Stack8).
            recoveredBlock105Block136PC := 215.
        ].
        recoveredBlock105Block136Step = 215 ifTrue: [
            recoveredBlock105Block136Stack4 := '.ps'.
            recoveredBlock105Block136PC := 217.
        ].
        recoveredBlock105Block136Step = 217 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) , (recoveredBlock105Block136Stack4).
            recoveredBlock105Block136PC := 219.
        ].
        recoveredBlock105Block136Step = 219 ifTrue: [
            recoveredBlock105Block136Stack4 := ''.
            recoveredBlock105Block136PC := 221.
        ].
        recoveredBlock105Block136Step = 221 ifTrue: [
            recoveredBlock105Block136Stack5 := 100.
            recoveredBlock105Block136PC := 224.
        ].
        recoveredBlock105Block136Step = 224 ifTrue: [
            (recoveredBlock105Block136Stack1) printGraphicsForSource: (recoveredBlock105Block136Stack2) onPostScriptFile: (recoveredBlock105Block136Stack3) selectedCategoryName: (recoveredBlock105Block136Stack4) scaleFactor: (recoveredBlock105Block136Stack5).
            recoveredBlock105Block136PC := 227.
        ].
        recoveredBlock105Block136Step = 227 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal1.
            recoveredBlock105Block136PC := 230.
        ].
        recoveredBlock105Block136Step = 230 ifTrue: [
            recoveredBlock105Block136Stack2 := 'eps'.
            recoveredBlock105Block136PC := 232.
        ].
        recoveredBlock105Block136Step = 232 ifTrue: [
            recoveredBlock105Block136Stack1 := (recoveredBlock105Block136Stack1) = (recoveredBlock105Block136Stack2).
            recoveredBlock105Block136PC := 233.
        ].
        recoveredBlock105Block136Step = 233 ifTrue: [
            (recoveredBlock105Block136Stack1) ifTrue: [recoveredBlock105Block136PC := 236] ifFalse: [recoveredBlock105Block136PC := 269].
        ].
        recoveredBlock105Block136Step = 236 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal3.
            recoveredBlock105Block136PC := 239.
        ].
        recoveredBlock105Block136Step = 239 ifTrue: [
            recoveredBlock105Block136Stack2 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 240.
        ].
        recoveredBlock105Block136Step = 240 ifTrue: [
            recoveredBlock105Block136Stack3 := self.
            recoveredBlock105Block136PC := 241.
        ].
        recoveredBlock105Block136Step = 241 ifTrue: [
            recoveredBlock105Block136Stack4 := recoveredArg1.
            recoveredBlock105Block136PC := 244.
        ].
        recoveredBlock105Block136Step = 244 ifTrue: [
            recoveredBlock105Block136Stack5 := recoveredBlock105Arg1.
            recoveredBlock105Block136PC := 247.
        ].
        recoveredBlock105Block136Step = 247 ifTrue: [
            recoveredBlock105Block136Stack6 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 248.
        ].
        recoveredBlock105Block136Step = 248 ifTrue: [
            recoveredBlock105Block136Stack7 := recoveredLocal2.
            recoveredBlock105Block136PC := 251.
        ].
        recoveredBlock105Block136Step = 251 ifTrue: [
            recoveredBlock105Block136Stack8 := recoveredArg3.
            recoveredBlock105Block136PC := 254.
        ].
        recoveredBlock105Block136Step = 254 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) css4FileNameFor: (recoveredBlock105Block136Stack4) spec: (recoveredBlock105Block136Stack5) source: (recoveredBlock105Block136Stack6) number: (recoveredBlock105Block136Stack7) path: (recoveredBlock105Block136Stack8).
            recoveredBlock105Block136PC := 257.
        ].
        recoveredBlock105Block136Step = 257 ifTrue: [
            recoveredBlock105Block136Stack4 := '.eps'.
            recoveredBlock105Block136PC := 259.
        ].
        recoveredBlock105Block136Step = 259 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) , (recoveredBlock105Block136Stack4).
            recoveredBlock105Block136PC := 261.
        ].
        recoveredBlock105Block136Step = 261 ifTrue: [
            recoveredBlock105Block136Stack4 := ''.
            recoveredBlock105Block136PC := 263.
        ].
        recoveredBlock105Block136Step = 263 ifTrue: [
            recoveredBlock105Block136Stack5 := 100.
            recoveredBlock105Block136PC := 266.
        ].
        recoveredBlock105Block136Step = 266 ifTrue: [
            (recoveredBlock105Block136Stack1) printGraphicsForSource: (recoveredBlock105Block136Stack2) onPostScriptFile: (recoveredBlock105Block136Stack3) selectedCategoryName: (recoveredBlock105Block136Stack4) scaleFactor: (recoveredBlock105Block136Stack5).
            recoveredBlock105Block136PC := 269.
        ].
        recoveredBlock105Block136Step = 269 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal1.
            recoveredBlock105Block136PC := 272.
        ].
        recoveredBlock105Block136Step = 272 ifTrue: [
            recoveredBlock105Block136Stack2 := 'rtf'.
            recoveredBlock105Block136PC := 274.
        ].
        recoveredBlock105Block136Step = 274 ifTrue: [
            recoveredBlock105Block136Stack1 := (recoveredBlock105Block136Stack1) = (recoveredBlock105Block136Stack2).
            recoveredBlock105Block136PC := 275.
        ].
        recoveredBlock105Block136Step = 275 ifTrue: [
            (recoveredBlock105Block136Stack1) ifTrue: [recoveredBlock105Block136PC := 278] ifFalse: [recoveredBlock105Block136PC := 310].
        ].
        recoveredBlock105Block136Step = 278 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal3.
            recoveredBlock105Block136PC := 281.
        ].
        recoveredBlock105Block136Step = 281 ifTrue: [
            recoveredBlock105Block136Stack2 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 282.
        ].
        recoveredBlock105Block136Step = 282 ifTrue: [
            recoveredBlock105Block136Stack3 := self.
            recoveredBlock105Block136PC := 283.
        ].
        recoveredBlock105Block136Step = 283 ifTrue: [
            recoveredBlock105Block136Stack4 := recoveredArg1.
            recoveredBlock105Block136PC := 286.
        ].
        recoveredBlock105Block136Step = 286 ifTrue: [
            recoveredBlock105Block136Stack5 := recoveredBlock105Arg1.
            recoveredBlock105Block136PC := 289.
        ].
        recoveredBlock105Block136Step = 289 ifTrue: [
            recoveredBlock105Block136Stack6 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 290.
        ].
        recoveredBlock105Block136Step = 290 ifTrue: [
            recoveredBlock105Block136Stack7 := recoveredLocal2.
            recoveredBlock105Block136PC := 293.
        ].
        recoveredBlock105Block136Step = 293 ifTrue: [
            recoveredBlock105Block136Stack8 := recoveredArg3.
            recoveredBlock105Block136PC := 296.
        ].
        recoveredBlock105Block136Step = 296 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) css4FileNameFor: (recoveredBlock105Block136Stack4) spec: (recoveredBlock105Block136Stack5) source: (recoveredBlock105Block136Stack6) number: (recoveredBlock105Block136Stack7) path: (recoveredBlock105Block136Stack8).
            recoveredBlock105Block136PC := 299.
        ].
        recoveredBlock105Block136Step = 299 ifTrue: [
            recoveredBlock105Block136Stack4 := '.rtf'.
            recoveredBlock105Block136PC := 301.
        ].
        recoveredBlock105Block136Step = 301 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) , (recoveredBlock105Block136Stack4).
            recoveredBlock105Block136PC := 303.
        ].
        recoveredBlock105Block136Step = 303 ifTrue: [
            recoveredBlock105Block136Stack4 := ''.
            recoveredBlock105Block136PC := 305.
        ].
        recoveredBlock105Block136Step = 305 ifTrue: [
            recoveredBlock105Block136Stack5 := 1.
            recoveredBlock105Block136PC := 307.
        ].
        recoveredBlock105Block136Step = 307 ifTrue: [
            (recoveredBlock105Block136Stack1) printGraphicsForSource: (recoveredBlock105Block136Stack2) onRTFFile: (recoveredBlock105Block136Stack3) selectedCategoryName: (recoveredBlock105Block136Stack4) scaleFactor: (recoveredBlock105Block136Stack5).
            recoveredBlock105Block136PC := 310.
        ].
        recoveredBlock105Block136Step = 310 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal1.
            recoveredBlock105Block136PC := 313.
        ].
        recoveredBlock105Block136Step = 313 ifTrue: [
            recoveredBlock105Block136Stack2 := 'bmp'.
            recoveredBlock105Block136PC := 315.
        ].
        recoveredBlock105Block136Step = 315 ifTrue: [
            recoveredBlock105Block136Stack1 := (recoveredBlock105Block136Stack1) = (recoveredBlock105Block136Stack2).
            recoveredBlock105Block136PC := 316.
        ].
        recoveredBlock105Block136Step = 316 ifTrue: [
            (recoveredBlock105Block136Stack1) ifTrue: [recoveredBlock105Block136PC := 320] ifFalse: [recoveredBlock105Block136PC := 352].
        ].
        recoveredBlock105Block136Step = 320 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal3.
            recoveredBlock105Block136PC := 323.
        ].
        recoveredBlock105Block136Step = 323 ifTrue: [
            recoveredBlock105Block136Stack2 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 324.
        ].
        recoveredBlock105Block136Step = 324 ifTrue: [
            recoveredBlock105Block136Stack3 := self.
            recoveredBlock105Block136PC := 325.
        ].
        recoveredBlock105Block136Step = 325 ifTrue: [
            recoveredBlock105Block136Stack4 := recoveredArg1.
            recoveredBlock105Block136PC := 328.
        ].
        recoveredBlock105Block136Step = 328 ifTrue: [
            recoveredBlock105Block136Stack5 := recoveredBlock105Arg1.
            recoveredBlock105Block136PC := 331.
        ].
        recoveredBlock105Block136Step = 331 ifTrue: [
            recoveredBlock105Block136Stack6 := recoveredBlock105Block136Arg1.
            recoveredBlock105Block136PC := 332.
        ].
        recoveredBlock105Block136Step = 332 ifTrue: [
            recoveredBlock105Block136Stack7 := recoveredLocal2.
            recoveredBlock105Block136PC := 335.
        ].
        recoveredBlock105Block136Step = 335 ifTrue: [
            recoveredBlock105Block136Stack8 := recoveredArg3.
            recoveredBlock105Block136PC := 338.
        ].
        recoveredBlock105Block136Step = 338 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) css4FileNameFor: (recoveredBlock105Block136Stack4) spec: (recoveredBlock105Block136Stack5) source: (recoveredBlock105Block136Stack6) number: (recoveredBlock105Block136Stack7) path: (recoveredBlock105Block136Stack8).
            recoveredBlock105Block136PC := 341.
        ].
        recoveredBlock105Block136Step = 341 ifTrue: [
            recoveredBlock105Block136Stack4 := '.bmp'.
            recoveredBlock105Block136PC := 343.
        ].
        recoveredBlock105Block136Step = 343 ifTrue: [
            recoveredBlock105Block136Stack3 := (recoveredBlock105Block136Stack3) , (recoveredBlock105Block136Stack4).
            recoveredBlock105Block136PC := 345.
        ].
        recoveredBlock105Block136Step = 345 ifTrue: [
            recoveredBlock105Block136Stack4 := ''.
            recoveredBlock105Block136PC := 347.
        ].
        recoveredBlock105Block136Step = 347 ifTrue: [
            recoveredBlock105Block136Stack5 := 1.
            recoveredBlock105Block136PC := 349.
        ].
        recoveredBlock105Block136Step = 349 ifTrue: [
            (recoveredBlock105Block136Stack1) printGraphicsForSource: (recoveredBlock105Block136Stack2) onBitmapFile: (recoveredBlock105Block136Stack3) selectedCategoryName: (recoveredBlock105Block136Stack4) scaleFactor: (recoveredBlock105Block136Stack5).
            recoveredBlock105Block136PC := 352.
        ].
        recoveredBlock105Block136Step = 352 ifTrue: [
            recoveredBlock105Block136Stack1 := recoveredLocal2.
            recoveredBlock105Block136PC := 355.
        ].
        recoveredBlock105Block136Step = 355 ifTrue: [
            recoveredBlock105Block136Stack1 := (recoveredBlock105Block136Stack1) + (1).
            recoveredBlock105Block136PC := 356.
        ].
        recoveredBlock105Block136Step = 356 ifTrue: [
            recoveredBlock105Block136Stack2 := recoveredBlock105Block136Stack1.
            recoveredBlock105Block136PC := 357.
        ].
        recoveredBlock105Block136Step = 357 ifTrue: [
            recoveredLocal2 := recoveredBlock105Block136Stack2.
            recoveredBlock105Block136PC := 360.
        ].
        recoveredBlock105Block136Step = 360 ifTrue: [
            recoveredBlock105Block136Result := recoveredBlock105Block136Stack1.
            recoveredBlock105Block136Done := true.
        ].
    ].
    recoveredBlock105Block136Result
].
            recoveredBlock105PC := 361.
        ].
        recoveredBlock105Step = 361 ifTrue: [
            recoveredBlock105Stack1 := (recoveredBlock105Stack1) do: (recoveredBlock105Stack2).
            recoveredBlock105PC := 363.
        ].
        recoveredBlock105Step = 363 ifTrue: [
            recoveredBlock105Result := recoveredBlock105Stack1.
            recoveredBlock105Done := true.
        ].
    ].
    recoveredBlock105Result
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredPC := 399.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := 'sgClass'.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 382] ifFalse: [recoveredPC := 399].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := (recoveredStack2) getObject.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack1) css4FileOutSelectedSpecificationDiagramsFor: (recoveredStack2) format: (recoveredStack3) path: (recoveredStack4).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

