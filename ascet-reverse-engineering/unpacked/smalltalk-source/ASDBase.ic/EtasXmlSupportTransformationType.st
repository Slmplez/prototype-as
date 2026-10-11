"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200666a4; bytecode file offset 0x963428"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
extension
    | recoveredValue0 |
    recoveredValue0 := extension.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066e3c; bytecode file offset 0x9646f8"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := schema.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bec4; bytecode file offset 0x9692b0"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
versionAttr
    | recoveredValue0 |
    recoveredValue0 := versionAttr.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2010daa0; bytecode file offset 0xa0a360"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := extension.
    recoveredValue2 := (recoveredValue1) , (' on: ').
    recoveredValue3 := schema.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203d61b0; bytecode file offset 0xcd2aa0"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
bringFromCurrent: recoveredArg1 to: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := downs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := downs.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
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
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) xsltName.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block24Arg1 | 
    | recoveredBlock16Block24Local1 recoveredBlock16Block24Value0 recoveredBlock16Block24Value1 recoveredBlock16Block24Value2 recoveredBlock16Block24Value3 recoveredBlock16Block24Value4 recoveredBlock16Block24Value5 recoveredBlock16Block24Value6 recoveredBlock16Block24Value7 recoveredBlock16Block24Value8 recoveredBlock16Block24Value9 |
    recoveredBlock16Block24Value0 := Util.
    recoveredBlock16Block24Value1 := recoveredBlock16Block24Value0.
    recoveredBlock16Block24Value2 := recoveredBlock16Block24Arg1.
    recoveredBlock16Block24Value3 := ('Transforming with ') , (recoveredBlock16Block24Value2).
    (recoveredBlock16Block24Value1) show: (recoveredBlock16Block24Value3).
    (recoveredBlock16Block24Value0) cr.
    recoveredBlock16Block24Value4 := catalog.
    recoveredBlock16Block24Value5 := recoveredBlock16Block24Arg1.
    recoveredBlock16Block24Value6 := (recoveredBlock16Block24Value4) getStyleSheet: (recoveredBlock16Block24Value5).
    recoveredBlock16Block24Local1 := recoveredBlock16Block24Value6.
    recoveredBlock16Block24Value7 := recoveredBlock16Block24Local1.
    recoveredBlock16Block24Value8 := recoveredArg1.
    recoveredBlock16Block24Value9 := (recoveredBlock16Block24Value7) transformReplace: (recoveredBlock16Block24Value8).
    recoveredBlock16Block24Value9
].
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            (recoveredBlock16Stack1) ifNotNil: (recoveredBlock16Stack2).
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 62.
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) matchesTo: (recoveredBlock16Stack3).
            recoveredBlock16PC := 64.
        ].
        recoveredBlock16Step = 64 ifTrue: [
            (recoveredBlock16Stack2) ifTrue: [recoveredBlock16PC := 68] ifFalse: [recoveredBlock16PC := 71].
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 70.
        ].
        recoveredBlock16Step = 70 ifTrue: [
            ^recoveredBlock16Stack1
        ].
        recoveredBlock16Step = 71 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := ExASDXML.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'No transformation found to generate output for version '.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d923c; bytecode file offset 0xcd5b24"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
