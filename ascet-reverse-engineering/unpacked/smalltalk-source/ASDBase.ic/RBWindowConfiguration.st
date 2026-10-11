"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003bb34; bytecode file offset 0x938608"
!RBWindowConfiguration methodsFor: 'recovered'!
dbXmlDeepCopy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) dbXmlGenericDeepCopy: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20060cbc; bytecode file offset 0x95d978"
!RBWindowConfiguration methodsFor: 'recovered'!
isRecorderConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) windowClass.
    recoveredValue1 := (recoveredValue0) = ('RBRecorderWindow').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006102c; bytecode file offset 0x95d978"
!RBWindowConfiguration methodsFor: 'recovered'!
isOscilloscopeConfiguration
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) windowClass.
    recoveredValue1 := (recoveredValue0) = ('RBOscilloscopeWindow').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200667fc; bytecode file offset 0x963428"
!RBWindowConfiguration methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067734; bytecode file offset 0x9646f8"
!RBWindowConfiguration methodsFor: 'recovered'!
windowClass
    | recoveredValue0 |
    recoveredValue0 := windowClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006884c; bytecode file offset 0x965b90"
!RBWindowConfiguration methodsFor: 'recovered'!
layoutConfiguration
    | recoveredValue0 |
    recoveredValue0 := layoutConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a110; bytecode file offset 0x966bdc"
!RBWindowConfiguration methodsFor: 'recovered'!
contentsConfiguration
    | recoveredValue0 |
    recoveredValue0 := contentsConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b02c; bytecode file offset 0x967a18"
!RBWindowConfiguration methodsFor: 'recovered'!
childConfigurations
    | recoveredValue0 |
    recoveredValue0 := childConfigurations.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006be78; bytecode file offset 0x96873c"
!RBWindowConfiguration methodsFor: 'recovered'!
versionString
    | recoveredValue0 |
    recoveredValue0 := versionString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20086784; bytecode file offset 0x9830a8"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 elementSelf: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) writeXML: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be6c4; bytecode file offset 0x9bb178"
!RBWindowConfiguration methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf410; bytecode file offset 0x9bc0b4"
!RBWindowConfiguration methodsFor: 'recovered'!
windowClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    windowClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c017c; bytecode file offset 0x9bd228"
!RBWindowConfiguration methodsFor: 'recovered'!
layoutConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    layoutConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1608; bytecode file offset 0x9bdf14"
!RBWindowConfiguration methodsFor: 'recovered'!
contentsConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contentsConfiguration := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2094; bytecode file offset 0x9beac8"
!RBWindowConfiguration methodsFor: 'recovered'!
childConfigurations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    childConfigurations := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c28a0; bytecode file offset 0x9bf474"
!RBWindowConfiguration methodsFor: 'recovered'!
versionString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    versionString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e2b04; bytecode file offset 0x9df430"
!RBWindowConfiguration methodsFor: 'recovered'!
isOscilloscopeOrRecorderConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isOscilloscopeConfiguration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRecorderConfiguration.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201224b0; bytecode file offset 0xa1edd4"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 elementVerticalBar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('VerticalBarConfig').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) writeXML: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201224c8; bytecode file offset 0xa1edd4"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 elementNumeric: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('NumericConfig').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) writeXML: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201224e0; bytecode file offset 0xa1edd4"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 elementBitDisplay: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('BitConfig').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) writeXML: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x201224f8; bytecode file offset 0xa1edd4"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 elementHorizontalBar: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('HorizontalBarConfig').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) writeXML: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x20122510; bytecode file offset 0xa1edd4"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 elementOscilloscope: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('OscilloscopeConfig').
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) writeXML: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) closeComplex.
    ^self
! !

