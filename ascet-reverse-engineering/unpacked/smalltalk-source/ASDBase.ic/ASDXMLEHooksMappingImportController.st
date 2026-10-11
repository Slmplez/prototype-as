"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20276484; bytecode file offset 0xb72d6c"
!ASDXMLEHooksMappingImportController methodsFor: 'recovered'!
elementNotFound: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('Unresolvable name: ') , (recoveredValue2).
    (recoveredValue1) show: (recoveredValue3).
    (recoveredValue0) cr.
    recoveredValue4 := ASDXMLImportIssueUnresolvableName.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (self) component.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue5) initOn: (recoveredValue6) name: (recoveredValue7).
    (self) addIssue: (recoveredValue8).
    recoveredValue9 := ElementNotFound.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) resumable: (true).
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := ('Unresolvable name: ') , (recoveredValue11).
    (recoveredValue9) signalWith: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x203a3ab0; bytecode file offset 0xca03b0"
!ASDXMLEHooksMappingImportController methodsFor: 'recovered'!
readECUVariables: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) subElements.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Local1 recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 recoveredBlock14Value5 recoveredBlock14Value6 recoveredBlock14Value7 recoveredBlock14Value8 recoveredBlock14Value9 recoveredBlock14Value10 recoveredBlock14Value11 recoveredBlock14Value12 recoveredBlock14Value13 recoveredBlock14Value14 recoveredBlock14Value15 recoveredBlock14Value16 recoveredBlock14Value17 recoveredBlock14Value18 recoveredBlock14Value19 |
    recoveredBlock14Value0 := ASDEHooksVariable.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value1) getString: ('name').
    recoveredBlock14Value3 := (recoveredBlock14Value0) createDefault: (recoveredBlock14Value2).
    recoveredBlock14Local1 := recoveredBlock14Value3.
    recoveredBlock14Value4 := recoveredBlock14Local1.
    recoveredBlock14Value5 := recoveredBlock14Value4.
    recoveredBlock14Value6 := recoveredBlock14Arg1.
    recoveredBlock14Value7 := (recoveredBlock14Value6) getString: ('measurementName').
    (recoveredBlock14Value5) measurementName: (recoveredBlock14Value7).
    recoveredBlock14Value8 := recoveredBlock14Value4.
    recoveredBlock14Value9 := recoveredBlock14Arg1.
    recoveredBlock14Value10 := (recoveredBlock14Value9) getInt: ('arrayIndex').
    (recoveredBlock14Value8) arrayIndex: (recoveredBlock14Value10).
    recoveredBlock14Value11 := recoveredBlock14Value4.
    recoveredBlock14Value12 := recoveredBlock14Arg1.
    recoveredBlock14Value13 := (recoveredBlock14Value12) getBoolean: ('conversion').
    (recoveredBlock14Value11) conversion: (recoveredBlock14Value13).
    recoveredBlock14Value14 := recoveredBlock14Value4.
    recoveredBlock14Value15 := recoveredBlock14Arg1.
    recoveredBlock14Value16 := (recoveredBlock14Value15) getBoolean: ('backupCopy').
    (recoveredBlock14Value14) ecuBackupCopy: (recoveredBlock14Value16).
    recoveredBlock14Value17 := recoveredLocal1.
    recoveredBlock14Value18 := recoveredBlock14Local1.
    recoveredBlock14Value19 := (recoveredBlock14Value17) add: (recoveredBlock14Value18).
    recoveredBlock14Value19
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20431560; bytecode file offset 0xd2de68"
!ASDXMLEHooksMappingImportController methodsFor: 'recovered'!
readProcessReferenceIDChain: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'processReferenceOID'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLocalIDChain: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'processReferenceName'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString: (recoveredStack2) default: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := MainController.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) itemForPath: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'Class of '.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlMethodByName: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) last.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) elementNotFound: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) dbObject.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) globalId.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20624760; bytecode file offset 0xf210d0"
!ASDXMLEHooksMappingImportController methodsFor: 'recovered'!
importFromFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Local3 recoveredBlock4Local4 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := LookupTable.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Local3 := recoveredBlock4Stack1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := OrderedCollection.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) new.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredBlock4Stack1 := Util.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack2 := recoveredArg1.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := nil.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) readDOMTree: (recoveredBlock4Stack2) schema: (recoveredBlock4Stack3).
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Local4 := recoveredBlock4Stack1.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 36.
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local4.
            recoveredBlock4PC := 39.
        ].
        recoveredBlock4Step = 39 ifTrue: [
            (recoveredBlock4Stack1) add: (recoveredBlock4Stack2).
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 44.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Local4.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) subElements.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            (recoveredBlock4Stack1) addAll: (recoveredBlock4Stack2).
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 54.
        ].
        recoveredBlock4Step = 54 ifTrue: [
            recoveredBlock4Stack2 := [:recoveredBlock4Block54Arg1 | 
    | recoveredBlock4Block54Local1 recoveredBlock4Block54Local2 recoveredBlock4Block54Local3 recoveredBlock4Block54Stack0 recoveredBlock4Block54Stack1 recoveredBlock4Block54Stack2 recoveredBlock4Block54Stack3 recoveredBlock4Block54Stack4 recoveredBlock4Block54Stack5 recoveredBlock4Block54Stack6 recoveredBlock4Block54PC recoveredBlock4Block54Step recoveredBlock4Block54Done recoveredBlock4Block54Result |
    recoveredBlock4Block54Stack0 := self.
    recoveredBlock4Block54PC := 60.
    recoveredBlock4Block54Done := false.
    [recoveredBlock4Block54Done not] whileTrue: [
        recoveredBlock4Block54Step := recoveredBlock4Block54PC.
        recoveredBlock4Block54Step = 60 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 63.
        ].
        recoveredBlock4Block54Step = 63 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) name.
            recoveredBlock4Block54PC := 65.
        ].
        recoveredBlock4Block54Step = 65 ifTrue: [
            recoveredBlock4Block54Stack2 := ASDEHooksConfig.
            recoveredBlock4Block54PC := 67.
        ].
        recoveredBlock4Block54Step = 67 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) mappingInputTag.
            recoveredBlock4Block54PC := 69.
        ].
        recoveredBlock4Block54Step = 69 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) = (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 70.
        ].
        recoveredBlock4Block54Step = 70 ifTrue: [
            (recoveredBlock4Block54Stack1) ifTrue: [recoveredBlock4Block54PC := 74] ifFalse: [recoveredBlock4Block54PC := 155].
        ].
        recoveredBlock4Block54Step = 74 ifTrue: [
            recoveredBlock4Block54Stack1 := self.
            recoveredBlock4Block54PC := 75.
        ].
        recoveredBlock4Block54Step = 75 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 78.
        ].
        recoveredBlock4Block54Step = 78 ifTrue: [
            recoveredBlock4Block54Stack3 := 'schemaVersion'.
            recoveredBlock4Block54PC := 80.
        ].
        recoveredBlock4Block54Step = 80 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) getString: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 82.
        ].
        recoveredBlock4Block54Step = 82 ifTrue: [
            (recoveredBlock4Block54Stack1) schemaVersion: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 84.
        ].
        recoveredBlock4Block54Step = 84 ifTrue: [
            recoveredBlock4Block54Stack1 := 'Input'.
            recoveredBlock4Block54PC := 86.
        ].
        recoveredBlock4Block54Step = 86 ifTrue: [
            recoveredBlock4Block54Local3 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 89.
        ].
        recoveredBlock4Block54Step = 89 ifTrue: [
            recoveredBlock4Block54Stack1 := ASDMappingObject.
            recoveredBlock4Block54PC := 91.
        ].
        recoveredBlock4Block54Step = 91 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 94.
        ].
        recoveredBlock4Block54Step = 94 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) newSourceClassForType: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 96.
        ].
        recoveredBlock4Block54Step = 96 ifTrue: [
            recoveredBlock4Block54Local2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 99.
        ].
        recoveredBlock4Block54Step = 99 ifTrue: [
            recoveredBlock4Block54Stack1 := ASDMappingObject.
            recoveredBlock4Block54PC := 101.
        ].
        recoveredBlock4Block54Step = 101 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 104.
        ].
        recoveredBlock4Block54Step = 104 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) newTargetClassForType: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 106.
        ].
        recoveredBlock4Block54Step = 106 ifTrue: [
            recoveredBlock4Block54Local1 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 109.
        ].
        recoveredBlock4Block54Step = 109 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block54PC := 112.
        ].
        recoveredBlock4Block54Step = 112 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 115.
        ].
        recoveredBlock4Block54Step = 115 ifTrue: [
            recoveredBlock4Block54Stack3 := [
    | recoveredBlock4Block54Block115Value0 recoveredBlock4Block54Block115Value1 recoveredBlock4Block54Block115Value2 recoveredBlock4Block54Block115Value3 recoveredBlock4Block54Block115Value4 |
    recoveredBlock4Block54Block115Value0 := recoveredBlock4Local3.
    recoveredBlock4Block54Block115Value1 := recoveredBlock4Block54Local3.
    recoveredBlock4Block54Block115Value2 := OrderedCollection.
    recoveredBlock4Block54Block115Value3 := (recoveredBlock4Block54Block115Value2) new.
    recoveredBlock4Block54Block115Value4 := (recoveredBlock4Block54Block115Value0) at: (recoveredBlock4Block54Block115Value1) put: (recoveredBlock4Block54Block115Value3).
    recoveredBlock4Block54Block115Value4
].
            recoveredBlock4Block54PC := 134.
        ].
        recoveredBlock4Block54Step = 134 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) at: (recoveredBlock4Block54Stack2) ifAbsent: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 136.
        ].
        recoveredBlock4Block54Step = 136 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 137.
        ].
        recoveredBlock4Block54Step = 137 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block54Stack2.
            recoveredBlock4Block54PC := 140.
        ].
        recoveredBlock4Block54Step = 140 ifTrue: [
            recoveredBlock4Block54Stack2 := self.
            recoveredBlock4Block54PC := 141.
        ].
        recoveredBlock4Block54Step = 141 ifTrue: [
            recoveredBlock4Block54Stack3 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 144.
        ].
        recoveredBlock4Block54Step = 144 ifTrue: [
            recoveredBlock4Block54Stack4 := recoveredBlock4Block54Local2.
            recoveredBlock4Block54PC := 147.
        ].
        recoveredBlock4Block54Step = 147 ifTrue: [
            recoveredBlock4Block54Stack5 := recoveredBlock4Block54Local1.
            recoveredBlock4Block54PC := 150.
        ].
        recoveredBlock4Block54Step = 150 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) readMappings: (recoveredBlock4Block54Stack3) sourceClass: (recoveredBlock4Block54Stack4) targetClass: (recoveredBlock4Block54Stack5).
            recoveredBlock4Block54PC := 153.
        ].
        recoveredBlock4Block54Step = 153 ifTrue: [
            (recoveredBlock4Block54Stack1) addAll: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 155.
        ].
        recoveredBlock4Block54Step = 155 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 158.
        ].
        recoveredBlock4Block54Step = 158 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) name.
            recoveredBlock4Block54PC := 160.
        ].
        recoveredBlock4Block54Step = 160 ifTrue: [
            recoveredBlock4Block54Stack2 := ASDEHooksConfig.
            recoveredBlock4Block54PC := 162.
        ].
        recoveredBlock4Block54Step = 162 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) mappingOutputTag.
            recoveredBlock4Block54PC := 164.
        ].
        recoveredBlock4Block54Step = 164 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) = (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 165.
        ].
        recoveredBlock4Block54Step = 165 ifTrue: [
            (recoveredBlock4Block54Stack1) ifTrue: [recoveredBlock4Block54PC := 168] ifFalse: [recoveredBlock4Block54PC := 249].
        ].
        recoveredBlock4Block54Step = 168 ifTrue: [
            recoveredBlock4Block54Stack1 := self.
            recoveredBlock4Block54PC := 169.
        ].
        recoveredBlock4Block54Step = 169 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 172.
        ].
        recoveredBlock4Block54Step = 172 ifTrue: [
            recoveredBlock4Block54Stack3 := 'schemaVersion'.
            recoveredBlock4Block54PC := 174.
        ].
        recoveredBlock4Block54Step = 174 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) getString: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 176.
        ].
        recoveredBlock4Block54Step = 176 ifTrue: [
            (recoveredBlock4Block54Stack1) schemaVersion: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 178.
        ].
        recoveredBlock4Block54Step = 178 ifTrue: [
            recoveredBlock4Block54Stack1 := 'Output'.
            recoveredBlock4Block54PC := 180.
        ].
        recoveredBlock4Block54Step = 180 ifTrue: [
            recoveredBlock4Block54Local3 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 183.
        ].
        recoveredBlock4Block54Step = 183 ifTrue: [
            recoveredBlock4Block54Stack1 := ASDMappingObject.
            recoveredBlock4Block54PC := 185.
        ].
        recoveredBlock4Block54Step = 185 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 188.
        ].
        recoveredBlock4Block54Step = 188 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) newSourceClassForType: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 190.
        ].
        recoveredBlock4Block54Step = 190 ifTrue: [
            recoveredBlock4Block54Local2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 193.
        ].
        recoveredBlock4Block54Step = 193 ifTrue: [
            recoveredBlock4Block54Stack1 := ASDMappingObject.
            recoveredBlock4Block54PC := 195.
        ].
        recoveredBlock4Block54Step = 195 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 198.
        ].
        recoveredBlock4Block54Step = 198 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) newTargetClassForType: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 200.
        ].
        recoveredBlock4Block54Step = 200 ifTrue: [
            recoveredBlock4Block54Local1 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 203.
        ].
        recoveredBlock4Block54Step = 203 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block54PC := 206.
        ].
        recoveredBlock4Block54Step = 206 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 209.
        ].
        recoveredBlock4Block54Step = 209 ifTrue: [
            recoveredBlock4Block54Stack3 := [
    | recoveredBlock4Block54Block209Value0 recoveredBlock4Block54Block209Value1 recoveredBlock4Block54Block209Value2 recoveredBlock4Block54Block209Value3 recoveredBlock4Block54Block209Value4 |
    recoveredBlock4Block54Block209Value0 := recoveredBlock4Local3.
    recoveredBlock4Block54Block209Value1 := recoveredBlock4Block54Local3.
    recoveredBlock4Block54Block209Value2 := OrderedCollection.
    recoveredBlock4Block54Block209Value3 := (recoveredBlock4Block54Block209Value2) new.
    recoveredBlock4Block54Block209Value4 := (recoveredBlock4Block54Block209Value0) at: (recoveredBlock4Block54Block209Value1) put: (recoveredBlock4Block54Block209Value3).
    recoveredBlock4Block54Block209Value4
].
            recoveredBlock4Block54PC := 228.
        ].
        recoveredBlock4Block54Step = 228 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) at: (recoveredBlock4Block54Stack2) ifAbsent: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 230.
        ].
        recoveredBlock4Block54Step = 230 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 231.
        ].
        recoveredBlock4Block54Step = 231 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block54Stack2.
            recoveredBlock4Block54PC := 234.
        ].
        recoveredBlock4Block54Step = 234 ifTrue: [
            recoveredBlock4Block54Stack2 := self.
            recoveredBlock4Block54PC := 235.
        ].
        recoveredBlock4Block54Step = 235 ifTrue: [
            recoveredBlock4Block54Stack3 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 238.
        ].
        recoveredBlock4Block54Step = 238 ifTrue: [
            recoveredBlock4Block54Stack4 := recoveredBlock4Block54Local2.
            recoveredBlock4Block54PC := 241.
        ].
        recoveredBlock4Block54Step = 241 ifTrue: [
            recoveredBlock4Block54Stack5 := recoveredBlock4Block54Local1.
            recoveredBlock4Block54PC := 244.
        ].
        recoveredBlock4Block54Step = 244 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) readMappings: (recoveredBlock4Block54Stack3) sourceClass: (recoveredBlock4Block54Stack4) targetClass: (recoveredBlock4Block54Stack5).
            recoveredBlock4Block54PC := 247.
        ].
        recoveredBlock4Block54Step = 247 ifTrue: [
            (recoveredBlock4Block54Stack1) addAll: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 249.
        ].
        recoveredBlock4Block54Step = 249 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 252.
        ].
        recoveredBlock4Block54Step = 252 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) name.
            recoveredBlock4Block54PC := 254.
        ].
        recoveredBlock4Block54Step = 254 ifTrue: [
            recoveredBlock4Block54Stack2 := ASDEHooksConfig.
            recoveredBlock4Block54PC := 256.
        ].
        recoveredBlock4Block54Step = 256 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) mappingProcessTag.
            recoveredBlock4Block54PC := 258.
        ].
        recoveredBlock4Block54Step = 258 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) = (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 259.
        ].
        recoveredBlock4Block54Step = 259 ifTrue: [
            (recoveredBlock4Block54Stack1) ifTrue: [recoveredBlock4Block54PC := 262] ifFalse: [recoveredBlock4Block54PC := 333].
        ].
        recoveredBlock4Block54Step = 262 ifTrue: [
            recoveredBlock4Block54Stack1 := 'Process'.
            recoveredBlock4Block54PC := 264.
        ].
        recoveredBlock4Block54Step = 264 ifTrue: [
            recoveredBlock4Block54Local3 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 267.
        ].
        recoveredBlock4Block54Step = 267 ifTrue: [
            recoveredBlock4Block54Stack1 := ASDMappingObject.
            recoveredBlock4Block54PC := 269.
        ].
        recoveredBlock4Block54Step = 269 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 272.
        ].
        recoveredBlock4Block54Step = 272 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) newSourceClassForType: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 274.
        ].
        recoveredBlock4Block54Step = 274 ifTrue: [
            recoveredBlock4Block54Local2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 277.
        ].
        recoveredBlock4Block54Step = 277 ifTrue: [
            recoveredBlock4Block54Stack1 := ASDMappingObject.
            recoveredBlock4Block54PC := 279.
        ].
        recoveredBlock4Block54Step = 279 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 282.
        ].
        recoveredBlock4Block54Step = 282 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) newTargetClassForType: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 284.
        ].
        recoveredBlock4Block54Step = 284 ifTrue: [
            recoveredBlock4Block54Local1 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 287.
        ].
        recoveredBlock4Block54Step = 287 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block54PC := 290.
        ].
        recoveredBlock4Block54Step = 290 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 293.
        ].
        recoveredBlock4Block54Step = 293 ifTrue: [
            recoveredBlock4Block54Stack3 := [
    | recoveredBlock4Block54Block293Value0 recoveredBlock4Block54Block293Value1 recoveredBlock4Block54Block293Value2 recoveredBlock4Block54Block293Value3 recoveredBlock4Block54Block293Value4 |
    recoveredBlock4Block54Block293Value0 := recoveredBlock4Local3.
    recoveredBlock4Block54Block293Value1 := recoveredBlock4Block54Local3.
    recoveredBlock4Block54Block293Value2 := OrderedCollection.
    recoveredBlock4Block54Block293Value3 := (recoveredBlock4Block54Block293Value2) new.
    recoveredBlock4Block54Block293Value4 := (recoveredBlock4Block54Block293Value0) at: (recoveredBlock4Block54Block293Value1) put: (recoveredBlock4Block54Block293Value3).
    recoveredBlock4Block54Block293Value4
].
            recoveredBlock4Block54PC := 312.
        ].
        recoveredBlock4Block54Step = 312 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) at: (recoveredBlock4Block54Stack2) ifAbsent: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 314.
        ].
        recoveredBlock4Block54Step = 314 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 315.
        ].
        recoveredBlock4Block54Step = 315 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block54Stack2.
            recoveredBlock4Block54PC := 318.
        ].
        recoveredBlock4Block54Step = 318 ifTrue: [
            recoveredBlock4Block54Stack2 := self.
            recoveredBlock4Block54PC := 319.
        ].
        recoveredBlock4Block54Step = 319 ifTrue: [
            recoveredBlock4Block54Stack3 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 322.
        ].
        recoveredBlock4Block54Step = 322 ifTrue: [
            recoveredBlock4Block54Stack4 := recoveredBlock4Block54Local2.
            recoveredBlock4Block54PC := 325.
        ].
        recoveredBlock4Block54Step = 325 ifTrue: [
            recoveredBlock4Block54Stack5 := recoveredBlock4Block54Local1.
            recoveredBlock4Block54PC := 328.
        ].
        recoveredBlock4Block54Step = 328 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) readMappings: (recoveredBlock4Block54Stack3) sourceClass: (recoveredBlock4Block54Stack4) targetClass: (recoveredBlock4Block54Stack5).
            recoveredBlock4Block54PC := 331.
        ].
        recoveredBlock4Block54Step = 331 ifTrue: [
            (recoveredBlock4Block54Stack1) addAll: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 333.
        ].
        recoveredBlock4Block54Step = 333 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 336.
        ].
        recoveredBlock4Block54Step = 336 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) name.
            recoveredBlock4Block54PC := 338.
        ].
        recoveredBlock4Block54Step = 338 ifTrue: [
            recoveredBlock4Block54Stack2 := ASDEHooksConfig.
            recoveredBlock4Block54PC := 340.
        ].
        recoveredBlock4Block54Step = 340 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) ecuInputVariablesTag.
            recoveredBlock4Block54PC := 342.
        ].
        recoveredBlock4Block54Step = 342 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) = (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 343.
        ].
        recoveredBlock4Block54Step = 343 ifTrue: [
            (recoveredBlock4Block54Stack1) ifTrue: [recoveredBlock4Block54PC := 346] ifFalse: [recoveredBlock4Block54PC := 390].
        ].
        recoveredBlock4Block54Step = 346 ifTrue: [
            recoveredBlock4Block54Stack1 := 'ECUInputVariable'.
            recoveredBlock4Block54PC := 348.
        ].
        recoveredBlock4Block54Step = 348 ifTrue: [
            recoveredBlock4Block54Local3 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 351.
        ].
        recoveredBlock4Block54Step = 351 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block54PC := 354.
        ].
        recoveredBlock4Block54Step = 354 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 357.
        ].
        recoveredBlock4Block54Step = 357 ifTrue: [
            recoveredBlock4Block54Stack3 := [
    | recoveredBlock4Block54Block357Value0 recoveredBlock4Block54Block357Value1 recoveredBlock4Block54Block357Value2 recoveredBlock4Block54Block357Value3 recoveredBlock4Block54Block357Value4 |
    recoveredBlock4Block54Block357Value0 := recoveredBlock4Local3.
    recoveredBlock4Block54Block357Value1 := recoveredBlock4Block54Local3.
    recoveredBlock4Block54Block357Value2 := OrderedCollection.
    recoveredBlock4Block54Block357Value3 := (recoveredBlock4Block54Block357Value2) new.
    recoveredBlock4Block54Block357Value4 := (recoveredBlock4Block54Block357Value0) at: (recoveredBlock4Block54Block357Value1) put: (recoveredBlock4Block54Block357Value3).
    recoveredBlock4Block54Block357Value4
].
            recoveredBlock4Block54PC := 376.
        ].
        recoveredBlock4Block54Step = 376 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) at: (recoveredBlock4Block54Stack2) ifAbsent: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 378.
        ].
        recoveredBlock4Block54Step = 378 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 379.
        ].
        recoveredBlock4Block54Step = 379 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block54Stack2.
            recoveredBlock4Block54PC := 382.
        ].
        recoveredBlock4Block54Step = 382 ifTrue: [
            recoveredBlock4Block54Stack2 := self.
            recoveredBlock4Block54PC := 383.
        ].
        recoveredBlock4Block54Step = 383 ifTrue: [
            recoveredBlock4Block54Stack3 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 386.
        ].
        recoveredBlock4Block54Step = 386 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) readECUVariables: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 388.
        ].
        recoveredBlock4Block54Step = 388 ifTrue: [
            (recoveredBlock4Block54Stack1) addAll: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 390.
        ].
        recoveredBlock4Block54Step = 390 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 393.
        ].
        recoveredBlock4Block54Step = 393 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) name.
            recoveredBlock4Block54PC := 395.
        ].
        recoveredBlock4Block54Step = 395 ifTrue: [
            recoveredBlock4Block54Stack2 := ASDEHooksConfig.
            recoveredBlock4Block54PC := 397.
        ].
        recoveredBlock4Block54Step = 397 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) ecuOutputVariablesTag.
            recoveredBlock4Block54PC := 399.
        ].
        recoveredBlock4Block54Step = 399 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) = (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 400.
        ].
        recoveredBlock4Block54Step = 400 ifTrue: [
            (recoveredBlock4Block54Stack1) ifTrue: [recoveredBlock4Block54PC := 404] ifFalse: [recoveredBlock4Block54PC := 448].
        ].
        recoveredBlock4Block54Step = 404 ifTrue: [
            recoveredBlock4Block54Stack1 := 'ECUOutputVariable'.
            recoveredBlock4Block54PC := 406.
        ].
        recoveredBlock4Block54Step = 406 ifTrue: [
            recoveredBlock4Block54Local3 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 409.
        ].
        recoveredBlock4Block54Step = 409 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block54PC := 412.
        ].
        recoveredBlock4Block54Step = 412 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 415.
        ].
        recoveredBlock4Block54Step = 415 ifTrue: [
            recoveredBlock4Block54Stack3 := [
    | recoveredBlock4Block54Block415Value0 recoveredBlock4Block54Block415Value1 recoveredBlock4Block54Block415Value2 recoveredBlock4Block54Block415Value3 recoveredBlock4Block54Block415Value4 |
    recoveredBlock4Block54Block415Value0 := recoveredBlock4Local3.
    recoveredBlock4Block54Block415Value1 := recoveredBlock4Block54Local3.
    recoveredBlock4Block54Block415Value2 := OrderedCollection.
    recoveredBlock4Block54Block415Value3 := (recoveredBlock4Block54Block415Value2) new.
    recoveredBlock4Block54Block415Value4 := (recoveredBlock4Block54Block415Value0) at: (recoveredBlock4Block54Block415Value1) put: (recoveredBlock4Block54Block415Value3).
    recoveredBlock4Block54Block415Value4
].
            recoveredBlock4Block54PC := 434.
        ].
        recoveredBlock4Block54Step = 434 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) at: (recoveredBlock4Block54Stack2) ifAbsent: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 436.
        ].
        recoveredBlock4Block54Step = 436 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 437.
        ].
        recoveredBlock4Block54Step = 437 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block54Stack2.
            recoveredBlock4Block54PC := 440.
        ].
        recoveredBlock4Block54Step = 440 ifTrue: [
            recoveredBlock4Block54Stack2 := self.
            recoveredBlock4Block54PC := 441.
        ].
        recoveredBlock4Block54Step = 441 ifTrue: [
            recoveredBlock4Block54Stack3 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 444.
        ].
        recoveredBlock4Block54Step = 444 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) readECUVariables: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 446.
        ].
        recoveredBlock4Block54Step = 446 ifTrue: [
            (recoveredBlock4Block54Stack1) addAll: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 448.
        ].
        recoveredBlock4Block54Step = 448 ifTrue: [
            recoveredBlock4Block54Stack1 := nil.
            recoveredBlock4Block54PC := 449.
        ].
        recoveredBlock4Block54Step = 449 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 452.
        ].
        recoveredBlock4Block54Step = 452 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) name.
            recoveredBlock4Block54PC := 454.
        ].
        recoveredBlock4Block54Step = 454 ifTrue: [
            recoveredBlock4Block54Stack3 := ASDEHooksConfig.
            recoveredBlock4Block54PC := 456.
        ].
        recoveredBlock4Block54Step = 456 ifTrue: [
            recoveredBlock4Block54Stack3 := (recoveredBlock4Block54Stack3) bypassFunctionsTag.
            recoveredBlock4Block54PC := 458.
        ].
        recoveredBlock4Block54Step = 458 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) = (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 459.
        ].
        recoveredBlock4Block54Step = 459 ifTrue: [
            (recoveredBlock4Block54Stack2) ifTrue: [recoveredBlock4Block54PC := 462] ifFalse: [recoveredBlock4Block54PC := 508].
        ].
        recoveredBlock4Block54Step = 462 ifTrue: [
            recoveredBlock4Block54PC := 463.
        ].
        recoveredBlock4Block54Step = 463 ifTrue: [
            recoveredBlock4Block54Stack1 := 'EHOOKSBypassFunctionNode'.
            recoveredBlock4Block54PC := 465.
        ].
        recoveredBlock4Block54Step = 465 ifTrue: [
            recoveredBlock4Block54Local3 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 468.
        ].
        recoveredBlock4Block54Step = 468 ifTrue: [
            recoveredBlock4Block54Stack1 := recoveredBlock4Local3.
            recoveredBlock4Block54PC := 471.
        ].
        recoveredBlock4Block54Step = 471 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Local3.
            recoveredBlock4Block54PC := 474.
        ].
        recoveredBlock4Block54Step = 474 ifTrue: [
            recoveredBlock4Block54Stack3 := [
    | recoveredBlock4Block54Block474Value0 recoveredBlock4Block54Block474Value1 recoveredBlock4Block54Block474Value2 recoveredBlock4Block54Block474Value3 recoveredBlock4Block54Block474Value4 |
    recoveredBlock4Block54Block474Value0 := recoveredBlock4Local3.
    recoveredBlock4Block54Block474Value1 := recoveredBlock4Block54Local3.
    recoveredBlock4Block54Block474Value2 := OrderedCollection.
    recoveredBlock4Block54Block474Value3 := (recoveredBlock4Block54Block474Value2) new.
    recoveredBlock4Block54Block474Value4 := (recoveredBlock4Block54Block474Value0) at: (recoveredBlock4Block54Block474Value1) put: (recoveredBlock4Block54Block474Value3).
    recoveredBlock4Block54Block474Value4
].
            recoveredBlock4Block54PC := 492.
        ].
        recoveredBlock4Block54Step = 492 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) at: (recoveredBlock4Block54Stack2) ifAbsent: (recoveredBlock4Block54Stack3).
            recoveredBlock4Block54PC := 494.
        ].
        recoveredBlock4Block54Step = 494 ifTrue: [
            recoveredBlock4Block54Stack2 := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54PC := 495.
        ].
        recoveredBlock4Block54Step = 495 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Block54Stack2.
            recoveredBlock4Block54PC := 498.
        ].
        recoveredBlock4Block54Step = 498 ifTrue: [
            recoveredBlock4Block54Stack2 := ASDEHooksBypassFuncNode.
            recoveredBlock4Block54PC := 500.
        ].
        recoveredBlock4Block54Step = 500 ifTrue: [
            recoveredBlock4Block54Stack3 := recoveredBlock4Block54Arg1.
            recoveredBlock4Block54PC := 503.
        ].
        recoveredBlock4Block54Step = 503 ifTrue: [
            recoveredBlock4Block54Stack4 := self.
            recoveredBlock4Block54PC := 504.
        ].
        recoveredBlock4Block54Step = 504 ifTrue: [
            recoveredBlock4Block54Stack2 := (recoveredBlock4Block54Stack2) readEHOOKSBypassFunctions: (recoveredBlock4Block54Stack3) withImportController: (recoveredBlock4Block54Stack4).
            recoveredBlock4Block54PC := 506.
        ].
        recoveredBlock4Block54Step = 506 ifTrue: [
            recoveredBlock4Block54Stack1 := (recoveredBlock4Block54Stack1) addAll: (recoveredBlock4Block54Stack2).
            recoveredBlock4Block54PC := 508.
        ].
        recoveredBlock4Block54Step = 508 ifTrue: [
            recoveredBlock4Block54Result := recoveredBlock4Block54Stack1.
            recoveredBlock4Block54Done := true.
        ].
    ].
    recoveredBlock4Block54Result
].
            recoveredBlock4PC := 509.
        ].
        recoveredBlock4Step = 509 ifTrue: [
            (recoveredBlock4Stack1) do: (recoveredBlock4Stack2).
            recoveredBlock4PC := 511.
        ].
        recoveredBlock4Step = 511 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) schemaVersionIsSmaller64.
            recoveredBlock4PC := 513.
        ].
        recoveredBlock4Step = 513 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 516] ifFalse: [recoveredBlock4PC := 522].
        ].
        recoveredBlock4Step = 516 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 517.
        ].
        recoveredBlock4Step = 517 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local3.
            recoveredBlock4PC := 520.
        ].
        recoveredBlock4Step = 520 ifTrue: [
            (recoveredBlock4Stack0) convertToASDV64: (recoveredBlock4Stack1).
            recoveredBlock4PC := 522.
        ].
        recoveredBlock4Step = 522 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local3.
            recoveredBlock4PC := 525.
        ].
        recoveredBlock4Step = 525 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := ExError.
    recoveredValue2 := [:recoveredBlock528Arg1 | 
    | recoveredBlock528Local1 recoveredBlock528Value0 recoveredBlock528Value1 recoveredBlock528Value2 recoveredBlock528Value3 recoveredBlock528Value4 recoveredBlock528Value5 recoveredBlock528Value6 recoveredBlock528Value7 recoveredBlock528Value8 recoveredBlock528Value9 recoveredBlock528Value10 recoveredBlock528Value11 recoveredBlock528Value12 |
    recoveredBlock528Value0 := ('While importing the file %1 an internal error occured. This problem typically happens if the file is no Mapping export file. Internal error: %2') withCrs.
    recoveredBlock528Value1 := recoveredArg1.
    recoveredBlock528Value2 := Util.
    recoveredBlock528Value3 := recoveredBlock528Arg1.
    recoveredBlock528Value4 := (recoveredBlock528Value2) exceptionString: (recoveredBlock528Value3).
    recoveredBlock528Value5 := (recoveredBlock528Value0) bindWith: (recoveredBlock528Value1) with: (recoveredBlock528Value4).
    recoveredBlock528Local1 := recoveredBlock528Value5.
    recoveredBlock528Value6 := recoveredBlock528Arg1.
    recoveredBlock528Value7 := ETASError.
    recoveredBlock528Value8 := (recoveredBlock528Value7) new.
    recoveredBlock528Value9 := recoveredBlock528Value8.
    (recoveredBlock528Value9) errorNumber: (-6).
    recoveredBlock528Value10 := recoveredBlock528Local1.
    recoveredBlock528Value11 := (recoveredBlock528Value8) messageText: (recoveredBlock528Value10).
    recoveredBlock528Value12 := (recoveredBlock528Value6) exitWith: (recoveredBlock528Value11).
    recoveredBlock528Value12
].
    recoveredValue3 := (recoveredValue0) when: (recoveredValue1) do: (recoveredValue2).
    ^recoveredValue3
! !

