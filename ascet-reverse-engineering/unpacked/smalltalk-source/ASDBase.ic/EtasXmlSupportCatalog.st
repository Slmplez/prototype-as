"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b894c; bytecode file offset 0x9b5218"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
getForExtension: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := extensions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dd2dc; bytecode file offset 0x9d9ba8"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
bringFromCurrent: recoveredArg1 type: recoveredArg2 to: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := xsls.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) bringFromCurrent: (recoveredValue3) to: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200dd2ec; bytecode file offset 0x9d9ba8"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
bringToCurrent: recoveredArg1 type: recoveredArg2 from: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := xsls.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) bringToCurrent: (recoveredValue3) from: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x200e0bb4; bytecode file offset 0x9dd478"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
init
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Util.
    recoveredValue1 := (recoveredValue0) schemaPath.
    recoveredValue2 := Util.
    recoveredValue3 := (recoveredValue2) xsltPath.
    (self) initOn: (recoveredValue1) xslDir: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20228c0c; bytecode file offset 0xb254d8"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
getStyleSheet: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := styleCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := EtasXmlSupportStyleSheet.
    recoveredBlock9Value1 := (recoveredBlock9Value0) new.
    recoveredBlock9Value2 := xslDir.
    recoveredBlock9Value3 := (recoveredBlock9Value2) , ('\').
    recoveredBlock9Value4 := recoveredArg1.
    recoveredBlock9Value5 := (recoveredBlock9Value3) , (recoveredBlock9Value4).
    recoveredBlock9Value6 := (recoveredBlock9Value1) initFromFile: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20247a9c; bytecode file offset 0xb44368"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
dispose
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := schemas.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280de4f8Arg1 | 
    | block280de4f8Value0 block280de4f8Value1 block280de4f8Value2 |
    block280de4f8Value0 := block280de4f8Arg1.
    block280de4f8Value1 := (block280de4f8Value0) at: (1).
    block280de4f8Value2 := (block280de4f8Value1) dispose.
    block280de4f8Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := styleCache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [:block280de51cArg1 | 
    | block280de51cValue0 block280de51cValue1 |
    block280de51cValue0 := block280de51cArg1.
    block280de51cValue1 := (block280de51cValue0) dispose.
    block280de51cValue1
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            Cache := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c576c; bytecode file offset 0xcc2054"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
getSchema: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := schemas.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Local1 recoveredBlock9Local2 recoveredBlock9Local3 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 recoveredBlock9Value10 recoveredBlock9Value11 recoveredBlock9Value12 recoveredBlock9Value13 recoveredBlock9Value14 recoveredBlock9Value15 recoveredBlock9Value16 recoveredBlock9Value17 recoveredBlock9Value18 recoveredBlock9Value19 recoveredBlock9Value20 recoveredBlock9Value21 recoveredBlock9Value22 |
    recoveredBlock9Value0 := Array.
    recoveredBlock9Value1 := (recoveredBlock9Value0) new: (2).
    recoveredBlock9Local2 := recoveredBlock9Value1.
    recoveredBlock9Value2 := recoveredBlock9Local2.
    recoveredBlock9Value3 := EtasXmlSupportSchema.
    recoveredBlock9Value4 := (recoveredBlock9Value3) new.
    recoveredBlock9Value5 := schemaDir.
    recoveredBlock9Value6 := (recoveredBlock9Value5) , ('\').
    recoveredBlock9Value7 := recoveredArg1.
    recoveredBlock9Value8 := (recoveredBlock9Value6) , (recoveredBlock9Value7).
    recoveredBlock9Value9 := (recoveredBlock9Value4) initFromFile: (recoveredBlock9Value8).
    (recoveredBlock9Value2) at: (1) put: (recoveredBlock9Value9).
    recoveredBlock9Value10 := Util.
    recoveredBlock9Value11 := schemaDir.
    recoveredBlock9Value12 := (recoveredBlock9Value11) , ('\').
    recoveredBlock9Value13 := recoveredArg1.
    recoveredBlock9Value14 := (recoveredBlock9Value12) , (recoveredBlock9Value13).
    recoveredBlock9Value15 := (recoveredBlock9Value10) readDOMTree: (recoveredBlock9Value14) schema: (nil).
    recoveredBlock9Local1 := recoveredBlock9Value15.
    recoveredBlock9Value16 := recoveredBlock9Local2.
    recoveredBlock9Value17 := recoveredBlock9Local1.
    recoveredBlock9Value18 := (recoveredBlock9Value17) getString: ('version').
    (recoveredBlock9Value16) at: (2) put: (recoveredBlock9Value18).
    recoveredBlock9Value19 := schemas.
    recoveredBlock9Value20 := recoveredArg1.
    recoveredBlock9Value21 := recoveredBlock9Local2.
    (recoveredBlock9Value19) at: (recoveredBlock9Value20) put: (recoveredBlock9Value21).
    recoveredBlock9Value22 := recoveredBlock9Local2.
    ^recoveredBlock9Value22
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2048486c; bytecode file offset 0xd81168"
!EtasXmlSupportCatalog methodsFor: 'recovered'!
initOn: recoveredArg1 xslDir: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    schemas := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    schemaDir := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    xslDir := recoveredValue3.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue4) , ('\config.xml').
    recoveredLocal5 := recoveredValue5.
    recoveredValue6 := Util.
    recoveredValue7 := recoveredLocal5.
    recoveredValue8 := (recoveredValue6) readDOMTree: (recoveredValue7) schema: (nil).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 recoveredBlock39Value4 recoveredBlock39Value5 recoveredBlock39Value6 |
    recoveredBlock39Value0 := ExASDXML.
    recoveredBlock39Value1 := recoveredBlock39Arg1.
    recoveredBlock39Value2 := ('Unexpected element ') , (recoveredBlock39Value1).
    recoveredBlock39Value3 := (recoveredBlock39Value2) , (' while reading ').
    recoveredBlock39Value4 := recoveredLocal5.
    recoveredBlock39Value5 := (recoveredBlock39Value3) , (recoveredBlock39Value4).
    recoveredBlock39Value6 := (recoveredBlock39Value0) signalWith: (recoveredBlock39Value5).
    recoveredBlock39Value6
].
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := LookupTable.
    recoveredValue11 := (recoveredValue10) new.
    styleCache := recoveredValue11.
    recoveredValue12 := LookupTable.
    recoveredValue13 := (recoveredValue12) new.
    xsls := recoveredValue13.
    recoveredValue14 := LookupTable.
    recoveredValue15 := (recoveredValue14) new.
    extensions := recoveredValue15.
    recoveredValue16 := recoveredLocal3.
    recoveredValue17 := [:recoveredBlock85Arg1 | 
    | recoveredBlock85Local1 recoveredBlock85Value0 recoveredBlock85Value1 recoveredBlock85Value2 recoveredBlock85Value3 recoveredBlock85Value4 recoveredBlock85Value5 recoveredBlock85Value6 recoveredBlock85Value7 recoveredBlock85Value8 recoveredBlock85Value9 recoveredBlock85Value10 recoveredBlock85Value11 recoveredBlock85Value12 |
    recoveredBlock85Value0 := EtasXmlSupportTransformationType.
    recoveredBlock85Value1 := (recoveredBlock85Value0) new.
    recoveredBlock85Value2 := recoveredBlock85Arg1.
    recoveredBlock85Value3 := (recoveredBlock85Value1) initXML: (recoveredBlock85Value2) catalog: (self).
    recoveredBlock85Local1 := recoveredBlock85Value3.
    recoveredBlock85Value4 := xsls.
    recoveredBlock85Value5 := recoveredBlock85Local1.
    recoveredBlock85Value6 := (recoveredBlock85Value5) name.
    recoveredBlock85Value7 := recoveredBlock85Local1.
    (recoveredBlock85Value4) at: (recoveredBlock85Value6) put: (recoveredBlock85Value7).
    recoveredBlock85Value8 := extensions.
    recoveredBlock85Value9 := recoveredBlock85Local1.
    recoveredBlock85Value10 := (recoveredBlock85Value9) extension.
    recoveredBlock85Value11 := recoveredBlock85Local1.
    recoveredBlock85Value12 := (recoveredBlock85Value8) at: (recoveredBlock85Value10) put: (recoveredBlock85Value11).
    recoveredBlock85Value12
].
    (recoveredValue16) multiple: ('type') do: (recoveredValue17).
    recoveredValue18 := recoveredLocal3.
    recoveredValue19 := recoveredLocal2.
    (recoveredValue18) doneIfNot: (recoveredValue19).
    ^self
! !

