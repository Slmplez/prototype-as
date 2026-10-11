"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013464; bytecode file offset 0x912098"
!SGSimModelNode class methodsFor: 'recovered'!
Imported
    | recoveredValue0 |
    recoveredValue0 := Imported.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200146f4; bytecode file offset 0x912098"
!SGSimModelNode class methodsFor: 'recovered'!
Exported
    | recoveredValue0 |
    recoveredValue0 := Exported.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200147a8; bytecode file offset 0x912098"
!SGSimModelNode class methodsFor: 'recovered'!
ImportedFromCT
    | recoveredValue0 |
    recoveredValue0 := ImportedFromCT.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200151d4; bytecode file offset 0x912098"
!SGSimModelNode class methodsFor: 'recovered'!
Unused
    | recoveredValue0 |
    recoveredValue0 := Unused.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005459c; bytecode file offset 0x951190"
!SGSimModelNode class methodsFor: 'recovered'!
Exported: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Exported := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054824; bytecode file offset 0x951190"
!SGSimModelNode class methodsFor: 'recovered'!
Imported: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Imported := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20054848; bytecode file offset 0x951190"
!SGSimModelNode class methodsFor: 'recovered'!
Unused: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    Unused := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201d5498; bytecode file offset 0xad1d64"
!SGSimModelNode class methodsFor: 'recovered'!
resetExImportNodes
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    (self) Exported: (recoveredValue1).
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    (self) Imported: (recoveredValue3).
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    ImportedFromCT := recoveredValue5.
    recoveredValue6 := Set.
    recoveredValue7 := (recoveredValue6) new.
    (self) Unused: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202c95f0; bytecode file offset 0xbc5ed0"
!SGSimModelNode class methodsFor: 'recovered'!
buildSimModelFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    (self) resetExImportNodes.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) createFor: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    (self) resolveExImports.
    recoveredValue2 := (self) Imported.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) reference.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) ownerSGClass.
            recoveredBlock15PC := 28.
        ].
        recoveredBlock15Step = 28 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) isCTClass.
            recoveredBlock15PC := 30.
        ].
        recoveredBlock15Step = 30 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 34] ifFalse: [recoveredBlock15PC := 43].
        ].
        recoveredBlock15Step = 34 ifTrue: [
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := self.
            recoveredBlock15PC := 36.
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) ImportedFromCT.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) label.
            recoveredBlock15PC := 41.
        ].
        recoveredBlock15Step = 41 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) add: (recoveredBlock15Stack2).
            recoveredBlock15PC := 43.
        ].
        recoveredBlock15Step = 43 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x20467958; bytecode file offset 0xd64254"
!SGSimModelNode class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) substitudeBackslashesBy: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) substitudeSlashesAndBackslashesBy: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPrimitive.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVirtual.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isParameter.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMeasureElement.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := SGSimVirtualNode.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) reference: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack2) initialize.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) reference: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) isExported.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) Exported.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) isImported.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) Imported.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLevel.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20499310; bytecode file offset 0xd95c0c"
!SGSimModelNode class methodsFor: 'recovered'!
resolveExImports
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := ('Rnz') == ('Call_63811').
    recoveredValue1 := LookupTable.
    recoveredValue2 := (self) Exported.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) new: (recoveredValue3).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := LookupTable.
    recoveredValue6 := (self) Exported.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) new: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := (self) Exported.
    recoveredValue10 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 recoveredBlock33Value4 recoveredBlock33Value5 recoveredBlock33Value6 recoveredBlock33Value7 recoveredBlock33Value8 |
    recoveredBlock33Value0 := recoveredLocal2.
    recoveredBlock33Value1 := recoveredBlock33Arg1.
    recoveredBlock33Value2 := (recoveredBlock33Value1) label.
    recoveredBlock33Value3 := recoveredBlock33Arg1.
    (recoveredBlock33Value0) at: (recoveredBlock33Value2) put: (recoveredBlock33Value3).
    recoveredBlock33Value4 := recoveredLocal1.
    recoveredBlock33Value5 := recoveredBlock33Arg1.
    recoveredBlock33Value6 := (recoveredBlock33Value5) label.
    recoveredBlock33Value7 := recoveredBlock33Arg1.
    recoveredBlock33Value8 := (recoveredBlock33Value4) at: (recoveredBlock33Value6) put: (recoveredBlock33Value7).
    recoveredBlock33Value8
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := (self) Imported.
    recoveredValue12 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 recoveredBlock64Value3 recoveredBlock64Value4 |
    recoveredBlock64Value0 := recoveredLocal2.
    recoveredBlock64Value1 := recoveredBlock64Arg1.
    recoveredBlock64Value2 := (recoveredBlock64Value1) label.
    recoveredBlock64Value3 := [:recoveredBlock64Block78Arg1 | 
    | recoveredBlock64Block78Value0 recoveredBlock64Block78Value1 recoveredBlock64Block78Value2 recoveredBlock64Block78Value3 recoveredBlock64Block78Value4 recoveredBlock64Block78Value5 recoveredBlock64Block78Value6 |
    recoveredBlock64Block78Value0 := recoveredBlock64Arg1.
    recoveredBlock64Block78Value1 := recoveredBlock64Block78Arg1.
    (recoveredBlock64Block78Value0) substituteWith: (recoveredBlock64Block78Value1).
    recoveredBlock64Block78Value2 := recoveredLocal1.
    recoveredBlock64Block78Value3 := recoveredBlock64Arg1.
    recoveredBlock64Block78Value4 := (recoveredBlock64Block78Value3) label.
    recoveredBlock64Block78Value5 := [].
    recoveredBlock64Block78Value6 := (recoveredBlock64Block78Value2) removeKey: (recoveredBlock64Block78Value4) ifAbsent: (recoveredBlock64Block78Value5).
    recoveredBlock64Block78Value6
].
    recoveredBlock64Value4 := (recoveredBlock64Value0) at: (recoveredBlock64Value2) ifPresent: (recoveredBlock64Value3).
    recoveredBlock64Value4
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) keys.
    recoveredValue15 := [:recoveredBlock113Arg1 | 
    | recoveredBlock113Value0 recoveredBlock113Value1 recoveredBlock113Value2 recoveredBlock113Value3 recoveredBlock113Value4 |
    recoveredBlock113Value0 := (self) Unused.
    recoveredBlock113Value1 := recoveredLocal1.
    recoveredBlock113Value2 := recoveredBlock113Arg1.
    recoveredBlock113Value3 := (recoveredBlock113Value1) at: (recoveredBlock113Value2).
    recoveredBlock113Value4 := (recoveredBlock113Value0) add: (recoveredBlock113Value3).
    recoveredBlock113Value4
].
    (recoveredValue14) do: (recoveredValue15).
    ^self
! !