"ASDBase.ic method 0x2044ae10; bytecode file offset 0xd47700"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXML: recoveredArg1 name: recoveredArg2 class: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := (LookupTable new) elementCount: (13); keyArray: (#(nil nil nil nil 'RBTwoDCharTable2DGraphEditor' nil 'RBRecorderWindow' 'RBOneDCharTableGraphCalibrationEditor' nil 'RBVerticalBarMeasureDataWindow' nil nil nil nil 'RBTwoDCharTable3DViewer' nil nil 'RBEnumerationCalibrationEditor' 'RBOscilloscopeWindow' 'RBBooleanCalibrationEditor' nil 'RBHorizontalBarMeasureDataWindow' 'RBNumericCalibrationEditor' nil nil nil nil nil nil nil nil nil nil nil nil nil nil 'RBNumericMeasureDataWindow' 'RBBitMeasureDataWindow' nil nil nil nil 'RBMultiTableCalibrationEditor')); valueArray: (#(nil nil nil nil #('GraphicalTableEditor' 'writeXML:elementSelf:' 'GraphicalTableEditorSettings') nil #('Oscilloscope' 'writeXML:elementOscilloscope:' 'OscilloscopeSettings') #('GraphicalTableEditor' 'writeXML:elementSelf:' 'GraphicalTableEditorSettings') nil #('NumericDisplay' 'writeXML:elementVerticalBar:' 'VertcalBarSettings') nil nil nil nil #('GraphicalTableDisplay' 'writeXML:elementSelf:' 'TableEditorSettings') nil nil #('EnumerationEditor' 'writeXML:elementSelf:' 'EnumertationEditorSettings') #('Oscilloscope' 'writeXML:elementOscilloscope:' 'OscilloscopeSettings') #('BitEditor' 'writeXML:elementSelf:' 'BitEditorSettings') nil #('NumericDisplay' 'writeXML:elementHorizontalBar:' 'HorizontalBarSettings') #('NumericEditor' 'writeXML:elementSelf:' 'NumericEditorSettings') nil nil nil nil nil nil nil nil nil nil nil nil nil nil #('NumericDisplay' 'writeXML:elementNumeric:' 'NumericSettings') #('BitDisplay' 'writeXML:elementBitDisplay:' 'BitDisplaySettings') nil nil nil nil #('TableEditor' 'writeXML:elementSelf:' 'TableEditorSettings'))); yourself.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := windowClass.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) controller.
    (recoveredBlock8Value1) unknownExperimentWidget: (self).
    ^nil
].
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 'WidgetGroup'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'Name'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'longName'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := layoutConfiguration.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) writeXML: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := #('RBOscilloscopeWindow' 'RBRecorderWindow').
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := windowClass.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) writeXMLMultiElementWidget: (recoveredStack2) name: (recoveredStack3) class: (recoveredStack4) specific: (recoveredStack5).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) writeXMLSingleElementWidget: (recoveredStack2) name: (recoveredStack3) class: (recoveredStack4) specific: (recoveredStack5).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2053930c; bytecode file offset 0xe35c30"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXMLDataLogger: recoveredArg1 sgClass: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'DataLogger'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := layoutConfiguration.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) writeXML: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := contentsConfiguration.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'options'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) writeXML: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'collapsedView'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := contentsConfiguration.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := 'collapsedView'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 'Filename'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := contentsConfiguration.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'fileName'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) pcData: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'Channels'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := contentsConfiguration.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := 'dataConfigs'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78Stack5 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := nil.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Arg1.
            recoveredBlock78PC := 86.
        ].
        recoveredBlock78Step = 86 ifTrue: [
            (recoveredBlock78Stack2 == nil) ifTrue: [recoveredBlock78PC := 107] ifFalse: [recoveredBlock78PC := 90].
        ].
        recoveredBlock78Step = 90 ifTrue: [
            recoveredBlock78PC := 91.
        ].
        recoveredBlock78Step = 91 ifTrue: [
            recoveredBlock78Stack1 := recoveredArg1.
            recoveredBlock78PC := 94.
        ].
        recoveredBlock78Step = 94 ifTrue: [
            recoveredBlock78Stack2 := recoveredArg1.
            recoveredBlock78PC := 97.
        ].
        recoveredBlock78Step = 97 ifTrue: [
            recoveredBlock78Stack3 := recoveredBlock78Arg1.
            recoveredBlock78PC := 98.
        ].
        recoveredBlock78Step = 98 ifTrue: [
            recoveredBlock78Stack4 := recoveredArg2.
            recoveredBlock78PC := 101.
        ].
        recoveredBlock78Step = 101 ifTrue: [
            recoveredBlock78Stack2 := (recoveredBlock78Stack2) elementEntryFor: (recoveredBlock78Stack3) in: (recoveredBlock78Stack4).
            recoveredBlock78PC := 103.
        ].
        recoveredBlock78Step = 103 ifTrue: [
            recoveredBlock78Stack3 := 'ElementReference'.
            recoveredBlock78PC := 105.
        ].
        recoveredBlock78Step = 105 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) experimentElementReference: (recoveredBlock78Stack2) tag: (recoveredBlock78Stack3).
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := contentsConfiguration.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := 'triggered'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := contentsConfiguration.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := 'triggerChannel'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementEntryFor: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 198] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 'Trigger'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := 'Channel'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) experimentElementReference: (recoveredStack2) tag: (recoveredStack3).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := 'level'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := contentsConfiguration.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := 'triggerLevel'.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nzqr: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 'op'.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := contentsConfiguration.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack4 := 'triggerSlope'.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) key.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059dcc8; bytecode file offset 0xe9a614"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXMLSingleElementWidget: recoveredArg1 name: recoveredArg2 class: recoveredArg3 specific: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := contentsConfiguration.
    recoveredValue1 := (recoveredValue0) at: ('dataConfigs').
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Local1 recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 recoveredBlock9Value7 recoveredBlock9Value8 recoveredBlock9Value9 recoveredBlock9Value10 recoveredBlock9Value11 recoveredBlock9Value12 recoveredBlock9Value13 recoveredBlock9Value14 recoveredBlock9Value15 recoveredBlock9Value16 recoveredBlock9Value17 recoveredBlock9Value18 recoveredBlock9Value19 |
    recoveredBlock9Value0 := recoveredArg1.
    (recoveredBlock9Value0) openComplex: ('Widget').
    recoveredBlock9Value1 := recoveredArg1.
    recoveredBlock9Value2 := recoveredArg2.
    (recoveredBlock9Value1) attr: ('Name') string: (recoveredBlock9Value2).
    recoveredBlock9Value3 := recoveredArg1.
    recoveredBlock9Value4 := recoveredArg4.
    recoveredBlock9Value5 := (recoveredBlock9Value4) at: (1).
    (recoveredBlock9Value3) attr: ('Category') enum: (recoveredBlock9Value5).
    recoveredBlock9Value6 := recoveredArg1.
    recoveredBlock9Value7 := windowClass.
    (recoveredBlock9Value6) attr: ('Type') string: (recoveredBlock9Value7).
    recoveredBlock9Value8 := recoveredArg1.
    (recoveredBlock9Value8) openComplex: ('WidgetData').
    recoveredBlock9Value9 := recoveredArg1.
    (recoveredBlock9Value9) openComplex: ('WidgetSettings').
    recoveredBlock9Value10 := contentsConfiguration.
    recoveredBlock9Value11 := (recoveredBlock9Value10) at: ('viewConfig').
    recoveredBlock9Value12 := [:recoveredBlock9Block74Arg1 | 
    | recoveredBlock9Block74Value0 recoveredBlock9Block74Value1 recoveredBlock9Block74Value2 |
    recoveredBlock9Block74Value0 := [:recoveredBlock9Block74Block82Arg1 | 
    | recoveredBlock9Block74Block82Value0 recoveredBlock9Block74Block82Value1 recoveredBlock9Block74Block82Value2 recoveredBlock9Block74Block82Value3 recoveredBlock9Block74Block82Value4 |
    recoveredBlock9Block74Block82Value0 := recoveredBlock9Block74Arg1.
    recoveredBlock9Block74Block82Value1 := Smalltalk.
    recoveredBlock9Block74Block82Value2 := recoveredBlock9Block74Block82Arg1.
    recoveredBlock9Block74Block82Value3 := (recoveredBlock9Block74Block82Value1) classAt: (recoveredBlock9Block74Block82Value2).
    recoveredBlock9Block74Block82Value4 := (recoveredBlock9Block74Block82Value0) isKindOf: (recoveredBlock9Block74Block82Value3).
    recoveredBlock9Block74Block82Value4
].
    recoveredBlock9Block74Value1 := [
    | recoveredBlock9Block74Block99Value0 recoveredBlock9Block74Block99Value1 recoveredBlock9Block74Block99Value2 recoveredBlock9Block74Block99Value3 recoveredBlock9Block74Block99Value4 |
    recoveredBlock9Block74Block99Value0 := recoveredBlock9Block74Arg1.
    recoveredBlock9Block74Block99Value1 := recoveredArg1.
    recoveredBlock9Block74Block99Value2 := recoveredArg4.
    recoveredBlock9Block74Block99Value3 := (recoveredBlock9Block74Block99Value2) at: (3).
    recoveredBlock9Block74Block99Value4 := (recoveredBlock9Block74Block99Value0) writeXML: (recoveredBlock9Block74Block99Value1) tag: (recoveredBlock9Block74Block99Value3).
    recoveredBlock9Block74Block99Value4
].
    recoveredBlock9Block74Value2 := (#('Dictionary' 'RBDataViewConfigurationObject')) detect: (recoveredBlock9Block74Value0) ifNone: (recoveredBlock9Block74Value1).
    recoveredBlock9Block74Value2
].
    (recoveredBlock9Value11) ifNotNil: (recoveredBlock9Value12).
    recoveredBlock9Value13 := [
    | recoveredBlock9Block126Stack0 recoveredBlock9Block126Stack1 recoveredBlock9Block126Stack2 recoveredBlock9Block126Stack3 recoveredBlock9Block126Stack4 recoveredBlock9Block126Stack5 recoveredBlock9Block126Stack6 recoveredBlock9Block126PC recoveredBlock9Block126Step recoveredBlock9Block126Done recoveredBlock9Block126Result |
    recoveredBlock9Block126Stack0 := self.
    recoveredBlock9Block126PC := 132.
    recoveredBlock9Block126Done := false.
    [recoveredBlock9Block126Done not] whileTrue: [
        recoveredBlock9Block126Step := recoveredBlock9Block126PC.
        recoveredBlock9Block126Step = 132 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 135.
        ].
        recoveredBlock9Block126Step = 135 ifTrue: [
            recoveredBlock9Block126Stack2 := recoveredBlock9Arg1.
            recoveredBlock9Block126PC := 138.
        ].
        recoveredBlock9Block126Step = 138 ifTrue: [
            recoveredBlock9Block126Stack3 := 'name'.
            recoveredBlock9Block126PC := 140.
        ].
        recoveredBlock9Block126Step = 140 ifTrue: [
            recoveredBlock9Block126Stack2 := (recoveredBlock9Block126Stack2) at: (recoveredBlock9Block126Stack3).
            recoveredBlock9Block126PC := 141.
        ].
        recoveredBlock9Block126Step = 141 ifTrue: [
            recoveredBlock9Block126Stack3 := recoveredArg3.
            recoveredBlock9Block126PC := 144.
        ].
        recoveredBlock9Block126Step = 144 ifTrue: [
            recoveredBlock9Block126Stack1 := (recoveredBlock9Block126Stack1) elementEntryFor: (recoveredBlock9Block126Stack2) in: (recoveredBlock9Block126Stack3).
            recoveredBlock9Block126PC := 146.
        ].
        recoveredBlock9Block126Step = 146 ifTrue: [
            recoveredBlock9Local1 := recoveredBlock9Block126Stack1.
            recoveredBlock9Block126PC := 149.
        ].
        recoveredBlock9Block126Step = 149 ifTrue: [
            recoveredBlock9Block126Stack1 := nil.
            recoveredBlock9Block126PC := 150.
        ].
        recoveredBlock9Block126Step = 150 ifTrue: [
            recoveredBlock9Block126Stack2 := recoveredBlock9Local1.
            recoveredBlock9Block126PC := 153.
        ].
        recoveredBlock9Block126Step = 153 ifTrue: [
            (recoveredBlock9Block126Stack2 == nil) ifTrue: [recoveredBlock9Block126PC := 236] ifFalse: [recoveredBlock9Block126PC := 156].
        ].
        recoveredBlock9Block126Step = 156 ifTrue: [
            recoveredBlock9Block126PC := 157.
        ].
        recoveredBlock9Block126Step = 157 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 160.
        ].
        recoveredBlock9Block126Step = 160 ifTrue: [
            recoveredBlock9Block126Stack2 := 'ElementConfig'.
            recoveredBlock9Block126PC := 162.
        ].
        recoveredBlock9Block126Step = 162 ifTrue: [
            (recoveredBlock9Block126Stack1) openComplex: (recoveredBlock9Block126Stack2).
            recoveredBlock9Block126PC := 164.
        ].
        recoveredBlock9Block126Step = 164 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredBlock9Arg1.
            recoveredBlock9Block126PC := 167.
        ].
        recoveredBlock9Block126Step = 167 ifTrue: [
            recoveredBlock9Block126Stack2 := 'displayConfig'.
            recoveredBlock9Block126PC := 169.
        ].
        recoveredBlock9Block126Step = 169 ifTrue: [
            recoveredBlock9Block126Stack1 := (recoveredBlock9Block126Stack1) at: (recoveredBlock9Block126Stack2).
            recoveredBlock9Block126PC := 170.
        ].
        recoveredBlock9Block126Step = 170 ifTrue: [
            (recoveredBlock9Block126Stack1 == nil) ifTrue: [recoveredBlock9Block126PC := 193] ifFalse: [recoveredBlock9Block126PC := 174].
        ].
        recoveredBlock9Block126Step = 174 ifTrue: [
            recoveredBlock9Block126Stack1 := self.
            recoveredBlock9Block126PC := 175.
        ].
        recoveredBlock9Block126Step = 175 ifTrue: [
            recoveredBlock9Block126Stack2 := recoveredArg4.
            recoveredBlock9Block126PC := 178.
        ].
        recoveredBlock9Block126Step = 178 ifTrue: [
            recoveredBlock9Block126Stack3 := 2.
            recoveredBlock9Block126PC := 180.
        ].
        recoveredBlock9Block126Step = 180 ifTrue: [
            recoveredBlock9Block126Stack2 := (recoveredBlock9Block126Stack2) at: (recoveredBlock9Block126Stack3).
            recoveredBlock9Block126PC := 181.
        ].
        recoveredBlock9Block126Step = 181 ifTrue: [
            recoveredBlock9Block126Stack3 := recoveredArg1.
            recoveredBlock9Block126PC := 184.
        ].
        recoveredBlock9Block126Step = 184 ifTrue: [
            recoveredBlock9Block126Stack4 := recoveredBlock9Arg1.
            recoveredBlock9Block126PC := 187.
        ].
        recoveredBlock9Block126Step = 187 ifTrue: [
            recoveredBlock9Block126Stack5 := 'displayConfig'.
            recoveredBlock9Block126PC := 189.
        ].
        recoveredBlock9Block126Step = 189 ifTrue: [
            recoveredBlock9Block126Stack4 := (recoveredBlock9Block126Stack4) at: (recoveredBlock9Block126Stack5).
            recoveredBlock9Block126PC := 190.
        ].
        recoveredBlock9Block126Step = 190 ifTrue: [
            (recoveredBlock9Block126Stack1) perform: (recoveredBlock9Block126Stack2) with: (recoveredBlock9Block126Stack3) with: (recoveredBlock9Block126Stack4).
            recoveredBlock9Block126PC := 193.
        ].
        recoveredBlock9Block126Step = 193 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 196.
        ].
        recoveredBlock9Block126Step = 196 ifTrue: [
            recoveredBlock9Block126Stack2 := 'ElementReference'.
            recoveredBlock9Block126PC := 198.
        ].
        recoveredBlock9Block126Step = 198 ifTrue: [
            (recoveredBlock9Block126Stack1) openComplex: (recoveredBlock9Block126Stack2).
            recoveredBlock9Block126PC := 200.
        ].
        recoveredBlock9Block126Step = 200 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 203.
        ].
        recoveredBlock9Block126Step = 203 ifTrue: [
            recoveredBlock9Block126Stack2 := 'ID'.
            recoveredBlock9Block126PC := 205.
        ].
        recoveredBlock9Block126Step = 205 ifTrue: [
            recoveredBlock9Block126Stack3 := recoveredBlock9Local1.
            recoveredBlock9Block126PC := 208.
        ].
        recoveredBlock9Block126Step = 208 ifTrue: [
            recoveredBlock9Block126Stack4 := 1.
            recoveredBlock9Block126PC := 210.
        ].
        recoveredBlock9Block126Step = 210 ifTrue: [
            recoveredBlock9Block126Stack3 := (recoveredBlock9Block126Stack3) at: (recoveredBlock9Block126Stack4).
            recoveredBlock9Block126PC := 211.
        ].
        recoveredBlock9Block126Step = 211 ifTrue: [
            (recoveredBlock9Block126Stack1) attr: (recoveredBlock9Block126Stack2) id: (recoveredBlock9Block126Stack3).
            recoveredBlock9Block126PC := 213.
        ].
        recoveredBlock9Block126Step = 213 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 216.
        ].
        recoveredBlock9Block126Step = 216 ifTrue: [
            recoveredBlock9Block126Stack2 := 'UniqueName'.
            recoveredBlock9Block126PC := 218.
        ].
        recoveredBlock9Block126Step = 218 ifTrue: [
            recoveredBlock9Block126Stack3 := recoveredBlock9Local1.
            recoveredBlock9Block126PC := 221.
        ].
        recoveredBlock9Block126Step = 221 ifTrue: [
            recoveredBlock9Block126Stack4 := 2.
            recoveredBlock9Block126PC := 223.
        ].
        recoveredBlock9Block126Step = 223 ifTrue: [
            recoveredBlock9Block126Stack3 := (recoveredBlock9Block126Stack3) at: (recoveredBlock9Block126Stack4).
            recoveredBlock9Block126PC := 224.
        ].
        recoveredBlock9Block126Step = 224 ifTrue: [
            (recoveredBlock9Block126Stack1) attr: (recoveredBlock9Block126Stack2) string: (recoveredBlock9Block126Stack3).
            recoveredBlock9Block126PC := 226.
        ].
        recoveredBlock9Block126Step = 226 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 229.
        ].
        recoveredBlock9Block126Step = 229 ifTrue: [
            (recoveredBlock9Block126Stack1) closeComplex.
            recoveredBlock9Block126PC := 231.
        ].
        recoveredBlock9Block126Step = 231 ifTrue: [
            recoveredBlock9Block126Stack1 := recoveredArg1.
            recoveredBlock9Block126PC := 234.
        ].
        recoveredBlock9Block126Step = 234 ifTrue: [
            recoveredBlock9Block126Stack1 := (recoveredBlock9Block126Stack1) closeComplex.
            recoveredBlock9Block126PC := 236.
        ].
        recoveredBlock9Block126Step = 236 ifTrue: [
            recoveredBlock9Block126Result := recoveredBlock9Block126Stack1.
            recoveredBlock9Block126Done := true.
        ].
    ].
    recoveredBlock9Block126Result
].
    recoveredBlock9Value14 := ExASDXML.
    recoveredBlock9Value15 := [:recoveredBlock9Block239Arg1 | 
    | recoveredBlock9Block239Stack0 recoveredBlock9Block239Stack1 recoveredBlock9Block239Stack2 recoveredBlock9Block239Stack3 recoveredBlock9Block239PC recoveredBlock9Block239Step recoveredBlock9Block239Done recoveredBlock9Block239Result |
    recoveredBlock9Block239Stack0 := nil.
    recoveredBlock9Block239PC := 246.
    recoveredBlock9Block239Done := false.
    [recoveredBlock9Block239Done not] whileTrue: [
        recoveredBlock9Block239Step := recoveredBlock9Block239PC.
        recoveredBlock9Block239Step = 246 ifTrue: [
            recoveredBlock9Block239Stack1 := ASDImportExportOptions.
            recoveredBlock9Block239PC := 248.
        ].
        recoveredBlock9Block239Step = 248 ifTrue: [
            recoveredBlock9Block239Stack1 := (recoveredBlock9Block239Stack1) instance.
            recoveredBlock9Block239PC := 250.
        ].
        recoveredBlock9Block239Step = 250 ifTrue: [
            recoveredBlock9Block239Stack1 := (recoveredBlock9Block239Stack1) optionDebugMode.
            recoveredBlock9Block239PC := 252.
        ].
        recoveredBlock9Block239Step = 252 ifTrue: [
            (recoveredBlock9Block239Stack1) ifTrue: [recoveredBlock9Block239PC := 256] ifFalse: [recoveredBlock9Block239PC := 264].
        ].
        recoveredBlock9Block239Step = 256 ifTrue: [
            recoveredBlock9Block239Stack1 := recoveredArg1.
            recoveredBlock9Block239PC := 259.
        ].
        recoveredBlock9Block239Step = 259 ifTrue: [
            recoveredBlock9Block239Stack1 := (recoveredBlock9Block239Stack1) controller.
            recoveredBlock9Block239PC := 261.
        ].
        recoveredBlock9Block239Step = 261 ifTrue: [
            recoveredBlock9Block239Stack2 := recoveredBlock9Block239Arg1.
            recoveredBlock9Block239PC := 262.
        ].
        recoveredBlock9Block239Step = 262 ifTrue: [
            (recoveredBlock9Block239Stack1) logError: (recoveredBlock9Block239Stack2).
            recoveredBlock9Block239PC := 264.
        ].
        recoveredBlock9Block239Step = 264 ifTrue: [
            recoveredBlock9Block239Stack1 := recoveredBlock9Block239Arg1.
            recoveredBlock9Block239PC := 265.
        ].
        recoveredBlock9Block239Step = 265 ifTrue: [
            recoveredBlock9Block239Stack2 := nil.
            recoveredBlock9Block239PC := 266.
        ].
        recoveredBlock9Block239Step = 266 ifTrue: [
            recoveredBlock9Block239Stack1 := (recoveredBlock9Block239Stack1) exitWith: (recoveredBlock9Block239Stack2).
            recoveredBlock9Block239PC := 268.
        ].
        recoveredBlock9Block239Step = 268 ifTrue: [
            recoveredBlock9Block239Result := recoveredBlock9Block239Stack1.
            recoveredBlock9Block239Done := true.
        ].
    ].
    recoveredBlock9Block239Result
].
    (recoveredBlock9Value13) when: (recoveredBlock9Value14) do: (recoveredBlock9Value15).
    recoveredBlock9Value16 := recoveredArg1.
    (recoveredBlock9Value16) closeComplex.
    recoveredBlock9Value17 := recoveredArg1.
    (recoveredBlock9Value17) closeComplex.
    recoveredBlock9Value18 := recoveredArg1.
    recoveredBlock9Value19 := (recoveredBlock9Value18) closeComplex.
    recoveredBlock9Value19
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x205ca978; bytecode file offset 0xec7304"
!RBWindowConfiguration methodsFor: 'recovered'!
writeXMLMultiElementWidget: recoveredArg1 name: recoveredArg2 class: recoveredArg3 specific: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('Widget').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue1) attr: ('Name') string: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg4.
    recoveredValue5 := (recoveredValue4) at: (1).
    (recoveredValue3) attr: ('Category') enum: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := windowClass.
    (recoveredValue6) attr: ('Type') string: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    (recoveredValue8) openComplex: ('WidgetData').
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) openComplex: ('WidgetSettings').
    recoveredValue10 := contentsConfiguration.
    recoveredValue11 := (recoveredValue10) at: ('viewConfig').
    recoveredValue12 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Local1 recoveredBlock64Local2 recoveredBlock64Stack0 recoveredBlock64Stack1 recoveredBlock64Stack2 recoveredBlock64Stack3 recoveredBlock64Stack4 recoveredBlock64Stack5 recoveredBlock64PC recoveredBlock64Step recoveredBlock64Done recoveredBlock64Result |
    recoveredBlock64Stack0 := self.
    recoveredBlock64PC := 70.
    recoveredBlock64Done := false.
    [recoveredBlock64Done not] whileTrue: [
        recoveredBlock64Step := recoveredBlock64PC.
        recoveredBlock64Step = 70 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Arg1.
            recoveredBlock64PC := 71.
        ].
        recoveredBlock64Step = 71 ifTrue: [
            recoveredBlock64Local2 := recoveredBlock64Stack1.
            recoveredBlock64PC := 72.
        ].
        recoveredBlock64Step = 72 ifTrue: [
            recoveredBlock64Stack1 := 'Die'.
            recoveredBlock64PC := 74.
        ].
        recoveredBlock64Step = 74 ifTrue: [
            recoveredBlock64Stack2 := 'Call_93420'.
            recoveredBlock64PC := 76.
        ].
        recoveredBlock64Step = 76 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) == (recoveredBlock64Stack2).
            recoveredBlock64PC := 77.
        ].
        recoveredBlock64Step = 77 ifTrue: [
            recoveredBlock64PC := 78.
        ].
        recoveredBlock64Step = 78 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Local2.
            recoveredBlock64PC := 79.
        ].
        recoveredBlock64Step = 79 ifTrue: [
            recoveredBlock64Stack2 := Dictionary.
            recoveredBlock64PC := 81.
        ].
        recoveredBlock64Step = 81 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) isKindOf: (recoveredBlock64Stack2).
            recoveredBlock64PC := 83.
        ].
        recoveredBlock64Step = 83 ifTrue: [
            (recoveredBlock64Stack1) ifTrue: [recoveredBlock64PC := 86] ifFalse: [recoveredBlock64PC := 114].
        ].
        recoveredBlock64Step = 86 ifTrue: [
            recoveredBlock64Stack1 := Smalltalk.
            recoveredBlock64PC := 88.
        ].
        recoveredBlock64Step = 88 ifTrue: [
            recoveredBlock64Stack2 := windowClass.
            recoveredBlock64PC := 90.
        ].
        recoveredBlock64Step = 90 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) at: (recoveredBlock64Stack2).
            recoveredBlock64PC := 92.
        ].
        recoveredBlock64Step = 92 ifTrue: [
            recoveredBlock64Local1 := recoveredBlock64Stack1.
            recoveredBlock64PC := 93.
        ].
        recoveredBlock64Step = 93 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Local1.
            recoveredBlock64PC := 94.
        ].
        recoveredBlock64Step = 94 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) defaultWindowConfigObjectClass.
            recoveredBlock64PC := 96.
        ].
        recoveredBlock64Step = 96 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Arg1.
            recoveredBlock64PC := 97.
        ].
        recoveredBlock64Step = 97 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) createForConfig: (recoveredBlock64Stack2).
            recoveredBlock64PC := 99.
        ].
        recoveredBlock64Step = 99 ifTrue: [
            recoveredBlock64Local2 := recoveredBlock64Stack1.
            recoveredBlock64PC := 100.
        ].
        recoveredBlock64Step = 100 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Local2.
            recoveredBlock64PC := 101.
        ].
        recoveredBlock64Step = 101 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Local1.
            recoveredBlock64PC := 102.
        ].
        recoveredBlock64Step = 102 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) defaultPaneControllerClass.
            recoveredBlock64PC := 104.
        ].
        recoveredBlock64Step = 104 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) new.
            recoveredBlock64PC := 106.
        ].
        recoveredBlock64Step = 106 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) initColorDict.
            recoveredBlock64PC := 108.
        ].
        recoveredBlock64Step = 108 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) colorDict.
            recoveredBlock64PC := 110.
        ].
        recoveredBlock64Step = 110 ifTrue: [
            (recoveredBlock64Stack1) colorDict: (recoveredBlock64Stack2).
            recoveredBlock64PC := 112.
        ].
        recoveredBlock64Step = 112 ifTrue: [
            recoveredBlock64Stack1 := nil.
            recoveredBlock64PC := 113.
        ].
        recoveredBlock64Step = 113 ifTrue: [
            recoveredBlock64Local1 := recoveredBlock64Stack1.
            recoveredBlock64PC := 114.
        ].
        recoveredBlock64Step = 114 ifTrue: [
            recoveredBlock64Stack1 := nil.
            recoveredBlock64PC := 115.
        ].
        recoveredBlock64Step = 115 ifTrue: [
            recoveredBlock64Stack2 := recoveredBlock64Local2.
            recoveredBlock64PC := 116.
        ].
        recoveredBlock64Step = 116 ifTrue: [
            recoveredBlock64Stack3 := RBDataViewConfigurationObject.
            recoveredBlock64PC := 118.
        ].
        recoveredBlock64Step = 118 ifTrue: [
            recoveredBlock64Stack2 := (recoveredBlock64Stack2) isKindOf: (recoveredBlock64Stack3).
            recoveredBlock64PC := 120.
        ].
        recoveredBlock64Step = 120 ifTrue: [
            (recoveredBlock64Stack2) ifTrue: [recoveredBlock64PC := 138] ifFalse: [recoveredBlock64PC := 124].
        ].
        recoveredBlock64Step = 124 ifTrue: [
            recoveredBlock64PC := 125.
        ].
        recoveredBlock64Step = 125 ifTrue: [
            recoveredBlock64Stack1 := recoveredBlock64Local2.
            recoveredBlock64PC := 126.
        ].
        recoveredBlock64Step = 126 ifTrue: [
            recoveredBlock64Stack2 := recoveredArg1.
            recoveredBlock64PC := 129.
        ].
        recoveredBlock64Step = 129 ifTrue: [
            recoveredBlock64Stack3 := recoveredArg4.
            recoveredBlock64PC := 132.
        ].
        recoveredBlock64Step = 132 ifTrue: [
            recoveredBlock64Stack4 := 3.
            recoveredBlock64PC := 134.
        ].
        recoveredBlock64Step = 134 ifTrue: [
            recoveredBlock64Stack3 := (recoveredBlock64Stack3) at: (recoveredBlock64Stack4).
            recoveredBlock64PC := 136.
        ].
        recoveredBlock64Step = 136 ifTrue: [
            recoveredBlock64Stack1 := (recoveredBlock64Stack1) writeXML: (recoveredBlock64Stack2) tag: (recoveredBlock64Stack3).
            recoveredBlock64PC := 138.
        ].
        recoveredBlock64Step = 138 ifTrue: [
            recoveredBlock64Result := recoveredBlock64Stack1.
            recoveredBlock64Done := true.
        ].
    ].
    recoveredBlock64Result
].
    (recoveredValue11) ifNotNil: (recoveredValue12).
    recoveredValue13 := contentsConfiguration.
    recoveredValue14 := (recoveredValue13) at: ('dataConfigs').
    recoveredValue15 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Value0 recoveredBlock147Value1 recoveredBlock147Value2 recoveredBlock147Value3 |
    recoveredBlock147Value0 := [
    | recoveredBlock147Block154Local1 recoveredBlock147Block154Stack0 recoveredBlock147Block154Stack1 recoveredBlock147Block154Stack2 recoveredBlock147Block154Stack3 recoveredBlock147Block154Stack4 recoveredBlock147Block154Stack5 recoveredBlock147Block154Stack6 recoveredBlock147Block154PC recoveredBlock147Block154Step recoveredBlock147Block154Done recoveredBlock147Block154Result |
    recoveredBlock147Block154Stack0 := self.
    recoveredBlock147Block154PC := 160.
    recoveredBlock147Block154Done := false.
    [recoveredBlock147Block154Done not] whileTrue: [
        recoveredBlock147Block154Step := recoveredBlock147Block154PC.
        recoveredBlock147Block154Step = 160 ifTrue: [
            recoveredBlock147Block154Stack1 := recoveredArg1.
            recoveredBlock147Block154PC := 163.
        ].
        recoveredBlock147Block154Step = 163 ifTrue: [
            recoveredBlock147Block154Stack2 := recoveredBlock147Arg1.
            recoveredBlock147Block154PC := 166.
        ].
        recoveredBlock147Block154Step = 166 ifTrue: [
            recoveredBlock147Block154Stack3 := 'name'.
            recoveredBlock147Block154PC := 168.
        ].
        recoveredBlock147Block154Step = 168 ifTrue: [
            recoveredBlock147Block154Stack2 := (recoveredBlock147Block154Stack2) at: (recoveredBlock147Block154Stack3).
            recoveredBlock147Block154PC := 170.
        ].
        recoveredBlock147Block154Step = 170 ifTrue: [
            recoveredBlock147Block154Stack3 := recoveredArg3.
            recoveredBlock147Block154PC := 173.
        ].
        recoveredBlock147Block154Step = 173 ifTrue: [
            recoveredBlock147Block154Stack1 := (recoveredBlock147Block154Stack1) elementEntryFor: (recoveredBlock147Block154Stack2) in: (recoveredBlock147Block154Stack3).
            recoveredBlock147Block154PC := 175.
        ].
        recoveredBlock147Block154Step = 175 ifTrue: [
            recoveredBlock147Block154Local1 := recoveredBlock147Block154Stack1.
            recoveredBlock147Block154PC := 176.
        ].
        recoveredBlock147Block154Step = 176 ifTrue: [
            recoveredBlock147Block154Stack1 := nil.
            recoveredBlock147Block154PC := 177.
        ].
        recoveredBlock147Block154Step = 177 ifTrue: [
            recoveredBlock147Block154Stack2 := recoveredBlock147Block154Local1.
            recoveredBlock147Block154PC := 178.
        ].
        recoveredBlock147Block154Step = 178 ifTrue: [
            (recoveredBlock147Block154Stack2 == nil) ifTrue: [recoveredBlock147Block154PC := 290] ifFalse: [recoveredBlock147Block154PC := 182].
        ].
        recoveredBlock147Block154Step = 182 ifTrue: [
            recoveredBlock147Block154PC := 183.
        ].
        recoveredBlock147Block154Step = 183 ifTrue: [
            recoveredBlock147Block154Stack1 := recoveredArg1.
            recoveredBlock147Block154PC := 186.
        ].
        recoveredBlock147Block154Step = 186 ifTrue: [
            recoveredBlock147Block154Stack2 := 'ElementConfig'.
            recoveredBlock147Block154PC := 188.
        ].
        recoveredBlock147Block154Step = 188 ifTrue: [
            (recoveredBlock147Block154Stack1) openComplex: (recoveredBlock147Block154Stack2).
            recoveredBlock147Block154PC := 190.
        ].
        recoveredBlock147Block154Step = 190 ifTrue: [
            recoveredBlock147Block154Stack1 := 'Kli'.
            recoveredBlock147Block154PC := 192.
        ].
        recoveredBlock147Block154Step = 192 ifTrue: [
            recoveredBlock147Block154Stack2 := 'Call_389889'.
            recoveredBlock147Block154PC := 194.
        ].
        recoveredBlock147Block154Step = 194 ifTrue: [
            recoveredBlock147Block154Stack1 := (recoveredBlock147Block154Stack1) == (recoveredBlock147Block154Stack2).
            recoveredBlock147Block154PC := 195.
        ].
        recoveredBlock147Block154Step = 195 ifTrue: [
            recoveredBlock147Block154PC := 196.
        ].
        recoveredBlock147Block154Step = 196 ifTrue: [
            recoveredBlock147Block154Stack1 := 'Kli'.
            recoveredBlock147Block154PC := 198.
        ].
        recoveredBlock147Block154Step = 198 ifTrue: [
            recoveredBlock147Block154Stack2 := 'DET102070'.
            recoveredBlock147Block154PC := 200.
        ].
        recoveredBlock147Block154Step = 200 ifTrue: [
            recoveredBlock147Block154Stack1 := (recoveredBlock147Block154Stack1) == (recoveredBlock147Block154Stack2).
            recoveredBlock147Block154PC := 201.
        ].
        recoveredBlock147Block154Step = 201 ifTrue: [
            recoveredBlock147Block154PC := 202.
        ].
        recoveredBlock147Block154Step = 202 ifTrue: [
            recoveredBlock147Block154Stack1 := recoveredBlock147Arg1.
            recoveredBlock147Block154PC := 205.
        ].
        recoveredBlock147Block154Step = 205 ifTrue: [
            recoveredBlock147Block154Stack2 := 'acquiConfig'.
            recoveredBlock147Block154PC := 207.
        ].
        recoveredBlock147Block154Step = 207 ifTrue: [
            recoveredBlock147Block154Stack3 := [].
            recoveredBlock147Block154PC := 209.
        ].
        recoveredBlock147Block154Step = 209 ifTrue: [
            recoveredBlock147Block154Stack4 := [:recoveredBlock147Block154Block209Arg1 | 
    | recoveredBlock147Block154Block209Stack0 recoveredBlock147Block154Block209Stack1 recoveredBlock147Block154Block209Stack2 recoveredBlock147Block154Block209Stack3 recoveredBlock147Block154Block209Stack4 recoveredBlock147Block154Block209PC recoveredBlock147Block154Block209Step recoveredBlock147Block154Block209Done recoveredBlock147Block154Block209Result |
    recoveredBlock147Block154Block209Stack0 := nil.
    recoveredBlock147Block154Block209PC := 216.
    recoveredBlock147Block154Block209Done := false.
    [recoveredBlock147Block154Block209Done not] whileTrue: [
        recoveredBlock147Block154Block209Step := recoveredBlock147Block154Block209PC.
        recoveredBlock147Block154Block209Step = 216 ifTrue: [
            recoveredBlock147Block154Block209Stack1 := recoveredBlock147Block154Block209Arg1.
            recoveredBlock147Block154Block209PC := 217.
        ].
        recoveredBlock147Block154Block209Step = 217 ifTrue: [
            recoveredBlock147Block154Block209Stack1 := (recoveredBlock147Block154Block209Stack1) isString.
            recoveredBlock147Block154Block209PC := 219.
        ].
        recoveredBlock147Block154Block209Step = 219 ifTrue: [
            (recoveredBlock147Block154Block209Stack1) ifTrue: [recoveredBlock147Block154Block209PC := 222] ifFalse: [recoveredBlock147Block154Block209PC := 234].
        ].
        recoveredBlock147Block154Block209Step = 222 ifTrue: [
            recoveredBlock147Block154Block209Stack1 := recoveredArg1.
            recoveredBlock147Block154Block209PC := 225.
        ].
        recoveredBlock147Block154Block209Step = 225 ifTrue: [
            recoveredBlock147Block154Block209Stack2 := 'acquisitionTaskName'.
            recoveredBlock147Block154Block209PC := 227.
        ].
        recoveredBlock147Block154Block209Step = 227 ifTrue: [
            recoveredBlock147Block154Block209Stack3 := recoveredBlock147Block154Block209Arg1.
            recoveredBlock147Block154Block209PC := 228.
        ].
        recoveredBlock147Block154Block209Step = 228 ifTrue: [
            recoveredBlock147Block154Block209Stack1 := (recoveredBlock147Block154Block209Stack1) attr: (recoveredBlock147Block154Block209Stack2) string: (recoveredBlock147Block154Block209Stack3).
            recoveredBlock147Block154Block209PC := 230.
        ].
        recoveredBlock147Block154Block209Step = 230 ifTrue: [
            recoveredBlock147Block154Block209PC := 242.
        ].
        recoveredBlock147Block154Block209Step = 234 ifTrue: [
            recoveredBlock147Block154Block209Stack1 := recoveredArg1.
            recoveredBlock147Block154Block209PC := 237.
        ].
        recoveredBlock147Block154Block209Step = 237 ifTrue: [
            recoveredBlock147Block154Block209Stack2 := 'acquisitionTaskID'.
            recoveredBlock147Block154Block209PC := 239.
        ].
        recoveredBlock147Block154Block209Step = 239 ifTrue: [
            recoveredBlock147Block154Block209Stack3 := recoveredBlock147Block154Block209Arg1.
            recoveredBlock147Block154Block209PC := 240.
        ].
        recoveredBlock147Block154Block209Step = 240 ifTrue: [
            recoveredBlock147Block154Block209Stack1 := (recoveredBlock147Block154Block209Stack1) attr: (recoveredBlock147Block154Block209Stack2) nnInt: (recoveredBlock147Block154Block209Stack3).
            recoveredBlock147Block154Block209PC := 242.
        ].
        recoveredBlock147Block154Block209Step = 242 ifTrue: [
            recoveredBlock147Block154Block209Result := recoveredBlock147Block154Block209Stack1.
            recoveredBlock147Block154Block209Done := true.
        ].
    ].
    recoveredBlock147Block154Block209Result
].
            recoveredBlock147Block154PC := 243.
        ].
        recoveredBlock147Block154Step = 243 ifTrue: [
            (recoveredBlock147Block154Stack1) at: (recoveredBlock147Block154Stack2) ifAbsent: (recoveredBlock147Block154Stack3) ifPresent: (recoveredBlock147Block154Stack4).
            recoveredBlock147Block154PC := 246.
        ].
        recoveredBlock147Block154Step = 246 ifTrue: [
            recoveredBlock147Block154Stack1 := recoveredBlock147Arg1.
            recoveredBlock147Block154PC := 249.
        ].
        recoveredBlock147Block154Step = 249 ifTrue: [
            recoveredBlock147Block154Stack2 := 'displayConfig'.
            recoveredBlock147Block154PC := 251.
        ].
        recoveredBlock147Block154Step = 251 ifTrue: [
            recoveredBlock147Block154Stack1 := (recoveredBlock147Block154Stack1) at: (recoveredBlock147Block154Stack2).
            recoveredBlock147Block154PC := 253.
        ].
        recoveredBlock147Block154Step = 253 ifTrue: [
            (recoveredBlock147Block154Stack1 == nil) ifTrue: [recoveredBlock147Block154PC := 277] ifFalse: [recoveredBlock147Block154PC := 256].
        ].
        recoveredBlock147Block154Step = 256 ifTrue: [
            recoveredBlock147Block154Stack1 := self.
            recoveredBlock147Block154PC := 257.
        ].
        recoveredBlock147Block154Step = 257 ifTrue: [
            recoveredBlock147Block154Stack2 := recoveredArg4.
            recoveredBlock147Block154PC := 260.
        ].
        recoveredBlock147Block154Step = 260 ifTrue: [
            recoveredBlock147Block154Stack3 := 2.
            recoveredBlock147Block154PC := 262.
        ].
        recoveredBlock147Block154Step = 262 ifTrue: [
            recoveredBlock147Block154Stack2 := (recoveredBlock147Block154Stack2) at: (recoveredBlock147Block154Stack3).
            recoveredBlock147Block154PC := 264.
        ].
        recoveredBlock147Block154Step = 264 ifTrue: [
            recoveredBlock147Block154Stack3 := recoveredArg1.
            recoveredBlock147Block154PC := 267.
        ].
        recoveredBlock147Block154Step = 267 ifTrue: [
            recoveredBlock147Block154Stack4 := recoveredBlock147Arg1.
            recoveredBlock147Block154PC := 270.
        ].
        recoveredBlock147Block154Step = 270 ifTrue: [
            recoveredBlock147Block154Stack5 := 'displayConfig'.
            recoveredBlock147Block154PC := 272.
        ].
        recoveredBlock147Block154Step = 272 ifTrue: [
            recoveredBlock147Block154Stack4 := (recoveredBlock147Block154Stack4) at: (recoveredBlock147Block154Stack5).
            recoveredBlock147Block154PC := 274.
        ].
        recoveredBlock147Block154Step = 274 ifTrue: [
            (recoveredBlock147Block154Stack1) perform: (recoveredBlock147Block154Stack2) with: (recoveredBlock147Block154Stack3) with: (recoveredBlock147Block154Stack4).
            recoveredBlock147Block154PC := 277.
        ].
        recoveredBlock147Block154Step = 277 ifTrue: [
            recoveredBlock147Block154Stack1 := recoveredArg1.
            recoveredBlock147Block154PC := 280.
        ].
        recoveredBlock147Block154Step = 280 ifTrue: [
            recoveredBlock147Block154Stack2 := recoveredBlock147Block154Local1.
            recoveredBlock147Block154PC := 281.
        ].
        recoveredBlock147Block154Step = 281 ifTrue: [
            recoveredBlock147Block154Stack3 := 'ElementReference'.
            recoveredBlock147Block154PC := 283.
        ].
        recoveredBlock147Block154Step = 283 ifTrue: [
            (recoveredBlock147Block154Stack1) experimentElementReference: (recoveredBlock147Block154Stack2) tag: (recoveredBlock147Block154Stack3).
            recoveredBlock147Block154PC := 285.
        ].
        recoveredBlock147Block154Step = 285 ifTrue: [
            recoveredBlock147Block154Stack1 := recoveredArg1.
            recoveredBlock147Block154PC := 288.
        ].
        recoveredBlock147Block154Step = 288 ifTrue: [
            recoveredBlock147Block154Stack1 := (recoveredBlock147Block154Stack1) closeComplex.
            recoveredBlock147Block154PC := 290.
        ].
        recoveredBlock147Block154Step = 290 ifTrue: [
            recoveredBlock147Block154Result := recoveredBlock147Block154Stack1.
            recoveredBlock147Block154Done := true.
        ].
    ].
    recoveredBlock147Block154Result
].
    recoveredBlock147Value1 := ExASDXML.
    recoveredBlock147Value2 := [:recoveredBlock147Block293Arg1 | 
    | recoveredBlock147Block293Stack0 recoveredBlock147Block293Stack1 recoveredBlock147Block293Stack2 recoveredBlock147Block293Stack3 recoveredBlock147Block293PC recoveredBlock147Block293Step recoveredBlock147Block293Done recoveredBlock147Block293Result |
    recoveredBlock147Block293Stack0 := nil.
    recoveredBlock147Block293PC := 300.
    recoveredBlock147Block293Done := false.
    [recoveredBlock147Block293Done not] whileTrue: [
        recoveredBlock147Block293Step := recoveredBlock147Block293PC.
        recoveredBlock147Block293Step = 300 ifTrue: [
            recoveredBlock147Block293Stack1 := ASDImportExportOptions.
            recoveredBlock147Block293PC := 302.
        ].
        recoveredBlock147Block293Step = 302 ifTrue: [
            recoveredBlock147Block293Stack1 := (recoveredBlock147Block293Stack1) instance.
            recoveredBlock147Block293PC := 304.
        ].
        recoveredBlock147Block293Step = 304 ifTrue: [
            recoveredBlock147Block293Stack1 := (recoveredBlock147Block293Stack1) optionDebugMode.
            recoveredBlock147Block293PC := 306.
        ].
        recoveredBlock147Block293Step = 306 ifTrue: [
            (recoveredBlock147Block293Stack1) ifTrue: [recoveredBlock147Block293PC := 310] ifFalse: [recoveredBlock147Block293PC := 318].
        ].
        recoveredBlock147Block293Step = 310 ifTrue: [
            recoveredBlock147Block293Stack1 := recoveredArg1.
            recoveredBlock147Block293PC := 313.
        ].
        recoveredBlock147Block293Step = 313 ifTrue: [
            recoveredBlock147Block293Stack1 := (recoveredBlock147Block293Stack1) controller.
            recoveredBlock147Block293PC := 315.
        ].
        recoveredBlock147Block293Step = 315 ifTrue: [
            recoveredBlock147Block293Stack2 := recoveredBlock147Block293Arg1.
            recoveredBlock147Block293PC := 316.
        ].
        recoveredBlock147Block293Step = 316 ifTrue: [
            (recoveredBlock147Block293Stack1) logError: (recoveredBlock147Block293Stack2).
            recoveredBlock147Block293PC := 318.
        ].
        recoveredBlock147Block293Step = 318 ifTrue: [
            recoveredBlock147Block293Stack1 := recoveredBlock147Block293Arg1.
            recoveredBlock147Block293PC := 319.
        ].
        recoveredBlock147Block293Step = 319 ifTrue: [
            recoveredBlock147Block293Stack2 := nil.
            recoveredBlock147Block293PC := 320.
        ].
        recoveredBlock147Block293Step = 320 ifTrue: [
            recoveredBlock147Block293Stack1 := (recoveredBlock147Block293Stack1) exitWith: (recoveredBlock147Block293Stack2).
            recoveredBlock147Block293PC := 322.
        ].
        recoveredBlock147Block293Step = 322 ifTrue: [
            recoveredBlock147Block293Result := recoveredBlock147Block293Stack1.
            recoveredBlock147Block293Done := true.
        ].
    ].
    recoveredBlock147Block293Result
].
    recoveredBlock147Value3 := (recoveredBlock147Value0) when: (recoveredBlock147Value1) do: (recoveredBlock147Value2).
    recoveredBlock147Value3
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredArg1.
    (recoveredValue16) closeComplex.
    recoveredValue17 := recoveredArg1.
    (recoveredValue17) closeComplex.
    recoveredValue18 := recoveredArg1.
    (recoveredValue18) closeComplex.
    ^self
! !