bringToCurrent: recoveredArg1 from: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := okPattern.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ups.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg2.
    recoveredBlock18Value2 := (recoveredBlock18Value0) matches: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 |
    recoveredBlock30Value0 := ExASDXML.
    recoveredBlock30Value1 := recoveredArg2.
    recoveredBlock30Value2 := ('No transformation to upgrade from ') , (recoveredBlock30Value1).
    recoveredBlock30Value3 := (recoveredBlock30Value0) signalWith: (recoveredBlock30Value2).
    recoveredBlock30Value3
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := catalog.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) xsltName.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) getStyleSheet: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) transformReplace: (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) to.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) bringToCurrent: (recoveredStack1) from: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := 'transformed'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204fefb0; bytecode file offset 0xdfb8dc"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
initXML: recoveredArg1 catalog: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            catalog := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 'extension'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            extension := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'versionAttribute'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            versionAttr := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'currentSchema'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            schema := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := schema.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSchema: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'okPattern'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            okPattern := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := okPattern.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) match: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := ExASDXML.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := 'Schema version '.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := ' in '.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := schema.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := ' does not match '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := okPattern.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) signalWith: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'up'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := [:block2810a524Arg1 | 
    | block2810a524Value0 block2810a524Value1 block2810a524Value2 block2810a524Value3 |
    block2810a524Value0 := EtasXmlSupportTransformationEntry.
    block2810a524Value1 := (block2810a524Value0) new.
    block2810a524Value2 := block2810a524Arg1.
    block2810a524Value3 := (block2810a524Value1) initXMLUp: (block2810a524Value2).
    block2810a524Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := [:block2810a548Arg1 :block2810a548Arg2 | 
    | block2810a548Value0 block2810a548Value1 block2810a548Value2 block2810a548Value3 block2810a548Value4 |
    block2810a548Value0 := block2810a548Arg1.
    block2810a548Value1 := (block2810a548Value0) to.
    block2810a548Value2 := block2810a548Arg2.
    block2810a548Value3 := (block2810a548Value2) to.
    block2810a548Value4 := (block2810a548Value1) < (block2810a548Value3).
    block2810a548Value4
].
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ups := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'down'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := [:block2810a56cArg1 | 
    | block2810a56cValue0 block2810a56cValue1 block2810a56cValue2 block2810a56cValue3 |
    block2810a56cValue0 := EtasXmlSupportTransformationEntry.
    block2810a56cValue1 := (block2810a56cValue0) new.
    block2810a56cValue2 := block2810a56cArg1.
    block2810a56cValue3 := (block2810a56cValue1) initXMLDown: (block2810a56cValue2).
    block2810a56cValue3
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) multiple: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := [:block2810a590Arg1 :block2810a590Arg2 | 
    | block2810a590Value0 block2810a590Value1 block2810a590Value2 block2810a590Value3 block2810a590Value4 |
    block2810a590Value0 := block2810a590Arg1.
    block2810a590Value1 := (block2810a590Value0) to.
    block2810a590Value2 := block2810a590Arg2.
    block2810a590Value3 := (block2810a590Value2) to.
    block2810a590Value4 := (block2810a590Value1) > (block2810a590Value3).
    block2810a590Value4
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            downs := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock155Value0 recoveredBlock155Value1 recoveredBlock155Value2 recoveredBlock155Value3 |
    recoveredBlock155Value0 := ExASDXML.
    recoveredBlock155Value1 := schema.
    recoveredBlock155Value2 := ('Bad config file in type ') , (recoveredBlock155Value1).
    recoveredBlock155Value3 := (recoveredBlock155Value0) signalWith: (recoveredBlock155Value2).
    recoveredBlock155Value3
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) doneIfNot: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051a030; bytecode file offset 0xe16918"
!EtasXmlSupportTransformationType methodsFor: 'recovered'!
transformationsFrom: recoveredArg1 to: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := downs.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := [:recoveredBlock36Arg1 | 
    | recoveredBlock36Stack0 recoveredBlock36Stack1 recoveredBlock36Stack2 recoveredBlock36Stack3 recoveredBlock36Stack4 recoveredBlock36PC recoveredBlock36Step recoveredBlock36Done recoveredBlock36Result |
    recoveredBlock36Stack0 := self.
    recoveredBlock36PC := 42.
    recoveredBlock36Done := false.
    [recoveredBlock36Done not] whileTrue: [
        recoveredBlock36Step := recoveredBlock36PC.
        recoveredBlock36Step = 42 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 43.
        ].
        recoveredBlock36Step = 43 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) xsltName.
            recoveredBlock36PC := 44.
        ].
        recoveredBlock36Step = 44 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) size.
            recoveredBlock36PC := 46.
        ].
        recoveredBlock36Step = 46 ifTrue: [
            recoveredBlock36Stack2 := 0.
            recoveredBlock36PC := 48.
        ].
        recoveredBlock36Step = 48 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) > (recoveredBlock36Stack2).
            recoveredBlock36PC := 49.
        ].
        recoveredBlock36Step = 49 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 52] ifFalse: [recoveredBlock36PC := 78].
        ].
        recoveredBlock36Step = 52 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 53.
        ].
        recoveredBlock36Step = 53 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) to.
            recoveredBlock36PC := 55.
        ].
        recoveredBlock36Step = 55 ifTrue: [
            recoveredBlock36Stack2 := recoveredArg1.
            recoveredBlock36PC := 58.
        ].
        recoveredBlock36Step = 58 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) < (recoveredBlock36Stack2).
            recoveredBlock36PC := 59.
        ].
        recoveredBlock36Step = 59 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 62] ifFalse: [recoveredBlock36PC := 78].
        ].
        recoveredBlock36Step = 62 ifTrue: [
            recoveredBlock36Stack1 := recoveredBlock36Arg1.
            recoveredBlock36PC := 63.
        ].
        recoveredBlock36Step = 63 ifTrue: [
            recoveredBlock36Stack2 := recoveredArg1.
            recoveredBlock36PC := 66.
        ].
        recoveredBlock36Step = 66 ifTrue: [
            recoveredBlock36Stack1 := (recoveredBlock36Stack1) matchesTo: (recoveredBlock36Stack2).
            recoveredBlock36PC := 68.
        ].
        recoveredBlock36Step = 68 ifTrue: [
            (recoveredBlock36Stack1) ifTrue: [recoveredBlock36PC := 78] ifFalse: [recoveredBlock36PC := 72].
        ].
        recoveredBlock36Step = 72 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 75.
        ].
        recoveredBlock36Step = 75 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 76.
        ].
        recoveredBlock36Step = 76 ifTrue: [
            (recoveredBlock36Stack1) add: (recoveredBlock36Stack2).
            recoveredBlock36PC := 78.
        ].
        recoveredBlock36Step = 78 ifTrue: [
            recoveredBlock36Stack1 := nil.
            recoveredBlock36PC := 79.
        ].
        recoveredBlock36Step = 79 ifTrue: [
            recoveredBlock36Stack2 := recoveredBlock36Arg1.
            recoveredBlock36PC := 80.
        ].
        recoveredBlock36Step = 80 ifTrue: [
            recoveredBlock36Stack3 := recoveredArg2.
            recoveredBlock36PC := 83.
        ].
        recoveredBlock36Step = 83 ifTrue: [
            recoveredBlock36Stack2 := (recoveredBlock36Stack2) matchesTo: (recoveredBlock36Stack3).
            recoveredBlock36PC := 85.
        ].
        recoveredBlock36Step = 85 ifTrue: [
            (recoveredBlock36Stack2) ifTrue: [recoveredBlock36PC := 88] ifFalse: [recoveredBlock36PC := 93].
        ].
        recoveredBlock36Step = 88 ifTrue: [
            recoveredBlock36PC := 89.
        ].
        recoveredBlock36Step = 89 ifTrue: [
            recoveredBlock36Stack1 := recoveredLocal3.
            recoveredBlock36PC := 92.
        ].
        recoveredBlock36Step = 92 ifTrue: [
            ^recoveredBlock36Stack1
        ].
        recoveredBlock36Step = 93 ifTrue: [
            recoveredBlock36Result := recoveredBlock36Stack1.
            recoveredBlock36Done := true.
        ].
    ].
    recoveredBlock36Result
].
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := '.*'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := ups.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118Stack4 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 125.
        ].
        recoveredBlock118Step = 125 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 126.
        ].
        recoveredBlock118Step = 126 ifTrue: [
            recoveredBlock118Stack3 := recoveredLocal2.
            recoveredBlock118PC := 129.
        ].
        recoveredBlock118Step = 129 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) matches: (recoveredBlock118Stack3).
            recoveredBlock118PC := 131.
        ].
        recoveredBlock118Step = 131 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 134] ifFalse: [recoveredBlock118PC := 175].
        ].
        recoveredBlock118Step = 134 ifTrue: [
            recoveredBlock118PC := 135.
        ].
        recoveredBlock118Step = 135 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 136.
        ].
        recoveredBlock118Step = 136 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) to.
            recoveredBlock118PC := 138.
        ].
        recoveredBlock118Step = 138 ifTrue: [
            recoveredLocal2 := recoveredBlock118Stack1.
            recoveredBlock118PC := 141.
        ].
        recoveredBlock118Step = 141 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 142.
        ].
        recoveredBlock118Step = 142 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) xsltName.
            recoveredBlock118PC := 143.
        ].
        recoveredBlock118Step = 143 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) size.
            recoveredBlock118PC := 145.
        ].
        recoveredBlock118Step = 145 ifTrue: [
            recoveredBlock118Stack2 := 0.
            recoveredBlock118PC := 147.
        ].
        recoveredBlock118Step = 147 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) > (recoveredBlock118Stack2).
            recoveredBlock118PC := 148.
        ].
        recoveredBlock118Step = 148 ifTrue: [
            (recoveredBlock118Stack1) ifTrue: [recoveredBlock118PC := 152] ifFalse: [recoveredBlock118PC := 158].
        ].
        recoveredBlock118Step = 152 ifTrue: [
            recoveredBlock118Stack1 := recoveredLocal3.
            recoveredBlock118PC := 155.
        ].
        recoveredBlock118Step = 155 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 156.
        ].
        recoveredBlock118Step = 156 ifTrue: [
            (recoveredBlock118Stack1) add: (recoveredBlock118Stack2).
            recoveredBlock118PC := 158.
        ].
        recoveredBlock118Step = 158 ifTrue: [
            recoveredBlock118Stack1 := nil.
            recoveredBlock118PC := 159.
        ].
        recoveredBlock118Step = 159 ifTrue: [
            recoveredBlock118Stack2 := recoveredLocal1.
            recoveredBlock118PC := 162.
        ].
        recoveredBlock118Step = 162 ifTrue: [
            recoveredBlock118Stack3 := recoveredLocal2.
            recoveredBlock118PC := 165.
        ].
        recoveredBlock118Step = 165 ifTrue: [
            recoveredBlock118Stack2 := (recoveredBlock118Stack2) match: (recoveredBlock118Stack3).
            recoveredBlock118PC := 167.
        ].
        recoveredBlock118Step = 167 ifTrue: [
            (recoveredBlock118Stack2) ifTrue: [recoveredBlock118PC := 170] ifFalse: [recoveredBlock118PC := 175].
        ].
        recoveredBlock118Step = 170 ifTrue: [
            recoveredBlock118PC := 171.
        ].
        recoveredBlock118Step = 171 ifTrue: [
            recoveredBlock118Stack1 := recoveredLocal3.
            recoveredBlock118PC := 174.
        ].
        recoveredBlock118Step = 174 ifTrue: [
            ^recoveredBlock118Stack1
        ].
        recoveredBlock118Step = 175 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

